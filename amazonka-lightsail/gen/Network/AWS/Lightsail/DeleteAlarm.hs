{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.DeleteAlarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an alarm.
--
--
-- An alarm is used to monitor a single metric for one of your resources. When a metric condition is met, the alarm can notify you by email, SMS text message, and a banner displayed on the Amazon Lightsail console. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms Alarms in Amazon Lightsail> .
module Network.AWS.Lightsail.DeleteAlarm
  ( -- * Creating a Request
    deleteAlarm,
    DeleteAlarm,

    -- * Request Lenses
    daAlarmName,

    -- * Destructuring the Response
    deleteAlarmResponse,
    DeleteAlarmResponse,

    -- * Response Lenses
    darrsOperations,
    darrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteAlarm' smart constructor.
newtype DeleteAlarm = DeleteAlarm'
  { _daAlarmName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAlarm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAlarmName' - The name of the alarm to delete.
deleteAlarm ::
  -- | 'daAlarmName'
  Text ->
  DeleteAlarm
deleteAlarm pAlarmName_ =
  DeleteAlarm' {_daAlarmName = pAlarmName_}

-- | The name of the alarm to delete.
daAlarmName :: Lens' DeleteAlarm Text
daAlarmName = lens _daAlarmName (\s a -> s {_daAlarmName = a})

instance AWSRequest DeleteAlarm where
  type Rs DeleteAlarm = DeleteAlarmResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteAlarmResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteAlarm

instance NFData DeleteAlarm

instance ToHeaders DeleteAlarm where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.DeleteAlarm" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteAlarm where
  toJSON DeleteAlarm' {..} =
    object
      (catMaybes [Just ("alarmName" .= _daAlarmName)])

instance ToPath DeleteAlarm where
  toPath = const "/"

instance ToQuery DeleteAlarm where
  toQuery = const mempty

-- | /See:/ 'deleteAlarmResponse' smart constructor.
data DeleteAlarmResponse = DeleteAlarmResponse'
  { _darrsOperations ::
      !(Maybe [Operation]),
    _darrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAlarmResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'darrsResponseStatus' - -- | The response status code.
deleteAlarmResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DeleteAlarmResponse
deleteAlarmResponse pResponseStatus_ =
  DeleteAlarmResponse'
    { _darrsOperations = Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
darrsOperations :: Lens' DeleteAlarmResponse [Operation]
darrsOperations = lens _darrsOperations (\s a -> s {_darrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
darrsResponseStatus :: Lens' DeleteAlarmResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DeleteAlarmResponse

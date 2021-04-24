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
-- Module      : Network.AWS.FMS.GetNotificationChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
module Network.AWS.FMS.GetNotificationChannel
  ( -- * Creating a Request
    getNotificationChannel,
    GetNotificationChannel,

    -- * Destructuring the Response
    getNotificationChannelResponse,
    GetNotificationChannelResponse,

    -- * Response Lenses
    gncrrsSNSRoleName,
    gncrrsSNSTopicARN,
    gncrrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getNotificationChannel' smart constructor.
data GetNotificationChannel = GetNotificationChannel'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetNotificationChannel' with the minimum fields required to make a request.
getNotificationChannel ::
  GetNotificationChannel
getNotificationChannel = GetNotificationChannel'

instance AWSRequest GetNotificationChannel where
  type
    Rs GetNotificationChannel =
      GetNotificationChannelResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          GetNotificationChannelResponse'
            <$> (x .?> "SnsRoleName")
            <*> (x .?> "SnsTopicArn")
            <*> (pure (fromEnum s))
      )

instance Hashable GetNotificationChannel

instance NFData GetNotificationChannel

instance ToHeaders GetNotificationChannel where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSFMS_20180101.GetNotificationChannel" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetNotificationChannel where
  toJSON = const (Object mempty)

instance ToPath GetNotificationChannel where
  toPath = const "/"

instance ToQuery GetNotificationChannel where
  toQuery = const mempty

-- | /See:/ 'getNotificationChannelResponse' smart constructor.
data GetNotificationChannelResponse = GetNotificationChannelResponse'
  { _gncrrsSNSRoleName ::
      !( Maybe
           Text
       ),
    _gncrrsSNSTopicARN ::
      !( Maybe
           Text
       ),
    _gncrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetNotificationChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gncrrsSNSRoleName' - The IAM role that is used by AWS Firewall Manager to record activity to SNS.
--
-- * 'gncrrsSNSTopicARN' - The SNS topic that records AWS Firewall Manager activity.
--
-- * 'gncrrsResponseStatus' - -- | The response status code.
getNotificationChannelResponse ::
  -- | 'gncrrsResponseStatus'
  Int ->
  GetNotificationChannelResponse
getNotificationChannelResponse pResponseStatus_ =
  GetNotificationChannelResponse'
    { _gncrrsSNSRoleName =
        Nothing,
      _gncrrsSNSTopicARN = Nothing,
      _gncrrsResponseStatus = pResponseStatus_
    }

-- | The IAM role that is used by AWS Firewall Manager to record activity to SNS.
gncrrsSNSRoleName :: Lens' GetNotificationChannelResponse (Maybe Text)
gncrrsSNSRoleName = lens _gncrrsSNSRoleName (\s a -> s {_gncrrsSNSRoleName = a})

-- | The SNS topic that records AWS Firewall Manager activity.
gncrrsSNSTopicARN :: Lens' GetNotificationChannelResponse (Maybe Text)
gncrrsSNSTopicARN = lens _gncrrsSNSTopicARN (\s a -> s {_gncrrsSNSTopicARN = a})

-- | -- | The response status code.
gncrrsResponseStatus :: Lens' GetNotificationChannelResponse Int
gncrrsResponseStatus = lens _gncrrsResponseStatus (\s a -> s {_gncrrsResponseStatus = a})

instance NFData GetNotificationChannelResponse

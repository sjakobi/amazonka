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
-- Module      : Network.AWS.SSM.GetMaintenanceWindowExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a specific a maintenance window execution.
module Network.AWS.SSM.GetMaintenanceWindowExecution
  ( -- * Creating a Request
    getMaintenanceWindowExecution,
    GetMaintenanceWindowExecution,

    -- * Request Lenses
    gmweWindowExecutionId,

    -- * Destructuring the Response
    getMaintenanceWindowExecutionResponse,
    GetMaintenanceWindowExecutionResponse,

    -- * Response Lenses
    gmwerrsStatus,
    gmwerrsStatusDetails,
    gmwerrsTaskIds,
    gmwerrsStartTime,
    gmwerrsEndTime,
    gmwerrsWindowExecutionId,
    gmwerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getMaintenanceWindowExecution' smart constructor.
newtype GetMaintenanceWindowExecution = GetMaintenanceWindowExecution'
  { _gmweWindowExecutionId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMaintenanceWindowExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmweWindowExecutionId' - The ID of the maintenance window execution that includes the task.
getMaintenanceWindowExecution ::
  -- | 'gmweWindowExecutionId'
  Text ->
  GetMaintenanceWindowExecution
getMaintenanceWindowExecution pWindowExecutionId_ =
  GetMaintenanceWindowExecution'
    { _gmweWindowExecutionId =
        pWindowExecutionId_
    }

-- | The ID of the maintenance window execution that includes the task.
gmweWindowExecutionId :: Lens' GetMaintenanceWindowExecution Text
gmweWindowExecutionId = lens _gmweWindowExecutionId (\s a -> s {_gmweWindowExecutionId = a})

instance AWSRequest GetMaintenanceWindowExecution where
  type
    Rs GetMaintenanceWindowExecution =
      GetMaintenanceWindowExecutionResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetMaintenanceWindowExecutionResponse'
            <$> (x .?> "Status")
            <*> (x .?> "StatusDetails")
            <*> (x .?> "TaskIds" .!@ mempty)
            <*> (x .?> "StartTime")
            <*> (x .?> "EndTime")
            <*> (x .?> "WindowExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMaintenanceWindowExecution

instance NFData GetMaintenanceWindowExecution

instance ToHeaders GetMaintenanceWindowExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.GetMaintenanceWindowExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMaintenanceWindowExecution where
  toJSON GetMaintenanceWindowExecution' {..} =
    object
      ( catMaybes
          [ Just
              ("WindowExecutionId" .= _gmweWindowExecutionId)
          ]
      )

instance ToPath GetMaintenanceWindowExecution where
  toPath = const "/"

instance ToQuery GetMaintenanceWindowExecution where
  toQuery = const mempty

-- | /See:/ 'getMaintenanceWindowExecutionResponse' smart constructor.
data GetMaintenanceWindowExecutionResponse = GetMaintenanceWindowExecutionResponse'
  { _gmwerrsStatus ::
      !( Maybe
           MaintenanceWindowExecutionStatus
       ),
    _gmwerrsStatusDetails ::
      !( Maybe
           Text
       ),
    _gmwerrsTaskIds ::
      !( Maybe
           [Text]
       ),
    _gmwerrsStartTime ::
      !( Maybe
           POSIX
       ),
    _gmwerrsEndTime ::
      !( Maybe
           POSIX
       ),
    _gmwerrsWindowExecutionId ::
      !( Maybe
           Text
       ),
    _gmwerrsResponseStatus ::
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

-- | Creates a value of 'GetMaintenanceWindowExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwerrsStatus' - The status of the maintenance window execution.
--
-- * 'gmwerrsStatusDetails' - The details explaining the Status. Only available for certain status values.
--
-- * 'gmwerrsTaskIds' - The ID of the task executions from the maintenance window execution.
--
-- * 'gmwerrsStartTime' - The time the maintenance window started running.
--
-- * 'gmwerrsEndTime' - The time the maintenance window finished running.
--
-- * 'gmwerrsWindowExecutionId' - The ID of the maintenance window execution.
--
-- * 'gmwerrsResponseStatus' - -- | The response status code.
getMaintenanceWindowExecutionResponse ::
  -- | 'gmwerrsResponseStatus'
  Int ->
  GetMaintenanceWindowExecutionResponse
getMaintenanceWindowExecutionResponse
  pResponseStatus_ =
    GetMaintenanceWindowExecutionResponse'
      { _gmwerrsStatus =
          Nothing,
        _gmwerrsStatusDetails = Nothing,
        _gmwerrsTaskIds = Nothing,
        _gmwerrsStartTime = Nothing,
        _gmwerrsEndTime = Nothing,
        _gmwerrsWindowExecutionId = Nothing,
        _gmwerrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the maintenance window execution.
gmwerrsStatus :: Lens' GetMaintenanceWindowExecutionResponse (Maybe MaintenanceWindowExecutionStatus)
gmwerrsStatus = lens _gmwerrsStatus (\s a -> s {_gmwerrsStatus = a})

-- | The details explaining the Status. Only available for certain status values.
gmwerrsStatusDetails :: Lens' GetMaintenanceWindowExecutionResponse (Maybe Text)
gmwerrsStatusDetails = lens _gmwerrsStatusDetails (\s a -> s {_gmwerrsStatusDetails = a})

-- | The ID of the task executions from the maintenance window execution.
gmwerrsTaskIds :: Lens' GetMaintenanceWindowExecutionResponse [Text]
gmwerrsTaskIds = lens _gmwerrsTaskIds (\s a -> s {_gmwerrsTaskIds = a}) . _Default . _Coerce

-- | The time the maintenance window started running.
gmwerrsStartTime :: Lens' GetMaintenanceWindowExecutionResponse (Maybe UTCTime)
gmwerrsStartTime = lens _gmwerrsStartTime (\s a -> s {_gmwerrsStartTime = a}) . mapping _Time

-- | The time the maintenance window finished running.
gmwerrsEndTime :: Lens' GetMaintenanceWindowExecutionResponse (Maybe UTCTime)
gmwerrsEndTime = lens _gmwerrsEndTime (\s a -> s {_gmwerrsEndTime = a}) . mapping _Time

-- | The ID of the maintenance window execution.
gmwerrsWindowExecutionId :: Lens' GetMaintenanceWindowExecutionResponse (Maybe Text)
gmwerrsWindowExecutionId = lens _gmwerrsWindowExecutionId (\s a -> s {_gmwerrsWindowExecutionId = a})

-- | -- | The response status code.
gmwerrsResponseStatus :: Lens' GetMaintenanceWindowExecutionResponse Int
gmwerrsResponseStatus = lens _gmwerrsResponseStatus (\s a -> s {_gmwerrsResponseStatus = a})

instance NFData GetMaintenanceWindowExecutionResponse

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
-- Module      : Network.AWS.SSM.GetMaintenanceWindowExecutionTaskInvocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a specific task running on a specific target.
module Network.AWS.SSM.GetMaintenanceWindowExecutionTaskInvocation
  ( -- * Creating a Request
    getMaintenanceWindowExecutionTaskInvocation,
    GetMaintenanceWindowExecutionTaskInvocation,

    -- * Request Lenses
    gmwetiWindowExecutionId,
    gmwetiTaskId,
    gmwetiInvocationId,

    -- * Destructuring the Response
    getMaintenanceWindowExecutionTaskInvocationResponse,
    GetMaintenanceWindowExecutionTaskInvocationResponse,

    -- * Response Lenses
    gmwetirrsStatus,
    gmwetirrsStatusDetails,
    gmwetirrsWindowTargetId,
    gmwetirrsStartTime,
    gmwetirrsEndTime,
    gmwetirrsExecutionId,
    gmwetirrsWindowExecutionId,
    gmwetirrsOwnerInformation,
    gmwetirrsTaskType,
    gmwetirrsInvocationId,
    gmwetirrsParameters,
    gmwetirrsTaskExecutionId,
    gmwetirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getMaintenanceWindowExecutionTaskInvocation' smart constructor.
data GetMaintenanceWindowExecutionTaskInvocation = GetMaintenanceWindowExecutionTaskInvocation'
  { _gmwetiWindowExecutionId ::
      !Text,
    _gmwetiTaskId ::
      !Text,
    _gmwetiInvocationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMaintenanceWindowExecutionTaskInvocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwetiWindowExecutionId' - The ID of the maintenance window execution for which the task is a part.
--
-- * 'gmwetiTaskId' - The ID of the specific task in the maintenance window task that should be retrieved.
--
-- * 'gmwetiInvocationId' - The invocation ID to retrieve.
getMaintenanceWindowExecutionTaskInvocation ::
  -- | 'gmwetiWindowExecutionId'
  Text ->
  -- | 'gmwetiTaskId'
  Text ->
  -- | 'gmwetiInvocationId'
  Text ->
  GetMaintenanceWindowExecutionTaskInvocation
getMaintenanceWindowExecutionTaskInvocation
  pWindowExecutionId_
  pTaskId_
  pInvocationId_ =
    GetMaintenanceWindowExecutionTaskInvocation'
      { _gmwetiWindowExecutionId =
          pWindowExecutionId_,
        _gmwetiTaskId = pTaskId_,
        _gmwetiInvocationId =
          pInvocationId_
      }

-- | The ID of the maintenance window execution for which the task is a part.
gmwetiWindowExecutionId :: Lens' GetMaintenanceWindowExecutionTaskInvocation Text
gmwetiWindowExecutionId = lens _gmwetiWindowExecutionId (\s a -> s {_gmwetiWindowExecutionId = a})

-- | The ID of the specific task in the maintenance window task that should be retrieved.
gmwetiTaskId :: Lens' GetMaintenanceWindowExecutionTaskInvocation Text
gmwetiTaskId = lens _gmwetiTaskId (\s a -> s {_gmwetiTaskId = a})

-- | The invocation ID to retrieve.
gmwetiInvocationId :: Lens' GetMaintenanceWindowExecutionTaskInvocation Text
gmwetiInvocationId = lens _gmwetiInvocationId (\s a -> s {_gmwetiInvocationId = a})

instance
  AWSRequest
    GetMaintenanceWindowExecutionTaskInvocation
  where
  type
    Rs GetMaintenanceWindowExecutionTaskInvocation =
      GetMaintenanceWindowExecutionTaskInvocationResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetMaintenanceWindowExecutionTaskInvocationResponse'
            <$> (x .?> "Status") <*> (x .?> "StatusDetails")
              <*> (x .?> "WindowTargetId")
              <*> (x .?> "StartTime")
              <*> (x .?> "EndTime")
              <*> (x .?> "ExecutionId")
              <*> (x .?> "WindowExecutionId")
              <*> (x .?> "OwnerInformation")
              <*> (x .?> "TaskType")
              <*> (x .?> "InvocationId")
              <*> (x .?> "Parameters")
              <*> (x .?> "TaskExecutionId")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetMaintenanceWindowExecutionTaskInvocation

instance
  NFData
    GetMaintenanceWindowExecutionTaskInvocation

instance
  ToHeaders
    GetMaintenanceWindowExecutionTaskInvocation
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.GetMaintenanceWindowExecutionTaskInvocation" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetMaintenanceWindowExecutionTaskInvocation
  where
  toJSON
    GetMaintenanceWindowExecutionTaskInvocation' {..} =
      object
        ( catMaybes
            [ Just
                ("WindowExecutionId" .= _gmwetiWindowExecutionId),
              Just ("TaskId" .= _gmwetiTaskId),
              Just ("InvocationId" .= _gmwetiInvocationId)
            ]
        )

instance
  ToPath
    GetMaintenanceWindowExecutionTaskInvocation
  where
  toPath = const "/"

instance
  ToQuery
    GetMaintenanceWindowExecutionTaskInvocation
  where
  toQuery = const mempty

-- | /See:/ 'getMaintenanceWindowExecutionTaskInvocationResponse' smart constructor.
data GetMaintenanceWindowExecutionTaskInvocationResponse = GetMaintenanceWindowExecutionTaskInvocationResponse'
  { _gmwetirrsStatus ::
      !( Maybe
           MaintenanceWindowExecutionStatus
       ),
    _gmwetirrsStatusDetails ::
      !( Maybe
           Text
       ),
    _gmwetirrsWindowTargetId ::
      !( Maybe
           Text
       ),
    _gmwetirrsStartTime ::
      !( Maybe
           POSIX
       ),
    _gmwetirrsEndTime ::
      !( Maybe
           POSIX
       ),
    _gmwetirrsExecutionId ::
      !( Maybe
           Text
       ),
    _gmwetirrsWindowExecutionId ::
      !( Maybe
           Text
       ),
    _gmwetirrsOwnerInformation ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _gmwetirrsTaskType ::
      !( Maybe
           MaintenanceWindowTaskType
       ),
    _gmwetirrsInvocationId ::
      !( Maybe
           Text
       ),
    _gmwetirrsParameters ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _gmwetirrsTaskExecutionId ::
      !( Maybe
           Text
       ),
    _gmwetirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMaintenanceWindowExecutionTaskInvocationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwetirrsStatus' - The task status for an invocation.
--
-- * 'gmwetirrsStatusDetails' - The details explaining the status. Details are only available for certain status values.
--
-- * 'gmwetirrsWindowTargetId' - The maintenance window target ID.
--
-- * 'gmwetirrsStartTime' - The time that the task started running on the target.
--
-- * 'gmwetirrsEndTime' - The time that the task finished running on the target.
--
-- * 'gmwetirrsExecutionId' - The execution ID.
--
-- * 'gmwetirrsWindowExecutionId' - The maintenance window execution ID.
--
-- * 'gmwetirrsOwnerInformation' - User-provided value to be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.
--
-- * 'gmwetirrsTaskType' - Retrieves the task type for a maintenance window. Task types include the following: LAMBDA, STEP_FUNCTIONS, AUTOMATION, RUN_COMMAND.
--
-- * 'gmwetirrsInvocationId' - The invocation ID.
--
-- * 'gmwetirrsParameters' - The parameters used at the time that the task ran.
--
-- * 'gmwetirrsTaskExecutionId' - The task execution ID.
--
-- * 'gmwetirrsResponseStatus' - -- | The response status code.
getMaintenanceWindowExecutionTaskInvocationResponse ::
  -- | 'gmwetirrsResponseStatus'
  Int ->
  GetMaintenanceWindowExecutionTaskInvocationResponse
getMaintenanceWindowExecutionTaskInvocationResponse
  pResponseStatus_ =
    GetMaintenanceWindowExecutionTaskInvocationResponse'
      { _gmwetirrsStatus =
          Nothing,
        _gmwetirrsStatusDetails =
          Nothing,
        _gmwetirrsWindowTargetId =
          Nothing,
        _gmwetirrsStartTime =
          Nothing,
        _gmwetirrsEndTime =
          Nothing,
        _gmwetirrsExecutionId =
          Nothing,
        _gmwetirrsWindowExecutionId =
          Nothing,
        _gmwetirrsOwnerInformation =
          Nothing,
        _gmwetirrsTaskType =
          Nothing,
        _gmwetirrsInvocationId =
          Nothing,
        _gmwetirrsParameters =
          Nothing,
        _gmwetirrsTaskExecutionId =
          Nothing,
        _gmwetirrsResponseStatus =
          pResponseStatus_
      }

-- | The task status for an invocation.
gmwetirrsStatus :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe MaintenanceWindowExecutionStatus)
gmwetirrsStatus = lens _gmwetirrsStatus (\s a -> s {_gmwetirrsStatus = a})

-- | The details explaining the status. Details are only available for certain status values.
gmwetirrsStatusDetails :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsStatusDetails = lens _gmwetirrsStatusDetails (\s a -> s {_gmwetirrsStatusDetails = a})

-- | The maintenance window target ID.
gmwetirrsWindowTargetId :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsWindowTargetId = lens _gmwetirrsWindowTargetId (\s a -> s {_gmwetirrsWindowTargetId = a})

-- | The time that the task started running on the target.
gmwetirrsStartTime :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe UTCTime)
gmwetirrsStartTime = lens _gmwetirrsStartTime (\s a -> s {_gmwetirrsStartTime = a}) . mapping _Time

-- | The time that the task finished running on the target.
gmwetirrsEndTime :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe UTCTime)
gmwetirrsEndTime = lens _gmwetirrsEndTime (\s a -> s {_gmwetirrsEndTime = a}) . mapping _Time

-- | The execution ID.
gmwetirrsExecutionId :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsExecutionId = lens _gmwetirrsExecutionId (\s a -> s {_gmwetirrsExecutionId = a})

-- | The maintenance window execution ID.
gmwetirrsWindowExecutionId :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsWindowExecutionId = lens _gmwetirrsWindowExecutionId (\s a -> s {_gmwetirrsWindowExecutionId = a})

-- | User-provided value to be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.
gmwetirrsOwnerInformation :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsOwnerInformation = lens _gmwetirrsOwnerInformation (\s a -> s {_gmwetirrsOwnerInformation = a}) . mapping _Sensitive

-- | Retrieves the task type for a maintenance window. Task types include the following: LAMBDA, STEP_FUNCTIONS, AUTOMATION, RUN_COMMAND.
gmwetirrsTaskType :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe MaintenanceWindowTaskType)
gmwetirrsTaskType = lens _gmwetirrsTaskType (\s a -> s {_gmwetirrsTaskType = a})

-- | The invocation ID.
gmwetirrsInvocationId :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsInvocationId = lens _gmwetirrsInvocationId (\s a -> s {_gmwetirrsInvocationId = a})

-- | The parameters used at the time that the task ran.
gmwetirrsParameters :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsParameters = lens _gmwetirrsParameters (\s a -> s {_gmwetirrsParameters = a}) . mapping _Sensitive

-- | The task execution ID.
gmwetirrsTaskExecutionId :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse (Maybe Text)
gmwetirrsTaskExecutionId = lens _gmwetirrsTaskExecutionId (\s a -> s {_gmwetirrsTaskExecutionId = a})

-- | -- | The response status code.
gmwetirrsResponseStatus :: Lens' GetMaintenanceWindowExecutionTaskInvocationResponse Int
gmwetirrsResponseStatus = lens _gmwetirrsResponseStatus (\s a -> s {_gmwetirrsResponseStatus = a})

instance
  NFData
    GetMaintenanceWindowExecutionTaskInvocationResponse

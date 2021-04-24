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
-- Module      : Network.AWS.SSM.GetMaintenanceWindowExecutionTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details about a specific task run as part of a maintenance window execution.
module Network.AWS.SSM.GetMaintenanceWindowExecutionTask
  ( -- * Creating a Request
    getMaintenanceWindowExecutionTask,
    GetMaintenanceWindowExecutionTask,

    -- * Request Lenses
    gmwetWindowExecutionId,
    gmwetTaskId,

    -- * Destructuring the Response
    getMaintenanceWindowExecutionTaskResponse,
    GetMaintenanceWindowExecutionTaskResponse,

    -- * Response Lenses
    gmwetrrsMaxErrors,
    gmwetrrsTaskParameters,
    gmwetrrsStatus,
    gmwetrrsServiceRole,
    gmwetrrsStatusDetails,
    gmwetrrsStartTime,
    gmwetrrsPriority,
    gmwetrrsEndTime,
    gmwetrrsMaxConcurrency,
    gmwetrrsWindowExecutionId,
    gmwetrrsType,
    gmwetrrsTaskARN,
    gmwetrrsTaskExecutionId,
    gmwetrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getMaintenanceWindowExecutionTask' smart constructor.
data GetMaintenanceWindowExecutionTask = GetMaintenanceWindowExecutionTask'
  { _gmwetWindowExecutionId ::
      !Text,
    _gmwetTaskId ::
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

-- | Creates a value of 'GetMaintenanceWindowExecutionTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwetWindowExecutionId' - The ID of the maintenance window execution that includes the task.
--
-- * 'gmwetTaskId' - The ID of the specific task execution in the maintenance window task that should be retrieved.
getMaintenanceWindowExecutionTask ::
  -- | 'gmwetWindowExecutionId'
  Text ->
  -- | 'gmwetTaskId'
  Text ->
  GetMaintenanceWindowExecutionTask
getMaintenanceWindowExecutionTask
  pWindowExecutionId_
  pTaskId_ =
    GetMaintenanceWindowExecutionTask'
      { _gmwetWindowExecutionId =
          pWindowExecutionId_,
        _gmwetTaskId = pTaskId_
      }

-- | The ID of the maintenance window execution that includes the task.
gmwetWindowExecutionId :: Lens' GetMaintenanceWindowExecutionTask Text
gmwetWindowExecutionId = lens _gmwetWindowExecutionId (\s a -> s {_gmwetWindowExecutionId = a})

-- | The ID of the specific task execution in the maintenance window task that should be retrieved.
gmwetTaskId :: Lens' GetMaintenanceWindowExecutionTask Text
gmwetTaskId = lens _gmwetTaskId (\s a -> s {_gmwetTaskId = a})

instance AWSRequest GetMaintenanceWindowExecutionTask where
  type
    Rs GetMaintenanceWindowExecutionTask =
      GetMaintenanceWindowExecutionTaskResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetMaintenanceWindowExecutionTaskResponse'
            <$> (x .?> "MaxErrors")
            <*> (x .?> "TaskParameters" .!@ mempty)
            <*> (x .?> "Status")
            <*> (x .?> "ServiceRole")
            <*> (x .?> "StatusDetails")
            <*> (x .?> "StartTime")
            <*> (x .?> "Priority")
            <*> (x .?> "EndTime")
            <*> (x .?> "MaxConcurrency")
            <*> (x .?> "WindowExecutionId")
            <*> (x .?> "Type")
            <*> (x .?> "TaskArn")
            <*> (x .?> "TaskExecutionId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMaintenanceWindowExecutionTask

instance NFData GetMaintenanceWindowExecutionTask

instance ToHeaders GetMaintenanceWindowExecutionTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.GetMaintenanceWindowExecutionTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMaintenanceWindowExecutionTask where
  toJSON GetMaintenanceWindowExecutionTask' {..} =
    object
      ( catMaybes
          [ Just
              ("WindowExecutionId" .= _gmwetWindowExecutionId),
            Just ("TaskId" .= _gmwetTaskId)
          ]
      )

instance ToPath GetMaintenanceWindowExecutionTask where
  toPath = const "/"

instance ToQuery GetMaintenanceWindowExecutionTask where
  toQuery = const mempty

-- | /See:/ 'getMaintenanceWindowExecutionTaskResponse' smart constructor.
data GetMaintenanceWindowExecutionTaskResponse = GetMaintenanceWindowExecutionTaskResponse'
  { _gmwetrrsMaxErrors ::
      !( Maybe
           Text
       ),
    _gmwetrrsTaskParameters ::
      !( Maybe
           ( Sensitive
               [ Sensitive
                   ( Map
                       Text
                       ( Sensitive
                           MaintenanceWindowTaskParameterValueExpression
                       )
                   )
               ]
           )
       ),
    _gmwetrrsStatus ::
      !( Maybe
           MaintenanceWindowExecutionStatus
       ),
    _gmwetrrsServiceRole ::
      !( Maybe
           Text
       ),
    _gmwetrrsStatusDetails ::
      !( Maybe
           Text
       ),
    _gmwetrrsStartTime ::
      !( Maybe
           POSIX
       ),
    _gmwetrrsPriority ::
      !( Maybe
           Nat
       ),
    _gmwetrrsEndTime ::
      !( Maybe
           POSIX
       ),
    _gmwetrrsMaxConcurrency ::
      !( Maybe
           Text
       ),
    _gmwetrrsWindowExecutionId ::
      !( Maybe
           Text
       ),
    _gmwetrrsType ::
      !( Maybe
           MaintenanceWindowTaskType
       ),
    _gmwetrrsTaskARN ::
      !( Maybe
           Text
       ),
    _gmwetrrsTaskExecutionId ::
      !( Maybe
           Text
       ),
    _gmwetrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMaintenanceWindowExecutionTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwetrrsMaxErrors' - The defined maximum number of task execution errors allowed before scheduling of the task execution would have been stopped.
--
-- * 'gmwetrrsTaskParameters' - The parameters passed to the task when it was run. The map has the following format: Key: string, between 1 and 255 characters Value: an array of strings, each string is between 1 and 255 characters
--
-- * 'gmwetrrsStatus' - The status of the task.
--
-- * 'gmwetrrsServiceRole' - The role that was assumed when running the task.
--
-- * 'gmwetrrsStatusDetails' - The details explaining the Status. Only available for certain status values.
--
-- * 'gmwetrrsStartTime' - The time the task execution started.
--
-- * 'gmwetrrsPriority' - The priority of the task.
--
-- * 'gmwetrrsEndTime' - The time the task execution completed.
--
-- * 'gmwetrrsMaxConcurrency' - The defined maximum number of task executions that could be run in parallel.
--
-- * 'gmwetrrsWindowExecutionId' - The ID of the maintenance window execution that includes the task.
--
-- * 'gmwetrrsType' - The type of task that was run.
--
-- * 'gmwetrrsTaskARN' - The ARN of the task that ran.
--
-- * 'gmwetrrsTaskExecutionId' - The ID of the specific task execution in the maintenance window task that was retrieved.
--
-- * 'gmwetrrsResponseStatus' - -- | The response status code.
getMaintenanceWindowExecutionTaskResponse ::
  -- | 'gmwetrrsResponseStatus'
  Int ->
  GetMaintenanceWindowExecutionTaskResponse
getMaintenanceWindowExecutionTaskResponse
  pResponseStatus_ =
    GetMaintenanceWindowExecutionTaskResponse'
      { _gmwetrrsMaxErrors =
          Nothing,
        _gmwetrrsTaskParameters =
          Nothing,
        _gmwetrrsStatus = Nothing,
        _gmwetrrsServiceRole = Nothing,
        _gmwetrrsStatusDetails = Nothing,
        _gmwetrrsStartTime = Nothing,
        _gmwetrrsPriority = Nothing,
        _gmwetrrsEndTime = Nothing,
        _gmwetrrsMaxConcurrency =
          Nothing,
        _gmwetrrsWindowExecutionId =
          Nothing,
        _gmwetrrsType = Nothing,
        _gmwetrrsTaskARN = Nothing,
        _gmwetrrsTaskExecutionId =
          Nothing,
        _gmwetrrsResponseStatus =
          pResponseStatus_
      }

-- | The defined maximum number of task execution errors allowed before scheduling of the task execution would have been stopped.
gmwetrrsMaxErrors :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsMaxErrors = lens _gmwetrrsMaxErrors (\s a -> s {_gmwetrrsMaxErrors = a})

-- | The parameters passed to the task when it was run. The map has the following format: Key: string, between 1 and 255 characters Value: an array of strings, each string is between 1 and 255 characters
gmwetrrsTaskParameters :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe [HashMap Text MaintenanceWindowTaskParameterValueExpression])
gmwetrrsTaskParameters = lens _gmwetrrsTaskParameters (\s a -> s {_gmwetrrsTaskParameters = a}) . mapping (_Sensitive . _Coerce)

-- | The status of the task.
gmwetrrsStatus :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe MaintenanceWindowExecutionStatus)
gmwetrrsStatus = lens _gmwetrrsStatus (\s a -> s {_gmwetrrsStatus = a})

-- | The role that was assumed when running the task.
gmwetrrsServiceRole :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsServiceRole = lens _gmwetrrsServiceRole (\s a -> s {_gmwetrrsServiceRole = a})

-- | The details explaining the Status. Only available for certain status values.
gmwetrrsStatusDetails :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsStatusDetails = lens _gmwetrrsStatusDetails (\s a -> s {_gmwetrrsStatusDetails = a})

-- | The time the task execution started.
gmwetrrsStartTime :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe UTCTime)
gmwetrrsStartTime = lens _gmwetrrsStartTime (\s a -> s {_gmwetrrsStartTime = a}) . mapping _Time

-- | The priority of the task.
gmwetrrsPriority :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Natural)
gmwetrrsPriority = lens _gmwetrrsPriority (\s a -> s {_gmwetrrsPriority = a}) . mapping _Nat

-- | The time the task execution completed.
gmwetrrsEndTime :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe UTCTime)
gmwetrrsEndTime = lens _gmwetrrsEndTime (\s a -> s {_gmwetrrsEndTime = a}) . mapping _Time

-- | The defined maximum number of task executions that could be run in parallel.
gmwetrrsMaxConcurrency :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsMaxConcurrency = lens _gmwetrrsMaxConcurrency (\s a -> s {_gmwetrrsMaxConcurrency = a})

-- | The ID of the maintenance window execution that includes the task.
gmwetrrsWindowExecutionId :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsWindowExecutionId = lens _gmwetrrsWindowExecutionId (\s a -> s {_gmwetrrsWindowExecutionId = a})

-- | The type of task that was run.
gmwetrrsType :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe MaintenanceWindowTaskType)
gmwetrrsType = lens _gmwetrrsType (\s a -> s {_gmwetrrsType = a})

-- | The ARN of the task that ran.
gmwetrrsTaskARN :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsTaskARN = lens _gmwetrrsTaskARN (\s a -> s {_gmwetrrsTaskARN = a})

-- | The ID of the specific task execution in the maintenance window task that was retrieved.
gmwetrrsTaskExecutionId :: Lens' GetMaintenanceWindowExecutionTaskResponse (Maybe Text)
gmwetrrsTaskExecutionId = lens _gmwetrrsTaskExecutionId (\s a -> s {_gmwetrrsTaskExecutionId = a})

-- | -- | The response status code.
gmwetrrsResponseStatus :: Lens' GetMaintenanceWindowExecutionTaskResponse Int
gmwetrrsResponseStatus = lens _gmwetrrsResponseStatus (\s a -> s {_gmwetrrsResponseStatus = a})

instance
  NFData
    GetMaintenanceWindowExecutionTaskResponse

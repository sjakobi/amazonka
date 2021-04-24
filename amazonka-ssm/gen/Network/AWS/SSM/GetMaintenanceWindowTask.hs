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
-- Module      : Network.AWS.SSM.GetMaintenanceWindowTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tasks in a maintenance window.
module Network.AWS.SSM.GetMaintenanceWindowTask
  ( -- * Creating a Request
    getMaintenanceWindowTask,
    GetMaintenanceWindowTask,

    -- * Request Lenses
    gmwtWindowId,
    gmwtWindowTaskId,

    -- * Destructuring the Response
    getMaintenanceWindowTaskResponse,
    GetMaintenanceWindowTaskResponse,

    -- * Response Lenses
    gmwtrrsMaxErrors,
    gmwtrrsTaskParameters,
    gmwtrrsWindowTaskId,
    gmwtrrsServiceRoleARN,
    gmwtrrsPriority,
    gmwtrrsTargets,
    gmwtrrsTaskInvocationParameters,
    gmwtrrsName,
    gmwtrrsMaxConcurrency,
    gmwtrrsWindowId,
    gmwtrrsDescription,
    gmwtrrsTaskARN,
    gmwtrrsTaskType,
    gmwtrrsLoggingInfo,
    gmwtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getMaintenanceWindowTask' smart constructor.
data GetMaintenanceWindowTask = GetMaintenanceWindowTask'
  { _gmwtWindowId ::
      !Text,
    _gmwtWindowTaskId ::
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

-- | Creates a value of 'GetMaintenanceWindowTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwtWindowId' - The maintenance window ID that includes the task to retrieve.
--
-- * 'gmwtWindowTaskId' - The maintenance window task ID to retrieve.
getMaintenanceWindowTask ::
  -- | 'gmwtWindowId'
  Text ->
  -- | 'gmwtWindowTaskId'
  Text ->
  GetMaintenanceWindowTask
getMaintenanceWindowTask pWindowId_ pWindowTaskId_ =
  GetMaintenanceWindowTask'
    { _gmwtWindowId =
        pWindowId_,
      _gmwtWindowTaskId = pWindowTaskId_
    }

-- | The maintenance window ID that includes the task to retrieve.
gmwtWindowId :: Lens' GetMaintenanceWindowTask Text
gmwtWindowId = lens _gmwtWindowId (\s a -> s {_gmwtWindowId = a})

-- | The maintenance window task ID to retrieve.
gmwtWindowTaskId :: Lens' GetMaintenanceWindowTask Text
gmwtWindowTaskId = lens _gmwtWindowTaskId (\s a -> s {_gmwtWindowTaskId = a})

instance AWSRequest GetMaintenanceWindowTask where
  type
    Rs GetMaintenanceWindowTask =
      GetMaintenanceWindowTaskResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetMaintenanceWindowTaskResponse'
            <$> (x .?> "MaxErrors")
            <*> (x .?> "TaskParameters" .!@ mempty)
            <*> (x .?> "WindowTaskId")
            <*> (x .?> "ServiceRoleArn")
            <*> (x .?> "Priority")
            <*> (x .?> "Targets" .!@ mempty)
            <*> (x .?> "TaskInvocationParameters")
            <*> (x .?> "Name")
            <*> (x .?> "MaxConcurrency")
            <*> (x .?> "WindowId")
            <*> (x .?> "Description")
            <*> (x .?> "TaskArn")
            <*> (x .?> "TaskType")
            <*> (x .?> "LoggingInfo")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMaintenanceWindowTask

instance NFData GetMaintenanceWindowTask

instance ToHeaders GetMaintenanceWindowTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetMaintenanceWindowTask" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMaintenanceWindowTask where
  toJSON GetMaintenanceWindowTask' {..} =
    object
      ( catMaybes
          [ Just ("WindowId" .= _gmwtWindowId),
            Just ("WindowTaskId" .= _gmwtWindowTaskId)
          ]
      )

instance ToPath GetMaintenanceWindowTask where
  toPath = const "/"

instance ToQuery GetMaintenanceWindowTask where
  toQuery = const mempty

-- | /See:/ 'getMaintenanceWindowTaskResponse' smart constructor.
data GetMaintenanceWindowTaskResponse = GetMaintenanceWindowTaskResponse'
  { _gmwtrrsMaxErrors ::
      !( Maybe
           Text
       ),
    _gmwtrrsTaskParameters ::
      !( Maybe
           ( Sensitive
               ( Map
                   Text
                   ( Sensitive
                       MaintenanceWindowTaskParameterValueExpression
                   )
               )
           )
       ),
    _gmwtrrsWindowTaskId ::
      !( Maybe
           Text
       ),
    _gmwtrrsServiceRoleARN ::
      !( Maybe
           Text
       ),
    _gmwtrrsPriority ::
      !( Maybe
           Nat
       ),
    _gmwtrrsTargets ::
      !( Maybe
           [Target]
       ),
    _gmwtrrsTaskInvocationParameters ::
      !( Maybe
           MaintenanceWindowTaskInvocationParameters
       ),
    _gmwtrrsName ::
      !( Maybe
           Text
       ),
    _gmwtrrsMaxConcurrency ::
      !( Maybe
           Text
       ),
    _gmwtrrsWindowId ::
      !( Maybe
           Text
       ),
    _gmwtrrsDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _gmwtrrsTaskARN ::
      !( Maybe
           Text
       ),
    _gmwtrrsTaskType ::
      !( Maybe
           MaintenanceWindowTaskType
       ),
    _gmwtrrsLoggingInfo ::
      !( Maybe
           LoggingInfo
       ),
    _gmwtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMaintenanceWindowTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwtrrsMaxErrors' - The maximum number of errors allowed before the task stops being scheduled.
--
-- * 'gmwtrrsTaskParameters' - The parameters to pass to the task when it runs.
--
-- * 'gmwtrrsWindowTaskId' - The retrieved maintenance window task ID.
--
-- * 'gmwtrrsServiceRoleARN' - The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
--
-- * 'gmwtrrsPriority' - The priority of the task when it runs. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
--
-- * 'gmwtrrsTargets' - The targets where the task should run.
--
-- * 'gmwtrrsTaskInvocationParameters' - The parameters to pass to the task when it runs.
--
-- * 'gmwtrrsName' - The retrieved task name.
--
-- * 'gmwtrrsMaxConcurrency' - The maximum number of targets allowed to run this task in parallel.
--
-- * 'gmwtrrsWindowId' - The retrieved maintenance window ID.
--
-- * 'gmwtrrsDescription' - The retrieved task description.
--
-- * 'gmwtrrsTaskARN' - The resource that the task used during execution. For RUN_COMMAND and AUTOMATION task types, the TaskArn is the Systems Manager Document name/ARN. For LAMBDA tasks, the value is the function name/ARN. For STEP_FUNCTIONS tasks, the value is the state machine ARN.
--
-- * 'gmwtrrsTaskType' - The type of task to run.
--
-- * 'gmwtrrsLoggingInfo' - The location in Amazon S3 where the task results are logged.
--
-- * 'gmwtrrsResponseStatus' - -- | The response status code.
getMaintenanceWindowTaskResponse ::
  -- | 'gmwtrrsResponseStatus'
  Int ->
  GetMaintenanceWindowTaskResponse
getMaintenanceWindowTaskResponse pResponseStatus_ =
  GetMaintenanceWindowTaskResponse'
    { _gmwtrrsMaxErrors =
        Nothing,
      _gmwtrrsTaskParameters = Nothing,
      _gmwtrrsWindowTaskId = Nothing,
      _gmwtrrsServiceRoleARN = Nothing,
      _gmwtrrsPriority = Nothing,
      _gmwtrrsTargets = Nothing,
      _gmwtrrsTaskInvocationParameters =
        Nothing,
      _gmwtrrsName = Nothing,
      _gmwtrrsMaxConcurrency = Nothing,
      _gmwtrrsWindowId = Nothing,
      _gmwtrrsDescription = Nothing,
      _gmwtrrsTaskARN = Nothing,
      _gmwtrrsTaskType = Nothing,
      _gmwtrrsLoggingInfo = Nothing,
      _gmwtrrsResponseStatus = pResponseStatus_
    }

-- | The maximum number of errors allowed before the task stops being scheduled.
gmwtrrsMaxErrors :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsMaxErrors = lens _gmwtrrsMaxErrors (\s a -> s {_gmwtrrsMaxErrors = a})

-- | The parameters to pass to the task when it runs.
gmwtrrsTaskParameters :: Lens' GetMaintenanceWindowTaskResponse (Maybe (HashMap Text MaintenanceWindowTaskParameterValueExpression))
gmwtrrsTaskParameters = lens _gmwtrrsTaskParameters (\s a -> s {_gmwtrrsTaskParameters = a}) . mapping (_Sensitive . _Map)

-- | The retrieved maintenance window task ID.
gmwtrrsWindowTaskId :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsWindowTaskId = lens _gmwtrrsWindowTaskId (\s a -> s {_gmwtrrsWindowTaskId = a})

-- | The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
gmwtrrsServiceRoleARN :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsServiceRoleARN = lens _gmwtrrsServiceRoleARN (\s a -> s {_gmwtrrsServiceRoleARN = a})

-- | The priority of the task when it runs. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
gmwtrrsPriority :: Lens' GetMaintenanceWindowTaskResponse (Maybe Natural)
gmwtrrsPriority = lens _gmwtrrsPriority (\s a -> s {_gmwtrrsPriority = a}) . mapping _Nat

-- | The targets where the task should run.
gmwtrrsTargets :: Lens' GetMaintenanceWindowTaskResponse [Target]
gmwtrrsTargets = lens _gmwtrrsTargets (\s a -> s {_gmwtrrsTargets = a}) . _Default . _Coerce

-- | The parameters to pass to the task when it runs.
gmwtrrsTaskInvocationParameters :: Lens' GetMaintenanceWindowTaskResponse (Maybe MaintenanceWindowTaskInvocationParameters)
gmwtrrsTaskInvocationParameters = lens _gmwtrrsTaskInvocationParameters (\s a -> s {_gmwtrrsTaskInvocationParameters = a})

-- | The retrieved task name.
gmwtrrsName :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsName = lens _gmwtrrsName (\s a -> s {_gmwtrrsName = a})

-- | The maximum number of targets allowed to run this task in parallel.
gmwtrrsMaxConcurrency :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsMaxConcurrency = lens _gmwtrrsMaxConcurrency (\s a -> s {_gmwtrrsMaxConcurrency = a})

-- | The retrieved maintenance window ID.
gmwtrrsWindowId :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsWindowId = lens _gmwtrrsWindowId (\s a -> s {_gmwtrrsWindowId = a})

-- | The retrieved task description.
gmwtrrsDescription :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsDescription = lens _gmwtrrsDescription (\s a -> s {_gmwtrrsDescription = a}) . mapping _Sensitive

-- | The resource that the task used during execution. For RUN_COMMAND and AUTOMATION task types, the TaskArn is the Systems Manager Document name/ARN. For LAMBDA tasks, the value is the function name/ARN. For STEP_FUNCTIONS tasks, the value is the state machine ARN.
gmwtrrsTaskARN :: Lens' GetMaintenanceWindowTaskResponse (Maybe Text)
gmwtrrsTaskARN = lens _gmwtrrsTaskARN (\s a -> s {_gmwtrrsTaskARN = a})

-- | The type of task to run.
gmwtrrsTaskType :: Lens' GetMaintenanceWindowTaskResponse (Maybe MaintenanceWindowTaskType)
gmwtrrsTaskType = lens _gmwtrrsTaskType (\s a -> s {_gmwtrrsTaskType = a})

-- | The location in Amazon S3 where the task results are logged.
gmwtrrsLoggingInfo :: Lens' GetMaintenanceWindowTaskResponse (Maybe LoggingInfo)
gmwtrrsLoggingInfo = lens _gmwtrrsLoggingInfo (\s a -> s {_gmwtrrsLoggingInfo = a})

-- | -- | The response status code.
gmwtrrsResponseStatus :: Lens' GetMaintenanceWindowTaskResponse Int
gmwtrrsResponseStatus = lens _gmwtrrsResponseStatus (\s a -> s {_gmwtrrsResponseStatus = a})

instance NFData GetMaintenanceWindowTaskResponse

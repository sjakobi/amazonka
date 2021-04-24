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
-- Module      : Network.AWS.SSM.UpdateMaintenanceWindowTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a task assigned to a maintenance window. You can't change the task type, but you can change the following values:
--
--
--     * TaskARN. For example, you can change a RUN_COMMAND task from AWS-RunPowerShellScript to AWS-RunShellScript.
--
--     * ServiceRoleArn
--
--     * TaskInvocationParameters
--
--     * Priority
--
--     * MaxConcurrency
--
--     * MaxErrors
--
--
--
-- If the value for a parameter in @UpdateMaintenanceWindowTask@ is null, then the corresponding field is not modified. If you set @Replace@ to true, then all fields required by the 'RegisterTaskWithMaintenanceWindow' action are required for this request. Optional fields that aren't specified are set to null.
--
-- /Important:/ When you update a maintenance window task that has options specified in @TaskInvocationParameters@ , you must provide again all the @TaskInvocationParameters@ values that you want to retain. The values you do not specify again are removed. For example, suppose that when you registered a Run Command task, you specified @TaskInvocationParameters@ values for @Comment@ , @NotificationConfig@ , and @OutputS3BucketName@ . If you update the maintenance window task and specify only a different @OutputS3BucketName@ value, the values for @Comment@ and @NotificationConfig@ are removed.
module Network.AWS.SSM.UpdateMaintenanceWindowTask
  ( -- * Creating a Request
    updateMaintenanceWindowTask,
    UpdateMaintenanceWindowTask,

    -- * Request Lenses
    uMaxErrors,
    uTaskParameters,
    uServiceRoleARN,
    uPriority,
    uTargets,
    uTaskInvocationParameters,
    uName,
    uReplace,
    uMaxConcurrency,
    uDescription,
    uTaskARN,
    uLoggingInfo,
    uWindowId,
    uWindowTaskId,

    -- * Destructuring the Response
    updateMaintenanceWindowTaskResponse,
    UpdateMaintenanceWindowTaskResponse,

    -- * Response Lenses
    umwtrrsMaxErrors,
    umwtrrsTaskParameters,
    umwtrrsWindowTaskId,
    umwtrrsServiceRoleARN,
    umwtrrsPriority,
    umwtrrsTargets,
    umwtrrsTaskInvocationParameters,
    umwtrrsName,
    umwtrrsMaxConcurrency,
    umwtrrsWindowId,
    umwtrrsDescription,
    umwtrrsTaskARN,
    umwtrrsLoggingInfo,
    umwtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateMaintenanceWindowTask' smart constructor.
data UpdateMaintenanceWindowTask = UpdateMaintenanceWindowTask'
  { _uMaxErrors ::
      !(Maybe Text),
    _uTaskParameters ::
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
    _uServiceRoleARN ::
      !(Maybe Text),
    _uPriority ::
      !(Maybe Nat),
    _uTargets ::
      !( Maybe
           [Target]
       ),
    _uTaskInvocationParameters ::
      !( Maybe
           MaintenanceWindowTaskInvocationParameters
       ),
    _uName ::
      !(Maybe Text),
    _uReplace ::
      !(Maybe Bool),
    _uMaxConcurrency ::
      !(Maybe Text),
    _uDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _uTaskARN ::
      !(Maybe Text),
    _uLoggingInfo ::
      !( Maybe
           LoggingInfo
       ),
    _uWindowId ::
      !Text,
    _uWindowTaskId ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMaintenanceWindowTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uMaxErrors' - The new @MaxErrors@ value to specify. @MaxErrors@ is the maximum number of errors that are allowed before the task stops being scheduled.
--
-- * 'uTaskParameters' - The parameters to modify. The map has the following format: Key: string, between 1 and 255 characters Value: an array of strings, each string is between 1 and 255 characters
--
-- * 'uServiceRoleARN' - The ARN of the IAM service role for Systems Manager to assume when running a maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created when you run @RegisterTaskWithMaintenanceWindow@ . For more information, see the following topics in the in the /AWS Systems Manager User Guide/ :     * <https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions Using service-linked roles for Systems Manager>      * <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role Should I use a service-linked role or a custom service role to run maintenance window tasks? >
--
-- * 'uPriority' - The new task priority to specify. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
--
-- * 'uTargets' - The targets (either instances or tags) to modify. Instances are specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags are specified using Key=tag_name,Values=tag_value.
--
-- * 'uTaskInvocationParameters' - The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty. /Important:/ When you update a maintenance window task that has options specified in @TaskInvocationParameters@ , you must provide again all the @TaskInvocationParameters@ values that you want to retain. The values you do not specify again are removed. For example, suppose that when you registered a Run Command task, you specified @TaskInvocationParameters@ values for @Comment@ , @NotificationConfig@ , and @OutputS3BucketName@ . If you update the maintenance window task and specify only a different @OutputS3BucketName@ value, the values for @Comment@ and @NotificationConfig@ are removed.
--
-- * 'uName' - The new task name to specify.
--
-- * 'uReplace' - If True, then all fields that are required by the RegisterTaskWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
--
-- * 'uMaxConcurrency' - The new @MaxConcurrency@ value you want to specify. @MaxConcurrency@ is the number of targets that are allowed to run this task in parallel.
--
-- * 'uDescription' - The new task description to specify.
--
-- * 'uTaskARN' - The task ARN to modify.
--
-- * 'uLoggingInfo' - The new logging location in Amazon S3 to specify.
--
-- * 'uWindowId' - The maintenance window ID that contains the task to modify.
--
-- * 'uWindowTaskId' - The task ID to modify.
updateMaintenanceWindowTask ::
  -- | 'uWindowId'
  Text ->
  -- | 'uWindowTaskId'
  Text ->
  UpdateMaintenanceWindowTask
updateMaintenanceWindowTask pWindowId_ pWindowTaskId_ =
  UpdateMaintenanceWindowTask'
    { _uMaxErrors = Nothing,
      _uTaskParameters = Nothing,
      _uServiceRoleARN = Nothing,
      _uPriority = Nothing,
      _uTargets = Nothing,
      _uTaskInvocationParameters = Nothing,
      _uName = Nothing,
      _uReplace = Nothing,
      _uMaxConcurrency = Nothing,
      _uDescription = Nothing,
      _uTaskARN = Nothing,
      _uLoggingInfo = Nothing,
      _uWindowId = pWindowId_,
      _uWindowTaskId = pWindowTaskId_
    }

-- | The new @MaxErrors@ value to specify. @MaxErrors@ is the maximum number of errors that are allowed before the task stops being scheduled.
uMaxErrors :: Lens' UpdateMaintenanceWindowTask (Maybe Text)
uMaxErrors = lens _uMaxErrors (\s a -> s {_uMaxErrors = a})

-- | The parameters to modify. The map has the following format: Key: string, between 1 and 255 characters Value: an array of strings, each string is between 1 and 255 characters
uTaskParameters :: Lens' UpdateMaintenanceWindowTask (Maybe (HashMap Text MaintenanceWindowTaskParameterValueExpression))
uTaskParameters = lens _uTaskParameters (\s a -> s {_uTaskParameters = a}) . mapping (_Sensitive . _Map)

-- | The ARN of the IAM service role for Systems Manager to assume when running a maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created when you run @RegisterTaskWithMaintenanceWindow@ . For more information, see the following topics in the in the /AWS Systems Manager User Guide/ :     * <https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions Using service-linked roles for Systems Manager>      * <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role Should I use a service-linked role or a custom service role to run maintenance window tasks? >
uServiceRoleARN :: Lens' UpdateMaintenanceWindowTask (Maybe Text)
uServiceRoleARN = lens _uServiceRoleARN (\s a -> s {_uServiceRoleARN = a})

-- | The new task priority to specify. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
uPriority :: Lens' UpdateMaintenanceWindowTask (Maybe Natural)
uPriority = lens _uPriority (\s a -> s {_uPriority = a}) . mapping _Nat

-- | The targets (either instances or tags) to modify. Instances are specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags are specified using Key=tag_name,Values=tag_value.
uTargets :: Lens' UpdateMaintenanceWindowTask [Target]
uTargets = lens _uTargets (\s a -> s {_uTargets = a}) . _Default . _Coerce

-- | The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty. /Important:/ When you update a maintenance window task that has options specified in @TaskInvocationParameters@ , you must provide again all the @TaskInvocationParameters@ values that you want to retain. The values you do not specify again are removed. For example, suppose that when you registered a Run Command task, you specified @TaskInvocationParameters@ values for @Comment@ , @NotificationConfig@ , and @OutputS3BucketName@ . If you update the maintenance window task and specify only a different @OutputS3BucketName@ value, the values for @Comment@ and @NotificationConfig@ are removed.
uTaskInvocationParameters :: Lens' UpdateMaintenanceWindowTask (Maybe MaintenanceWindowTaskInvocationParameters)
uTaskInvocationParameters = lens _uTaskInvocationParameters (\s a -> s {_uTaskInvocationParameters = a})

-- | The new task name to specify.
uName :: Lens' UpdateMaintenanceWindowTask (Maybe Text)
uName = lens _uName (\s a -> s {_uName = a})

-- | If True, then all fields that are required by the RegisterTaskWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
uReplace :: Lens' UpdateMaintenanceWindowTask (Maybe Bool)
uReplace = lens _uReplace (\s a -> s {_uReplace = a})

-- | The new @MaxConcurrency@ value you want to specify. @MaxConcurrency@ is the number of targets that are allowed to run this task in parallel.
uMaxConcurrency :: Lens' UpdateMaintenanceWindowTask (Maybe Text)
uMaxConcurrency = lens _uMaxConcurrency (\s a -> s {_uMaxConcurrency = a})

-- | The new task description to specify.
uDescription :: Lens' UpdateMaintenanceWindowTask (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a}) . mapping _Sensitive

-- | The task ARN to modify.
uTaskARN :: Lens' UpdateMaintenanceWindowTask (Maybe Text)
uTaskARN = lens _uTaskARN (\s a -> s {_uTaskARN = a})

-- | The new logging location in Amazon S3 to specify.
uLoggingInfo :: Lens' UpdateMaintenanceWindowTask (Maybe LoggingInfo)
uLoggingInfo = lens _uLoggingInfo (\s a -> s {_uLoggingInfo = a})

-- | The maintenance window ID that contains the task to modify.
uWindowId :: Lens' UpdateMaintenanceWindowTask Text
uWindowId = lens _uWindowId (\s a -> s {_uWindowId = a})

-- | The task ID to modify.
uWindowTaskId :: Lens' UpdateMaintenanceWindowTask Text
uWindowTaskId = lens _uWindowTaskId (\s a -> s {_uWindowTaskId = a})

instance AWSRequest UpdateMaintenanceWindowTask where
  type
    Rs UpdateMaintenanceWindowTask =
      UpdateMaintenanceWindowTaskResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateMaintenanceWindowTaskResponse'
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
            <*> (x .?> "LoggingInfo")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateMaintenanceWindowTask

instance NFData UpdateMaintenanceWindowTask

instance ToHeaders UpdateMaintenanceWindowTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.UpdateMaintenanceWindowTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMaintenanceWindowTask where
  toJSON UpdateMaintenanceWindowTask' {..} =
    object
      ( catMaybes
          [ ("MaxErrors" .=) <$> _uMaxErrors,
            ("TaskParameters" .=) <$> _uTaskParameters,
            ("ServiceRoleArn" .=) <$> _uServiceRoleARN,
            ("Priority" .=) <$> _uPriority,
            ("Targets" .=) <$> _uTargets,
            ("TaskInvocationParameters" .=)
              <$> _uTaskInvocationParameters,
            ("Name" .=) <$> _uName,
            ("Replace" .=) <$> _uReplace,
            ("MaxConcurrency" .=) <$> _uMaxConcurrency,
            ("Description" .=) <$> _uDescription,
            ("TaskArn" .=) <$> _uTaskARN,
            ("LoggingInfo" .=) <$> _uLoggingInfo,
            Just ("WindowId" .= _uWindowId),
            Just ("WindowTaskId" .= _uWindowTaskId)
          ]
      )

instance ToPath UpdateMaintenanceWindowTask where
  toPath = const "/"

instance ToQuery UpdateMaintenanceWindowTask where
  toQuery = const mempty

-- | /See:/ 'updateMaintenanceWindowTaskResponse' smart constructor.
data UpdateMaintenanceWindowTaskResponse = UpdateMaintenanceWindowTaskResponse'
  { _umwtrrsMaxErrors ::
      !( Maybe
           Text
       ),
    _umwtrrsTaskParameters ::
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
    _umwtrrsWindowTaskId ::
      !( Maybe
           Text
       ),
    _umwtrrsServiceRoleARN ::
      !( Maybe
           Text
       ),
    _umwtrrsPriority ::
      !( Maybe
           Nat
       ),
    _umwtrrsTargets ::
      !( Maybe
           [Target]
       ),
    _umwtrrsTaskInvocationParameters ::
      !( Maybe
           MaintenanceWindowTaskInvocationParameters
       ),
    _umwtrrsName ::
      !( Maybe
           Text
       ),
    _umwtrrsMaxConcurrency ::
      !( Maybe
           Text
       ),
    _umwtrrsWindowId ::
      !( Maybe
           Text
       ),
    _umwtrrsDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _umwtrrsTaskARN ::
      !( Maybe
           Text
       ),
    _umwtrrsLoggingInfo ::
      !( Maybe
           LoggingInfo
       ),
    _umwtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMaintenanceWindowTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umwtrrsMaxErrors' - The updated MaxErrors value.
--
-- * 'umwtrrsTaskParameters' - The updated parameter values.
--
-- * 'umwtrrsWindowTaskId' - The task ID of the maintenance window that was updated.
--
-- * 'umwtrrsServiceRoleARN' - The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
--
-- * 'umwtrrsPriority' - The updated priority value.
--
-- * 'umwtrrsTargets' - The updated target values.
--
-- * 'umwtrrsTaskInvocationParameters' - The updated parameter values.
--
-- * 'umwtrrsName' - The updated task name.
--
-- * 'umwtrrsMaxConcurrency' - The updated MaxConcurrency value.
--
-- * 'umwtrrsWindowId' - The ID of the maintenance window that was updated.
--
-- * 'umwtrrsDescription' - The updated task description.
--
-- * 'umwtrrsTaskARN' - The updated task ARN value.
--
-- * 'umwtrrsLoggingInfo' - The updated logging information in Amazon S3.
--
-- * 'umwtrrsResponseStatus' - -- | The response status code.
updateMaintenanceWindowTaskResponse ::
  -- | 'umwtrrsResponseStatus'
  Int ->
  UpdateMaintenanceWindowTaskResponse
updateMaintenanceWindowTaskResponse pResponseStatus_ =
  UpdateMaintenanceWindowTaskResponse'
    { _umwtrrsMaxErrors =
        Nothing,
      _umwtrrsTaskParameters = Nothing,
      _umwtrrsWindowTaskId = Nothing,
      _umwtrrsServiceRoleARN = Nothing,
      _umwtrrsPriority = Nothing,
      _umwtrrsTargets = Nothing,
      _umwtrrsTaskInvocationParameters =
        Nothing,
      _umwtrrsName = Nothing,
      _umwtrrsMaxConcurrency = Nothing,
      _umwtrrsWindowId = Nothing,
      _umwtrrsDescription = Nothing,
      _umwtrrsTaskARN = Nothing,
      _umwtrrsLoggingInfo = Nothing,
      _umwtrrsResponseStatus =
        pResponseStatus_
    }

-- | The updated MaxErrors value.
umwtrrsMaxErrors :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsMaxErrors = lens _umwtrrsMaxErrors (\s a -> s {_umwtrrsMaxErrors = a})

-- | The updated parameter values.
umwtrrsTaskParameters :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe (HashMap Text MaintenanceWindowTaskParameterValueExpression))
umwtrrsTaskParameters = lens _umwtrrsTaskParameters (\s a -> s {_umwtrrsTaskParameters = a}) . mapping (_Sensitive . _Map)

-- | The task ID of the maintenance window that was updated.
umwtrrsWindowTaskId :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsWindowTaskId = lens _umwtrrsWindowTaskId (\s a -> s {_umwtrrsWindowTaskId = a})

-- | The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
umwtrrsServiceRoleARN :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsServiceRoleARN = lens _umwtrrsServiceRoleARN (\s a -> s {_umwtrrsServiceRoleARN = a})

-- | The updated priority value.
umwtrrsPriority :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Natural)
umwtrrsPriority = lens _umwtrrsPriority (\s a -> s {_umwtrrsPriority = a}) . mapping _Nat

-- | The updated target values.
umwtrrsTargets :: Lens' UpdateMaintenanceWindowTaskResponse [Target]
umwtrrsTargets = lens _umwtrrsTargets (\s a -> s {_umwtrrsTargets = a}) . _Default . _Coerce

-- | The updated parameter values.
umwtrrsTaskInvocationParameters :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe MaintenanceWindowTaskInvocationParameters)
umwtrrsTaskInvocationParameters = lens _umwtrrsTaskInvocationParameters (\s a -> s {_umwtrrsTaskInvocationParameters = a})

-- | The updated task name.
umwtrrsName :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsName = lens _umwtrrsName (\s a -> s {_umwtrrsName = a})

-- | The updated MaxConcurrency value.
umwtrrsMaxConcurrency :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsMaxConcurrency = lens _umwtrrsMaxConcurrency (\s a -> s {_umwtrrsMaxConcurrency = a})

-- | The ID of the maintenance window that was updated.
umwtrrsWindowId :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsWindowId = lens _umwtrrsWindowId (\s a -> s {_umwtrrsWindowId = a})

-- | The updated task description.
umwtrrsDescription :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsDescription = lens _umwtrrsDescription (\s a -> s {_umwtrrsDescription = a}) . mapping _Sensitive

-- | The updated task ARN value.
umwtrrsTaskARN :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe Text)
umwtrrsTaskARN = lens _umwtrrsTaskARN (\s a -> s {_umwtrrsTaskARN = a})

-- | The updated logging information in Amazon S3.
umwtrrsLoggingInfo :: Lens' UpdateMaintenanceWindowTaskResponse (Maybe LoggingInfo)
umwtrrsLoggingInfo = lens _umwtrrsLoggingInfo (\s a -> s {_umwtrrsLoggingInfo = a})

-- | -- | The response status code.
umwtrrsResponseStatus :: Lens' UpdateMaintenanceWindowTaskResponse Int
umwtrrsResponseStatus = lens _umwtrrsResponseStatus (\s a -> s {_umwtrrsResponseStatus = a})

instance NFData UpdateMaintenanceWindowTaskResponse

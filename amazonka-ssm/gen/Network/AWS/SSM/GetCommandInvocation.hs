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
-- Module      : Network.AWS.SSM.GetCommandInvocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about command execution for an invocation or plugin.
module Network.AWS.SSM.GetCommandInvocation
  ( -- * Creating a Request
    getCommandInvocation,
    GetCommandInvocation,

    -- * Request Lenses
    gciPluginName,
    gciCommandId,
    gciInstanceId,

    -- * Destructuring the Response
    getCommandInvocationResponse,
    GetCommandInvocationResponse,

    -- * Response Lenses
    gcirrsStandardOutputURL,
    gcirrsStatus,
    gcirrsInstanceId,
    gcirrsStatusDetails,
    gcirrsPluginName,
    gcirrsComment,
    gcirrsExecutionStartDateTime,
    gcirrsStandardErrorURL,
    gcirrsDocumentName,
    gcirrsCommandId,
    gcirrsStandardErrorContent,
    gcirrsExecutionEndDateTime,
    gcirrsResponseCode,
    gcirrsCloudWatchOutputConfig,
    gcirrsExecutionElapsedTime,
    gcirrsDocumentVersion,
    gcirrsStandardOutputContent,
    gcirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getCommandInvocation' smart constructor.
data GetCommandInvocation = GetCommandInvocation'
  { _gciPluginName ::
      !(Maybe Text),
    _gciCommandId :: !Text,
    _gciInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCommandInvocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gciPluginName' - (Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned. Plugin names are also referred to as step names in Systems Manager documents.
--
-- * 'gciCommandId' - (Required) The parent command ID of the invocation plugin.
--
-- * 'gciInstanceId' - (Required) The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.
getCommandInvocation ::
  -- | 'gciCommandId'
  Text ->
  -- | 'gciInstanceId'
  Text ->
  GetCommandInvocation
getCommandInvocation pCommandId_ pInstanceId_ =
  GetCommandInvocation'
    { _gciPluginName = Nothing,
      _gciCommandId = pCommandId_,
      _gciInstanceId = pInstanceId_
    }

-- | (Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned. Plugin names are also referred to as step names in Systems Manager documents.
gciPluginName :: Lens' GetCommandInvocation (Maybe Text)
gciPluginName = lens _gciPluginName (\s a -> s {_gciPluginName = a})

-- | (Required) The parent command ID of the invocation plugin.
gciCommandId :: Lens' GetCommandInvocation Text
gciCommandId = lens _gciCommandId (\s a -> s {_gciCommandId = a})

-- | (Required) The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.
gciInstanceId :: Lens' GetCommandInvocation Text
gciInstanceId = lens _gciInstanceId (\s a -> s {_gciInstanceId = a})

instance AWSRequest GetCommandInvocation where
  type
    Rs GetCommandInvocation =
      GetCommandInvocationResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetCommandInvocationResponse'
            <$> (x .?> "StandardOutputUrl")
            <*> (x .?> "Status")
            <*> (x .?> "InstanceId")
            <*> (x .?> "StatusDetails")
            <*> (x .?> "PluginName")
            <*> (x .?> "Comment")
            <*> (x .?> "ExecutionStartDateTime")
            <*> (x .?> "StandardErrorUrl")
            <*> (x .?> "DocumentName")
            <*> (x .?> "CommandId")
            <*> (x .?> "StandardErrorContent")
            <*> (x .?> "ExecutionEndDateTime")
            <*> (x .?> "ResponseCode")
            <*> (x .?> "CloudWatchOutputConfig")
            <*> (x .?> "ExecutionElapsedTime")
            <*> (x .?> "DocumentVersion")
            <*> (x .?> "StandardOutputContent")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCommandInvocation

instance NFData GetCommandInvocation

instance ToHeaders GetCommandInvocation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetCommandInvocation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCommandInvocation where
  toJSON GetCommandInvocation' {..} =
    object
      ( catMaybes
          [ ("PluginName" .=) <$> _gciPluginName,
            Just ("CommandId" .= _gciCommandId),
            Just ("InstanceId" .= _gciInstanceId)
          ]
      )

instance ToPath GetCommandInvocation where
  toPath = const "/"

instance ToQuery GetCommandInvocation where
  toQuery = const mempty

-- | /See:/ 'getCommandInvocationResponse' smart constructor.
data GetCommandInvocationResponse = GetCommandInvocationResponse'
  { _gcirrsStandardOutputURL ::
      !(Maybe Text),
    _gcirrsStatus ::
      !( Maybe
           CommandInvocationStatus
       ),
    _gcirrsInstanceId ::
      !(Maybe Text),
    _gcirrsStatusDetails ::
      !(Maybe Text),
    _gcirrsPluginName ::
      !(Maybe Text),
    _gcirrsComment ::
      !(Maybe Text),
    _gcirrsExecutionStartDateTime ::
      !(Maybe Text),
    _gcirrsStandardErrorURL ::
      !(Maybe Text),
    _gcirrsDocumentName ::
      !(Maybe Text),
    _gcirrsCommandId ::
      !(Maybe Text),
    _gcirrsStandardErrorContent ::
      !(Maybe Text),
    _gcirrsExecutionEndDateTime ::
      !(Maybe Text),
    _gcirrsResponseCode ::
      !(Maybe Int),
    _gcirrsCloudWatchOutputConfig ::
      !( Maybe
           CloudWatchOutputConfig
       ),
    _gcirrsExecutionElapsedTime ::
      !(Maybe Text),
    _gcirrsDocumentVersion ::
      !(Maybe Text),
    _gcirrsStandardOutputContent ::
      !(Maybe Text),
    _gcirrsResponseStatus ::
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

-- | Creates a value of 'GetCommandInvocationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcirrsStandardOutputURL' - The URL for the complete text written by the plugin to stdout in Amazon S3. If an S3 bucket was not specified, then this string is empty.
--
-- * 'gcirrsStatus' - The status of this invocation plugin. This status can be different than StatusDetails.
--
-- * 'gcirrsInstanceId' - The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.
--
-- * 'gcirrsStatusDetails' - A detailed status of the command execution for an invocation. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses> in the /AWS Systems Manager User Guide/ . StatusDetails can be one of the following values:     * Pending: The command has not been sent to the instance.     * In Progress: The command has been sent to the instance but has not reached a terminal state.     * Delayed: The system attempted to send the command to the target, but the target was not available. The instance might not be available because of network issues, because the instance was stopped, or for similar reasons. The system will try to send the command again.     * Success: The command or plugin ran successfully. This is a terminal state.     * Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Execution Timed Out: The command started to run on the instance, but the execution was not complete before the timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.     * Failed: The command wasn't run successfully on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.     * Canceled: The command was terminated before it was completed. This is a terminal state.     * Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.
--
-- * 'gcirrsPluginName' - The name of the plugin for which you want detailed results. For example, aws:RunShellScript is a plugin.
--
-- * 'gcirrsComment' - The comment text for the command.
--
-- * 'gcirrsExecutionStartDateTime' - The date and time the plugin started running. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the @InvokedBefore@ filter. @aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z@  If the plugin has not started to run, the string is empty.
--
-- * 'gcirrsStandardErrorURL' - The URL for the complete text written by the plugin to stderr. If the command has not finished running, then this string is empty.
--
-- * 'gcirrsDocumentName' - The name of the document that was run. For example, AWS-RunShellScript.
--
-- * 'gcirrsCommandId' - The parent command ID of the invocation plugin.
--
-- * 'gcirrsStandardErrorContent' - The first 8,000 characters written by the plugin to stderr. If the command has not finished running, then this string is empty.
--
-- * 'gcirrsExecutionEndDateTime' - The date and time the plugin was finished running. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the @InvokedAfter@ filter. @aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z@  If the plugin has not started to run, the string is empty.
--
-- * 'gcirrsResponseCode' - The error level response code for the plugin script. If the response code is -1, then the command has not started running on the instance, or it was not received by the instance.
--
-- * 'gcirrsCloudWatchOutputConfig' - CloudWatch Logs information where Systems Manager sent the command output.
--
-- * 'gcirrsExecutionElapsedTime' - Duration since ExecutionStartDateTime.
--
-- * 'gcirrsDocumentVersion' - The SSM document version used in the request.
--
-- * 'gcirrsStandardOutputContent' - The first 24,000 characters written by the plugin to stdout. If the command has not finished running, if ExecutionStatus is neither Succeeded nor Failed, then this string is empty.
--
-- * 'gcirrsResponseStatus' - -- | The response status code.
getCommandInvocationResponse ::
  -- | 'gcirrsResponseStatus'
  Int ->
  GetCommandInvocationResponse
getCommandInvocationResponse pResponseStatus_ =
  GetCommandInvocationResponse'
    { _gcirrsStandardOutputURL =
        Nothing,
      _gcirrsStatus = Nothing,
      _gcirrsInstanceId = Nothing,
      _gcirrsStatusDetails = Nothing,
      _gcirrsPluginName = Nothing,
      _gcirrsComment = Nothing,
      _gcirrsExecutionStartDateTime = Nothing,
      _gcirrsStandardErrorURL = Nothing,
      _gcirrsDocumentName = Nothing,
      _gcirrsCommandId = Nothing,
      _gcirrsStandardErrorContent = Nothing,
      _gcirrsExecutionEndDateTime = Nothing,
      _gcirrsResponseCode = Nothing,
      _gcirrsCloudWatchOutputConfig = Nothing,
      _gcirrsExecutionElapsedTime = Nothing,
      _gcirrsDocumentVersion = Nothing,
      _gcirrsStandardOutputContent = Nothing,
      _gcirrsResponseStatus = pResponseStatus_
    }

-- | The URL for the complete text written by the plugin to stdout in Amazon S3. If an S3 bucket was not specified, then this string is empty.
gcirrsStandardOutputURL :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsStandardOutputURL = lens _gcirrsStandardOutputURL (\s a -> s {_gcirrsStandardOutputURL = a})

-- | The status of this invocation plugin. This status can be different than StatusDetails.
gcirrsStatus :: Lens' GetCommandInvocationResponse (Maybe CommandInvocationStatus)
gcirrsStatus = lens _gcirrsStatus (\s a -> s {_gcirrsStatus = a})

-- | The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.
gcirrsInstanceId :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsInstanceId = lens _gcirrsInstanceId (\s a -> s {_gcirrsInstanceId = a})

-- | A detailed status of the command execution for an invocation. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses> in the /AWS Systems Manager User Guide/ . StatusDetails can be one of the following values:     * Pending: The command has not been sent to the instance.     * In Progress: The command has been sent to the instance but has not reached a terminal state.     * Delayed: The system attempted to send the command to the target, but the target was not available. The instance might not be available because of network issues, because the instance was stopped, or for similar reasons. The system will try to send the command again.     * Success: The command or plugin ran successfully. This is a terminal state.     * Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Execution Timed Out: The command started to run on the instance, but the execution was not complete before the timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.     * Failed: The command wasn't run successfully on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.     * Canceled: The command was terminated before it was completed. This is a terminal state.     * Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.
gcirrsStatusDetails :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsStatusDetails = lens _gcirrsStatusDetails (\s a -> s {_gcirrsStatusDetails = a})

-- | The name of the plugin for which you want detailed results. For example, aws:RunShellScript is a plugin.
gcirrsPluginName :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsPluginName = lens _gcirrsPluginName (\s a -> s {_gcirrsPluginName = a})

-- | The comment text for the command.
gcirrsComment :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsComment = lens _gcirrsComment (\s a -> s {_gcirrsComment = a})

-- | The date and time the plugin started running. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the @InvokedBefore@ filter. @aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z@  If the plugin has not started to run, the string is empty.
gcirrsExecutionStartDateTime :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsExecutionStartDateTime = lens _gcirrsExecutionStartDateTime (\s a -> s {_gcirrsExecutionStartDateTime = a})

-- | The URL for the complete text written by the plugin to stderr. If the command has not finished running, then this string is empty.
gcirrsStandardErrorURL :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsStandardErrorURL = lens _gcirrsStandardErrorURL (\s a -> s {_gcirrsStandardErrorURL = a})

-- | The name of the document that was run. For example, AWS-RunShellScript.
gcirrsDocumentName :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsDocumentName = lens _gcirrsDocumentName (\s a -> s {_gcirrsDocumentName = a})

-- | The parent command ID of the invocation plugin.
gcirrsCommandId :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsCommandId = lens _gcirrsCommandId (\s a -> s {_gcirrsCommandId = a})

-- | The first 8,000 characters written by the plugin to stderr. If the command has not finished running, then this string is empty.
gcirrsStandardErrorContent :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsStandardErrorContent = lens _gcirrsStandardErrorContent (\s a -> s {_gcirrsStandardErrorContent = a})

-- | The date and time the plugin was finished running. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the @InvokedAfter@ filter. @aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z@  If the plugin has not started to run, the string is empty.
gcirrsExecutionEndDateTime :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsExecutionEndDateTime = lens _gcirrsExecutionEndDateTime (\s a -> s {_gcirrsExecutionEndDateTime = a})

-- | The error level response code for the plugin script. If the response code is -1, then the command has not started running on the instance, or it was not received by the instance.
gcirrsResponseCode :: Lens' GetCommandInvocationResponse (Maybe Int)
gcirrsResponseCode = lens _gcirrsResponseCode (\s a -> s {_gcirrsResponseCode = a})

-- | CloudWatch Logs information where Systems Manager sent the command output.
gcirrsCloudWatchOutputConfig :: Lens' GetCommandInvocationResponse (Maybe CloudWatchOutputConfig)
gcirrsCloudWatchOutputConfig = lens _gcirrsCloudWatchOutputConfig (\s a -> s {_gcirrsCloudWatchOutputConfig = a})

-- | Duration since ExecutionStartDateTime.
gcirrsExecutionElapsedTime :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsExecutionElapsedTime = lens _gcirrsExecutionElapsedTime (\s a -> s {_gcirrsExecutionElapsedTime = a})

-- | The SSM document version used in the request.
gcirrsDocumentVersion :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsDocumentVersion = lens _gcirrsDocumentVersion (\s a -> s {_gcirrsDocumentVersion = a})

-- | The first 24,000 characters written by the plugin to stdout. If the command has not finished running, if ExecutionStatus is neither Succeeded nor Failed, then this string is empty.
gcirrsStandardOutputContent :: Lens' GetCommandInvocationResponse (Maybe Text)
gcirrsStandardOutputContent = lens _gcirrsStandardOutputContent (\s a -> s {_gcirrsStandardOutputContent = a})

-- | -- | The response status code.
gcirrsResponseStatus :: Lens' GetCommandInvocationResponse Int
gcirrsResponseStatus = lens _gcirrsResponseStatus (\s a -> s {_gcirrsResponseStatus = a})

instance NFData GetCommandInvocationResponse

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandInvocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandInvocation where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.CloudWatchOutputConfig
import Network.AWS.SSM.Types.CommandInvocationStatus
import Network.AWS.SSM.Types.CommandPlugin
import Network.AWS.SSM.Types.NotificationConfig

-- | An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. A command invocation returns status and detail information about a command you ran.
--
--
--
-- /See:/ 'commandInvocation' smart constructor.
data CommandInvocation = CommandInvocation'
  { _ciNotificationConfig ::
      !(Maybe NotificationConfig),
    _ciStandardOutputURL ::
      !(Maybe Text),
    _ciStatus ::
      !(Maybe CommandInvocationStatus),
    _ciInstanceId :: !(Maybe Text),
    _ciServiceRole :: !(Maybe Text),
    _ciRequestedDateTime ::
      !(Maybe POSIX),
    _ciStatusDetails :: !(Maybe Text),
    _ciInstanceName :: !(Maybe Text),
    _ciComment :: !(Maybe Text),
    _ciStandardErrorURL ::
      !(Maybe Text),
    _ciDocumentName :: !(Maybe Text),
    _ciCommandId :: !(Maybe Text),
    _ciTraceOutput :: !(Maybe Text),
    _ciCloudWatchOutputConfig ::
      !(Maybe CloudWatchOutputConfig),
    _ciCommandPlugins ::
      !(Maybe [CommandPlugin]),
    _ciDocumentVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CommandInvocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciNotificationConfig' - Configurations for sending notifications about command status changes on a per instance basis.
--
-- * 'ciStandardOutputURL' - The URL to the plugin's StdOut file in Amazon S3, if the S3 bucket was defined for the parent command. For an invocation, StandardOutputUrl is populated if there is just one plugin defined for the command, and the S3 bucket was defined for the command.
--
-- * 'ciStatus' - Whether or not the invocation succeeded, failed, or is pending.
--
-- * 'ciInstanceId' - The instance ID in which this invocation was requested.
--
-- * 'ciServiceRole' - The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes on a per instance basis.
--
-- * 'ciRequestedDateTime' - The time and date the request was sent to this instance.
--
-- * 'ciStatusDetails' - A detailed status of the command execution for each invocation (each instance targeted by the command). StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses> in the /AWS Systems Manager User Guide/ . StatusDetails can be one of the following values:     * Pending: The command has not been sent to the instance.     * In Progress: The command has been sent to the instance but has not reached a terminal state.     * Success: The execution of the command or plugin was successfully completed. This is a terminal state.     * Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.     * Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.     * Canceled: The command was terminated before it was completed. This is a terminal state.     * Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.
--
-- * 'ciInstanceName' - The name of the invocation target. For EC2 instances this is the value for the aws:Name tag. For on-premises instances, this is the name of the instance.
--
-- * 'ciComment' - User-specified information about the command, such as a brief description of what the command should do.
--
-- * 'ciStandardErrorURL' - The URL to the plugin's StdErr file in Amazon S3, if the S3 bucket was defined for the parent command. For an invocation, StandardErrorUrl is populated if there is just one plugin defined for the command, and the S3 bucket was defined for the command.
--
-- * 'ciDocumentName' - The document name that was requested for execution.
--
-- * 'ciCommandId' - The command against which this invocation was requested.
--
-- * 'ciTraceOutput' - Gets the trace output sent by the agent.
--
-- * 'ciCloudWatchOutputConfig' - CloudWatch Logs information where you want Systems Manager to send the command output.
--
-- * 'ciCommandPlugins' - Undocumented member.
--
-- * 'ciDocumentVersion' - The SSM document version.
commandInvocation ::
  CommandInvocation
commandInvocation =
  CommandInvocation'
    { _ciNotificationConfig = Nothing,
      _ciStandardOutputURL = Nothing,
      _ciStatus = Nothing,
      _ciInstanceId = Nothing,
      _ciServiceRole = Nothing,
      _ciRequestedDateTime = Nothing,
      _ciStatusDetails = Nothing,
      _ciInstanceName = Nothing,
      _ciComment = Nothing,
      _ciStandardErrorURL = Nothing,
      _ciDocumentName = Nothing,
      _ciCommandId = Nothing,
      _ciTraceOutput = Nothing,
      _ciCloudWatchOutputConfig = Nothing,
      _ciCommandPlugins = Nothing,
      _ciDocumentVersion = Nothing
    }

-- | Configurations for sending notifications about command status changes on a per instance basis.
ciNotificationConfig :: Lens' CommandInvocation (Maybe NotificationConfig)
ciNotificationConfig = lens _ciNotificationConfig (\s a -> s {_ciNotificationConfig = a})

-- | The URL to the plugin's StdOut file in Amazon S3, if the S3 bucket was defined for the parent command. For an invocation, StandardOutputUrl is populated if there is just one plugin defined for the command, and the S3 bucket was defined for the command.
ciStandardOutputURL :: Lens' CommandInvocation (Maybe Text)
ciStandardOutputURL = lens _ciStandardOutputURL (\s a -> s {_ciStandardOutputURL = a})

-- | Whether or not the invocation succeeded, failed, or is pending.
ciStatus :: Lens' CommandInvocation (Maybe CommandInvocationStatus)
ciStatus = lens _ciStatus (\s a -> s {_ciStatus = a})

-- | The instance ID in which this invocation was requested.
ciInstanceId :: Lens' CommandInvocation (Maybe Text)
ciInstanceId = lens _ciInstanceId (\s a -> s {_ciInstanceId = a})

-- | The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes on a per instance basis.
ciServiceRole :: Lens' CommandInvocation (Maybe Text)
ciServiceRole = lens _ciServiceRole (\s a -> s {_ciServiceRole = a})

-- | The time and date the request was sent to this instance.
ciRequestedDateTime :: Lens' CommandInvocation (Maybe UTCTime)
ciRequestedDateTime = lens _ciRequestedDateTime (\s a -> s {_ciRequestedDateTime = a}) . mapping _Time

-- | A detailed status of the command execution for each invocation (each instance targeted by the command). StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses> in the /AWS Systems Manager User Guide/ . StatusDetails can be one of the following values:     * Pending: The command has not been sent to the instance.     * In Progress: The command has been sent to the instance but has not reached a terminal state.     * Success: The execution of the command or plugin was successfully completed. This is a terminal state.     * Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.     * Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.     * Canceled: The command was terminated before it was completed. This is a terminal state.     * Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.     * Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.
ciStatusDetails :: Lens' CommandInvocation (Maybe Text)
ciStatusDetails = lens _ciStatusDetails (\s a -> s {_ciStatusDetails = a})

-- | The name of the invocation target. For EC2 instances this is the value for the aws:Name tag. For on-premises instances, this is the name of the instance.
ciInstanceName :: Lens' CommandInvocation (Maybe Text)
ciInstanceName = lens _ciInstanceName (\s a -> s {_ciInstanceName = a})

-- | User-specified information about the command, such as a brief description of what the command should do.
ciComment :: Lens' CommandInvocation (Maybe Text)
ciComment = lens _ciComment (\s a -> s {_ciComment = a})

-- | The URL to the plugin's StdErr file in Amazon S3, if the S3 bucket was defined for the parent command. For an invocation, StandardErrorUrl is populated if there is just one plugin defined for the command, and the S3 bucket was defined for the command.
ciStandardErrorURL :: Lens' CommandInvocation (Maybe Text)
ciStandardErrorURL = lens _ciStandardErrorURL (\s a -> s {_ciStandardErrorURL = a})

-- | The document name that was requested for execution.
ciDocumentName :: Lens' CommandInvocation (Maybe Text)
ciDocumentName = lens _ciDocumentName (\s a -> s {_ciDocumentName = a})

-- | The command against which this invocation was requested.
ciCommandId :: Lens' CommandInvocation (Maybe Text)
ciCommandId = lens _ciCommandId (\s a -> s {_ciCommandId = a})

-- | Gets the trace output sent by the agent.
ciTraceOutput :: Lens' CommandInvocation (Maybe Text)
ciTraceOutput = lens _ciTraceOutput (\s a -> s {_ciTraceOutput = a})

-- | CloudWatch Logs information where you want Systems Manager to send the command output.
ciCloudWatchOutputConfig :: Lens' CommandInvocation (Maybe CloudWatchOutputConfig)
ciCloudWatchOutputConfig = lens _ciCloudWatchOutputConfig (\s a -> s {_ciCloudWatchOutputConfig = a})

-- | Undocumented member.
ciCommandPlugins :: Lens' CommandInvocation [CommandPlugin]
ciCommandPlugins = lens _ciCommandPlugins (\s a -> s {_ciCommandPlugins = a}) . _Default . _Coerce

-- | The SSM document version.
ciDocumentVersion :: Lens' CommandInvocation (Maybe Text)
ciDocumentVersion = lens _ciDocumentVersion (\s a -> s {_ciDocumentVersion = a})

instance FromJSON CommandInvocation where
  parseJSON =
    withObject
      "CommandInvocation"
      ( \x ->
          CommandInvocation'
            <$> (x .:? "NotificationConfig")
            <*> (x .:? "StandardOutputUrl")
            <*> (x .:? "Status")
            <*> (x .:? "InstanceId")
            <*> (x .:? "ServiceRole")
            <*> (x .:? "RequestedDateTime")
            <*> (x .:? "StatusDetails")
            <*> (x .:? "InstanceName")
            <*> (x .:? "Comment")
            <*> (x .:? "StandardErrorUrl")
            <*> (x .:? "DocumentName")
            <*> (x .:? "CommandId")
            <*> (x .:? "TraceOutput")
            <*> (x .:? "CloudWatchOutputConfig")
            <*> (x .:? "CommandPlugins" .!= mempty)
            <*> (x .:? "DocumentVersion")
      )

instance Hashable CommandInvocation

instance NFData CommandInvocation

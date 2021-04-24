{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Command
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Command where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.CloudWatchOutputConfig
import Network.AWS.SSM.Types.CommandStatus
import Network.AWS.SSM.Types.NotificationConfig
import Network.AWS.SSM.Types.Target

-- | Describes a command request.
--
--
--
-- /See:/ 'command' smart constructor.
data Command = Command'
  { _cNotificationConfig ::
      !(Maybe NotificationConfig),
    _cInstanceIds :: !(Maybe [Text]),
    _cMaxErrors :: !(Maybe Text),
    _cExpiresAfter :: !(Maybe POSIX),
    _cStatus :: !(Maybe CommandStatus),
    _cServiceRole :: !(Maybe Text),
    _cRequestedDateTime :: !(Maybe POSIX),
    _cStatusDetails :: !(Maybe Text),
    _cCompletedCount :: !(Maybe Int),
    _cOutputS3BucketName :: !(Maybe Text),
    _cComment :: !(Maybe Text),
    _cErrorCount :: !(Maybe Int),
    _cDocumentName :: !(Maybe Text),
    _cCommandId :: !(Maybe Text),
    _cTargets :: !(Maybe [Target]),
    _cOutputS3Region :: !(Maybe Text),
    _cMaxConcurrency :: !(Maybe Text),
    _cOutputS3KeyPrefix :: !(Maybe Text),
    _cTimeoutSeconds :: !(Maybe Nat),
    _cDeliveryTimedOutCount :: !(Maybe Int),
    _cCloudWatchOutputConfig ::
      !(Maybe CloudWatchOutputConfig),
    _cDocumentVersion :: !(Maybe Text),
    _cParameters :: !(Maybe (Map Text [Text])),
    _cTargetCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Command' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cNotificationConfig' - Configurations for sending notifications about command status changes.
--
-- * 'cInstanceIds' - The instance IDs against which this command was requested.
--
-- * 'cMaxErrors' - The maximum number of errors allowed before the system stops sending the command to additional targets. You can specify a number of errors, such as 10, or a percentage or errors, such as 10%. The default value is 0. For more information about how to use MaxErrors, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html Running commands using Systems Manager Run Command> in the /AWS Systems Manager User Guide/ .
--
-- * 'cExpiresAfter' - If this time is reached and the command has not already started running, it will not run. Calculated based on the ExpiresAfter user input provided as part of the SendCommand API.
--
-- * 'cStatus' - The status of the command.
--
-- * 'cServiceRole' - The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes.
--
-- * 'cRequestedDateTime' - The date and time the command was requested.
--
-- * 'cStatusDetails' - A detailed status of the command execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses> in the /AWS Systems Manager User Guide/ . StatusDetails can be one of the following values:     * Pending: The command has not been sent to any instances.     * In Progress: The command has been sent to at least one instance but has not reached a final state on all instances.     * Success: The command successfully ran on all invocations. This is a terminal state.     * Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of Delivery Timed Out. This is a terminal state.     * Execution Timed Out: The value of MaxErrors or more command invocations shows a status of Execution Timed Out. This is a terminal state.     * Failed: The value of MaxErrors or more command invocations shows a status of Failed. This is a terminal state.     * Incomplete: The command was attempted on all instances and one or more invocations does not have a value of Success but not enough invocations failed for the status to be Failed. This is a terminal state.     * Canceled: The command was terminated before it was completed. This is a terminal state.     * Rate Exceeded: The number of instances targeted by the command exceeded the account limit for pending invocations. The system has canceled the command before running it on any instance. This is a terminal state.
--
-- * 'cCompletedCount' - The number of targets for which the command invocation reached a terminal state. Terminal states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out, Canceled, Terminated, or Undeliverable.
--
-- * 'cOutputS3BucketName' - The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command.
--
-- * 'cComment' - User-specified information about the command, such as a brief description of what the command should do.
--
-- * 'cErrorCount' - The number of targets for which the status is Failed or Execution Timed Out.
--
-- * 'cDocumentName' - The name of the document requested for execution.
--
-- * 'cCommandId' - A unique identifier for this command.
--
-- * 'cTargets' - An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call.
--
-- * 'cOutputS3Region' - (Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.
--
-- * 'cMaxConcurrency' - The maximum number of instances that are allowed to run the command at the same time. You can specify a number of instances, such as 10, or a percentage of instances, such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html Running commands using Systems Manager Run Command> in the /AWS Systems Manager User Guide/ .
--
-- * 'cOutputS3KeyPrefix' - The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command.
--
-- * 'cTimeoutSeconds' - The @TimeoutSeconds@ value specified for a command.
--
-- * 'cDeliveryTimedOutCount' - The number of targets for which the status is Delivery Timed Out.
--
-- * 'cCloudWatchOutputConfig' - CloudWatch Logs information where you want Systems Manager to send the command output.
--
-- * 'cDocumentVersion' - The SSM document version.
--
-- * 'cParameters' - The parameter values to be inserted in the document when running the command.
--
-- * 'cTargetCount' - The number of targets for the command.
command ::
  Command
command =
  Command'
    { _cNotificationConfig = Nothing,
      _cInstanceIds = Nothing,
      _cMaxErrors = Nothing,
      _cExpiresAfter = Nothing,
      _cStatus = Nothing,
      _cServiceRole = Nothing,
      _cRequestedDateTime = Nothing,
      _cStatusDetails = Nothing,
      _cCompletedCount = Nothing,
      _cOutputS3BucketName = Nothing,
      _cComment = Nothing,
      _cErrorCount = Nothing,
      _cDocumentName = Nothing,
      _cCommandId = Nothing,
      _cTargets = Nothing,
      _cOutputS3Region = Nothing,
      _cMaxConcurrency = Nothing,
      _cOutputS3KeyPrefix = Nothing,
      _cTimeoutSeconds = Nothing,
      _cDeliveryTimedOutCount = Nothing,
      _cCloudWatchOutputConfig = Nothing,
      _cDocumentVersion = Nothing,
      _cParameters = Nothing,
      _cTargetCount = Nothing
    }

-- | Configurations for sending notifications about command status changes.
cNotificationConfig :: Lens' Command (Maybe NotificationConfig)
cNotificationConfig = lens _cNotificationConfig (\s a -> s {_cNotificationConfig = a})

-- | The instance IDs against which this command was requested.
cInstanceIds :: Lens' Command [Text]
cInstanceIds = lens _cInstanceIds (\s a -> s {_cInstanceIds = a}) . _Default . _Coerce

-- | The maximum number of errors allowed before the system stops sending the command to additional targets. You can specify a number of errors, such as 10, or a percentage or errors, such as 10%. The default value is 0. For more information about how to use MaxErrors, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html Running commands using Systems Manager Run Command> in the /AWS Systems Manager User Guide/ .
cMaxErrors :: Lens' Command (Maybe Text)
cMaxErrors = lens _cMaxErrors (\s a -> s {_cMaxErrors = a})

-- | If this time is reached and the command has not already started running, it will not run. Calculated based on the ExpiresAfter user input provided as part of the SendCommand API.
cExpiresAfter :: Lens' Command (Maybe UTCTime)
cExpiresAfter = lens _cExpiresAfter (\s a -> s {_cExpiresAfter = a}) . mapping _Time

-- | The status of the command.
cStatus :: Lens' Command (Maybe CommandStatus)
cStatus = lens _cStatus (\s a -> s {_cStatus = a})

-- | The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes.
cServiceRole :: Lens' Command (Maybe Text)
cServiceRole = lens _cServiceRole (\s a -> s {_cServiceRole = a})

-- | The date and time the command was requested.
cRequestedDateTime :: Lens' Command (Maybe UTCTime)
cRequestedDateTime = lens _cRequestedDateTime (\s a -> s {_cRequestedDateTime = a}) . mapping _Time

-- | A detailed status of the command execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html Understanding command statuses> in the /AWS Systems Manager User Guide/ . StatusDetails can be one of the following values:     * Pending: The command has not been sent to any instances.     * In Progress: The command has been sent to at least one instance but has not reached a final state on all instances.     * Success: The command successfully ran on all invocations. This is a terminal state.     * Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of Delivery Timed Out. This is a terminal state.     * Execution Timed Out: The value of MaxErrors or more command invocations shows a status of Execution Timed Out. This is a terminal state.     * Failed: The value of MaxErrors or more command invocations shows a status of Failed. This is a terminal state.     * Incomplete: The command was attempted on all instances and one or more invocations does not have a value of Success but not enough invocations failed for the status to be Failed. This is a terminal state.     * Canceled: The command was terminated before it was completed. This is a terminal state.     * Rate Exceeded: The number of instances targeted by the command exceeded the account limit for pending invocations. The system has canceled the command before running it on any instance. This is a terminal state.
cStatusDetails :: Lens' Command (Maybe Text)
cStatusDetails = lens _cStatusDetails (\s a -> s {_cStatusDetails = a})

-- | The number of targets for which the command invocation reached a terminal state. Terminal states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out, Canceled, Terminated, or Undeliverable.
cCompletedCount :: Lens' Command (Maybe Int)
cCompletedCount = lens _cCompletedCount (\s a -> s {_cCompletedCount = a})

-- | The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command.
cOutputS3BucketName :: Lens' Command (Maybe Text)
cOutputS3BucketName = lens _cOutputS3BucketName (\s a -> s {_cOutputS3BucketName = a})

-- | User-specified information about the command, such as a brief description of what the command should do.
cComment :: Lens' Command (Maybe Text)
cComment = lens _cComment (\s a -> s {_cComment = a})

-- | The number of targets for which the status is Failed or Execution Timed Out.
cErrorCount :: Lens' Command (Maybe Int)
cErrorCount = lens _cErrorCount (\s a -> s {_cErrorCount = a})

-- | The name of the document requested for execution.
cDocumentName :: Lens' Command (Maybe Text)
cDocumentName = lens _cDocumentName (\s a -> s {_cDocumentName = a})

-- | A unique identifier for this command.
cCommandId :: Lens' Command (Maybe Text)
cCommandId = lens _cCommandId (\s a -> s {_cCommandId = a})

-- | An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call.
cTargets :: Lens' Command [Target]
cTargets = lens _cTargets (\s a -> s {_cTargets = a}) . _Default . _Coerce

-- | (Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.
cOutputS3Region :: Lens' Command (Maybe Text)
cOutputS3Region = lens _cOutputS3Region (\s a -> s {_cOutputS3Region = a})

-- | The maximum number of instances that are allowed to run the command at the same time. You can specify a number of instances, such as 10, or a percentage of instances, such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html Running commands using Systems Manager Run Command> in the /AWS Systems Manager User Guide/ .
cMaxConcurrency :: Lens' Command (Maybe Text)
cMaxConcurrency = lens _cMaxConcurrency (\s a -> s {_cMaxConcurrency = a})

-- | The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command.
cOutputS3KeyPrefix :: Lens' Command (Maybe Text)
cOutputS3KeyPrefix = lens _cOutputS3KeyPrefix (\s a -> s {_cOutputS3KeyPrefix = a})

-- | The @TimeoutSeconds@ value specified for a command.
cTimeoutSeconds :: Lens' Command (Maybe Natural)
cTimeoutSeconds = lens _cTimeoutSeconds (\s a -> s {_cTimeoutSeconds = a}) . mapping _Nat

-- | The number of targets for which the status is Delivery Timed Out.
cDeliveryTimedOutCount :: Lens' Command (Maybe Int)
cDeliveryTimedOutCount = lens _cDeliveryTimedOutCount (\s a -> s {_cDeliveryTimedOutCount = a})

-- | CloudWatch Logs information where you want Systems Manager to send the command output.
cCloudWatchOutputConfig :: Lens' Command (Maybe CloudWatchOutputConfig)
cCloudWatchOutputConfig = lens _cCloudWatchOutputConfig (\s a -> s {_cCloudWatchOutputConfig = a})

-- | The SSM document version.
cDocumentVersion :: Lens' Command (Maybe Text)
cDocumentVersion = lens _cDocumentVersion (\s a -> s {_cDocumentVersion = a})

-- | The parameter values to be inserted in the document when running the command.
cParameters :: Lens' Command (HashMap Text [Text])
cParameters = lens _cParameters (\s a -> s {_cParameters = a}) . _Default . _Map

-- | The number of targets for the command.
cTargetCount :: Lens' Command (Maybe Int)
cTargetCount = lens _cTargetCount (\s a -> s {_cTargetCount = a})

instance FromJSON Command where
  parseJSON =
    withObject
      "Command"
      ( \x ->
          Command'
            <$> (x .:? "NotificationConfig")
            <*> (x .:? "InstanceIds" .!= mempty)
            <*> (x .:? "MaxErrors")
            <*> (x .:? "ExpiresAfter")
            <*> (x .:? "Status")
            <*> (x .:? "ServiceRole")
            <*> (x .:? "RequestedDateTime")
            <*> (x .:? "StatusDetails")
            <*> (x .:? "CompletedCount")
            <*> (x .:? "OutputS3BucketName")
            <*> (x .:? "Comment")
            <*> (x .:? "ErrorCount")
            <*> (x .:? "DocumentName")
            <*> (x .:? "CommandId")
            <*> (x .:? "Targets" .!= mempty)
            <*> (x .:? "OutputS3Region")
            <*> (x .:? "MaxConcurrency")
            <*> (x .:? "OutputS3KeyPrefix")
            <*> (x .:? "TimeoutSeconds")
            <*> (x .:? "DeliveryTimedOutCount")
            <*> (x .:? "CloudWatchOutputConfig")
            <*> (x .:? "DocumentVersion")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "TargetCount")
      )

instance Hashable Command

instance NFData Command

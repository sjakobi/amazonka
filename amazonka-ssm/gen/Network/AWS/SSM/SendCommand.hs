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
-- Module      : Network.AWS.SSM.SendCommand
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs commands on one or more managed instances.
module Network.AWS.SSM.SendCommand
  ( -- * Creating a Request
    sendCommand,
    SendCommand,

    -- * Request Lenses
    scNotificationConfig,
    scInstanceIds,
    scMaxErrors,
    scServiceRoleARN,
    scOutputS3BucketName,
    scComment,
    scDocumentHash,
    scTargets,
    scOutputS3Region,
    scMaxConcurrency,
    scOutputS3KeyPrefix,
    scTimeoutSeconds,
    scCloudWatchOutputConfig,
    scDocumentHashType,
    scDocumentVersion,
    scParameters,
    scDocumentName,

    -- * Destructuring the Response
    sendCommandResponse,
    SendCommandResponse,

    -- * Response Lenses
    scrrsCommand,
    scrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'sendCommand' smart constructor.
data SendCommand = SendCommand'
  { _scNotificationConfig ::
      !(Maybe NotificationConfig),
    _scInstanceIds :: !(Maybe [Text]),
    _scMaxErrors :: !(Maybe Text),
    _scServiceRoleARN :: !(Maybe Text),
    _scOutputS3BucketName :: !(Maybe Text),
    _scComment :: !(Maybe Text),
    _scDocumentHash :: !(Maybe Text),
    _scTargets :: !(Maybe [Target]),
    _scOutputS3Region :: !(Maybe Text),
    _scMaxConcurrency :: !(Maybe Text),
    _scOutputS3KeyPrefix :: !(Maybe Text),
    _scTimeoutSeconds :: !(Maybe Nat),
    _scCloudWatchOutputConfig ::
      !(Maybe CloudWatchOutputConfig),
    _scDocumentHashType ::
      !(Maybe DocumentHashType),
    _scDocumentVersion :: !(Maybe Text),
    _scParameters :: !(Maybe (Map Text [Text])),
    _scDocumentName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scNotificationConfig' - Configurations for sending notifications.
--
-- * 'scInstanceIds' - The IDs of the instances where the command should run. Specifying instance IDs is most useful when you are targeting a limited number of instances, though you can specify up to 50 IDs. To target a larger number of instances, or if you prefer not to list individual instance IDs, we recommend using the @Targets@ option instead. Using @Targets@ , which accepts tag key-value pairs to identify the instances to send commands to, you can a send command to tens, hundreds, or thousands of instances at once. For more information about how to use targets, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html Using targets and rate controls to send commands to a fleet> in the /AWS Systems Manager User Guide/ .
--
-- * 'scMaxErrors' - The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 0. For more information about how to use MaxErrors, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors Using error controls> in the /AWS Systems Manager User Guide/ .
--
-- * 'scServiceRoleARN' - The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.
--
-- * 'scOutputS3BucketName' - The name of the S3 bucket where command execution responses should be stored.
--
-- * 'scComment' - User-specified information about the command, such as a brief description of what the command should do.
--
-- * 'scDocumentHash' - The Sha256 or Sha1 hash created by the system when the document was created.
--
-- * 'scTargets' - An array of search criteria that targets instances using a @Key,Value@ combination that you specify. Specifying targets is most useful when you want to send a command to a large number of instances at once. Using @Targets@ , which accepts tag key-value pairs to identify instances, you can send a command to tens, hundreds, or thousands of instances at once. To send a command to a smaller number of instances, you can use the @InstanceIds@ option instead. For more information about how to use targets, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html Sending commands to a fleet> in the /AWS Systems Manager User Guide/ .
--
-- * 'scOutputS3Region' - (Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.
--
-- * 'scMaxConcurrency' - (Optional) The maximum number of instances that are allowed to run the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity Using concurrency controls> in the /AWS Systems Manager User Guide/ .
--
-- * 'scOutputS3KeyPrefix' - The directory structure within the S3 bucket where the responses should be stored.
--
-- * 'scTimeoutSeconds' - If this time is reached and the command has not already started running, it will not run.
--
-- * 'scCloudWatchOutputConfig' - Enables Systems Manager to send Run Command output to Amazon CloudWatch Logs.
--
-- * 'scDocumentHashType' - Sha256 or Sha1.
--
-- * 'scDocumentVersion' - The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a specific version number. If you run commands by using the AWS CLI, then you must escape the first two options by using a backslash. If you specify a version number, then you don't need to use the backslash. For example: --document-version "\$DEFAULT" --document-version "\$LATEST" --document-version "3"
--
-- * 'scParameters' - The required and optional parameters specified in the document being run.
--
-- * 'scDocumentName' - The name of the Systems Manager document to run. This can be a public document or a custom document. To run a shared document belonging to another account, specify the document ARN. For more information about how to use shared documents, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html Using shared SSM documents> in the /AWS Systems Manager User Guide/ .
sendCommand ::
  -- | 'scDocumentName'
  Text ->
  SendCommand
sendCommand pDocumentName_ =
  SendCommand'
    { _scNotificationConfig = Nothing,
      _scInstanceIds = Nothing,
      _scMaxErrors = Nothing,
      _scServiceRoleARN = Nothing,
      _scOutputS3BucketName = Nothing,
      _scComment = Nothing,
      _scDocumentHash = Nothing,
      _scTargets = Nothing,
      _scOutputS3Region = Nothing,
      _scMaxConcurrency = Nothing,
      _scOutputS3KeyPrefix = Nothing,
      _scTimeoutSeconds = Nothing,
      _scCloudWatchOutputConfig = Nothing,
      _scDocumentHashType = Nothing,
      _scDocumentVersion = Nothing,
      _scParameters = Nothing,
      _scDocumentName = pDocumentName_
    }

-- | Configurations for sending notifications.
scNotificationConfig :: Lens' SendCommand (Maybe NotificationConfig)
scNotificationConfig = lens _scNotificationConfig (\s a -> s {_scNotificationConfig = a})

-- | The IDs of the instances where the command should run. Specifying instance IDs is most useful when you are targeting a limited number of instances, though you can specify up to 50 IDs. To target a larger number of instances, or if you prefer not to list individual instance IDs, we recommend using the @Targets@ option instead. Using @Targets@ , which accepts tag key-value pairs to identify the instances to send commands to, you can a send command to tens, hundreds, or thousands of instances at once. For more information about how to use targets, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html Using targets and rate controls to send commands to a fleet> in the /AWS Systems Manager User Guide/ .
scInstanceIds :: Lens' SendCommand [Text]
scInstanceIds = lens _scInstanceIds (\s a -> s {_scInstanceIds = a}) . _Default . _Coerce

-- | The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 0. For more information about how to use MaxErrors, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors Using error controls> in the /AWS Systems Manager User Guide/ .
scMaxErrors :: Lens' SendCommand (Maybe Text)
scMaxErrors = lens _scMaxErrors (\s a -> s {_scMaxErrors = a})

-- | The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.
scServiceRoleARN :: Lens' SendCommand (Maybe Text)
scServiceRoleARN = lens _scServiceRoleARN (\s a -> s {_scServiceRoleARN = a})

-- | The name of the S3 bucket where command execution responses should be stored.
scOutputS3BucketName :: Lens' SendCommand (Maybe Text)
scOutputS3BucketName = lens _scOutputS3BucketName (\s a -> s {_scOutputS3BucketName = a})

-- | User-specified information about the command, such as a brief description of what the command should do.
scComment :: Lens' SendCommand (Maybe Text)
scComment = lens _scComment (\s a -> s {_scComment = a})

-- | The Sha256 or Sha1 hash created by the system when the document was created.
scDocumentHash :: Lens' SendCommand (Maybe Text)
scDocumentHash = lens _scDocumentHash (\s a -> s {_scDocumentHash = a})

-- | An array of search criteria that targets instances using a @Key,Value@ combination that you specify. Specifying targets is most useful when you want to send a command to a large number of instances at once. Using @Targets@ , which accepts tag key-value pairs to identify instances, you can send a command to tens, hundreds, or thousands of instances at once. To send a command to a smaller number of instances, you can use the @InstanceIds@ option instead. For more information about how to use targets, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html Sending commands to a fleet> in the /AWS Systems Manager User Guide/ .
scTargets :: Lens' SendCommand [Target]
scTargets = lens _scTargets (\s a -> s {_scTargets = a}) . _Default . _Coerce

-- | (Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.
scOutputS3Region :: Lens' SendCommand (Maybe Text)
scOutputS3Region = lens _scOutputS3Region (\s a -> s {_scOutputS3Region = a})

-- | (Optional) The maximum number of instances that are allowed to run the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity Using concurrency controls> in the /AWS Systems Manager User Guide/ .
scMaxConcurrency :: Lens' SendCommand (Maybe Text)
scMaxConcurrency = lens _scMaxConcurrency (\s a -> s {_scMaxConcurrency = a})

-- | The directory structure within the S3 bucket where the responses should be stored.
scOutputS3KeyPrefix :: Lens' SendCommand (Maybe Text)
scOutputS3KeyPrefix = lens _scOutputS3KeyPrefix (\s a -> s {_scOutputS3KeyPrefix = a})

-- | If this time is reached and the command has not already started running, it will not run.
scTimeoutSeconds :: Lens' SendCommand (Maybe Natural)
scTimeoutSeconds = lens _scTimeoutSeconds (\s a -> s {_scTimeoutSeconds = a}) . mapping _Nat

-- | Enables Systems Manager to send Run Command output to Amazon CloudWatch Logs.
scCloudWatchOutputConfig :: Lens' SendCommand (Maybe CloudWatchOutputConfig)
scCloudWatchOutputConfig = lens _scCloudWatchOutputConfig (\s a -> s {_scCloudWatchOutputConfig = a})

-- | Sha256 or Sha1.
scDocumentHashType :: Lens' SendCommand (Maybe DocumentHashType)
scDocumentHashType = lens _scDocumentHashType (\s a -> s {_scDocumentHashType = a})

-- | The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a specific version number. If you run commands by using the AWS CLI, then you must escape the first two options by using a backslash. If you specify a version number, then you don't need to use the backslash. For example: --document-version "\$DEFAULT" --document-version "\$LATEST" --document-version "3"
scDocumentVersion :: Lens' SendCommand (Maybe Text)
scDocumentVersion = lens _scDocumentVersion (\s a -> s {_scDocumentVersion = a})

-- | The required and optional parameters specified in the document being run.
scParameters :: Lens' SendCommand (HashMap Text [Text])
scParameters = lens _scParameters (\s a -> s {_scParameters = a}) . _Default . _Map

-- | The name of the Systems Manager document to run. This can be a public document or a custom document. To run a shared document belonging to another account, specify the document ARN. For more information about how to use shared documents, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html Using shared SSM documents> in the /AWS Systems Manager User Guide/ .
scDocumentName :: Lens' SendCommand Text
scDocumentName = lens _scDocumentName (\s a -> s {_scDocumentName = a})

instance AWSRequest SendCommand where
  type Rs SendCommand = SendCommandResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          SendCommandResponse'
            <$> (x .?> "Command") <*> (pure (fromEnum s))
      )

instance Hashable SendCommand

instance NFData SendCommand

instance ToHeaders SendCommand where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.SendCommand" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SendCommand where
  toJSON SendCommand' {..} =
    object
      ( catMaybes
          [ ("NotificationConfig" .=) <$> _scNotificationConfig,
            ("InstanceIds" .=) <$> _scInstanceIds,
            ("MaxErrors" .=) <$> _scMaxErrors,
            ("ServiceRoleArn" .=) <$> _scServiceRoleARN,
            ("OutputS3BucketName" .=) <$> _scOutputS3BucketName,
            ("Comment" .=) <$> _scComment,
            ("DocumentHash" .=) <$> _scDocumentHash,
            ("Targets" .=) <$> _scTargets,
            ("OutputS3Region" .=) <$> _scOutputS3Region,
            ("MaxConcurrency" .=) <$> _scMaxConcurrency,
            ("OutputS3KeyPrefix" .=) <$> _scOutputS3KeyPrefix,
            ("TimeoutSeconds" .=) <$> _scTimeoutSeconds,
            ("CloudWatchOutputConfig" .=)
              <$> _scCloudWatchOutputConfig,
            ("DocumentHashType" .=) <$> _scDocumentHashType,
            ("DocumentVersion" .=) <$> _scDocumentVersion,
            ("Parameters" .=) <$> _scParameters,
            Just ("DocumentName" .= _scDocumentName)
          ]
      )

instance ToPath SendCommand where
  toPath = const "/"

instance ToQuery SendCommand where
  toQuery = const mempty

-- | /See:/ 'sendCommandResponse' smart constructor.
data SendCommandResponse = SendCommandResponse'
  { _scrrsCommand ::
      !(Maybe Command),
    _scrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendCommandResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrrsCommand' - The request as it was received by Systems Manager. Also provides the command ID which can be used future references to this request.
--
-- * 'scrrsResponseStatus' - -- | The response status code.
sendCommandResponse ::
  -- | 'scrrsResponseStatus'
  Int ->
  SendCommandResponse
sendCommandResponse pResponseStatus_ =
  SendCommandResponse'
    { _scrrsCommand = Nothing,
      _scrrsResponseStatus = pResponseStatus_
    }

-- | The request as it was received by Systems Manager. Also provides the command ID which can be used future references to this request.
scrrsCommand :: Lens' SendCommandResponse (Maybe Command)
scrrsCommand = lens _scrrsCommand (\s a -> s {_scrrsCommand = a})

-- | -- | The response status code.
scrrsResponseStatus :: Lens' SendCommandResponse Int
scrrsResponseStatus = lens _scrrsResponseStatus (\s a -> s {_scrrsResponseStatus = a})

instance NFData SendCommandResponse

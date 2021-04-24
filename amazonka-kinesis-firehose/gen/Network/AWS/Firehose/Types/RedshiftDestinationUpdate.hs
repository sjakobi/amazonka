{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.RedshiftDestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.RedshiftDestinationUpdate where

import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.CopyCommand
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.RedshiftRetryOptions
import Network.AWS.Firehose.Types.RedshiftS3BackupMode
import Network.AWS.Firehose.Types.S3DestinationUpdate
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an update for a destination in Amazon Redshift.
--
--
--
-- /See:/ 'redshiftDestinationUpdate' smart constructor.
data RedshiftDestinationUpdate = RedshiftDestinationUpdate'
  { _rduRoleARN ::
      !(Maybe Text),
    _rduS3Update ::
      !( Maybe
           S3DestinationUpdate
       ),
    _rduClusterJDBCURL ::
      !(Maybe Text),
    _rduProcessingConfiguration ::
      !( Maybe
           ProcessingConfiguration
       ),
    _rduCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _rduCopyCommand ::
      !( Maybe
           CopyCommand
       ),
    _rduS3BackupUpdate ::
      !( Maybe
           S3DestinationUpdate
       ),
    _rduPassword ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _rduUsername ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _rduRetryOptions ::
      !( Maybe
           RedshiftRetryOptions
       ),
    _rduS3BackupMode ::
      !( Maybe
           RedshiftS3BackupMode
       )
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RedshiftDestinationUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rduRoleARN' - The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'rduS3Update' - The Amazon S3 destination. The compression formats @SNAPPY@ or @ZIP@ cannot be specified in @RedshiftDestinationUpdate.S3Update@ because the Amazon Redshift @COPY@ operation that reads from the S3 bucket doesn't support these compression formats.
--
-- * 'rduClusterJDBCURL' - The database connection string.
--
-- * 'rduProcessingConfiguration' - The data processing configuration.
--
-- * 'rduCloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 'rduCopyCommand' - The @COPY@ command.
--
-- * 'rduS3BackupUpdate' - The Amazon S3 destination for backup.
--
-- * 'rduPassword' - The user password.
--
-- * 'rduUsername' - The name of the user.
--
-- * 'rduRetryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).
--
-- * 'rduS3BackupMode' - You can update a delivery stream to enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the delivery stream to disable it.
redshiftDestinationUpdate ::
  RedshiftDestinationUpdate
redshiftDestinationUpdate =
  RedshiftDestinationUpdate'
    { _rduRoleARN = Nothing,
      _rduS3Update = Nothing,
      _rduClusterJDBCURL = Nothing,
      _rduProcessingConfiguration = Nothing,
      _rduCloudWatchLoggingOptions = Nothing,
      _rduCopyCommand = Nothing,
      _rduS3BackupUpdate = Nothing,
      _rduPassword = Nothing,
      _rduUsername = Nothing,
      _rduRetryOptions = Nothing,
      _rduS3BackupMode = Nothing
    }

-- | The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
rduRoleARN :: Lens' RedshiftDestinationUpdate (Maybe Text)
rduRoleARN = lens _rduRoleARN (\s a -> s {_rduRoleARN = a})

-- | The Amazon S3 destination. The compression formats @SNAPPY@ or @ZIP@ cannot be specified in @RedshiftDestinationUpdate.S3Update@ because the Amazon Redshift @COPY@ operation that reads from the S3 bucket doesn't support these compression formats.
rduS3Update :: Lens' RedshiftDestinationUpdate (Maybe S3DestinationUpdate)
rduS3Update = lens _rduS3Update (\s a -> s {_rduS3Update = a})

-- | The database connection string.
rduClusterJDBCURL :: Lens' RedshiftDestinationUpdate (Maybe Text)
rduClusterJDBCURL = lens _rduClusterJDBCURL (\s a -> s {_rduClusterJDBCURL = a})

-- | The data processing configuration.
rduProcessingConfiguration :: Lens' RedshiftDestinationUpdate (Maybe ProcessingConfiguration)
rduProcessingConfiguration = lens _rduProcessingConfiguration (\s a -> s {_rduProcessingConfiguration = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
rduCloudWatchLoggingOptions :: Lens' RedshiftDestinationUpdate (Maybe CloudWatchLoggingOptions)
rduCloudWatchLoggingOptions = lens _rduCloudWatchLoggingOptions (\s a -> s {_rduCloudWatchLoggingOptions = a})

-- | The @COPY@ command.
rduCopyCommand :: Lens' RedshiftDestinationUpdate (Maybe CopyCommand)
rduCopyCommand = lens _rduCopyCommand (\s a -> s {_rduCopyCommand = a})

-- | The Amazon S3 destination for backup.
rduS3BackupUpdate :: Lens' RedshiftDestinationUpdate (Maybe S3DestinationUpdate)
rduS3BackupUpdate = lens _rduS3BackupUpdate (\s a -> s {_rduS3BackupUpdate = a})

-- | The user password.
rduPassword :: Lens' RedshiftDestinationUpdate (Maybe Text)
rduPassword = lens _rduPassword (\s a -> s {_rduPassword = a}) . mapping _Sensitive

-- | The name of the user.
rduUsername :: Lens' RedshiftDestinationUpdate (Maybe Text)
rduUsername = lens _rduUsername (\s a -> s {_rduUsername = a}) . mapping _Sensitive

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver documents to Amazon Redshift. Default value is 3600 (60 minutes).
rduRetryOptions :: Lens' RedshiftDestinationUpdate (Maybe RedshiftRetryOptions)
rduRetryOptions = lens _rduRetryOptions (\s a -> s {_rduRetryOptions = a})

-- | You can update a delivery stream to enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the delivery stream to disable it.
rduS3BackupMode :: Lens' RedshiftDestinationUpdate (Maybe RedshiftS3BackupMode)
rduS3BackupMode = lens _rduS3BackupMode (\s a -> s {_rduS3BackupMode = a})

instance Hashable RedshiftDestinationUpdate

instance NFData RedshiftDestinationUpdate

instance ToJSON RedshiftDestinationUpdate where
  toJSON RedshiftDestinationUpdate' {..} =
    object
      ( catMaybes
          [ ("RoleARN" .=) <$> _rduRoleARN,
            ("S3Update" .=) <$> _rduS3Update,
            ("ClusterJDBCURL" .=) <$> _rduClusterJDBCURL,
            ("ProcessingConfiguration" .=)
              <$> _rduProcessingConfiguration,
            ("CloudWatchLoggingOptions" .=)
              <$> _rduCloudWatchLoggingOptions,
            ("CopyCommand" .=) <$> _rduCopyCommand,
            ("S3BackupUpdate" .=) <$> _rduS3BackupUpdate,
            ("Password" .=) <$> _rduPassword,
            ("Username" .=) <$> _rduUsername,
            ("RetryOptions" .=) <$> _rduRetryOptions,
            ("S3BackupMode" .=) <$> _rduS3BackupMode
          ]
      )

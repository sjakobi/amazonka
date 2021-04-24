{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ExtendedS3DestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ExtendedS3DestinationUpdate where

import Network.AWS.Firehose.Types.BufferingHints
import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.CompressionFormat
import Network.AWS.Firehose.Types.DataFormatConversionConfiguration
import Network.AWS.Firehose.Types.EncryptionConfiguration
import Network.AWS.Firehose.Types.ProcessingConfiguration
import Network.AWS.Firehose.Types.S3BackupMode
import Network.AWS.Firehose.Types.S3DestinationUpdate
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an update for a destination in Amazon S3.
--
--
--
-- /See:/ 'extendedS3DestinationUpdate' smart constructor.
data ExtendedS3DestinationUpdate = ExtendedS3DestinationUpdate'
  { _esduErrorOutputPrefix ::
      !(Maybe Text),
    _esduEncryptionConfiguration ::
      !( Maybe
           EncryptionConfiguration
       ),
    _esduRoleARN ::
      !(Maybe Text),
    _esduBucketARN ::
      !(Maybe Text),
    _esduProcessingConfiguration ::
      !( Maybe
           ProcessingConfiguration
       ),
    _esduDataFormatConversionConfiguration ::
      !( Maybe
           DataFormatConversionConfiguration
       ),
    _esduCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _esduPrefix ::
      !(Maybe Text),
    _esduS3BackupUpdate ::
      !( Maybe
           S3DestinationUpdate
       ),
    _esduBufferingHints ::
      !( Maybe
           BufferingHints
       ),
    _esduS3BackupMode ::
      !( Maybe
           S3BackupMode
       ),
    _esduCompressionFormat ::
      !( Maybe
           CompressionFormat
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExtendedS3DestinationUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esduErrorOutputPrefix' - A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
--
-- * 'esduEncryptionConfiguration' - The encryption configuration. If no value is specified, the default is no encryption.
--
-- * 'esduRoleARN' - The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'esduBucketARN' - The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'esduProcessingConfiguration' - The data processing configuration.
--
-- * 'esduDataFormatConversionConfiguration' - The serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3.
--
-- * 'esduCloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 'esduPrefix' - The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can also specify a custom prefix, as described in <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
--
-- * 'esduS3BackupUpdate' - The Amazon S3 destination for backup.
--
-- * 'esduBufferingHints' - The buffering option.
--
-- * 'esduS3BackupMode' - You can update a delivery stream to enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the delivery stream to disable it.
--
-- * 'esduCompressionFormat' - The compression format. If no value is specified, the default is @UNCOMPRESSED@ .
extendedS3DestinationUpdate ::
  ExtendedS3DestinationUpdate
extendedS3DestinationUpdate =
  ExtendedS3DestinationUpdate'
    { _esduErrorOutputPrefix =
        Nothing,
      _esduEncryptionConfiguration = Nothing,
      _esduRoleARN = Nothing,
      _esduBucketARN = Nothing,
      _esduProcessingConfiguration = Nothing,
      _esduDataFormatConversionConfiguration =
        Nothing,
      _esduCloudWatchLoggingOptions = Nothing,
      _esduPrefix = Nothing,
      _esduS3BackupUpdate = Nothing,
      _esduBufferingHints = Nothing,
      _esduS3BackupMode = Nothing,
      _esduCompressionFormat = Nothing
    }

-- | A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
esduErrorOutputPrefix :: Lens' ExtendedS3DestinationUpdate (Maybe Text)
esduErrorOutputPrefix = lens _esduErrorOutputPrefix (\s a -> s {_esduErrorOutputPrefix = a})

-- | The encryption configuration. If no value is specified, the default is no encryption.
esduEncryptionConfiguration :: Lens' ExtendedS3DestinationUpdate (Maybe EncryptionConfiguration)
esduEncryptionConfiguration = lens _esduEncryptionConfiguration (\s a -> s {_esduEncryptionConfiguration = a})

-- | The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
esduRoleARN :: Lens' ExtendedS3DestinationUpdate (Maybe Text)
esduRoleARN = lens _esduRoleARN (\s a -> s {_esduRoleARN = a})

-- | The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
esduBucketARN :: Lens' ExtendedS3DestinationUpdate (Maybe Text)
esduBucketARN = lens _esduBucketARN (\s a -> s {_esduBucketARN = a})

-- | The data processing configuration.
esduProcessingConfiguration :: Lens' ExtendedS3DestinationUpdate (Maybe ProcessingConfiguration)
esduProcessingConfiguration = lens _esduProcessingConfiguration (\s a -> s {_esduProcessingConfiguration = a})

-- | The serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3.
esduDataFormatConversionConfiguration :: Lens' ExtendedS3DestinationUpdate (Maybe DataFormatConversionConfiguration)
esduDataFormatConversionConfiguration = lens _esduDataFormatConversionConfiguration (\s a -> s {_esduDataFormatConversionConfiguration = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
esduCloudWatchLoggingOptions :: Lens' ExtendedS3DestinationUpdate (Maybe CloudWatchLoggingOptions)
esduCloudWatchLoggingOptions = lens _esduCloudWatchLoggingOptions (\s a -> s {_esduCloudWatchLoggingOptions = a})

-- | The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can also specify a custom prefix, as described in <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
esduPrefix :: Lens' ExtendedS3DestinationUpdate (Maybe Text)
esduPrefix = lens _esduPrefix (\s a -> s {_esduPrefix = a})

-- | The Amazon S3 destination for backup.
esduS3BackupUpdate :: Lens' ExtendedS3DestinationUpdate (Maybe S3DestinationUpdate)
esduS3BackupUpdate = lens _esduS3BackupUpdate (\s a -> s {_esduS3BackupUpdate = a})

-- | The buffering option.
esduBufferingHints :: Lens' ExtendedS3DestinationUpdate (Maybe BufferingHints)
esduBufferingHints = lens _esduBufferingHints (\s a -> s {_esduBufferingHints = a})

-- | You can update a delivery stream to enable Amazon S3 backup if it is disabled. If backup is enabled, you can't update the delivery stream to disable it.
esduS3BackupMode :: Lens' ExtendedS3DestinationUpdate (Maybe S3BackupMode)
esduS3BackupMode = lens _esduS3BackupMode (\s a -> s {_esduS3BackupMode = a})

-- | The compression format. If no value is specified, the default is @UNCOMPRESSED@ .
esduCompressionFormat :: Lens' ExtendedS3DestinationUpdate (Maybe CompressionFormat)
esduCompressionFormat = lens _esduCompressionFormat (\s a -> s {_esduCompressionFormat = a})

instance Hashable ExtendedS3DestinationUpdate

instance NFData ExtendedS3DestinationUpdate

instance ToJSON ExtendedS3DestinationUpdate where
  toJSON ExtendedS3DestinationUpdate' {..} =
    object
      ( catMaybes
          [ ("ErrorOutputPrefix" .=) <$> _esduErrorOutputPrefix,
            ("EncryptionConfiguration" .=)
              <$> _esduEncryptionConfiguration,
            ("RoleARN" .=) <$> _esduRoleARN,
            ("BucketARN" .=) <$> _esduBucketARN,
            ("ProcessingConfiguration" .=)
              <$> _esduProcessingConfiguration,
            ("DataFormatConversionConfiguration" .=)
              <$> _esduDataFormatConversionConfiguration,
            ("CloudWatchLoggingOptions" .=)
              <$> _esduCloudWatchLoggingOptions,
            ("Prefix" .=) <$> _esduPrefix,
            ("S3BackupUpdate" .=) <$> _esduS3BackupUpdate,
            ("BufferingHints" .=) <$> _esduBufferingHints,
            ("S3BackupMode" .=) <$> _esduS3BackupMode,
            ("CompressionFormat" .=) <$> _esduCompressionFormat
          ]
      )

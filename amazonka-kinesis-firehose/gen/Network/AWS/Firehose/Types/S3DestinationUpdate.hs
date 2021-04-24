{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.S3DestinationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.S3DestinationUpdate where

import Network.AWS.Firehose.Types.BufferingHints
import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.CompressionFormat
import Network.AWS.Firehose.Types.EncryptionConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an update for a destination in Amazon S3.
--
--
--
-- /See:/ 's3DestinationUpdate' smart constructor.
data S3DestinationUpdate = S3DestinationUpdate'
  { _sduErrorOutputPrefix ::
      !(Maybe Text),
    _sduEncryptionConfiguration ::
      !( Maybe
           EncryptionConfiguration
       ),
    _sduRoleARN :: !(Maybe Text),
    _sduBucketARN :: !(Maybe Text),
    _sduCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _sduPrefix :: !(Maybe Text),
    _sduBufferingHints ::
      !(Maybe BufferingHints),
    _sduCompressionFormat ::
      !(Maybe CompressionFormat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3DestinationUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sduErrorOutputPrefix' - A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
--
-- * 'sduEncryptionConfiguration' - The encryption configuration. If no value is specified, the default is no encryption.
--
-- * 'sduRoleARN' - The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'sduBucketARN' - The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'sduCloudWatchLoggingOptions' - The CloudWatch logging options for your delivery stream.
--
-- * 'sduPrefix' - The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can also specify a custom prefix, as described in <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
--
-- * 'sduBufferingHints' - The buffering option. If no value is specified, @BufferingHints@ object default values are used.
--
-- * 'sduCompressionFormat' - The compression format. If no value is specified, the default is @UNCOMPRESSED@ . The compression formats @SNAPPY@ or @ZIP@ cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift @COPY@ operation that reads from the S3 bucket.
s3DestinationUpdate ::
  S3DestinationUpdate
s3DestinationUpdate =
  S3DestinationUpdate'
    { _sduErrorOutputPrefix =
        Nothing,
      _sduEncryptionConfiguration = Nothing,
      _sduRoleARN = Nothing,
      _sduBucketARN = Nothing,
      _sduCloudWatchLoggingOptions = Nothing,
      _sduPrefix = Nothing,
      _sduBufferingHints = Nothing,
      _sduCompressionFormat = Nothing
    }

-- | A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
sduErrorOutputPrefix :: Lens' S3DestinationUpdate (Maybe Text)
sduErrorOutputPrefix = lens _sduErrorOutputPrefix (\s a -> s {_sduErrorOutputPrefix = a})

-- | The encryption configuration. If no value is specified, the default is no encryption.
sduEncryptionConfiguration :: Lens' S3DestinationUpdate (Maybe EncryptionConfiguration)
sduEncryptionConfiguration = lens _sduEncryptionConfiguration (\s a -> s {_sduEncryptionConfiguration = a})

-- | The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
sduRoleARN :: Lens' S3DestinationUpdate (Maybe Text)
sduRoleARN = lens _sduRoleARN (\s a -> s {_sduRoleARN = a})

-- | The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
sduBucketARN :: Lens' S3DestinationUpdate (Maybe Text)
sduBucketARN = lens _sduBucketARN (\s a -> s {_sduBucketARN = a})

-- | The CloudWatch logging options for your delivery stream.
sduCloudWatchLoggingOptions :: Lens' S3DestinationUpdate (Maybe CloudWatchLoggingOptions)
sduCloudWatchLoggingOptions = lens _sduCloudWatchLoggingOptions (\s a -> s {_sduCloudWatchLoggingOptions = a})

-- | The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can also specify a custom prefix, as described in <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
sduPrefix :: Lens' S3DestinationUpdate (Maybe Text)
sduPrefix = lens _sduPrefix (\s a -> s {_sduPrefix = a})

-- | The buffering option. If no value is specified, @BufferingHints@ object default values are used.
sduBufferingHints :: Lens' S3DestinationUpdate (Maybe BufferingHints)
sduBufferingHints = lens _sduBufferingHints (\s a -> s {_sduBufferingHints = a})

-- | The compression format. If no value is specified, the default is @UNCOMPRESSED@ . The compression formats @SNAPPY@ or @ZIP@ cannot be specified for Amazon Redshift destinations because they are not supported by the Amazon Redshift @COPY@ operation that reads from the S3 bucket.
sduCompressionFormat :: Lens' S3DestinationUpdate (Maybe CompressionFormat)
sduCompressionFormat = lens _sduCompressionFormat (\s a -> s {_sduCompressionFormat = a})

instance Hashable S3DestinationUpdate

instance NFData S3DestinationUpdate

instance ToJSON S3DestinationUpdate where
  toJSON S3DestinationUpdate' {..} =
    object
      ( catMaybes
          [ ("ErrorOutputPrefix" .=) <$> _sduErrorOutputPrefix,
            ("EncryptionConfiguration" .=)
              <$> _sduEncryptionConfiguration,
            ("RoleARN" .=) <$> _sduRoleARN,
            ("BucketARN" .=) <$> _sduBucketARN,
            ("CloudWatchLoggingOptions" .=)
              <$> _sduCloudWatchLoggingOptions,
            ("Prefix" .=) <$> _sduPrefix,
            ("BufferingHints" .=) <$> _sduBufferingHints,
            ("CompressionFormat" .=) <$> _sduCompressionFormat
          ]
      )

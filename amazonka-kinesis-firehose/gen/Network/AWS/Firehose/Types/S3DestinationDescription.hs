{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.S3DestinationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.S3DestinationDescription where

import Network.AWS.Firehose.Types.BufferingHints
import Network.AWS.Firehose.Types.CloudWatchLoggingOptions
import Network.AWS.Firehose.Types.CompressionFormat
import Network.AWS.Firehose.Types.EncryptionConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a destination in Amazon S3.
--
--
--
-- /See:/ 's3DestinationDescription' smart constructor.
data S3DestinationDescription = S3DestinationDescription'
  { _sddErrorOutputPrefix ::
      !(Maybe Text),
    _sddCloudWatchLoggingOptions ::
      !( Maybe
           CloudWatchLoggingOptions
       ),
    _sddPrefix ::
      !(Maybe Text),
    _sddRoleARN :: !Text,
    _sddBucketARN ::
      !Text,
    _sddBufferingHints ::
      !BufferingHints,
    _sddCompressionFormat ::
      !CompressionFormat,
    _sddEncryptionConfiguration ::
      !EncryptionConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'S3DestinationDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddErrorOutputPrefix' - A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
--
-- * 'sddCloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- * 'sddPrefix' - The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can also specify a custom prefix, as described in <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
--
-- * 'sddRoleARN' - The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'sddBucketARN' - The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
--
-- * 'sddBufferingHints' - The buffering option. If no value is specified, @BufferingHints@ object default values are used.
--
-- * 'sddCompressionFormat' - The compression format. If no value is specified, the default is @UNCOMPRESSED@ .
--
-- * 'sddEncryptionConfiguration' - The encryption configuration. If no value is specified, the default is no encryption.
s3DestinationDescription ::
  -- | 'sddRoleARN'
  Text ->
  -- | 'sddBucketARN'
  Text ->
  -- | 'sddBufferingHints'
  BufferingHints ->
  -- | 'sddCompressionFormat'
  CompressionFormat ->
  -- | 'sddEncryptionConfiguration'
  EncryptionConfiguration ->
  S3DestinationDescription
s3DestinationDescription
  pRoleARN_
  pBucketARN_
  pBufferingHints_
  pCompressionFormat_
  pEncryptionConfiguration_ =
    S3DestinationDescription'
      { _sddErrorOutputPrefix =
          Nothing,
        _sddCloudWatchLoggingOptions = Nothing,
        _sddPrefix = Nothing,
        _sddRoleARN = pRoleARN_,
        _sddBucketARN = pBucketARN_,
        _sddBufferingHints = pBufferingHints_,
        _sddCompressionFormat = pCompressionFormat_,
        _sddEncryptionConfiguration =
          pEncryptionConfiguration_
      }

-- | A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
sddErrorOutputPrefix :: Lens' S3DestinationDescription (Maybe Text)
sddErrorOutputPrefix = lens _sddErrorOutputPrefix (\s a -> s {_sddErrorOutputPrefix = a})

-- | The Amazon CloudWatch logging options for your delivery stream.
sddCloudWatchLoggingOptions :: Lens' S3DestinationDescription (Maybe CloudWatchLoggingOptions)
sddCloudWatchLoggingOptions = lens _sddCloudWatchLoggingOptions (\s a -> s {_sddCloudWatchLoggingOptions = a})

-- | The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered Amazon S3 files. You can also specify a custom prefix, as described in <https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html Custom Prefixes for Amazon S3 Objects> .
sddPrefix :: Lens' S3DestinationDescription (Maybe Text)
sddPrefix = lens _sddPrefix (\s a -> s {_sddPrefix = a})

-- | The Amazon Resource Name (ARN) of the AWS credentials. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
sddRoleARN :: Lens' S3DestinationDescription Text
sddRoleARN = lens _sddRoleARN (\s a -> s {_sddRoleARN = a})

-- | The ARN of the S3 bucket. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> .
sddBucketARN :: Lens' S3DestinationDescription Text
sddBucketARN = lens _sddBucketARN (\s a -> s {_sddBucketARN = a})

-- | The buffering option. If no value is specified, @BufferingHints@ object default values are used.
sddBufferingHints :: Lens' S3DestinationDescription BufferingHints
sddBufferingHints = lens _sddBufferingHints (\s a -> s {_sddBufferingHints = a})

-- | The compression format. If no value is specified, the default is @UNCOMPRESSED@ .
sddCompressionFormat :: Lens' S3DestinationDescription CompressionFormat
sddCompressionFormat = lens _sddCompressionFormat (\s a -> s {_sddCompressionFormat = a})

-- | The encryption configuration. If no value is specified, the default is no encryption.
sddEncryptionConfiguration :: Lens' S3DestinationDescription EncryptionConfiguration
sddEncryptionConfiguration = lens _sddEncryptionConfiguration (\s a -> s {_sddEncryptionConfiguration = a})

instance FromJSON S3DestinationDescription where
  parseJSON =
    withObject
      "S3DestinationDescription"
      ( \x ->
          S3DestinationDescription'
            <$> (x .:? "ErrorOutputPrefix")
            <*> (x .:? "CloudWatchLoggingOptions")
            <*> (x .:? "Prefix")
            <*> (x .: "RoleARN")
            <*> (x .: "BucketARN")
            <*> (x .: "BufferingHints")
            <*> (x .: "CompressionFormat")
            <*> (x .: "EncryptionConfiguration")
      )

instance Hashable S3DestinationDescription

instance NFData S3DestinationDescription

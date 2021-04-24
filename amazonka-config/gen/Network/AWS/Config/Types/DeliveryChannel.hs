{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.DeliveryChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.DeliveryChannel where

import Network.AWS.Config.Types.ConfigSnapshotDeliveryProperties
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The channel through which AWS Config delivers notifications and updated configuration states.
--
--
--
-- /See:/ 'deliveryChannel' smart constructor.
data DeliveryChannel = DeliveryChannel'
  { _dcS3KMSKeyARN ::
      !(Maybe Text),
    _dcName :: !(Maybe Text),
    _dcS3KeyPrefix :: !(Maybe Text),
    _dcS3BucketName :: !(Maybe Text),
    _dcConfigSnapshotDeliveryProperties ::
      !( Maybe
           ConfigSnapshotDeliveryProperties
       ),
    _dcSnsTopicARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeliveryChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcS3KMSKeyARN' - The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) customer managed key (CMK) used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
--
-- * 'dcName' - The name of the delivery channel. By default, AWS Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.
--
-- * 'dcS3KeyPrefix' - The prefix for the specified Amazon S3 bucket.
--
-- * 'dcS3BucketName' - The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files. If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket> in the AWS Config Developer Guide.
--
-- * 'dcConfigSnapshotDeliveryProperties' - The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.
--
-- * 'dcSnsTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes. If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic> in the AWS Config Developer Guide.
deliveryChannel ::
  DeliveryChannel
deliveryChannel =
  DeliveryChannel'
    { _dcS3KMSKeyARN = Nothing,
      _dcName = Nothing,
      _dcS3KeyPrefix = Nothing,
      _dcS3BucketName = Nothing,
      _dcConfigSnapshotDeliveryProperties = Nothing,
      _dcSnsTopicARN = Nothing
    }

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) customer managed key (CMK) used to encrypt objects delivered by AWS Config. Must belong to the same Region as the destination S3 bucket.
dcS3KMSKeyARN :: Lens' DeliveryChannel (Maybe Text)
dcS3KMSKeyARN = lens _dcS3KMSKeyARN (\s a -> s {_dcS3KMSKeyARN = a})

-- | The name of the delivery channel. By default, AWS Config assigns the name "default" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.
dcName :: Lens' DeliveryChannel (Maybe Text)
dcName = lens _dcName (\s a -> s {_dcName = a})

-- | The prefix for the specified Amazon S3 bucket.
dcS3KeyPrefix :: Lens' DeliveryChannel (Maybe Text)
dcS3KeyPrefix = lens _dcS3KeyPrefix (\s a -> s {_dcS3KeyPrefix = a})

-- | The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files. If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html Permissions for the Amazon S3 Bucket> in the AWS Config Developer Guide.
dcS3BucketName :: Lens' DeliveryChannel (Maybe Text)
dcS3BucketName = lens _dcS3BucketName (\s a -> s {_dcS3BucketName = a})

-- | The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.
dcConfigSnapshotDeliveryProperties :: Lens' DeliveryChannel (Maybe ConfigSnapshotDeliveryProperties)
dcConfigSnapshotDeliveryProperties = lens _dcConfigSnapshotDeliveryProperties (\s a -> s {_dcConfigSnapshotDeliveryProperties = a})

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes. If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html Permissions for the Amazon SNS Topic> in the AWS Config Developer Guide.
dcSnsTopicARN :: Lens' DeliveryChannel (Maybe Text)
dcSnsTopicARN = lens _dcSnsTopicARN (\s a -> s {_dcSnsTopicARN = a})

instance FromJSON DeliveryChannel where
  parseJSON =
    withObject
      "DeliveryChannel"
      ( \x ->
          DeliveryChannel'
            <$> (x .:? "s3KmsKeyArn")
            <*> (x .:? "name")
            <*> (x .:? "s3KeyPrefix")
            <*> (x .:? "s3BucketName")
            <*> (x .:? "configSnapshotDeliveryProperties")
            <*> (x .:? "snsTopicARN")
      )

instance Hashable DeliveryChannel

instance NFData DeliveryChannel

instance ToJSON DeliveryChannel where
  toJSON DeliveryChannel' {..} =
    object
      ( catMaybes
          [ ("s3KmsKeyArn" .=) <$> _dcS3KMSKeyARN,
            ("name" .=) <$> _dcName,
            ("s3KeyPrefix" .=) <$> _dcS3KeyPrefix,
            ("s3BucketName" .=) <$> _dcS3BucketName,
            ("configSnapshotDeliveryProperties" .=)
              <$> _dcConfigSnapshotDeliveryProperties,
            ("snsTopicARN" .=) <$> _dcSnsTopicARN
          ]
      )

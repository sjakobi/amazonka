{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProductionVariantCoreDumpConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProductionVariantCoreDumpConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies configuration for a core dump from the model container when the process crashes.
--
--
--
-- /See:/ 'productionVariantCoreDumpConfig' smart constructor.
data ProductionVariantCoreDumpConfig = ProductionVariantCoreDumpConfig'
  { _pvcdcKMSKeyId ::
      !( Maybe
           Text
       ),
    _pvcdcDestinationS3URI ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProductionVariantCoreDumpConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvcdcKMSKeyId' - The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the core dump data at rest using Amazon S3 server-side encryption. The @KmsKeyId@ can be any of the following formats:      * // KMS Key ID @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * // Amazon Resource Name (ARN) of a KMS Key @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@      * // KMS Key Alias @"alias/ExampleAlias"@      * // Amazon Resource Name (ARN) of a KMS Key Alias @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@  If you use a KMS key ID or an alias of your master key, the Amazon SageMaker execution role must include permissions to call @kms:Encrypt@ . If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account. Amazon SageMaker uses server-side encryption with KMS-managed keys for @OutputDataConfig@ . If you use a bucket policy with an @s3:PutObject@ permission that only allows objects with server-side encryption, set the condition key of @s3:x-amz-server-side-encryption@ to @"aws:kms"@ . For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html KMS-Managed Encryption Keys> in the /Amazon Simple Storage Service Developer Guide./  The KMS key policy must grant permission to the IAM role that you specify in your @CreateEndpoint@ and @UpdateEndpoint@ requests. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html Using Key Policies in AWS KMS> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'pvcdcDestinationS3URI' - The Amazon S3 bucket to send the core dump to.
productionVariantCoreDumpConfig ::
  -- | 'pvcdcDestinationS3URI'
  Text ->
  ProductionVariantCoreDumpConfig
productionVariantCoreDumpConfig pDestinationS3URI_ =
  ProductionVariantCoreDumpConfig'
    { _pvcdcKMSKeyId =
        Nothing,
      _pvcdcDestinationS3URI =
        pDestinationS3URI_
    }

-- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the core dump data at rest using Amazon S3 server-side encryption. The @KmsKeyId@ can be any of the following formats:      * // KMS Key ID @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * // Amazon Resource Name (ARN) of a KMS Key @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@      * // KMS Key Alias @"alias/ExampleAlias"@      * // Amazon Resource Name (ARN) of a KMS Key Alias @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@  If you use a KMS key ID or an alias of your master key, the Amazon SageMaker execution role must include permissions to call @kms:Encrypt@ . If you don't provide a KMS key ID, Amazon SageMaker uses the default KMS key for Amazon S3 for your role's account. Amazon SageMaker uses server-side encryption with KMS-managed keys for @OutputDataConfig@ . If you use a bucket policy with an @s3:PutObject@ permission that only allows objects with server-side encryption, set the condition key of @s3:x-amz-server-side-encryption@ to @"aws:kms"@ . For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html KMS-Managed Encryption Keys> in the /Amazon Simple Storage Service Developer Guide./  The KMS key policy must grant permission to the IAM role that you specify in your @CreateEndpoint@ and @UpdateEndpoint@ requests. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html Using Key Policies in AWS KMS> in the /AWS Key Management Service Developer Guide/ .
pvcdcKMSKeyId :: Lens' ProductionVariantCoreDumpConfig (Maybe Text)
pvcdcKMSKeyId = lens _pvcdcKMSKeyId (\s a -> s {_pvcdcKMSKeyId = a})

-- | The Amazon S3 bucket to send the core dump to.
pvcdcDestinationS3URI :: Lens' ProductionVariantCoreDumpConfig Text
pvcdcDestinationS3URI = lens _pvcdcDestinationS3URI (\s a -> s {_pvcdcDestinationS3URI = a})

instance FromJSON ProductionVariantCoreDumpConfig where
  parseJSON =
    withObject
      "ProductionVariantCoreDumpConfig"
      ( \x ->
          ProductionVariantCoreDumpConfig'
            <$> (x .:? "KmsKeyId") <*> (x .: "DestinationS3Uri")
      )

instance Hashable ProductionVariantCoreDumpConfig

instance NFData ProductionVariantCoreDumpConfig

instance ToJSON ProductionVariantCoreDumpConfig where
  toJSON ProductionVariantCoreDumpConfig' {..} =
    object
      ( catMaybes
          [ ("KmsKeyId" .=) <$> _pvcdcKMSKeyId,
            Just ("DestinationS3Uri" .= _pvcdcDestinationS3URI)
          ]
      )

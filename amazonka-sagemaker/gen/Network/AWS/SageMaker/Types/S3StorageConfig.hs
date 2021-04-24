{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.S3StorageConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.S3StorageConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Amazon Simple Storage (Amazon S3) location and and security configuration for @OfflineStore@ .
--
--
--
-- /See:/ 's3StorageConfig' smart constructor.
data S3StorageConfig = S3StorageConfig'
  { _sscKMSKeyId ::
      !(Maybe Text),
    _sscResolvedOutputS3URI ::
      !(Maybe Text),
    _sscS3URI :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3StorageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscKMSKeyId' - The AWS Key Management Service (KMS) key ID of the key used to encrypt any objects written into the @OfflineStore@ S3 location. The IAM @roleARN@ that is passed as a parameter to @CreateFeatureGroup@ must have below permissions to the @KmsKeyId@ :     * @"kms:GenerateDataKey"@
--
-- * 'sscResolvedOutputS3URI' - The S3 path where offline records are written.
--
-- * 'sscS3URI' - The S3 URI, or location in Amazon S3, of @OfflineStore@ . S3 URIs have a format similar to the following: @s3://example-bucket/prefix/@ .
s3StorageConfig ::
  -- | 'sscS3URI'
  Text ->
  S3StorageConfig
s3StorageConfig pS3URI_ =
  S3StorageConfig'
    { _sscKMSKeyId = Nothing,
      _sscResolvedOutputS3URI = Nothing,
      _sscS3URI = pS3URI_
    }

-- | The AWS Key Management Service (KMS) key ID of the key used to encrypt any objects written into the @OfflineStore@ S3 location. The IAM @roleARN@ that is passed as a parameter to @CreateFeatureGroup@ must have below permissions to the @KmsKeyId@ :     * @"kms:GenerateDataKey"@
sscKMSKeyId :: Lens' S3StorageConfig (Maybe Text)
sscKMSKeyId = lens _sscKMSKeyId (\s a -> s {_sscKMSKeyId = a})

-- | The S3 path where offline records are written.
sscResolvedOutputS3URI :: Lens' S3StorageConfig (Maybe Text)
sscResolvedOutputS3URI = lens _sscResolvedOutputS3URI (\s a -> s {_sscResolvedOutputS3URI = a})

-- | The S3 URI, or location in Amazon S3, of @OfflineStore@ . S3 URIs have a format similar to the following: @s3://example-bucket/prefix/@ .
sscS3URI :: Lens' S3StorageConfig Text
sscS3URI = lens _sscS3URI (\s a -> s {_sscS3URI = a})

instance FromJSON S3StorageConfig where
  parseJSON =
    withObject
      "S3StorageConfig"
      ( \x ->
          S3StorageConfig'
            <$> (x .:? "KmsKeyId")
            <*> (x .:? "ResolvedOutputS3Uri")
            <*> (x .: "S3Uri")
      )

instance Hashable S3StorageConfig

instance NFData S3StorageConfig

instance ToJSON S3StorageConfig where
  toJSON S3StorageConfig' {..} =
    object
      ( catMaybes
          [ ("KmsKeyId" .=) <$> _sscKMSKeyId,
            ("ResolvedOutputS3Uri" .=)
              <$> _sscResolvedOutputS3URI,
            Just ("S3Uri" .= _sscS3URI)
          ]
      )

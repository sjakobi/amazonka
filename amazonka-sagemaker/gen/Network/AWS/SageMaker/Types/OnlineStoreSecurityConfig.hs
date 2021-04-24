{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.OnlineStoreSecurityConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OnlineStoreSecurityConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The security configuration for @OnlineStore@ .
--
--
--
-- /See:/ 'onlineStoreSecurityConfig' smart constructor.
newtype OnlineStoreSecurityConfig = OnlineStoreSecurityConfig'
  { _osscKMSKeyId ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OnlineStoreSecurityConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osscKMSKeyId' - The ID of the AWS Key Management Service (AWS KMS) key that SageMaker Feature Store uses to encrypt the Amazon S3 objects at rest using Amazon S3 server-side encryption. The caller (either IAM user or IAM role) of @CreateFeatureGroup@ must have below permissions to the @OnlineStore@ @KmsKeyId@ :     * @"kms:Encrypt"@      * @"kms:Decrypt"@      * @"kms:DescribeKey"@      * @"kms:CreateGrant"@      * @"kms:RetireGrant"@      * @"kms:ReEncryptFrom"@      * @"kms:ReEncryptTo"@      * @"kms:GenerateDataKey"@      * @"kms:ListAliases"@      * @"kms:ListGrants"@      * @"kms:RevokeGrant"@  The caller (either IAM user or IAM role) to all DataPlane operations (@PutRecord@ , @GetRecord@ , @DeleteRecord@ ) must have the following permissions to the @KmsKeyId@ :     * @"kms:Decrypt"@
onlineStoreSecurityConfig ::
  OnlineStoreSecurityConfig
onlineStoreSecurityConfig =
  OnlineStoreSecurityConfig' {_osscKMSKeyId = Nothing}

-- | The ID of the AWS Key Management Service (AWS KMS) key that SageMaker Feature Store uses to encrypt the Amazon S3 objects at rest using Amazon S3 server-side encryption. The caller (either IAM user or IAM role) of @CreateFeatureGroup@ must have below permissions to the @OnlineStore@ @KmsKeyId@ :     * @"kms:Encrypt"@      * @"kms:Decrypt"@      * @"kms:DescribeKey"@      * @"kms:CreateGrant"@      * @"kms:RetireGrant"@      * @"kms:ReEncryptFrom"@      * @"kms:ReEncryptTo"@      * @"kms:GenerateDataKey"@      * @"kms:ListAliases"@      * @"kms:ListGrants"@      * @"kms:RevokeGrant"@  The caller (either IAM user or IAM role) to all DataPlane operations (@PutRecord@ , @GetRecord@ , @DeleteRecord@ ) must have the following permissions to the @KmsKeyId@ :     * @"kms:Decrypt"@
osscKMSKeyId :: Lens' OnlineStoreSecurityConfig (Maybe Text)
osscKMSKeyId = lens _osscKMSKeyId (\s a -> s {_osscKMSKeyId = a})

instance FromJSON OnlineStoreSecurityConfig where
  parseJSON =
    withObject
      "OnlineStoreSecurityConfig"
      ( \x ->
          OnlineStoreSecurityConfig' <$> (x .:? "KmsKeyId")
      )

instance Hashable OnlineStoreSecurityConfig

instance NFData OnlineStoreSecurityConfig

instance ToJSON OnlineStoreSecurityConfig where
  toJSON OnlineStoreSecurityConfig' {..} =
    object
      (catMaybes [("KmsKeyId" .=) <$> _osscKMSKeyId])

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.SSESpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SSESpecification where

import Network.AWS.DynamoDB.Types.SSEType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the settings used to enable server-side encryption.
--
--
--
-- /See:/ 'sSESpecification' smart constructor.
data SSESpecification = SSESpecification'
  { _ssesKMSMasterKeyId ::
      !(Maybe Text),
    _ssesEnabled :: !(Maybe Bool),
    _ssesSSEType :: !(Maybe SSEType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SSESpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssesKMSMasterKeyId' - The AWS KMS customer master key (CMK) that should be used for the AWS KMS encryption. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB customer master key alias/aws/dynamodb.
--
-- * 'ssesEnabled' - Indicates whether server-side encryption is done using an AWS managed CMK or an AWS owned CMK. If enabled (true), server-side encryption type is set to @KMS@ and an AWS managed CMK is used (AWS KMS charges apply). If disabled (false) or not specified, server-side encryption is set to AWS owned CMK.
--
-- * 'ssesSSEType' - Server-side encryption type. The only supported value is:     * @KMS@ - Server-side encryption that uses AWS Key Management Service. The key is stored in your account and is managed by AWS KMS (AWS KMS charges apply).
sSESpecification ::
  SSESpecification
sSESpecification =
  SSESpecification'
    { _ssesKMSMasterKeyId = Nothing,
      _ssesEnabled = Nothing,
      _ssesSSEType = Nothing
    }

-- | The AWS KMS customer master key (CMK) that should be used for the AWS KMS encryption. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB customer master key alias/aws/dynamodb.
ssesKMSMasterKeyId :: Lens' SSESpecification (Maybe Text)
ssesKMSMasterKeyId = lens _ssesKMSMasterKeyId (\s a -> s {_ssesKMSMasterKeyId = a})

-- | Indicates whether server-side encryption is done using an AWS managed CMK or an AWS owned CMK. If enabled (true), server-side encryption type is set to @KMS@ and an AWS managed CMK is used (AWS KMS charges apply). If disabled (false) or not specified, server-side encryption is set to AWS owned CMK.
ssesEnabled :: Lens' SSESpecification (Maybe Bool)
ssesEnabled = lens _ssesEnabled (\s a -> s {_ssesEnabled = a})

-- | Server-side encryption type. The only supported value is:     * @KMS@ - Server-side encryption that uses AWS Key Management Service. The key is stored in your account and is managed by AWS KMS (AWS KMS charges apply).
ssesSSEType :: Lens' SSESpecification (Maybe SSEType)
ssesSSEType = lens _ssesSSEType (\s a -> s {_ssesSSEType = a})

instance Hashable SSESpecification

instance NFData SSESpecification

instance ToJSON SSESpecification where
  toJSON SSESpecification' {..} =
    object
      ( catMaybes
          [ ("KMSMasterKeyId" .=) <$> _ssesKMSMasterKeyId,
            ("Enabled" .=) <$> _ssesEnabled,
            ("SSEType" .=) <$> _ssesSSEType
          ]
      )

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
-- Module      : Network.AWS.KMS.CreateAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a friendly name for a customer master key (CMK). You can use an alias to identify a CMK in the AWS KMS console, in the 'DescribeKey' operation and in <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> , such as 'Encrypt' and 'GenerateDataKey' .
--
--
-- You can also change the CMK that's associated with the alias ('UpdateAlias' ) or delete the alias ('DeleteAlias' ) at any time. These operations don't affect the underlying CMK.
--
-- You can associate the alias with any customer managed CMK in the same AWS Region. Each alias is associated with only on CMK at a time, but a CMK can have multiple aliases. A valid CMK is required. You can't create an alias without a CMK.
--
-- The alias must be unique in the account and Region, but you can have aliases with the same name in different Regions. For detailed information about aliases, see <https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html Using aliases> in the /AWS Key Management Service Developer Guide/ .
--
-- This operation does not return a response. To get the alias that you created, use the 'ListAliases' operation.
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : No. You cannot perform this operation on an alias in a different AWS account.
--
-- __Required permissions__
--
--     * <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:CreateAlias> on the alias (IAM policy).
--
--     * <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:CreateAlias> on the CMK (key policy).
--
--
--
-- For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access Controlling access to aliases> in the /AWS Key Management Service Developer Guide/ .
--
-- __Related operations:__
--
--     * 'DeleteAlias'
--
--     * 'ListAliases'
--
--     * 'UpdateAlias'
module Network.AWS.KMS.CreateAlias
  ( -- * Creating a Request
    createAlias,
    CreateAlias,

    -- * Request Lenses
    caAliasName,
    caTargetKeyId,

    -- * Destructuring the Response
    createAliasResponse,
    CreateAliasResponse,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createAlias' smart constructor.
data CreateAlias = CreateAlias'
  { _caAliasName ::
      !Text,
    _caTargetKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAliasName' - Specifies the alias name. This value must begin with @alias/@ followed by a name, such as @alias/ExampleAlias@ .  The @AliasName@ value must be string of 1-256 characters. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with @alias/aws/@ . The @alias/aws/@ prefix is reserved for <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk AWS managed CMKs> .
--
-- * 'caTargetKeyId' - Associates the alias with the specified <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk customer managed CMK> . The CMK must be in the same AWS Region.  A valid CMK ID is required. If you supply a null or empty string value, this operation returns an error. For help finding the key ID and ARN, see <https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn Finding the Key ID and ARN> in the /AWS Key Management Service Developer Guide/ . Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
createAlias ::
  -- | 'caAliasName'
  Text ->
  -- | 'caTargetKeyId'
  Text ->
  CreateAlias
createAlias pAliasName_ pTargetKeyId_ =
  CreateAlias'
    { _caAliasName = pAliasName_,
      _caTargetKeyId = pTargetKeyId_
    }

-- | Specifies the alias name. This value must begin with @alias/@ followed by a name, such as @alias/ExampleAlias@ .  The @AliasName@ value must be string of 1-256 characters. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with @alias/aws/@ . The @alias/aws/@ prefix is reserved for <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk AWS managed CMKs> .
caAliasName :: Lens' CreateAlias Text
caAliasName = lens _caAliasName (\s a -> s {_caAliasName = a})

-- | Associates the alias with the specified <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk customer managed CMK> . The CMK must be in the same AWS Region.  A valid CMK ID is required. If you supply a null or empty string value, this operation returns an error. For help finding the key ID and ARN, see <https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html#find-cmk-id-arn Finding the Key ID and ARN> in the /AWS Key Management Service Developer Guide/ . Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
caTargetKeyId :: Lens' CreateAlias Text
caTargetKeyId = lens _caTargetKeyId (\s a -> s {_caTargetKeyId = a})

instance AWSRequest CreateAlias where
  type Rs CreateAlias = CreateAliasResponse
  request = postJSON kms
  response = receiveNull CreateAliasResponse'

instance Hashable CreateAlias

instance NFData CreateAlias

instance ToHeaders CreateAlias where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.CreateAlias" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAlias where
  toJSON CreateAlias' {..} =
    object
      ( catMaybes
          [ Just ("AliasName" .= _caAliasName),
            Just ("TargetKeyId" .= _caTargetKeyId)
          ]
      )

instance ToPath CreateAlias where
  toPath = const "/"

instance ToQuery CreateAlias where
  toQuery = const mempty

-- | /See:/ 'createAliasResponse' smart constructor.
data CreateAliasResponse = CreateAliasResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAliasResponse' with the minimum fields required to make a request.
createAliasResponse ::
  CreateAliasResponse
createAliasResponse = CreateAliasResponse'

instance NFData CreateAliasResponse

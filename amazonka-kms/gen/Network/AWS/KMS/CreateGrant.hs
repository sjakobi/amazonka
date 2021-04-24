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
-- Module      : Network.AWS.KMS.CreateGrant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a grant to a customer master key (CMK). The grant allows the grantee principal to use the CMK when the conditions specified in the grant are met. When setting permissions, grants are an alternative to key policies.
--
--
-- To create a grant that allows a <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operation> only when the request includes a particular <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context encryption context> , use the @Constraints@ parameter. For details, see 'GrantConstraints' .
--
-- You can create grants on symmetric and asymmetric CMKs. However, if the grant allows an operation that the CMK does not support, @CreateGrant@ fails with a @ValidationException@ .
--
--     * Grants for symmetric CMKs cannot allow operations that are not supported for symmetric CMKs, including 'Sign' , 'Verify' , and 'GetPublicKey' . (There are limited exceptions to this rule for legacy operations, but you should not create a grant for an operation that AWS KMS does not support.)
--
--     * Grants for asymmetric CMKs cannot allow operations that are not supported for asymmetric CMKs, including operations that <https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKey generate data keys> or <https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKeyPair data key pairs> , or operations related to <https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html automatic key rotation> , <https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html imported key material> , or CMKs in <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key stores> .
--
--     * Grants for asymmetric CMKs with a @KeyUsage@ of @ENCRYPT_DECRYPT@ cannot allow the 'Sign' or 'Verify' operations. Grants for asymmetric CMKs with a @KeyUsage@ of @SIGN_VERIFY@ cannot allow the 'Encrypt' or 'Decrypt' operations.
--
--     * Grants for asymmetric CMKs cannot include an encryption context grant constraint. An encryption context is not supported on asymmetric CMKs.
--
--
--
-- For information about symmetric and asymmetric CMKs, see <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using Symmetric and Asymmetric CMKs> in the /AWS Key Management Service Developer Guide/ . For more information about grants, see <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html Grants> in the /\/AWS Key Management Service Developer Guide\/ / .
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : Yes. To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the @KeyId@ parameter.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:CreateGrant> (key policy)
--
-- __Related operations:__
--
--     * 'ListGrants'
--
--     * 'ListRetirableGrants'
--
--     * 'RetireGrant'
--
--     * 'RevokeGrant'
module Network.AWS.KMS.CreateGrant
  ( -- * Creating a Request
    createGrant,
    CreateGrant,

    -- * Request Lenses
    cgConstraints,
    cgGrantTokens,
    cgName,
    cgRetiringPrincipal,
    cgKeyId,
    cgGranteePrincipal,
    cgOperations,

    -- * Destructuring the Response
    createGrantResponse,
    CreateGrantResponse,

    -- * Response Lenses
    cgrrsGrantToken,
    cgrrsGrantId,
    cgrrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createGrant' smart constructor.
data CreateGrant = CreateGrant'
  { _cgConstraints ::
      !(Maybe GrantConstraints),
    _cgGrantTokens :: !(Maybe [Text]),
    _cgName :: !(Maybe Text),
    _cgRetiringPrincipal :: !(Maybe Text),
    _cgKeyId :: !Text,
    _cgGranteePrincipal :: !Text,
    _cgOperations :: ![GrantOperation]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGrant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgConstraints' - Allows a <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operation> only when the encryption context matches or includes the encryption context specified in this structure. For more information about encryption context, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /\/AWS Key Management Service Developer Guide\/ / . Grant constraints are not applied to operations that do not support an encryption context, such as cryptographic operations with asymmetric CMKs and management operations, such as 'DescribeKey' or 'RetireGrant' .
--
-- * 'cgGrantTokens' - A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'cgName' - A friendly name for the grant. Use this value to prevent the unintended creation of duplicate grants when retrying this request. When this value is absent, all @CreateGrant@ requests result in a new grant with a unique @GrantId@ even if all the supplied parameters are identical. This can result in unintended duplicates when you retry the @CreateGrant@ request. When this value is present, you can retry a @CreateGrant@ request with identical parameters; if the grant already exists, the original @GrantId@ is returned without creating a new grant. Note that the returned grant token is unique with every @CreateGrant@ request, even when a duplicate @GrantId@ is returned. All grant tokens for the same grant ID can be used interchangeably.
--
-- * 'cgRetiringPrincipal' - The principal that is given permission to retire the grant by using 'RetireGrant' operation. To specify the principal, use the <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)> in the Example ARNs section of the /AWS General Reference/ .
--
-- * 'cgKeyId' - The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
--
-- * 'cgGranteePrincipal' - The principal that is given permission to perform the operations that the grant permits. To specify the principal, use the <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)> in the Example ARNs section of the /AWS General Reference/ .
--
-- * 'cgOperations' - A list of operations that the grant permits.
createGrant ::
  -- | 'cgKeyId'
  Text ->
  -- | 'cgGranteePrincipal'
  Text ->
  CreateGrant
createGrant pKeyId_ pGranteePrincipal_ =
  CreateGrant'
    { _cgConstraints = Nothing,
      _cgGrantTokens = Nothing,
      _cgName = Nothing,
      _cgRetiringPrincipal = Nothing,
      _cgKeyId = pKeyId_,
      _cgGranteePrincipal = pGranteePrincipal_,
      _cgOperations = mempty
    }

-- | Allows a <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operation> only when the encryption context matches or includes the encryption context specified in this structure. For more information about encryption context, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /\/AWS Key Management Service Developer Guide\/ / . Grant constraints are not applied to operations that do not support an encryption context, such as cryptographic operations with asymmetric CMKs and management operations, such as 'DescribeKey' or 'RetireGrant' .
cgConstraints :: Lens' CreateGrant (Maybe GrantConstraints)
cgConstraints = lens _cgConstraints (\s a -> s {_cgConstraints = a})

-- | A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
cgGrantTokens :: Lens' CreateGrant [Text]
cgGrantTokens = lens _cgGrantTokens (\s a -> s {_cgGrantTokens = a}) . _Default . _Coerce

-- | A friendly name for the grant. Use this value to prevent the unintended creation of duplicate grants when retrying this request. When this value is absent, all @CreateGrant@ requests result in a new grant with a unique @GrantId@ even if all the supplied parameters are identical. This can result in unintended duplicates when you retry the @CreateGrant@ request. When this value is present, you can retry a @CreateGrant@ request with identical parameters; if the grant already exists, the original @GrantId@ is returned without creating a new grant. Note that the returned grant token is unique with every @CreateGrant@ request, even when a duplicate @GrantId@ is returned. All grant tokens for the same grant ID can be used interchangeably.
cgName :: Lens' CreateGrant (Maybe Text)
cgName = lens _cgName (\s a -> s {_cgName = a})

-- | The principal that is given permission to retire the grant by using 'RetireGrant' operation. To specify the principal, use the <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)> in the Example ARNs section of the /AWS General Reference/ .
cgRetiringPrincipal :: Lens' CreateGrant (Maybe Text)
cgRetiringPrincipal = lens _cgRetiringPrincipal (\s a -> s {_cgRetiringPrincipal = a})

-- | The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
cgKeyId :: Lens' CreateGrant Text
cgKeyId = lens _cgKeyId (\s a -> s {_cgKeyId = a})

-- | The principal that is given permission to perform the operations that the grant permits. To specify the principal, use the <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)> in the Example ARNs section of the /AWS General Reference/ .
cgGranteePrincipal :: Lens' CreateGrant Text
cgGranteePrincipal = lens _cgGranteePrincipal (\s a -> s {_cgGranteePrincipal = a})

-- | A list of operations that the grant permits.
cgOperations :: Lens' CreateGrant [GrantOperation]
cgOperations = lens _cgOperations (\s a -> s {_cgOperations = a}) . _Coerce

instance AWSRequest CreateGrant where
  type Rs CreateGrant = CreateGrantResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          CreateGrantResponse'
            <$> (x .?> "GrantToken")
            <*> (x .?> "GrantId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateGrant

instance NFData CreateGrant

instance ToHeaders CreateGrant where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.CreateGrant" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateGrant where
  toJSON CreateGrant' {..} =
    object
      ( catMaybes
          [ ("Constraints" .=) <$> _cgConstraints,
            ("GrantTokens" .=) <$> _cgGrantTokens,
            ("Name" .=) <$> _cgName,
            ("RetiringPrincipal" .=) <$> _cgRetiringPrincipal,
            Just ("KeyId" .= _cgKeyId),
            Just ("GranteePrincipal" .= _cgGranteePrincipal),
            Just ("Operations" .= _cgOperations)
          ]
      )

instance ToPath CreateGrant where
  toPath = const "/"

instance ToQuery CreateGrant where
  toQuery = const mempty

-- | /See:/ 'createGrantResponse' smart constructor.
data CreateGrantResponse = CreateGrantResponse'
  { _cgrrsGrantToken ::
      !(Maybe Text),
    _cgrrsGrantId :: !(Maybe Text),
    _cgrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGrantResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgrrsGrantToken' - The grant token. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'cgrrsGrantId' - The unique identifier for the grant. You can use the @GrantId@ in a 'ListGrants' , 'RetireGrant' , or 'RevokeGrant' operation.
--
-- * 'cgrrsResponseStatus' - -- | The response status code.
createGrantResponse ::
  -- | 'cgrrsResponseStatus'
  Int ->
  CreateGrantResponse
createGrantResponse pResponseStatus_ =
  CreateGrantResponse'
    { _cgrrsGrantToken = Nothing,
      _cgrrsGrantId = Nothing,
      _cgrrsResponseStatus = pResponseStatus_
    }

-- | The grant token. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
cgrrsGrantToken :: Lens' CreateGrantResponse (Maybe Text)
cgrrsGrantToken = lens _cgrrsGrantToken (\s a -> s {_cgrrsGrantToken = a})

-- | The unique identifier for the grant. You can use the @GrantId@ in a 'ListGrants' , 'RetireGrant' , or 'RevokeGrant' operation.
cgrrsGrantId :: Lens' CreateGrantResponse (Maybe Text)
cgrrsGrantId = lens _cgrrsGrantId (\s a -> s {_cgrrsGrantId = a})

-- | -- | The response status code.
cgrrsResponseStatus :: Lens' CreateGrantResponse Int
cgrrsResponseStatus = lens _cgrrsResponseStatus (\s a -> s {_cgrrsResponseStatus = a})

instance NFData CreateGrantResponse

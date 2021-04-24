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
-- Module      : Network.AWS.KMS.CreateKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a unique customer managed <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master-keys customer master key> (CMK) in your AWS account and Region.
--
--
-- You can use the @CreateKey@ operation to create symmetric or asymmetric CMKs.
--
--     * __Symmetric CMKs__ contain a 256-bit symmetric key that never leaves AWS KMS unencrypted. To use the CMK, you must call AWS KMS. You can use a symmetric CMK to encrypt and decrypt small amounts of data, but they are typically used to generate <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys data keys> and <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-key-pairs data keys pairs> . For details, see 'GenerateDataKey' and 'GenerateDataKeyPair' .
--
--     * __Asymmetric CMKs__ can contain an RSA key pair or an Elliptic Curve (ECC) key pair. The private key in an asymmetric CMK never leaves AWS KMS unencrypted. However, you can use the 'GetPublicKey' operation to download the public key so it can be used outside of AWS KMS. CMKs with RSA key pairs can be used to encrypt or decrypt data or sign and verify messages (but not both). CMKs with ECC key pairs can be used only to sign and verify messages.
--
--
--
-- For information about symmetric and asymmetric CMKs, see <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using Symmetric and Asymmetric CMKs> in the /AWS Key Management Service Developer Guide/ .
--
-- To create different types of CMKs, use the following guidance:
--
--     * Asymmetric CMKs    * To create an asymmetric CMK, use the @CustomerMasterKeySpec@ parameter to specify the type of key material in the CMK. Then, use the @KeyUsage@ parameter to determine whether the CMK will be used to encrypt and decrypt or sign and verify. You can't change these properties after the CMK is created.
--
--
--
--     * Symmetric CMKs    * When creating a symmetric CMK, you don't need to specify the @CustomerMasterKeySpec@ or @KeyUsage@ parameters. The default value for @CustomerMasterKeySpec@ , @SYMMETRIC_DEFAULT@ , and the default value for @KeyUsage@ , @ENCRYPT_DECRYPT@ , are the only valid values for symmetric CMKs.
--
--
--
--     * Imported Key Material    * To import your own key material, begin by creating a symmetric CMK with no key material. To do this, use the @Origin@ parameter of @CreateKey@ with a value of @EXTERNAL@ . Next, use 'GetParametersForImport' operation to get a public key and import token, and use the public key to encrypt your key material. Then, use 'ImportKeyMaterial' with your import token to import the key material. For step-by-step instructions, see <https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html Importing Key Material> in the /\/AWS Key Management Service Developer Guide\/ / . You cannot import the key material into an asymmetric CMK.
--
--
--
--     * Custom Key Stores    * To create a symmetric CMK in a <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> , use the @CustomKeyStoreId@ parameter to specify the custom key store. You must also use the @Origin@ parameter with a value of @AWS_CLOUDHSM@ . The AWS CloudHSM cluster that is associated with the custom key store must have at least two active HSMs in different Availability Zones in the AWS Region.
--
-- You cannot create an asymmetric CMK in a custom key store. For information about custom key stores in AWS KMS see <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html Using Custom Key Stores> in the /\/AWS Key Management Service Developer Guide\/ / .
--
--
--
-- __Cross-account use__ : No. You cannot use this operation to create a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:CreateKey> (IAM policy). To use the @Tags@ parameter, <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:TagResource> (IAM policy). For examples and information about related permissions, see <https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policy-example-create-key Allow a user to create CMKs> in the /AWS Key Management Service Developer Guide/ .
--
-- __Related operations:__
--
--     * 'DescribeKey'
--
--     * 'ListKeys'
--
--     * 'ScheduleKeyDeletion'
module Network.AWS.KMS.CreateKey
  ( -- * Creating a Request
    createKey,
    CreateKey,

    -- * Request Lenses
    ckOrigin,
    ckCustomKeyStoreId,
    ckBypassPolicyLockoutSafetyCheck,
    ckTags,
    ckDescription,
    ckPolicy,
    ckKeyUsage,
    ckCustomerMasterKeySpec,

    -- * Destructuring the Response
    createKeyResponse,
    CreateKeyResponse,

    -- * Response Lenses
    ckrrsKeyMetadata,
    ckrrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createKey' smart constructor.
data CreateKey = CreateKey'
  { _ckOrigin ::
      !(Maybe OriginType),
    _ckCustomKeyStoreId :: !(Maybe Text),
    _ckBypassPolicyLockoutSafetyCheck :: !(Maybe Bool),
    _ckTags :: !(Maybe [Tag]),
    _ckDescription :: !(Maybe Text),
    _ckPolicy :: !(Maybe Text),
    _ckKeyUsage :: !(Maybe KeyUsageType),
    _ckCustomerMasterKeySpec ::
      !(Maybe CustomerMasterKeySpec)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckOrigin' - The source of the key material for the CMK. You cannot change the origin after you create the CMK. The default is @AWS_KMS@ , which means AWS KMS creates the key material. When the parameter value is @EXTERNAL@ , AWS KMS creates a CMK without key material so that you can import key material from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html Importing Key Material> in the /AWS Key Management Service Developer Guide/ . This value is valid only for symmetric CMKs. When the parameter value is @AWS_CLOUDHSM@ , AWS KMS creates the CMK in an AWS KMS <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> and creates its key material in the associated AWS CloudHSM cluster. You must also use the @CustomKeyStoreId@ parameter to identify the custom key store. This value is valid only for symmetric CMKs.
--
-- * 'ckCustomKeyStoreId' - Creates the CMK in the specified <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> and the key material in its associated AWS CloudHSM cluster. To create a CMK in a custom key store, you must also specify the @Origin@ parameter with a value of @AWS_CLOUDHSM@ . The AWS CloudHSM cluster that is associated with the custom key store must have at least two active HSMs, each in a different Availability Zone in the Region. This parameter is valid only for symmetric CMKs. You cannot create an asymmetric CMK in a custom key store. To find the ID of a custom key store, use the 'DescribeCustomKeyStores' operation. The response includes the custom key store ID and the ID of the AWS CloudHSM cluster. This operation is part of the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html Custom Key Store feature> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.
--
-- * 'ckBypassPolicyLockoutSafetyCheck' - A flag to indicate whether to bypass the key policy lockout safety check. /Important:/ Setting this value to true increases the risk that the CMK becomes unmanageable. Do not set this value to true indiscriminately. For more information, refer to the scenario in the <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section in the /\/AWS Key Management Service Developer Guide\/ / . Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent 'PutKeyPolicy' request on the CMK. The default value is false.
--
-- * 'ckTags' - One or more tags. Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string.  When you add tags to an AWS resource, AWS generates a cost allocation report with usage and costs aggregated by tags. For information about adding, changing, deleting and listing tags for CMKs, see <https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html Tagging Keys> . Use this parameter to tag the CMK when it is created. To add tags to an existing CMK, use the 'TagResource' operation. To use this parameter, you must have <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:TagResource> permission in an IAM policy.
--
-- * 'ckDescription' - A description of the CMK. Use a description that helps you decide whether the CMK is appropriate for a task.
--
-- * 'ckPolicy' - The key policy to attach to the CMK. If you provide a key policy, it must meet the following criteria:     * If you don't set @BypassPolicyLockoutSafetyCheck@ to true, the key policy must allow the principal that is making the @CreateKey@ request to make a subsequent 'PutKeyPolicy' request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section of the /\/AWS Key Management Service Developer Guide\/ / .     * Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before including the new principal in a key policy because the new principal might not be immediately visible to AWS KMS. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency Changes that I make are not always immediately visible> in the /AWS Identity and Access Management User Guide/ . If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default Default Key Policy> in the /AWS Key Management Service Developer Guide/ .  The key policy size quota is 32 kilobytes (32768 bytes). For help writing and formatting a JSON policy document, see the <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON Policy Reference> in the /\/IAM User Guide\/ / .
--
-- * 'ckKeyUsage' - Determines the <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> for which you can use the CMK. The default value is @ENCRYPT_DECRYPT@ . This parameter is required only for asymmetric CMKs. You can't change the @KeyUsage@ value after the CMK is created. Select only one valid value.     * For symmetric CMKs, omit the parameter or specify @ENCRYPT_DECRYPT@ .     * For asymmetric CMKs with RSA key material, specify @ENCRYPT_DECRYPT@ or @SIGN_VERIFY@ .     * For asymmetric CMKs with ECC key material, specify @SIGN_VERIFY@ .
--
-- * 'ckCustomerMasterKeySpec' - Specifies the type of CMK to create. The default value, @SYMMETRIC_DEFAULT@ , creates a CMK with a 256-bit symmetric key for encryption and decryption. For help choosing a key spec for your CMK, see <https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html How to Choose Your CMK Configuration> in the /AWS Key Management Service Developer Guide/ . The @CustomerMasterKeySpec@ determines whether the CMK contains a symmetric key or an asymmetric key pair. It also determines the encryption algorithms or signing algorithms that the CMK supports. You can't change the @CustomerMasterKeySpec@ after the CMK is created. To further restrict the algorithms that can be used with the CMK, use a condition key in its key policy or IAM policy. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm kms:EncryptionAlgorithm> or <https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm kms:Signing Algorithm> in the /AWS Key Management Service Developer Guide/ . /Important:/ <http://aws.amazon.com/kms/features/#AWS_Service_Integration AWS services that are integrated with AWS KMS> use symmetric CMKs to protect your data. These services do not support asymmetric CMKs. For help determining whether a CMK is symmetric or asymmetric, see <https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html Identifying Symmetric and Asymmetric CMKs> in the /AWS Key Management Service Developer Guide/ . AWS KMS supports the following key specs for CMKs:     * Symmetric key (default)     * @SYMMETRIC_DEFAULT@ (AES-256-GCM)     * Asymmetric RSA key pairs     * @RSA_2048@      * @RSA_3072@      * @RSA_4096@      * Asymmetric NIST-recommended elliptic curve key pairs     * @ECC_NIST_P256@ (secp256r1)     * @ECC_NIST_P384@ (secp384r1)     * @ECC_NIST_P521@ (secp521r1)     * Other asymmetric elliptic curve key pairs     * @ECC_SECG_P256K1@ (secp256k1), commonly used for cryptocurrencies.
createKey ::
  CreateKey
createKey =
  CreateKey'
    { _ckOrigin = Nothing,
      _ckCustomKeyStoreId = Nothing,
      _ckBypassPolicyLockoutSafetyCheck = Nothing,
      _ckTags = Nothing,
      _ckDescription = Nothing,
      _ckPolicy = Nothing,
      _ckKeyUsage = Nothing,
      _ckCustomerMasterKeySpec = Nothing
    }

-- | The source of the key material for the CMK. You cannot change the origin after you create the CMK. The default is @AWS_KMS@ , which means AWS KMS creates the key material. When the parameter value is @EXTERNAL@ , AWS KMS creates a CMK without key material so that you can import key material from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html Importing Key Material> in the /AWS Key Management Service Developer Guide/ . This value is valid only for symmetric CMKs. When the parameter value is @AWS_CLOUDHSM@ , AWS KMS creates the CMK in an AWS KMS <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> and creates its key material in the associated AWS CloudHSM cluster. You must also use the @CustomKeyStoreId@ parameter to identify the custom key store. This value is valid only for symmetric CMKs.
ckOrigin :: Lens' CreateKey (Maybe OriginType)
ckOrigin = lens _ckOrigin (\s a -> s {_ckOrigin = a})

-- | Creates the CMK in the specified <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> and the key material in its associated AWS CloudHSM cluster. To create a CMK in a custom key store, you must also specify the @Origin@ parameter with a value of @AWS_CLOUDHSM@ . The AWS CloudHSM cluster that is associated with the custom key store must have at least two active HSMs, each in a different Availability Zone in the Region. This parameter is valid only for symmetric CMKs. You cannot create an asymmetric CMK in a custom key store. To find the ID of a custom key store, use the 'DescribeCustomKeyStores' operation. The response includes the custom key store ID and the ID of the AWS CloudHSM cluster. This operation is part of the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html Custom Key Store feature> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.
ckCustomKeyStoreId :: Lens' CreateKey (Maybe Text)
ckCustomKeyStoreId = lens _ckCustomKeyStoreId (\s a -> s {_ckCustomKeyStoreId = a})

-- | A flag to indicate whether to bypass the key policy lockout safety check. /Important:/ Setting this value to true increases the risk that the CMK becomes unmanageable. Do not set this value to true indiscriminately. For more information, refer to the scenario in the <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section in the /\/AWS Key Management Service Developer Guide\/ / . Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent 'PutKeyPolicy' request on the CMK. The default value is false.
ckBypassPolicyLockoutSafetyCheck :: Lens' CreateKey (Maybe Bool)
ckBypassPolicyLockoutSafetyCheck = lens _ckBypassPolicyLockoutSafetyCheck (\s a -> s {_ckBypassPolicyLockoutSafetyCheck = a})

-- | One or more tags. Each tag consists of a tag key and a tag value. Both the tag key and the tag value are required, but the tag value can be an empty (null) string.  When you add tags to an AWS resource, AWS generates a cost allocation report with usage and costs aggregated by tags. For information about adding, changing, deleting and listing tags for CMKs, see <https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html Tagging Keys> . Use this parameter to tag the CMK when it is created. To add tags to an existing CMK, use the 'TagResource' operation. To use this parameter, you must have <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:TagResource> permission in an IAM policy.
ckTags :: Lens' CreateKey [Tag]
ckTags = lens _ckTags (\s a -> s {_ckTags = a}) . _Default . _Coerce

-- | A description of the CMK. Use a description that helps you decide whether the CMK is appropriate for a task.
ckDescription :: Lens' CreateKey (Maybe Text)
ckDescription = lens _ckDescription (\s a -> s {_ckDescription = a})

-- | The key policy to attach to the CMK. If you provide a key policy, it must meet the following criteria:     * If you don't set @BypassPolicyLockoutSafetyCheck@ to true, the key policy must allow the principal that is making the @CreateKey@ request to make a subsequent 'PutKeyPolicy' request on the CMK. This reduces the risk that the CMK becomes unmanageable. For more information, refer to the scenario in the <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section of the /\/AWS Key Management Service Developer Guide\/ / .     * Each statement in the key policy must contain one or more principals. The principals in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before including the new principal in a key policy because the new principal might not be immediately visible to AWS KMS. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency Changes that I make are not always immediately visible> in the /AWS Identity and Access Management User Guide/ . If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default Default Key Policy> in the /AWS Key Management Service Developer Guide/ .  The key policy size quota is 32 kilobytes (32768 bytes). For help writing and formatting a JSON policy document, see the <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html IAM JSON Policy Reference> in the /\/IAM User Guide\/ / .
ckPolicy :: Lens' CreateKey (Maybe Text)
ckPolicy = lens _ckPolicy (\s a -> s {_ckPolicy = a})

-- | Determines the <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> for which you can use the CMK. The default value is @ENCRYPT_DECRYPT@ . This parameter is required only for asymmetric CMKs. You can't change the @KeyUsage@ value after the CMK is created. Select only one valid value.     * For symmetric CMKs, omit the parameter or specify @ENCRYPT_DECRYPT@ .     * For asymmetric CMKs with RSA key material, specify @ENCRYPT_DECRYPT@ or @SIGN_VERIFY@ .     * For asymmetric CMKs with ECC key material, specify @SIGN_VERIFY@ .
ckKeyUsage :: Lens' CreateKey (Maybe KeyUsageType)
ckKeyUsage = lens _ckKeyUsage (\s a -> s {_ckKeyUsage = a})

-- | Specifies the type of CMK to create. The default value, @SYMMETRIC_DEFAULT@ , creates a CMK with a 256-bit symmetric key for encryption and decryption. For help choosing a key spec for your CMK, see <https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html How to Choose Your CMK Configuration> in the /AWS Key Management Service Developer Guide/ . The @CustomerMasterKeySpec@ determines whether the CMK contains a symmetric key or an asymmetric key pair. It also determines the encryption algorithms or signing algorithms that the CMK supports. You can't change the @CustomerMasterKeySpec@ after the CMK is created. To further restrict the algorithms that can be used with the CMK, use a condition key in its key policy or IAM policy. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-algorithm kms:EncryptionAlgorithm> or <https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-signing-algorithm kms:Signing Algorithm> in the /AWS Key Management Service Developer Guide/ . /Important:/ <http://aws.amazon.com/kms/features/#AWS_Service_Integration AWS services that are integrated with AWS KMS> use symmetric CMKs to protect your data. These services do not support asymmetric CMKs. For help determining whether a CMK is symmetric or asymmetric, see <https://docs.aws.amazon.com/kms/latest/developerguide/find-symm-asymm.html Identifying Symmetric and Asymmetric CMKs> in the /AWS Key Management Service Developer Guide/ . AWS KMS supports the following key specs for CMKs:     * Symmetric key (default)     * @SYMMETRIC_DEFAULT@ (AES-256-GCM)     * Asymmetric RSA key pairs     * @RSA_2048@      * @RSA_3072@      * @RSA_4096@      * Asymmetric NIST-recommended elliptic curve key pairs     * @ECC_NIST_P256@ (secp256r1)     * @ECC_NIST_P384@ (secp384r1)     * @ECC_NIST_P521@ (secp521r1)     * Other asymmetric elliptic curve key pairs     * @ECC_SECG_P256K1@ (secp256k1), commonly used for cryptocurrencies.
ckCustomerMasterKeySpec :: Lens' CreateKey (Maybe CustomerMasterKeySpec)
ckCustomerMasterKeySpec = lens _ckCustomerMasterKeySpec (\s a -> s {_ckCustomerMasterKeySpec = a})

instance AWSRequest CreateKey where
  type Rs CreateKey = CreateKeyResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          CreateKeyResponse'
            <$> (x .?> "KeyMetadata") <*> (pure (fromEnum s))
      )

instance Hashable CreateKey

instance NFData CreateKey

instance ToHeaders CreateKey where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.CreateKey" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateKey where
  toJSON CreateKey' {..} =
    object
      ( catMaybes
          [ ("Origin" .=) <$> _ckOrigin,
            ("CustomKeyStoreId" .=) <$> _ckCustomKeyStoreId,
            ("BypassPolicyLockoutSafetyCheck" .=)
              <$> _ckBypassPolicyLockoutSafetyCheck,
            ("Tags" .=) <$> _ckTags,
            ("Description" .=) <$> _ckDescription,
            ("Policy" .=) <$> _ckPolicy,
            ("KeyUsage" .=) <$> _ckKeyUsage,
            ("CustomerMasterKeySpec" .=)
              <$> _ckCustomerMasterKeySpec
          ]
      )

instance ToPath CreateKey where
  toPath = const "/"

instance ToQuery CreateKey where
  toQuery = const mempty

-- | /See:/ 'createKeyResponse' smart constructor.
data CreateKeyResponse = CreateKeyResponse'
  { _ckrrsKeyMetadata ::
      !(Maybe KeyMetadata),
    _ckrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckrrsKeyMetadata' - Metadata associated with the CMK.
--
-- * 'ckrrsResponseStatus' - -- | The response status code.
createKeyResponse ::
  -- | 'ckrrsResponseStatus'
  Int ->
  CreateKeyResponse
createKeyResponse pResponseStatus_ =
  CreateKeyResponse'
    { _ckrrsKeyMetadata = Nothing,
      _ckrrsResponseStatus = pResponseStatus_
    }

-- | Metadata associated with the CMK.
ckrrsKeyMetadata :: Lens' CreateKeyResponse (Maybe KeyMetadata)
ckrrsKeyMetadata = lens _ckrrsKeyMetadata (\s a -> s {_ckrrsKeyMetadata = a})

-- | -- | The response status code.
ckrrsResponseStatus :: Lens' CreateKeyResponse Int
ckrrsResponseStatus = lens _ckrrsResponseStatus (\s a -> s {_ckrrsResponseStatus = a})

instance NFData CreateKeyResponse

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
-- Module      : Network.AWS.KMS.Decrypt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts ciphertext that was encrypted by a AWS KMS customer master key (CMK) using any of the following operations:
--
--
--     * 'Encrypt'
--
--     * 'GenerateDataKey'
--
--     * 'GenerateDataKeyPair'
--
--     * 'GenerateDataKeyWithoutPlaintext'
--
--     * 'GenerateDataKeyPairWithoutPlaintext'
--
--
--
-- You can use this operation to decrypt ciphertext that was encrypted under a symmetric or asymmetric CMK. When the CMK is asymmetric, you must specify the CMK and the encryption algorithm that was used to encrypt the ciphertext. For information about symmetric and asymmetric CMKs, see <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using Symmetric and Asymmetric CMKs> in the /AWS Key Management Service Developer Guide/ .
--
-- The Decrypt operation also decrypts ciphertext that was encrypted outside of AWS KMS by the public key in an AWS KMS asymmetric CMK. However, it cannot decrypt ciphertext produced by other libraries, such as the <https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/ AWS Encryption SDK> or <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html Amazon S3 client-side encryption> . These libraries return a ciphertext format that is incompatible with AWS KMS.
--
-- If the ciphertext was encrypted under a symmetric CMK, the @KeyId@ parameter is optional. AWS KMS can get this information from metadata that it adds to the symmetric ciphertext blob. This feature adds durability to your implementation by ensuring that authorized users can decrypt ciphertext decades after it was encrypted, even if they've lost track of the CMK ID. However, specifying the CMK is always recommended as a best practice. When you use the @KeyId@ parameter to specify a CMK, AWS KMS only uses the CMK you specify. If the ciphertext was encrypted under a different CMK, the @Decrypt@ operation fails. This practice ensures that you use the CMK that you intend.
--
-- Whenever possible, use key policies to give users permission to call the @Decrypt@ operation on a particular CMK, instead of using IAM policies. Otherwise, you might create an IAM user policy that gives the user @Decrypt@ permission on all CMKs. This user could decrypt ciphertext that was encrypted by CMKs in other accounts if the key policy for the cross-account CMK permits it. If you must use an IAM policy for @Decrypt@ permissions, limit the user to particular CMKs or particular trusted accounts. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/iam-policies.html#iam-policies-best-practices Best practices for IAM policies> in the /AWS Key Management Service Developer Guide/ .
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : Yes. You can decrypt a ciphertext using a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:Decrypt> (key policy)
--
-- __Related operations:__
--
--     * 'Encrypt'
--
--     * 'GenerateDataKey'
--
--     * 'GenerateDataKeyPair'
--
--     * 'ReEncrypt'
module Network.AWS.KMS.Decrypt
  ( -- * Creating a Request
    decrypt,
    Decrypt,

    -- * Request Lenses
    decGrantTokens,
    decEncryptionAlgorithm,
    decEncryptionContext,
    decKeyId,
    decCiphertextBlob,

    -- * Destructuring the Response
    decryptResponse,
    DecryptResponse,

    -- * Response Lenses
    drrsPlaintext,
    drrsEncryptionAlgorithm,
    drrsKeyId,
    drrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'decrypt' smart constructor.
data Decrypt = Decrypt'
  { _decGrantTokens ::
      !(Maybe [Text]),
    _decEncryptionAlgorithm ::
      !(Maybe EncryptionAlgorithmSpec),
    _decEncryptionContext :: !(Maybe (Map Text Text)),
    _decKeyId :: !(Maybe Text),
    _decCiphertextBlob :: !Base64
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Decrypt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decGrantTokens' - A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'decEncryptionAlgorithm' - Specifies the encryption algorithm that will be used to decrypt the ciphertext. Specify the same algorithm that was used to encrypt the data. If you specify a different algorithm, the @Decrypt@ operation fails. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK. The default value, @SYMMETRIC_DEFAULT@ , represents the only supported algorithm that is valid for symmetric CMKs.
--
-- * 'decEncryptionContext' - Specifies the encryption context to use when decrypting the data. An encryption context is valid only for <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> with a symmetric CMK. The standard asymmetric encryption algorithms that AWS KMS uses do not support an encryption context. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'decKeyId' - Specifies the customer master key (CMK) that AWS KMS uses to decrypt the ciphertext. Enter a key ID of the CMK that was used to encrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK. If you used a symmetric CMK, AWS KMS can get the CMK from metadata that it adds to the symmetric ciphertext blob. However, it is always recommended as a best practice. This practice ensures that you use the CMK that you intend. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
--
-- * 'decCiphertextBlob' - Ciphertext to be decrypted. The blob includes metadata.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
decrypt ::
  -- | 'decCiphertextBlob'
  ByteString ->
  Decrypt
decrypt pCiphertextBlob_ =
  Decrypt'
    { _decGrantTokens = Nothing,
      _decEncryptionAlgorithm = Nothing,
      _decEncryptionContext = Nothing,
      _decKeyId = Nothing,
      _decCiphertextBlob = _Base64 # pCiphertextBlob_
    }

-- | A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
decGrantTokens :: Lens' Decrypt [Text]
decGrantTokens = lens _decGrantTokens (\s a -> s {_decGrantTokens = a}) . _Default . _Coerce

-- | Specifies the encryption algorithm that will be used to decrypt the ciphertext. Specify the same algorithm that was used to encrypt the data. If you specify a different algorithm, the @Decrypt@ operation fails. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK. The default value, @SYMMETRIC_DEFAULT@ , represents the only supported algorithm that is valid for symmetric CMKs.
decEncryptionAlgorithm :: Lens' Decrypt (Maybe EncryptionAlgorithmSpec)
decEncryptionAlgorithm = lens _decEncryptionAlgorithm (\s a -> s {_decEncryptionAlgorithm = a})

-- | Specifies the encryption context to use when decrypting the data. An encryption context is valid only for <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> with a symmetric CMK. The standard asymmetric encryption algorithms that AWS KMS uses do not support an encryption context. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
decEncryptionContext :: Lens' Decrypt (HashMap Text Text)
decEncryptionContext = lens _decEncryptionContext (\s a -> s {_decEncryptionContext = a}) . _Default . _Map

-- | Specifies the customer master key (CMK) that AWS KMS uses to decrypt the ciphertext. Enter a key ID of the CMK that was used to encrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK. If you used a symmetric CMK, AWS KMS can get the CMK from metadata that it adds to the symmetric ciphertext blob. However, it is always recommended as a best practice. This practice ensures that you use the CMK that you intend. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
decKeyId :: Lens' Decrypt (Maybe Text)
decKeyId = lens _decKeyId (\s a -> s {_decKeyId = a})

-- | Ciphertext to be decrypted. The blob includes metadata.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
decCiphertextBlob :: Lens' Decrypt ByteString
decCiphertextBlob = lens _decCiphertextBlob (\s a -> s {_decCiphertextBlob = a}) . _Base64

instance AWSRequest Decrypt where
  type Rs Decrypt = DecryptResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          DecryptResponse'
            <$> (x .?> "Plaintext")
            <*> (x .?> "EncryptionAlgorithm")
            <*> (x .?> "KeyId")
            <*> (pure (fromEnum s))
      )

instance Hashable Decrypt

instance NFData Decrypt

instance ToHeaders Decrypt where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.Decrypt" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON Decrypt where
  toJSON Decrypt' {..} =
    object
      ( catMaybes
          [ ("GrantTokens" .=) <$> _decGrantTokens,
            ("EncryptionAlgorithm" .=)
              <$> _decEncryptionAlgorithm,
            ("EncryptionContext" .=) <$> _decEncryptionContext,
            ("KeyId" .=) <$> _decKeyId,
            Just ("CiphertextBlob" .= _decCiphertextBlob)
          ]
      )

instance ToPath Decrypt where
  toPath = const "/"

instance ToQuery Decrypt where
  toQuery = const mempty

-- | /See:/ 'decryptResponse' smart constructor.
data DecryptResponse = DecryptResponse'
  { _drrsPlaintext ::
      !(Maybe (Sensitive Base64)),
    _drrsEncryptionAlgorithm ::
      !(Maybe EncryptionAlgorithmSpec),
    _drrsKeyId :: !(Maybe Text),
    _drrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DecryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrsPlaintext' - Decrypted plaintext data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'drrsEncryptionAlgorithm' - The encryption algorithm that was used to decrypt the ciphertext.
--
-- * 'drrsKeyId' - The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that was used to decrypt the ciphertext.
--
-- * 'drrsResponseStatus' - -- | The response status code.
decryptResponse ::
  -- | 'drrsResponseStatus'
  Int ->
  DecryptResponse
decryptResponse pResponseStatus_ =
  DecryptResponse'
    { _drrsPlaintext = Nothing,
      _drrsEncryptionAlgorithm = Nothing,
      _drrsKeyId = Nothing,
      _drrsResponseStatus = pResponseStatus_
    }

-- | Decrypted plaintext data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
drrsPlaintext :: Lens' DecryptResponse (Maybe ByteString)
drrsPlaintext = lens _drrsPlaintext (\s a -> s {_drrsPlaintext = a}) . mapping (_Sensitive . _Base64)

-- | The encryption algorithm that was used to decrypt the ciphertext.
drrsEncryptionAlgorithm :: Lens' DecryptResponse (Maybe EncryptionAlgorithmSpec)
drrsEncryptionAlgorithm = lens _drrsEncryptionAlgorithm (\s a -> s {_drrsEncryptionAlgorithm = a})

-- | The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that was used to decrypt the ciphertext.
drrsKeyId :: Lens' DecryptResponse (Maybe Text)
drrsKeyId = lens _drrsKeyId (\s a -> s {_drrsKeyId = a})

-- | -- | The response status code.
drrsResponseStatus :: Lens' DecryptResponse Int
drrsResponseStatus = lens _drrsResponseStatus (\s a -> s {_drrsResponseStatus = a})

instance NFData DecryptResponse

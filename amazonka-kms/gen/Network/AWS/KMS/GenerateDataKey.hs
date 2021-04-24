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
-- Module      : Network.AWS.KMS.GenerateDataKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a unique symmetric data key for client-side encryption. This operation returns a plaintext copy of the data key and a copy that is encrypted under a customer master key (CMK) that you specify. You can use the plaintext key to encrypt your data outside of AWS KMS and store the encrypted data key with the encrypted data.
--
--
-- @GenerateDataKey@ returns a unique data key for each request. The bytes in the plaintext key are not related to the caller or the CMK.
--
-- To generate a data key, specify the symmetric CMK that will be used to encrypt the data key. You cannot use an asymmetric CMK to generate data keys. To get the type of your CMK, use the 'DescribeKey' operation. You must also specify the length of the data key. Use either the @KeySpec@ or @NumberOfBytes@ parameters (but not both). For 128-bit and 256-bit data keys, use the @KeySpec@ parameter.
--
-- To get only an encrypted copy of the data key, use 'GenerateDataKeyWithoutPlaintext' . To generate an asymmetric data key pair, use the 'GenerateDataKeyPair' or 'GenerateDataKeyPairWithoutPlaintext' operation. To get a cryptographically secure random byte string, use 'GenerateRandom' .
--
-- You can use the optional encryption context to add additional security to the encryption operation. If you specify an @EncryptionContext@ , you must specify the same encryption context (a case-sensitive exact match) when decrypting the encrypted data key. Otherwise, the request to decrypt fails with an @InvalidCiphertextException@ . For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __How to use your data key__
--
-- We recommend that you use the following pattern to encrypt data locally in your application. You can write your own code or use a client-side encryption library, such as the <https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/ AWS Encryption SDK> , the <https://docs.aws.amazon.com/dynamodb-encryption-client/latest/devguide/ Amazon DynamoDB Encryption Client> , or <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html Amazon S3 client-side encryption> to do these tasks for you.
--
-- To encrypt data outside of AWS KMS:
--
--     * Use the @GenerateDataKey@ operation to get a data key.
--
--     * Use the plaintext data key (in the @Plaintext@ field of the response) to encrypt your data outside of AWS KMS. Then erase the plaintext data key from memory.
--
--     * Store the encrypted data key (in the @CiphertextBlob@ field of the response) with the encrypted data.
--
--
--
-- To decrypt data outside of AWS KMS:
--
--     * Use the 'Decrypt' operation to decrypt the encrypted data key. The operation returns a plaintext copy of the data key.
--
--     * Use the plaintext data key to decrypt data outside of AWS KMS, then erase the plaintext data key from memory.
--
--
--
-- __Cross-account use__ : Yes. To perform this operation with a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the @KeyId@ parameter.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:GenerateDataKey> (key policy)
--
-- __Related operations:__
--
--     * 'Decrypt'
--
--     * 'Encrypt'
--
--     * 'GenerateDataKeyPair'
--
--     * 'GenerateDataKeyPairWithoutPlaintext'
--
--     * 'GenerateDataKeyWithoutPlaintext'
module Network.AWS.KMS.GenerateDataKey
  ( -- * Creating a Request
    generateDataKey,
    GenerateDataKey,

    -- * Request Lenses
    gdkGrantTokens,
    gdkNumberOfBytes,
    gdkEncryptionContext,
    gdkKeySpec,
    gdkKeyId,

    -- * Destructuring the Response
    generateDataKeyResponse,
    GenerateDataKeyResponse,

    -- * Response Lenses
    gdkrrsResponseStatus,
    gdkrrsKeyId,
    gdkrrsPlaintext,
    gdkrrsCiphertextBlob,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'generateDataKey' smart constructor.
data GenerateDataKey = GenerateDataKey'
  { _gdkGrantTokens ::
      !(Maybe [Text]),
    _gdkNumberOfBytes :: !(Maybe Nat),
    _gdkEncryptionContext ::
      !(Maybe (Map Text Text)),
    _gdkKeySpec :: !(Maybe DataKeySpec),
    _gdkKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GenerateDataKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdkGrantTokens' - A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'gdkNumberOfBytes' - Specifies the length of the data key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For 128-bit (16-byte) and 256-bit (32-byte) data keys, use the @KeySpec@ parameter. You must specify either the @KeySpec@ or the @NumberOfBytes@ parameter (but not both) in every @GenerateDataKey@ request.
--
-- * 'gdkEncryptionContext' - Specifies the encryption context that will be used when encrypting the data key. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'gdkKeySpec' - Specifies the length of the data key. Use @AES_128@ to generate a 128-bit symmetric key, or @AES_256@ to generate a 256-bit symmetric key. You must specify either the @KeySpec@ or the @NumberOfBytes@ parameter (but not both) in every @GenerateDataKey@ request.
--
-- * 'gdkKeyId' - Identifies the symmetric CMK that encrypts the data key. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
generateDataKey ::
  -- | 'gdkKeyId'
  Text ->
  GenerateDataKey
generateDataKey pKeyId_ =
  GenerateDataKey'
    { _gdkGrantTokens = Nothing,
      _gdkNumberOfBytes = Nothing,
      _gdkEncryptionContext = Nothing,
      _gdkKeySpec = Nothing,
      _gdkKeyId = pKeyId_
    }

-- | A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
gdkGrantTokens :: Lens' GenerateDataKey [Text]
gdkGrantTokens = lens _gdkGrantTokens (\s a -> s {_gdkGrantTokens = a}) . _Default . _Coerce

-- | Specifies the length of the data key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For 128-bit (16-byte) and 256-bit (32-byte) data keys, use the @KeySpec@ parameter. You must specify either the @KeySpec@ or the @NumberOfBytes@ parameter (but not both) in every @GenerateDataKey@ request.
gdkNumberOfBytes :: Lens' GenerateDataKey (Maybe Natural)
gdkNumberOfBytes = lens _gdkNumberOfBytes (\s a -> s {_gdkNumberOfBytes = a}) . mapping _Nat

-- | Specifies the encryption context that will be used when encrypting the data key. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
gdkEncryptionContext :: Lens' GenerateDataKey (HashMap Text Text)
gdkEncryptionContext = lens _gdkEncryptionContext (\s a -> s {_gdkEncryptionContext = a}) . _Default . _Map

-- | Specifies the length of the data key. Use @AES_128@ to generate a 128-bit symmetric key, or @AES_256@ to generate a 256-bit symmetric key. You must specify either the @KeySpec@ or the @NumberOfBytes@ parameter (but not both) in every @GenerateDataKey@ request.
gdkKeySpec :: Lens' GenerateDataKey (Maybe DataKeySpec)
gdkKeySpec = lens _gdkKeySpec (\s a -> s {_gdkKeySpec = a})

-- | Identifies the symmetric CMK that encrypts the data key. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
gdkKeyId :: Lens' GenerateDataKey Text
gdkKeyId = lens _gdkKeyId (\s a -> s {_gdkKeyId = a})

instance AWSRequest GenerateDataKey where
  type Rs GenerateDataKey = GenerateDataKeyResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          GenerateDataKeyResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "KeyId")
            <*> (x .:> "Plaintext")
            <*> (x .:> "CiphertextBlob")
      )

instance Hashable GenerateDataKey

instance NFData GenerateDataKey

instance ToHeaders GenerateDataKey where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.GenerateDataKey" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GenerateDataKey where
  toJSON GenerateDataKey' {..} =
    object
      ( catMaybes
          [ ("GrantTokens" .=) <$> _gdkGrantTokens,
            ("NumberOfBytes" .=) <$> _gdkNumberOfBytes,
            ("EncryptionContext" .=) <$> _gdkEncryptionContext,
            ("KeySpec" .=) <$> _gdkKeySpec,
            Just ("KeyId" .= _gdkKeyId)
          ]
      )

instance ToPath GenerateDataKey where
  toPath = const "/"

instance ToQuery GenerateDataKey where
  toQuery = const mempty

-- | /See:/ 'generateDataKeyResponse' smart constructor.
data GenerateDataKeyResponse = GenerateDataKeyResponse'
  { _gdkrrsResponseStatus ::
      !Int,
    _gdkrrsKeyId :: !Text,
    _gdkrrsPlaintext ::
      !(Sensitive Base64),
    _gdkrrsCiphertextBlob ::
      !Base64
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GenerateDataKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdkrrsResponseStatus' - -- | The response status code.
--
-- * 'gdkrrsKeyId' - The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that encrypted the data key.
--
-- * 'gdkrrsPlaintext' - The plaintext data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded. Use this data key to encrypt your data outside of KMS. Then, remove it from memory as soon as possible.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'gdkrrsCiphertextBlob' - The encrypted copy of the data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
generateDataKeyResponse ::
  -- | 'gdkrrsResponseStatus'
  Int ->
  -- | 'gdkrrsKeyId'
  Text ->
  -- | 'gdkrrsPlaintext'
  ByteString ->
  -- | 'gdkrrsCiphertextBlob'
  ByteString ->
  GenerateDataKeyResponse
generateDataKeyResponse
  pResponseStatus_
  pKeyId_
  pPlaintext_
  pCiphertextBlob_ =
    GenerateDataKeyResponse'
      { _gdkrrsResponseStatus =
          pResponseStatus_,
        _gdkrrsKeyId = pKeyId_,
        _gdkrrsPlaintext =
          _Sensitive . _Base64 # pPlaintext_,
        _gdkrrsCiphertextBlob = _Base64 # pCiphertextBlob_
      }

-- | -- | The response status code.
gdkrrsResponseStatus :: Lens' GenerateDataKeyResponse Int
gdkrrsResponseStatus = lens _gdkrrsResponseStatus (\s a -> s {_gdkrrsResponseStatus = a})

-- | The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that encrypted the data key.
gdkrrsKeyId :: Lens' GenerateDataKeyResponse Text
gdkrrsKeyId = lens _gdkrrsKeyId (\s a -> s {_gdkrrsKeyId = a})

-- | The plaintext data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded. Use this data key to encrypt your data outside of KMS. Then, remove it from memory as soon as possible.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gdkrrsPlaintext :: Lens' GenerateDataKeyResponse ByteString
gdkrrsPlaintext = lens _gdkrrsPlaintext (\s a -> s {_gdkrrsPlaintext = a}) . _Sensitive . _Base64

-- | The encrypted copy of the data key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gdkrrsCiphertextBlob :: Lens' GenerateDataKeyResponse ByteString
gdkrrsCiphertextBlob = lens _gdkrrsCiphertextBlob (\s a -> s {_gdkrrsCiphertextBlob = a}) . _Base64

instance NFData GenerateDataKeyResponse

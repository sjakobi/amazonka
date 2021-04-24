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
-- Module      : Network.AWS.KMS.GenerateDataKeyPairWithoutPlaintext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a unique asymmetric data key pair. The @GenerateDataKeyPairWithoutPlaintext@ operation returns a plaintext public key and a copy of the private key that is encrypted under the symmetric CMK you specify. Unlike 'GenerateDataKeyPair' , this operation does not return a plaintext private key.
--
--
-- To generate a data key pair, you must specify a symmetric customer master key (CMK) to encrypt the private key in the data key pair. You cannot use an asymmetric CMK or a CMK in a custom key store. To get the type and origin of your CMK, use the @KeySpec@ field in the 'DescribeKey' response.
--
-- You can use the public key that @GenerateDataKeyPairWithoutPlaintext@ returns to encrypt data or verify a signature outside of AWS KMS. Then, store the encrypted private key with the data. When you are ready to decrypt data or sign a message, you can use the 'Decrypt' operation to decrypt the encrypted private key.
--
-- @GenerateDataKeyPairWithoutPlaintext@ returns a unique data key pair for each request. The bytes in the key are not related to the caller or CMK that is used to encrypt the private key.
--
-- You can use the optional encryption context to add additional security to the encryption operation. If you specify an @EncryptionContext@ , you must specify the same encryption context (a case-sensitive exact match) when decrypting the encrypted data key. Otherwise, the request to decrypt fails with an @InvalidCiphertextException@ . For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : Yes. To perform this operation with a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the @KeyId@ parameter.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:GenerateDataKeyPairWithoutPlaintext> (key policy)
--
-- __Related operations:__
--
--     * 'Decrypt'
--
--     * 'Encrypt'
--
--     * 'GenerateDataKey'
--
--     * 'GenerateDataKeyPair'
--
--     * 'GenerateDataKeyWithoutPlaintext'
module Network.AWS.KMS.GenerateDataKeyPairWithoutPlaintext
  ( -- * Creating a Request
    generateDataKeyPairWithoutPlaintext,
    GenerateDataKeyPairWithoutPlaintext,

    -- * Request Lenses
    gdkpwpGrantTokens,
    gdkpwpEncryptionContext,
    gdkpwpKeyId,
    gdkpwpKeyPairSpec,

    -- * Destructuring the Response
    generateDataKeyPairWithoutPlaintextResponse,
    GenerateDataKeyPairWithoutPlaintextResponse,

    -- * Response Lenses
    gdkpwprrsPublicKey,
    gdkpwprrsKeyPairSpec,
    gdkpwprrsPrivateKeyCiphertextBlob,
    gdkpwprrsKeyId,
    gdkpwprrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'generateDataKeyPairWithoutPlaintext' smart constructor.
data GenerateDataKeyPairWithoutPlaintext = GenerateDataKeyPairWithoutPlaintext'
  { _gdkpwpGrantTokens ::
      !( Maybe
           [Text]
       ),
    _gdkpwpEncryptionContext ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gdkpwpKeyId ::
      !Text,
    _gdkpwpKeyPairSpec ::
      !DataKeyPairSpec
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GenerateDataKeyPairWithoutPlaintext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdkpwpGrantTokens' - A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'gdkpwpEncryptionContext' - Specifies the encryption context that will be used when encrypting the private key in the data key pair. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'gdkpwpKeyId' - Specifies the CMK that encrypts the private key in the data key pair. You must specify a symmetric CMK. You cannot use an asymmetric CMK or a CMK in a custom key store. To get the type and origin of your CMK, use the 'DescribeKey' operation.  To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
--
-- * 'gdkpwpKeyPairSpec' - Determines the type of data key pair that is generated. The AWS KMS rule that restricts the use of asymmetric RSA CMKs to encrypt and decrypt or to sign and verify (but not both), and the rule that permits you to use ECC CMKs only to sign and verify, are not effective outside of AWS KMS.
generateDataKeyPairWithoutPlaintext ::
  -- | 'gdkpwpKeyId'
  Text ->
  -- | 'gdkpwpKeyPairSpec'
  DataKeyPairSpec ->
  GenerateDataKeyPairWithoutPlaintext
generateDataKeyPairWithoutPlaintext
  pKeyId_
  pKeyPairSpec_ =
    GenerateDataKeyPairWithoutPlaintext'
      { _gdkpwpGrantTokens =
          Nothing,
        _gdkpwpEncryptionContext = Nothing,
        _gdkpwpKeyId = pKeyId_,
        _gdkpwpKeyPairSpec = pKeyPairSpec_
      }

-- | A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
gdkpwpGrantTokens :: Lens' GenerateDataKeyPairWithoutPlaintext [Text]
gdkpwpGrantTokens = lens _gdkpwpGrantTokens (\s a -> s {_gdkpwpGrantTokens = a}) . _Default . _Coerce

-- | Specifies the encryption context that will be used when encrypting the private key in the data key pair. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
gdkpwpEncryptionContext :: Lens' GenerateDataKeyPairWithoutPlaintext (HashMap Text Text)
gdkpwpEncryptionContext = lens _gdkpwpEncryptionContext (\s a -> s {_gdkpwpEncryptionContext = a}) . _Default . _Map

-- | Specifies the CMK that encrypts the private key in the data key pair. You must specify a symmetric CMK. You cannot use an asymmetric CMK or a CMK in a custom key store. To get the type and origin of your CMK, use the 'DescribeKey' operation.  To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
gdkpwpKeyId :: Lens' GenerateDataKeyPairWithoutPlaintext Text
gdkpwpKeyId = lens _gdkpwpKeyId (\s a -> s {_gdkpwpKeyId = a})

-- | Determines the type of data key pair that is generated. The AWS KMS rule that restricts the use of asymmetric RSA CMKs to encrypt and decrypt or to sign and verify (but not both), and the rule that permits you to use ECC CMKs only to sign and verify, are not effective outside of AWS KMS.
gdkpwpKeyPairSpec :: Lens' GenerateDataKeyPairWithoutPlaintext DataKeyPairSpec
gdkpwpKeyPairSpec = lens _gdkpwpKeyPairSpec (\s a -> s {_gdkpwpKeyPairSpec = a})

instance
  AWSRequest
    GenerateDataKeyPairWithoutPlaintext
  where
  type
    Rs GenerateDataKeyPairWithoutPlaintext =
      GenerateDataKeyPairWithoutPlaintextResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          GenerateDataKeyPairWithoutPlaintextResponse'
            <$> (x .?> "PublicKey")
            <*> (x .?> "KeyPairSpec")
            <*> (x .?> "PrivateKeyCiphertextBlob")
            <*> (x .?> "KeyId")
            <*> (pure (fromEnum s))
      )

instance Hashable GenerateDataKeyPairWithoutPlaintext

instance NFData GenerateDataKeyPairWithoutPlaintext

instance
  ToHeaders
    GenerateDataKeyPairWithoutPlaintext
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "TrentService.GenerateDataKeyPairWithoutPlaintext" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GenerateDataKeyPairWithoutPlaintext where
  toJSON GenerateDataKeyPairWithoutPlaintext' {..} =
    object
      ( catMaybes
          [ ("GrantTokens" .=) <$> _gdkpwpGrantTokens,
            ("EncryptionContext" .=)
              <$> _gdkpwpEncryptionContext,
            Just ("KeyId" .= _gdkpwpKeyId),
            Just ("KeyPairSpec" .= _gdkpwpKeyPairSpec)
          ]
      )

instance ToPath GenerateDataKeyPairWithoutPlaintext where
  toPath = const "/"

instance ToQuery GenerateDataKeyPairWithoutPlaintext where
  toQuery = const mempty

-- | /See:/ 'generateDataKeyPairWithoutPlaintextResponse' smart constructor.
data GenerateDataKeyPairWithoutPlaintextResponse = GenerateDataKeyPairWithoutPlaintextResponse'
  { _gdkpwprrsPublicKey ::
      !( Maybe
           Base64
       ),
    _gdkpwprrsKeyPairSpec ::
      !( Maybe
           DataKeyPairSpec
       ),
    _gdkpwprrsPrivateKeyCiphertextBlob ::
      !( Maybe
           Base64
       ),
    _gdkpwprrsKeyId ::
      !( Maybe
           Text
       ),
    _gdkpwprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GenerateDataKeyPairWithoutPlaintextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdkpwprrsPublicKey' - The public key (in plaintext).-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'gdkpwprrsKeyPairSpec' - The type of data key pair that was generated.
--
-- * 'gdkpwprrsPrivateKeyCiphertextBlob' - The encrypted copy of the private key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'gdkpwprrsKeyId' - The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that encrypted the private key.
--
-- * 'gdkpwprrsResponseStatus' - -- | The response status code.
generateDataKeyPairWithoutPlaintextResponse ::
  -- | 'gdkpwprrsResponseStatus'
  Int ->
  GenerateDataKeyPairWithoutPlaintextResponse
generateDataKeyPairWithoutPlaintextResponse
  pResponseStatus_ =
    GenerateDataKeyPairWithoutPlaintextResponse'
      { _gdkpwprrsPublicKey =
          Nothing,
        _gdkpwprrsKeyPairSpec =
          Nothing,
        _gdkpwprrsPrivateKeyCiphertextBlob =
          Nothing,
        _gdkpwprrsKeyId = Nothing,
        _gdkpwprrsResponseStatus =
          pResponseStatus_
      }

-- | The public key (in plaintext).-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gdkpwprrsPublicKey :: Lens' GenerateDataKeyPairWithoutPlaintextResponse (Maybe ByteString)
gdkpwprrsPublicKey = lens _gdkpwprrsPublicKey (\s a -> s {_gdkpwprrsPublicKey = a}) . mapping _Base64

-- | The type of data key pair that was generated.
gdkpwprrsKeyPairSpec :: Lens' GenerateDataKeyPairWithoutPlaintextResponse (Maybe DataKeyPairSpec)
gdkpwprrsKeyPairSpec = lens _gdkpwprrsKeyPairSpec (\s a -> s {_gdkpwprrsKeyPairSpec = a})

-- | The encrypted copy of the private key. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
gdkpwprrsPrivateKeyCiphertextBlob :: Lens' GenerateDataKeyPairWithoutPlaintextResponse (Maybe ByteString)
gdkpwprrsPrivateKeyCiphertextBlob = lens _gdkpwprrsPrivateKeyCiphertextBlob (\s a -> s {_gdkpwprrsPrivateKeyCiphertextBlob = a}) . mapping _Base64

-- | The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that encrypted the private key.
gdkpwprrsKeyId :: Lens' GenerateDataKeyPairWithoutPlaintextResponse (Maybe Text)
gdkpwprrsKeyId = lens _gdkpwprrsKeyId (\s a -> s {_gdkpwprrsKeyId = a})

-- | -- | The response status code.
gdkpwprrsResponseStatus :: Lens' GenerateDataKeyPairWithoutPlaintextResponse Int
gdkpwprrsResponseStatus = lens _gdkpwprrsResponseStatus (\s a -> s {_gdkpwprrsResponseStatus = a})

instance
  NFData
    GenerateDataKeyPairWithoutPlaintextResponse

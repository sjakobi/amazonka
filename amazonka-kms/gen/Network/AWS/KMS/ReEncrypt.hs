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
-- Module      : Network.AWS.KMS.ReEncrypt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Decrypts ciphertext and then reencrypts it entirely within AWS KMS. You can use this operation to change the customer master key (CMK) under which data is encrypted, such as when you <https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually manually rotate> a CMK or change the CMK that protects a ciphertext. You can also use it to reencrypt ciphertext under the same CMK, such as to change the <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context encryption context> of a ciphertext.
--
--
-- The @ReEncrypt@ operation can decrypt ciphertext that was encrypted by using an AWS KMS CMK in an AWS KMS operation, such as 'Encrypt' or 'GenerateDataKey' . It can also decrypt ciphertext that was encrypted by using the public key of an <https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html#asymmetric-cmks asymmetric CMK> outside of AWS KMS. However, it cannot decrypt ciphertext produced by other libraries, such as the <https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/ AWS Encryption SDK> or <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html Amazon S3 client-side encryption> . These libraries return a ciphertext format that is incompatible with AWS KMS.
--
-- When you use the @ReEncrypt@ operation, you need to provide information for the decrypt operation and the subsequent encrypt operation.
--
--     * If your ciphertext was encrypted under an asymmetric CMK, you must use the @SourceKeyId@ parameter to identify the CMK that encrypted the ciphertext. You must also supply the encryption algorithm that was used. This information is required to decrypt the data.
--
--     * If your ciphertext was encrypted under a symmetric CMK, the @SourceKeyId@ parameter is optional. AWS KMS can get this information from metadata that it adds to the symmetric ciphertext blob. This feature adds durability to your implementation by ensuring that authorized users can decrypt ciphertext decades after it was encrypted, even if they've lost track of the CMK ID. However, specifying the source CMK is always recommended as a best practice. When you use the @SourceKeyId@ parameter to specify a CMK, AWS KMS uses only the CMK you specify. If the ciphertext was encrypted under a different CMK, the @ReEncrypt@ operation fails. This practice ensures that you use the CMK that you intend.
--
--     * To reencrypt the data, you must use the @DestinationKeyId@ parameter specify the CMK that re-encrypts the data after it is decrypted. You can select a symmetric or asymmetric CMK. If the destination CMK is an asymmetric CMK, you must also provide the encryption algorithm. The algorithm that you choose must be compatible with the CMK.
--
-- /Important:/ When you use an asymmetric CMK to encrypt or reencrypt data, be sure to record the CMK and encryption algorithm that you choose. You will be required to provide the same CMK and encryption algorithm when you decrypt the data. If the CMK and algorithm do not match the values used to encrypt the data, the decrypt operation fails.
--
-- You are not required to supply the CMK ID and encryption algorithm when you decrypt with symmetric CMKs because AWS KMS stores this information in the ciphertext blob. AWS KMS cannot store metadata in ciphertext generated with asymmetric keys. The standard format for asymmetric key ciphertext does not include configurable fields.
--
--
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : Yes. The source CMK and destination CMK can be in different AWS accounts. Either or both CMKs can be in a different account than the caller.
--
-- __Required permissions__ :
--
--     * <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ReEncryptFrom> permission on the source CMK (key policy)
--
--     * <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ReEncryptTo> permission on the destination CMK (key policy)
--
--
--
-- To permit reencryption from or to a CMK, include the @"kms:ReEncrypt*"@ permission in your <https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html key policy> . This permission is automatically included in the key policy when you use the console to create a CMK. But you must include it manually when you create a CMK programmatically or when you use the 'PutKeyPolicy' operation to set a key policy.
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
module Network.AWS.KMS.ReEncrypt
  ( -- * Creating a Request
    reEncrypt,
    ReEncrypt,

    -- * Request Lenses
    reDestinationEncryptionContext,
    reGrantTokens,
    reSourceEncryptionContext,
    reSourceKeyId,
    reDestinationEncryptionAlgorithm,
    reSourceEncryptionAlgorithm,
    reCiphertextBlob,
    reDestinationKeyId,

    -- * Destructuring the Response
    reEncryptResponse,
    ReEncryptResponse,

    -- * Response Lenses
    rerrsSourceKeyId,
    rerrsDestinationEncryptionAlgorithm,
    rerrsCiphertextBlob,
    rerrsSourceEncryptionAlgorithm,
    rerrsKeyId,
    rerrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'reEncrypt' smart constructor.
data ReEncrypt = ReEncrypt'
  { _reDestinationEncryptionContext ::
      !(Maybe (Map Text Text)),
    _reGrantTokens :: !(Maybe [Text]),
    _reSourceEncryptionContext ::
      !(Maybe (Map Text Text)),
    _reSourceKeyId :: !(Maybe Text),
    _reDestinationEncryptionAlgorithm ::
      !(Maybe EncryptionAlgorithmSpec),
    _reSourceEncryptionAlgorithm ::
      !(Maybe EncryptionAlgorithmSpec),
    _reCiphertextBlob :: !Base64,
    _reDestinationKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReEncrypt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reDestinationEncryptionContext' - Specifies that encryption context to use when the reencrypting the data. A destination encryption context is valid only when the destination CMK is a symmetric CMK. The standard ciphertext format for asymmetric CMKs does not include fields for metadata. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'reGrantTokens' - A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'reSourceEncryptionContext' - Specifies the encryption context to use to decrypt the ciphertext. Enter the same encryption context that was used to encrypt the ciphertext. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'reSourceKeyId' - Specifies the customer master key (CMK) that AWS KMS will use to decrypt the ciphertext before it is re-encrypted. Enter a key ID of the CMK that was used to encrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK. If you used a symmetric CMK, AWS KMS can get the CMK from metadata that it adds to the symmetric ciphertext blob. However, it is always recommended as a best practice. This practice ensures that you use the CMK that you intend. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
--
-- * 'reDestinationEncryptionAlgorithm' - Specifies the encryption algorithm that AWS KMS will use to reecrypt the data after it has decrypted it. The default value, @SYMMETRIC_DEFAULT@ , represents the encryption algorithm used for symmetric CMKs. This parameter is required only when the destination CMK is an asymmetric CMK.
--
-- * 'reSourceEncryptionAlgorithm' - Specifies the encryption algorithm that AWS KMS will use to decrypt the ciphertext before it is reencrypted. The default value, @SYMMETRIC_DEFAULT@ , represents the algorithm used for symmetric CMKs. Specify the same algorithm that was used to encrypt the ciphertext. If you specify a different algorithm, the decrypt attempt fails. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK.
--
-- * 'reCiphertextBlob' - Ciphertext of the data to reencrypt.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'reDestinationKeyId' - A unique identifier for the CMK that is used to reencrypt the data. Specify a symmetric or asymmetric CMK with a @KeyUsage@ value of @ENCRYPT_DECRYPT@ . To find the @KeyUsage@ value of a CMK, use the 'DescribeKey' operation. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
reEncrypt ::
  -- | 'reCiphertextBlob'
  ByteString ->
  -- | 'reDestinationKeyId'
  Text ->
  ReEncrypt
reEncrypt pCiphertextBlob_ pDestinationKeyId_ =
  ReEncrypt'
    { _reDestinationEncryptionContext =
        Nothing,
      _reGrantTokens = Nothing,
      _reSourceEncryptionContext = Nothing,
      _reSourceKeyId = Nothing,
      _reDestinationEncryptionAlgorithm = Nothing,
      _reSourceEncryptionAlgorithm = Nothing,
      _reCiphertextBlob = _Base64 # pCiphertextBlob_,
      _reDestinationKeyId = pDestinationKeyId_
    }

-- | Specifies that encryption context to use when the reencrypting the data. A destination encryption context is valid only when the destination CMK is a symmetric CMK. The standard ciphertext format for asymmetric CMKs does not include fields for metadata. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
reDestinationEncryptionContext :: Lens' ReEncrypt (HashMap Text Text)
reDestinationEncryptionContext = lens _reDestinationEncryptionContext (\s a -> s {_reDestinationEncryptionContext = a}) . _Default . _Map

-- | A list of grant tokens. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token Grant Tokens> in the /AWS Key Management Service Developer Guide/ .
reGrantTokens :: Lens' ReEncrypt [Text]
reGrantTokens = lens _reGrantTokens (\s a -> s {_reGrantTokens = a}) . _Default . _Coerce

-- | Specifies the encryption context to use to decrypt the ciphertext. Enter the same encryption context that was used to encrypt the ciphertext. An /encryption context/ is a collection of non-secret key-value pairs that represents additional authenticated data. When you use an encryption context to encrypt data, you must specify the same (an exact case-sensitive match) encryption context to decrypt the data. An encryption context is optional when encrypting with a symmetric CMK, but it is highly recommended. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context> in the /AWS Key Management Service Developer Guide/ .
reSourceEncryptionContext :: Lens' ReEncrypt (HashMap Text Text)
reSourceEncryptionContext = lens _reSourceEncryptionContext (\s a -> s {_reSourceEncryptionContext = a}) . _Default . _Map

-- | Specifies the customer master key (CMK) that AWS KMS will use to decrypt the ciphertext before it is re-encrypted. Enter a key ID of the CMK that was used to encrypt the ciphertext. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK. If you used a symmetric CMK, AWS KMS can get the CMK from metadata that it adds to the symmetric ciphertext blob. However, it is always recommended as a best practice. This practice ensures that you use the CMK that you intend. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
reSourceKeyId :: Lens' ReEncrypt (Maybe Text)
reSourceKeyId = lens _reSourceKeyId (\s a -> s {_reSourceKeyId = a})

-- | Specifies the encryption algorithm that AWS KMS will use to reecrypt the data after it has decrypted it. The default value, @SYMMETRIC_DEFAULT@ , represents the encryption algorithm used for symmetric CMKs. This parameter is required only when the destination CMK is an asymmetric CMK.
reDestinationEncryptionAlgorithm :: Lens' ReEncrypt (Maybe EncryptionAlgorithmSpec)
reDestinationEncryptionAlgorithm = lens _reDestinationEncryptionAlgorithm (\s a -> s {_reDestinationEncryptionAlgorithm = a})

-- | Specifies the encryption algorithm that AWS KMS will use to decrypt the ciphertext before it is reencrypted. The default value, @SYMMETRIC_DEFAULT@ , represents the algorithm used for symmetric CMKs. Specify the same algorithm that was used to encrypt the ciphertext. If you specify a different algorithm, the decrypt attempt fails. This parameter is required only when the ciphertext was encrypted under an asymmetric CMK.
reSourceEncryptionAlgorithm :: Lens' ReEncrypt (Maybe EncryptionAlgorithmSpec)
reSourceEncryptionAlgorithm = lens _reSourceEncryptionAlgorithm (\s a -> s {_reSourceEncryptionAlgorithm = a})

-- | Ciphertext of the data to reencrypt.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
reCiphertextBlob :: Lens' ReEncrypt ByteString
reCiphertextBlob = lens _reCiphertextBlob (\s a -> s {_reCiphertextBlob = a}) . _Base64

-- | A unique identifier for the CMK that is used to reencrypt the data. Specify a symmetric or asymmetric CMK with a @KeyUsage@ value of @ENCRYPT_DECRYPT@ . To find the @KeyUsage@ value of a CMK, use the 'DescribeKey' operation. To specify a CMK, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. When using an alias name, prefix it with @"alias/"@ . To specify a CMK in a different AWS account, you must use the key ARN or alias ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@      * Alias name: @alias/ExampleAlias@      * Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' . To get the alias name and alias ARN, use 'ListAliases' .
reDestinationKeyId :: Lens' ReEncrypt Text
reDestinationKeyId = lens _reDestinationKeyId (\s a -> s {_reDestinationKeyId = a})

instance AWSRequest ReEncrypt where
  type Rs ReEncrypt = ReEncryptResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          ReEncryptResponse'
            <$> (x .?> "SourceKeyId")
            <*> (x .?> "DestinationEncryptionAlgorithm")
            <*> (x .?> "CiphertextBlob")
            <*> (x .?> "SourceEncryptionAlgorithm")
            <*> (x .?> "KeyId")
            <*> (pure (fromEnum s))
      )

instance Hashable ReEncrypt

instance NFData ReEncrypt

instance ToHeaders ReEncrypt where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ReEncrypt" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ReEncrypt where
  toJSON ReEncrypt' {..} =
    object
      ( catMaybes
          [ ("DestinationEncryptionContext" .=)
              <$> _reDestinationEncryptionContext,
            ("GrantTokens" .=) <$> _reGrantTokens,
            ("SourceEncryptionContext" .=)
              <$> _reSourceEncryptionContext,
            ("SourceKeyId" .=) <$> _reSourceKeyId,
            ("DestinationEncryptionAlgorithm" .=)
              <$> _reDestinationEncryptionAlgorithm,
            ("SourceEncryptionAlgorithm" .=)
              <$> _reSourceEncryptionAlgorithm,
            Just ("CiphertextBlob" .= _reCiphertextBlob),
            Just ("DestinationKeyId" .= _reDestinationKeyId)
          ]
      )

instance ToPath ReEncrypt where
  toPath = const "/"

instance ToQuery ReEncrypt where
  toQuery = const mempty

-- | /See:/ 'reEncryptResponse' smart constructor.
data ReEncryptResponse = ReEncryptResponse'
  { _rerrsSourceKeyId ::
      !(Maybe Text),
    _rerrsDestinationEncryptionAlgorithm ::
      !(Maybe EncryptionAlgorithmSpec),
    _rerrsCiphertextBlob ::
      !(Maybe Base64),
    _rerrsSourceEncryptionAlgorithm ::
      !(Maybe EncryptionAlgorithmSpec),
    _rerrsKeyId :: !(Maybe Text),
    _rerrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReEncryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rerrsSourceKeyId' - Unique identifier of the CMK used to originally encrypt the data.
--
-- * 'rerrsDestinationEncryptionAlgorithm' - The encryption algorithm that was used to reencrypt the data.
--
-- * 'rerrsCiphertextBlob' - The reencrypted data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'rerrsSourceEncryptionAlgorithm' - The encryption algorithm that was used to decrypt the ciphertext before it was reencrypted.
--
-- * 'rerrsKeyId' - The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that was used to reencrypt the data.
--
-- * 'rerrsResponseStatus' - -- | The response status code.
reEncryptResponse ::
  -- | 'rerrsResponseStatus'
  Int ->
  ReEncryptResponse
reEncryptResponse pResponseStatus_ =
  ReEncryptResponse'
    { _rerrsSourceKeyId = Nothing,
      _rerrsDestinationEncryptionAlgorithm = Nothing,
      _rerrsCiphertextBlob = Nothing,
      _rerrsSourceEncryptionAlgorithm = Nothing,
      _rerrsKeyId = Nothing,
      _rerrsResponseStatus = pResponseStatus_
    }

-- | Unique identifier of the CMK used to originally encrypt the data.
rerrsSourceKeyId :: Lens' ReEncryptResponse (Maybe Text)
rerrsSourceKeyId = lens _rerrsSourceKeyId (\s a -> s {_rerrsSourceKeyId = a})

-- | The encryption algorithm that was used to reencrypt the data.
rerrsDestinationEncryptionAlgorithm :: Lens' ReEncryptResponse (Maybe EncryptionAlgorithmSpec)
rerrsDestinationEncryptionAlgorithm = lens _rerrsDestinationEncryptionAlgorithm (\s a -> s {_rerrsDestinationEncryptionAlgorithm = a})

-- | The reencrypted data. When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
rerrsCiphertextBlob :: Lens' ReEncryptResponse (Maybe ByteString)
rerrsCiphertextBlob = lens _rerrsCiphertextBlob (\s a -> s {_rerrsCiphertextBlob = a}) . mapping _Base64

-- | The encryption algorithm that was used to decrypt the ciphertext before it was reencrypted.
rerrsSourceEncryptionAlgorithm :: Lens' ReEncryptResponse (Maybe EncryptionAlgorithmSpec)
rerrsSourceEncryptionAlgorithm = lens _rerrsSourceEncryptionAlgorithm (\s a -> s {_rerrsSourceEncryptionAlgorithm = a})

-- | The Amazon Resource Name (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN> ) of the CMK that was used to reencrypt the data.
rerrsKeyId :: Lens' ReEncryptResponse (Maybe Text)
rerrsKeyId = lens _rerrsKeyId (\s a -> s {_rerrsKeyId = a})

-- | -- | The response status code.
rerrsResponseStatus :: Lens' ReEncryptResponse Int
rerrsResponseStatus = lens _rerrsResponseStatus (\s a -> s {_rerrsResponseStatus = a})

instance NFData ReEncryptResponse

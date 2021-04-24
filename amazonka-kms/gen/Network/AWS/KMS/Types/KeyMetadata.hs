{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.KeyMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyMetadata where

import Network.AWS.KMS.Types.CustomerMasterKeySpec
import Network.AWS.KMS.Types.EncryptionAlgorithmSpec
import Network.AWS.KMS.Types.ExpirationModelType
import Network.AWS.KMS.Types.KeyManagerType
import Network.AWS.KMS.Types.KeyState
import Network.AWS.KMS.Types.KeyUsageType
import Network.AWS.KMS.Types.OriginType
import Network.AWS.KMS.Types.SigningAlgorithmSpec
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains metadata about a customer master key (CMK).
--
--
-- This data type is used as a response element for the 'CreateKey' and 'DescribeKey' operations.
--
--
-- /See:/ 'keyMetadata' smart constructor.
data KeyMetadata = KeyMetadata'
  { _kmSigningAlgorithms ::
      !(Maybe [SigningAlgorithmSpec]),
    _kmKeyManager :: !(Maybe KeyManagerType),
    _kmOrigin :: !(Maybe OriginType),
    _kmAWSAccountId :: !(Maybe Text),
    _kmCustomKeyStoreId :: !(Maybe Text),
    _kmEncryptionAlgorithms ::
      !(Maybe [EncryptionAlgorithmSpec]),
    _kmCloudHSMClusterId :: !(Maybe Text),
    _kmKeyState :: !(Maybe KeyState),
    _kmARN :: !(Maybe Text),
    _kmCreationDate :: !(Maybe POSIX),
    _kmValidTo :: !(Maybe POSIX),
    _kmEnabled :: !(Maybe Bool),
    _kmExpirationModel ::
      !(Maybe ExpirationModelType),
    _kmDescription :: !(Maybe Text),
    _kmDeletionDate :: !(Maybe POSIX),
    _kmKeyUsage :: !(Maybe KeyUsageType),
    _kmCustomerMasterKeySpec ::
      !(Maybe CustomerMasterKeySpec),
    _kmKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'KeyMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kmSigningAlgorithms' - The signing algorithms that the CMK supports. You cannot use the CMK with other signing algorithms within AWS KMS. This field appears only when the @KeyUsage@ of the CMK is @SIGN_VERIFY@ .
--
-- * 'kmKeyManager' - The manager of the CMK. CMKs in your AWS account are either customer managed or AWS managed. For more information about the difference, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys Customer Master Keys> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'kmOrigin' - The source of the CMK's key material. When this value is @AWS_KMS@ , AWS KMS created the key material. When this value is @EXTERNAL@ , the key material was imported from your existing key management infrastructure or the CMK lacks key material. When this value is @AWS_CLOUDHSM@ , the key material was created in the AWS CloudHSM cluster associated with a custom key store.
--
-- * 'kmAWSAccountId' - The twelve-digit account ID of the AWS account that owns the CMK.
--
-- * 'kmCustomKeyStoreId' - A unique identifier for the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> that contains the CMK. This value is present only when the CMK is created in a custom key store.
--
-- * 'kmEncryptionAlgorithms' - The encryption algorithms that the CMK supports. You cannot use the CMK with other encryption algorithms within AWS KMS. This field appears only when the @KeyUsage@ of the CMK is @ENCRYPT_DECRYPT@ .
--
-- * 'kmCloudHSMClusterId' - The cluster ID of the AWS CloudHSM cluster that contains the key material for the CMK. When you create a CMK in a <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> , AWS KMS creates the key material for the CMK in the associated AWS CloudHSM cluster. This value is present only when the CMK is created in a custom key store.
--
-- * 'kmKeyState' - The current status of the CMK. For more information about how key state affects the use of a CMK, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html Key state: Effect on your CMK> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'kmARN' - The Amazon Resource Name (ARN) of the CMK. For examples, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms AWS Key Management Service (AWS KMS)> in the Example ARNs section of the /AWS General Reference/ .
--
-- * 'kmCreationDate' - The date and time when the CMK was created.
--
-- * 'kmValidTo' - The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. This value is present only for CMKs whose @Origin@ is @EXTERNAL@ and whose @ExpirationModel@ is @KEY_MATERIAL_EXPIRES@ , otherwise this value is omitted.
--
-- * 'kmEnabled' - Specifies whether the CMK is enabled. When @KeyState@ is @Enabled@ this value is true, otherwise it is false.
--
-- * 'kmExpirationModel' - Specifies whether the CMK's key material expires. This value is present only when @Origin@ is @EXTERNAL@ , otherwise this value is omitted.
--
-- * 'kmDescription' - The description of the CMK.
--
-- * 'kmDeletionDate' - The date and time after which AWS KMS deletes the CMK. This value is present only when @KeyState@ is @PendingDeletion@ .
--
-- * 'kmKeyUsage' - The <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> for which you can use the CMK.
--
-- * 'kmCustomerMasterKeySpec' - Describes the type of key material in the CMK.
--
-- * 'kmKeyId' - The globally unique identifier for the CMK.
keyMetadata ::
  -- | 'kmKeyId'
  Text ->
  KeyMetadata
keyMetadata pKeyId_ =
  KeyMetadata'
    { _kmSigningAlgorithms = Nothing,
      _kmKeyManager = Nothing,
      _kmOrigin = Nothing,
      _kmAWSAccountId = Nothing,
      _kmCustomKeyStoreId = Nothing,
      _kmEncryptionAlgorithms = Nothing,
      _kmCloudHSMClusterId = Nothing,
      _kmKeyState = Nothing,
      _kmARN = Nothing,
      _kmCreationDate = Nothing,
      _kmValidTo = Nothing,
      _kmEnabled = Nothing,
      _kmExpirationModel = Nothing,
      _kmDescription = Nothing,
      _kmDeletionDate = Nothing,
      _kmKeyUsage = Nothing,
      _kmCustomerMasterKeySpec = Nothing,
      _kmKeyId = pKeyId_
    }

-- | The signing algorithms that the CMK supports. You cannot use the CMK with other signing algorithms within AWS KMS. This field appears only when the @KeyUsage@ of the CMK is @SIGN_VERIFY@ .
kmSigningAlgorithms :: Lens' KeyMetadata [SigningAlgorithmSpec]
kmSigningAlgorithms = lens _kmSigningAlgorithms (\s a -> s {_kmSigningAlgorithms = a}) . _Default . _Coerce

-- | The manager of the CMK. CMKs in your AWS account are either customer managed or AWS managed. For more information about the difference, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys Customer Master Keys> in the /AWS Key Management Service Developer Guide/ .
kmKeyManager :: Lens' KeyMetadata (Maybe KeyManagerType)
kmKeyManager = lens _kmKeyManager (\s a -> s {_kmKeyManager = a})

-- | The source of the CMK's key material. When this value is @AWS_KMS@ , AWS KMS created the key material. When this value is @EXTERNAL@ , the key material was imported from your existing key management infrastructure or the CMK lacks key material. When this value is @AWS_CLOUDHSM@ , the key material was created in the AWS CloudHSM cluster associated with a custom key store.
kmOrigin :: Lens' KeyMetadata (Maybe OriginType)
kmOrigin = lens _kmOrigin (\s a -> s {_kmOrigin = a})

-- | The twelve-digit account ID of the AWS account that owns the CMK.
kmAWSAccountId :: Lens' KeyMetadata (Maybe Text)
kmAWSAccountId = lens _kmAWSAccountId (\s a -> s {_kmAWSAccountId = a})

-- | A unique identifier for the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> that contains the CMK. This value is present only when the CMK is created in a custom key store.
kmCustomKeyStoreId :: Lens' KeyMetadata (Maybe Text)
kmCustomKeyStoreId = lens _kmCustomKeyStoreId (\s a -> s {_kmCustomKeyStoreId = a})

-- | The encryption algorithms that the CMK supports. You cannot use the CMK with other encryption algorithms within AWS KMS. This field appears only when the @KeyUsage@ of the CMK is @ENCRYPT_DECRYPT@ .
kmEncryptionAlgorithms :: Lens' KeyMetadata [EncryptionAlgorithmSpec]
kmEncryptionAlgorithms = lens _kmEncryptionAlgorithms (\s a -> s {_kmEncryptionAlgorithms = a}) . _Default . _Coerce

-- | The cluster ID of the AWS CloudHSM cluster that contains the key material for the CMK. When you create a CMK in a <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> , AWS KMS creates the key material for the CMK in the associated AWS CloudHSM cluster. This value is present only when the CMK is created in a custom key store.
kmCloudHSMClusterId :: Lens' KeyMetadata (Maybe Text)
kmCloudHSMClusterId = lens _kmCloudHSMClusterId (\s a -> s {_kmCloudHSMClusterId = a})

-- | The current status of the CMK. For more information about how key state affects the use of a CMK, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html Key state: Effect on your CMK> in the /AWS Key Management Service Developer Guide/ .
kmKeyState :: Lens' KeyMetadata (Maybe KeyState)
kmKeyState = lens _kmKeyState (\s a -> s {_kmKeyState = a})

-- | The Amazon Resource Name (ARN) of the CMK. For examples, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms AWS Key Management Service (AWS KMS)> in the Example ARNs section of the /AWS General Reference/ .
kmARN :: Lens' KeyMetadata (Maybe Text)
kmARN = lens _kmARN (\s a -> s {_kmARN = a})

-- | The date and time when the CMK was created.
kmCreationDate :: Lens' KeyMetadata (Maybe UTCTime)
kmCreationDate = lens _kmCreationDate (\s a -> s {_kmCreationDate = a}) . mapping _Time

-- | The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. This value is present only for CMKs whose @Origin@ is @EXTERNAL@ and whose @ExpirationModel@ is @KEY_MATERIAL_EXPIRES@ , otherwise this value is omitted.
kmValidTo :: Lens' KeyMetadata (Maybe UTCTime)
kmValidTo = lens _kmValidTo (\s a -> s {_kmValidTo = a}) . mapping _Time

-- | Specifies whether the CMK is enabled. When @KeyState@ is @Enabled@ this value is true, otherwise it is false.
kmEnabled :: Lens' KeyMetadata (Maybe Bool)
kmEnabled = lens _kmEnabled (\s a -> s {_kmEnabled = a})

-- | Specifies whether the CMK's key material expires. This value is present only when @Origin@ is @EXTERNAL@ , otherwise this value is omitted.
kmExpirationModel :: Lens' KeyMetadata (Maybe ExpirationModelType)
kmExpirationModel = lens _kmExpirationModel (\s a -> s {_kmExpirationModel = a})

-- | The description of the CMK.
kmDescription :: Lens' KeyMetadata (Maybe Text)
kmDescription = lens _kmDescription (\s a -> s {_kmDescription = a})

-- | The date and time after which AWS KMS deletes the CMK. This value is present only when @KeyState@ is @PendingDeletion@ .
kmDeletionDate :: Lens' KeyMetadata (Maybe UTCTime)
kmDeletionDate = lens _kmDeletionDate (\s a -> s {_kmDeletionDate = a}) . mapping _Time

-- | The <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations cryptographic operations> for which you can use the CMK.
kmKeyUsage :: Lens' KeyMetadata (Maybe KeyUsageType)
kmKeyUsage = lens _kmKeyUsage (\s a -> s {_kmKeyUsage = a})

-- | Describes the type of key material in the CMK.
kmCustomerMasterKeySpec :: Lens' KeyMetadata (Maybe CustomerMasterKeySpec)
kmCustomerMasterKeySpec = lens _kmCustomerMasterKeySpec (\s a -> s {_kmCustomerMasterKeySpec = a})

-- | The globally unique identifier for the CMK.
kmKeyId :: Lens' KeyMetadata Text
kmKeyId = lens _kmKeyId (\s a -> s {_kmKeyId = a})

instance FromJSON KeyMetadata where
  parseJSON =
    withObject
      "KeyMetadata"
      ( \x ->
          KeyMetadata'
            <$> (x .:? "SigningAlgorithms" .!= mempty)
            <*> (x .:? "KeyManager")
            <*> (x .:? "Origin")
            <*> (x .:? "AWSAccountId")
            <*> (x .:? "CustomKeyStoreId")
            <*> (x .:? "EncryptionAlgorithms" .!= mempty)
            <*> (x .:? "CloudHsmClusterId")
            <*> (x .:? "KeyState")
            <*> (x .:? "Arn")
            <*> (x .:? "CreationDate")
            <*> (x .:? "ValidTo")
            <*> (x .:? "Enabled")
            <*> (x .:? "ExpirationModel")
            <*> (x .:? "Description")
            <*> (x .:? "DeletionDate")
            <*> (x .:? "KeyUsage")
            <*> (x .:? "CustomerMasterKeySpec")
            <*> (x .: "KeyId")
      )

instance Hashable KeyMetadata

instance NFData KeyMetadata

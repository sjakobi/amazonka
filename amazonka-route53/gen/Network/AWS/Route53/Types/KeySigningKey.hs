{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.KeySigningKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.KeySigningKey where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

-- | A key-signing key (KSK) is a complex type that represents a public/private key pair. The private key is used to generate a digital signature for the zone signing key (ZSK). The public key is stored in the DNS and is used to authenticate the ZSK. A KSK is always associated with a hosted zone; it cannot exist by itself.
--
--
--
-- /See:/ 'keySigningKey' smart constructor.
data KeySigningKey = KeySigningKey'
  { _kskDigestAlgorithmType ::
      !(Maybe Int),
    _kskLastModifiedDate :: !(Maybe ISO8601),
    _kskStatusMessage :: !(Maybe Text),
    _kskStatus :: !(Maybe Text),
    _kskCreatedDate :: !(Maybe ISO8601),
    _kskSigningAlgorithmMnemonic ::
      !(Maybe Text),
    _kskPublicKey :: !(Maybe Text),
    _kskDNSKEYRecord :: !(Maybe Text),
    _kskDigestValue :: !(Maybe Text),
    _kskDigestAlgorithmMnemonic ::
      !(Maybe Text),
    _kskName :: !(Maybe Text),
    _kskSigningAlgorithmType :: !(Maybe Int),
    _kskFlag :: !(Maybe Int),
    _kskKMSARN :: !(Maybe Text),
    _kskKeyTag :: !(Maybe Nat),
    _kskDSRecord :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'KeySigningKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kskDigestAlgorithmType' - An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.3 RFC-8624 Section 3.3> .
--
-- * 'kskLastModifiedDate' - The last time that the key-signing key (KSK) was changed.
--
-- * 'kskStatusMessage' - The status message provided for the following key-signing key (KSK) statuses: @ACTION_NEEDED@ or @INTERNAL_FAILURE@ . The status message includes information about what the problem might be and steps that you can take to correct the issue.
--
-- * 'kskStatus' - A string that represents the current key-signing key (KSK) status. Status can have one of the following values:     * ACTIVE    * The KSK is being used for signing.     * INACTIVE    * The KSK is not being used for signing.     * DELETING    * The KSK is in the process of being deleted.     * ACTION_NEEDED    * There is a problem with the KSK that requires you to take action to resolve. For example, the customer managed customer master key (CMK) might have been deleted, or the permissions for the customer managed CMK might have been changed.     * INTERNAL_FAILURE    * There was an error during a request. Before you can continue to work with DNSSEC signing, including actions that involve this KSK, you must correct the problem. For example, you may need to activate or deactivate the KSK.
--
-- * 'kskCreatedDate' - The date when the key-signing key (KSK) was created.
--
-- * 'kskSigningAlgorithmMnemonic' - A string used to represent the signing algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.1 RFC-8624 Section 3.1> .
--
-- * 'kskPublicKey' - The public key, represented as a Base64 encoding, as required by <https://tools.ietf.org/rfc/rfc4034.txt RFC-4034 Page 5> .
--
-- * 'kskDNSKEYRecord' - A string that represents a DNSKEY record.
--
-- * 'kskDigestValue' - A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system.
--
-- * 'kskDigestAlgorithmMnemonic' - A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.3 RFC-8624 Section 3.3> .
--
-- * 'kskName' - A string used to identify a key-signing key (KSK). @Name@ can include numbers, letters, and underscores (_). @Name@ must be unique for each key-signing key in the same hosted zone.
--
-- * 'kskSigningAlgorithmType' - An integer used to represent the signing algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.1 RFC-8624 Section 3.1> .
--
-- * 'kskFlag' - An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257.
--
-- * 'kskKMSARN' - The Amazon resource name (ARN) used to identify the customer managed customer master key (CMK) in AWS Key Management Service (AWS KMS). The @KmsArn@ must be unique for each key-signing key (KSK) in a single hosted zone. You must configure the CMK as follows:     * Status    * Enabled     * Key spec    * ECC_NIST_P256     * Key usage    * Sign and verify     * Key policy    * The key policy must give permission for the following actions:     * DescribeKey     * GetPublicKey     * Sign The key policy must also include the Amazon Route 53 service in the principal for your account. Specify the following:     * @"Service": "api-service.dnssec.route53.aws.internal"@  For more information about working with the customer managed CMK in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html AWS Key Management Service concepts> .
--
-- * 'kskKeyTag' - An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in <https://tools.ietf.org/rfc/rfc4034.txt RFC-4034 Appendix B> .
--
-- * 'kskDSRecord' - A string that represents a delegation signer (DS) record.
keySigningKey ::
  KeySigningKey
keySigningKey =
  KeySigningKey'
    { _kskDigestAlgorithmType = Nothing,
      _kskLastModifiedDate = Nothing,
      _kskStatusMessage = Nothing,
      _kskStatus = Nothing,
      _kskCreatedDate = Nothing,
      _kskSigningAlgorithmMnemonic = Nothing,
      _kskPublicKey = Nothing,
      _kskDNSKEYRecord = Nothing,
      _kskDigestValue = Nothing,
      _kskDigestAlgorithmMnemonic = Nothing,
      _kskName = Nothing,
      _kskSigningAlgorithmType = Nothing,
      _kskFlag = Nothing,
      _kskKMSARN = Nothing,
      _kskKeyTag = Nothing,
      _kskDSRecord = Nothing
    }

-- | An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.3 RFC-8624 Section 3.3> .
kskDigestAlgorithmType :: Lens' KeySigningKey (Maybe Int)
kskDigestAlgorithmType = lens _kskDigestAlgorithmType (\s a -> s {_kskDigestAlgorithmType = a})

-- | The last time that the key-signing key (KSK) was changed.
kskLastModifiedDate :: Lens' KeySigningKey (Maybe UTCTime)
kskLastModifiedDate = lens _kskLastModifiedDate (\s a -> s {_kskLastModifiedDate = a}) . mapping _Time

-- | The status message provided for the following key-signing key (KSK) statuses: @ACTION_NEEDED@ or @INTERNAL_FAILURE@ . The status message includes information about what the problem might be and steps that you can take to correct the issue.
kskStatusMessage :: Lens' KeySigningKey (Maybe Text)
kskStatusMessage = lens _kskStatusMessage (\s a -> s {_kskStatusMessage = a})

-- | A string that represents the current key-signing key (KSK) status. Status can have one of the following values:     * ACTIVE    * The KSK is being used for signing.     * INACTIVE    * The KSK is not being used for signing.     * DELETING    * The KSK is in the process of being deleted.     * ACTION_NEEDED    * There is a problem with the KSK that requires you to take action to resolve. For example, the customer managed customer master key (CMK) might have been deleted, or the permissions for the customer managed CMK might have been changed.     * INTERNAL_FAILURE    * There was an error during a request. Before you can continue to work with DNSSEC signing, including actions that involve this KSK, you must correct the problem. For example, you may need to activate or deactivate the KSK.
kskStatus :: Lens' KeySigningKey (Maybe Text)
kskStatus = lens _kskStatus (\s a -> s {_kskStatus = a})

-- | The date when the key-signing key (KSK) was created.
kskCreatedDate :: Lens' KeySigningKey (Maybe UTCTime)
kskCreatedDate = lens _kskCreatedDate (\s a -> s {_kskCreatedDate = a}) . mapping _Time

-- | A string used to represent the signing algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.1 RFC-8624 Section 3.1> .
kskSigningAlgorithmMnemonic :: Lens' KeySigningKey (Maybe Text)
kskSigningAlgorithmMnemonic = lens _kskSigningAlgorithmMnemonic (\s a -> s {_kskSigningAlgorithmMnemonic = a})

-- | The public key, represented as a Base64 encoding, as required by <https://tools.ietf.org/rfc/rfc4034.txt RFC-4034 Page 5> .
kskPublicKey :: Lens' KeySigningKey (Maybe Text)
kskPublicKey = lens _kskPublicKey (\s a -> s {_kskPublicKey = a})

-- | A string that represents a DNSKEY record.
kskDNSKEYRecord :: Lens' KeySigningKey (Maybe Text)
kskDNSKEYRecord = lens _kskDNSKEYRecord (\s a -> s {_kskDNSKEYRecord = a})

-- | A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system.
kskDigestValue :: Lens' KeySigningKey (Maybe Text)
kskDigestValue = lens _kskDigestValue (\s a -> s {_kskDigestValue = a})

-- | A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.3 RFC-8624 Section 3.3> .
kskDigestAlgorithmMnemonic :: Lens' KeySigningKey (Maybe Text)
kskDigestAlgorithmMnemonic = lens _kskDigestAlgorithmMnemonic (\s a -> s {_kskDigestAlgorithmMnemonic = a})

-- | A string used to identify a key-signing key (KSK). @Name@ can include numbers, letters, and underscores (_). @Name@ must be unique for each key-signing key in the same hosted zone.
kskName :: Lens' KeySigningKey (Maybe Text)
kskName = lens _kskName (\s a -> s {_kskName = a})

-- | An integer used to represent the signing algorithm. This value must follow the guidelines provided by <https://tools.ietf.org/html/rfc8624#section-3.1 RFC-8624 Section 3.1> .
kskSigningAlgorithmType :: Lens' KeySigningKey (Maybe Int)
kskSigningAlgorithmType = lens _kskSigningAlgorithmType (\s a -> s {_kskSigningAlgorithmType = a})

-- | An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257.
kskFlag :: Lens' KeySigningKey (Maybe Int)
kskFlag = lens _kskFlag (\s a -> s {_kskFlag = a})

-- | The Amazon resource name (ARN) used to identify the customer managed customer master key (CMK) in AWS Key Management Service (AWS KMS). The @KmsArn@ must be unique for each key-signing key (KSK) in a single hosted zone. You must configure the CMK as follows:     * Status    * Enabled     * Key spec    * ECC_NIST_P256     * Key usage    * Sign and verify     * Key policy    * The key policy must give permission for the following actions:     * DescribeKey     * GetPublicKey     * Sign The key policy must also include the Amazon Route 53 service in the principal for your account. Specify the following:     * @"Service": "api-service.dnssec.route53.aws.internal"@  For more information about working with the customer managed CMK in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html AWS Key Management Service concepts> .
kskKMSARN :: Lens' KeySigningKey (Maybe Text)
kskKMSARN = lens _kskKMSARN (\s a -> s {_kskKMSARN = a})

-- | An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in <https://tools.ietf.org/rfc/rfc4034.txt RFC-4034 Appendix B> .
kskKeyTag :: Lens' KeySigningKey (Maybe Natural)
kskKeyTag = lens _kskKeyTag (\s a -> s {_kskKeyTag = a}) . mapping _Nat

-- | A string that represents a delegation signer (DS) record.
kskDSRecord :: Lens' KeySigningKey (Maybe Text)
kskDSRecord = lens _kskDSRecord (\s a -> s {_kskDSRecord = a})

instance FromXML KeySigningKey where
  parseXML x =
    KeySigningKey'
      <$> (x .@? "DigestAlgorithmType")
      <*> (x .@? "LastModifiedDate")
      <*> (x .@? "StatusMessage")
      <*> (x .@? "Status")
      <*> (x .@? "CreatedDate")
      <*> (x .@? "SigningAlgorithmMnemonic")
      <*> (x .@? "PublicKey")
      <*> (x .@? "DNSKEYRecord")
      <*> (x .@? "DigestValue")
      <*> (x .@? "DigestAlgorithmMnemonic")
      <*> (x .@? "Name")
      <*> (x .@? "SigningAlgorithmType")
      <*> (x .@? "Flag")
      <*> (x .@? "KmsArn")
      <*> (x .@? "KeyTag")
      <*> (x .@? "DSRecord")

instance Hashable KeySigningKey

instance NFData KeySigningKey

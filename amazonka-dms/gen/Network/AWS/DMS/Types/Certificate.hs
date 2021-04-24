{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.Certificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.Certificate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.
--
--
--
-- /See:/ 'certificate' smart constructor.
data Certificate = Certificate'
  { _cCertificateOwner ::
      !(Maybe Text),
    _cSigningAlgorithm :: !(Maybe Text),
    _cValidToDate :: !(Maybe POSIX),
    _cCertificateIdentifier :: !(Maybe Text),
    _cKeyLength :: !(Maybe Int),
    _cCertificateARN :: !(Maybe Text),
    _cCertificateWallet :: !(Maybe Base64),
    _cValidFromDate :: !(Maybe POSIX),
    _cCertificateCreationDate :: !(Maybe POSIX),
    _cCertificatePem :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Certificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCertificateOwner' - The owner of the certificate.
--
-- * 'cSigningAlgorithm' - The signing algorithm for the certificate.
--
-- * 'cValidToDate' - The final date that the certificate is valid.
--
-- * 'cCertificateIdentifier' - A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'cKeyLength' - The key length of the cryptographic algorithm being used.
--
-- * 'cCertificateARN' - The Amazon Resource Name (ARN) for the certificate.
--
-- * 'cCertificateWallet' - The location of an imported Oracle Wallet certificate for use with SSL.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'cValidFromDate' - The beginning date that the certificate is valid.
--
-- * 'cCertificateCreationDate' - The date that the certificate was created.
--
-- * 'cCertificatePem' - The contents of a @.pem@ file, which contains an X.509 certificate.
certificate ::
  Certificate
certificate =
  Certificate'
    { _cCertificateOwner = Nothing,
      _cSigningAlgorithm = Nothing,
      _cValidToDate = Nothing,
      _cCertificateIdentifier = Nothing,
      _cKeyLength = Nothing,
      _cCertificateARN = Nothing,
      _cCertificateWallet = Nothing,
      _cValidFromDate = Nothing,
      _cCertificateCreationDate = Nothing,
      _cCertificatePem = Nothing
    }

-- | The owner of the certificate.
cCertificateOwner :: Lens' Certificate (Maybe Text)
cCertificateOwner = lens _cCertificateOwner (\s a -> s {_cCertificateOwner = a})

-- | The signing algorithm for the certificate.
cSigningAlgorithm :: Lens' Certificate (Maybe Text)
cSigningAlgorithm = lens _cSigningAlgorithm (\s a -> s {_cSigningAlgorithm = a})

-- | The final date that the certificate is valid.
cValidToDate :: Lens' Certificate (Maybe UTCTime)
cValidToDate = lens _cValidToDate (\s a -> s {_cValidToDate = a}) . mapping _Time

-- | A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.
cCertificateIdentifier :: Lens' Certificate (Maybe Text)
cCertificateIdentifier = lens _cCertificateIdentifier (\s a -> s {_cCertificateIdentifier = a})

-- | The key length of the cryptographic algorithm being used.
cKeyLength :: Lens' Certificate (Maybe Int)
cKeyLength = lens _cKeyLength (\s a -> s {_cKeyLength = a})

-- | The Amazon Resource Name (ARN) for the certificate.
cCertificateARN :: Lens' Certificate (Maybe Text)
cCertificateARN = lens _cCertificateARN (\s a -> s {_cCertificateARN = a})

-- | The location of an imported Oracle Wallet certificate for use with SSL.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
cCertificateWallet :: Lens' Certificate (Maybe ByteString)
cCertificateWallet = lens _cCertificateWallet (\s a -> s {_cCertificateWallet = a}) . mapping _Base64

-- | The beginning date that the certificate is valid.
cValidFromDate :: Lens' Certificate (Maybe UTCTime)
cValidFromDate = lens _cValidFromDate (\s a -> s {_cValidFromDate = a}) . mapping _Time

-- | The date that the certificate was created.
cCertificateCreationDate :: Lens' Certificate (Maybe UTCTime)
cCertificateCreationDate = lens _cCertificateCreationDate (\s a -> s {_cCertificateCreationDate = a}) . mapping _Time

-- | The contents of a @.pem@ file, which contains an X.509 certificate.
cCertificatePem :: Lens' Certificate (Maybe Text)
cCertificatePem = lens _cCertificatePem (\s a -> s {_cCertificatePem = a})

instance FromJSON Certificate where
  parseJSON =
    withObject
      "Certificate"
      ( \x ->
          Certificate'
            <$> (x .:? "CertificateOwner")
            <*> (x .:? "SigningAlgorithm")
            <*> (x .:? "ValidToDate")
            <*> (x .:? "CertificateIdentifier")
            <*> (x .:? "KeyLength")
            <*> (x .:? "CertificateArn")
            <*> (x .:? "CertificateWallet")
            <*> (x .:? "ValidFromDate")
            <*> (x .:? "CertificateCreationDate")
            <*> (x .:? "CertificatePem")
      )

instance Hashable Certificate

instance NFData Certificate

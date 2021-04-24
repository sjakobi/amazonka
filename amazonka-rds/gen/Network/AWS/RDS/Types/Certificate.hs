{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.Certificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.Certificate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A CA certificate for an AWS account.
--
--
--
-- /See:/ 'certificate' smart constructor.
data Certificate = Certificate'
  { _cCertificateIdentifier ::
      !(Maybe Text),
    _cValidFrom :: !(Maybe ISO8601),
    _cCustomerOverride :: !(Maybe Bool),
    _cCertificateARN :: !(Maybe Text),
    _cCertificateType :: !(Maybe Text),
    _cThumbprint :: !(Maybe Text),
    _cCustomerOverrideValidTill :: !(Maybe ISO8601),
    _cValidTill :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Certificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCertificateIdentifier' - The unique key that identifies a certificate.
--
-- * 'cValidFrom' - The starting date from which the certificate is valid.
--
-- * 'cCustomerOverride' - Whether there is an override for the default certificate identifier.
--
-- * 'cCertificateARN' - The Amazon Resource Name (ARN) for the certificate.
--
-- * 'cCertificateType' - The type of the certificate.
--
-- * 'cThumbprint' - The thumbprint of the certificate.
--
-- * 'cCustomerOverrideValidTill' - If there is an override for the default certificate identifier, when the override expires.
--
-- * 'cValidTill' - The final date that the certificate continues to be valid.
certificate ::
  Certificate
certificate =
  Certificate'
    { _cCertificateIdentifier = Nothing,
      _cValidFrom = Nothing,
      _cCustomerOverride = Nothing,
      _cCertificateARN = Nothing,
      _cCertificateType = Nothing,
      _cThumbprint = Nothing,
      _cCustomerOverrideValidTill = Nothing,
      _cValidTill = Nothing
    }

-- | The unique key that identifies a certificate.
cCertificateIdentifier :: Lens' Certificate (Maybe Text)
cCertificateIdentifier = lens _cCertificateIdentifier (\s a -> s {_cCertificateIdentifier = a})

-- | The starting date from which the certificate is valid.
cValidFrom :: Lens' Certificate (Maybe UTCTime)
cValidFrom = lens _cValidFrom (\s a -> s {_cValidFrom = a}) . mapping _Time

-- | Whether there is an override for the default certificate identifier.
cCustomerOverride :: Lens' Certificate (Maybe Bool)
cCustomerOverride = lens _cCustomerOverride (\s a -> s {_cCustomerOverride = a})

-- | The Amazon Resource Name (ARN) for the certificate.
cCertificateARN :: Lens' Certificate (Maybe Text)
cCertificateARN = lens _cCertificateARN (\s a -> s {_cCertificateARN = a})

-- | The type of the certificate.
cCertificateType :: Lens' Certificate (Maybe Text)
cCertificateType = lens _cCertificateType (\s a -> s {_cCertificateType = a})

-- | The thumbprint of the certificate.
cThumbprint :: Lens' Certificate (Maybe Text)
cThumbprint = lens _cThumbprint (\s a -> s {_cThumbprint = a})

-- | If there is an override for the default certificate identifier, when the override expires.
cCustomerOverrideValidTill :: Lens' Certificate (Maybe UTCTime)
cCustomerOverrideValidTill = lens _cCustomerOverrideValidTill (\s a -> s {_cCustomerOverrideValidTill = a}) . mapping _Time

-- | The final date that the certificate continues to be valid.
cValidTill :: Lens' Certificate (Maybe UTCTime)
cValidTill = lens _cValidTill (\s a -> s {_cValidTill = a}) . mapping _Time

instance FromXML Certificate where
  parseXML x =
    Certificate'
      <$> (x .@? "CertificateIdentifier")
      <*> (x .@? "ValidFrom")
      <*> (x .@? "CustomerOverride")
      <*> (x .@? "CertificateArn")
      <*> (x .@? "CertificateType")
      <*> (x .@? "Thumbprint")
      <*> (x .@? "CustomerOverrideValidTill")
      <*> (x .@? "ValidTill")

instance Hashable Certificate

instance NFData Certificate

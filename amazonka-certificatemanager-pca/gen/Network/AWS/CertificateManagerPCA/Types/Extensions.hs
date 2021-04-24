{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.Extensions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.Extensions where

import Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsage
import Network.AWS.CertificateManagerPCA.Types.GeneralName
import Network.AWS.CertificateManagerPCA.Types.KeyUsage
import Network.AWS.CertificateManagerPCA.Types.PolicyInformation
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains X.509 extension information for a certificate.
--
--
--
-- /See:/ 'extensions' smart constructor.
data Extensions = Extensions'
  { _eCertificatePolicies ::
      !(Maybe (List1 PolicyInformation)),
    _eExtendedKeyUsage ::
      !(Maybe (List1 ExtendedKeyUsage)),
    _eSubjectAlternativeNames ::
      !(Maybe (List1 GeneralName)),
    _eKeyUsage :: !(Maybe KeyUsage)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Extensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCertificatePolicies' - Contains a sequence of one or more policy information terms, each of which consists of an object identifier (OID) and optional qualifiers. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> . In an end-entity certificate, these terms indicate the policy under which the certificate was issued and the purposes for which it may be used. In a CA certificate, these terms limit the set of policies for certification paths that include this certificate.
--
-- * 'eExtendedKeyUsage' - Specifies additional purposes for which the certified public key may be used other than basic purposes indicated in the @KeyUsage@ extension.
--
-- * 'eSubjectAlternativeNames' - The subject alternative name extension allows identities to be bound to the subject of the certificate. These identities may be included in addition to or in place of the identity in the subject field of the certificate.
--
-- * 'eKeyUsage' - Undocumented member.
extensions ::
  Extensions
extensions =
  Extensions'
    { _eCertificatePolicies = Nothing,
      _eExtendedKeyUsage = Nothing,
      _eSubjectAlternativeNames = Nothing,
      _eKeyUsage = Nothing
    }

-- | Contains a sequence of one or more policy information terms, each of which consists of an object identifier (OID) and optional qualifiers. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> . In an end-entity certificate, these terms indicate the policy under which the certificate was issued and the purposes for which it may be used. In a CA certificate, these terms limit the set of policies for certification paths that include this certificate.
eCertificatePolicies :: Lens' Extensions (Maybe (NonEmpty PolicyInformation))
eCertificatePolicies = lens _eCertificatePolicies (\s a -> s {_eCertificatePolicies = a}) . mapping _List1

-- | Specifies additional purposes for which the certified public key may be used other than basic purposes indicated in the @KeyUsage@ extension.
eExtendedKeyUsage :: Lens' Extensions (Maybe (NonEmpty ExtendedKeyUsage))
eExtendedKeyUsage = lens _eExtendedKeyUsage (\s a -> s {_eExtendedKeyUsage = a}) . mapping _List1

-- | The subject alternative name extension allows identities to be bound to the subject of the certificate. These identities may be included in addition to or in place of the identity in the subject field of the certificate.
eSubjectAlternativeNames :: Lens' Extensions (Maybe (NonEmpty GeneralName))
eSubjectAlternativeNames = lens _eSubjectAlternativeNames (\s a -> s {_eSubjectAlternativeNames = a}) . mapping _List1

-- | Undocumented member.
eKeyUsage :: Lens' Extensions (Maybe KeyUsage)
eKeyUsage = lens _eKeyUsage (\s a -> s {_eKeyUsage = a})

instance Hashable Extensions

instance NFData Extensions

instance ToJSON Extensions where
  toJSON Extensions' {..} =
    object
      ( catMaybes
          [ ("CertificatePolicies" .=)
              <$> _eCertificatePolicies,
            ("ExtendedKeyUsage" .=) <$> _eExtendedKeyUsage,
            ("SubjectAlternativeNames" .=)
              <$> _eSubjectAlternativeNames,
            ("KeyUsage" .=) <$> _eKeyUsage
          ]
      )

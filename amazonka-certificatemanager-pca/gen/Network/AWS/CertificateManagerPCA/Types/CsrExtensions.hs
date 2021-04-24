{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CsrExtensions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.CsrExtensions where

import Network.AWS.CertificateManagerPCA.Types.AccessDescription
import Network.AWS.CertificateManagerPCA.Types.KeyUsage
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the certificate extensions to be added to the certificate signing request (CSR).
--
--
--
-- /See:/ 'csrExtensions' smart constructor.
data CsrExtensions = CsrExtensions'
  { _ceSubjectInformationAccess ::
      !(Maybe [AccessDescription]),
    _ceKeyUsage :: !(Maybe KeyUsage)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CsrExtensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceSubjectInformationAccess' - For CA certificates, provides a path to additional information pertaining to the CA, such as revocation and policy. For more information, see <https://tools.ietf.org/html/rfc5280#section-4.2.2.2 Subject Information Access> in RFC 5280.
--
-- * 'ceKeyUsage' - Indicates the purpose of the certificate and of the key contained in the certificate.
csrExtensions ::
  CsrExtensions
csrExtensions =
  CsrExtensions'
    { _ceSubjectInformationAccess =
        Nothing,
      _ceKeyUsage = Nothing
    }

-- | For CA certificates, provides a path to additional information pertaining to the CA, such as revocation and policy. For more information, see <https://tools.ietf.org/html/rfc5280#section-4.2.2.2 Subject Information Access> in RFC 5280.
ceSubjectInformationAccess :: Lens' CsrExtensions [AccessDescription]
ceSubjectInformationAccess = lens _ceSubjectInformationAccess (\s a -> s {_ceSubjectInformationAccess = a}) . _Default . _Coerce

-- | Indicates the purpose of the certificate and of the key contained in the certificate.
ceKeyUsage :: Lens' CsrExtensions (Maybe KeyUsage)
ceKeyUsage = lens _ceKeyUsage (\s a -> s {_ceKeyUsage = a})

instance FromJSON CsrExtensions where
  parseJSON =
    withObject
      "CsrExtensions"
      ( \x ->
          CsrExtensions'
            <$> (x .:? "SubjectInformationAccess" .!= mempty)
            <*> (x .:? "KeyUsage")
      )

instance Hashable CsrExtensions

instance NFData CsrExtensions

instance ToJSON CsrExtensions where
  toJSON CsrExtensions' {..} =
    object
      ( catMaybes
          [ ("SubjectInformationAccess" .=)
              <$> _ceSubjectInformationAccess,
            ("KeyUsage" .=) <$> _ceKeyUsage
          ]
      )

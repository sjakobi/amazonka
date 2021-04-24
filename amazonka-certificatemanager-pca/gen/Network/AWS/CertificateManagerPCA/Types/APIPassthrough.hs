{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.APIPassthrough
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.APIPassthrough where

import Network.AWS.CertificateManagerPCA.Types.ASN1Subject
import Network.AWS.CertificateManagerPCA.Types.Extensions
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains X.509 certificate information to be placed in an issued certificate. An @APIPassthrough@ or @APICSRPassthrough@ template variant must be selected, or else this parameter is ignored.
--
--
-- If conflicting or duplicate certificate information is supplied from other sources, ACM Private CA applies <xxxxx order of operation rules> to determine what information is used.
--
--
-- /See:/ 'apiPassthrough' smart constructor.
data APIPassthrough = APIPassthrough'
  { _apExtensions ::
      !(Maybe Extensions),
    _apSubject :: !(Maybe ASN1Subject)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APIPassthrough' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apExtensions' - Specifies X.509 extension information for a certificate.
--
-- * 'apSubject' - Undocumented member.
apiPassthrough ::
  APIPassthrough
apiPassthrough =
  APIPassthrough'
    { _apExtensions = Nothing,
      _apSubject = Nothing
    }

-- | Specifies X.509 extension information for a certificate.
apExtensions :: Lens' APIPassthrough (Maybe Extensions)
apExtensions = lens _apExtensions (\s a -> s {_apExtensions = a})

-- | Undocumented member.
apSubject :: Lens' APIPassthrough (Maybe ASN1Subject)
apSubject = lens _apSubject (\s a -> s {_apSubject = a})

instance Hashable APIPassthrough

instance NFData APIPassthrough

instance ToJSON APIPassthrough where
  toJSON APIPassthrough' {..} =
    object
      ( catMaybes
          [ ("Extensions" .=) <$> _apExtensions,
            ("Subject" .=) <$> _apSubject
          ]
      )

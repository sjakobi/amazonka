{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsage where

import Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies additional purposes for which the certified public key may be used other than basic purposes indicated in the @KeyUsage@ extension.
--
--
--
-- /See:/ 'extendedKeyUsage' smart constructor.
data ExtendedKeyUsage = ExtendedKeyUsage'
  { _ekuExtendedKeyUsageObjectIdentifier ::
      !(Maybe Text),
    _ekuExtendedKeyUsageType ::
      !(Maybe ExtendedKeyUsageType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExtendedKeyUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ekuExtendedKeyUsageObjectIdentifier' - Specifies a custom @ExtendedKeyUsage@ with an object identifier (OID).
--
-- * 'ekuExtendedKeyUsageType' - Specifies a standard @ExtendedKeyUsage@ as defined as in <https://tools.ietf.org/html/rfc5280#section-4.2.1.12 RFC 5280> .
extendedKeyUsage ::
  ExtendedKeyUsage
extendedKeyUsage =
  ExtendedKeyUsage'
    { _ekuExtendedKeyUsageObjectIdentifier =
        Nothing,
      _ekuExtendedKeyUsageType = Nothing
    }

-- | Specifies a custom @ExtendedKeyUsage@ with an object identifier (OID).
ekuExtendedKeyUsageObjectIdentifier :: Lens' ExtendedKeyUsage (Maybe Text)
ekuExtendedKeyUsageObjectIdentifier = lens _ekuExtendedKeyUsageObjectIdentifier (\s a -> s {_ekuExtendedKeyUsageObjectIdentifier = a})

-- | Specifies a standard @ExtendedKeyUsage@ as defined as in <https://tools.ietf.org/html/rfc5280#section-4.2.1.12 RFC 5280> .
ekuExtendedKeyUsageType :: Lens' ExtendedKeyUsage (Maybe ExtendedKeyUsageType)
ekuExtendedKeyUsageType = lens _ekuExtendedKeyUsageType (\s a -> s {_ekuExtendedKeyUsageType = a})

instance Hashable ExtendedKeyUsage

instance NFData ExtendedKeyUsage

instance ToJSON ExtendedKeyUsage where
  toJSON ExtendedKeyUsage' {..} =
    object
      ( catMaybes
          [ ("ExtendedKeyUsageObjectIdentifier" .=)
              <$> _ekuExtendedKeyUsageObjectIdentifier,
            ("ExtendedKeyUsageType" .=)
              <$> _ekuExtendedKeyUsageType
          ]
      )

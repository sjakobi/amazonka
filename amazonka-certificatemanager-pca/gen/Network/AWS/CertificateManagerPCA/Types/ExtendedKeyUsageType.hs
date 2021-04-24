{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
  ( ExtendedKeyUsageType
      ( ..,
        CertificateTransparency,
        ClientAuth,
        CodeSigning,
        DocumentSigning,
        EmailProtection,
        OcspSigning,
        ServerAuth,
        SmartCardLogin,
        TimeStamping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExtendedKeyUsageType
  = ExtendedKeyUsageType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CertificateTransparency :: ExtendedKeyUsageType
pattern CertificateTransparency = ExtendedKeyUsageType' "CERTIFICATE_TRANSPARENCY"

pattern ClientAuth :: ExtendedKeyUsageType
pattern ClientAuth = ExtendedKeyUsageType' "CLIENT_AUTH"

pattern CodeSigning :: ExtendedKeyUsageType
pattern CodeSigning = ExtendedKeyUsageType' "CODE_SIGNING"

pattern DocumentSigning :: ExtendedKeyUsageType
pattern DocumentSigning = ExtendedKeyUsageType' "DOCUMENT_SIGNING"

pattern EmailProtection :: ExtendedKeyUsageType
pattern EmailProtection = ExtendedKeyUsageType' "EMAIL_PROTECTION"

pattern OcspSigning :: ExtendedKeyUsageType
pattern OcspSigning = ExtendedKeyUsageType' "OCSP_SIGNING"

pattern ServerAuth :: ExtendedKeyUsageType
pattern ServerAuth = ExtendedKeyUsageType' "SERVER_AUTH"

pattern SmartCardLogin :: ExtendedKeyUsageType
pattern SmartCardLogin = ExtendedKeyUsageType' "SMART_CARD_LOGIN"

pattern TimeStamping :: ExtendedKeyUsageType
pattern TimeStamping = ExtendedKeyUsageType' "TIME_STAMPING"

{-# COMPLETE
  CertificateTransparency,
  ClientAuth,
  CodeSigning,
  DocumentSigning,
  EmailProtection,
  OcspSigning,
  ServerAuth,
  SmartCardLogin,
  TimeStamping,
  ExtendedKeyUsageType'
  #-}

instance FromText ExtendedKeyUsageType where
  parser = (ExtendedKeyUsageType' . mk) <$> takeText

instance ToText ExtendedKeyUsageType where
  toText (ExtendedKeyUsageType' ci) = original ci

instance Hashable ExtendedKeyUsageType

instance NFData ExtendedKeyUsageType

instance ToByteString ExtendedKeyUsageType

instance ToQuery ExtendedKeyUsageType

instance ToHeader ExtendedKeyUsageType

instance ToJSON ExtendedKeyUsageType where
  toJSON = toJSONText

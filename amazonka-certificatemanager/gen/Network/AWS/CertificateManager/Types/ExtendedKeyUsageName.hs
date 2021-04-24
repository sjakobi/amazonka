{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.ExtendedKeyUsageName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.ExtendedKeyUsageName
  ( ExtendedKeyUsageName
      ( ..,
        Any,
        CodeSigning,
        Custom,
        EmailProtection,
        IPsecEndSystem,
        IPsecTunnel,
        IPsecUser,
        None,
        OcspSigning,
        TLSWebClientAuthentication,
        TLSWebServerAuthentication,
        TimeStamping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExtendedKeyUsageName
  = ExtendedKeyUsageName'
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

pattern Any :: ExtendedKeyUsageName
pattern Any = ExtendedKeyUsageName' "ANY"

pattern CodeSigning :: ExtendedKeyUsageName
pattern CodeSigning = ExtendedKeyUsageName' "CODE_SIGNING"

pattern Custom :: ExtendedKeyUsageName
pattern Custom = ExtendedKeyUsageName' "CUSTOM"

pattern EmailProtection :: ExtendedKeyUsageName
pattern EmailProtection = ExtendedKeyUsageName' "EMAIL_PROTECTION"

pattern IPsecEndSystem :: ExtendedKeyUsageName
pattern IPsecEndSystem = ExtendedKeyUsageName' "IPSEC_END_SYSTEM"

pattern IPsecTunnel :: ExtendedKeyUsageName
pattern IPsecTunnel = ExtendedKeyUsageName' "IPSEC_TUNNEL"

pattern IPsecUser :: ExtendedKeyUsageName
pattern IPsecUser = ExtendedKeyUsageName' "IPSEC_USER"

pattern None :: ExtendedKeyUsageName
pattern None = ExtendedKeyUsageName' "NONE"

pattern OcspSigning :: ExtendedKeyUsageName
pattern OcspSigning = ExtendedKeyUsageName' "OCSP_SIGNING"

pattern TLSWebClientAuthentication :: ExtendedKeyUsageName
pattern TLSWebClientAuthentication = ExtendedKeyUsageName' "TLS_WEB_CLIENT_AUTHENTICATION"

pattern TLSWebServerAuthentication :: ExtendedKeyUsageName
pattern TLSWebServerAuthentication = ExtendedKeyUsageName' "TLS_WEB_SERVER_AUTHENTICATION"

pattern TimeStamping :: ExtendedKeyUsageName
pattern TimeStamping = ExtendedKeyUsageName' "TIME_STAMPING"

{-# COMPLETE
  Any,
  CodeSigning,
  Custom,
  EmailProtection,
  IPsecEndSystem,
  IPsecTunnel,
  IPsecUser,
  None,
  OcspSigning,
  TLSWebClientAuthentication,
  TLSWebServerAuthentication,
  TimeStamping,
  ExtendedKeyUsageName'
  #-}

instance FromText ExtendedKeyUsageName where
  parser = (ExtendedKeyUsageName' . mk) <$> takeText

instance ToText ExtendedKeyUsageName where
  toText (ExtendedKeyUsageName' ci) = original ci

instance Hashable ExtendedKeyUsageName

instance NFData ExtendedKeyUsageName

instance ToByteString ExtendedKeyUsageName

instance ToQuery ExtendedKeyUsageName

instance ToHeader ExtendedKeyUsageName

instance ToJSON ExtendedKeyUsageName where
  toJSON = toJSONText

instance FromJSON ExtendedKeyUsageName where
  parseJSON = parseJSONText "ExtendedKeyUsageName"

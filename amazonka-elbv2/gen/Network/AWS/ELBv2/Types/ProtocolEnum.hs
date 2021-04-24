{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.ProtocolEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.ProtocolEnum
  ( ProtocolEnum
      ( ..,
        Geneve,
        HTTP,
        HTTPS,
        TCP,
        TCPUdp,
        TLS,
        Udp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProtocolEnum = ProtocolEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Geneve :: ProtocolEnum
pattern Geneve = ProtocolEnum' "GENEVE"

pattern HTTP :: ProtocolEnum
pattern HTTP = ProtocolEnum' "HTTP"

pattern HTTPS :: ProtocolEnum
pattern HTTPS = ProtocolEnum' "HTTPS"

pattern TCP :: ProtocolEnum
pattern TCP = ProtocolEnum' "TCP"

pattern TCPUdp :: ProtocolEnum
pattern TCPUdp = ProtocolEnum' "TCP_UDP"

pattern TLS :: ProtocolEnum
pattern TLS = ProtocolEnum' "TLS"

pattern Udp :: ProtocolEnum
pattern Udp = ProtocolEnum' "UDP"

{-# COMPLETE
  Geneve,
  HTTP,
  HTTPS,
  TCP,
  TCPUdp,
  TLS,
  Udp,
  ProtocolEnum'
  #-}

instance FromText ProtocolEnum where
  parser = (ProtocolEnum' . mk) <$> takeText

instance ToText ProtocolEnum where
  toText (ProtocolEnum' ci) = original ci

instance Hashable ProtocolEnum

instance NFData ProtocolEnum

instance ToByteString ProtocolEnum

instance ToQuery ProtocolEnum

instance ToHeader ProtocolEnum

instance FromXML ProtocolEnum where
  parseXML = parseXMLText "ProtocolEnum"

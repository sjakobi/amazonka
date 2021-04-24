{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.NetworkProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.NetworkProtocol
  ( NetworkProtocol
      ( ..,
        NPAll,
        NPICMP,
        NPTCP,
        NPUdp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NetworkProtocol = NetworkProtocol' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NPAll :: NetworkProtocol
pattern NPAll = NetworkProtocol' "all"

pattern NPICMP :: NetworkProtocol
pattern NPICMP = NetworkProtocol' "icmp"

pattern NPTCP :: NetworkProtocol
pattern NPTCP = NetworkProtocol' "tcp"

pattern NPUdp :: NetworkProtocol
pattern NPUdp = NetworkProtocol' "udp"

{-# COMPLETE
  NPAll,
  NPICMP,
  NPTCP,
  NPUdp,
  NetworkProtocol'
  #-}

instance FromText NetworkProtocol where
  parser = (NetworkProtocol' . mk) <$> takeText

instance ToText NetworkProtocol where
  toText (NetworkProtocol' ci) = original ci

instance Hashable NetworkProtocol

instance NFData NetworkProtocol

instance ToByteString NetworkProtocol

instance ToQuery NetworkProtocol

instance ToHeader NetworkProtocol

instance ToJSON NetworkProtocol where
  toJSON = toJSONText

instance FromJSON NetworkProtocol where
  parseJSON = parseJSONText "NetworkProtocol"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.NetworkSecurityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.NetworkSecurityType
  ( NetworkSecurityType
      ( ..,
        Open,
        WPA2Enterprise,
        WPA2Psk,
        Wep,
        WpaPsk
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NetworkSecurityType
  = NetworkSecurityType'
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

pattern Open :: NetworkSecurityType
pattern Open = NetworkSecurityType' "OPEN"

pattern WPA2Enterprise :: NetworkSecurityType
pattern WPA2Enterprise = NetworkSecurityType' "WPA2_ENTERPRISE"

pattern WPA2Psk :: NetworkSecurityType
pattern WPA2Psk = NetworkSecurityType' "WPA2_PSK"

pattern Wep :: NetworkSecurityType
pattern Wep = NetworkSecurityType' "WEP"

pattern WpaPsk :: NetworkSecurityType
pattern WpaPsk = NetworkSecurityType' "WPA_PSK"

{-# COMPLETE
  Open,
  WPA2Enterprise,
  WPA2Psk,
  Wep,
  WpaPsk,
  NetworkSecurityType'
  #-}

instance FromText NetworkSecurityType where
  parser = (NetworkSecurityType' . mk) <$> takeText

instance ToText NetworkSecurityType where
  toText (NetworkSecurityType' ci) = original ci

instance Hashable NetworkSecurityType

instance NFData NetworkSecurityType

instance ToByteString NetworkSecurityType

instance ToQuery NetworkSecurityType

instance ToHeader NetworkSecurityType

instance ToJSON NetworkSecurityType where
  toJSON = toJSONText

instance FromJSON NetworkSecurityType where
  parseJSON = parseJSONText "NetworkSecurityType"

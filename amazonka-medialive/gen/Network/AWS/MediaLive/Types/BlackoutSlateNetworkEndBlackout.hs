{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BlackoutSlateNetworkEndBlackout
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BlackoutSlateNetworkEndBlackout
  ( BlackoutSlateNetworkEndBlackout
      ( ..,
        BSNEBDisabled,
        BSNEBEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Blackout Slate Network End Blackout
data BlackoutSlateNetworkEndBlackout
  = BlackoutSlateNetworkEndBlackout'
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

pattern BSNEBDisabled :: BlackoutSlateNetworkEndBlackout
pattern BSNEBDisabled = BlackoutSlateNetworkEndBlackout' "DISABLED"

pattern BSNEBEnabled :: BlackoutSlateNetworkEndBlackout
pattern BSNEBEnabled = BlackoutSlateNetworkEndBlackout' "ENABLED"

{-# COMPLETE
  BSNEBDisabled,
  BSNEBEnabled,
  BlackoutSlateNetworkEndBlackout'
  #-}

instance FromText BlackoutSlateNetworkEndBlackout where
  parser = (BlackoutSlateNetworkEndBlackout' . mk) <$> takeText

instance ToText BlackoutSlateNetworkEndBlackout where
  toText (BlackoutSlateNetworkEndBlackout' ci) = original ci

instance Hashable BlackoutSlateNetworkEndBlackout

instance NFData BlackoutSlateNetworkEndBlackout

instance ToByteString BlackoutSlateNetworkEndBlackout

instance ToQuery BlackoutSlateNetworkEndBlackout

instance ToHeader BlackoutSlateNetworkEndBlackout

instance ToJSON BlackoutSlateNetworkEndBlackout where
  toJSON = toJSONText

instance FromJSON BlackoutSlateNetworkEndBlackout where
  parseJSON = parseJSONText "BlackoutSlateNetworkEndBlackout"

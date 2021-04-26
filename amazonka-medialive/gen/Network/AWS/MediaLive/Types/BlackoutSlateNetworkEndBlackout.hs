{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        BlackoutSlateNetworkEndBlackoutDISABLED,
        BlackoutSlateNetworkEndBlackoutENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Blackout Slate Network End Blackout
newtype BlackoutSlateNetworkEndBlackout = BlackoutSlateNetworkEndBlackout'
  { fromBlackoutSlateNetworkEndBlackout ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern BlackoutSlateNetworkEndBlackoutDISABLED :: BlackoutSlateNetworkEndBlackout
pattern BlackoutSlateNetworkEndBlackoutDISABLED = BlackoutSlateNetworkEndBlackout' "DISABLED"

pattern BlackoutSlateNetworkEndBlackoutENABLED :: BlackoutSlateNetworkEndBlackout
pattern BlackoutSlateNetworkEndBlackoutENABLED = BlackoutSlateNetworkEndBlackout' "ENABLED"

{-# COMPLETE
  BlackoutSlateNetworkEndBlackoutDISABLED,
  BlackoutSlateNetworkEndBlackoutENABLED,
  BlackoutSlateNetworkEndBlackout'
  #-}

instance Prelude.FromText BlackoutSlateNetworkEndBlackout where
  parser = BlackoutSlateNetworkEndBlackout' Prelude.<$> Prelude.takeText

instance Prelude.ToText BlackoutSlateNetworkEndBlackout where
  toText (BlackoutSlateNetworkEndBlackout' x) = x

instance Prelude.Hashable BlackoutSlateNetworkEndBlackout

instance Prelude.NFData BlackoutSlateNetworkEndBlackout

instance Prelude.ToByteString BlackoutSlateNetworkEndBlackout

instance Prelude.ToQuery BlackoutSlateNetworkEndBlackout

instance Prelude.ToHeader BlackoutSlateNetworkEndBlackout

instance Prelude.ToJSON BlackoutSlateNetworkEndBlackout where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BlackoutSlateNetworkEndBlackout where
  parseJSON = Prelude.parseJSONText "BlackoutSlateNetworkEndBlackout"

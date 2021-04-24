{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BlackoutSlateState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BlackoutSlateState
  ( BlackoutSlateState
      ( ..,
        BSSDisabled,
        BSSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Blackout Slate State
data BlackoutSlateState
  = BlackoutSlateState'
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

pattern BSSDisabled :: BlackoutSlateState
pattern BSSDisabled = BlackoutSlateState' "DISABLED"

pattern BSSEnabled :: BlackoutSlateState
pattern BSSEnabled = BlackoutSlateState' "ENABLED"

{-# COMPLETE
  BSSDisabled,
  BSSEnabled,
  BlackoutSlateState'
  #-}

instance FromText BlackoutSlateState where
  parser = (BlackoutSlateState' . mk) <$> takeText

instance ToText BlackoutSlateState where
  toText (BlackoutSlateState' ci) = original ci

instance Hashable BlackoutSlateState

instance NFData BlackoutSlateState

instance ToByteString BlackoutSlateState

instance ToQuery BlackoutSlateState

instance ToHeader BlackoutSlateState

instance ToJSON BlackoutSlateState where
  toJSON = toJSONText

instance FromJSON BlackoutSlateState where
  parseJSON = parseJSONText "BlackoutSlateState"

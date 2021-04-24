{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AvailBlankingState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AvailBlankingState
  ( AvailBlankingState
      ( ..,
        ABSDisabled,
        ABSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Avail Blanking State
data AvailBlankingState
  = AvailBlankingState'
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

pattern ABSDisabled :: AvailBlankingState
pattern ABSDisabled = AvailBlankingState' "DISABLED"

pattern ABSEnabled :: AvailBlankingState
pattern ABSEnabled = AvailBlankingState' "ENABLED"

{-# COMPLETE
  ABSDisabled,
  ABSEnabled,
  AvailBlankingState'
  #-}

instance FromText AvailBlankingState where
  parser = (AvailBlankingState' . mk) <$> takeText

instance ToText AvailBlankingState where
  toText (AvailBlankingState' ci) = original ci

instance Hashable AvailBlankingState

instance NFData AvailBlankingState

instance ToByteString AvailBlankingState

instance ToQuery AvailBlankingState

instance ToHeader AvailBlankingState

instance ToJSON AvailBlankingState where
  toJSON = toJSONText

instance FromJSON AvailBlankingState where
  parseJSON = parseJSONText "AvailBlankingState"

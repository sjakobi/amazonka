{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
  ( DvbSubDestinationShadowColor
      ( ..,
        DSDSCBlack,
        DSDSCNone,
        DSDSCWhite
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dvb Sub Destination Shadow Color
data DvbSubDestinationShadowColor
  = DvbSubDestinationShadowColor'
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

pattern DSDSCBlack :: DvbSubDestinationShadowColor
pattern DSDSCBlack = DvbSubDestinationShadowColor' "BLACK"

pattern DSDSCNone :: DvbSubDestinationShadowColor
pattern DSDSCNone = DvbSubDestinationShadowColor' "NONE"

pattern DSDSCWhite :: DvbSubDestinationShadowColor
pattern DSDSCWhite = DvbSubDestinationShadowColor' "WHITE"

{-# COMPLETE
  DSDSCBlack,
  DSDSCNone,
  DSDSCWhite,
  DvbSubDestinationShadowColor'
  #-}

instance FromText DvbSubDestinationShadowColor where
  parser = (DvbSubDestinationShadowColor' . mk) <$> takeText

instance ToText DvbSubDestinationShadowColor where
  toText (DvbSubDestinationShadowColor' ci) = original ci

instance Hashable DvbSubDestinationShadowColor

instance NFData DvbSubDestinationShadowColor

instance ToByteString DvbSubDestinationShadowColor

instance ToQuery DvbSubDestinationShadowColor

instance ToHeader DvbSubDestinationShadowColor

instance ToJSON DvbSubDestinationShadowColor where
  toJSON = toJSONText

instance FromJSON DvbSubDestinationShadowColor where
  parseJSON = parseJSONText "DvbSubDestinationShadowColor"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
  ( DvbSubDestinationOutlineColor
      ( ..,
        Black,
        Blue,
        Green,
        Red,
        White,
        Yellow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Dvb Sub Destination Outline Color
data DvbSubDestinationOutlineColor
  = DvbSubDestinationOutlineColor'
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

pattern Black :: DvbSubDestinationOutlineColor
pattern Black = DvbSubDestinationOutlineColor' "BLACK"

pattern Blue :: DvbSubDestinationOutlineColor
pattern Blue = DvbSubDestinationOutlineColor' "BLUE"

pattern Green :: DvbSubDestinationOutlineColor
pattern Green = DvbSubDestinationOutlineColor' "GREEN"

pattern Red :: DvbSubDestinationOutlineColor
pattern Red = DvbSubDestinationOutlineColor' "RED"

pattern White :: DvbSubDestinationOutlineColor
pattern White = DvbSubDestinationOutlineColor' "WHITE"

pattern Yellow :: DvbSubDestinationOutlineColor
pattern Yellow = DvbSubDestinationOutlineColor' "YELLOW"

{-# COMPLETE
  Black,
  Blue,
  Green,
  Red,
  White,
  Yellow,
  DvbSubDestinationOutlineColor'
  #-}

instance FromText DvbSubDestinationOutlineColor where
  parser = (DvbSubDestinationOutlineColor' . mk) <$> takeText

instance ToText DvbSubDestinationOutlineColor where
  toText (DvbSubDestinationOutlineColor' ci) = original ci

instance Hashable DvbSubDestinationOutlineColor

instance NFData DvbSubDestinationOutlineColor

instance ToByteString DvbSubDestinationOutlineColor

instance ToQuery DvbSubDestinationOutlineColor

instance ToHeader DvbSubDestinationOutlineColor

instance ToJSON DvbSubDestinationOutlineColor where
  toJSON = toJSONText

instance FromJSON DvbSubDestinationOutlineColor where
  parseJSON = parseJSONText "DvbSubDestinationOutlineColor"

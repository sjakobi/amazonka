{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.BurnInOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInOutlineColor
  ( BurnInOutlineColor
      ( ..,
        BIOCBlack,
        BIOCBlue,
        BIOCGreen,
        BIOCRed,
        BIOCWhite,
        BIOCYellow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Burn In Outline Color
data BurnInOutlineColor
  = BurnInOutlineColor'
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

pattern BIOCBlack :: BurnInOutlineColor
pattern BIOCBlack = BurnInOutlineColor' "BLACK"

pattern BIOCBlue :: BurnInOutlineColor
pattern BIOCBlue = BurnInOutlineColor' "BLUE"

pattern BIOCGreen :: BurnInOutlineColor
pattern BIOCGreen = BurnInOutlineColor' "GREEN"

pattern BIOCRed :: BurnInOutlineColor
pattern BIOCRed = BurnInOutlineColor' "RED"

pattern BIOCWhite :: BurnInOutlineColor
pattern BIOCWhite = BurnInOutlineColor' "WHITE"

pattern BIOCYellow :: BurnInOutlineColor
pattern BIOCYellow = BurnInOutlineColor' "YELLOW"

{-# COMPLETE
  BIOCBlack,
  BIOCBlue,
  BIOCGreen,
  BIOCRed,
  BIOCWhite,
  BIOCYellow,
  BurnInOutlineColor'
  #-}

instance FromText BurnInOutlineColor where
  parser = (BurnInOutlineColor' . mk) <$> takeText

instance ToText BurnInOutlineColor where
  toText (BurnInOutlineColor' ci) = original ci

instance Hashable BurnInOutlineColor

instance NFData BurnInOutlineColor

instance ToByteString BurnInOutlineColor

instance ToQuery BurnInOutlineColor

instance ToHeader BurnInOutlineColor

instance ToJSON BurnInOutlineColor where
  toJSON = toJSONText

instance FromJSON BurnInOutlineColor where
  parseJSON = parseJSONText "BurnInOutlineColor"

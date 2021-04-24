{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
  ( BurninSubtitleFontColor
      ( ..,
        BSFCBlack,
        BSFCBlue,
        BSFCGreen,
        BSFCRed,
        BSFCWhite,
        BSFCYellow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
data BurninSubtitleFontColor
  = BurninSubtitleFontColor'
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

pattern BSFCBlack :: BurninSubtitleFontColor
pattern BSFCBlack = BurninSubtitleFontColor' "BLACK"

pattern BSFCBlue :: BurninSubtitleFontColor
pattern BSFCBlue = BurninSubtitleFontColor' "BLUE"

pattern BSFCGreen :: BurninSubtitleFontColor
pattern BSFCGreen = BurninSubtitleFontColor' "GREEN"

pattern BSFCRed :: BurninSubtitleFontColor
pattern BSFCRed = BurninSubtitleFontColor' "RED"

pattern BSFCWhite :: BurninSubtitleFontColor
pattern BSFCWhite = BurninSubtitleFontColor' "WHITE"

pattern BSFCYellow :: BurninSubtitleFontColor
pattern BSFCYellow = BurninSubtitleFontColor' "YELLOW"

{-# COMPLETE
  BSFCBlack,
  BSFCBlue,
  BSFCGreen,
  BSFCRed,
  BSFCWhite,
  BSFCYellow,
  BurninSubtitleFontColor'
  #-}

instance FromText BurninSubtitleFontColor where
  parser = (BurninSubtitleFontColor' . mk) <$> takeText

instance ToText BurninSubtitleFontColor where
  toText (BurninSubtitleFontColor' ci) = original ci

instance Hashable BurninSubtitleFontColor

instance NFData BurninSubtitleFontColor

instance ToByteString BurninSubtitleFontColor

instance ToQuery BurninSubtitleFontColor

instance ToHeader BurninSubtitleFontColor

instance ToJSON BurninSubtitleFontColor where
  toJSON = toJSONText

instance FromJSON BurninSubtitleFontColor where
  parseJSON = parseJSONText "BurninSubtitleFontColor"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
  ( DvbSubtitleFontColor
      ( ..,
        DSFCBlack,
        DSFCBlue,
        DSFCGreen,
        DSFCRed,
        DSFCWhite,
        DSFCYellow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
data DvbSubtitleFontColor
  = DvbSubtitleFontColor'
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

pattern DSFCBlack :: DvbSubtitleFontColor
pattern DSFCBlack = DvbSubtitleFontColor' "BLACK"

pattern DSFCBlue :: DvbSubtitleFontColor
pattern DSFCBlue = DvbSubtitleFontColor' "BLUE"

pattern DSFCGreen :: DvbSubtitleFontColor
pattern DSFCGreen = DvbSubtitleFontColor' "GREEN"

pattern DSFCRed :: DvbSubtitleFontColor
pattern DSFCRed = DvbSubtitleFontColor' "RED"

pattern DSFCWhite :: DvbSubtitleFontColor
pattern DSFCWhite = DvbSubtitleFontColor' "WHITE"

pattern DSFCYellow :: DvbSubtitleFontColor
pattern DSFCYellow = DvbSubtitleFontColor' "YELLOW"

{-# COMPLETE
  DSFCBlack,
  DSFCBlue,
  DSFCGreen,
  DSFCRed,
  DSFCWhite,
  DSFCYellow,
  DvbSubtitleFontColor'
  #-}

instance FromText DvbSubtitleFontColor where
  parser = (DvbSubtitleFontColor' . mk) <$> takeText

instance ToText DvbSubtitleFontColor where
  toText (DvbSubtitleFontColor' ci) = original ci

instance Hashable DvbSubtitleFontColor

instance NFData DvbSubtitleFontColor

instance ToByteString DvbSubtitleFontColor

instance ToQuery DvbSubtitleFontColor

instance ToHeader DvbSubtitleFontColor

instance ToJSON DvbSubtitleFontColor where
  toJSON = toJSONText

instance FromJSON DvbSubtitleFontColor where
  parseJSON = parseJSONText "DvbSubtitleFontColor"

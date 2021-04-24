{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
  ( DvbSubtitleOutlineColor
      ( ..,
        DSOCBlack,
        DSOCBlue,
        DSOCGreen,
        DSOCRed,
        DSOCWhite,
        DSOCYellow
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
data DvbSubtitleOutlineColor
  = DvbSubtitleOutlineColor'
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

pattern DSOCBlack :: DvbSubtitleOutlineColor
pattern DSOCBlack = DvbSubtitleOutlineColor' "BLACK"

pattern DSOCBlue :: DvbSubtitleOutlineColor
pattern DSOCBlue = DvbSubtitleOutlineColor' "BLUE"

pattern DSOCGreen :: DvbSubtitleOutlineColor
pattern DSOCGreen = DvbSubtitleOutlineColor' "GREEN"

pattern DSOCRed :: DvbSubtitleOutlineColor
pattern DSOCRed = DvbSubtitleOutlineColor' "RED"

pattern DSOCWhite :: DvbSubtitleOutlineColor
pattern DSOCWhite = DvbSubtitleOutlineColor' "WHITE"

pattern DSOCYellow :: DvbSubtitleOutlineColor
pattern DSOCYellow = DvbSubtitleOutlineColor' "YELLOW"

{-# COMPLETE
  DSOCBlack,
  DSOCBlue,
  DSOCGreen,
  DSOCRed,
  DSOCWhite,
  DSOCYellow,
  DvbSubtitleOutlineColor'
  #-}

instance FromText DvbSubtitleOutlineColor where
  parser = (DvbSubtitleOutlineColor' . mk) <$> takeText

instance ToText DvbSubtitleOutlineColor where
  toText (DvbSubtitleOutlineColor' ci) = original ci

instance Hashable DvbSubtitleOutlineColor

instance NFData DvbSubtitleOutlineColor

instance ToByteString DvbSubtitleOutlineColor

instance ToQuery DvbSubtitleOutlineColor

instance ToHeader DvbSubtitleOutlineColor

instance ToJSON DvbSubtitleOutlineColor where
  toJSON = toJSONText

instance FromJSON DvbSubtitleOutlineColor where
  parseJSON = parseJSONText "DvbSubtitleOutlineColor"

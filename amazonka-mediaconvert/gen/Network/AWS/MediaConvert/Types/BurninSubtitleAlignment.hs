{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
  ( BurninSubtitleAlignment
      ( ..,
        BSACentered,
        BSALeft'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
data BurninSubtitleAlignment
  = BurninSubtitleAlignment'
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

pattern BSACentered :: BurninSubtitleAlignment
pattern BSACentered = BurninSubtitleAlignment' "CENTERED"

pattern BSALeft' :: BurninSubtitleAlignment
pattern BSALeft' = BurninSubtitleAlignment' "LEFT"

{-# COMPLETE
  BSACentered,
  BSALeft',
  BurninSubtitleAlignment'
  #-}

instance FromText BurninSubtitleAlignment where
  parser = (BurninSubtitleAlignment' . mk) <$> takeText

instance ToText BurninSubtitleAlignment where
  toText (BurninSubtitleAlignment' ci) = original ci

instance Hashable BurninSubtitleAlignment

instance NFData BurninSubtitleAlignment

instance ToByteString BurninSubtitleAlignment

instance ToQuery BurninSubtitleAlignment

instance ToHeader BurninSubtitleAlignment

instance ToJSON BurninSubtitleAlignment where
  toJSON = toJSONText

instance FromJSON BurninSubtitleAlignment where
  parseJSON = parseJSONText "BurninSubtitleAlignment"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
  ( BurninSubtitleTeletextSpacing
      ( ..,
        BSTSFixedGrid,
        BSTSProportional
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption.
data BurninSubtitleTeletextSpacing
  = BurninSubtitleTeletextSpacing'
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

pattern BSTSFixedGrid :: BurninSubtitleTeletextSpacing
pattern BSTSFixedGrid = BurninSubtitleTeletextSpacing' "FIXED_GRID"

pattern BSTSProportional :: BurninSubtitleTeletextSpacing
pattern BSTSProportional = BurninSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  BSTSFixedGrid,
  BSTSProportional,
  BurninSubtitleTeletextSpacing'
  #-}

instance FromText BurninSubtitleTeletextSpacing where
  parser = (BurninSubtitleTeletextSpacing' . mk) <$> takeText

instance ToText BurninSubtitleTeletextSpacing where
  toText (BurninSubtitleTeletextSpacing' ci) = original ci

instance Hashable BurninSubtitleTeletextSpacing

instance NFData BurninSubtitleTeletextSpacing

instance ToByteString BurninSubtitleTeletextSpacing

instance ToQuery BurninSubtitleTeletextSpacing

instance ToHeader BurninSubtitleTeletextSpacing

instance ToJSON BurninSubtitleTeletextSpacing where
  toJSON = toJSONText

instance FromJSON BurninSubtitleTeletextSpacing where
  parseJSON = parseJSONText "BurninSubtitleTeletextSpacing"

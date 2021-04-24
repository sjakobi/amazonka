{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
  ( DvbSubtitleTeletextSpacing
      ( ..,
        FixedGrid,
        Proportional
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption.
data DvbSubtitleTeletextSpacing
  = DvbSubtitleTeletextSpacing'
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

pattern FixedGrid :: DvbSubtitleTeletextSpacing
pattern FixedGrid = DvbSubtitleTeletextSpacing' "FIXED_GRID"

pattern Proportional :: DvbSubtitleTeletextSpacing
pattern Proportional = DvbSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  FixedGrid,
  Proportional,
  DvbSubtitleTeletextSpacing'
  #-}

instance FromText DvbSubtitleTeletextSpacing where
  parser = (DvbSubtitleTeletextSpacing' . mk) <$> takeText

instance ToText DvbSubtitleTeletextSpacing where
  toText (DvbSubtitleTeletextSpacing' ci) = original ci

instance Hashable DvbSubtitleTeletextSpacing

instance NFData DvbSubtitleTeletextSpacing

instance ToByteString DvbSubtitleTeletextSpacing

instance ToQuery DvbSubtitleTeletextSpacing

instance ToHeader DvbSubtitleTeletextSpacing

instance ToJSON DvbSubtitleTeletextSpacing where
  toJSON = toJSONText

instance FromJSON DvbSubtitleTeletextSpacing where
  parseJSON = parseJSONText "DvbSubtitleTeletextSpacing"

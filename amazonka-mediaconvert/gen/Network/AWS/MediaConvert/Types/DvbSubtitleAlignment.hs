{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleAlignment
  ( DvbSubtitleAlignment
      ( ..,
        Centered,
        Left'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
data DvbSubtitleAlignment
  = DvbSubtitleAlignment'
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

pattern Centered :: DvbSubtitleAlignment
pattern Centered = DvbSubtitleAlignment' "CENTERED"

pattern Left' :: DvbSubtitleAlignment
pattern Left' = DvbSubtitleAlignment' "LEFT"

{-# COMPLETE
  Centered,
  Left',
  DvbSubtitleAlignment'
  #-}

instance FromText DvbSubtitleAlignment where
  parser = (DvbSubtitleAlignment' . mk) <$> takeText

instance ToText DvbSubtitleAlignment where
  toText (DvbSubtitleAlignment' ci) = original ci

instance Hashable DvbSubtitleAlignment

instance NFData DvbSubtitleAlignment

instance ToByteString DvbSubtitleAlignment

instance ToQuery DvbSubtitleAlignment

instance ToHeader DvbSubtitleAlignment

instance ToJSON DvbSubtitleAlignment where
  toJSON = toJSONText

instance FromJSON DvbSubtitleAlignment where
  parseJSON = parseJSONText "DvbSubtitleAlignment"

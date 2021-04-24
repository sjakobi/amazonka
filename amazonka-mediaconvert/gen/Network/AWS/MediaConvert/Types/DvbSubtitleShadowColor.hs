{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
  ( DvbSubtitleShadowColor
      ( ..,
        Black,
        None,
        White
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the color of the shadow cast by the captions.
--
-- All burn-in and DVB-Sub font settings must match.
data DvbSubtitleShadowColor
  = DvbSubtitleShadowColor'
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

pattern Black :: DvbSubtitleShadowColor
pattern Black = DvbSubtitleShadowColor' "BLACK"

pattern None :: DvbSubtitleShadowColor
pattern None = DvbSubtitleShadowColor' "NONE"

pattern White :: DvbSubtitleShadowColor
pattern White = DvbSubtitleShadowColor' "WHITE"

{-# COMPLETE
  Black,
  None,
  White,
  DvbSubtitleShadowColor'
  #-}

instance FromText DvbSubtitleShadowColor where
  parser = (DvbSubtitleShadowColor' . mk) <$> takeText

instance ToText DvbSubtitleShadowColor where
  toText (DvbSubtitleShadowColor' ci) = original ci

instance Hashable DvbSubtitleShadowColor

instance NFData DvbSubtitleShadowColor

instance ToByteString DvbSubtitleShadowColor

instance ToQuery DvbSubtitleShadowColor

instance ToHeader DvbSubtitleShadowColor

instance ToJSON DvbSubtitleShadowColor where
  toJSON = toJSONText

instance FromJSON DvbSubtitleShadowColor where
  parseJSON = parseJSONText "DvbSubtitleShadowColor"

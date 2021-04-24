{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265TemporalAdaptiveQuantization
  ( H265TemporalAdaptiveQuantization
      ( ..,
        HDisabled,
        HEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on temporal variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas of the frame that aren't moving and uses more bits on complex objects with sharp edges that move a lot. For example, this feature improves the readability of text tickers on newscasts and scoreboards on sports matches. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen that doesn't have moving objects with sharp edges, such as sports athletes' faces, you might choose to disable this feature. Related setting: When you enable temporal quantization, adjust the strength of the filter with the setting Adaptive quantization (adaptiveQuantization).
data H265TemporalAdaptiveQuantization
  = H265TemporalAdaptiveQuantization'
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

pattern HDisabled :: H265TemporalAdaptiveQuantization
pattern HDisabled = H265TemporalAdaptiveQuantization' "DISABLED"

pattern HEnabled :: H265TemporalAdaptiveQuantization
pattern HEnabled = H265TemporalAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  HDisabled,
  HEnabled,
  H265TemporalAdaptiveQuantization'
  #-}

instance FromText H265TemporalAdaptiveQuantization where
  parser = (H265TemporalAdaptiveQuantization' . mk) <$> takeText

instance ToText H265TemporalAdaptiveQuantization where
  toText (H265TemporalAdaptiveQuantization' ci) = original ci

instance Hashable H265TemporalAdaptiveQuantization

instance NFData H265TemporalAdaptiveQuantization

instance ToByteString H265TemporalAdaptiveQuantization

instance ToQuery H265TemporalAdaptiveQuantization

instance ToHeader H265TemporalAdaptiveQuantization

instance ToJSON H265TemporalAdaptiveQuantization where
  toJSON = toJSONText

instance FromJSON H265TemporalAdaptiveQuantization where
  parseJSON = parseJSONText "H265TemporalAdaptiveQuantization"

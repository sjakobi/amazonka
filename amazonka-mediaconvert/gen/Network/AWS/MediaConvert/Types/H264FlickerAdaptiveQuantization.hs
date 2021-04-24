{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264FlickerAdaptiveQuantization
  ( H264FlickerAdaptiveQuantization
      ( ..,
        HFAQDisabled,
        HFAQEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Only use this setting when you change the default value, AUTO, for the setting H264AdaptiveQuantization. When you keep all defaults, excluding H264AdaptiveQuantization and all other adaptive quantization from your JSON job specification, MediaConvert automatically applies the best types of quantization for your video content. When you set H264AdaptiveQuantization to a value other than AUTO, the default value for H264FlickerAdaptiveQuantization is Disabled (DISABLED). Change this value to Enabled (ENABLED) to reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. To manually enable or disable H264FlickerAdaptiveQuantization, you must set Adaptive quantization (H264AdaptiveQuantization) to a value other than AUTO.
data H264FlickerAdaptiveQuantization
  = H264FlickerAdaptiveQuantization'
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

pattern HFAQDisabled :: H264FlickerAdaptiveQuantization
pattern HFAQDisabled = H264FlickerAdaptiveQuantization' "DISABLED"

pattern HFAQEnabled :: H264FlickerAdaptiveQuantization
pattern HFAQEnabled = H264FlickerAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  HFAQDisabled,
  HFAQEnabled,
  H264FlickerAdaptiveQuantization'
  #-}

instance FromText H264FlickerAdaptiveQuantization where
  parser = (H264FlickerAdaptiveQuantization' . mk) <$> takeText

instance ToText H264FlickerAdaptiveQuantization where
  toText (H264FlickerAdaptiveQuantization' ci) = original ci

instance Hashable H264FlickerAdaptiveQuantization

instance NFData H264FlickerAdaptiveQuantization

instance ToByteString H264FlickerAdaptiveQuantization

instance ToQuery H264FlickerAdaptiveQuantization

instance ToHeader H264FlickerAdaptiveQuantization

instance ToJSON H264FlickerAdaptiveQuantization where
  toJSON = toJSONText

instance FromJSON H264FlickerAdaptiveQuantization where
  parseJSON = parseJSONText "H264FlickerAdaptiveQuantization"

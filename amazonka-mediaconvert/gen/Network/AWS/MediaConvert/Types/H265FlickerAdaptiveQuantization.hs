{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265FlickerAdaptiveQuantization
  ( H265FlickerAdaptiveQuantization
      ( ..,
        H26Disabled,
        H26Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable this setting to have the encoder reduce I-frame pop. I-frame pop appears as a visual flicker that can arise when the encoder saves bits by copying some macroblocks many times from frame to frame, and then refreshes them at the I-frame. When you enable this setting, the encoder updates these macroblocks slightly more often to smooth out the flicker. This setting is disabled by default. Related setting: In addition to enabling this setting, you must also set adaptiveQuantization to a value other than Off (OFF).
data H265FlickerAdaptiveQuantization
  = H265FlickerAdaptiveQuantization'
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

pattern H26Disabled :: H265FlickerAdaptiveQuantization
pattern H26Disabled = H265FlickerAdaptiveQuantization' "DISABLED"

pattern H26Enabled :: H265FlickerAdaptiveQuantization
pattern H26Enabled = H265FlickerAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  H26Disabled,
  H26Enabled,
  H265FlickerAdaptiveQuantization'
  #-}

instance FromText H265FlickerAdaptiveQuantization where
  parser = (H265FlickerAdaptiveQuantization' . mk) <$> takeText

instance ToText H265FlickerAdaptiveQuantization where
  toText (H265FlickerAdaptiveQuantization' ci) = original ci

instance Hashable H265FlickerAdaptiveQuantization

instance NFData H265FlickerAdaptiveQuantization

instance ToByteString H265FlickerAdaptiveQuantization

instance ToQuery H265FlickerAdaptiveQuantization

instance ToHeader H265FlickerAdaptiveQuantization

instance ToJSON H265FlickerAdaptiveQuantization where
  toJSON = toJSONText

instance FromJSON H265FlickerAdaptiveQuantization where
  parseJSON = parseJSONText "H265FlickerAdaptiveQuantization"

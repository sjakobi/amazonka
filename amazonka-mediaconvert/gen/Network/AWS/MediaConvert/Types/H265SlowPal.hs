{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265SlowPal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265SlowPal
  ( H265SlowPal
      ( ..,
        HSPSDisabled,
        HSPSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
data H265SlowPal = H265SlowPal' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HSPSDisabled :: H265SlowPal
pattern HSPSDisabled = H265SlowPal' "DISABLED"

pattern HSPSEnabled :: H265SlowPal
pattern HSPSEnabled = H265SlowPal' "ENABLED"

{-# COMPLETE
  HSPSDisabled,
  HSPSEnabled,
  H265SlowPal'
  #-}

instance FromText H265SlowPal where
  parser = (H265SlowPal' . mk) <$> takeText

instance ToText H265SlowPal where
  toText (H265SlowPal' ci) = original ci

instance Hashable H265SlowPal

instance NFData H265SlowPal

instance ToByteString H265SlowPal

instance ToQuery H265SlowPal

instance ToHeader H265SlowPal

instance ToJSON H265SlowPal where
  toJSON = toJSONText

instance FromJSON H265SlowPal where
  parseJSON = parseJSONText "H265SlowPal"

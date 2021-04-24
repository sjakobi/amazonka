{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264SlowPal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264SlowPal
  ( H264SlowPal
      ( ..,
        HSPDisabled,
        HSPEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
data H264SlowPal = H264SlowPal' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HSPDisabled :: H264SlowPal
pattern HSPDisabled = H264SlowPal' "DISABLED"

pattern HSPEnabled :: H264SlowPal
pattern HSPEnabled = H264SlowPal' "ENABLED"

{-# COMPLETE
  HSPDisabled,
  HSPEnabled,
  H264SlowPal'
  #-}

instance FromText H264SlowPal where
  parser = (H264SlowPal' . mk) <$> takeText

instance ToText H264SlowPal where
  toText (H264SlowPal' ci) = original ci

instance Hashable H264SlowPal

instance NFData H264SlowPal

instance ToByteString H264SlowPal

instance ToQuery H264SlowPal

instance ToHeader H264SlowPal

instance ToJSON H264SlowPal where
  toJSON = toJSONText

instance FromJSON H264SlowPal where
  parseJSON = parseJSONText "H264SlowPal"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2SlowPal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2SlowPal
  ( Mpeg2SlowPal
      ( ..,
        MSPDisabled,
        MSPEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames per second (fps). Enable slow PAL to create a 25 fps output. When you enable slow PAL, MediaConvert relabels the video frames to 25 fps and resamples your audio to keep it synchronized with the video. Note that enabling this setting will slightly reduce the duration of your video. Required settings: You must also set Framerate to 25. In your JSON job specification, set (framerateControl) to (SPECIFIED), (framerateNumerator) to 25 and (framerateDenominator) to 1.
data Mpeg2SlowPal = Mpeg2SlowPal' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSPDisabled :: Mpeg2SlowPal
pattern MSPDisabled = Mpeg2SlowPal' "DISABLED"

pattern MSPEnabled :: Mpeg2SlowPal
pattern MSPEnabled = Mpeg2SlowPal' "ENABLED"

{-# COMPLETE
  MSPDisabled,
  MSPEnabled,
  Mpeg2SlowPal'
  #-}

instance FromText Mpeg2SlowPal where
  parser = (Mpeg2SlowPal' . mk) <$> takeText

instance ToText Mpeg2SlowPal where
  toText (Mpeg2SlowPal' ci) = original ci

instance Hashable Mpeg2SlowPal

instance NFData Mpeg2SlowPal

instance ToByteString Mpeg2SlowPal

instance ToQuery Mpeg2SlowPal

instance ToHeader Mpeg2SlowPal

instance ToJSON Mpeg2SlowPal where
  toJSON = toJSONText

instance FromJSON Mpeg2SlowPal where
  parseJSON = parseJSONText "Mpeg2SlowPal"

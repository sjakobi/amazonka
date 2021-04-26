{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        H265SlowPalDISABLED,
        H265SlowPalENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames
-- per second (fps). Enable slow PAL to create a 25 fps output. When you
-- enable slow PAL, MediaConvert relabels the video frames to 25 fps and
-- resamples your audio to keep it synchronized with the video. Note that
-- enabling this setting will slightly reduce the duration of your video.
-- Required settings: You must also set Framerate to 25. In your JSON job
-- specification, set (framerateControl) to (SPECIFIED),
-- (framerateNumerator) to 25 and (framerateDenominator) to 1.
newtype H265SlowPal = H265SlowPal'
  { fromH265SlowPal ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern H265SlowPalDISABLED :: H265SlowPal
pattern H265SlowPalDISABLED = H265SlowPal' "DISABLED"

pattern H265SlowPalENABLED :: H265SlowPal
pattern H265SlowPalENABLED = H265SlowPal' "ENABLED"

{-# COMPLETE
  H265SlowPalDISABLED,
  H265SlowPalENABLED,
  H265SlowPal'
  #-}

instance Prelude.FromText H265SlowPal where
  parser = H265SlowPal' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265SlowPal where
  toText (H265SlowPal' x) = x

instance Prelude.Hashable H265SlowPal

instance Prelude.NFData H265SlowPal

instance Prelude.ToByteString H265SlowPal

instance Prelude.ToQuery H265SlowPal

instance Prelude.ToHeader H265SlowPal

instance Prelude.ToJSON H265SlowPal where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265SlowPal where
  parseJSON = Prelude.parseJSONText "H265SlowPal"

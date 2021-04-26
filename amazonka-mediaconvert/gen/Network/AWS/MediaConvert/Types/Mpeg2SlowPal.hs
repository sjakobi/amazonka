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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2SlowPal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2SlowPal
  ( Mpeg2SlowPal
      ( ..,
        Mpeg2SlowPalDISABLED,
        Mpeg2SlowPalENABLED
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
newtype Mpeg2SlowPal = Mpeg2SlowPal'
  { fromMpeg2SlowPal ::
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

pattern Mpeg2SlowPalDISABLED :: Mpeg2SlowPal
pattern Mpeg2SlowPalDISABLED = Mpeg2SlowPal' "DISABLED"

pattern Mpeg2SlowPalENABLED :: Mpeg2SlowPal
pattern Mpeg2SlowPalENABLED = Mpeg2SlowPal' "ENABLED"

{-# COMPLETE
  Mpeg2SlowPalDISABLED,
  Mpeg2SlowPalENABLED,
  Mpeg2SlowPal'
  #-}

instance Prelude.FromText Mpeg2SlowPal where
  parser = Mpeg2SlowPal' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2SlowPal where
  toText (Mpeg2SlowPal' x) = x

instance Prelude.Hashable Mpeg2SlowPal

instance Prelude.NFData Mpeg2SlowPal

instance Prelude.ToByteString Mpeg2SlowPal

instance Prelude.ToQuery Mpeg2SlowPal

instance Prelude.ToHeader Mpeg2SlowPal

instance Prelude.ToJSON Mpeg2SlowPal where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2SlowPal where
  parseJSON = Prelude.parseJSONText "Mpeg2SlowPal"

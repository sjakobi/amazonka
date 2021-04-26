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
-- Module      : Network.AWS.MediaConvert.Types.ProresSlowPal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresSlowPal
  ( ProresSlowPal
      ( ..,
        ProresSlowPalDISABLED,
        ProresSlowPalENABLED
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
newtype ProresSlowPal = ProresSlowPal'
  { fromProresSlowPal ::
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

pattern ProresSlowPalDISABLED :: ProresSlowPal
pattern ProresSlowPalDISABLED = ProresSlowPal' "DISABLED"

pattern ProresSlowPalENABLED :: ProresSlowPal
pattern ProresSlowPalENABLED = ProresSlowPal' "ENABLED"

{-# COMPLETE
  ProresSlowPalDISABLED,
  ProresSlowPalENABLED,
  ProresSlowPal'
  #-}

instance Prelude.FromText ProresSlowPal where
  parser = ProresSlowPal' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresSlowPal where
  toText (ProresSlowPal' x) = x

instance Prelude.Hashable ProresSlowPal

instance Prelude.NFData ProresSlowPal

instance Prelude.ToByteString ProresSlowPal

instance Prelude.ToQuery ProresSlowPal

instance Prelude.ToHeader ProresSlowPal

instance Prelude.ToJSON ProresSlowPal where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresSlowPal where
  parseJSON = Prelude.parseJSONText "ProresSlowPal"

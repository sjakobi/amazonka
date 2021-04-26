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
-- Module      : Network.AWS.MediaConvert.Types.Vc3SlowPal
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3SlowPal
  ( Vc3SlowPal
      ( ..,
        Vc3SlowPalDISABLED,
        Vc3SlowPalENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless your input frame rate is 23.976 or 24 frames
-- per second (fps). Enable slow PAL to create a 25 fps output by
-- relabeling the video frames and resampling your audio. Note that
-- enabling this setting will slightly reduce the duration of your video.
-- Related settings: You must also set Framerate to 25. In your JSON job
-- specification, set (framerateControl) to (SPECIFIED),
-- (framerateNumerator) to 25 and (framerateDenominator) to 1.
newtype Vc3SlowPal = Vc3SlowPal'
  { fromVc3SlowPal ::
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

pattern Vc3SlowPalDISABLED :: Vc3SlowPal
pattern Vc3SlowPalDISABLED = Vc3SlowPal' "DISABLED"

pattern Vc3SlowPalENABLED :: Vc3SlowPal
pattern Vc3SlowPalENABLED = Vc3SlowPal' "ENABLED"

{-# COMPLETE
  Vc3SlowPalDISABLED,
  Vc3SlowPalENABLED,
  Vc3SlowPal'
  #-}

instance Prelude.FromText Vc3SlowPal where
  parser = Vc3SlowPal' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vc3SlowPal where
  toText (Vc3SlowPal' x) = x

instance Prelude.Hashable Vc3SlowPal

instance Prelude.NFData Vc3SlowPal

instance Prelude.ToByteString Vc3SlowPal

instance Prelude.ToQuery Vc3SlowPal

instance Prelude.ToHeader Vc3SlowPal

instance Prelude.ToJSON Vc3SlowPal where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vc3SlowPal where
  parseJSON = Prelude.parseJSONText "Vc3SlowPal"

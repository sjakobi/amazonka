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
-- Module      : Network.AWS.MediaConvert.Types.H264SceneChangeDetect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264SceneChangeDetect
  ( H264SceneChangeDetect
      ( ..,
        H264SceneChangeDetectDISABLED,
        H264SceneChangeDetectENABLED,
        H264SceneChangeDetectTRANSITIONDETECTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting to insert I-frames at scene changes that the service
-- automatically detects. This improves video quality and is enabled by
-- default. If this output uses QVBR, choose Transition detection
-- (TRANSITION_DETECTION) for further video quality improvement. For more
-- information about QVBR, see
-- https:\/\/docs.aws.amazon.com\/console\/mediaconvert\/cbr-vbr-qvbr.
newtype H264SceneChangeDetect = H264SceneChangeDetect'
  { fromH264SceneChangeDetect ::
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

pattern H264SceneChangeDetectDISABLED :: H264SceneChangeDetect
pattern H264SceneChangeDetectDISABLED = H264SceneChangeDetect' "DISABLED"

pattern H264SceneChangeDetectENABLED :: H264SceneChangeDetect
pattern H264SceneChangeDetectENABLED = H264SceneChangeDetect' "ENABLED"

pattern H264SceneChangeDetectTRANSITIONDETECTION :: H264SceneChangeDetect
pattern H264SceneChangeDetectTRANSITIONDETECTION = H264SceneChangeDetect' "TRANSITION_DETECTION"

{-# COMPLETE
  H264SceneChangeDetectDISABLED,
  H264SceneChangeDetectENABLED,
  H264SceneChangeDetectTRANSITIONDETECTION,
  H264SceneChangeDetect'
  #-}

instance Prelude.FromText H264SceneChangeDetect where
  parser = H264SceneChangeDetect' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264SceneChangeDetect where
  toText (H264SceneChangeDetect' x) = x

instance Prelude.Hashable H264SceneChangeDetect

instance Prelude.NFData H264SceneChangeDetect

instance Prelude.ToByteString H264SceneChangeDetect

instance Prelude.ToQuery H264SceneChangeDetect

instance Prelude.ToHeader H264SceneChangeDetect

instance Prelude.ToJSON H264SceneChangeDetect where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264SceneChangeDetect where
  parseJSON = Prelude.parseJSONText "H264SceneChangeDetect"

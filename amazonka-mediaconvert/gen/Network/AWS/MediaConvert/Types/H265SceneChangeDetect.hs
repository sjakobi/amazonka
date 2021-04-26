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
-- Module      : Network.AWS.MediaConvert.Types.H265SceneChangeDetect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265SceneChangeDetect
  ( H265SceneChangeDetect
      ( ..,
        H265SceneChangeDetectDISABLED,
        H265SceneChangeDetectENABLED,
        H265SceneChangeDetectTRANSITIONDETECTION
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
newtype H265SceneChangeDetect = H265SceneChangeDetect'
  { fromH265SceneChangeDetect ::
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

pattern H265SceneChangeDetectDISABLED :: H265SceneChangeDetect
pattern H265SceneChangeDetectDISABLED = H265SceneChangeDetect' "DISABLED"

pattern H265SceneChangeDetectENABLED :: H265SceneChangeDetect
pattern H265SceneChangeDetectENABLED = H265SceneChangeDetect' "ENABLED"

pattern H265SceneChangeDetectTRANSITIONDETECTION :: H265SceneChangeDetect
pattern H265SceneChangeDetectTRANSITIONDETECTION = H265SceneChangeDetect' "TRANSITION_DETECTION"

{-# COMPLETE
  H265SceneChangeDetectDISABLED,
  H265SceneChangeDetectENABLED,
  H265SceneChangeDetectTRANSITIONDETECTION,
  H265SceneChangeDetect'
  #-}

instance Prelude.FromText H265SceneChangeDetect where
  parser = H265SceneChangeDetect' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265SceneChangeDetect where
  toText (H265SceneChangeDetect' x) = x

instance Prelude.Hashable H265SceneChangeDetect

instance Prelude.NFData H265SceneChangeDetect

instance Prelude.ToByteString H265SceneChangeDetect

instance Prelude.ToQuery H265SceneChangeDetect

instance Prelude.ToHeader H265SceneChangeDetect

instance Prelude.ToJSON H265SceneChangeDetect where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265SceneChangeDetect where
  parseJSON = Prelude.parseJSONText "H265SceneChangeDetect"

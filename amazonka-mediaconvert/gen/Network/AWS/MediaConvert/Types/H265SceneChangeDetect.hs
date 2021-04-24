{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        HSCDSDisabled,
        HSCDSEnabled,
        HSCDSTransitionDetection
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.
data H265SceneChangeDetect
  = H265SceneChangeDetect'
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

pattern HSCDSDisabled :: H265SceneChangeDetect
pattern HSCDSDisabled = H265SceneChangeDetect' "DISABLED"

pattern HSCDSEnabled :: H265SceneChangeDetect
pattern HSCDSEnabled = H265SceneChangeDetect' "ENABLED"

pattern HSCDSTransitionDetection :: H265SceneChangeDetect
pattern HSCDSTransitionDetection = H265SceneChangeDetect' "TRANSITION_DETECTION"

{-# COMPLETE
  HSCDSDisabled,
  HSCDSEnabled,
  HSCDSTransitionDetection,
  H265SceneChangeDetect'
  #-}

instance FromText H265SceneChangeDetect where
  parser = (H265SceneChangeDetect' . mk) <$> takeText

instance ToText H265SceneChangeDetect where
  toText (H265SceneChangeDetect' ci) = original ci

instance Hashable H265SceneChangeDetect

instance NFData H265SceneChangeDetect

instance ToByteString H265SceneChangeDetect

instance ToQuery H265SceneChangeDetect

instance ToHeader H265SceneChangeDetect

instance ToJSON H265SceneChangeDetect where
  toJSON = toJSONText

instance FromJSON H265SceneChangeDetect where
  parseJSON = parseJSONText "H265SceneChangeDetect"

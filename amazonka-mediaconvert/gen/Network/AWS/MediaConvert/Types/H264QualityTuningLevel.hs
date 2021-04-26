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
-- Module      : Network.AWS.MediaConvert.Types.H264QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264QualityTuningLevel
  ( H264QualityTuningLevel
      ( ..,
        H264QualityTuningLevelMULTIPASSHQ,
        H264QualityTuningLevelSINGLEPASS,
        H264QualityTuningLevelSINGLEPASSHQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how
-- you want to trade off encoding speed for output video quality. The
-- default behavior is faster, lower quality, single-pass encoding.
newtype H264QualityTuningLevel = H264QualityTuningLevel'
  { fromH264QualityTuningLevel ::
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

pattern H264QualityTuningLevelMULTIPASSHQ :: H264QualityTuningLevel
pattern H264QualityTuningLevelMULTIPASSHQ = H264QualityTuningLevel' "MULTI_PASS_HQ"

pattern H264QualityTuningLevelSINGLEPASS :: H264QualityTuningLevel
pattern H264QualityTuningLevelSINGLEPASS = H264QualityTuningLevel' "SINGLE_PASS"

pattern H264QualityTuningLevelSINGLEPASSHQ :: H264QualityTuningLevel
pattern H264QualityTuningLevelSINGLEPASSHQ = H264QualityTuningLevel' "SINGLE_PASS_HQ"

{-# COMPLETE
  H264QualityTuningLevelMULTIPASSHQ,
  H264QualityTuningLevelSINGLEPASS,
  H264QualityTuningLevelSINGLEPASSHQ,
  H264QualityTuningLevel'
  #-}

instance Prelude.FromText H264QualityTuningLevel where
  parser = H264QualityTuningLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264QualityTuningLevel where
  toText (H264QualityTuningLevel' x) = x

instance Prelude.Hashable H264QualityTuningLevel

instance Prelude.NFData H264QualityTuningLevel

instance Prelude.ToByteString H264QualityTuningLevel

instance Prelude.ToQuery H264QualityTuningLevel

instance Prelude.ToHeader H264QualityTuningLevel

instance Prelude.ToJSON H264QualityTuningLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264QualityTuningLevel where
  parseJSON = Prelude.parseJSONText "H264QualityTuningLevel"

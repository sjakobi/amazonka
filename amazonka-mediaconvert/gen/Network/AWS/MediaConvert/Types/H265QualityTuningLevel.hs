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
-- Module      : Network.AWS.MediaConvert.Types.H265QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265QualityTuningLevel
  ( H265QualityTuningLevel
      ( ..,
        H265QualityTuningLevelMULTIPASSHQ,
        H265QualityTuningLevelSINGLEPASS,
        H265QualityTuningLevelSINGLEPASSHQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how
-- you want to trade off encoding speed for output video quality. The
-- default behavior is faster, lower quality, single-pass encoding.
newtype H265QualityTuningLevel = H265QualityTuningLevel'
  { fromH265QualityTuningLevel ::
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

pattern H265QualityTuningLevelMULTIPASSHQ :: H265QualityTuningLevel
pattern H265QualityTuningLevelMULTIPASSHQ = H265QualityTuningLevel' "MULTI_PASS_HQ"

pattern H265QualityTuningLevelSINGLEPASS :: H265QualityTuningLevel
pattern H265QualityTuningLevelSINGLEPASS = H265QualityTuningLevel' "SINGLE_PASS"

pattern H265QualityTuningLevelSINGLEPASSHQ :: H265QualityTuningLevel
pattern H265QualityTuningLevelSINGLEPASSHQ = H265QualityTuningLevel' "SINGLE_PASS_HQ"

{-# COMPLETE
  H265QualityTuningLevelMULTIPASSHQ,
  H265QualityTuningLevelSINGLEPASS,
  H265QualityTuningLevelSINGLEPASSHQ,
  H265QualityTuningLevel'
  #-}

instance Prelude.FromText H265QualityTuningLevel where
  parser = H265QualityTuningLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265QualityTuningLevel where
  toText (H265QualityTuningLevel' x) = x

instance Prelude.Hashable H265QualityTuningLevel

instance Prelude.NFData H265QualityTuningLevel

instance Prelude.ToByteString H265QualityTuningLevel

instance Prelude.ToQuery H265QualityTuningLevel

instance Prelude.ToHeader H265QualityTuningLevel

instance Prelude.ToJSON H265QualityTuningLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265QualityTuningLevel where
  parseJSON = Prelude.parseJSONText "H265QualityTuningLevel"

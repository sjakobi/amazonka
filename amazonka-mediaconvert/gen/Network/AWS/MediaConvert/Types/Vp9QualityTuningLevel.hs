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
-- Module      : Network.AWS.MediaConvert.Types.Vp9QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp9QualityTuningLevel
  ( Vp9QualityTuningLevel
      ( ..,
        Vp9QualityTuningLevelMULTIPASS,
        Vp9QualityTuningLevelMULTIPASSHQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how
-- you want to trade off encoding speed for output video quality. The
-- default behavior is faster, lower quality, multi-pass encoding.
newtype Vp9QualityTuningLevel = Vp9QualityTuningLevel'
  { fromVp9QualityTuningLevel ::
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

pattern Vp9QualityTuningLevelMULTIPASS :: Vp9QualityTuningLevel
pattern Vp9QualityTuningLevelMULTIPASS = Vp9QualityTuningLevel' "MULTI_PASS"

pattern Vp9QualityTuningLevelMULTIPASSHQ :: Vp9QualityTuningLevel
pattern Vp9QualityTuningLevelMULTIPASSHQ = Vp9QualityTuningLevel' "MULTI_PASS_HQ"

{-# COMPLETE
  Vp9QualityTuningLevelMULTIPASS,
  Vp9QualityTuningLevelMULTIPASSHQ,
  Vp9QualityTuningLevel'
  #-}

instance Prelude.FromText Vp9QualityTuningLevel where
  parser = Vp9QualityTuningLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp9QualityTuningLevel where
  toText (Vp9QualityTuningLevel' x) = x

instance Prelude.Hashable Vp9QualityTuningLevel

instance Prelude.NFData Vp9QualityTuningLevel

instance Prelude.ToByteString Vp9QualityTuningLevel

instance Prelude.ToQuery Vp9QualityTuningLevel

instance Prelude.ToHeader Vp9QualityTuningLevel

instance Prelude.ToJSON Vp9QualityTuningLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp9QualityTuningLevel where
  parseJSON = Prelude.parseJSONText "Vp9QualityTuningLevel"

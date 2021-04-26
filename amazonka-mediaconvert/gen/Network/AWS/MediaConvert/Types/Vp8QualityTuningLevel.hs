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
-- Module      : Network.AWS.MediaConvert.Types.Vp8QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vp8QualityTuningLevel
  ( Vp8QualityTuningLevel
      ( ..,
        Vp8QualityTuningLevelMULTIPASS,
        Vp8QualityTuningLevelMULTIPASSHQ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how
-- you want to trade off encoding speed for output video quality. The
-- default behavior is faster, lower quality, multi-pass encoding.
newtype Vp8QualityTuningLevel = Vp8QualityTuningLevel'
  { fromVp8QualityTuningLevel ::
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

pattern Vp8QualityTuningLevelMULTIPASS :: Vp8QualityTuningLevel
pattern Vp8QualityTuningLevelMULTIPASS = Vp8QualityTuningLevel' "MULTI_PASS"

pattern Vp8QualityTuningLevelMULTIPASSHQ :: Vp8QualityTuningLevel
pattern Vp8QualityTuningLevelMULTIPASSHQ = Vp8QualityTuningLevel' "MULTI_PASS_HQ"

{-# COMPLETE
  Vp8QualityTuningLevelMULTIPASS,
  Vp8QualityTuningLevelMULTIPASSHQ,
  Vp8QualityTuningLevel'
  #-}

instance Prelude.FromText Vp8QualityTuningLevel where
  parser = Vp8QualityTuningLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vp8QualityTuningLevel where
  toText (Vp8QualityTuningLevel' x) = x

instance Prelude.Hashable Vp8QualityTuningLevel

instance Prelude.NFData Vp8QualityTuningLevel

instance Prelude.ToByteString Vp8QualityTuningLevel

instance Prelude.ToQuery Vp8QualityTuningLevel

instance Prelude.ToHeader Vp8QualityTuningLevel

instance Prelude.ToJSON Vp8QualityTuningLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vp8QualityTuningLevel where
  parseJSON = Prelude.parseJSONText "Vp8QualityTuningLevel"

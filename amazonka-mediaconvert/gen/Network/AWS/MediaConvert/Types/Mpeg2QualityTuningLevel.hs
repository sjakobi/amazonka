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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2QualityTuningLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2QualityTuningLevel
  ( Mpeg2QualityTuningLevel
      ( ..,
        Mpeg2QualityTuningLevelMULTIPASS,
        Mpeg2QualityTuningLevelSINGLEPASS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Use Quality tuning level (qualityTuningLevel) to choose how
-- you want to trade off encoding speed for output video quality. The
-- default behavior is faster, lower quality, single-pass encoding.
newtype Mpeg2QualityTuningLevel = Mpeg2QualityTuningLevel'
  { fromMpeg2QualityTuningLevel ::
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

pattern Mpeg2QualityTuningLevelMULTIPASS :: Mpeg2QualityTuningLevel
pattern Mpeg2QualityTuningLevelMULTIPASS = Mpeg2QualityTuningLevel' "MULTI_PASS"

pattern Mpeg2QualityTuningLevelSINGLEPASS :: Mpeg2QualityTuningLevel
pattern Mpeg2QualityTuningLevelSINGLEPASS = Mpeg2QualityTuningLevel' "SINGLE_PASS"

{-# COMPLETE
  Mpeg2QualityTuningLevelMULTIPASS,
  Mpeg2QualityTuningLevelSINGLEPASS,
  Mpeg2QualityTuningLevel'
  #-}

instance Prelude.FromText Mpeg2QualityTuningLevel where
  parser = Mpeg2QualityTuningLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2QualityTuningLevel where
  toText (Mpeg2QualityTuningLevel' x) = x

instance Prelude.Hashable Mpeg2QualityTuningLevel

instance Prelude.NFData Mpeg2QualityTuningLevel

instance Prelude.ToByteString Mpeg2QualityTuningLevel

instance Prelude.ToQuery Mpeg2QualityTuningLevel

instance Prelude.ToHeader Mpeg2QualityTuningLevel

instance Prelude.ToJSON Mpeg2QualityTuningLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2QualityTuningLevel where
  parseJSON = Prelude.parseJSONText "Mpeg2QualityTuningLevel"

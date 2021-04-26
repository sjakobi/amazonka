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
-- Module      : Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioNormalizationPeakCalculation
  ( AudioNormalizationPeakCalculation
      ( ..,
        AudioNormalizationPeakCalculationNONE,
        AudioNormalizationPeakCalculationTRUEPEAK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If set to TRUE_PEAK, calculate and log the TruePeak for each output\'s
-- audio track loudness.
newtype AudioNormalizationPeakCalculation = AudioNormalizationPeakCalculation'
  { fromAudioNormalizationPeakCalculation ::
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

pattern AudioNormalizationPeakCalculationNONE :: AudioNormalizationPeakCalculation
pattern AudioNormalizationPeakCalculationNONE = AudioNormalizationPeakCalculation' "NONE"

pattern AudioNormalizationPeakCalculationTRUEPEAK :: AudioNormalizationPeakCalculation
pattern AudioNormalizationPeakCalculationTRUEPEAK = AudioNormalizationPeakCalculation' "TRUE_PEAK"

{-# COMPLETE
  AudioNormalizationPeakCalculationNONE,
  AudioNormalizationPeakCalculationTRUEPEAK,
  AudioNormalizationPeakCalculation'
  #-}

instance Prelude.FromText AudioNormalizationPeakCalculation where
  parser = AudioNormalizationPeakCalculation' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioNormalizationPeakCalculation where
  toText (AudioNormalizationPeakCalculation' x) = x

instance Prelude.Hashable AudioNormalizationPeakCalculation

instance Prelude.NFData AudioNormalizationPeakCalculation

instance Prelude.ToByteString AudioNormalizationPeakCalculation

instance Prelude.ToQuery AudioNormalizationPeakCalculation

instance Prelude.ToHeader AudioNormalizationPeakCalculation

instance Prelude.ToJSON AudioNormalizationPeakCalculation where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioNormalizationPeakCalculation where
  parseJSON = Prelude.parseJSONText "AudioNormalizationPeakCalculation"

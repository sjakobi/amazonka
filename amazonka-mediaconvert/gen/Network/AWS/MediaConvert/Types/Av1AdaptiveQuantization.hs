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
-- Module      : Network.AWS.MediaConvert.Types.Av1AdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1AdaptiveQuantization
  ( Av1AdaptiveQuantization
      ( ..,
        Av1AdaptiveQuantizationHIGH,
        Av1AdaptiveQuantizationHIGHER,
        Av1AdaptiveQuantizationLOW,
        Av1AdaptiveQuantizationMAX,
        Av1AdaptiveQuantizationMEDIUM,
        Av1AdaptiveQuantizationOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify the strength of any adaptive quantization filters that you
-- enable. The value that you choose here applies to Spatial adaptive
-- quantization (spatialAdaptiveQuantization).
newtype Av1AdaptiveQuantization = Av1AdaptiveQuantization'
  { fromAv1AdaptiveQuantization ::
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

pattern Av1AdaptiveQuantizationHIGH :: Av1AdaptiveQuantization
pattern Av1AdaptiveQuantizationHIGH = Av1AdaptiveQuantization' "HIGH"

pattern Av1AdaptiveQuantizationHIGHER :: Av1AdaptiveQuantization
pattern Av1AdaptiveQuantizationHIGHER = Av1AdaptiveQuantization' "HIGHER"

pattern Av1AdaptiveQuantizationLOW :: Av1AdaptiveQuantization
pattern Av1AdaptiveQuantizationLOW = Av1AdaptiveQuantization' "LOW"

pattern Av1AdaptiveQuantizationMAX :: Av1AdaptiveQuantization
pattern Av1AdaptiveQuantizationMAX = Av1AdaptiveQuantization' "MAX"

pattern Av1AdaptiveQuantizationMEDIUM :: Av1AdaptiveQuantization
pattern Av1AdaptiveQuantizationMEDIUM = Av1AdaptiveQuantization' "MEDIUM"

pattern Av1AdaptiveQuantizationOFF :: Av1AdaptiveQuantization
pattern Av1AdaptiveQuantizationOFF = Av1AdaptiveQuantization' "OFF"

{-# COMPLETE
  Av1AdaptiveQuantizationHIGH,
  Av1AdaptiveQuantizationHIGHER,
  Av1AdaptiveQuantizationLOW,
  Av1AdaptiveQuantizationMAX,
  Av1AdaptiveQuantizationMEDIUM,
  Av1AdaptiveQuantizationOFF,
  Av1AdaptiveQuantization'
  #-}

instance Prelude.FromText Av1AdaptiveQuantization where
  parser = Av1AdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText Av1AdaptiveQuantization where
  toText (Av1AdaptiveQuantization' x) = x

instance Prelude.Hashable Av1AdaptiveQuantization

instance Prelude.NFData Av1AdaptiveQuantization

instance Prelude.ToByteString Av1AdaptiveQuantization

instance Prelude.ToQuery Av1AdaptiveQuantization

instance Prelude.ToHeader Av1AdaptiveQuantization

instance Prelude.ToJSON Av1AdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Av1AdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "Av1AdaptiveQuantization"

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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2AdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2AdaptiveQuantization
  ( Mpeg2AdaptiveQuantization
      ( ..,
        Mpeg2AdaptiveQuantizationAUTO,
        Mpeg2AdaptiveQuantizationHIGH,
        Mpeg2AdaptiveQuantizationLOW,
        Mpeg2AdaptiveQuantizationMEDIUM,
        Mpeg2AdaptiveQuantizationOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Adaptive Quantization
newtype Mpeg2AdaptiveQuantization = Mpeg2AdaptiveQuantization'
  { fromMpeg2AdaptiveQuantization ::
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

pattern Mpeg2AdaptiveQuantizationAUTO :: Mpeg2AdaptiveQuantization
pattern Mpeg2AdaptiveQuantizationAUTO = Mpeg2AdaptiveQuantization' "AUTO"

pattern Mpeg2AdaptiveQuantizationHIGH :: Mpeg2AdaptiveQuantization
pattern Mpeg2AdaptiveQuantizationHIGH = Mpeg2AdaptiveQuantization' "HIGH"

pattern Mpeg2AdaptiveQuantizationLOW :: Mpeg2AdaptiveQuantization
pattern Mpeg2AdaptiveQuantizationLOW = Mpeg2AdaptiveQuantization' "LOW"

pattern Mpeg2AdaptiveQuantizationMEDIUM :: Mpeg2AdaptiveQuantization
pattern Mpeg2AdaptiveQuantizationMEDIUM = Mpeg2AdaptiveQuantization' "MEDIUM"

pattern Mpeg2AdaptiveQuantizationOFF :: Mpeg2AdaptiveQuantization
pattern Mpeg2AdaptiveQuantizationOFF = Mpeg2AdaptiveQuantization' "OFF"

{-# COMPLETE
  Mpeg2AdaptiveQuantizationAUTO,
  Mpeg2AdaptiveQuantizationHIGH,
  Mpeg2AdaptiveQuantizationLOW,
  Mpeg2AdaptiveQuantizationMEDIUM,
  Mpeg2AdaptiveQuantizationOFF,
  Mpeg2AdaptiveQuantization'
  #-}

instance Prelude.FromText Mpeg2AdaptiveQuantization where
  parser = Mpeg2AdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2AdaptiveQuantization where
  toText (Mpeg2AdaptiveQuantization' x) = x

instance Prelude.Hashable Mpeg2AdaptiveQuantization

instance Prelude.NFData Mpeg2AdaptiveQuantization

instance Prelude.ToByteString Mpeg2AdaptiveQuantization

instance Prelude.ToQuery Mpeg2AdaptiveQuantization

instance Prelude.ToHeader Mpeg2AdaptiveQuantization

instance Prelude.ToJSON Mpeg2AdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2AdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "Mpeg2AdaptiveQuantization"

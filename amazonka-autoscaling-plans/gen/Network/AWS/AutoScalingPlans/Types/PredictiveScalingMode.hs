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
-- Module      : Network.AWS.AutoScalingPlans.Types.PredictiveScalingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.PredictiveScalingMode
  ( PredictiveScalingMode
      ( ..,
        PredictiveScalingModeForecastAndScale,
        PredictiveScalingModeForecastOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PredictiveScalingMode = PredictiveScalingMode'
  { fromPredictiveScalingMode ::
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

pattern PredictiveScalingModeForecastAndScale :: PredictiveScalingMode
pattern PredictiveScalingModeForecastAndScale = PredictiveScalingMode' "ForecastAndScale"

pattern PredictiveScalingModeForecastOnly :: PredictiveScalingMode
pattern PredictiveScalingModeForecastOnly = PredictiveScalingMode' "ForecastOnly"

{-# COMPLETE
  PredictiveScalingModeForecastAndScale,
  PredictiveScalingModeForecastOnly,
  PredictiveScalingMode'
  #-}

instance Prelude.FromText PredictiveScalingMode where
  parser = PredictiveScalingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText PredictiveScalingMode where
  toText (PredictiveScalingMode' x) = x

instance Prelude.Hashable PredictiveScalingMode

instance Prelude.NFData PredictiveScalingMode

instance Prelude.ToByteString PredictiveScalingMode

instance Prelude.ToQuery PredictiveScalingMode

instance Prelude.ToHeader PredictiveScalingMode

instance Prelude.ToJSON PredictiveScalingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PredictiveScalingMode where
  parseJSON = Prelude.parseJSONText "PredictiveScalingMode"

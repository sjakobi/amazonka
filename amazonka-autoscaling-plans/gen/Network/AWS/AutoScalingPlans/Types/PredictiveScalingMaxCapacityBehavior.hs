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
-- Module      : Network.AWS.AutoScalingPlans.Types.PredictiveScalingMaxCapacityBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.PredictiveScalingMaxCapacityBehavior
  ( PredictiveScalingMaxCapacityBehavior
      ( ..,
        PredictiveScalingMaxCapacityBehaviorSetForecastCapacityToMaxCapacity,
        PredictiveScalingMaxCapacityBehaviorSetMaxCapacityAboveForecastCapacity,
        PredictiveScalingMaxCapacityBehaviorSetMaxCapacityToForecastCapacity
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PredictiveScalingMaxCapacityBehavior = PredictiveScalingMaxCapacityBehavior'
  { fromPredictiveScalingMaxCapacityBehavior ::
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

pattern PredictiveScalingMaxCapacityBehaviorSetForecastCapacityToMaxCapacity :: PredictiveScalingMaxCapacityBehavior
pattern PredictiveScalingMaxCapacityBehaviorSetForecastCapacityToMaxCapacity = PredictiveScalingMaxCapacityBehavior' "SetForecastCapacityToMaxCapacity"

pattern PredictiveScalingMaxCapacityBehaviorSetMaxCapacityAboveForecastCapacity :: PredictiveScalingMaxCapacityBehavior
pattern PredictiveScalingMaxCapacityBehaviorSetMaxCapacityAboveForecastCapacity = PredictiveScalingMaxCapacityBehavior' "SetMaxCapacityAboveForecastCapacity"

pattern PredictiveScalingMaxCapacityBehaviorSetMaxCapacityToForecastCapacity :: PredictiveScalingMaxCapacityBehavior
pattern PredictiveScalingMaxCapacityBehaviorSetMaxCapacityToForecastCapacity = PredictiveScalingMaxCapacityBehavior' "SetMaxCapacityToForecastCapacity"

{-# COMPLETE
  PredictiveScalingMaxCapacityBehaviorSetForecastCapacityToMaxCapacity,
  PredictiveScalingMaxCapacityBehaviorSetMaxCapacityAboveForecastCapacity,
  PredictiveScalingMaxCapacityBehaviorSetMaxCapacityToForecastCapacity,
  PredictiveScalingMaxCapacityBehavior'
  #-}

instance Prelude.FromText PredictiveScalingMaxCapacityBehavior where
  parser = PredictiveScalingMaxCapacityBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText PredictiveScalingMaxCapacityBehavior where
  toText (PredictiveScalingMaxCapacityBehavior' x) = x

instance Prelude.Hashable PredictiveScalingMaxCapacityBehavior

instance Prelude.NFData PredictiveScalingMaxCapacityBehavior

instance Prelude.ToByteString PredictiveScalingMaxCapacityBehavior

instance Prelude.ToQuery PredictiveScalingMaxCapacityBehavior

instance Prelude.ToHeader PredictiveScalingMaxCapacityBehavior

instance Prelude.ToJSON PredictiveScalingMaxCapacityBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PredictiveScalingMaxCapacityBehavior where
  parseJSON = Prelude.parseJSONText "PredictiveScalingMaxCapacityBehavior"

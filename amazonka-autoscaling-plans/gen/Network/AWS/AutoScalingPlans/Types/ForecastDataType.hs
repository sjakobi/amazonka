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
-- Module      : Network.AWS.AutoScalingPlans.Types.ForecastDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ForecastDataType
  ( ForecastDataType
      ( ..,
        ForecastDataTypeCapacityForecast,
        ForecastDataTypeLoadForecast,
        ForecastDataTypeScheduledActionMaxCapacity,
        ForecastDataTypeScheduledActionMinCapacity
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ForecastDataType = ForecastDataType'
  { fromForecastDataType ::
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

pattern ForecastDataTypeCapacityForecast :: ForecastDataType
pattern ForecastDataTypeCapacityForecast = ForecastDataType' "CapacityForecast"

pattern ForecastDataTypeLoadForecast :: ForecastDataType
pattern ForecastDataTypeLoadForecast = ForecastDataType' "LoadForecast"

pattern ForecastDataTypeScheduledActionMaxCapacity :: ForecastDataType
pattern ForecastDataTypeScheduledActionMaxCapacity = ForecastDataType' "ScheduledActionMaxCapacity"

pattern ForecastDataTypeScheduledActionMinCapacity :: ForecastDataType
pattern ForecastDataTypeScheduledActionMinCapacity = ForecastDataType' "ScheduledActionMinCapacity"

{-# COMPLETE
  ForecastDataTypeCapacityForecast,
  ForecastDataTypeLoadForecast,
  ForecastDataTypeScheduledActionMaxCapacity,
  ForecastDataTypeScheduledActionMinCapacity,
  ForecastDataType'
  #-}

instance Prelude.FromText ForecastDataType where
  parser = ForecastDataType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ForecastDataType where
  toText (ForecastDataType' x) = x

instance Prelude.Hashable ForecastDataType

instance Prelude.NFData ForecastDataType

instance Prelude.ToByteString ForecastDataType

instance Prelude.ToQuery ForecastDataType

instance Prelude.ToHeader ForecastDataType

instance Prelude.ToJSON ForecastDataType where
  toJSON = Prelude.toJSONText

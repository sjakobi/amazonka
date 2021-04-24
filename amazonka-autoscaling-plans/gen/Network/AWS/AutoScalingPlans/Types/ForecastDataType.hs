{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CapacityForecast,
        LoadForecast,
        ScheduledActionMaxCapacity,
        ScheduledActionMinCapacity
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ForecastDataType = ForecastDataType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CapacityForecast :: ForecastDataType
pattern CapacityForecast = ForecastDataType' "CapacityForecast"

pattern LoadForecast :: ForecastDataType
pattern LoadForecast = ForecastDataType' "LoadForecast"

pattern ScheduledActionMaxCapacity :: ForecastDataType
pattern ScheduledActionMaxCapacity = ForecastDataType' "ScheduledActionMaxCapacity"

pattern ScheduledActionMinCapacity :: ForecastDataType
pattern ScheduledActionMinCapacity = ForecastDataType' "ScheduledActionMinCapacity"

{-# COMPLETE
  CapacityForecast,
  LoadForecast,
  ScheduledActionMaxCapacity,
  ScheduledActionMinCapacity,
  ForecastDataType'
  #-}

instance FromText ForecastDataType where
  parser = (ForecastDataType' . mk) <$> takeText

instance ToText ForecastDataType where
  toText (ForecastDataType' ci) = original ci

instance Hashable ForecastDataType

instance NFData ForecastDataType

instance ToByteString ForecastDataType

instance ToQuery ForecastDataType

instance ToHeader ForecastDataType

instance ToJSON ForecastDataType where
  toJSON = toJSONText

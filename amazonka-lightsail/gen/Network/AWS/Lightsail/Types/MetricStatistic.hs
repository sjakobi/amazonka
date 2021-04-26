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
-- Module      : Network.AWS.Lightsail.Types.MetricStatistic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.MetricStatistic
  ( MetricStatistic
      ( ..,
        MetricStatisticAverage,
        MetricStatisticMaximum,
        MetricStatisticMinimum,
        MetricStatisticSampleCount,
        MetricStatisticSum
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricStatistic = MetricStatistic'
  { fromMetricStatistic ::
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

pattern MetricStatisticAverage :: MetricStatistic
pattern MetricStatisticAverage = MetricStatistic' "Average"

pattern MetricStatisticMaximum :: MetricStatistic
pattern MetricStatisticMaximum = MetricStatistic' "Maximum"

pattern MetricStatisticMinimum :: MetricStatistic
pattern MetricStatisticMinimum = MetricStatistic' "Minimum"

pattern MetricStatisticSampleCount :: MetricStatistic
pattern MetricStatisticSampleCount = MetricStatistic' "SampleCount"

pattern MetricStatisticSum :: MetricStatistic
pattern MetricStatisticSum = MetricStatistic' "Sum"

{-# COMPLETE
  MetricStatisticAverage,
  MetricStatisticMaximum,
  MetricStatisticMinimum,
  MetricStatisticSampleCount,
  MetricStatisticSum,
  MetricStatistic'
  #-}

instance Prelude.FromText MetricStatistic where
  parser = MetricStatistic' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricStatistic where
  toText (MetricStatistic' x) = x

instance Prelude.Hashable MetricStatistic

instance Prelude.NFData MetricStatistic

instance Prelude.ToByteString MetricStatistic

instance Prelude.ToQuery MetricStatistic

instance Prelude.ToHeader MetricStatistic

instance Prelude.ToJSON MetricStatistic where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricStatistic where
  parseJSON = Prelude.parseJSONText "MetricStatistic"

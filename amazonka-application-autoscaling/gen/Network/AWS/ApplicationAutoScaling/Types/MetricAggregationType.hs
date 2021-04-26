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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.MetricAggregationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.MetricAggregationType
  ( MetricAggregationType
      ( ..,
        MetricAggregationTypeAverage,
        MetricAggregationTypeMaximum,
        MetricAggregationTypeMinimum
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricAggregationType = MetricAggregationType'
  { fromMetricAggregationType ::
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

pattern MetricAggregationTypeAverage :: MetricAggregationType
pattern MetricAggregationTypeAverage = MetricAggregationType' "Average"

pattern MetricAggregationTypeMaximum :: MetricAggregationType
pattern MetricAggregationTypeMaximum = MetricAggregationType' "Maximum"

pattern MetricAggregationTypeMinimum :: MetricAggregationType
pattern MetricAggregationTypeMinimum = MetricAggregationType' "Minimum"

{-# COMPLETE
  MetricAggregationTypeAverage,
  MetricAggregationTypeMaximum,
  MetricAggregationTypeMinimum,
  MetricAggregationType'
  #-}

instance Prelude.FromText MetricAggregationType where
  parser = MetricAggregationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricAggregationType where
  toText (MetricAggregationType' x) = x

instance Prelude.Hashable MetricAggregationType

instance Prelude.NFData MetricAggregationType

instance Prelude.ToByteString MetricAggregationType

instance Prelude.ToQuery MetricAggregationType

instance Prelude.ToHeader MetricAggregationType

instance Prelude.ToJSON MetricAggregationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricAggregationType where
  parseJSON = Prelude.parseJSONText "MetricAggregationType"

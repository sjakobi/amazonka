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
-- Module      : Network.AWS.AutoScaling.Types.MetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.MetricType
  ( MetricType
      ( ..,
        MetricTypeALBRequestCountPerTarget,
        MetricTypeASGAverageCPUUtilization,
        MetricTypeASGAverageNetworkIn,
        MetricTypeASGAverageNetworkOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricType = MetricType'
  { fromMetricType ::
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

pattern MetricTypeALBRequestCountPerTarget :: MetricType
pattern MetricTypeALBRequestCountPerTarget = MetricType' "ALBRequestCountPerTarget"

pattern MetricTypeASGAverageCPUUtilization :: MetricType
pattern MetricTypeASGAverageCPUUtilization = MetricType' "ASGAverageCPUUtilization"

pattern MetricTypeASGAverageNetworkIn :: MetricType
pattern MetricTypeASGAverageNetworkIn = MetricType' "ASGAverageNetworkIn"

pattern MetricTypeASGAverageNetworkOut :: MetricType
pattern MetricTypeASGAverageNetworkOut = MetricType' "ASGAverageNetworkOut"

{-# COMPLETE
  MetricTypeALBRequestCountPerTarget,
  MetricTypeASGAverageCPUUtilization,
  MetricTypeASGAverageNetworkIn,
  MetricTypeASGAverageNetworkOut,
  MetricType'
  #-}

instance Prelude.FromText MetricType where
  parser = MetricType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricType where
  toText (MetricType' x) = x

instance Prelude.Hashable MetricType

instance Prelude.NFData MetricType

instance Prelude.ToByteString MetricType

instance Prelude.ToQuery MetricType

instance Prelude.ToHeader MetricType

instance Prelude.FromXML MetricType where
  parseXML = Prelude.parseXMLText "MetricType"

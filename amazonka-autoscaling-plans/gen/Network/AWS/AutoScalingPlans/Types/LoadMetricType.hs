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
-- Module      : Network.AWS.AutoScalingPlans.Types.LoadMetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.LoadMetricType
  ( LoadMetricType
      ( ..,
        LoadMetricTypeALBTargetGroupRequestCount,
        LoadMetricTypeASGTotalCPUUtilization,
        LoadMetricTypeASGTotalNetworkIn,
        LoadMetricTypeASGTotalNetworkOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadMetricType = LoadMetricType'
  { fromLoadMetricType ::
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

pattern LoadMetricTypeALBTargetGroupRequestCount :: LoadMetricType
pattern LoadMetricTypeALBTargetGroupRequestCount = LoadMetricType' "ALBTargetGroupRequestCount"

pattern LoadMetricTypeASGTotalCPUUtilization :: LoadMetricType
pattern LoadMetricTypeASGTotalCPUUtilization = LoadMetricType' "ASGTotalCPUUtilization"

pattern LoadMetricTypeASGTotalNetworkIn :: LoadMetricType
pattern LoadMetricTypeASGTotalNetworkIn = LoadMetricType' "ASGTotalNetworkIn"

pattern LoadMetricTypeASGTotalNetworkOut :: LoadMetricType
pattern LoadMetricTypeASGTotalNetworkOut = LoadMetricType' "ASGTotalNetworkOut"

{-# COMPLETE
  LoadMetricTypeALBTargetGroupRequestCount,
  LoadMetricTypeASGTotalCPUUtilization,
  LoadMetricTypeASGTotalNetworkIn,
  LoadMetricTypeASGTotalNetworkOut,
  LoadMetricType'
  #-}

instance Prelude.FromText LoadMetricType where
  parser = LoadMetricType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadMetricType where
  toText (LoadMetricType' x) = x

instance Prelude.Hashable LoadMetricType

instance Prelude.NFData LoadMetricType

instance Prelude.ToByteString LoadMetricType

instance Prelude.ToQuery LoadMetricType

instance Prelude.ToHeader LoadMetricType

instance Prelude.ToJSON LoadMetricType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoadMetricType where
  parseJSON = Prelude.parseJSONText "LoadMetricType"

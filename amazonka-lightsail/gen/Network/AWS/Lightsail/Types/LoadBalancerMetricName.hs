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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerMetricName
  ( LoadBalancerMetricName
      ( ..,
        LoadBalancerMetricNameClientTLSNegotiationErrorCount,
        LoadBalancerMetricNameHTTPCodeInstance2XXCount,
        LoadBalancerMetricNameHTTPCodeInstance3XXCount,
        LoadBalancerMetricNameHTTPCodeInstance4XXCount,
        LoadBalancerMetricNameHTTPCodeInstance5XXCount,
        LoadBalancerMetricNameHTTPCodeLB4XXCount,
        LoadBalancerMetricNameHTTPCodeLB5XXCount,
        LoadBalancerMetricNameHealthyHostCount,
        LoadBalancerMetricNameInstanceResponseTime,
        LoadBalancerMetricNameRejectedConnectionCount,
        LoadBalancerMetricNameRequestCount,
        LoadBalancerMetricNameUnhealthyHostCount
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerMetricName = LoadBalancerMetricName'
  { fromLoadBalancerMetricName ::
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

pattern LoadBalancerMetricNameClientTLSNegotiationErrorCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameClientTLSNegotiationErrorCount = LoadBalancerMetricName' "ClientTLSNegotiationErrorCount"

pattern LoadBalancerMetricNameHTTPCodeInstance2XXCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHTTPCodeInstance2XXCount = LoadBalancerMetricName' "HTTPCode_Instance_2XX_Count"

pattern LoadBalancerMetricNameHTTPCodeInstance3XXCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHTTPCodeInstance3XXCount = LoadBalancerMetricName' "HTTPCode_Instance_3XX_Count"

pattern LoadBalancerMetricNameHTTPCodeInstance4XXCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHTTPCodeInstance4XXCount = LoadBalancerMetricName' "HTTPCode_Instance_4XX_Count"

pattern LoadBalancerMetricNameHTTPCodeInstance5XXCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHTTPCodeInstance5XXCount = LoadBalancerMetricName' "HTTPCode_Instance_5XX_Count"

pattern LoadBalancerMetricNameHTTPCodeLB4XXCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHTTPCodeLB4XXCount = LoadBalancerMetricName' "HTTPCode_LB_4XX_Count"

pattern LoadBalancerMetricNameHTTPCodeLB5XXCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHTTPCodeLB5XXCount = LoadBalancerMetricName' "HTTPCode_LB_5XX_Count"

pattern LoadBalancerMetricNameHealthyHostCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameHealthyHostCount = LoadBalancerMetricName' "HealthyHostCount"

pattern LoadBalancerMetricNameInstanceResponseTime :: LoadBalancerMetricName
pattern LoadBalancerMetricNameInstanceResponseTime = LoadBalancerMetricName' "InstanceResponseTime"

pattern LoadBalancerMetricNameRejectedConnectionCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameRejectedConnectionCount = LoadBalancerMetricName' "RejectedConnectionCount"

pattern LoadBalancerMetricNameRequestCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameRequestCount = LoadBalancerMetricName' "RequestCount"

pattern LoadBalancerMetricNameUnhealthyHostCount :: LoadBalancerMetricName
pattern LoadBalancerMetricNameUnhealthyHostCount = LoadBalancerMetricName' "UnhealthyHostCount"

{-# COMPLETE
  LoadBalancerMetricNameClientTLSNegotiationErrorCount,
  LoadBalancerMetricNameHTTPCodeInstance2XXCount,
  LoadBalancerMetricNameHTTPCodeInstance3XXCount,
  LoadBalancerMetricNameHTTPCodeInstance4XXCount,
  LoadBalancerMetricNameHTTPCodeInstance5XXCount,
  LoadBalancerMetricNameHTTPCodeLB4XXCount,
  LoadBalancerMetricNameHTTPCodeLB5XXCount,
  LoadBalancerMetricNameHealthyHostCount,
  LoadBalancerMetricNameInstanceResponseTime,
  LoadBalancerMetricNameRejectedConnectionCount,
  LoadBalancerMetricNameRequestCount,
  LoadBalancerMetricNameUnhealthyHostCount,
  LoadBalancerMetricName'
  #-}

instance Prelude.FromText LoadBalancerMetricName where
  parser = LoadBalancerMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoadBalancerMetricName where
  toText (LoadBalancerMetricName' x) = x

instance Prelude.Hashable LoadBalancerMetricName

instance Prelude.NFData LoadBalancerMetricName

instance Prelude.ToByteString LoadBalancerMetricName

instance Prelude.ToQuery LoadBalancerMetricName

instance Prelude.ToHeader LoadBalancerMetricName

instance Prelude.ToJSON LoadBalancerMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoadBalancerMetricName where
  parseJSON = Prelude.parseJSONText "LoadBalancerMetricName"

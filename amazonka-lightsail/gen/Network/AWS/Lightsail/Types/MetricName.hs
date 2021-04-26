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
-- Module      : Network.AWS.Lightsail.Types.MetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.MetricName
  ( MetricName
      ( ..,
        MetricNameBurstCapacityPercentage,
        MetricNameBurstCapacityTime,
        MetricNameCPUUtilization,
        MetricNameClientTLSNegotiationErrorCount,
        MetricNameDatabaseConnections,
        MetricNameDiskQueueDepth,
        MetricNameFreeStorageSpace,
        MetricNameHTTPCodeInstance2XXCount,
        MetricNameHTTPCodeInstance3XXCount,
        MetricNameHTTPCodeInstance4XXCount,
        MetricNameHTTPCodeInstance5XXCount,
        MetricNameHTTPCodeLB4XXCount,
        MetricNameHTTPCodeLB5XXCount,
        MetricNameHealthyHostCount,
        MetricNameInstanceResponseTime,
        MetricNameNetworkIn,
        MetricNameNetworkOut,
        MetricNameNetworkReceiveThroughput,
        MetricNameNetworkTransmitThroughput,
        MetricNameRejectedConnectionCount,
        MetricNameRequestCount,
        MetricNameStatusCheckFailed,
        MetricNameStatusCheckFailedInstance,
        MetricNameStatusCheckFailedSystem,
        MetricNameUnhealthyHostCount
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricName = MetricName'
  { fromMetricName ::
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

pattern MetricNameBurstCapacityPercentage :: MetricName
pattern MetricNameBurstCapacityPercentage = MetricName' "BurstCapacityPercentage"

pattern MetricNameBurstCapacityTime :: MetricName
pattern MetricNameBurstCapacityTime = MetricName' "BurstCapacityTime"

pattern MetricNameCPUUtilization :: MetricName
pattern MetricNameCPUUtilization = MetricName' "CPUUtilization"

pattern MetricNameClientTLSNegotiationErrorCount :: MetricName
pattern MetricNameClientTLSNegotiationErrorCount = MetricName' "ClientTLSNegotiationErrorCount"

pattern MetricNameDatabaseConnections :: MetricName
pattern MetricNameDatabaseConnections = MetricName' "DatabaseConnections"

pattern MetricNameDiskQueueDepth :: MetricName
pattern MetricNameDiskQueueDepth = MetricName' "DiskQueueDepth"

pattern MetricNameFreeStorageSpace :: MetricName
pattern MetricNameFreeStorageSpace = MetricName' "FreeStorageSpace"

pattern MetricNameHTTPCodeInstance2XXCount :: MetricName
pattern MetricNameHTTPCodeInstance2XXCount = MetricName' "HTTPCode_Instance_2XX_Count"

pattern MetricNameHTTPCodeInstance3XXCount :: MetricName
pattern MetricNameHTTPCodeInstance3XXCount = MetricName' "HTTPCode_Instance_3XX_Count"

pattern MetricNameHTTPCodeInstance4XXCount :: MetricName
pattern MetricNameHTTPCodeInstance4XXCount = MetricName' "HTTPCode_Instance_4XX_Count"

pattern MetricNameHTTPCodeInstance5XXCount :: MetricName
pattern MetricNameHTTPCodeInstance5XXCount = MetricName' "HTTPCode_Instance_5XX_Count"

pattern MetricNameHTTPCodeLB4XXCount :: MetricName
pattern MetricNameHTTPCodeLB4XXCount = MetricName' "HTTPCode_LB_4XX_Count"

pattern MetricNameHTTPCodeLB5XXCount :: MetricName
pattern MetricNameHTTPCodeLB5XXCount = MetricName' "HTTPCode_LB_5XX_Count"

pattern MetricNameHealthyHostCount :: MetricName
pattern MetricNameHealthyHostCount = MetricName' "HealthyHostCount"

pattern MetricNameInstanceResponseTime :: MetricName
pattern MetricNameInstanceResponseTime = MetricName' "InstanceResponseTime"

pattern MetricNameNetworkIn :: MetricName
pattern MetricNameNetworkIn = MetricName' "NetworkIn"

pattern MetricNameNetworkOut :: MetricName
pattern MetricNameNetworkOut = MetricName' "NetworkOut"

pattern MetricNameNetworkReceiveThroughput :: MetricName
pattern MetricNameNetworkReceiveThroughput = MetricName' "NetworkReceiveThroughput"

pattern MetricNameNetworkTransmitThroughput :: MetricName
pattern MetricNameNetworkTransmitThroughput = MetricName' "NetworkTransmitThroughput"

pattern MetricNameRejectedConnectionCount :: MetricName
pattern MetricNameRejectedConnectionCount = MetricName' "RejectedConnectionCount"

pattern MetricNameRequestCount :: MetricName
pattern MetricNameRequestCount = MetricName' "RequestCount"

pattern MetricNameStatusCheckFailed :: MetricName
pattern MetricNameStatusCheckFailed = MetricName' "StatusCheckFailed"

pattern MetricNameStatusCheckFailedInstance :: MetricName
pattern MetricNameStatusCheckFailedInstance = MetricName' "StatusCheckFailed_Instance"

pattern MetricNameStatusCheckFailedSystem :: MetricName
pattern MetricNameStatusCheckFailedSystem = MetricName' "StatusCheckFailed_System"

pattern MetricNameUnhealthyHostCount :: MetricName
pattern MetricNameUnhealthyHostCount = MetricName' "UnhealthyHostCount"

{-# COMPLETE
  MetricNameBurstCapacityPercentage,
  MetricNameBurstCapacityTime,
  MetricNameCPUUtilization,
  MetricNameClientTLSNegotiationErrorCount,
  MetricNameDatabaseConnections,
  MetricNameDiskQueueDepth,
  MetricNameFreeStorageSpace,
  MetricNameHTTPCodeInstance2XXCount,
  MetricNameHTTPCodeInstance3XXCount,
  MetricNameHTTPCodeInstance4XXCount,
  MetricNameHTTPCodeInstance5XXCount,
  MetricNameHTTPCodeLB4XXCount,
  MetricNameHTTPCodeLB5XXCount,
  MetricNameHealthyHostCount,
  MetricNameInstanceResponseTime,
  MetricNameNetworkIn,
  MetricNameNetworkOut,
  MetricNameNetworkReceiveThroughput,
  MetricNameNetworkTransmitThroughput,
  MetricNameRejectedConnectionCount,
  MetricNameRequestCount,
  MetricNameStatusCheckFailed,
  MetricNameStatusCheckFailedInstance,
  MetricNameStatusCheckFailedSystem,
  MetricNameUnhealthyHostCount,
  MetricName'
  #-}

instance Prelude.FromText MetricName where
  parser = MetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricName where
  toText (MetricName' x) = x

instance Prelude.Hashable MetricName

instance Prelude.NFData MetricName

instance Prelude.ToByteString MetricName

instance Prelude.ToQuery MetricName

instance Prelude.ToHeader MetricName

instance Prelude.ToJSON MetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricName where
  parseJSON = Prelude.parseJSONText "MetricName"

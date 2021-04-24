{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        MNBurstCapacityPercentage,
        MNBurstCapacityTime,
        MNCPUUtilization,
        MNClientTLSNegotiationErrorCount,
        MNDatabaseConnections,
        MNDiskQueueDepth,
        MNFreeStorageSpace,
        MNHTTPCodeInstance2XXCount,
        MNHTTPCodeInstance3XXCount,
        MNHTTPCodeInstance4XXCount,
        MNHTTPCodeInstance5XXCount,
        MNHTTPCodeLb4XXCount,
        MNHTTPCodeLb5XXCount,
        MNHealthyHostCount,
        MNInstanceResponseTime,
        MNNetworkIn,
        MNNetworkOut,
        MNNetworkReceiveThroughput,
        MNNetworkTransmitThroughput,
        MNRejectedConnectionCount,
        MNRequestCount,
        MNStatusCheckFailed,
        MNStatusCheckFailedInstance,
        MNStatusCheckFailedSystem,
        MNUnhealthyHostCount
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MetricName = MetricName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MNBurstCapacityPercentage :: MetricName
pattern MNBurstCapacityPercentage = MetricName' "BurstCapacityPercentage"

pattern MNBurstCapacityTime :: MetricName
pattern MNBurstCapacityTime = MetricName' "BurstCapacityTime"

pattern MNCPUUtilization :: MetricName
pattern MNCPUUtilization = MetricName' "CPUUtilization"

pattern MNClientTLSNegotiationErrorCount :: MetricName
pattern MNClientTLSNegotiationErrorCount = MetricName' "ClientTLSNegotiationErrorCount"

pattern MNDatabaseConnections :: MetricName
pattern MNDatabaseConnections = MetricName' "DatabaseConnections"

pattern MNDiskQueueDepth :: MetricName
pattern MNDiskQueueDepth = MetricName' "DiskQueueDepth"

pattern MNFreeStorageSpace :: MetricName
pattern MNFreeStorageSpace = MetricName' "FreeStorageSpace"

pattern MNHTTPCodeInstance2XXCount :: MetricName
pattern MNHTTPCodeInstance2XXCount = MetricName' "HTTPCode_Instance_2XX_Count"

pattern MNHTTPCodeInstance3XXCount :: MetricName
pattern MNHTTPCodeInstance3XXCount = MetricName' "HTTPCode_Instance_3XX_Count"

pattern MNHTTPCodeInstance4XXCount :: MetricName
pattern MNHTTPCodeInstance4XXCount = MetricName' "HTTPCode_Instance_4XX_Count"

pattern MNHTTPCodeInstance5XXCount :: MetricName
pattern MNHTTPCodeInstance5XXCount = MetricName' "HTTPCode_Instance_5XX_Count"

pattern MNHTTPCodeLb4XXCount :: MetricName
pattern MNHTTPCodeLb4XXCount = MetricName' "HTTPCode_LB_4XX_Count"

pattern MNHTTPCodeLb5XXCount :: MetricName
pattern MNHTTPCodeLb5XXCount = MetricName' "HTTPCode_LB_5XX_Count"

pattern MNHealthyHostCount :: MetricName
pattern MNHealthyHostCount = MetricName' "HealthyHostCount"

pattern MNInstanceResponseTime :: MetricName
pattern MNInstanceResponseTime = MetricName' "InstanceResponseTime"

pattern MNNetworkIn :: MetricName
pattern MNNetworkIn = MetricName' "NetworkIn"

pattern MNNetworkOut :: MetricName
pattern MNNetworkOut = MetricName' "NetworkOut"

pattern MNNetworkReceiveThroughput :: MetricName
pattern MNNetworkReceiveThroughput = MetricName' "NetworkReceiveThroughput"

pattern MNNetworkTransmitThroughput :: MetricName
pattern MNNetworkTransmitThroughput = MetricName' "NetworkTransmitThroughput"

pattern MNRejectedConnectionCount :: MetricName
pattern MNRejectedConnectionCount = MetricName' "RejectedConnectionCount"

pattern MNRequestCount :: MetricName
pattern MNRequestCount = MetricName' "RequestCount"

pattern MNStatusCheckFailed :: MetricName
pattern MNStatusCheckFailed = MetricName' "StatusCheckFailed"

pattern MNStatusCheckFailedInstance :: MetricName
pattern MNStatusCheckFailedInstance = MetricName' "StatusCheckFailed_Instance"

pattern MNStatusCheckFailedSystem :: MetricName
pattern MNStatusCheckFailedSystem = MetricName' "StatusCheckFailed_System"

pattern MNUnhealthyHostCount :: MetricName
pattern MNUnhealthyHostCount = MetricName' "UnhealthyHostCount"

{-# COMPLETE
  MNBurstCapacityPercentage,
  MNBurstCapacityTime,
  MNCPUUtilization,
  MNClientTLSNegotiationErrorCount,
  MNDatabaseConnections,
  MNDiskQueueDepth,
  MNFreeStorageSpace,
  MNHTTPCodeInstance2XXCount,
  MNHTTPCodeInstance3XXCount,
  MNHTTPCodeInstance4XXCount,
  MNHTTPCodeInstance5XXCount,
  MNHTTPCodeLb4XXCount,
  MNHTTPCodeLb5XXCount,
  MNHealthyHostCount,
  MNInstanceResponseTime,
  MNNetworkIn,
  MNNetworkOut,
  MNNetworkReceiveThroughput,
  MNNetworkTransmitThroughput,
  MNRejectedConnectionCount,
  MNRequestCount,
  MNStatusCheckFailed,
  MNStatusCheckFailedInstance,
  MNStatusCheckFailedSystem,
  MNUnhealthyHostCount,
  MetricName'
  #-}

instance FromText MetricName where
  parser = (MetricName' . mk) <$> takeText

instance ToText MetricName where
  toText (MetricName' ci) = original ci

instance Hashable MetricName

instance NFData MetricName

instance ToByteString MetricName

instance ToQuery MetricName

instance ToHeader MetricName

instance ToJSON MetricName where
  toJSON = toJSONText

instance FromJSON MetricName where
  parseJSON = parseJSONText "MetricName"

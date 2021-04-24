{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseMetricName
  ( RelationalDatabaseMetricName
      ( ..,
        RDMNCPUUtilization,
        RDMNDatabaseConnections,
        RDMNDiskQueueDepth,
        RDMNFreeStorageSpace,
        RDMNNetworkReceiveThroughput,
        RDMNNetworkTransmitThroughput
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RelationalDatabaseMetricName
  = RelationalDatabaseMetricName'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RDMNCPUUtilization :: RelationalDatabaseMetricName
pattern RDMNCPUUtilization = RelationalDatabaseMetricName' "CPUUtilization"

pattern RDMNDatabaseConnections :: RelationalDatabaseMetricName
pattern RDMNDatabaseConnections = RelationalDatabaseMetricName' "DatabaseConnections"

pattern RDMNDiskQueueDepth :: RelationalDatabaseMetricName
pattern RDMNDiskQueueDepth = RelationalDatabaseMetricName' "DiskQueueDepth"

pattern RDMNFreeStorageSpace :: RelationalDatabaseMetricName
pattern RDMNFreeStorageSpace = RelationalDatabaseMetricName' "FreeStorageSpace"

pattern RDMNNetworkReceiveThroughput :: RelationalDatabaseMetricName
pattern RDMNNetworkReceiveThroughput = RelationalDatabaseMetricName' "NetworkReceiveThroughput"

pattern RDMNNetworkTransmitThroughput :: RelationalDatabaseMetricName
pattern RDMNNetworkTransmitThroughput = RelationalDatabaseMetricName' "NetworkTransmitThroughput"

{-# COMPLETE
  RDMNCPUUtilization,
  RDMNDatabaseConnections,
  RDMNDiskQueueDepth,
  RDMNFreeStorageSpace,
  RDMNNetworkReceiveThroughput,
  RDMNNetworkTransmitThroughput,
  RelationalDatabaseMetricName'
  #-}

instance FromText RelationalDatabaseMetricName where
  parser = (RelationalDatabaseMetricName' . mk) <$> takeText

instance ToText RelationalDatabaseMetricName where
  toText (RelationalDatabaseMetricName' ci) = original ci

instance Hashable RelationalDatabaseMetricName

instance NFData RelationalDatabaseMetricName

instance ToByteString RelationalDatabaseMetricName

instance ToQuery RelationalDatabaseMetricName

instance ToHeader RelationalDatabaseMetricName

instance ToJSON RelationalDatabaseMetricName where
  toJSON = toJSONText

instance FromJSON RelationalDatabaseMetricName where
  parseJSON = parseJSONText "RelationalDatabaseMetricName"

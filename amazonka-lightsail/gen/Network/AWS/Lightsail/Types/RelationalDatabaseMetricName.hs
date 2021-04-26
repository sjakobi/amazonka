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
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseMetricName
  ( RelationalDatabaseMetricName
      ( ..,
        RelationalDatabaseMetricNameCPUUtilization,
        RelationalDatabaseMetricNameDatabaseConnections,
        RelationalDatabaseMetricNameDiskQueueDepth,
        RelationalDatabaseMetricNameFreeStorageSpace,
        RelationalDatabaseMetricNameNetworkReceiveThroughput,
        RelationalDatabaseMetricNameNetworkTransmitThroughput
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RelationalDatabaseMetricName = RelationalDatabaseMetricName'
  { fromRelationalDatabaseMetricName ::
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

pattern RelationalDatabaseMetricNameCPUUtilization :: RelationalDatabaseMetricName
pattern RelationalDatabaseMetricNameCPUUtilization = RelationalDatabaseMetricName' "CPUUtilization"

pattern RelationalDatabaseMetricNameDatabaseConnections :: RelationalDatabaseMetricName
pattern RelationalDatabaseMetricNameDatabaseConnections = RelationalDatabaseMetricName' "DatabaseConnections"

pattern RelationalDatabaseMetricNameDiskQueueDepth :: RelationalDatabaseMetricName
pattern RelationalDatabaseMetricNameDiskQueueDepth = RelationalDatabaseMetricName' "DiskQueueDepth"

pattern RelationalDatabaseMetricNameFreeStorageSpace :: RelationalDatabaseMetricName
pattern RelationalDatabaseMetricNameFreeStorageSpace = RelationalDatabaseMetricName' "FreeStorageSpace"

pattern RelationalDatabaseMetricNameNetworkReceiveThroughput :: RelationalDatabaseMetricName
pattern RelationalDatabaseMetricNameNetworkReceiveThroughput = RelationalDatabaseMetricName' "NetworkReceiveThroughput"

pattern RelationalDatabaseMetricNameNetworkTransmitThroughput :: RelationalDatabaseMetricName
pattern RelationalDatabaseMetricNameNetworkTransmitThroughput = RelationalDatabaseMetricName' "NetworkTransmitThroughput"

{-# COMPLETE
  RelationalDatabaseMetricNameCPUUtilization,
  RelationalDatabaseMetricNameDatabaseConnections,
  RelationalDatabaseMetricNameDiskQueueDepth,
  RelationalDatabaseMetricNameFreeStorageSpace,
  RelationalDatabaseMetricNameNetworkReceiveThroughput,
  RelationalDatabaseMetricNameNetworkTransmitThroughput,
  RelationalDatabaseMetricName'
  #-}

instance Prelude.FromText RelationalDatabaseMetricName where
  parser = RelationalDatabaseMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText RelationalDatabaseMetricName where
  toText (RelationalDatabaseMetricName' x) = x

instance Prelude.Hashable RelationalDatabaseMetricName

instance Prelude.NFData RelationalDatabaseMetricName

instance Prelude.ToByteString RelationalDatabaseMetricName

instance Prelude.ToQuery RelationalDatabaseMetricName

instance Prelude.ToHeader RelationalDatabaseMetricName

instance Prelude.ToJSON RelationalDatabaseMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RelationalDatabaseMetricName where
  parseJSON = Prelude.parseJSONText "RelationalDatabaseMetricName"

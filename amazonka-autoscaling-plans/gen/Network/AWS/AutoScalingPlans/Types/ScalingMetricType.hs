{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingMetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingMetricType
  ( ScalingMetricType
      ( ..,
        ALBRequestCountPerTarget,
        ASGAverageCPUUtilization,
        ASGAverageNetworkIn,
        ASGAverageNetworkOut,
        DynamoDBReadCapacityUtilization,
        DynamoDBWriteCapacityUtilization,
        EC2SpotFleetRequestAverageCPUUtilization,
        EC2SpotFleetRequestAverageNetworkIn,
        EC2SpotFleetRequestAverageNetworkOut,
        ECSServiceAverageCPUUtilization,
        ECSServiceAverageMemoryUtilization,
        RDSReaderAverageCPUUtilization,
        RDSReaderAverageDatabaseConnections
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalingMetricType = ScalingMetricType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ALBRequestCountPerTarget :: ScalingMetricType
pattern ALBRequestCountPerTarget = ScalingMetricType' "ALBRequestCountPerTarget"

pattern ASGAverageCPUUtilization :: ScalingMetricType
pattern ASGAverageCPUUtilization = ScalingMetricType' "ASGAverageCPUUtilization"

pattern ASGAverageNetworkIn :: ScalingMetricType
pattern ASGAverageNetworkIn = ScalingMetricType' "ASGAverageNetworkIn"

pattern ASGAverageNetworkOut :: ScalingMetricType
pattern ASGAverageNetworkOut = ScalingMetricType' "ASGAverageNetworkOut"

pattern DynamoDBReadCapacityUtilization :: ScalingMetricType
pattern DynamoDBReadCapacityUtilization = ScalingMetricType' "DynamoDBReadCapacityUtilization"

pattern DynamoDBWriteCapacityUtilization :: ScalingMetricType
pattern DynamoDBWriteCapacityUtilization = ScalingMetricType' "DynamoDBWriteCapacityUtilization"

pattern EC2SpotFleetRequestAverageCPUUtilization :: ScalingMetricType
pattern EC2SpotFleetRequestAverageCPUUtilization = ScalingMetricType' "EC2SpotFleetRequestAverageCPUUtilization"

pattern EC2SpotFleetRequestAverageNetworkIn :: ScalingMetricType
pattern EC2SpotFleetRequestAverageNetworkIn = ScalingMetricType' "EC2SpotFleetRequestAverageNetworkIn"

pattern EC2SpotFleetRequestAverageNetworkOut :: ScalingMetricType
pattern EC2SpotFleetRequestAverageNetworkOut = ScalingMetricType' "EC2SpotFleetRequestAverageNetworkOut"

pattern ECSServiceAverageCPUUtilization :: ScalingMetricType
pattern ECSServiceAverageCPUUtilization = ScalingMetricType' "ECSServiceAverageCPUUtilization"

pattern ECSServiceAverageMemoryUtilization :: ScalingMetricType
pattern ECSServiceAverageMemoryUtilization = ScalingMetricType' "ECSServiceAverageMemoryUtilization"

pattern RDSReaderAverageCPUUtilization :: ScalingMetricType
pattern RDSReaderAverageCPUUtilization = ScalingMetricType' "RDSReaderAverageCPUUtilization"

pattern RDSReaderAverageDatabaseConnections :: ScalingMetricType
pattern RDSReaderAverageDatabaseConnections = ScalingMetricType' "RDSReaderAverageDatabaseConnections"

{-# COMPLETE
  ALBRequestCountPerTarget,
  ASGAverageCPUUtilization,
  ASGAverageNetworkIn,
  ASGAverageNetworkOut,
  DynamoDBReadCapacityUtilization,
  DynamoDBWriteCapacityUtilization,
  EC2SpotFleetRequestAverageCPUUtilization,
  EC2SpotFleetRequestAverageNetworkIn,
  EC2SpotFleetRequestAverageNetworkOut,
  ECSServiceAverageCPUUtilization,
  ECSServiceAverageMemoryUtilization,
  RDSReaderAverageCPUUtilization,
  RDSReaderAverageDatabaseConnections,
  ScalingMetricType'
  #-}

instance FromText ScalingMetricType where
  parser = (ScalingMetricType' . mk) <$> takeText

instance ToText ScalingMetricType where
  toText (ScalingMetricType' ci) = original ci

instance Hashable ScalingMetricType

instance NFData ScalingMetricType

instance ToByteString ScalingMetricType

instance ToQuery ScalingMetricType

instance ToHeader ScalingMetricType

instance ToJSON ScalingMetricType where
  toJSON = toJSONText

instance FromJSON ScalingMetricType where
  parseJSON = parseJSONText "ScalingMetricType"

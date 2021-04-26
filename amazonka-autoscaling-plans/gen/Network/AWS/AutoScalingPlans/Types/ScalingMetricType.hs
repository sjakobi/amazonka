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
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingMetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingMetricType
  ( ScalingMetricType
      ( ..,
        ScalingMetricTypeALBRequestCountPerTarget,
        ScalingMetricTypeASGAverageCPUUtilization,
        ScalingMetricTypeASGAverageNetworkIn,
        ScalingMetricTypeASGAverageNetworkOut,
        ScalingMetricTypeDynamoDBReadCapacityUtilization,
        ScalingMetricTypeDynamoDBWriteCapacityUtilization,
        ScalingMetricTypeEC2SpotFleetRequestAverageCPUUtilization,
        ScalingMetricTypeEC2SpotFleetRequestAverageNetworkIn,
        ScalingMetricTypeEC2SpotFleetRequestAverageNetworkOut,
        ScalingMetricTypeECSServiceAverageCPUUtilization,
        ScalingMetricTypeECSServiceAverageMemoryUtilization,
        ScalingMetricTypeRDSReaderAverageCPUUtilization,
        ScalingMetricTypeRDSReaderAverageDatabaseConnections
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingMetricType = ScalingMetricType'
  { fromScalingMetricType ::
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

pattern ScalingMetricTypeALBRequestCountPerTarget :: ScalingMetricType
pattern ScalingMetricTypeALBRequestCountPerTarget = ScalingMetricType' "ALBRequestCountPerTarget"

pattern ScalingMetricTypeASGAverageCPUUtilization :: ScalingMetricType
pattern ScalingMetricTypeASGAverageCPUUtilization = ScalingMetricType' "ASGAverageCPUUtilization"

pattern ScalingMetricTypeASGAverageNetworkIn :: ScalingMetricType
pattern ScalingMetricTypeASGAverageNetworkIn = ScalingMetricType' "ASGAverageNetworkIn"

pattern ScalingMetricTypeASGAverageNetworkOut :: ScalingMetricType
pattern ScalingMetricTypeASGAverageNetworkOut = ScalingMetricType' "ASGAverageNetworkOut"

pattern ScalingMetricTypeDynamoDBReadCapacityUtilization :: ScalingMetricType
pattern ScalingMetricTypeDynamoDBReadCapacityUtilization = ScalingMetricType' "DynamoDBReadCapacityUtilization"

pattern ScalingMetricTypeDynamoDBWriteCapacityUtilization :: ScalingMetricType
pattern ScalingMetricTypeDynamoDBWriteCapacityUtilization = ScalingMetricType' "DynamoDBWriteCapacityUtilization"

pattern ScalingMetricTypeEC2SpotFleetRequestAverageCPUUtilization :: ScalingMetricType
pattern ScalingMetricTypeEC2SpotFleetRequestAverageCPUUtilization = ScalingMetricType' "EC2SpotFleetRequestAverageCPUUtilization"

pattern ScalingMetricTypeEC2SpotFleetRequestAverageNetworkIn :: ScalingMetricType
pattern ScalingMetricTypeEC2SpotFleetRequestAverageNetworkIn = ScalingMetricType' "EC2SpotFleetRequestAverageNetworkIn"

pattern ScalingMetricTypeEC2SpotFleetRequestAverageNetworkOut :: ScalingMetricType
pattern ScalingMetricTypeEC2SpotFleetRequestAverageNetworkOut = ScalingMetricType' "EC2SpotFleetRequestAverageNetworkOut"

pattern ScalingMetricTypeECSServiceAverageCPUUtilization :: ScalingMetricType
pattern ScalingMetricTypeECSServiceAverageCPUUtilization = ScalingMetricType' "ECSServiceAverageCPUUtilization"

pattern ScalingMetricTypeECSServiceAverageMemoryUtilization :: ScalingMetricType
pattern ScalingMetricTypeECSServiceAverageMemoryUtilization = ScalingMetricType' "ECSServiceAverageMemoryUtilization"

pattern ScalingMetricTypeRDSReaderAverageCPUUtilization :: ScalingMetricType
pattern ScalingMetricTypeRDSReaderAverageCPUUtilization = ScalingMetricType' "RDSReaderAverageCPUUtilization"

pattern ScalingMetricTypeRDSReaderAverageDatabaseConnections :: ScalingMetricType
pattern ScalingMetricTypeRDSReaderAverageDatabaseConnections = ScalingMetricType' "RDSReaderAverageDatabaseConnections"

{-# COMPLETE
  ScalingMetricTypeALBRequestCountPerTarget,
  ScalingMetricTypeASGAverageCPUUtilization,
  ScalingMetricTypeASGAverageNetworkIn,
  ScalingMetricTypeASGAverageNetworkOut,
  ScalingMetricTypeDynamoDBReadCapacityUtilization,
  ScalingMetricTypeDynamoDBWriteCapacityUtilization,
  ScalingMetricTypeEC2SpotFleetRequestAverageCPUUtilization,
  ScalingMetricTypeEC2SpotFleetRequestAverageNetworkIn,
  ScalingMetricTypeEC2SpotFleetRequestAverageNetworkOut,
  ScalingMetricTypeECSServiceAverageCPUUtilization,
  ScalingMetricTypeECSServiceAverageMemoryUtilization,
  ScalingMetricTypeRDSReaderAverageCPUUtilization,
  ScalingMetricTypeRDSReaderAverageDatabaseConnections,
  ScalingMetricType'
  #-}

instance Prelude.FromText ScalingMetricType where
  parser = ScalingMetricType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingMetricType where
  toText (ScalingMetricType' x) = x

instance Prelude.Hashable ScalingMetricType

instance Prelude.NFData ScalingMetricType

instance Prelude.ToByteString ScalingMetricType

instance Prelude.ToQuery ScalingMetricType

instance Prelude.ToHeader ScalingMetricType

instance Prelude.ToJSON ScalingMetricType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalingMetricType where
  parseJSON = Prelude.parseJSONText "ScalingMetricType"

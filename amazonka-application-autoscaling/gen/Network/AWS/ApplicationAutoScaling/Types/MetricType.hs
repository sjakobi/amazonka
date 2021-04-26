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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.MetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.MetricType
  ( MetricType
      ( ..,
        MetricTypeALBRequestCountPerTarget,
        MetricTypeAppStreamAverageCapacityUtilization,
        MetricTypeCassandraReadCapacityUtilization,
        MetricTypeCassandraWriteCapacityUtilization,
        MetricTypeComprehendInferenceUtilization,
        MetricTypeDynamoDBReadCapacityUtilization,
        MetricTypeDynamoDBWriteCapacityUtilization,
        MetricTypeEC2SpotFleetRequestAverageCPUUtilization,
        MetricTypeEC2SpotFleetRequestAverageNetworkIn,
        MetricTypeEC2SpotFleetRequestAverageNetworkOut,
        MetricTypeECSServiceAverageCPUUtilization,
        MetricTypeECSServiceAverageMemoryUtilization,
        MetricTypeKafkaBrokerStorageUtilization,
        MetricTypeLambdaProvisionedConcurrencyUtilization,
        MetricTypeRDSReaderAverageCPUUtilization,
        MetricTypeRDSReaderAverageDatabaseConnections,
        MetricTypeSageMakerVariantInvocationsPerInstance
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

pattern MetricTypeAppStreamAverageCapacityUtilization :: MetricType
pattern MetricTypeAppStreamAverageCapacityUtilization = MetricType' "AppStreamAverageCapacityUtilization"

pattern MetricTypeCassandraReadCapacityUtilization :: MetricType
pattern MetricTypeCassandraReadCapacityUtilization = MetricType' "CassandraReadCapacityUtilization"

pattern MetricTypeCassandraWriteCapacityUtilization :: MetricType
pattern MetricTypeCassandraWriteCapacityUtilization = MetricType' "CassandraWriteCapacityUtilization"

pattern MetricTypeComprehendInferenceUtilization :: MetricType
pattern MetricTypeComprehendInferenceUtilization = MetricType' "ComprehendInferenceUtilization"

pattern MetricTypeDynamoDBReadCapacityUtilization :: MetricType
pattern MetricTypeDynamoDBReadCapacityUtilization = MetricType' "DynamoDBReadCapacityUtilization"

pattern MetricTypeDynamoDBWriteCapacityUtilization :: MetricType
pattern MetricTypeDynamoDBWriteCapacityUtilization = MetricType' "DynamoDBWriteCapacityUtilization"

pattern MetricTypeEC2SpotFleetRequestAverageCPUUtilization :: MetricType
pattern MetricTypeEC2SpotFleetRequestAverageCPUUtilization = MetricType' "EC2SpotFleetRequestAverageCPUUtilization"

pattern MetricTypeEC2SpotFleetRequestAverageNetworkIn :: MetricType
pattern MetricTypeEC2SpotFleetRequestAverageNetworkIn = MetricType' "EC2SpotFleetRequestAverageNetworkIn"

pattern MetricTypeEC2SpotFleetRequestAverageNetworkOut :: MetricType
pattern MetricTypeEC2SpotFleetRequestAverageNetworkOut = MetricType' "EC2SpotFleetRequestAverageNetworkOut"

pattern MetricTypeECSServiceAverageCPUUtilization :: MetricType
pattern MetricTypeECSServiceAverageCPUUtilization = MetricType' "ECSServiceAverageCPUUtilization"

pattern MetricTypeECSServiceAverageMemoryUtilization :: MetricType
pattern MetricTypeECSServiceAverageMemoryUtilization = MetricType' "ECSServiceAverageMemoryUtilization"

pattern MetricTypeKafkaBrokerStorageUtilization :: MetricType
pattern MetricTypeKafkaBrokerStorageUtilization = MetricType' "KafkaBrokerStorageUtilization"

pattern MetricTypeLambdaProvisionedConcurrencyUtilization :: MetricType
pattern MetricTypeLambdaProvisionedConcurrencyUtilization = MetricType' "LambdaProvisionedConcurrencyUtilization"

pattern MetricTypeRDSReaderAverageCPUUtilization :: MetricType
pattern MetricTypeRDSReaderAverageCPUUtilization = MetricType' "RDSReaderAverageCPUUtilization"

pattern MetricTypeRDSReaderAverageDatabaseConnections :: MetricType
pattern MetricTypeRDSReaderAverageDatabaseConnections = MetricType' "RDSReaderAverageDatabaseConnections"

pattern MetricTypeSageMakerVariantInvocationsPerInstance :: MetricType
pattern MetricTypeSageMakerVariantInvocationsPerInstance = MetricType' "SageMakerVariantInvocationsPerInstance"

{-# COMPLETE
  MetricTypeALBRequestCountPerTarget,
  MetricTypeAppStreamAverageCapacityUtilization,
  MetricTypeCassandraReadCapacityUtilization,
  MetricTypeCassandraWriteCapacityUtilization,
  MetricTypeComprehendInferenceUtilization,
  MetricTypeDynamoDBReadCapacityUtilization,
  MetricTypeDynamoDBWriteCapacityUtilization,
  MetricTypeEC2SpotFleetRequestAverageCPUUtilization,
  MetricTypeEC2SpotFleetRequestAverageNetworkIn,
  MetricTypeEC2SpotFleetRequestAverageNetworkOut,
  MetricTypeECSServiceAverageCPUUtilization,
  MetricTypeECSServiceAverageMemoryUtilization,
  MetricTypeKafkaBrokerStorageUtilization,
  MetricTypeLambdaProvisionedConcurrencyUtilization,
  MetricTypeRDSReaderAverageCPUUtilization,
  MetricTypeRDSReaderAverageDatabaseConnections,
  MetricTypeSageMakerVariantInvocationsPerInstance,
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

instance Prelude.ToJSON MetricType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricType where
  parseJSON = Prelude.parseJSONText "MetricType"

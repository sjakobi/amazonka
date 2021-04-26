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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
  ( ScalableDimension
      ( ..,
        ScalableDimensionAppstreamFleetDesiredCapacity,
        ScalableDimensionCassandraTableReadCapacityUnits,
        ScalableDimensionCassandraTableWriteCapacityUnits,
        ScalableDimensionComprehendDocumentClassifierEndpointDesiredInferenceUnits,
        ScalableDimensionComprehendEntityRecognizerEndpointDesiredInferenceUnits,
        ScalableDimensionCustomResourceResourceTypeProperty,
        ScalableDimensionDynamodbIndexReadCapacityUnits,
        ScalableDimensionDynamodbIndexWriteCapacityUnits,
        ScalableDimensionDynamodbTableReadCapacityUnits,
        ScalableDimensionDynamodbTableWriteCapacityUnits,
        ScalableDimensionEC2SpotFleetRequestTargetCapacity,
        ScalableDimensionEcsServiceDesiredCount,
        ScalableDimensionElasticmapreduceInstancegroupInstanceCount,
        ScalableDimensionKafkaBrokerStorageVolumeSize,
        ScalableDimensionLambdaFunctionProvisionedConcurrency,
        ScalableDimensionRdsClusterReadReplicaCount,
        ScalableDimensionSagemakerVariantDesiredInstanceCount
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalableDimension = ScalableDimension'
  { fromScalableDimension ::
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

pattern ScalableDimensionAppstreamFleetDesiredCapacity :: ScalableDimension
pattern ScalableDimensionAppstreamFleetDesiredCapacity = ScalableDimension' "appstream:fleet:DesiredCapacity"

pattern ScalableDimensionCassandraTableReadCapacityUnits :: ScalableDimension
pattern ScalableDimensionCassandraTableReadCapacityUnits = ScalableDimension' "cassandra:table:ReadCapacityUnits"

pattern ScalableDimensionCassandraTableWriteCapacityUnits :: ScalableDimension
pattern ScalableDimensionCassandraTableWriteCapacityUnits = ScalableDimension' "cassandra:table:WriteCapacityUnits"

pattern ScalableDimensionComprehendDocumentClassifierEndpointDesiredInferenceUnits :: ScalableDimension
pattern ScalableDimensionComprehendDocumentClassifierEndpointDesiredInferenceUnits = ScalableDimension' "comprehend:document-classifier-endpoint:DesiredInferenceUnits"

pattern ScalableDimensionComprehendEntityRecognizerEndpointDesiredInferenceUnits :: ScalableDimension
pattern ScalableDimensionComprehendEntityRecognizerEndpointDesiredInferenceUnits = ScalableDimension' "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits"

pattern ScalableDimensionCustomResourceResourceTypeProperty :: ScalableDimension
pattern ScalableDimensionCustomResourceResourceTypeProperty = ScalableDimension' "custom-resource:ResourceType:Property"

pattern ScalableDimensionDynamodbIndexReadCapacityUnits :: ScalableDimension
pattern ScalableDimensionDynamodbIndexReadCapacityUnits = ScalableDimension' "dynamodb:index:ReadCapacityUnits"

pattern ScalableDimensionDynamodbIndexWriteCapacityUnits :: ScalableDimension
pattern ScalableDimensionDynamodbIndexWriteCapacityUnits = ScalableDimension' "dynamodb:index:WriteCapacityUnits"

pattern ScalableDimensionDynamodbTableReadCapacityUnits :: ScalableDimension
pattern ScalableDimensionDynamodbTableReadCapacityUnits = ScalableDimension' "dynamodb:table:ReadCapacityUnits"

pattern ScalableDimensionDynamodbTableWriteCapacityUnits :: ScalableDimension
pattern ScalableDimensionDynamodbTableWriteCapacityUnits = ScalableDimension' "dynamodb:table:WriteCapacityUnits"

pattern ScalableDimensionEC2SpotFleetRequestTargetCapacity :: ScalableDimension
pattern ScalableDimensionEC2SpotFleetRequestTargetCapacity = ScalableDimension' "ec2:spot-fleet-request:TargetCapacity"

pattern ScalableDimensionEcsServiceDesiredCount :: ScalableDimension
pattern ScalableDimensionEcsServiceDesiredCount = ScalableDimension' "ecs:service:DesiredCount"

pattern ScalableDimensionElasticmapreduceInstancegroupInstanceCount :: ScalableDimension
pattern ScalableDimensionElasticmapreduceInstancegroupInstanceCount = ScalableDimension' "elasticmapreduce:instancegroup:InstanceCount"

pattern ScalableDimensionKafkaBrokerStorageVolumeSize :: ScalableDimension
pattern ScalableDimensionKafkaBrokerStorageVolumeSize = ScalableDimension' "kafka:broker-storage:VolumeSize"

pattern ScalableDimensionLambdaFunctionProvisionedConcurrency :: ScalableDimension
pattern ScalableDimensionLambdaFunctionProvisionedConcurrency = ScalableDimension' "lambda:function:ProvisionedConcurrency"

pattern ScalableDimensionRdsClusterReadReplicaCount :: ScalableDimension
pattern ScalableDimensionRdsClusterReadReplicaCount = ScalableDimension' "rds:cluster:ReadReplicaCount"

pattern ScalableDimensionSagemakerVariantDesiredInstanceCount :: ScalableDimension
pattern ScalableDimensionSagemakerVariantDesiredInstanceCount = ScalableDimension' "sagemaker:variant:DesiredInstanceCount"

{-# COMPLETE
  ScalableDimensionAppstreamFleetDesiredCapacity,
  ScalableDimensionCassandraTableReadCapacityUnits,
  ScalableDimensionCassandraTableWriteCapacityUnits,
  ScalableDimensionComprehendDocumentClassifierEndpointDesiredInferenceUnits,
  ScalableDimensionComprehendEntityRecognizerEndpointDesiredInferenceUnits,
  ScalableDimensionCustomResourceResourceTypeProperty,
  ScalableDimensionDynamodbIndexReadCapacityUnits,
  ScalableDimensionDynamodbIndexWriteCapacityUnits,
  ScalableDimensionDynamodbTableReadCapacityUnits,
  ScalableDimensionDynamodbTableWriteCapacityUnits,
  ScalableDimensionEC2SpotFleetRequestTargetCapacity,
  ScalableDimensionEcsServiceDesiredCount,
  ScalableDimensionElasticmapreduceInstancegroupInstanceCount,
  ScalableDimensionKafkaBrokerStorageVolumeSize,
  ScalableDimensionLambdaFunctionProvisionedConcurrency,
  ScalableDimensionRdsClusterReadReplicaCount,
  ScalableDimensionSagemakerVariantDesiredInstanceCount,
  ScalableDimension'
  #-}

instance Prelude.FromText ScalableDimension where
  parser = ScalableDimension' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalableDimension where
  toText (ScalableDimension' x) = x

instance Prelude.Hashable ScalableDimension

instance Prelude.NFData ScalableDimension

instance Prelude.ToByteString ScalableDimension

instance Prelude.ToQuery ScalableDimension

instance Prelude.ToHeader ScalableDimension

instance Prelude.ToJSON ScalableDimension where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalableDimension where
  parseJSON = Prelude.parseJSONText "ScalableDimension"

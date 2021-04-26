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
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalableDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalableDimension
  ( ScalableDimension
      ( ..,
        ScalableDimensionAutoscalingAutoScalingGroupDesiredCapacity,
        ScalableDimensionDynamodbIndexReadCapacityUnits,
        ScalableDimensionDynamodbIndexWriteCapacityUnits,
        ScalableDimensionDynamodbTableReadCapacityUnits,
        ScalableDimensionDynamodbTableWriteCapacityUnits,
        ScalableDimensionEC2SpotFleetRequestTargetCapacity,
        ScalableDimensionEcsServiceDesiredCount,
        ScalableDimensionRdsClusterReadReplicaCount
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

pattern ScalableDimensionAutoscalingAutoScalingGroupDesiredCapacity :: ScalableDimension
pattern ScalableDimensionAutoscalingAutoScalingGroupDesiredCapacity = ScalableDimension' "autoscaling:autoScalingGroup:DesiredCapacity"

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

pattern ScalableDimensionRdsClusterReadReplicaCount :: ScalableDimension
pattern ScalableDimensionRdsClusterReadReplicaCount = ScalableDimension' "rds:cluster:ReadReplicaCount"

{-# COMPLETE
  ScalableDimensionAutoscalingAutoScalingGroupDesiredCapacity,
  ScalableDimensionDynamodbIndexReadCapacityUnits,
  ScalableDimensionDynamodbIndexWriteCapacityUnits,
  ScalableDimensionDynamodbTableReadCapacityUnits,
  ScalableDimensionDynamodbTableWriteCapacityUnits,
  ScalableDimensionEC2SpotFleetRequestTargetCapacity,
  ScalableDimensionEcsServiceDesiredCount,
  ScalableDimensionRdsClusterReadReplicaCount,
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

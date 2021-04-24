{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AutoscalingAutoScalingGroupDesiredCapacity,
        DynamodbIndexReadCapacityUnits,
        DynamodbIndexWriteCapacityUnits,
        DynamodbTableReadCapacityUnits,
        DynamodbTableWriteCapacityUnits,
        EC2SpotFleetRequestTargetCapacity,
        EcsServiceDesiredCount,
        RDSClusterReadReplicaCount
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalableDimension = ScalableDimension' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AutoscalingAutoScalingGroupDesiredCapacity :: ScalableDimension
pattern AutoscalingAutoScalingGroupDesiredCapacity = ScalableDimension' "autoscaling:autoScalingGroup:DesiredCapacity"

pattern DynamodbIndexReadCapacityUnits :: ScalableDimension
pattern DynamodbIndexReadCapacityUnits = ScalableDimension' "dynamodb:index:ReadCapacityUnits"

pattern DynamodbIndexWriteCapacityUnits :: ScalableDimension
pattern DynamodbIndexWriteCapacityUnits = ScalableDimension' "dynamodb:index:WriteCapacityUnits"

pattern DynamodbTableReadCapacityUnits :: ScalableDimension
pattern DynamodbTableReadCapacityUnits = ScalableDimension' "dynamodb:table:ReadCapacityUnits"

pattern DynamodbTableWriteCapacityUnits :: ScalableDimension
pattern DynamodbTableWriteCapacityUnits = ScalableDimension' "dynamodb:table:WriteCapacityUnits"

pattern EC2SpotFleetRequestTargetCapacity :: ScalableDimension
pattern EC2SpotFleetRequestTargetCapacity = ScalableDimension' "ec2:spot-fleet-request:TargetCapacity"

pattern EcsServiceDesiredCount :: ScalableDimension
pattern EcsServiceDesiredCount = ScalableDimension' "ecs:service:DesiredCount"

pattern RDSClusterReadReplicaCount :: ScalableDimension
pattern RDSClusterReadReplicaCount = ScalableDimension' "rds:cluster:ReadReplicaCount"

{-# COMPLETE
  AutoscalingAutoScalingGroupDesiredCapacity,
  DynamodbIndexReadCapacityUnits,
  DynamodbIndexWriteCapacityUnits,
  DynamodbTableReadCapacityUnits,
  DynamodbTableWriteCapacityUnits,
  EC2SpotFleetRequestTargetCapacity,
  EcsServiceDesiredCount,
  RDSClusterReadReplicaCount,
  ScalableDimension'
  #-}

instance FromText ScalableDimension where
  parser = (ScalableDimension' . mk) <$> takeText

instance ToText ScalableDimension where
  toText (ScalableDimension' ci) = original ci

instance Hashable ScalableDimension

instance NFData ScalableDimension

instance ToByteString ScalableDimension

instance ToQuery ScalableDimension

instance ToHeader ScalableDimension

instance ToJSON ScalableDimension where
  toJSON = toJSONText

instance FromJSON ScalableDimension where
  parseJSON = parseJSONText "ScalableDimension"

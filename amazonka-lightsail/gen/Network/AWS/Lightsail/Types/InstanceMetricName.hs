{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceMetricName
  ( InstanceMetricName
      ( ..,
        IMNBurstCapacityPercentage,
        IMNBurstCapacityTime,
        IMNCPUUtilization,
        IMNNetworkIn,
        IMNNetworkOut,
        IMNStatusCheckFailed,
        IMNStatusCheckFailedInstance,
        IMNStatusCheckFailedSystem
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceMetricName
  = InstanceMetricName'
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

pattern IMNBurstCapacityPercentage :: InstanceMetricName
pattern IMNBurstCapacityPercentage = InstanceMetricName' "BurstCapacityPercentage"

pattern IMNBurstCapacityTime :: InstanceMetricName
pattern IMNBurstCapacityTime = InstanceMetricName' "BurstCapacityTime"

pattern IMNCPUUtilization :: InstanceMetricName
pattern IMNCPUUtilization = InstanceMetricName' "CPUUtilization"

pattern IMNNetworkIn :: InstanceMetricName
pattern IMNNetworkIn = InstanceMetricName' "NetworkIn"

pattern IMNNetworkOut :: InstanceMetricName
pattern IMNNetworkOut = InstanceMetricName' "NetworkOut"

pattern IMNStatusCheckFailed :: InstanceMetricName
pattern IMNStatusCheckFailed = InstanceMetricName' "StatusCheckFailed"

pattern IMNStatusCheckFailedInstance :: InstanceMetricName
pattern IMNStatusCheckFailedInstance = InstanceMetricName' "StatusCheckFailed_Instance"

pattern IMNStatusCheckFailedSystem :: InstanceMetricName
pattern IMNStatusCheckFailedSystem = InstanceMetricName' "StatusCheckFailed_System"

{-# COMPLETE
  IMNBurstCapacityPercentage,
  IMNBurstCapacityTime,
  IMNCPUUtilization,
  IMNNetworkIn,
  IMNNetworkOut,
  IMNStatusCheckFailed,
  IMNStatusCheckFailedInstance,
  IMNStatusCheckFailedSystem,
  InstanceMetricName'
  #-}

instance FromText InstanceMetricName where
  parser = (InstanceMetricName' . mk) <$> takeText

instance ToText InstanceMetricName where
  toText (InstanceMetricName' ci) = original ci

instance Hashable InstanceMetricName

instance NFData InstanceMetricName

instance ToByteString InstanceMetricName

instance ToQuery InstanceMetricName

instance ToHeader InstanceMetricName

instance ToJSON InstanceMetricName where
  toJSON = toJSONText

instance FromJSON InstanceMetricName where
  parseJSON = parseJSONText "InstanceMetricName"

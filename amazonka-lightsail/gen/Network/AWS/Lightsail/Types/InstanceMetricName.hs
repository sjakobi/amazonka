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
-- Module      : Network.AWS.Lightsail.Types.InstanceMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceMetricName
  ( InstanceMetricName
      ( ..,
        InstanceMetricNameBurstCapacityPercentage,
        InstanceMetricNameBurstCapacityTime,
        InstanceMetricNameCPUUtilization,
        InstanceMetricNameNetworkIn,
        InstanceMetricNameNetworkOut,
        InstanceMetricNameStatusCheckFailed,
        InstanceMetricNameStatusCheckFailedInstance,
        InstanceMetricNameStatusCheckFailedSystem
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceMetricName = InstanceMetricName'
  { fromInstanceMetricName ::
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

pattern InstanceMetricNameBurstCapacityPercentage :: InstanceMetricName
pattern InstanceMetricNameBurstCapacityPercentage = InstanceMetricName' "BurstCapacityPercentage"

pattern InstanceMetricNameBurstCapacityTime :: InstanceMetricName
pattern InstanceMetricNameBurstCapacityTime = InstanceMetricName' "BurstCapacityTime"

pattern InstanceMetricNameCPUUtilization :: InstanceMetricName
pattern InstanceMetricNameCPUUtilization = InstanceMetricName' "CPUUtilization"

pattern InstanceMetricNameNetworkIn :: InstanceMetricName
pattern InstanceMetricNameNetworkIn = InstanceMetricName' "NetworkIn"

pattern InstanceMetricNameNetworkOut :: InstanceMetricName
pattern InstanceMetricNameNetworkOut = InstanceMetricName' "NetworkOut"

pattern InstanceMetricNameStatusCheckFailed :: InstanceMetricName
pattern InstanceMetricNameStatusCheckFailed = InstanceMetricName' "StatusCheckFailed"

pattern InstanceMetricNameStatusCheckFailedInstance :: InstanceMetricName
pattern InstanceMetricNameStatusCheckFailedInstance = InstanceMetricName' "StatusCheckFailed_Instance"

pattern InstanceMetricNameStatusCheckFailedSystem :: InstanceMetricName
pattern InstanceMetricNameStatusCheckFailedSystem = InstanceMetricName' "StatusCheckFailed_System"

{-# COMPLETE
  InstanceMetricNameBurstCapacityPercentage,
  InstanceMetricNameBurstCapacityTime,
  InstanceMetricNameCPUUtilization,
  InstanceMetricNameNetworkIn,
  InstanceMetricNameNetworkOut,
  InstanceMetricNameStatusCheckFailed,
  InstanceMetricNameStatusCheckFailedInstance,
  InstanceMetricNameStatusCheckFailedSystem,
  InstanceMetricName'
  #-}

instance Prelude.FromText InstanceMetricName where
  parser = InstanceMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceMetricName where
  toText (InstanceMetricName' x) = x

instance Prelude.Hashable InstanceMetricName

instance Prelude.NFData InstanceMetricName

instance Prelude.ToByteString InstanceMetricName

instance Prelude.ToQuery InstanceMetricName

instance Prelude.ToHeader InstanceMetricName

instance Prelude.ToJSON InstanceMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceMetricName where
  parseJSON = Prelude.parseJSONText "InstanceMetricName"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.AutoScalingThresholds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.AutoScalingThresholds where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.
--
--
--
-- /See:/ 'autoScalingThresholds' smart constructor.
data AutoScalingThresholds = AutoScalingThresholds'
  { _astLoadThreshold ::
      !(Maybe Double),
    _astCPUThreshold ::
      !(Maybe Double),
    _astMemoryThreshold ::
      !(Maybe Double),
    _astAlarms ::
      !(Maybe [Text]),
    _astIgnoreMetricsTime ::
      !(Maybe Nat),
    _astThresholdsWaitTime ::
      !(Maybe Nat),
    _astInstanceCount ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutoScalingThresholds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'astLoadThreshold' - The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <http://en.wikipedia.org/wiki/Load_%28computing%29 Load (computing)> .
--
-- * 'astCPUThreshold' - The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.
--
-- * 'astMemoryThreshold' - The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.
--
-- * 'astAlarms' - Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.
--
-- * 'astIgnoreMetricsTime' - The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. @IgnoreMetricsTime@ allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.
--
-- * 'astThresholdsWaitTime' - The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.
--
-- * 'astInstanceCount' - The number of instances to add or remove when the load exceeds a threshold.
autoScalingThresholds ::
  AutoScalingThresholds
autoScalingThresholds =
  AutoScalingThresholds'
    { _astLoadThreshold = Nothing,
      _astCPUThreshold = Nothing,
      _astMemoryThreshold = Nothing,
      _astAlarms = Nothing,
      _astIgnoreMetricsTime = Nothing,
      _astThresholdsWaitTime = Nothing,
      _astInstanceCount = Nothing
    }

-- | The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <http://en.wikipedia.org/wiki/Load_%28computing%29 Load (computing)> .
astLoadThreshold :: Lens' AutoScalingThresholds (Maybe Double)
astLoadThreshold = lens _astLoadThreshold (\s a -> s {_astLoadThreshold = a})

-- | The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.
astCPUThreshold :: Lens' AutoScalingThresholds (Maybe Double)
astCPUThreshold = lens _astCPUThreshold (\s a -> s {_astCPUThreshold = a})

-- | The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.
astMemoryThreshold :: Lens' AutoScalingThresholds (Maybe Double)
astMemoryThreshold = lens _astMemoryThreshold (\s a -> s {_astMemoryThreshold = a})

-- | Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.
astAlarms :: Lens' AutoScalingThresholds [Text]
astAlarms = lens _astAlarms (\s a -> s {_astAlarms = a}) . _Default . _Coerce

-- | The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. @IgnoreMetricsTime@ allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.
astIgnoreMetricsTime :: Lens' AutoScalingThresholds (Maybe Natural)
astIgnoreMetricsTime = lens _astIgnoreMetricsTime (\s a -> s {_astIgnoreMetricsTime = a}) . mapping _Nat

-- | The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.
astThresholdsWaitTime :: Lens' AutoScalingThresholds (Maybe Natural)
astThresholdsWaitTime = lens _astThresholdsWaitTime (\s a -> s {_astThresholdsWaitTime = a}) . mapping _Nat

-- | The number of instances to add or remove when the load exceeds a threshold.
astInstanceCount :: Lens' AutoScalingThresholds (Maybe Int)
astInstanceCount = lens _astInstanceCount (\s a -> s {_astInstanceCount = a})

instance FromJSON AutoScalingThresholds where
  parseJSON =
    withObject
      "AutoScalingThresholds"
      ( \x ->
          AutoScalingThresholds'
            <$> (x .:? "LoadThreshold")
            <*> (x .:? "CpuThreshold")
            <*> (x .:? "MemoryThreshold")
            <*> (x .:? "Alarms" .!= mempty)
            <*> (x .:? "IgnoreMetricsTime")
            <*> (x .:? "ThresholdsWaitTime")
            <*> (x .:? "InstanceCount")
      )

instance Hashable AutoScalingThresholds

instance NFData AutoScalingThresholds

instance ToJSON AutoScalingThresholds where
  toJSON AutoScalingThresholds' {..} =
    object
      ( catMaybes
          [ ("LoadThreshold" .=) <$> _astLoadThreshold,
            ("CpuThreshold" .=) <$> _astCPUThreshold,
            ("MemoryThreshold" .=) <$> _astMemoryThreshold,
            ("Alarms" .=) <$> _astAlarms,
            ("IgnoreMetricsTime" .=) <$> _astIgnoreMetricsTime,
            ("ThresholdsWaitTime" .=) <$> _astThresholdsWaitTime,
            ("InstanceCount" .=) <$> _astInstanceCount
          ]
      )

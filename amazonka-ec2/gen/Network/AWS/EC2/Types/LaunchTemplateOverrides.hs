{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateOverrides
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateOverrides where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes overrides for a launch template.
--
--
--
-- /See:/ 'launchTemplateOverrides' smart constructor.
data LaunchTemplateOverrides = LaunchTemplateOverrides'
  { _ltoInstanceType ::
      !(Maybe InstanceType),
    _ltoSpotPrice ::
      !(Maybe Text),
    _ltoPriority ::
      !(Maybe Double),
    _ltoAvailabilityZone ::
      !(Maybe Text),
    _ltoSubnetId ::
      !(Maybe Text),
    _ltoWeightedCapacity ::
      !(Maybe Double)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LaunchTemplateOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltoInstanceType' - The instance type.
--
-- * 'ltoSpotPrice' - The maximum price per unit hour that you are willing to pay for a Spot Instance.
--
-- * 'ltoPriority' - The priority for the launch template override. If __OnDemandAllocationStrategy__ is set to @prioritized@ , Spot Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. Valid values are whole numbers starting at @0@ . The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
--
-- * 'ltoAvailabilityZone' - The Availability Zone in which to launch the instances.
--
-- * 'ltoSubnetId' - The ID of the subnet in which to launch the instances.
--
-- * 'ltoWeightedCapacity' - The number of units provided by the specified instance type.
launchTemplateOverrides ::
  LaunchTemplateOverrides
launchTemplateOverrides =
  LaunchTemplateOverrides'
    { _ltoInstanceType =
        Nothing,
      _ltoSpotPrice = Nothing,
      _ltoPriority = Nothing,
      _ltoAvailabilityZone = Nothing,
      _ltoSubnetId = Nothing,
      _ltoWeightedCapacity = Nothing
    }

-- | The instance type.
ltoInstanceType :: Lens' LaunchTemplateOverrides (Maybe InstanceType)
ltoInstanceType = lens _ltoInstanceType (\s a -> s {_ltoInstanceType = a})

-- | The maximum price per unit hour that you are willing to pay for a Spot Instance.
ltoSpotPrice :: Lens' LaunchTemplateOverrides (Maybe Text)
ltoSpotPrice = lens _ltoSpotPrice (\s a -> s {_ltoSpotPrice = a})

-- | The priority for the launch template override. If __OnDemandAllocationStrategy__ is set to @prioritized@ , Spot Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. Valid values are whole numbers starting at @0@ . The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
ltoPriority :: Lens' LaunchTemplateOverrides (Maybe Double)
ltoPriority = lens _ltoPriority (\s a -> s {_ltoPriority = a})

-- | The Availability Zone in which to launch the instances.
ltoAvailabilityZone :: Lens' LaunchTemplateOverrides (Maybe Text)
ltoAvailabilityZone = lens _ltoAvailabilityZone (\s a -> s {_ltoAvailabilityZone = a})

-- | The ID of the subnet in which to launch the instances.
ltoSubnetId :: Lens' LaunchTemplateOverrides (Maybe Text)
ltoSubnetId = lens _ltoSubnetId (\s a -> s {_ltoSubnetId = a})

-- | The number of units provided by the specified instance type.
ltoWeightedCapacity :: Lens' LaunchTemplateOverrides (Maybe Double)
ltoWeightedCapacity = lens _ltoWeightedCapacity (\s a -> s {_ltoWeightedCapacity = a})

instance FromXML LaunchTemplateOverrides where
  parseXML x =
    LaunchTemplateOverrides'
      <$> (x .@? "instanceType")
      <*> (x .@? "spotPrice")
      <*> (x .@? "priority")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "subnetId")
      <*> (x .@? "weightedCapacity")

instance Hashable LaunchTemplateOverrides

instance NFData LaunchTemplateOverrides

instance ToQuery LaunchTemplateOverrides where
  toQuery LaunchTemplateOverrides' {..} =
    mconcat
      [ "InstanceType" =: _ltoInstanceType,
        "SpotPrice" =: _ltoSpotPrice,
        "Priority" =: _ltoPriority,
        "AvailabilityZone" =: _ltoAvailabilityZone,
        "SubnetId" =: _ltoSubnetId,
        "WeightedCapacity" =: _ltoWeightedCapacity
      ]

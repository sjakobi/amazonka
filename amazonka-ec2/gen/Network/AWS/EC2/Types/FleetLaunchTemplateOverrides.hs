{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetLaunchTemplateOverrides
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetLaunchTemplateOverrides where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.PlacementResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes overrides for a launch template.
--
--
--
-- /See:/ 'fleetLaunchTemplateOverrides' smart constructor.
data FleetLaunchTemplateOverrides = FleetLaunchTemplateOverrides'
  { _fltoInstanceType ::
      !( Maybe
           InstanceType
       ),
    _fltoPlacement ::
      !( Maybe
           PlacementResponse
       ),
    _fltoPriority ::
      !( Maybe
           Double
       ),
    _fltoAvailabilityZone ::
      !(Maybe Text),
    _fltoMaxPrice ::
      !(Maybe Text),
    _fltoSubnetId ::
      !(Maybe Text),
    _fltoWeightedCapacity ::
      !( Maybe
           Double
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FleetLaunchTemplateOverrides' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fltoInstanceType' - The instance type.
--
-- * 'fltoPlacement' - The location where the instance launched, if applicable.
--
-- * 'fltoPriority' - The priority for the launch template override. If __AllocationStrategy__ is set to @prioritized@ , EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. Valid values are whole numbers starting at @0@ . The lower the number, the higher the priority. If no number is set, the override has the lowest priority.
--
-- * 'fltoAvailabilityZone' - The Availability Zone in which to launch the instances.
--
-- * 'fltoMaxPrice' - The maximum price per unit hour that you are willing to pay for a Spot Instance.
--
-- * 'fltoSubnetId' - The ID of the subnet in which to launch the instances.
--
-- * 'fltoWeightedCapacity' - The number of units provided by the specified instance type.
fleetLaunchTemplateOverrides ::
  FleetLaunchTemplateOverrides
fleetLaunchTemplateOverrides =
  FleetLaunchTemplateOverrides'
    { _fltoInstanceType =
        Nothing,
      _fltoPlacement = Nothing,
      _fltoPriority = Nothing,
      _fltoAvailabilityZone = Nothing,
      _fltoMaxPrice = Nothing,
      _fltoSubnetId = Nothing,
      _fltoWeightedCapacity = Nothing
    }

-- | The instance type.
fltoInstanceType :: Lens' FleetLaunchTemplateOverrides (Maybe InstanceType)
fltoInstanceType = lens _fltoInstanceType (\s a -> s {_fltoInstanceType = a})

-- | The location where the instance launched, if applicable.
fltoPlacement :: Lens' FleetLaunchTemplateOverrides (Maybe PlacementResponse)
fltoPlacement = lens _fltoPlacement (\s a -> s {_fltoPlacement = a})

-- | The priority for the launch template override. If __AllocationStrategy__ is set to @prioritized@ , EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. Valid values are whole numbers starting at @0@ . The lower the number, the higher the priority. If no number is set, the override has the lowest priority.
fltoPriority :: Lens' FleetLaunchTemplateOverrides (Maybe Double)
fltoPriority = lens _fltoPriority (\s a -> s {_fltoPriority = a})

-- | The Availability Zone in which to launch the instances.
fltoAvailabilityZone :: Lens' FleetLaunchTemplateOverrides (Maybe Text)
fltoAvailabilityZone = lens _fltoAvailabilityZone (\s a -> s {_fltoAvailabilityZone = a})

-- | The maximum price per unit hour that you are willing to pay for a Spot Instance.
fltoMaxPrice :: Lens' FleetLaunchTemplateOverrides (Maybe Text)
fltoMaxPrice = lens _fltoMaxPrice (\s a -> s {_fltoMaxPrice = a})

-- | The ID of the subnet in which to launch the instances.
fltoSubnetId :: Lens' FleetLaunchTemplateOverrides (Maybe Text)
fltoSubnetId = lens _fltoSubnetId (\s a -> s {_fltoSubnetId = a})

-- | The number of units provided by the specified instance type.
fltoWeightedCapacity :: Lens' FleetLaunchTemplateOverrides (Maybe Double)
fltoWeightedCapacity = lens _fltoWeightedCapacity (\s a -> s {_fltoWeightedCapacity = a})

instance FromXML FleetLaunchTemplateOverrides where
  parseXML x =
    FleetLaunchTemplateOverrides'
      <$> (x .@? "instanceType")
      <*> (x .@? "placement")
      <*> (x .@? "priority")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "maxPrice")
      <*> (x .@? "subnetId")
      <*> (x .@? "weightedCapacity")

instance Hashable FleetLaunchTemplateOverrides

instance NFData FleetLaunchTemplateOverrides

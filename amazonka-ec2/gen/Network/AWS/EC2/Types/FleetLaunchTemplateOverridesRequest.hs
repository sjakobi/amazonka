{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetLaunchTemplateOverridesRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetLaunchTemplateOverridesRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.Placement
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes overrides for a launch template.
--
--
--
-- /See:/ 'fleetLaunchTemplateOverridesRequest' smart constructor.
data FleetLaunchTemplateOverridesRequest = FleetLaunchTemplateOverridesRequest'
  { _fltorInstanceType ::
      !( Maybe
           InstanceType
       ),
    _fltorPlacement ::
      !( Maybe
           Placement
       ),
    _fltorPriority ::
      !( Maybe
           Double
       ),
    _fltorAvailabilityZone ::
      !( Maybe
           Text
       ),
    _fltorMaxPrice ::
      !( Maybe
           Text
       ),
    _fltorSubnetId ::
      !( Maybe
           Text
       ),
    _fltorWeightedCapacity ::
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

-- | Creates a value of 'FleetLaunchTemplateOverridesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fltorInstanceType' - The instance type.
--
-- * 'fltorPlacement' - The location where the instance launched, if applicable.
--
-- * 'fltorPriority' - The priority for the launch template override. If __AllocationStrategy__ is set to @prioritized@ , EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. Valid values are whole numbers starting at @0@ . The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
--
-- * 'fltorAvailabilityZone' - The Availability Zone in which to launch the instances.
--
-- * 'fltorMaxPrice' - The maximum price per unit hour that you are willing to pay for a Spot Instance.
--
-- * 'fltorSubnetId' - The IDs of the subnets in which to launch the instances. Separate multiple subnet IDs using commas (for example, @subnet-1234abcdeexample1, subnet-0987cdef6example2@ ). A request of type @instant@ can have only one subnet ID.
--
-- * 'fltorWeightedCapacity' - The number of units provided by the specified instance type.
fleetLaunchTemplateOverridesRequest ::
  FleetLaunchTemplateOverridesRequest
fleetLaunchTemplateOverridesRequest =
  FleetLaunchTemplateOverridesRequest'
    { _fltorInstanceType =
        Nothing,
      _fltorPlacement = Nothing,
      _fltorPriority = Nothing,
      _fltorAvailabilityZone = Nothing,
      _fltorMaxPrice = Nothing,
      _fltorSubnetId = Nothing,
      _fltorWeightedCapacity = Nothing
    }

-- | The instance type.
fltorInstanceType :: Lens' FleetLaunchTemplateOverridesRequest (Maybe InstanceType)
fltorInstanceType = lens _fltorInstanceType (\s a -> s {_fltorInstanceType = a})

-- | The location where the instance launched, if applicable.
fltorPlacement :: Lens' FleetLaunchTemplateOverridesRequest (Maybe Placement)
fltorPlacement = lens _fltorPlacement (\s a -> s {_fltorPlacement = a})

-- | The priority for the launch template override. If __AllocationStrategy__ is set to @prioritized@ , EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. Valid values are whole numbers starting at @0@ . The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
fltorPriority :: Lens' FleetLaunchTemplateOverridesRequest (Maybe Double)
fltorPriority = lens _fltorPriority (\s a -> s {_fltorPriority = a})

-- | The Availability Zone in which to launch the instances.
fltorAvailabilityZone :: Lens' FleetLaunchTemplateOverridesRequest (Maybe Text)
fltorAvailabilityZone = lens _fltorAvailabilityZone (\s a -> s {_fltorAvailabilityZone = a})

-- | The maximum price per unit hour that you are willing to pay for a Spot Instance.
fltorMaxPrice :: Lens' FleetLaunchTemplateOverridesRequest (Maybe Text)
fltorMaxPrice = lens _fltorMaxPrice (\s a -> s {_fltorMaxPrice = a})

-- | The IDs of the subnets in which to launch the instances. Separate multiple subnet IDs using commas (for example, @subnet-1234abcdeexample1, subnet-0987cdef6example2@ ). A request of type @instant@ can have only one subnet ID.
fltorSubnetId :: Lens' FleetLaunchTemplateOverridesRequest (Maybe Text)
fltorSubnetId = lens _fltorSubnetId (\s a -> s {_fltorSubnetId = a})

-- | The number of units provided by the specified instance type.
fltorWeightedCapacity :: Lens' FleetLaunchTemplateOverridesRequest (Maybe Double)
fltorWeightedCapacity = lens _fltorWeightedCapacity (\s a -> s {_fltorWeightedCapacity = a})

instance Hashable FleetLaunchTemplateOverridesRequest

instance NFData FleetLaunchTemplateOverridesRequest

instance ToQuery FleetLaunchTemplateOverridesRequest where
  toQuery FleetLaunchTemplateOverridesRequest' {..} =
    mconcat
      [ "InstanceType" =: _fltorInstanceType,
        "Placement" =: _fltorPlacement,
        "Priority" =: _fltorPriority,
        "AvailabilityZone" =: _fltorAvailabilityZone,
        "MaxPrice" =: _fltorMaxPrice,
        "SubnetId" =: _fltorSubnetId,
        "WeightedCapacity" =: _fltorWeightedCapacity
      ]

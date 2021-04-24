{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.OnDemandOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OnDemandOptions where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CapacityReservationOptions
import Network.AWS.EC2.Types.FleetOnDemandAllocationStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the configuration of On-Demand Instances in an EC2 Fleet.
--
--
--
-- /See:/ 'onDemandOptions' smart constructor.
data OnDemandOptions = OnDemandOptions'
  { _odoMinTargetCapacity ::
      !(Maybe Int),
    _odoCapacityReservationOptions ::
      !(Maybe CapacityReservationOptions),
    _odoSingleInstanceType :: !(Maybe Bool),
    _odoAllocationStrategy ::
      !( Maybe
           FleetOnDemandAllocationStrategy
       ),
    _odoMaxTotalPrice :: !(Maybe Text),
    _odoSingleAvailabilityZone ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OnDemandOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odoMinTargetCapacity' - The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
--
-- * 'odoCapacityReservationOptions' - The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type @instant@ .
--
-- * 'odoSingleInstanceType' - Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type @instant@ .
--
-- * 'odoAllocationStrategy' - The order of the launch template overrides to use in fulfilling On-Demand capacity. If you specify @lowest-price@ , EC2 Fleet uses price to determine the order, launching the lowest price first. If you specify @prioritized@ , EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first. If you do not specify a value, EC2 Fleet defaults to @lowest-price@ .
--
-- * 'odoMaxTotalPrice' - The maximum amount per hour for On-Demand Instances that you're willing to pay.
--
-- * 'odoSingleAvailabilityZone' - Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type @instant@ .
onDemandOptions ::
  OnDemandOptions
onDemandOptions =
  OnDemandOptions'
    { _odoMinTargetCapacity = Nothing,
      _odoCapacityReservationOptions = Nothing,
      _odoSingleInstanceType = Nothing,
      _odoAllocationStrategy = Nothing,
      _odoMaxTotalPrice = Nothing,
      _odoSingleAvailabilityZone = Nothing
    }

-- | The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
odoMinTargetCapacity :: Lens' OnDemandOptions (Maybe Int)
odoMinTargetCapacity = lens _odoMinTargetCapacity (\s a -> s {_odoMinTargetCapacity = a})

-- | The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type @instant@ .
odoCapacityReservationOptions :: Lens' OnDemandOptions (Maybe CapacityReservationOptions)
odoCapacityReservationOptions = lens _odoCapacityReservationOptions (\s a -> s {_odoCapacityReservationOptions = a})

-- | Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type @instant@ .
odoSingleInstanceType :: Lens' OnDemandOptions (Maybe Bool)
odoSingleInstanceType = lens _odoSingleInstanceType (\s a -> s {_odoSingleInstanceType = a})

-- | The order of the launch template overrides to use in fulfilling On-Demand capacity. If you specify @lowest-price@ , EC2 Fleet uses price to determine the order, launching the lowest price first. If you specify @prioritized@ , EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first. If you do not specify a value, EC2 Fleet defaults to @lowest-price@ .
odoAllocationStrategy :: Lens' OnDemandOptions (Maybe FleetOnDemandAllocationStrategy)
odoAllocationStrategy = lens _odoAllocationStrategy (\s a -> s {_odoAllocationStrategy = a})

-- | The maximum amount per hour for On-Demand Instances that you're willing to pay.
odoMaxTotalPrice :: Lens' OnDemandOptions (Maybe Text)
odoMaxTotalPrice = lens _odoMaxTotalPrice (\s a -> s {_odoMaxTotalPrice = a})

-- | Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type @instant@ .
odoSingleAvailabilityZone :: Lens' OnDemandOptions (Maybe Bool)
odoSingleAvailabilityZone = lens _odoSingleAvailabilityZone (\s a -> s {_odoSingleAvailabilityZone = a})

instance FromXML OnDemandOptions where
  parseXML x =
    OnDemandOptions'
      <$> (x .@? "minTargetCapacity")
      <*> (x .@? "capacityReservationOptions")
      <*> (x .@? "singleInstanceType")
      <*> (x .@? "allocationStrategy")
      <*> (x .@? "maxTotalPrice")
      <*> (x .@? "singleAvailabilityZone")

instance Hashable OnDemandOptions

instance NFData OnDemandOptions

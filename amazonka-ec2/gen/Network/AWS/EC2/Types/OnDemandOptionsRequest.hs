{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.OnDemandOptionsRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OnDemandOptionsRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CapacityReservationOptionsRequest
import Network.AWS.EC2.Types.FleetOnDemandAllocationStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the configuration of On-Demand Instances in an EC2 Fleet.
--
--
--
-- /See:/ 'onDemandOptionsRequest' smart constructor.
data OnDemandOptionsRequest = OnDemandOptionsRequest'
  { _odorMinTargetCapacity ::
      !(Maybe Int),
    _odorCapacityReservationOptions ::
      !( Maybe
           CapacityReservationOptionsRequest
       ),
    _odorSingleInstanceType ::
      !(Maybe Bool),
    _odorAllocationStrategy ::
      !( Maybe
           FleetOnDemandAllocationStrategy
       ),
    _odorMaxTotalPrice ::
      !(Maybe Text),
    _odorSingleAvailabilityZone ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OnDemandOptionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odorMinTargetCapacity' - The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
--
-- * 'odorCapacityReservationOptions' - The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type @instant@ .
--
-- * 'odorSingleInstanceType' - Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type @instant@ .
--
-- * 'odorAllocationStrategy' - The order of the launch template overrides to use in fulfilling On-Demand capacity. If you specify @lowest-price@ , EC2 Fleet uses price to determine the order, launching the lowest price first. If you specify @prioritized@ , EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first. If you do not specify a value, EC2 Fleet defaults to @lowest-price@ .
--
-- * 'odorMaxTotalPrice' - The maximum amount per hour for On-Demand Instances that you're willing to pay.
--
-- * 'odorSingleAvailabilityZone' - Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type @instant@ .
onDemandOptionsRequest ::
  OnDemandOptionsRequest
onDemandOptionsRequest =
  OnDemandOptionsRequest'
    { _odorMinTargetCapacity =
        Nothing,
      _odorCapacityReservationOptions = Nothing,
      _odorSingleInstanceType = Nothing,
      _odorAllocationStrategy = Nothing,
      _odorMaxTotalPrice = Nothing,
      _odorSingleAvailabilityZone = Nothing
    }

-- | The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
odorMinTargetCapacity :: Lens' OnDemandOptionsRequest (Maybe Int)
odorMinTargetCapacity = lens _odorMinTargetCapacity (\s a -> s {_odorMinTargetCapacity = a})

-- | The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity. Supported only for fleets of type @instant@ .
odorCapacityReservationOptions :: Lens' OnDemandOptionsRequest (Maybe CapacityReservationOptionsRequest)
odorCapacityReservationOptions = lens _odorCapacityReservationOptions (\s a -> s {_odorCapacityReservationOptions = a})

-- | Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet. Supported only for fleets of type @instant@ .
odorSingleInstanceType :: Lens' OnDemandOptionsRequest (Maybe Bool)
odorSingleInstanceType = lens _odorSingleInstanceType (\s a -> s {_odorSingleInstanceType = a})

-- | The order of the launch template overrides to use in fulfilling On-Demand capacity. If you specify @lowest-price@ , EC2 Fleet uses price to determine the order, launching the lowest price first. If you specify @prioritized@ , EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first. If you do not specify a value, EC2 Fleet defaults to @lowest-price@ .
odorAllocationStrategy :: Lens' OnDemandOptionsRequest (Maybe FleetOnDemandAllocationStrategy)
odorAllocationStrategy = lens _odorAllocationStrategy (\s a -> s {_odorAllocationStrategy = a})

-- | The maximum amount per hour for On-Demand Instances that you're willing to pay.
odorMaxTotalPrice :: Lens' OnDemandOptionsRequest (Maybe Text)
odorMaxTotalPrice = lens _odorMaxTotalPrice (\s a -> s {_odorMaxTotalPrice = a})

-- | Indicates that the fleet launches all On-Demand Instances into a single Availability Zone. Supported only for fleets of type @instant@ .
odorSingleAvailabilityZone :: Lens' OnDemandOptionsRequest (Maybe Bool)
odorSingleAvailabilityZone = lens _odorSingleAvailabilityZone (\s a -> s {_odorSingleAvailabilityZone = a})

instance Hashable OnDemandOptionsRequest

instance NFData OnDemandOptionsRequest

instance ToQuery OnDemandOptionsRequest where
  toQuery OnDemandOptionsRequest' {..} =
    mconcat
      [ "MinTargetCapacity" =: _odorMinTargetCapacity,
        "CapacityReservationOptions"
          =: _odorCapacityReservationOptions,
        "SingleInstanceType" =: _odorSingleInstanceType,
        "AllocationStrategy" =: _odorAllocationStrategy,
        "MaxTotalPrice" =: _odorMaxTotalPrice,
        "SingleAvailabilityZone"
          =: _odorSingleAvailabilityZone
      ]

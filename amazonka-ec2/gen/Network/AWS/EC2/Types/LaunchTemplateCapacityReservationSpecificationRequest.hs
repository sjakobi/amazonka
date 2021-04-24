{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CapacityReservationPreference
import Network.AWS.EC2.Types.CapacityReservationTarget
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the @CapacityReservationPreference@ parameter to configure the instance to run in On-Demand capacity or to run in any @open@ Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the @CapacityReservationTarget@ parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
--
--
--
-- /See:/ 'launchTemplateCapacityReservationSpecificationRequest' smart constructor.
data LaunchTemplateCapacityReservationSpecificationRequest = LaunchTemplateCapacityReservationSpecificationRequest'
  { _lCapacityReservationPreference ::
      !( Maybe
           CapacityReservationPreference
       ),
    _lCapacityReservationTarget ::
      !( Maybe
           CapacityReservationTarget
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

-- | Creates a value of 'LaunchTemplateCapacityReservationSpecificationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lCapacityReservationPreference' - Indicates the instance's Capacity Reservation preferences. Possible preferences include:     * @open@ - The instance can run in any @open@ Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).     * @none@ - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
--
-- * 'lCapacityReservationTarget' - Information about the target Capacity Reservation or Capacity Reservation group.
launchTemplateCapacityReservationSpecificationRequest ::
  LaunchTemplateCapacityReservationSpecificationRequest
launchTemplateCapacityReservationSpecificationRequest =
  LaunchTemplateCapacityReservationSpecificationRequest'
    { _lCapacityReservationPreference =
        Nothing,
      _lCapacityReservationTarget =
        Nothing
    }

-- | Indicates the instance's Capacity Reservation preferences. Possible preferences include:     * @open@ - The instance can run in any @open@ Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).     * @none@ - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
lCapacityReservationPreference :: Lens' LaunchTemplateCapacityReservationSpecificationRequest (Maybe CapacityReservationPreference)
lCapacityReservationPreference = lens _lCapacityReservationPreference (\s a -> s {_lCapacityReservationPreference = a})

-- | Information about the target Capacity Reservation or Capacity Reservation group.
lCapacityReservationTarget :: Lens' LaunchTemplateCapacityReservationSpecificationRequest (Maybe CapacityReservationTarget)
lCapacityReservationTarget = lens _lCapacityReservationTarget (\s a -> s {_lCapacityReservationTarget = a})

instance
  Hashable
    LaunchTemplateCapacityReservationSpecificationRequest

instance
  NFData
    LaunchTemplateCapacityReservationSpecificationRequest

instance
  ToQuery
    LaunchTemplateCapacityReservationSpecificationRequest
  where
  toQuery
    LaunchTemplateCapacityReservationSpecificationRequest' {..} =
      mconcat
        [ "CapacityReservationPreference"
            =: _lCapacityReservationPreference,
          "CapacityReservationTarget"
            =: _lCapacityReservationTarget
        ]

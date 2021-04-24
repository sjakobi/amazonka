{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationResponse where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CapacityReservationPreference
import Network.AWS.EC2.Types.CapacityReservationTargetResponse
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the Capacity Reservation targeting option.
--
--
--
-- /See:/ 'launchTemplateCapacityReservationSpecificationResponse' smart constructor.
data LaunchTemplateCapacityReservationSpecificationResponse = LaunchTemplateCapacityReservationSpecificationResponse'
  { _ltcrsrCapacityReservationPreference ::
      !( Maybe
           CapacityReservationPreference
       ),
    _ltcrsrCapacityReservationTarget ::
      !( Maybe
           CapacityReservationTargetResponse
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

-- | Creates a value of 'LaunchTemplateCapacityReservationSpecificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltcrsrCapacityReservationPreference' - Indicates the instance's Capacity Reservation preferences. Possible preferences include:     * @open@ - The instance can run in any @open@ Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).     * @none@ - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
--
-- * 'ltcrsrCapacityReservationTarget' - Information about the target Capacity Reservation or Capacity Reservation group.
launchTemplateCapacityReservationSpecificationResponse ::
  LaunchTemplateCapacityReservationSpecificationResponse
launchTemplateCapacityReservationSpecificationResponse =
  LaunchTemplateCapacityReservationSpecificationResponse'
    { _ltcrsrCapacityReservationPreference =
        Nothing,
      _ltcrsrCapacityReservationTarget =
        Nothing
    }

-- | Indicates the instance's Capacity Reservation preferences. Possible preferences include:     * @open@ - The instance can run in any @open@ Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).     * @none@ - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
ltcrsrCapacityReservationPreference :: Lens' LaunchTemplateCapacityReservationSpecificationResponse (Maybe CapacityReservationPreference)
ltcrsrCapacityReservationPreference = lens _ltcrsrCapacityReservationPreference (\s a -> s {_ltcrsrCapacityReservationPreference = a})

-- | Information about the target Capacity Reservation or Capacity Reservation group.
ltcrsrCapacityReservationTarget :: Lens' LaunchTemplateCapacityReservationSpecificationResponse (Maybe CapacityReservationTargetResponse)
ltcrsrCapacityReservationTarget = lens _ltcrsrCapacityReservationTarget (\s a -> s {_ltcrsrCapacityReservationTarget = a})

instance
  FromXML
    LaunchTemplateCapacityReservationSpecificationResponse
  where
  parseXML x =
    LaunchTemplateCapacityReservationSpecificationResponse'
      <$> (x .@? "capacityReservationPreference")
        <*> (x .@? "capacityReservationTarget")

instance
  Hashable
    LaunchTemplateCapacityReservationSpecificationResponse

instance
  NFData
    LaunchTemplateCapacityReservationSpecificationResponse

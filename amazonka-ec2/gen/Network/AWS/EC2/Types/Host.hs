{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Host
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Host where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AllocationState
import Network.AWS.EC2.Types.AllowsMultipleInstanceTypes
import Network.AWS.EC2.Types.AutoPlacement
import Network.AWS.EC2.Types.AvailableCapacity
import Network.AWS.EC2.Types.HostInstance
import Network.AWS.EC2.Types.HostProperties
import Network.AWS.EC2.Types.HostRecovery
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the properties of the Dedicated Host.
--
--
--
-- /See:/ 'host' smart constructor.
data Host = Host'
  { _hOwnerId :: !(Maybe Text),
    _hHostProperties :: !(Maybe HostProperties),
    _hAvailableCapacity :: !(Maybe AvailableCapacity),
    _hHostReservationId :: !(Maybe Text),
    _hAllocationTime :: !(Maybe ISO8601),
    _hInstances :: !(Maybe [HostInstance]),
    _hAvailabilityZoneId :: !(Maybe Text),
    _hState :: !(Maybe AllocationState),
    _hAvailabilityZone :: !(Maybe Text),
    _hReleaseTime :: !(Maybe ISO8601),
    _hTags :: !(Maybe [Tag]),
    _hAutoPlacement :: !(Maybe AutoPlacement),
    _hHostRecovery :: !(Maybe HostRecovery),
    _hMemberOfServiceLinkedResourceGroup ::
      !(Maybe Bool),
    _hAllowsMultipleInstanceTypes ::
      !(Maybe AllowsMultipleInstanceTypes),
    _hHostId :: !(Maybe Text),
    _hClientToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Host' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hOwnerId' - The ID of the AWS account that owns the Dedicated Host.
--
-- * 'hHostProperties' - The hardware specifications of the Dedicated Host.
--
-- * 'hAvailableCapacity' - Information about the instances running on the Dedicated Host.
--
-- * 'hHostReservationId' - The reservation ID of the Dedicated Host. This returns a @null@ response if the Dedicated Host doesn't have an associated reservation.
--
-- * 'hAllocationTime' - The time that the Dedicated Host was allocated.
--
-- * 'hInstances' - The IDs and instance type that are currently running on the Dedicated Host.
--
-- * 'hAvailabilityZoneId' - The ID of the Availability Zone in which the Dedicated Host is allocated.
--
-- * 'hState' - The Dedicated Host's state.
--
-- * 'hAvailabilityZone' - The Availability Zone of the Dedicated Host.
--
-- * 'hReleaseTime' - The time that the Dedicated Host was released.
--
-- * 'hTags' - Any tags assigned to the Dedicated Host.
--
-- * 'hAutoPlacement' - Whether auto-placement is on or off.
--
-- * 'hHostRecovery' - Indicates whether host recovery is enabled or disabled for the Dedicated Host.
--
-- * 'hMemberOfServiceLinkedResourceGroup' - Indicates whether the Dedicated Host is in a host resource group. If __memberOfServiceLinkedResourceGroup__ is @true@ , the host is in a host resource group; otherwise, it is not.
--
-- * 'hAllowsMultipleInstanceTypes' - Indicates whether the Dedicated Host supports multiple instance types of the same instance family. If the value is @on@ , the Dedicated Host supports multiple instance types in the instance family. If the value is @off@ , the Dedicated Host supports a single instance type only.
--
-- * 'hHostId' - The ID of the Dedicated Host.
--
-- * 'hClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
host ::
  Host
host =
  Host'
    { _hOwnerId = Nothing,
      _hHostProperties = Nothing,
      _hAvailableCapacity = Nothing,
      _hHostReservationId = Nothing,
      _hAllocationTime = Nothing,
      _hInstances = Nothing,
      _hAvailabilityZoneId = Nothing,
      _hState = Nothing,
      _hAvailabilityZone = Nothing,
      _hReleaseTime = Nothing,
      _hTags = Nothing,
      _hAutoPlacement = Nothing,
      _hHostRecovery = Nothing,
      _hMemberOfServiceLinkedResourceGroup = Nothing,
      _hAllowsMultipleInstanceTypes = Nothing,
      _hHostId = Nothing,
      _hClientToken = Nothing
    }

-- | The ID of the AWS account that owns the Dedicated Host.
hOwnerId :: Lens' Host (Maybe Text)
hOwnerId = lens _hOwnerId (\s a -> s {_hOwnerId = a})

-- | The hardware specifications of the Dedicated Host.
hHostProperties :: Lens' Host (Maybe HostProperties)
hHostProperties = lens _hHostProperties (\s a -> s {_hHostProperties = a})

-- | Information about the instances running on the Dedicated Host.
hAvailableCapacity :: Lens' Host (Maybe AvailableCapacity)
hAvailableCapacity = lens _hAvailableCapacity (\s a -> s {_hAvailableCapacity = a})

-- | The reservation ID of the Dedicated Host. This returns a @null@ response if the Dedicated Host doesn't have an associated reservation.
hHostReservationId :: Lens' Host (Maybe Text)
hHostReservationId = lens _hHostReservationId (\s a -> s {_hHostReservationId = a})

-- | The time that the Dedicated Host was allocated.
hAllocationTime :: Lens' Host (Maybe UTCTime)
hAllocationTime = lens _hAllocationTime (\s a -> s {_hAllocationTime = a}) . mapping _Time

-- | The IDs and instance type that are currently running on the Dedicated Host.
hInstances :: Lens' Host [HostInstance]
hInstances = lens _hInstances (\s a -> s {_hInstances = a}) . _Default . _Coerce

-- | The ID of the Availability Zone in which the Dedicated Host is allocated.
hAvailabilityZoneId :: Lens' Host (Maybe Text)
hAvailabilityZoneId = lens _hAvailabilityZoneId (\s a -> s {_hAvailabilityZoneId = a})

-- | The Dedicated Host's state.
hState :: Lens' Host (Maybe AllocationState)
hState = lens _hState (\s a -> s {_hState = a})

-- | The Availability Zone of the Dedicated Host.
hAvailabilityZone :: Lens' Host (Maybe Text)
hAvailabilityZone = lens _hAvailabilityZone (\s a -> s {_hAvailabilityZone = a})

-- | The time that the Dedicated Host was released.
hReleaseTime :: Lens' Host (Maybe UTCTime)
hReleaseTime = lens _hReleaseTime (\s a -> s {_hReleaseTime = a}) . mapping _Time

-- | Any tags assigned to the Dedicated Host.
hTags :: Lens' Host [Tag]
hTags = lens _hTags (\s a -> s {_hTags = a}) . _Default . _Coerce

-- | Whether auto-placement is on or off.
hAutoPlacement :: Lens' Host (Maybe AutoPlacement)
hAutoPlacement = lens _hAutoPlacement (\s a -> s {_hAutoPlacement = a})

-- | Indicates whether host recovery is enabled or disabled for the Dedicated Host.
hHostRecovery :: Lens' Host (Maybe HostRecovery)
hHostRecovery = lens _hHostRecovery (\s a -> s {_hHostRecovery = a})

-- | Indicates whether the Dedicated Host is in a host resource group. If __memberOfServiceLinkedResourceGroup__ is @true@ , the host is in a host resource group; otherwise, it is not.
hMemberOfServiceLinkedResourceGroup :: Lens' Host (Maybe Bool)
hMemberOfServiceLinkedResourceGroup = lens _hMemberOfServiceLinkedResourceGroup (\s a -> s {_hMemberOfServiceLinkedResourceGroup = a})

-- | Indicates whether the Dedicated Host supports multiple instance types of the same instance family. If the value is @on@ , the Dedicated Host supports multiple instance types in the instance family. If the value is @off@ , the Dedicated Host supports a single instance type only.
hAllowsMultipleInstanceTypes :: Lens' Host (Maybe AllowsMultipleInstanceTypes)
hAllowsMultipleInstanceTypes = lens _hAllowsMultipleInstanceTypes (\s a -> s {_hAllowsMultipleInstanceTypes = a})

-- | The ID of the Dedicated Host.
hHostId :: Lens' Host (Maybe Text)
hHostId = lens _hHostId (\s a -> s {_hHostId = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
hClientToken :: Lens' Host (Maybe Text)
hClientToken = lens _hClientToken (\s a -> s {_hClientToken = a})

instance FromXML Host where
  parseXML x =
    Host'
      <$> (x .@? "ownerId")
      <*> (x .@? "hostProperties")
      <*> (x .@? "availableCapacity")
      <*> (x .@? "hostReservationId")
      <*> (x .@? "allocationTime")
      <*> ( x .@? "instances" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "availabilityZoneId")
      <*> (x .@? "state")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "releaseTime")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "autoPlacement")
      <*> (x .@? "hostRecovery")
      <*> (x .@? "memberOfServiceLinkedResourceGroup")
      <*> (x .@? "allowsMultipleInstanceTypes")
      <*> (x .@? "hostId")
      <*> (x .@? "clientToken")

instance Hashable Host

instance NFData Host

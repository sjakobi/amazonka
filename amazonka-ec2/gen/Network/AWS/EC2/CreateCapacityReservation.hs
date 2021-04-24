{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateCapacityReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Capacity Reservation with the specified attributes.
--
--
-- Capacity Reservations enable you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration. This gives you the flexibility to selectively add capacity reservations and still get the Regional RI discounts for that usage. By creating Capacity Reservations, you ensure that you always have access to Amazon EC2 capacity when you need it, for as long as you need it. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html Capacity Reservations> in the /Amazon EC2 User Guide/ .
--
-- Your request to create a Capacity Reservation could fail if Amazon EC2 does not have sufficient capacity to fulfill the request. If your request fails due to Amazon EC2 capacity constraints, either try again at a later time, try in a different Availability Zone, or request a smaller capacity reservation. If your application is flexible across instance types and sizes, try to create a Capacity Reservation with different instance attributes.
--
-- Your request could also fail if the requested quantity exceeds your On-Demand Instance limit for the selected instance type. If your request fails due to limit constraints, increase your On-Demand Instance limit for the required instance type and try again. For more information about increasing your instance limits, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html Amazon EC2 Service Quotas> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.CreateCapacityReservation
  ( -- * Creating a Request
    createCapacityReservation,
    CreateCapacityReservation,

    -- * Request Lenses
    ccrcTagSpecifications,
    ccrcEBSOptimized,
    ccrcDryRun,
    ccrcEndDateType,
    ccrcTenancy,
    ccrcAvailabilityZoneId,
    ccrcAvailabilityZone,
    ccrcInstanceMatchCriteria,
    ccrcEphemeralStorage,
    ccrcEndDate,
    ccrcClientToken,
    ccrcInstanceType,
    ccrcInstancePlatform,
    ccrcInstanceCount,

    -- * Destructuring the Response
    createCapacityReservationResponse,
    CreateCapacityReservationResponse,

    -- * Response Lenses
    ccrrcrsCapacityReservation,
    ccrrcrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createCapacityReservation' smart constructor.
data CreateCapacityReservation = CreateCapacityReservation'
  { _ccrcTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _ccrcEBSOptimized ::
      !(Maybe Bool),
    _ccrcDryRun ::
      !(Maybe Bool),
    _ccrcEndDateType ::
      !( Maybe
           EndDateType
       ),
    _ccrcTenancy ::
      !( Maybe
           CapacityReservationTenancy
       ),
    _ccrcAvailabilityZoneId ::
      !(Maybe Text),
    _ccrcAvailabilityZone ::
      !(Maybe Text),
    _ccrcInstanceMatchCriteria ::
      !( Maybe
           InstanceMatchCriteria
       ),
    _ccrcEphemeralStorage ::
      !(Maybe Bool),
    _ccrcEndDate ::
      !(Maybe ISO8601),
    _ccrcClientToken ::
      !(Maybe Text),
    _ccrcInstanceType ::
      !Text,
    _ccrcInstancePlatform ::
      !CapacityReservationInstancePlatform,
    _ccrcInstanceCount ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateCapacityReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrcTagSpecifications' - The tags to apply to the Capacity Reservation during launch.
--
-- * 'ccrcEBSOptimized' - Indicates whether the Capacity Reservation supports EBS-optimized instances. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS- optimized instance.
--
-- * 'ccrcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ccrcEndDateType' - Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:     * @unlimited@ - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an @EndDate@ if the @EndDateType@ is @unlimited@ .     * @limited@ - The Capacity Reservation expires automatically at a specified date and time. You must provide an @EndDate@ value if the @EndDateType@ value is @limited@ .
--
-- * 'ccrcTenancy' - Indicates the tenancy of the Capacity Reservation. A Capacity Reservation can have one of the following tenancy settings:     * @default@ - The Capacity Reservation is created on hardware that is shared with other AWS accounts.     * @dedicated@ - The Capacity Reservation is created on single-tenant hardware that is dedicated to a single AWS account.
--
-- * 'ccrcAvailabilityZoneId' - The ID of the Availability Zone in which to create the Capacity Reservation.
--
-- * 'ccrcAvailabilityZone' - The Availability Zone in which to create the Capacity Reservation.
--
-- * 'ccrcInstanceMatchCriteria' - Indicates the type of instance launches that the Capacity Reservation accepts. The options include:     * @open@ - The Capacity Reservation automatically matches all instances that have matching attributes (instance type, platform, and Availability Zone). Instances that have matching attributes run in the Capacity Reservation automatically without specifying any additional parameters.     * @targeted@ - The Capacity Reservation only accepts instances that have matching attributes (instance type, platform, and Availability Zone), and explicitly target the Capacity Reservation. This ensures that only permitted instances can use the reserved capacity.  Default: @open@
--
-- * 'ccrcEphemeralStorage' - Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
--
-- * 'ccrcEndDate' - The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to @expired@ when it reaches its end date and time. You must provide an @EndDate@ value if @EndDateType@ is @limited@ . Omit @EndDate@ if @EndDateType@ is @unlimited@ . If the @EndDateType@ is @limited@ , the Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
--
-- * 'ccrcClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensure Idempotency> .
--
-- * 'ccrcInstanceType' - The instance type for which to reserve capacity. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ .
--
-- * 'ccrcInstancePlatform' - The type of operating system for which to reserve capacity.
--
-- * 'ccrcInstanceCount' - The number of instances for which to reserve capacity.
createCapacityReservation ::
  -- | 'ccrcInstanceType'
  Text ->
  -- | 'ccrcInstancePlatform'
  CapacityReservationInstancePlatform ->
  -- | 'ccrcInstanceCount'
  Int ->
  CreateCapacityReservation
createCapacityReservation
  pInstanceType_
  pInstancePlatform_
  pInstanceCount_ =
    CreateCapacityReservation'
      { _ccrcTagSpecifications =
          Nothing,
        _ccrcEBSOptimized = Nothing,
        _ccrcDryRun = Nothing,
        _ccrcEndDateType = Nothing,
        _ccrcTenancy = Nothing,
        _ccrcAvailabilityZoneId = Nothing,
        _ccrcAvailabilityZone = Nothing,
        _ccrcInstanceMatchCriteria = Nothing,
        _ccrcEphemeralStorage = Nothing,
        _ccrcEndDate = Nothing,
        _ccrcClientToken = Nothing,
        _ccrcInstanceType = pInstanceType_,
        _ccrcInstancePlatform = pInstancePlatform_,
        _ccrcInstanceCount = pInstanceCount_
      }

-- | The tags to apply to the Capacity Reservation during launch.
ccrcTagSpecifications :: Lens' CreateCapacityReservation [TagSpecification]
ccrcTagSpecifications = lens _ccrcTagSpecifications (\s a -> s {_ccrcTagSpecifications = a}) . _Default . _Coerce

-- | Indicates whether the Capacity Reservation supports EBS-optimized instances. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS- optimized instance.
ccrcEBSOptimized :: Lens' CreateCapacityReservation (Maybe Bool)
ccrcEBSOptimized = lens _ccrcEBSOptimized (\s a -> s {_ccrcEBSOptimized = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ccrcDryRun :: Lens' CreateCapacityReservation (Maybe Bool)
ccrcDryRun = lens _ccrcDryRun (\s a -> s {_ccrcDryRun = a})

-- | Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:     * @unlimited@ - The Capacity Reservation remains active until you explicitly cancel it. Do not provide an @EndDate@ if the @EndDateType@ is @unlimited@ .     * @limited@ - The Capacity Reservation expires automatically at a specified date and time. You must provide an @EndDate@ value if the @EndDateType@ value is @limited@ .
ccrcEndDateType :: Lens' CreateCapacityReservation (Maybe EndDateType)
ccrcEndDateType = lens _ccrcEndDateType (\s a -> s {_ccrcEndDateType = a})

-- | Indicates the tenancy of the Capacity Reservation. A Capacity Reservation can have one of the following tenancy settings:     * @default@ - The Capacity Reservation is created on hardware that is shared with other AWS accounts.     * @dedicated@ - The Capacity Reservation is created on single-tenant hardware that is dedicated to a single AWS account.
ccrcTenancy :: Lens' CreateCapacityReservation (Maybe CapacityReservationTenancy)
ccrcTenancy = lens _ccrcTenancy (\s a -> s {_ccrcTenancy = a})

-- | The ID of the Availability Zone in which to create the Capacity Reservation.
ccrcAvailabilityZoneId :: Lens' CreateCapacityReservation (Maybe Text)
ccrcAvailabilityZoneId = lens _ccrcAvailabilityZoneId (\s a -> s {_ccrcAvailabilityZoneId = a})

-- | The Availability Zone in which to create the Capacity Reservation.
ccrcAvailabilityZone :: Lens' CreateCapacityReservation (Maybe Text)
ccrcAvailabilityZone = lens _ccrcAvailabilityZone (\s a -> s {_ccrcAvailabilityZone = a})

-- | Indicates the type of instance launches that the Capacity Reservation accepts. The options include:     * @open@ - The Capacity Reservation automatically matches all instances that have matching attributes (instance type, platform, and Availability Zone). Instances that have matching attributes run in the Capacity Reservation automatically without specifying any additional parameters.     * @targeted@ - The Capacity Reservation only accepts instances that have matching attributes (instance type, platform, and Availability Zone), and explicitly target the Capacity Reservation. This ensures that only permitted instances can use the reserved capacity.  Default: @open@
ccrcInstanceMatchCriteria :: Lens' CreateCapacityReservation (Maybe InstanceMatchCriteria)
ccrcInstanceMatchCriteria = lens _ccrcInstanceMatchCriteria (\s a -> s {_ccrcInstanceMatchCriteria = a})

-- | Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
ccrcEphemeralStorage :: Lens' CreateCapacityReservation (Maybe Bool)
ccrcEphemeralStorage = lens _ccrcEphemeralStorage (\s a -> s {_ccrcEphemeralStorage = a})

-- | The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to @expired@ when it reaches its end date and time. You must provide an @EndDate@ value if @EndDateType@ is @limited@ . Omit @EndDate@ if @EndDateType@ is @unlimited@ . If the @EndDateType@ is @limited@ , the Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
ccrcEndDate :: Lens' CreateCapacityReservation (Maybe UTCTime)
ccrcEndDate = lens _ccrcEndDate (\s a -> s {_ccrcEndDate = a}) . mapping _Time

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensure Idempotency> .
ccrcClientToken :: Lens' CreateCapacityReservation (Maybe Text)
ccrcClientToken = lens _ccrcClientToken (\s a -> s {_ccrcClientToken = a})

-- | The instance type for which to reserve capacity. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ .
ccrcInstanceType :: Lens' CreateCapacityReservation Text
ccrcInstanceType = lens _ccrcInstanceType (\s a -> s {_ccrcInstanceType = a})

-- | The type of operating system for which to reserve capacity.
ccrcInstancePlatform :: Lens' CreateCapacityReservation CapacityReservationInstancePlatform
ccrcInstancePlatform = lens _ccrcInstancePlatform (\s a -> s {_ccrcInstancePlatform = a})

-- | The number of instances for which to reserve capacity.
ccrcInstanceCount :: Lens' CreateCapacityReservation Int
ccrcInstanceCount = lens _ccrcInstanceCount (\s a -> s {_ccrcInstanceCount = a})

instance AWSRequest CreateCapacityReservation where
  type
    Rs CreateCapacityReservation =
      CreateCapacityReservationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateCapacityReservationResponse'
            <$> (x .@? "capacityReservation")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCapacityReservation

instance NFData CreateCapacityReservation

instance ToHeaders CreateCapacityReservation where
  toHeaders = const mempty

instance ToPath CreateCapacityReservation where
  toPath = const "/"

instance ToQuery CreateCapacityReservation where
  toQuery CreateCapacityReservation' {..} =
    mconcat
      [ "Action"
          =: ("CreateCapacityReservation" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecifications"
              <$> _ccrcTagSpecifications
          ),
        "EbsOptimized" =: _ccrcEBSOptimized,
        "DryRun" =: _ccrcDryRun,
        "EndDateType" =: _ccrcEndDateType,
        "Tenancy" =: _ccrcTenancy,
        "AvailabilityZoneId" =: _ccrcAvailabilityZoneId,
        "AvailabilityZone" =: _ccrcAvailabilityZone,
        "InstanceMatchCriteria"
          =: _ccrcInstanceMatchCriteria,
        "EphemeralStorage" =: _ccrcEphemeralStorage,
        "EndDate" =: _ccrcEndDate,
        "ClientToken" =: _ccrcClientToken,
        "InstanceType" =: _ccrcInstanceType,
        "InstancePlatform" =: _ccrcInstancePlatform,
        "InstanceCount" =: _ccrcInstanceCount
      ]

-- | /See:/ 'createCapacityReservationResponse' smart constructor.
data CreateCapacityReservationResponse = CreateCapacityReservationResponse'
  { _ccrrcrsCapacityReservation ::
      !( Maybe
           CapacityReservation
       ),
    _ccrrcrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateCapacityReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrcrsCapacityReservation' - Information about the Capacity Reservation.
--
-- * 'ccrrcrsResponseStatus' - -- | The response status code.
createCapacityReservationResponse ::
  -- | 'ccrrcrsResponseStatus'
  Int ->
  CreateCapacityReservationResponse
createCapacityReservationResponse pResponseStatus_ =
  CreateCapacityReservationResponse'
    { _ccrrcrsCapacityReservation =
        Nothing,
      _ccrrcrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the Capacity Reservation.
ccrrcrsCapacityReservation :: Lens' CreateCapacityReservationResponse (Maybe CapacityReservation)
ccrrcrsCapacityReservation = lens _ccrrcrsCapacityReservation (\s a -> s {_ccrrcrsCapacityReservation = a})

-- | -- | The response status code.
ccrrcrsResponseStatus :: Lens' CreateCapacityReservationResponse Int
ccrrcrsResponseStatus = lens _ccrrcrsResponseStatus (\s a -> s {_ccrrcrsResponseStatus = a})

instance NFData CreateCapacityReservationResponse

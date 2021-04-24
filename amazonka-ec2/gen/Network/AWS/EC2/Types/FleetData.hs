{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.FleetData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetData where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DescribeFleetError
import Network.AWS.EC2.Types.DescribeFleetsInstances
import Network.AWS.EC2.Types.FleetActivityStatus
import Network.AWS.EC2.Types.FleetExcessCapacityTerminationPolicy
import Network.AWS.EC2.Types.FleetLaunchTemplateConfig
import Network.AWS.EC2.Types.FleetStateCode
import Network.AWS.EC2.Types.FleetType
import Network.AWS.EC2.Types.OnDemandOptions
import Network.AWS.EC2.Types.SpotOptions
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.TargetCapacitySpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an EC2 Fleet.
--
--
--
-- /See:/ 'fleetData' smart constructor.
data FleetData = FleetData'
  { _fdLaunchTemplateConfigs ::
      !(Maybe [FleetLaunchTemplateConfig]),
    _fdFleetState :: !(Maybe FleetStateCode),
    _fdOnDemandOptions :: !(Maybe OnDemandOptions),
    _fdFleetId :: !(Maybe Text),
    _fdFulfilledOnDemandCapacity :: !(Maybe Double),
    _fdValidFrom :: !(Maybe ISO8601),
    _fdReplaceUnhealthyInstances :: !(Maybe Bool),
    _fdInstances :: !(Maybe [DescribeFleetsInstances]),
    _fdValidUntil :: !(Maybe ISO8601),
    _fdActivityStatus :: !(Maybe FleetActivityStatus),
    _fdTags :: !(Maybe [Tag]),
    _fdCreateTime :: !(Maybe ISO8601),
    _fdExcessCapacityTerminationPolicy ::
      !(Maybe FleetExcessCapacityTerminationPolicy),
    _fdErrors :: !(Maybe [DescribeFleetError]),
    _fdType :: !(Maybe FleetType),
    _fdSpotOptions :: !(Maybe SpotOptions),
    _fdTargetCapacitySpecification ::
      !(Maybe TargetCapacitySpecification),
    _fdFulfilledCapacity :: !(Maybe Double),
    _fdClientToken :: !(Maybe Text),
    _fdTerminateInstancesWithExpiration ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FleetData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fdLaunchTemplateConfigs' - The launch template and overrides.
--
-- * 'fdFleetState' - The state of the EC2 Fleet.
--
-- * 'fdOnDemandOptions' - The allocation strategy of On-Demand Instances in an EC2 Fleet.
--
-- * 'fdFleetId' - The ID of the EC2 Fleet.
--
-- * 'fdFulfilledOnDemandCapacity' - The number of units fulfilled by this request compared to the set target On-Demand capacity.
--
-- * 'fdValidFrom' - The start date and time of the request, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). The default is to start fulfilling the request immediately.
--
-- * 'fdReplaceUnhealthyInstances' - Indicates whether EC2 Fleet should replace unhealthy Spot Instances. Supported only for fleets of type @maintain@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks EC2 Fleet health checks> in the /Amazon EC2 User Guide/ .
--
-- * 'fdInstances' - Information about the instances that were launched by the fleet. Valid only when __Type__ is set to @instant@ .
--
-- * 'fdValidUntil' - The end date and time of the request, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). At this point, no new instance requests are placed or able to fulfill the request. The default end date is 7 days from the current date.
--
-- * 'fdActivityStatus' - The progress of the EC2 Fleet. If there is an error, the status is @error@ . After all requests are placed, the status is @pending_fulfillment@ . If the size of the EC2 Fleet is equal to or greater than its target capacity, the status is @fulfilled@ . If the size of the EC2 Fleet is decreased, the status is @pending_termination@ while instances are terminating.
--
-- * 'fdTags' - The tags for an EC2 Fleet resource.
--
-- * 'fdCreateTime' - The creation date and time of the EC2 Fleet.
--
-- * 'fdExcessCapacityTerminationPolicy' - Indicates whether running instances should be terminated if the target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
--
-- * 'fdErrors' - Information about the instances that could not be launched by the fleet. Valid only when __Type__ is set to @instant@ .
--
-- * 'fdType' - The type of request. Indicates whether the EC2 Fleet only @requests@ the target capacity, or also attempts to @maintain@ it. If you request a certain target capacity, EC2 Fleet only places the required requests; it does not attempt to replenish instances if capacity is diminished, and it does not submit requests in alternative capacity pools if capacity is unavailable. To maintain a certain target capacity, EC2 Fleet places the required requests to meet this target capacity. It also automatically replenishes any interrupted Spot Instances. Default: @maintain@ .
--
-- * 'fdSpotOptions' - The configuration of Spot Instances in an EC2 Fleet.
--
-- * 'fdTargetCapacitySpecification' - The number of units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is @maintain@ , you can specify a target capacity of 0 and add capacity later.
--
-- * 'fdFulfilledCapacity' - The number of units fulfilled by this request compared to the set target capacity.
--
-- * 'fdClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraints: Maximum 64 ASCII characters
--
-- * 'fdTerminateInstancesWithExpiration' - Indicates whether running instances should be terminated when the EC2 Fleet expires.
fleetData ::
  FleetData
fleetData =
  FleetData'
    { _fdLaunchTemplateConfigs = Nothing,
      _fdFleetState = Nothing,
      _fdOnDemandOptions = Nothing,
      _fdFleetId = Nothing,
      _fdFulfilledOnDemandCapacity = Nothing,
      _fdValidFrom = Nothing,
      _fdReplaceUnhealthyInstances = Nothing,
      _fdInstances = Nothing,
      _fdValidUntil = Nothing,
      _fdActivityStatus = Nothing,
      _fdTags = Nothing,
      _fdCreateTime = Nothing,
      _fdExcessCapacityTerminationPolicy = Nothing,
      _fdErrors = Nothing,
      _fdType = Nothing,
      _fdSpotOptions = Nothing,
      _fdTargetCapacitySpecification = Nothing,
      _fdFulfilledCapacity = Nothing,
      _fdClientToken = Nothing,
      _fdTerminateInstancesWithExpiration = Nothing
    }

-- | The launch template and overrides.
fdLaunchTemplateConfigs :: Lens' FleetData [FleetLaunchTemplateConfig]
fdLaunchTemplateConfigs = lens _fdLaunchTemplateConfigs (\s a -> s {_fdLaunchTemplateConfigs = a}) . _Default . _Coerce

-- | The state of the EC2 Fleet.
fdFleetState :: Lens' FleetData (Maybe FleetStateCode)
fdFleetState = lens _fdFleetState (\s a -> s {_fdFleetState = a})

-- | The allocation strategy of On-Demand Instances in an EC2 Fleet.
fdOnDemandOptions :: Lens' FleetData (Maybe OnDemandOptions)
fdOnDemandOptions = lens _fdOnDemandOptions (\s a -> s {_fdOnDemandOptions = a})

-- | The ID of the EC2 Fleet.
fdFleetId :: Lens' FleetData (Maybe Text)
fdFleetId = lens _fdFleetId (\s a -> s {_fdFleetId = a})

-- | The number of units fulfilled by this request compared to the set target On-Demand capacity.
fdFulfilledOnDemandCapacity :: Lens' FleetData (Maybe Double)
fdFulfilledOnDemandCapacity = lens _fdFulfilledOnDemandCapacity (\s a -> s {_fdFulfilledOnDemandCapacity = a})

-- | The start date and time of the request, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). The default is to start fulfilling the request immediately.
fdValidFrom :: Lens' FleetData (Maybe UTCTime)
fdValidFrom = lens _fdValidFrom (\s a -> s {_fdValidFrom = a}) . mapping _Time

-- | Indicates whether EC2 Fleet should replace unhealthy Spot Instances. Supported only for fleets of type @maintain@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks EC2 Fleet health checks> in the /Amazon EC2 User Guide/ .
fdReplaceUnhealthyInstances :: Lens' FleetData (Maybe Bool)
fdReplaceUnhealthyInstances = lens _fdReplaceUnhealthyInstances (\s a -> s {_fdReplaceUnhealthyInstances = a})

-- | Information about the instances that were launched by the fleet. Valid only when __Type__ is set to @instant@ .
fdInstances :: Lens' FleetData [DescribeFleetsInstances]
fdInstances = lens _fdInstances (\s a -> s {_fdInstances = a}) . _Default . _Coerce

-- | The end date and time of the request, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). At this point, no new instance requests are placed or able to fulfill the request. The default end date is 7 days from the current date.
fdValidUntil :: Lens' FleetData (Maybe UTCTime)
fdValidUntil = lens _fdValidUntil (\s a -> s {_fdValidUntil = a}) . mapping _Time

-- | The progress of the EC2 Fleet. If there is an error, the status is @error@ . After all requests are placed, the status is @pending_fulfillment@ . If the size of the EC2 Fleet is equal to or greater than its target capacity, the status is @fulfilled@ . If the size of the EC2 Fleet is decreased, the status is @pending_termination@ while instances are terminating.
fdActivityStatus :: Lens' FleetData (Maybe FleetActivityStatus)
fdActivityStatus = lens _fdActivityStatus (\s a -> s {_fdActivityStatus = a})

-- | The tags for an EC2 Fleet resource.
fdTags :: Lens' FleetData [Tag]
fdTags = lens _fdTags (\s a -> s {_fdTags = a}) . _Default . _Coerce

-- | The creation date and time of the EC2 Fleet.
fdCreateTime :: Lens' FleetData (Maybe UTCTime)
fdCreateTime = lens _fdCreateTime (\s a -> s {_fdCreateTime = a}) . mapping _Time

-- | Indicates whether running instances should be terminated if the target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
fdExcessCapacityTerminationPolicy :: Lens' FleetData (Maybe FleetExcessCapacityTerminationPolicy)
fdExcessCapacityTerminationPolicy = lens _fdExcessCapacityTerminationPolicy (\s a -> s {_fdExcessCapacityTerminationPolicy = a})

-- | Information about the instances that could not be launched by the fleet. Valid only when __Type__ is set to @instant@ .
fdErrors :: Lens' FleetData [DescribeFleetError]
fdErrors = lens _fdErrors (\s a -> s {_fdErrors = a}) . _Default . _Coerce

-- | The type of request. Indicates whether the EC2 Fleet only @requests@ the target capacity, or also attempts to @maintain@ it. If you request a certain target capacity, EC2 Fleet only places the required requests; it does not attempt to replenish instances if capacity is diminished, and it does not submit requests in alternative capacity pools if capacity is unavailable. To maintain a certain target capacity, EC2 Fleet places the required requests to meet this target capacity. It also automatically replenishes any interrupted Spot Instances. Default: @maintain@ .
fdType :: Lens' FleetData (Maybe FleetType)
fdType = lens _fdType (\s a -> s {_fdType = a})

-- | The configuration of Spot Instances in an EC2 Fleet.
fdSpotOptions :: Lens' FleetData (Maybe SpotOptions)
fdSpotOptions = lens _fdSpotOptions (\s a -> s {_fdSpotOptions = a})

-- | The number of units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is @maintain@ , you can specify a target capacity of 0 and add capacity later.
fdTargetCapacitySpecification :: Lens' FleetData (Maybe TargetCapacitySpecification)
fdTargetCapacitySpecification = lens _fdTargetCapacitySpecification (\s a -> s {_fdTargetCapacitySpecification = a})

-- | The number of units fulfilled by this request compared to the set target capacity.
fdFulfilledCapacity :: Lens' FleetData (Maybe Double)
fdFulfilledCapacity = lens _fdFulfilledCapacity (\s a -> s {_fdFulfilledCapacity = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraints: Maximum 64 ASCII characters
fdClientToken :: Lens' FleetData (Maybe Text)
fdClientToken = lens _fdClientToken (\s a -> s {_fdClientToken = a})

-- | Indicates whether running instances should be terminated when the EC2 Fleet expires.
fdTerminateInstancesWithExpiration :: Lens' FleetData (Maybe Bool)
fdTerminateInstancesWithExpiration = lens _fdTerminateInstancesWithExpiration (\s a -> s {_fdTerminateInstancesWithExpiration = a})

instance FromXML FleetData where
  parseXML x =
    FleetData'
      <$> ( x .@? "launchTemplateConfigs" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "fleetState")
      <*> (x .@? "onDemandOptions")
      <*> (x .@? "fleetId")
      <*> (x .@? "fulfilledOnDemandCapacity")
      <*> (x .@? "validFrom")
      <*> (x .@? "replaceUnhealthyInstances")
      <*> ( x .@? "fleetInstanceSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "validUntil")
      <*> (x .@? "activityStatus")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "createTime")
      <*> (x .@? "excessCapacityTerminationPolicy")
      <*> ( x .@? "errorSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "type")
      <*> (x .@? "spotOptions")
      <*> (x .@? "targetCapacitySpecification")
      <*> (x .@? "fulfilledCapacity")
      <*> (x .@? "clientToken")
      <*> (x .@? "terminateInstancesWithExpiration")

instance Hashable FleetData

instance NFData FleetData

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleet where

import Network.AWS.EMR.Types.InstanceFleetProvisioningSpecifications
import Network.AWS.EMR.Types.InstanceFleetStatus
import Network.AWS.EMR.Types.InstanceFleetType
import Network.AWS.EMR.Types.InstanceTypeSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an instance fleet, which is a group of EC2 instances that host a particular node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of a mix of instance types and On-Demand and Spot Instances, which are provisioned to meet a defined target capacity.
--
--
--
-- /See:/ 'instanceFleet' smart constructor.
data InstanceFleet = InstanceFleet'
  { _ifInstanceFleetType ::
      !(Maybe InstanceFleetType),
    _ifStatus :: !(Maybe InstanceFleetStatus),
    _ifTargetOnDemandCapacity :: !(Maybe Nat),
    _ifId :: !(Maybe Text),
    _ifTargetSpotCapacity :: !(Maybe Nat),
    _ifProvisionedOnDemandCapacity ::
      !(Maybe Nat),
    _ifInstanceTypeSpecifications ::
      !(Maybe [InstanceTypeSpecification]),
    _ifName :: !(Maybe Text),
    _ifProvisionedSpotCapacity :: !(Maybe Nat),
    _ifLaunchSpecifications ::
      !( Maybe
           InstanceFleetProvisioningSpecifications
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ifInstanceFleetType' - The node type that the instance fleet hosts. Valid values are MASTER, CORE, or TASK.
--
-- * 'ifStatus' - The current status of the instance fleet.
--
-- * 'ifTargetOnDemandCapacity' - The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand Instances to provision. When the instance fleet launches, Amazon EMR tries to provision On-Demand Instances as specified by 'InstanceTypeConfig' . Each instance configuration has a specified @WeightedCapacity@ . When an On-Demand Instance is provisioned, the @WeightedCapacity@ units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a @WeightedCapacity@ of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use 'InstanceFleet$ProvisionedOnDemandCapacity' to determine the Spot capacity units that have been provisioned for the instance fleet.
--
-- * 'ifId' - The unique identifier of the instance fleet.
--
-- * 'ifTargetSpotCapacity' - The target capacity of Spot units for the instance fleet, which determines how many Spot Instances to provision. When the instance fleet launches, Amazon EMR tries to provision Spot Instances as specified by 'InstanceTypeConfig' . Each instance configuration has a specified @WeightedCapacity@ . When a Spot instance is provisioned, the @WeightedCapacity@ units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a @WeightedCapacity@ of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use 'InstanceFleet$ProvisionedSpotCapacity' to determine the Spot capacity units that have been provisioned for the instance fleet.
--
-- * 'ifProvisionedOnDemandCapacity' - The number of On-Demand units that have been provisioned for the instance fleet to fulfill @TargetOnDemandCapacity@ . This provisioned capacity might be less than or greater than @TargetOnDemandCapacity@ .
--
-- * 'ifInstanceTypeSpecifications' - The specification for the instance types that comprise an instance fleet. Up to five unique instance specifications may be defined for each instance fleet.
--
-- * 'ifName' - A friendly name for the instance fleet.
--
-- * 'ifProvisionedSpotCapacity' - The number of Spot units that have been provisioned for this instance fleet to fulfill @TargetSpotCapacity@ . This provisioned capacity might be less than or greater than @TargetSpotCapacity@ .
--
-- * 'ifLaunchSpecifications' - Describes the launch specification for an instance fleet.
instanceFleet ::
  InstanceFleet
instanceFleet =
  InstanceFleet'
    { _ifInstanceFleetType = Nothing,
      _ifStatus = Nothing,
      _ifTargetOnDemandCapacity = Nothing,
      _ifId = Nothing,
      _ifTargetSpotCapacity = Nothing,
      _ifProvisionedOnDemandCapacity = Nothing,
      _ifInstanceTypeSpecifications = Nothing,
      _ifName = Nothing,
      _ifProvisionedSpotCapacity = Nothing,
      _ifLaunchSpecifications = Nothing
    }

-- | The node type that the instance fleet hosts. Valid values are MASTER, CORE, or TASK.
ifInstanceFleetType :: Lens' InstanceFleet (Maybe InstanceFleetType)
ifInstanceFleetType = lens _ifInstanceFleetType (\s a -> s {_ifInstanceFleetType = a})

-- | The current status of the instance fleet.
ifStatus :: Lens' InstanceFleet (Maybe InstanceFleetStatus)
ifStatus = lens _ifStatus (\s a -> s {_ifStatus = a})

-- | The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand Instances to provision. When the instance fleet launches, Amazon EMR tries to provision On-Demand Instances as specified by 'InstanceTypeConfig' . Each instance configuration has a specified @WeightedCapacity@ . When an On-Demand Instance is provisioned, the @WeightedCapacity@ units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a @WeightedCapacity@ of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use 'InstanceFleet$ProvisionedOnDemandCapacity' to determine the Spot capacity units that have been provisioned for the instance fleet.
ifTargetOnDemandCapacity :: Lens' InstanceFleet (Maybe Natural)
ifTargetOnDemandCapacity = lens _ifTargetOnDemandCapacity (\s a -> s {_ifTargetOnDemandCapacity = a}) . mapping _Nat

-- | The unique identifier of the instance fleet.
ifId :: Lens' InstanceFleet (Maybe Text)
ifId = lens _ifId (\s a -> s {_ifId = a})

-- | The target capacity of Spot units for the instance fleet, which determines how many Spot Instances to provision. When the instance fleet launches, Amazon EMR tries to provision Spot Instances as specified by 'InstanceTypeConfig' . Each instance configuration has a specified @WeightedCapacity@ . When a Spot instance is provisioned, the @WeightedCapacity@ units count toward the target capacity. Amazon EMR provisions instances until the target capacity is totally fulfilled, even if this results in an overage. For example, if there are 2 units remaining to fulfill capacity, and Amazon EMR can only provision an instance with a @WeightedCapacity@ of 5 units, the instance is provisioned, and the target capacity is exceeded by 3 units. You can use 'InstanceFleet$ProvisionedSpotCapacity' to determine the Spot capacity units that have been provisioned for the instance fleet.
ifTargetSpotCapacity :: Lens' InstanceFleet (Maybe Natural)
ifTargetSpotCapacity = lens _ifTargetSpotCapacity (\s a -> s {_ifTargetSpotCapacity = a}) . mapping _Nat

-- | The number of On-Demand units that have been provisioned for the instance fleet to fulfill @TargetOnDemandCapacity@ . This provisioned capacity might be less than or greater than @TargetOnDemandCapacity@ .
ifProvisionedOnDemandCapacity :: Lens' InstanceFleet (Maybe Natural)
ifProvisionedOnDemandCapacity = lens _ifProvisionedOnDemandCapacity (\s a -> s {_ifProvisionedOnDemandCapacity = a}) . mapping _Nat

-- | The specification for the instance types that comprise an instance fleet. Up to five unique instance specifications may be defined for each instance fleet.
ifInstanceTypeSpecifications :: Lens' InstanceFleet [InstanceTypeSpecification]
ifInstanceTypeSpecifications = lens _ifInstanceTypeSpecifications (\s a -> s {_ifInstanceTypeSpecifications = a}) . _Default . _Coerce

-- | A friendly name for the instance fleet.
ifName :: Lens' InstanceFleet (Maybe Text)
ifName = lens _ifName (\s a -> s {_ifName = a})

-- | The number of Spot units that have been provisioned for this instance fleet to fulfill @TargetSpotCapacity@ . This provisioned capacity might be less than or greater than @TargetSpotCapacity@ .
ifProvisionedSpotCapacity :: Lens' InstanceFleet (Maybe Natural)
ifProvisionedSpotCapacity = lens _ifProvisionedSpotCapacity (\s a -> s {_ifProvisionedSpotCapacity = a}) . mapping _Nat

-- | Describes the launch specification for an instance fleet.
ifLaunchSpecifications :: Lens' InstanceFleet (Maybe InstanceFleetProvisioningSpecifications)
ifLaunchSpecifications = lens _ifLaunchSpecifications (\s a -> s {_ifLaunchSpecifications = a})

instance FromJSON InstanceFleet where
  parseJSON =
    withObject
      "InstanceFleet"
      ( \x ->
          InstanceFleet'
            <$> (x .:? "InstanceFleetType")
            <*> (x .:? "Status")
            <*> (x .:? "TargetOnDemandCapacity")
            <*> (x .:? "Id")
            <*> (x .:? "TargetSpotCapacity")
            <*> (x .:? "ProvisionedOnDemandCapacity")
            <*> (x .:? "InstanceTypeSpecifications" .!= mempty)
            <*> (x .:? "Name")
            <*> (x .:? "ProvisionedSpotCapacity")
            <*> (x .:? "LaunchSpecifications")
      )

instance Hashable InstanceFleet

instance NFData InstanceFleet

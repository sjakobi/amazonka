{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroup where

import Network.AWS.EMR.Types.AutoScalingPolicyDescription
import Network.AWS.EMR.Types.Configuration
import Network.AWS.EMR.Types.EBSBlockDevice
import Network.AWS.EMR.Types.InstanceGroupStatus
import Network.AWS.EMR.Types.InstanceGroupType
import Network.AWS.EMR.Types.MarketType
import Network.AWS.EMR.Types.ShrinkPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | This entity represents an instance group, which is a group of instances that have common purpose. For example, CORE instance group is used for HDFS.
--
--
--
-- /See:/ 'instanceGroup' smart constructor.
data InstanceGroup = InstanceGroup'
  { _igLastSuccessfullyAppliedConfigurationsVersion ::
      !(Maybe Integer),
    _igStatus :: !(Maybe InstanceGroupStatus),
    _igInstanceType :: !(Maybe Text),
    _igEBSOptimized :: !(Maybe Bool),
    _igEBSBlockDevices ::
      !(Maybe [EBSBlockDevice]),
    _igInstanceGroupType ::
      !(Maybe InstanceGroupType),
    _igConfigurations ::
      !(Maybe [Configuration]),
    _igShrinkPolicy :: !(Maybe ShrinkPolicy),
    _igId :: !(Maybe Text),
    _igLastSuccessfullyAppliedConfigurations ::
      !(Maybe [Configuration]),
    _igRequestedInstanceCount :: !(Maybe Int),
    _igAutoScalingPolicy ::
      !(Maybe AutoScalingPolicyDescription),
    _igBidPrice :: !(Maybe Text),
    _igName :: !(Maybe Text),
    _igMarket :: !(Maybe MarketType),
    _igConfigurationsVersion ::
      !(Maybe Integer),
    _igRunningInstanceCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igLastSuccessfullyAppliedConfigurationsVersion' - The version number of a configuration specification that was successfully applied for an instance group last time.
--
-- * 'igStatus' - The current status of the instance group.
--
-- * 'igInstanceType' - The EC2 instance type for all instances in the instance group.
--
-- * 'igEBSOptimized' - If the instance group is EBS-optimized. An Amazon EBS-optimized instance uses an optimized configuration stack and provides additional, dedicated capacity for Amazon EBS I/O.
--
-- * 'igEBSBlockDevices' - The EBS block devices that are mapped to this instance group.
--
-- * 'igInstanceGroupType' - The type of the instance group. Valid values are MASTER, CORE or TASK.
--
-- * 'igConfigurations' - The list of configurations supplied for an EMR cluster instance group. You can specify a separate configuration for each instance group (master, core, and task).
--
-- * 'igShrinkPolicy' - Policy for customizing shrink operations.
--
-- * 'igId' - The identifier of the instance group.
--
-- * 'igLastSuccessfullyAppliedConfigurations' - A list of configurations that were successfully applied for an instance group last time.
--
-- * 'igRequestedInstanceCount' - The target number of instances for the instance group.
--
-- * 'igAutoScalingPolicy' - An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See PutAutoScalingPolicy.
--
-- * 'igBidPrice' - The bid price for each EC2 Spot Instance type as defined by @InstanceType@ . Expressed in USD. If neither @BidPrice@ nor @BidPriceAsPercentageOfOnDemandPrice@ is provided, @BidPriceAsPercentageOfOnDemandPrice@ defaults to 100%.
--
-- * 'igName' - The name of the instance group.
--
-- * 'igMarket' - The marketplace to provision instances for this group. Valid values are ON_DEMAND or SPOT.
--
-- * 'igConfigurationsVersion' - The version number of the requested configuration specification for this instance group.
--
-- * 'igRunningInstanceCount' - The number of instances currently running in this instance group.
instanceGroup ::
  InstanceGroup
instanceGroup =
  InstanceGroup'
    { _igLastSuccessfullyAppliedConfigurationsVersion =
        Nothing,
      _igStatus = Nothing,
      _igInstanceType = Nothing,
      _igEBSOptimized = Nothing,
      _igEBSBlockDevices = Nothing,
      _igInstanceGroupType = Nothing,
      _igConfigurations = Nothing,
      _igShrinkPolicy = Nothing,
      _igId = Nothing,
      _igLastSuccessfullyAppliedConfigurations = Nothing,
      _igRequestedInstanceCount = Nothing,
      _igAutoScalingPolicy = Nothing,
      _igBidPrice = Nothing,
      _igName = Nothing,
      _igMarket = Nothing,
      _igConfigurationsVersion = Nothing,
      _igRunningInstanceCount = Nothing
    }

-- | The version number of a configuration specification that was successfully applied for an instance group last time.
igLastSuccessfullyAppliedConfigurationsVersion :: Lens' InstanceGroup (Maybe Integer)
igLastSuccessfullyAppliedConfigurationsVersion = lens _igLastSuccessfullyAppliedConfigurationsVersion (\s a -> s {_igLastSuccessfullyAppliedConfigurationsVersion = a})

-- | The current status of the instance group.
igStatus :: Lens' InstanceGroup (Maybe InstanceGroupStatus)
igStatus = lens _igStatus (\s a -> s {_igStatus = a})

-- | The EC2 instance type for all instances in the instance group.
igInstanceType :: Lens' InstanceGroup (Maybe Text)
igInstanceType = lens _igInstanceType (\s a -> s {_igInstanceType = a})

-- | If the instance group is EBS-optimized. An Amazon EBS-optimized instance uses an optimized configuration stack and provides additional, dedicated capacity for Amazon EBS I/O.
igEBSOptimized :: Lens' InstanceGroup (Maybe Bool)
igEBSOptimized = lens _igEBSOptimized (\s a -> s {_igEBSOptimized = a})

-- | The EBS block devices that are mapped to this instance group.
igEBSBlockDevices :: Lens' InstanceGroup [EBSBlockDevice]
igEBSBlockDevices = lens _igEBSBlockDevices (\s a -> s {_igEBSBlockDevices = a}) . _Default . _Coerce

-- | The type of the instance group. Valid values are MASTER, CORE or TASK.
igInstanceGroupType :: Lens' InstanceGroup (Maybe InstanceGroupType)
igInstanceGroupType = lens _igInstanceGroupType (\s a -> s {_igInstanceGroupType = a})

-- | The list of configurations supplied for an EMR cluster instance group. You can specify a separate configuration for each instance group (master, core, and task).
igConfigurations :: Lens' InstanceGroup [Configuration]
igConfigurations = lens _igConfigurations (\s a -> s {_igConfigurations = a}) . _Default . _Coerce

-- | Policy for customizing shrink operations.
igShrinkPolicy :: Lens' InstanceGroup (Maybe ShrinkPolicy)
igShrinkPolicy = lens _igShrinkPolicy (\s a -> s {_igShrinkPolicy = a})

-- | The identifier of the instance group.
igId :: Lens' InstanceGroup (Maybe Text)
igId = lens _igId (\s a -> s {_igId = a})

-- | A list of configurations that were successfully applied for an instance group last time.
igLastSuccessfullyAppliedConfigurations :: Lens' InstanceGroup [Configuration]
igLastSuccessfullyAppliedConfigurations = lens _igLastSuccessfullyAppliedConfigurations (\s a -> s {_igLastSuccessfullyAppliedConfigurations = a}) . _Default . _Coerce

-- | The target number of instances for the instance group.
igRequestedInstanceCount :: Lens' InstanceGroup (Maybe Int)
igRequestedInstanceCount = lens _igRequestedInstanceCount (\s a -> s {_igRequestedInstanceCount = a})

-- | An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See PutAutoScalingPolicy.
igAutoScalingPolicy :: Lens' InstanceGroup (Maybe AutoScalingPolicyDescription)
igAutoScalingPolicy = lens _igAutoScalingPolicy (\s a -> s {_igAutoScalingPolicy = a})

-- | The bid price for each EC2 Spot Instance type as defined by @InstanceType@ . Expressed in USD. If neither @BidPrice@ nor @BidPriceAsPercentageOfOnDemandPrice@ is provided, @BidPriceAsPercentageOfOnDemandPrice@ defaults to 100%.
igBidPrice :: Lens' InstanceGroup (Maybe Text)
igBidPrice = lens _igBidPrice (\s a -> s {_igBidPrice = a})

-- | The name of the instance group.
igName :: Lens' InstanceGroup (Maybe Text)
igName = lens _igName (\s a -> s {_igName = a})

-- | The marketplace to provision instances for this group. Valid values are ON_DEMAND or SPOT.
igMarket :: Lens' InstanceGroup (Maybe MarketType)
igMarket = lens _igMarket (\s a -> s {_igMarket = a})

-- | The version number of the requested configuration specification for this instance group.
igConfigurationsVersion :: Lens' InstanceGroup (Maybe Integer)
igConfigurationsVersion = lens _igConfigurationsVersion (\s a -> s {_igConfigurationsVersion = a})

-- | The number of instances currently running in this instance group.
igRunningInstanceCount :: Lens' InstanceGroup (Maybe Int)
igRunningInstanceCount = lens _igRunningInstanceCount (\s a -> s {_igRunningInstanceCount = a})

instance FromJSON InstanceGroup where
  parseJSON =
    withObject
      "InstanceGroup"
      ( \x ->
          InstanceGroup'
            <$> ( x
                    .:? "LastSuccessfullyAppliedConfigurationsVersion"
                )
            <*> (x .:? "Status")
            <*> (x .:? "InstanceType")
            <*> (x .:? "EbsOptimized")
            <*> (x .:? "EbsBlockDevices" .!= mempty)
            <*> (x .:? "InstanceGroupType")
            <*> (x .:? "Configurations" .!= mempty)
            <*> (x .:? "ShrinkPolicy")
            <*> (x .:? "Id")
            <*> ( x .:? "LastSuccessfullyAppliedConfigurations"
                    .!= mempty
                )
            <*> (x .:? "RequestedInstanceCount")
            <*> (x .:? "AutoScalingPolicy")
            <*> (x .:? "BidPrice")
            <*> (x .:? "Name")
            <*> (x .:? "Market")
            <*> (x .:? "ConfigurationsVersion")
            <*> (x .:? "RunningInstanceCount")
      )

instance Hashable InstanceGroup

instance NFData InstanceGroup

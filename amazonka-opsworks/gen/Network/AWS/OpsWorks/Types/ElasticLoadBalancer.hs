{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.ElasticLoadBalancer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.ElasticLoadBalancer where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an Elastic Load Balancing instance.
--
--
--
-- /See:/ 'elasticLoadBalancer' smart constructor.
data ElasticLoadBalancer = ElasticLoadBalancer'
  { _elbAvailabilityZones ::
      !(Maybe [Text]),
    _elbStackId :: !(Maybe Text),
    _elbElasticLoadBalancerName ::
      !(Maybe Text),
    _elbSubnetIds ::
      !(Maybe [Text]),
    _elbDNSName :: !(Maybe Text),
    _elbLayerId :: !(Maybe Text),
    _elbEC2InstanceIds ::
      !(Maybe [Text]),
    _elbRegion :: !(Maybe Text),
    _elbVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ElasticLoadBalancer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elbAvailabilityZones' - A list of Availability Zones.
--
-- * 'elbStackId' - The ID of the stack that the instance is associated with.
--
-- * 'elbElasticLoadBalancerName' - The Elastic Load Balancing instance's name.
--
-- * 'elbSubnetIds' - A list of subnet IDs, if the stack is running in a VPC.
--
-- * 'elbDNSName' - The instance's public DNS name.
--
-- * 'elbLayerId' - The ID of the layer that the instance is attached to.
--
-- * 'elbEC2InstanceIds' - A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.
--
-- * 'elbRegion' - The instance's AWS region.
--
-- * 'elbVPCId' - The VPC ID.
elasticLoadBalancer ::
  ElasticLoadBalancer
elasticLoadBalancer =
  ElasticLoadBalancer'
    { _elbAvailabilityZones =
        Nothing,
      _elbStackId = Nothing,
      _elbElasticLoadBalancerName = Nothing,
      _elbSubnetIds = Nothing,
      _elbDNSName = Nothing,
      _elbLayerId = Nothing,
      _elbEC2InstanceIds = Nothing,
      _elbRegion = Nothing,
      _elbVPCId = Nothing
    }

-- | A list of Availability Zones.
elbAvailabilityZones :: Lens' ElasticLoadBalancer [Text]
elbAvailabilityZones = lens _elbAvailabilityZones (\s a -> s {_elbAvailabilityZones = a}) . _Default . _Coerce

-- | The ID of the stack that the instance is associated with.
elbStackId :: Lens' ElasticLoadBalancer (Maybe Text)
elbStackId = lens _elbStackId (\s a -> s {_elbStackId = a})

-- | The Elastic Load Balancing instance's name.
elbElasticLoadBalancerName :: Lens' ElasticLoadBalancer (Maybe Text)
elbElasticLoadBalancerName = lens _elbElasticLoadBalancerName (\s a -> s {_elbElasticLoadBalancerName = a})

-- | A list of subnet IDs, if the stack is running in a VPC.
elbSubnetIds :: Lens' ElasticLoadBalancer [Text]
elbSubnetIds = lens _elbSubnetIds (\s a -> s {_elbSubnetIds = a}) . _Default . _Coerce

-- | The instance's public DNS name.
elbDNSName :: Lens' ElasticLoadBalancer (Maybe Text)
elbDNSName = lens _elbDNSName (\s a -> s {_elbDNSName = a})

-- | The ID of the layer that the instance is attached to.
elbLayerId :: Lens' ElasticLoadBalancer (Maybe Text)
elbLayerId = lens _elbLayerId (\s a -> s {_elbLayerId = a})

-- | A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.
elbEC2InstanceIds :: Lens' ElasticLoadBalancer [Text]
elbEC2InstanceIds = lens _elbEC2InstanceIds (\s a -> s {_elbEC2InstanceIds = a}) . _Default . _Coerce

-- | The instance's AWS region.
elbRegion :: Lens' ElasticLoadBalancer (Maybe Text)
elbRegion = lens _elbRegion (\s a -> s {_elbRegion = a})

-- | The VPC ID.
elbVPCId :: Lens' ElasticLoadBalancer (Maybe Text)
elbVPCId = lens _elbVPCId (\s a -> s {_elbVPCId = a})

instance FromJSON ElasticLoadBalancer where
  parseJSON =
    withObject
      "ElasticLoadBalancer"
      ( \x ->
          ElasticLoadBalancer'
            <$> (x .:? "AvailabilityZones" .!= mempty)
            <*> (x .:? "StackId")
            <*> (x .:? "ElasticLoadBalancerName")
            <*> (x .:? "SubnetIds" .!= mempty)
            <*> (x .:? "DnsName")
            <*> (x .:? "LayerId")
            <*> (x .:? "Ec2InstanceIds" .!= mempty)
            <*> (x .:? "Region")
            <*> (x .:? "VpcId")
      )

instance Hashable ElasticLoadBalancer

instance NFData ElasticLoadBalancer

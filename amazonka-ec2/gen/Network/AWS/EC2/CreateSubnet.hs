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
-- Module      : Network.AWS.EC2.CreateSubnet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a subnet in a specified VPC.
--
--
-- You must specify an IPv4 CIDR block for the subnet. After you create a subnet, you can't change its CIDR block. The allowed block size is between a /16 netmask (65,536 IP addresses) and /28 netmask (16 IP addresses). The CIDR block must not overlap with the CIDR block of an existing subnet in the VPC.
--
-- If you've associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length.
--
-- /Important:/ AWS reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for use.
--
-- If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.
--
-- When you stop an instance in a subnet, it retains its private IPv4 address. It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.
--
-- For more information about subnets, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html Your VPC and Subnets> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.CreateSubnet
  ( -- * Creating a Request
    createSubnet,
    CreateSubnet,

    -- * Request Lenses
    creTagSpecifications,
    creDryRun,
    creOutpostARN,
    creAvailabilityZoneId,
    creAvailabilityZone,
    creIPv6CidrBlock,
    creCidrBlock,
    creVPCId,

    -- * Destructuring the Response
    createSubnetResponse,
    CreateSubnetResponse,

    -- * Response Lenses
    crersSubnet,
    crersResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSubnet' smart constructor.
data CreateSubnet = CreateSubnet'
  { _creTagSpecifications ::
      !(Maybe [TagSpecification]),
    _creDryRun :: !(Maybe Bool),
    _creOutpostARN :: !(Maybe Text),
    _creAvailabilityZoneId :: !(Maybe Text),
    _creAvailabilityZone :: !(Maybe Text),
    _creIPv6CidrBlock :: !(Maybe Text),
    _creCidrBlock :: !Text,
    _creVPCId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSubnet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creTagSpecifications' - The tags to assign to the subnet.
--
-- * 'creDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'creOutpostARN' - The Amazon Resource Name (ARN) of the Outpost. If you specify an Outpost ARN, you must also specify the Availability Zone of the Outpost subnet.
--
-- * 'creAvailabilityZoneId' - The AZ ID or the Local Zone ID of the subnet.
--
-- * 'creAvailabilityZone' - The Availability Zone or Local Zone for the subnet. Default: AWS selects one for you. If you create more than one subnet in your VPC, we do not necessarily select a different zone for each subnet. To create a subnet in a Local Zone, set this value to the Local Zone ID, for example @us-west-2-lax-1a@ . For information about the Regions that support Local Zones, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions Available Regions> in the /Amazon Elastic Compute Cloud User Guide/ . To create a subnet in an Outpost, set this value to the Availability Zone for the Outpost and specify the Outpost ARN.
--
-- * 'creIPv6CidrBlock' - The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length.
--
-- * 'creCidrBlock' - The IPv4 network range for the subnet, in CIDR notation. For example, @10.0.0.0/24@ . We modify the specified CIDR block to its canonical form; for example, if you specify @100.68.0.18/18@ , we modify it to @100.68.0.0/18@ .
--
-- * 'creVPCId' - The ID of the VPC.
createSubnet ::
  -- | 'creCidrBlock'
  Text ->
  -- | 'creVPCId'
  Text ->
  CreateSubnet
createSubnet pCidrBlock_ pVPCId_ =
  CreateSubnet'
    { _creTagSpecifications = Nothing,
      _creDryRun = Nothing,
      _creOutpostARN = Nothing,
      _creAvailabilityZoneId = Nothing,
      _creAvailabilityZone = Nothing,
      _creIPv6CidrBlock = Nothing,
      _creCidrBlock = pCidrBlock_,
      _creVPCId = pVPCId_
    }

-- | The tags to assign to the subnet.
creTagSpecifications :: Lens' CreateSubnet [TagSpecification]
creTagSpecifications = lens _creTagSpecifications (\s a -> s {_creTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
creDryRun :: Lens' CreateSubnet (Maybe Bool)
creDryRun = lens _creDryRun (\s a -> s {_creDryRun = a})

-- | The Amazon Resource Name (ARN) of the Outpost. If you specify an Outpost ARN, you must also specify the Availability Zone of the Outpost subnet.
creOutpostARN :: Lens' CreateSubnet (Maybe Text)
creOutpostARN = lens _creOutpostARN (\s a -> s {_creOutpostARN = a})

-- | The AZ ID or the Local Zone ID of the subnet.
creAvailabilityZoneId :: Lens' CreateSubnet (Maybe Text)
creAvailabilityZoneId = lens _creAvailabilityZoneId (\s a -> s {_creAvailabilityZoneId = a})

-- | The Availability Zone or Local Zone for the subnet. Default: AWS selects one for you. If you create more than one subnet in your VPC, we do not necessarily select a different zone for each subnet. To create a subnet in a Local Zone, set this value to the Local Zone ID, for example @us-west-2-lax-1a@ . For information about the Regions that support Local Zones, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions Available Regions> in the /Amazon Elastic Compute Cloud User Guide/ . To create a subnet in an Outpost, set this value to the Availability Zone for the Outpost and specify the Outpost ARN.
creAvailabilityZone :: Lens' CreateSubnet (Maybe Text)
creAvailabilityZone = lens _creAvailabilityZone (\s a -> s {_creAvailabilityZone = a})

-- | The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length.
creIPv6CidrBlock :: Lens' CreateSubnet (Maybe Text)
creIPv6CidrBlock = lens _creIPv6CidrBlock (\s a -> s {_creIPv6CidrBlock = a})

-- | The IPv4 network range for the subnet, in CIDR notation. For example, @10.0.0.0/24@ . We modify the specified CIDR block to its canonical form; for example, if you specify @100.68.0.18/18@ , we modify it to @100.68.0.0/18@ .
creCidrBlock :: Lens' CreateSubnet Text
creCidrBlock = lens _creCidrBlock (\s a -> s {_creCidrBlock = a})

-- | The ID of the VPC.
creVPCId :: Lens' CreateSubnet Text
creVPCId = lens _creVPCId (\s a -> s {_creVPCId = a})

instance AWSRequest CreateSubnet where
  type Rs CreateSubnet = CreateSubnetResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateSubnetResponse'
            <$> (x .@? "subnet") <*> (pure (fromEnum s))
      )

instance Hashable CreateSubnet

instance NFData CreateSubnet

instance ToHeaders CreateSubnet where
  toHeaders = const mempty

instance ToPath CreateSubnet where
  toPath = const "/"

instance ToQuery CreateSubnet where
  toQuery CreateSubnet' {..} =
    mconcat
      [ "Action" =: ("CreateSubnet" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _creTagSpecifications
          ),
        "DryRun" =: _creDryRun,
        "OutpostArn" =: _creOutpostARN,
        "AvailabilityZoneId" =: _creAvailabilityZoneId,
        "AvailabilityZone" =: _creAvailabilityZone,
        "Ipv6CidrBlock" =: _creIPv6CidrBlock,
        "CidrBlock" =: _creCidrBlock,
        "VpcId" =: _creVPCId
      ]

-- | /See:/ 'createSubnetResponse' smart constructor.
data CreateSubnetResponse = CreateSubnetResponse'
  { _crersSubnet ::
      !(Maybe Subnet),
    _crersResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSubnetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersSubnet' - Information about the subnet.
--
-- * 'crersResponseStatus' - -- | The response status code.
createSubnetResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateSubnetResponse
createSubnetResponse pResponseStatus_ =
  CreateSubnetResponse'
    { _crersSubnet = Nothing,
      _crersResponseStatus = pResponseStatus_
    }

-- | Information about the subnet.
crersSubnet :: Lens' CreateSubnetResponse (Maybe Subnet)
crersSubnet = lens _crersSubnet (\s a -> s {_crersSubnet = a})

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateSubnetResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateSubnetResponse

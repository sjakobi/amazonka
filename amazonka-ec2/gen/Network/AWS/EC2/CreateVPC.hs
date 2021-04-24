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
-- Module      : Network.AWS.EC2.CreateVPC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). For more information about how large to make your VPC, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html Your VPC and Subnets> in the /Amazon Virtual Private Cloud User Guide/ .
--
--
-- You can optionally request an IPv6 CIDR block for the VPC. You can request an Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6 addresses, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses (<https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html BYOIP> ).
--
-- By default, each instance you launch in the VPC has the default DHCP options, which include only a default DNS server that we provide (AmazonProvidedDNS). For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html DHCP Options Sets> in the /Amazon Virtual Private Cloud User Guide/ .
--
-- You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html Dedicated Instances> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateVPC
  ( -- * Creating a Request
    createVPC,
    CreateVPC,

    -- * Request Lenses
    cvpcTagSpecifications,
    cvpcDryRun,
    cvpcInstanceTenancy,
    cvpcIPv6Pool,
    cvpcIPv6CidrBlock,
    cvpcIPv6CidrBlockNetworkBorderGroup,
    cvpcAmazonProvidedIPv6CidrBlock,
    cvpcCidrBlock,

    -- * Destructuring the Response
    createVPCResponse,
    CreateVPCResponse,

    -- * Response Lenses
    cvrrsVPC,
    cvrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createVPC' smart constructor.
data CreateVPC = CreateVPC'
  { _cvpcTagSpecifications ::
      !(Maybe [TagSpecification]),
    _cvpcDryRun :: !(Maybe Bool),
    _cvpcInstanceTenancy :: !(Maybe Tenancy),
    _cvpcIPv6Pool :: !(Maybe Text),
    _cvpcIPv6CidrBlock :: !(Maybe Text),
    _cvpcIPv6CidrBlockNetworkBorderGroup ::
      !(Maybe Text),
    _cvpcAmazonProvidedIPv6CidrBlock :: !(Maybe Bool),
    _cvpcCidrBlock :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvpcTagSpecifications' - The tags to assign to the VPC.
--
-- * 'cvpcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvpcInstanceTenancy' - The tenancy options for instances launched into the VPC. For @default@ , instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For @dedicated@ , instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of @dedicated@ or @host@ into a dedicated tenancy VPC.  __Important:__ The @host@ value cannot be used with this parameter. Use the @default@ or @dedicated@ values only. Default: @default@
--
-- * 'cvpcIPv6Pool' - The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
--
-- * 'cvpcIPv6CidrBlock' - The IPv6 CIDR block from the IPv6 address pool. You must also specify @Ipv6Pool@ in the request. To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
--
-- * 'cvpcIPv6CidrBlockNetworkBorderGroup' - The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the address to this location. You must set @AmazonProvidedIpv6CidrBlock@ to @true@ to use this parameter.
--
-- * 'cvpcAmazonProvidedIPv6CidrBlock' - Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.
--
-- * 'cvpcCidrBlock' - The IPv4 network range for the VPC, in CIDR notation. For example, @10.0.0.0/16@ . We modify the specified CIDR block to its canonical form; for example, if you specify @100.68.0.18/18@ , we modify it to @100.68.0.0/18@ .
createVPC ::
  -- | 'cvpcCidrBlock'
  Text ->
  CreateVPC
createVPC pCidrBlock_ =
  CreateVPC'
    { _cvpcTagSpecifications = Nothing,
      _cvpcDryRun = Nothing,
      _cvpcInstanceTenancy = Nothing,
      _cvpcIPv6Pool = Nothing,
      _cvpcIPv6CidrBlock = Nothing,
      _cvpcIPv6CidrBlockNetworkBorderGroup = Nothing,
      _cvpcAmazonProvidedIPv6CidrBlock = Nothing,
      _cvpcCidrBlock = pCidrBlock_
    }

-- | The tags to assign to the VPC.
cvpcTagSpecifications :: Lens' CreateVPC [TagSpecification]
cvpcTagSpecifications = lens _cvpcTagSpecifications (\s a -> s {_cvpcTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvpcDryRun :: Lens' CreateVPC (Maybe Bool)
cvpcDryRun = lens _cvpcDryRun (\s a -> s {_cvpcDryRun = a})

-- | The tenancy options for instances launched into the VPC. For @default@ , instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For @dedicated@ , instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of @dedicated@ or @host@ into a dedicated tenancy VPC.  __Important:__ The @host@ value cannot be used with this parameter. Use the @default@ or @dedicated@ values only. Default: @default@
cvpcInstanceTenancy :: Lens' CreateVPC (Maybe Tenancy)
cvpcInstanceTenancy = lens _cvpcInstanceTenancy (\s a -> s {_cvpcInstanceTenancy = a})

-- | The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
cvpcIPv6Pool :: Lens' CreateVPC (Maybe Text)
cvpcIPv6Pool = lens _cvpcIPv6Pool (\s a -> s {_cvpcIPv6Pool = a})

-- | The IPv6 CIDR block from the IPv6 address pool. You must also specify @Ipv6Pool@ in the request. To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
cvpcIPv6CidrBlock :: Lens' CreateVPC (Maybe Text)
cvpcIPv6CidrBlock = lens _cvpcIPv6CidrBlock (\s a -> s {_cvpcIPv6CidrBlock = a})

-- | The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the address to this location. You must set @AmazonProvidedIpv6CidrBlock@ to @true@ to use this parameter.
cvpcIPv6CidrBlockNetworkBorderGroup :: Lens' CreateVPC (Maybe Text)
cvpcIPv6CidrBlockNetworkBorderGroup = lens _cvpcIPv6CidrBlockNetworkBorderGroup (\s a -> s {_cvpcIPv6CidrBlockNetworkBorderGroup = a})

-- | Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.
cvpcAmazonProvidedIPv6CidrBlock :: Lens' CreateVPC (Maybe Bool)
cvpcAmazonProvidedIPv6CidrBlock = lens _cvpcAmazonProvidedIPv6CidrBlock (\s a -> s {_cvpcAmazonProvidedIPv6CidrBlock = a})

-- | The IPv4 network range for the VPC, in CIDR notation. For example, @10.0.0.0/16@ . We modify the specified CIDR block to its canonical form; for example, if you specify @100.68.0.18/18@ , we modify it to @100.68.0.0/18@ .
cvpcCidrBlock :: Lens' CreateVPC Text
cvpcCidrBlock = lens _cvpcCidrBlock (\s a -> s {_cvpcCidrBlock = a})

instance AWSRequest CreateVPC where
  type Rs CreateVPC = CreateVPCResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPCResponse'
            <$> (x .@? "vpc") <*> (pure (fromEnum s))
      )

instance Hashable CreateVPC

instance NFData CreateVPC

instance ToHeaders CreateVPC where
  toHeaders = const mempty

instance ToPath CreateVPC where
  toPath = const "/"

instance ToQuery CreateVPC where
  toQuery CreateVPC' {..} =
    mconcat
      [ "Action" =: ("CreateVpc" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cvpcTagSpecifications
          ),
        "DryRun" =: _cvpcDryRun,
        "InstanceTenancy" =: _cvpcInstanceTenancy,
        "Ipv6Pool" =: _cvpcIPv6Pool,
        "Ipv6CidrBlock" =: _cvpcIPv6CidrBlock,
        "Ipv6CidrBlockNetworkBorderGroup"
          =: _cvpcIPv6CidrBlockNetworkBorderGroup,
        "AmazonProvidedIpv6CidrBlock"
          =: _cvpcAmazonProvidedIPv6CidrBlock,
        "CidrBlock" =: _cvpcCidrBlock
      ]

-- | /See:/ 'createVPCResponse' smart constructor.
data CreateVPCResponse = CreateVPCResponse'
  { _cvrrsVPC ::
      !(Maybe VPC),
    _cvrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPCResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvrrsVPC' - Information about the VPC.
--
-- * 'cvrrsResponseStatus' - -- | The response status code.
createVPCResponse ::
  -- | 'cvrrsResponseStatus'
  Int ->
  CreateVPCResponse
createVPCResponse pResponseStatus_ =
  CreateVPCResponse'
    { _cvrrsVPC = Nothing,
      _cvrrsResponseStatus = pResponseStatus_
    }

-- | Information about the VPC.
cvrrsVPC :: Lens' CreateVPCResponse (Maybe VPC)
cvrrsVPC = lens _cvrrsVPC (\s a -> s {_cvrrsVPC = a})

-- | -- | The response status code.
cvrrsResponseStatus :: Lens' CreateVPCResponse Int
cvrrsResponseStatus = lens _cvrrsResponseStatus (\s a -> s {_cvrrsResponseStatus = a})

instance NFData CreateVPCResponse

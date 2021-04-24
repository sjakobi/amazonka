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
-- Module      : Network.AWS.EC2.AllocateAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allocates an Elastic IP address to your AWS account. After you allocate the Elastic IP address you can associate it with an instance or network interface. After you release an Elastic IP address, it is released to the IP address pool and can be allocated to a different AWS account.
--
--
-- You can allocate an Elastic IP address from an address pool owned by AWS or from an address pool created from a public IPv4 address range that you have brought to AWS for use with your AWS resources using bring your own IP addresses (BYOIP). For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html Bring Your Own IP Addresses (BYOIP)> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- [EC2-VPC] If you release an Elastic IP address, you might be able to recover it. You cannot recover an Elastic IP address that you released after it is allocated to another AWS account. You cannot recover an Elastic IP address for EC2-Classic. To attempt to recover an Elastic IP address that you released, specify it in this operation.
--
-- An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per Region and 5 Elastic IP addresses for EC2-VPC per Region.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- You can allocate a carrier IP address which is a public IP address from a telecommunication carrier, to a network interface which resides in a subnet in a Wavelength Zone (for example an EC2 instance).
module Network.AWS.EC2.AllocateAddress
  ( -- * Creating a Request
    allocateAddress,
    AllocateAddress,

    -- * Request Lenses
    aaTagSpecifications,
    aaCustomerOwnedIPv4Pool,
    aaDryRun,
    aaAddress,
    aaDomain,
    aaPublicIPv4Pool,
    aaNetworkBorderGroup,

    -- * Destructuring the Response
    allocateAddressResponse,
    AllocateAddressResponse,

    -- * Response Lenses
    arsCustomerOwnedIPv4Pool,
    arsDomain,
    arsCarrierIP,
    arsCustomerOwnedIP,
    arsPublicIPv4Pool,
    arsPublicIP,
    arsAllocationId,
    arsNetworkBorderGroup,
    arsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'allocateAddress' smart constructor.
data AllocateAddress = AllocateAddress'
  { _aaTagSpecifications ::
      !(Maybe [TagSpecification]),
    _aaCustomerOwnedIPv4Pool ::
      !(Maybe Text),
    _aaDryRun :: !(Maybe Bool),
    _aaAddress :: !(Maybe Text),
    _aaDomain :: !(Maybe DomainType),
    _aaPublicIPv4Pool :: !(Maybe Text),
    _aaNetworkBorderGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AllocateAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaTagSpecifications' - The tags to assign to the Elastic IP address.
--
-- * 'aaCustomerOwnedIPv4Pool' - The ID of a customer-owned address pool. Use this parameter to let Amazon EC2 select an address from the address pool. Alternatively, specify a specific address from the address pool.
--
-- * 'aaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'aaAddress' - [EC2-VPC] The Elastic IP address to recover or an IPv4 address from an address pool.
--
-- * 'aaDomain' - Indicates whether the Elastic IP address is for use with instances in a VPC or instances in EC2-Classic. Default: If the Region supports EC2-Classic, the default is @standard@ . Otherwise, the default is @vpc@ .
--
-- * 'aaPublicIPv4Pool' - The ID of an address pool that you own. Use this parameter to let Amazon EC2 select an address from the address pool. To specify a specific address from the address pool, use the @Address@ parameter instead.
--
-- * 'aaNetworkBorderGroup' - A unique set of Availability Zones, Local Zones, or Wavelength Zones from which AWS advertises IP addresses. Use this parameter to limit the IP address to this location. IP addresses cannot move between network border groups. Use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html DescribeAvailabilityZones> to view the network border groups.
allocateAddress ::
  AllocateAddress
allocateAddress =
  AllocateAddress'
    { _aaTagSpecifications = Nothing,
      _aaCustomerOwnedIPv4Pool = Nothing,
      _aaDryRun = Nothing,
      _aaAddress = Nothing,
      _aaDomain = Nothing,
      _aaPublicIPv4Pool = Nothing,
      _aaNetworkBorderGroup = Nothing
    }

-- | The tags to assign to the Elastic IP address.
aaTagSpecifications :: Lens' AllocateAddress [TagSpecification]
aaTagSpecifications = lens _aaTagSpecifications (\s a -> s {_aaTagSpecifications = a}) . _Default . _Coerce

-- | The ID of a customer-owned address pool. Use this parameter to let Amazon EC2 select an address from the address pool. Alternatively, specify a specific address from the address pool.
aaCustomerOwnedIPv4Pool :: Lens' AllocateAddress (Maybe Text)
aaCustomerOwnedIPv4Pool = lens _aaCustomerOwnedIPv4Pool (\s a -> s {_aaCustomerOwnedIPv4Pool = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
aaDryRun :: Lens' AllocateAddress (Maybe Bool)
aaDryRun = lens _aaDryRun (\s a -> s {_aaDryRun = a})

-- | [EC2-VPC] The Elastic IP address to recover or an IPv4 address from an address pool.
aaAddress :: Lens' AllocateAddress (Maybe Text)
aaAddress = lens _aaAddress (\s a -> s {_aaAddress = a})

-- | Indicates whether the Elastic IP address is for use with instances in a VPC or instances in EC2-Classic. Default: If the Region supports EC2-Classic, the default is @standard@ . Otherwise, the default is @vpc@ .
aaDomain :: Lens' AllocateAddress (Maybe DomainType)
aaDomain = lens _aaDomain (\s a -> s {_aaDomain = a})

-- | The ID of an address pool that you own. Use this parameter to let Amazon EC2 select an address from the address pool. To specify a specific address from the address pool, use the @Address@ parameter instead.
aaPublicIPv4Pool :: Lens' AllocateAddress (Maybe Text)
aaPublicIPv4Pool = lens _aaPublicIPv4Pool (\s a -> s {_aaPublicIPv4Pool = a})

-- | A unique set of Availability Zones, Local Zones, or Wavelength Zones from which AWS advertises IP addresses. Use this parameter to limit the IP address to this location. IP addresses cannot move between network border groups. Use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html DescribeAvailabilityZones> to view the network border groups.
aaNetworkBorderGroup :: Lens' AllocateAddress (Maybe Text)
aaNetworkBorderGroup = lens _aaNetworkBorderGroup (\s a -> s {_aaNetworkBorderGroup = a})

instance AWSRequest AllocateAddress where
  type Rs AllocateAddress = AllocateAddressResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AllocateAddressResponse'
            <$> (x .@? "customerOwnedIpv4Pool")
            <*> (x .@? "domain")
            <*> (x .@? "carrierIp")
            <*> (x .@? "customerOwnedIp")
            <*> (x .@? "publicIpv4Pool")
            <*> (x .@? "publicIp")
            <*> (x .@? "allocationId")
            <*> (x .@? "networkBorderGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable AllocateAddress

instance NFData AllocateAddress

instance ToHeaders AllocateAddress where
  toHeaders = const mempty

instance ToPath AllocateAddress where
  toPath = const "/"

instance ToQuery AllocateAddress where
  toQuery AllocateAddress' {..} =
    mconcat
      [ "Action" =: ("AllocateAddress" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _aaTagSpecifications
          ),
        "CustomerOwnedIpv4Pool" =: _aaCustomerOwnedIPv4Pool,
        "DryRun" =: _aaDryRun,
        "Address" =: _aaAddress,
        "Domain" =: _aaDomain,
        "PublicIpv4Pool" =: _aaPublicIPv4Pool,
        "NetworkBorderGroup" =: _aaNetworkBorderGroup
      ]

-- | /See:/ 'allocateAddressResponse' smart constructor.
data AllocateAddressResponse = AllocateAddressResponse'
  { _arsCustomerOwnedIPv4Pool ::
      !(Maybe Text),
    _arsDomain ::
      !(Maybe DomainType),
    _arsCarrierIP ::
      !(Maybe Text),
    _arsCustomerOwnedIP ::
      !(Maybe Text),
    _arsPublicIPv4Pool ::
      !(Maybe Text),
    _arsPublicIP ::
      !(Maybe Text),
    _arsAllocationId ::
      !(Maybe Text),
    _arsNetworkBorderGroup ::
      !(Maybe Text),
    _arsResponseStatus ::
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

-- | Creates a value of 'AllocateAddressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arsCustomerOwnedIPv4Pool' - The ID of the customer-owned address pool.
--
-- * 'arsDomain' - Indicates whether the Elastic IP address is for use with instances in a VPC (@vpc@ ) or instances in EC2-Classic (@standard@ ).
--
-- * 'arsCarrierIP' - The carrier IP address. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance).
--
-- * 'arsCustomerOwnedIP' - The customer-owned IP address.
--
-- * 'arsPublicIPv4Pool' - The ID of an address pool.
--
-- * 'arsPublicIP' - The Elastic IP address.
--
-- * 'arsAllocationId' - [EC2-VPC] The ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
--
-- * 'arsNetworkBorderGroup' - The set of Availability Zones, Local Zones, or Wavelength Zones from which AWS advertises IP addresses.
--
-- * 'arsResponseStatus' - -- | The response status code.
allocateAddressResponse ::
  -- | 'arsResponseStatus'
  Int ->
  AllocateAddressResponse
allocateAddressResponse pResponseStatus_ =
  AllocateAddressResponse'
    { _arsCustomerOwnedIPv4Pool =
        Nothing,
      _arsDomain = Nothing,
      _arsCarrierIP = Nothing,
      _arsCustomerOwnedIP = Nothing,
      _arsPublicIPv4Pool = Nothing,
      _arsPublicIP = Nothing,
      _arsAllocationId = Nothing,
      _arsNetworkBorderGroup = Nothing,
      _arsResponseStatus = pResponseStatus_
    }

-- | The ID of the customer-owned address pool.
arsCustomerOwnedIPv4Pool :: Lens' AllocateAddressResponse (Maybe Text)
arsCustomerOwnedIPv4Pool = lens _arsCustomerOwnedIPv4Pool (\s a -> s {_arsCustomerOwnedIPv4Pool = a})

-- | Indicates whether the Elastic IP address is for use with instances in a VPC (@vpc@ ) or instances in EC2-Classic (@standard@ ).
arsDomain :: Lens' AllocateAddressResponse (Maybe DomainType)
arsDomain = lens _arsDomain (\s a -> s {_arsDomain = a})

-- | The carrier IP address. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance).
arsCarrierIP :: Lens' AllocateAddressResponse (Maybe Text)
arsCarrierIP = lens _arsCarrierIP (\s a -> s {_arsCarrierIP = a})

-- | The customer-owned IP address.
arsCustomerOwnedIP :: Lens' AllocateAddressResponse (Maybe Text)
arsCustomerOwnedIP = lens _arsCustomerOwnedIP (\s a -> s {_arsCustomerOwnedIP = a})

-- | The ID of an address pool.
arsPublicIPv4Pool :: Lens' AllocateAddressResponse (Maybe Text)
arsPublicIPv4Pool = lens _arsPublicIPv4Pool (\s a -> s {_arsPublicIPv4Pool = a})

-- | The Elastic IP address.
arsPublicIP :: Lens' AllocateAddressResponse (Maybe Text)
arsPublicIP = lens _arsPublicIP (\s a -> s {_arsPublicIP = a})

-- | [EC2-VPC] The ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
arsAllocationId :: Lens' AllocateAddressResponse (Maybe Text)
arsAllocationId = lens _arsAllocationId (\s a -> s {_arsAllocationId = a})

-- | The set of Availability Zones, Local Zones, or Wavelength Zones from which AWS advertises IP addresses.
arsNetworkBorderGroup :: Lens' AllocateAddressResponse (Maybe Text)
arsNetworkBorderGroup = lens _arsNetworkBorderGroup (\s a -> s {_arsNetworkBorderGroup = a})

-- | -- | The response status code.
arsResponseStatus :: Lens' AllocateAddressResponse Int
arsResponseStatus = lens _arsResponseStatus (\s a -> s {_arsResponseStatus = a})

instance NFData AllocateAddressResponse

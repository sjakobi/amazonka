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
-- Module      : Network.AWS.EC2.DescribeAddresses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified Elastic IP addresses or all of your Elastic IP addresses.
--
--
-- An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.DescribeAddresses
  ( -- * Creating a Request
    describeAddresses,
    DescribeAddresses,

    -- * Request Lenses
    dasDryRun,
    dasAllocationIds,
    dasPublicIPs,
    dasFilters,

    -- * Destructuring the Response
    describeAddressesResponse,
    DescribeAddressesResponse,

    -- * Response Lenses
    darrsAddresses,
    darrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAddresses' smart constructor.
data DescribeAddresses = DescribeAddresses'
  { _dasDryRun ::
      !(Maybe Bool),
    _dasAllocationIds ::
      !(Maybe [Text]),
    _dasPublicIPs :: !(Maybe [Text]),
    _dasFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAddresses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dasAllocationIds' - [EC2-VPC] Information about the allocation IDs.
--
-- * 'dasPublicIPs' - One or more Elastic IP addresses. Default: Describes all your Elastic IP addresses.
--
-- * 'dasFilters' - One or more filters. Filter names and values are case-sensitive.     * @allocation-id@ - [EC2-VPC] The allocation ID for the address.     * @association-id@ - [EC2-VPC] The association ID for the address.     * @domain@ - Indicates whether the address is for use in EC2-Classic (@standard@ ) or in a VPC (@vpc@ ).     * @instance-id@ - The ID of the instance the address is associated with, if any.     * @network-border-group@ - A unique set of Availability Zones, Local Zones, or Wavelength Zones from where AWS advertises IP addresses.      * @network-interface-id@ - [EC2-VPC] The ID of the network interface that the address is associated with, if any.     * @network-interface-owner-id@ - The AWS account ID of the owner.     * @private-ip-address@ - [EC2-VPC] The private IP address associated with the Elastic IP address.     * @public-ip@ - The Elastic IP address, or the carrier IP address.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeAddresses ::
  DescribeAddresses
describeAddresses =
  DescribeAddresses'
    { _dasDryRun = Nothing,
      _dasAllocationIds = Nothing,
      _dasPublicIPs = Nothing,
      _dasFilters = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dasDryRun :: Lens' DescribeAddresses (Maybe Bool)
dasDryRun = lens _dasDryRun (\s a -> s {_dasDryRun = a})

-- | [EC2-VPC] Information about the allocation IDs.
dasAllocationIds :: Lens' DescribeAddresses [Text]
dasAllocationIds = lens _dasAllocationIds (\s a -> s {_dasAllocationIds = a}) . _Default . _Coerce

-- | One or more Elastic IP addresses. Default: Describes all your Elastic IP addresses.
dasPublicIPs :: Lens' DescribeAddresses [Text]
dasPublicIPs = lens _dasPublicIPs (\s a -> s {_dasPublicIPs = a}) . _Default . _Coerce

-- | One or more filters. Filter names and values are case-sensitive.     * @allocation-id@ - [EC2-VPC] The allocation ID for the address.     * @association-id@ - [EC2-VPC] The association ID for the address.     * @domain@ - Indicates whether the address is for use in EC2-Classic (@standard@ ) or in a VPC (@vpc@ ).     * @instance-id@ - The ID of the instance the address is associated with, if any.     * @network-border-group@ - A unique set of Availability Zones, Local Zones, or Wavelength Zones from where AWS advertises IP addresses.      * @network-interface-id@ - [EC2-VPC] The ID of the network interface that the address is associated with, if any.     * @network-interface-owner-id@ - The AWS account ID of the owner.     * @private-ip-address@ - [EC2-VPC] The private IP address associated with the Elastic IP address.     * @public-ip@ - The Elastic IP address, or the carrier IP address.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dasFilters :: Lens' DescribeAddresses [Filter]
dasFilters = lens _dasFilters (\s a -> s {_dasFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeAddresses where
  type Rs DescribeAddresses = DescribeAddressesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeAddressesResponse'
            <$> ( x .@? "addressesSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAddresses

instance NFData DescribeAddresses

instance ToHeaders DescribeAddresses where
  toHeaders = const mempty

instance ToPath DescribeAddresses where
  toPath = const "/"

instance ToQuery DescribeAddresses where
  toQuery DescribeAddresses' {..} =
    mconcat
      [ "Action" =: ("DescribeAddresses" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dasDryRun,
        toQuery
          (toQueryList "AllocationId" <$> _dasAllocationIds),
        toQuery (toQueryList "PublicIp" <$> _dasPublicIPs),
        toQuery (toQueryList "Filter" <$> _dasFilters)
      ]

-- | /See:/ 'describeAddressesResponse' smart constructor.
data DescribeAddressesResponse = DescribeAddressesResponse'
  { _darrsAddresses ::
      !(Maybe [Address]),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DescribeAddressesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsAddresses' - Information about the Elastic IP addresses.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeAddressesResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeAddressesResponse
describeAddressesResponse pResponseStatus_ =
  DescribeAddressesResponse'
    { _darrsAddresses =
        Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | Information about the Elastic IP addresses.
darrsAddresses :: Lens' DescribeAddressesResponse [Address]
darrsAddresses = lens _darrsAddresses (\s a -> s {_darrsAddresses = a}) . _Default . _Coerce

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeAddressesResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeAddressesResponse

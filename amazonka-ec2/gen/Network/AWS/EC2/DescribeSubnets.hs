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
-- Module      : Network.AWS.EC2.DescribeSubnets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your subnets.
--
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html Your VPC and Subnets> in the /Amazon Virtual Private Cloud User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeSubnets
  ( -- * Creating a Request
    describeSubnets,
    DescribeSubnets,

    -- * Request Lenses
    dssNextToken,
    dssDryRun,
    dssMaxResults,
    dssSubnetIds,
    dssFilters,

    -- * Destructuring the Response
    describeSubnetsResponse,
    DescribeSubnetsResponse,

    -- * Response Lenses
    dsrsrsNextToken,
    dsrsrsSubnets,
    dsrsrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSubnets' smart constructor.
data DescribeSubnets = DescribeSubnets'
  { _dssNextToken ::
      !(Maybe Text),
    _dssDryRun :: !(Maybe Bool),
    _dssMaxResults :: !(Maybe Nat),
    _dssSubnetIds :: !(Maybe [Text]),
    _dssFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSubnets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssNextToken' - The token for the next page of results.
--
-- * 'dssDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dssMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dssSubnetIds' - One or more subnet IDs. Default: Describes all your subnets.
--
-- * 'dssFilters' - One or more filters.     * @availability-zone@ - The Availability Zone for the subnet. You can also use @availabilityZone@ as the filter name.     * @availability-zone-id@ - The ID of the Availability Zone for the subnet. You can also use @availabilityZoneId@ as the filter name.     * @available-ip-address-count@ - The number of IPv4 addresses in the subnet that are available.     * @cidr-block@ - The IPv4 CIDR block of the subnet. The CIDR block you specify must exactly match the subnet's CIDR block for information to be returned for the subnet. You can also use @cidr@ or @cidrBlock@ as the filter names.     * @default-for-az@ - Indicates whether this is the default subnet for the Availability Zone. You can also use @defaultForAz@ as the filter name.     * @ipv6-cidr-block-association.ipv6-cidr-block@ - An IPv6 CIDR block associated with the subnet.     * @ipv6-cidr-block-association.association-id@ - An association ID for an IPv6 CIDR block associated with the subnet.     * @ipv6-cidr-block-association.state@ - The state of an IPv6 CIDR block associated with the subnet.     * @owner-id@ - The ID of the AWS account that owns the subnet.     * @state@ - The state of the subnet (@pending@ | @available@ ).     * @subnet-arn@ - The Amazon Resource Name (ARN) of the subnet.     * @subnet-id@ - The ID of the subnet.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC for the subnet.
describeSubnets ::
  DescribeSubnets
describeSubnets =
  DescribeSubnets'
    { _dssNextToken = Nothing,
      _dssDryRun = Nothing,
      _dssMaxResults = Nothing,
      _dssSubnetIds = Nothing,
      _dssFilters = Nothing
    }

-- | The token for the next page of results.
dssNextToken :: Lens' DescribeSubnets (Maybe Text)
dssNextToken = lens _dssNextToken (\s a -> s {_dssNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dssDryRun :: Lens' DescribeSubnets (Maybe Bool)
dssDryRun = lens _dssDryRun (\s a -> s {_dssDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dssMaxResults :: Lens' DescribeSubnets (Maybe Natural)
dssMaxResults = lens _dssMaxResults (\s a -> s {_dssMaxResults = a}) . mapping _Nat

-- | One or more subnet IDs. Default: Describes all your subnets.
dssSubnetIds :: Lens' DescribeSubnets [Text]
dssSubnetIds = lens _dssSubnetIds (\s a -> s {_dssSubnetIds = a}) . _Default . _Coerce

-- | One or more filters.     * @availability-zone@ - The Availability Zone for the subnet. You can also use @availabilityZone@ as the filter name.     * @availability-zone-id@ - The ID of the Availability Zone for the subnet. You can also use @availabilityZoneId@ as the filter name.     * @available-ip-address-count@ - The number of IPv4 addresses in the subnet that are available.     * @cidr-block@ - The IPv4 CIDR block of the subnet. The CIDR block you specify must exactly match the subnet's CIDR block for information to be returned for the subnet. You can also use @cidr@ or @cidrBlock@ as the filter names.     * @default-for-az@ - Indicates whether this is the default subnet for the Availability Zone. You can also use @defaultForAz@ as the filter name.     * @ipv6-cidr-block-association.ipv6-cidr-block@ - An IPv6 CIDR block associated with the subnet.     * @ipv6-cidr-block-association.association-id@ - An association ID for an IPv6 CIDR block associated with the subnet.     * @ipv6-cidr-block-association.state@ - The state of an IPv6 CIDR block associated with the subnet.     * @owner-id@ - The ID of the AWS account that owns the subnet.     * @state@ - The state of the subnet (@pending@ | @available@ ).     * @subnet-arn@ - The Amazon Resource Name (ARN) of the subnet.     * @subnet-id@ - The ID of the subnet.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC for the subnet.
dssFilters :: Lens' DescribeSubnets [Filter]
dssFilters = lens _dssFilters (\s a -> s {_dssFilters = a}) . _Default . _Coerce

instance AWSPager DescribeSubnets where
  page rq rs
    | stop (rs ^. dsrsrsNextToken) = Nothing
    | stop (rs ^. dsrsrsSubnets) = Nothing
    | otherwise =
      Just $ rq & dssNextToken .~ rs ^. dsrsrsNextToken

instance AWSRequest DescribeSubnets where
  type Rs DescribeSubnets = DescribeSubnetsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeSubnetsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "subnetSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSubnets

instance NFData DescribeSubnets

instance ToHeaders DescribeSubnets where
  toHeaders = const mempty

instance ToPath DescribeSubnets where
  toPath = const "/"

instance ToQuery DescribeSubnets where
  toQuery DescribeSubnets' {..} =
    mconcat
      [ "Action" =: ("DescribeSubnets" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dssNextToken,
        "DryRun" =: _dssDryRun,
        "MaxResults" =: _dssMaxResults,
        toQuery (toQueryList "SubnetId" <$> _dssSubnetIds),
        toQuery (toQueryList "Filter" <$> _dssFilters)
      ]

-- | /See:/ 'describeSubnetsResponse' smart constructor.
data DescribeSubnetsResponse = DescribeSubnetsResponse'
  { _dsrsrsNextToken ::
      !(Maybe Text),
    _dsrsrsSubnets ::
      !(Maybe [Subnet]),
    _dsrsrsResponseStatus ::
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

-- | Creates a value of 'DescribeSubnetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrsrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dsrsrsSubnets' - Information about one or more subnets.
--
-- * 'dsrsrsResponseStatus' - -- | The response status code.
describeSubnetsResponse ::
  -- | 'dsrsrsResponseStatus'
  Int ->
  DescribeSubnetsResponse
describeSubnetsResponse pResponseStatus_ =
  DescribeSubnetsResponse'
    { _dsrsrsNextToken =
        Nothing,
      _dsrsrsSubnets = Nothing,
      _dsrsrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dsrsrsNextToken :: Lens' DescribeSubnetsResponse (Maybe Text)
dsrsrsNextToken = lens _dsrsrsNextToken (\s a -> s {_dsrsrsNextToken = a})

-- | Information about one or more subnets.
dsrsrsSubnets :: Lens' DescribeSubnetsResponse [Subnet]
dsrsrsSubnets = lens _dsrsrsSubnets (\s a -> s {_dsrsrsSubnets = a}) . _Default . _Coerce

-- | -- | The response status code.
dsrsrsResponseStatus :: Lens' DescribeSubnetsResponse Int
dsrsrsResponseStatus = lens _dsrsrsResponseStatus (\s a -> s {_dsrsrsResponseStatus = a})

instance NFData DescribeSubnetsResponse

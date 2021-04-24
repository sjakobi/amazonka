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
-- Module      : Network.AWS.EC2.DescribeRouteTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your route tables.
--
--
-- Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html Route Tables> in the /Amazon Virtual Private Cloud User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeRouteTables
  ( -- * Creating a Request
    describeRouteTables,
    DescribeRouteTables,

    -- * Request Lenses
    drtNextToken,
    drtRouteTableIds,
    drtDryRun,
    drtMaxResults,
    drtFilters,

    -- * Destructuring the Response
    describeRouteTablesResponse,
    DescribeRouteTablesResponse,

    -- * Response Lenses
    drtrrsNextToken,
    drtrrsRouteTables,
    drtrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRouteTables' smart constructor.
data DescribeRouteTables = DescribeRouteTables'
  { _drtNextToken ::
      !(Maybe Text),
    _drtRouteTableIds ::
      !(Maybe [Text]),
    _drtDryRun :: !(Maybe Bool),
    _drtMaxResults :: !(Maybe Nat),
    _drtFilters ::
      !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRouteTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtNextToken' - The token for the next page of results.
--
-- * 'drtRouteTableIds' - One or more route table IDs. Default: Describes all your route tables.
--
-- * 'drtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'drtMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'drtFilters' - One or more filters.     * @association.route-table-association-id@ - The ID of an association ID for the route table.     * @association.route-table-id@ - The ID of the route table involved in the association.     * @association.subnet-id@ - The ID of the subnet involved in the association.     * @association.main@ - Indicates whether the route table is the main route table for the VPC (@true@ | @false@ ). Route tables that do not have an association ID are not returned in the response.     * @owner-id@ - The ID of the AWS account that owns the route table.     * @route-table-id@ - The ID of the route table.     * @route.destination-cidr-block@ - The IPv4 CIDR range specified in a route in the table.     * @route.destination-ipv6-cidr-block@ - The IPv6 CIDR range specified in a route in the route table.     * @route.destination-prefix-list-id@ - The ID (prefix) of the AWS service specified in a route in the table.     * @route.egress-only-internet-gateway-id@ - The ID of an egress-only Internet gateway specified in a route in the route table.     * @route.gateway-id@ - The ID of a gateway specified in a route in the table.     * @route.instance-id@ - The ID of an instance specified in a route in the table.     * @route.nat-gateway-id@ - The ID of a NAT gateway.     * @route.transit-gateway-id@ - The ID of a transit gateway.     * @route.origin@ - Describes how the route was created. @CreateRouteTable@ indicates that the route was automatically created when the route table was created; @CreateRoute@ indicates that the route was manually added to the route table; @EnableVgwRoutePropagation@ indicates that the route was propagated by route propagation.     * @route.state@ - The state of a route in the route table (@active@ | @blackhole@ ). The blackhole state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, the specified NAT instance has been terminated, and so on).     * @route.vpc-peering-connection-id@ - The ID of a VPC peering connection specified in a route in the table.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC for the route table.
describeRouteTables ::
  DescribeRouteTables
describeRouteTables =
  DescribeRouteTables'
    { _drtNextToken = Nothing,
      _drtRouteTableIds = Nothing,
      _drtDryRun = Nothing,
      _drtMaxResults = Nothing,
      _drtFilters = Nothing
    }

-- | The token for the next page of results.
drtNextToken :: Lens' DescribeRouteTables (Maybe Text)
drtNextToken = lens _drtNextToken (\s a -> s {_drtNextToken = a})

-- | One or more route table IDs. Default: Describes all your route tables.
drtRouteTableIds :: Lens' DescribeRouteTables [Text]
drtRouteTableIds = lens _drtRouteTableIds (\s a -> s {_drtRouteTableIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
drtDryRun :: Lens' DescribeRouteTables (Maybe Bool)
drtDryRun = lens _drtDryRun (\s a -> s {_drtDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
drtMaxResults :: Lens' DescribeRouteTables (Maybe Natural)
drtMaxResults = lens _drtMaxResults (\s a -> s {_drtMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @association.route-table-association-id@ - The ID of an association ID for the route table.     * @association.route-table-id@ - The ID of the route table involved in the association.     * @association.subnet-id@ - The ID of the subnet involved in the association.     * @association.main@ - Indicates whether the route table is the main route table for the VPC (@true@ | @false@ ). Route tables that do not have an association ID are not returned in the response.     * @owner-id@ - The ID of the AWS account that owns the route table.     * @route-table-id@ - The ID of the route table.     * @route.destination-cidr-block@ - The IPv4 CIDR range specified in a route in the table.     * @route.destination-ipv6-cidr-block@ - The IPv6 CIDR range specified in a route in the route table.     * @route.destination-prefix-list-id@ - The ID (prefix) of the AWS service specified in a route in the table.     * @route.egress-only-internet-gateway-id@ - The ID of an egress-only Internet gateway specified in a route in the route table.     * @route.gateway-id@ - The ID of a gateway specified in a route in the table.     * @route.instance-id@ - The ID of an instance specified in a route in the table.     * @route.nat-gateway-id@ - The ID of a NAT gateway.     * @route.transit-gateway-id@ - The ID of a transit gateway.     * @route.origin@ - Describes how the route was created. @CreateRouteTable@ indicates that the route was automatically created when the route table was created; @CreateRoute@ indicates that the route was manually added to the route table; @EnableVgwRoutePropagation@ indicates that the route was propagated by route propagation.     * @route.state@ - The state of a route in the route table (@active@ | @blackhole@ ). The blackhole state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, the specified NAT instance has been terminated, and so on).     * @route.vpc-peering-connection-id@ - The ID of a VPC peering connection specified in a route in the table.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC for the route table.
drtFilters :: Lens' DescribeRouteTables [Filter]
drtFilters = lens _drtFilters (\s a -> s {_drtFilters = a}) . _Default . _Coerce

instance AWSPager DescribeRouteTables where
  page rq rs
    | stop (rs ^. drtrrsNextToken) = Nothing
    | stop (rs ^. drtrrsRouteTables) = Nothing
    | otherwise =
      Just $ rq & drtNextToken .~ rs ^. drtrrsNextToken

instance AWSRequest DescribeRouteTables where
  type
    Rs DescribeRouteTables =
      DescribeRouteTablesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeRouteTablesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "routeTableSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRouteTables

instance NFData DescribeRouteTables

instance ToHeaders DescribeRouteTables where
  toHeaders = const mempty

instance ToPath DescribeRouteTables where
  toPath = const "/"

instance ToQuery DescribeRouteTables where
  toQuery DescribeRouteTables' {..} =
    mconcat
      [ "Action" =: ("DescribeRouteTables" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _drtNextToken,
        toQuery
          (toQueryList "RouteTableId" <$> _drtRouteTableIds),
        "DryRun" =: _drtDryRun,
        "MaxResults" =: _drtMaxResults,
        toQuery (toQueryList "Filter" <$> _drtFilters)
      ]

-- | Contains the output of DescribeRouteTables.
--
--
--
-- /See:/ 'describeRouteTablesResponse' smart constructor.
data DescribeRouteTablesResponse = DescribeRouteTablesResponse'
  { _drtrrsNextToken ::
      !(Maybe Text),
    _drtrrsRouteTables ::
      !( Maybe
           [RouteTable]
       ),
    _drtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRouteTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'drtrrsRouteTables' - Information about one or more route tables.
--
-- * 'drtrrsResponseStatus' - -- | The response status code.
describeRouteTablesResponse ::
  -- | 'drtrrsResponseStatus'
  Int ->
  DescribeRouteTablesResponse
describeRouteTablesResponse pResponseStatus_ =
  DescribeRouteTablesResponse'
    { _drtrrsNextToken =
        Nothing,
      _drtrrsRouteTables = Nothing,
      _drtrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
drtrrsNextToken :: Lens' DescribeRouteTablesResponse (Maybe Text)
drtrrsNextToken = lens _drtrrsNextToken (\s a -> s {_drtrrsNextToken = a})

-- | Information about one or more route tables.
drtrrsRouteTables :: Lens' DescribeRouteTablesResponse [RouteTable]
drtrrsRouteTables = lens _drtrrsRouteTables (\s a -> s {_drtrrsRouteTables = a}) . _Default . _Coerce

-- | -- | The response status code.
drtrrsResponseStatus :: Lens' DescribeRouteTablesResponse Int
drtrrsResponseStatus = lens _drtrrsResponseStatus (\s a -> s {_drtrrsResponseStatus = a})

instance NFData DescribeRouteTablesResponse

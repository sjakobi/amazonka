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
-- Module      : Network.AWS.EC2.DescribeVPCPeeringConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your VPC peering connections.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeVPCPeeringConnections
  ( -- * Creating a Request
    describeVPCPeeringConnections,
    DescribeVPCPeeringConnections,

    -- * Request Lenses
    dvpcVPCPeeringConnectionIds,
    dvpcNextToken,
    dvpcDryRun,
    dvpcMaxResults,
    dvpcFilters,

    -- * Destructuring the Response
    describeVPCPeeringConnectionsResponse,
    DescribeVPCPeeringConnectionsResponse,

    -- * Response Lenses
    dvpcrrsNextToken,
    dvpcrrsVPCPeeringConnections,
    dvpcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCPeeringConnections' smart constructor.
data DescribeVPCPeeringConnections = DescribeVPCPeeringConnections'
  { _dvpcVPCPeeringConnectionIds ::
      !( Maybe
           [Text]
       ),
    _dvpcNextToken ::
      !( Maybe
           Text
       ),
    _dvpcDryRun ::
      !( Maybe
           Bool
       ),
    _dvpcMaxResults ::
      !( Maybe
           Nat
       ),
    _dvpcFilters ::
      !( Maybe
           [Filter]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeVPCPeeringConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcVPCPeeringConnectionIds' - One or more VPC peering connection IDs. Default: Describes all your VPC peering connections.
--
-- * 'dvpcNextToken' - The token for the next page of results.
--
-- * 'dvpcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvpcMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dvpcFilters' - One or more filters.     * @accepter-vpc-info.cidr-block@ - The IPv4 CIDR block of the accepter VPC.     * @accepter-vpc-info.owner-id@ - The AWS account ID of the owner of the accepter VPC.     * @accepter-vpc-info.vpc-id@ - The ID of the accepter VPC.     * @expiration-time@ - The expiration date and time for the VPC peering connection.     * @requester-vpc-info.cidr-block@ - The IPv4 CIDR block of the requester's VPC.     * @requester-vpc-info.owner-id@ - The AWS account ID of the owner of the requester VPC.     * @requester-vpc-info.vpc-id@ - The ID of the requester VPC.     * @status-code@ - The status of the VPC peering connection (@pending-acceptance@ | @failed@ | @expired@ | @provisioning@ | @active@ | @deleting@ | @deleted@ | @rejected@ ).     * @status-message@ - A message that provides more information about the status of the VPC peering connection, if applicable.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-peering-connection-id@ - The ID of the VPC peering connection.
describeVPCPeeringConnections ::
  DescribeVPCPeeringConnections
describeVPCPeeringConnections =
  DescribeVPCPeeringConnections'
    { _dvpcVPCPeeringConnectionIds =
        Nothing,
      _dvpcNextToken = Nothing,
      _dvpcDryRun = Nothing,
      _dvpcMaxResults = Nothing,
      _dvpcFilters = Nothing
    }

-- | One or more VPC peering connection IDs. Default: Describes all your VPC peering connections.
dvpcVPCPeeringConnectionIds :: Lens' DescribeVPCPeeringConnections [Text]
dvpcVPCPeeringConnectionIds = lens _dvpcVPCPeeringConnectionIds (\s a -> s {_dvpcVPCPeeringConnectionIds = a}) . _Default . _Coerce

-- | The token for the next page of results.
dvpcNextToken :: Lens' DescribeVPCPeeringConnections (Maybe Text)
dvpcNextToken = lens _dvpcNextToken (\s a -> s {_dvpcNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvpcDryRun :: Lens' DescribeVPCPeeringConnections (Maybe Bool)
dvpcDryRun = lens _dvpcDryRun (\s a -> s {_dvpcDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dvpcMaxResults :: Lens' DescribeVPCPeeringConnections (Maybe Natural)
dvpcMaxResults = lens _dvpcMaxResults (\s a -> s {_dvpcMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @accepter-vpc-info.cidr-block@ - The IPv4 CIDR block of the accepter VPC.     * @accepter-vpc-info.owner-id@ - The AWS account ID of the owner of the accepter VPC.     * @accepter-vpc-info.vpc-id@ - The ID of the accepter VPC.     * @expiration-time@ - The expiration date and time for the VPC peering connection.     * @requester-vpc-info.cidr-block@ - The IPv4 CIDR block of the requester's VPC.     * @requester-vpc-info.owner-id@ - The AWS account ID of the owner of the requester VPC.     * @requester-vpc-info.vpc-id@ - The ID of the requester VPC.     * @status-code@ - The status of the VPC peering connection (@pending-acceptance@ | @failed@ | @expired@ | @provisioning@ | @active@ | @deleting@ | @deleted@ | @rejected@ ).     * @status-message@ - A message that provides more information about the status of the VPC peering connection, if applicable.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-peering-connection-id@ - The ID of the VPC peering connection.
dvpcFilters :: Lens' DescribeVPCPeeringConnections [Filter]
dvpcFilters = lens _dvpcFilters (\s a -> s {_dvpcFilters = a}) . _Default . _Coerce

instance AWSPager DescribeVPCPeeringConnections where
  page rq rs
    | stop (rs ^. dvpcrrsNextToken) = Nothing
    | stop (rs ^. dvpcrrsVPCPeeringConnections) = Nothing
    | otherwise =
      Just $ rq & dvpcNextToken .~ rs ^. dvpcrrsNextToken

instance AWSRequest DescribeVPCPeeringConnections where
  type
    Rs DescribeVPCPeeringConnections =
      DescribeVPCPeeringConnectionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCPeeringConnectionsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "vpcPeeringConnectionSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCPeeringConnections

instance NFData DescribeVPCPeeringConnections

instance ToHeaders DescribeVPCPeeringConnections where
  toHeaders = const mempty

instance ToPath DescribeVPCPeeringConnections where
  toPath = const "/"

instance ToQuery DescribeVPCPeeringConnections where
  toQuery DescribeVPCPeeringConnections' {..} =
    mconcat
      [ "Action"
          =: ("DescribeVpcPeeringConnections" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "VpcPeeringConnectionId"
              <$> _dvpcVPCPeeringConnectionIds
          ),
        "NextToken" =: _dvpcNextToken,
        "DryRun" =: _dvpcDryRun,
        "MaxResults" =: _dvpcMaxResults,
        toQuery (toQueryList "Filter" <$> _dvpcFilters)
      ]

-- | /See:/ 'describeVPCPeeringConnectionsResponse' smart constructor.
data DescribeVPCPeeringConnectionsResponse = DescribeVPCPeeringConnectionsResponse'
  { _dvpcrrsNextToken ::
      !( Maybe
           Text
       ),
    _dvpcrrsVPCPeeringConnections ::
      !( Maybe
           [VPCPeeringConnection]
       ),
    _dvpcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCPeeringConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dvpcrrsVPCPeeringConnections' - Information about the VPC peering connections.
--
-- * 'dvpcrrsResponseStatus' - -- | The response status code.
describeVPCPeeringConnectionsResponse ::
  -- | 'dvpcrrsResponseStatus'
  Int ->
  DescribeVPCPeeringConnectionsResponse
describeVPCPeeringConnectionsResponse
  pResponseStatus_ =
    DescribeVPCPeeringConnectionsResponse'
      { _dvpcrrsNextToken =
          Nothing,
        _dvpcrrsVPCPeeringConnections =
          Nothing,
        _dvpcrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dvpcrrsNextToken :: Lens' DescribeVPCPeeringConnectionsResponse (Maybe Text)
dvpcrrsNextToken = lens _dvpcrrsNextToken (\s a -> s {_dvpcrrsNextToken = a})

-- | Information about the VPC peering connections.
dvpcrrsVPCPeeringConnections :: Lens' DescribeVPCPeeringConnectionsResponse [VPCPeeringConnection]
dvpcrrsVPCPeeringConnections = lens _dvpcrrsVPCPeeringConnections (\s a -> s {_dvpcrrsVPCPeeringConnections = a}) . _Default . _Coerce

-- | -- | The response status code.
dvpcrrsResponseStatus :: Lens' DescribeVPCPeeringConnectionsResponse Int
dvpcrrsResponseStatus = lens _dvpcrrsResponseStatus (\s a -> s {_dvpcrrsResponseStatus = a})

instance NFData DescribeVPCPeeringConnectionsResponse

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
-- Module      : Network.AWS.EC2.DescribeVPCEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your VPC endpoints.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeVPCEndpoints
  ( -- * Creating a Request
    describeVPCEndpoints,
    DescribeVPCEndpoints,

    -- * Request Lenses
    dvpceNextToken,
    dvpceDryRun,
    dvpceMaxResults,
    dvpceFilters,
    dvpceVPCEndpointIds,

    -- * Destructuring the Response
    describeVPCEndpointsResponse,
    DescribeVPCEndpointsResponse,

    -- * Response Lenses
    dvpcerrsNextToken,
    dvpcerrsVPCEndpoints,
    dvpcerrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeVpcEndpoints.
--
--
--
-- /See:/ 'describeVPCEndpoints' smart constructor.
data DescribeVPCEndpoints = DescribeVPCEndpoints'
  { _dvpceNextToken ::
      !(Maybe Text),
    _dvpceDryRun :: !(Maybe Bool),
    _dvpceMaxResults ::
      !(Maybe Int),
    _dvpceFilters ::
      !(Maybe [Filter]),
    _dvpceVPCEndpointIds ::
      !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVPCEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpceNextToken' - The token for the next set of items to return. (You received this token from a prior call.)
--
-- * 'dvpceDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvpceMaxResults' - The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results. Constraint: If the value is greater than 1,000, we return only 1,000 items.
--
-- * 'dvpceFilters' - One or more filters.     * @service-name@ - The name of the service.     * @vpc-id@ - The ID of the VPC in which the endpoint resides.     * @vpc-endpoint-id@ - The ID of the endpoint.     * @vpc-endpoint-state@ - The state of the endpoint (@pendingAcceptance@ | @pending@ | @available@ | @deleting@ | @deleted@ | @rejected@ | @failed@ ).     * @vpc-endpoint-type@ - The type of VPC endpoint (@Interface@ | @Gateway@ | @GatewayLoadBalancer@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
--
-- * 'dvpceVPCEndpointIds' - One or more endpoint IDs.
describeVPCEndpoints ::
  DescribeVPCEndpoints
describeVPCEndpoints =
  DescribeVPCEndpoints'
    { _dvpceNextToken = Nothing,
      _dvpceDryRun = Nothing,
      _dvpceMaxResults = Nothing,
      _dvpceFilters = Nothing,
      _dvpceVPCEndpointIds = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a prior call.)
dvpceNextToken :: Lens' DescribeVPCEndpoints (Maybe Text)
dvpceNextToken = lens _dvpceNextToken (\s a -> s {_dvpceNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvpceDryRun :: Lens' DescribeVPCEndpoints (Maybe Bool)
dvpceDryRun = lens _dvpceDryRun (\s a -> s {_dvpceDryRun = a})

-- | The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results. Constraint: If the value is greater than 1,000, we return only 1,000 items.
dvpceMaxResults :: Lens' DescribeVPCEndpoints (Maybe Int)
dvpceMaxResults = lens _dvpceMaxResults (\s a -> s {_dvpceMaxResults = a})

-- | One or more filters.     * @service-name@ - The name of the service.     * @vpc-id@ - The ID of the VPC in which the endpoint resides.     * @vpc-endpoint-id@ - The ID of the endpoint.     * @vpc-endpoint-state@ - The state of the endpoint (@pendingAcceptance@ | @pending@ | @available@ | @deleting@ | @deleted@ | @rejected@ | @failed@ ).     * @vpc-endpoint-type@ - The type of VPC endpoint (@Interface@ | @Gateway@ | @GatewayLoadBalancer@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dvpceFilters :: Lens' DescribeVPCEndpoints [Filter]
dvpceFilters = lens _dvpceFilters (\s a -> s {_dvpceFilters = a}) . _Default . _Coerce

-- | One or more endpoint IDs.
dvpceVPCEndpointIds :: Lens' DescribeVPCEndpoints [Text]
dvpceVPCEndpointIds = lens _dvpceVPCEndpointIds (\s a -> s {_dvpceVPCEndpointIds = a}) . _Default . _Coerce

instance AWSPager DescribeVPCEndpoints where
  page rq rs
    | stop (rs ^. dvpcerrsNextToken) = Nothing
    | stop (rs ^. dvpcerrsVPCEndpoints) = Nothing
    | otherwise =
      Just $ rq & dvpceNextToken .~ rs ^. dvpcerrsNextToken

instance AWSRequest DescribeVPCEndpoints where
  type
    Rs DescribeVPCEndpoints =
      DescribeVPCEndpointsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCEndpointsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "vpcEndpointSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCEndpoints

instance NFData DescribeVPCEndpoints

instance ToHeaders DescribeVPCEndpoints where
  toHeaders = const mempty

instance ToPath DescribeVPCEndpoints where
  toPath = const "/"

instance ToQuery DescribeVPCEndpoints where
  toQuery DescribeVPCEndpoints' {..} =
    mconcat
      [ "Action" =: ("DescribeVpcEndpoints" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dvpceNextToken,
        "DryRun" =: _dvpceDryRun,
        "MaxResults" =: _dvpceMaxResults,
        toQuery (toQueryList "Filter" <$> _dvpceFilters),
        toQuery
          ( toQueryList "VpcEndpointId"
              <$> _dvpceVPCEndpointIds
          )
      ]

-- | Contains the output of DescribeVpcEndpoints.
--
--
--
-- /See:/ 'describeVPCEndpointsResponse' smart constructor.
data DescribeVPCEndpointsResponse = DescribeVPCEndpointsResponse'
  { _dvpcerrsNextToken ::
      !(Maybe Text),
    _dvpcerrsVPCEndpoints ::
      !( Maybe
           [VPCEndpoint]
       ),
    _dvpcerrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpcerrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dvpcerrsVPCEndpoints' - Information about the endpoints.
--
-- * 'dvpcerrsResponseStatus' - -- | The response status code.
describeVPCEndpointsResponse ::
  -- | 'dvpcerrsResponseStatus'
  Int ->
  DescribeVPCEndpointsResponse
describeVPCEndpointsResponse pResponseStatus_ =
  DescribeVPCEndpointsResponse'
    { _dvpcerrsNextToken =
        Nothing,
      _dvpcerrsVPCEndpoints = Nothing,
      _dvpcerrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dvpcerrsNextToken :: Lens' DescribeVPCEndpointsResponse (Maybe Text)
dvpcerrsNextToken = lens _dvpcerrsNextToken (\s a -> s {_dvpcerrsNextToken = a})

-- | Information about the endpoints.
dvpcerrsVPCEndpoints :: Lens' DescribeVPCEndpointsResponse [VPCEndpoint]
dvpcerrsVPCEndpoints = lens _dvpcerrsVPCEndpoints (\s a -> s {_dvpcerrsVPCEndpoints = a}) . _Default . _Coerce

-- | -- | The response status code.
dvpcerrsResponseStatus :: Lens' DescribeVPCEndpointsResponse Int
dvpcerrsResponseStatus = lens _dvpcerrsResponseStatus (\s a -> s {_dvpcerrsResponseStatus = a})

instance NFData DescribeVPCEndpointsResponse

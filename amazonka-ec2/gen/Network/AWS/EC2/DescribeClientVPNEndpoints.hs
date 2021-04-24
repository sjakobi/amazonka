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
-- Module      : Network.AWS.EC2.DescribeClientVPNEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Client VPN endpoints in the account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeClientVPNEndpoints
  ( -- * Creating a Request
    describeClientVPNEndpoints,
    DescribeClientVPNEndpoints,

    -- * Request Lenses
    dcveNextToken,
    dcveDryRun,
    dcveMaxResults,
    dcveClientVPNEndpointIds,
    dcveFilters,

    -- * Destructuring the Response
    describeClientVPNEndpointsResponse,
    DescribeClientVPNEndpointsResponse,

    -- * Response Lenses
    dcverrsNextToken,
    dcverrsClientVPNEndpoints,
    dcverrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClientVPNEndpoints' smart constructor.
data DescribeClientVPNEndpoints = DescribeClientVPNEndpoints'
  { _dcveNextToken ::
      !(Maybe Text),
    _dcveDryRun ::
      !(Maybe Bool),
    _dcveMaxResults ::
      !(Maybe Nat),
    _dcveClientVPNEndpointIds ::
      !(Maybe [Text]),
    _dcveFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeClientVPNEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcveNextToken' - The token to retrieve the next page of results.
--
-- * 'dcveDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcveMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
--
-- * 'dcveClientVPNEndpointIds' - The ID of the Client VPN endpoint.
--
-- * 'dcveFilters' - One or more filters. Filter names and values are case-sensitive.     * @endpoint-id@ - The ID of the Client VPN endpoint.     * @transport-protocol@ - The transport protocol (@tcp@ | @udp@ ).
describeClientVPNEndpoints ::
  DescribeClientVPNEndpoints
describeClientVPNEndpoints =
  DescribeClientVPNEndpoints'
    { _dcveNextToken =
        Nothing,
      _dcveDryRun = Nothing,
      _dcveMaxResults = Nothing,
      _dcveClientVPNEndpointIds = Nothing,
      _dcveFilters = Nothing
    }

-- | The token to retrieve the next page of results.
dcveNextToken :: Lens' DescribeClientVPNEndpoints (Maybe Text)
dcveNextToken = lens _dcveNextToken (\s a -> s {_dcveNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcveDryRun :: Lens' DescribeClientVPNEndpoints (Maybe Bool)
dcveDryRun = lens _dcveDryRun (\s a -> s {_dcveDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
dcveMaxResults :: Lens' DescribeClientVPNEndpoints (Maybe Natural)
dcveMaxResults = lens _dcveMaxResults (\s a -> s {_dcveMaxResults = a}) . mapping _Nat

-- | The ID of the Client VPN endpoint.
dcveClientVPNEndpointIds :: Lens' DescribeClientVPNEndpoints [Text]
dcveClientVPNEndpointIds = lens _dcveClientVPNEndpointIds (\s a -> s {_dcveClientVPNEndpointIds = a}) . _Default . _Coerce

-- | One or more filters. Filter names and values are case-sensitive.     * @endpoint-id@ - The ID of the Client VPN endpoint.     * @transport-protocol@ - The transport protocol (@tcp@ | @udp@ ).
dcveFilters :: Lens' DescribeClientVPNEndpoints [Filter]
dcveFilters = lens _dcveFilters (\s a -> s {_dcveFilters = a}) . _Default . _Coerce

instance AWSPager DescribeClientVPNEndpoints where
  page rq rs
    | stop (rs ^. dcverrsNextToken) = Nothing
    | stop (rs ^. dcverrsClientVPNEndpoints) = Nothing
    | otherwise =
      Just $ rq & dcveNextToken .~ rs ^. dcverrsNextToken

instance AWSRequest DescribeClientVPNEndpoints where
  type
    Rs DescribeClientVPNEndpoints =
      DescribeClientVPNEndpointsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeClientVPNEndpointsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "clientVpnEndpoint" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClientVPNEndpoints

instance NFData DescribeClientVPNEndpoints

instance ToHeaders DescribeClientVPNEndpoints where
  toHeaders = const mempty

instance ToPath DescribeClientVPNEndpoints where
  toPath = const "/"

instance ToQuery DescribeClientVPNEndpoints where
  toQuery DescribeClientVPNEndpoints' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClientVpnEndpoints" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dcveNextToken,
        "DryRun" =: _dcveDryRun,
        "MaxResults" =: _dcveMaxResults,
        toQuery
          ( toQueryList "ClientVpnEndpointId"
              <$> _dcveClientVPNEndpointIds
          ),
        toQuery (toQueryList "Filter" <$> _dcveFilters)
      ]

-- | /See:/ 'describeClientVPNEndpointsResponse' smart constructor.
data DescribeClientVPNEndpointsResponse = DescribeClientVPNEndpointsResponse'
  { _dcverrsNextToken ::
      !( Maybe
           Text
       ),
    _dcverrsClientVPNEndpoints ::
      !( Maybe
           [ClientVPNEndpoint]
       ),
    _dcverrsResponseStatus ::
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

-- | Creates a value of 'DescribeClientVPNEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcverrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcverrsClientVPNEndpoints' - Information about the Client VPN endpoints.
--
-- * 'dcverrsResponseStatus' - -- | The response status code.
describeClientVPNEndpointsResponse ::
  -- | 'dcverrsResponseStatus'
  Int ->
  DescribeClientVPNEndpointsResponse
describeClientVPNEndpointsResponse pResponseStatus_ =
  DescribeClientVPNEndpointsResponse'
    { _dcverrsNextToken =
        Nothing,
      _dcverrsClientVPNEndpoints = Nothing,
      _dcverrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcverrsNextToken :: Lens' DescribeClientVPNEndpointsResponse (Maybe Text)
dcverrsNextToken = lens _dcverrsNextToken (\s a -> s {_dcverrsNextToken = a})

-- | Information about the Client VPN endpoints.
dcverrsClientVPNEndpoints :: Lens' DescribeClientVPNEndpointsResponse [ClientVPNEndpoint]
dcverrsClientVPNEndpoints = lens _dcverrsClientVPNEndpoints (\s a -> s {_dcverrsClientVPNEndpoints = a}) . _Default . _Coerce

-- | -- | The response status code.
dcverrsResponseStatus :: Lens' DescribeClientVPNEndpointsResponse Int
dcverrsResponseStatus = lens _dcverrsResponseStatus (\s a -> s {_dcverrsResponseStatus = a})

instance NFData DescribeClientVPNEndpointsResponse

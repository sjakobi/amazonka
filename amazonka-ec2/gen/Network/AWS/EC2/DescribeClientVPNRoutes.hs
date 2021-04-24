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
-- Module      : Network.AWS.EC2.DescribeClientVPNRoutes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the routes for the specified Client VPN endpoint.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeClientVPNRoutes
  ( -- * Creating a Request
    describeClientVPNRoutes,
    DescribeClientVPNRoutes,

    -- * Request Lenses
    dcvrNextToken,
    dcvrDryRun,
    dcvrMaxResults,
    dcvrFilters,
    dcvrClientVPNEndpointId,

    -- * Destructuring the Response
    describeClientVPNRoutesResponse,
    DescribeClientVPNRoutesResponse,

    -- * Response Lenses
    dcvrrrsNextToken,
    dcvrrrsRoutes,
    dcvrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClientVPNRoutes' smart constructor.
data DescribeClientVPNRoutes = DescribeClientVPNRoutes'
  { _dcvrNextToken ::
      !(Maybe Text),
    _dcvrDryRun ::
      !(Maybe Bool),
    _dcvrMaxResults ::
      !(Maybe Nat),
    _dcvrFilters ::
      !(Maybe [Filter]),
    _dcvrClientVPNEndpointId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeClientVPNRoutes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvrNextToken' - The token to retrieve the next page of results.
--
-- * 'dcvrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvrMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
--
-- * 'dcvrFilters' - One or more filters. Filter names and values are case-sensitive.     * @destination-cidr@ - The CIDR of the route destination.     * @origin@ - How the route was associated with the Client VPN endpoint (@associate@ | @add-route@ ).     * @target-subnet@ - The ID of the subnet through which traffic is routed.
--
-- * 'dcvrClientVPNEndpointId' - The ID of the Client VPN endpoint.
describeClientVPNRoutes ::
  -- | 'dcvrClientVPNEndpointId'
  Text ->
  DescribeClientVPNRoutes
describeClientVPNRoutes pClientVPNEndpointId_ =
  DescribeClientVPNRoutes'
    { _dcvrNextToken = Nothing,
      _dcvrDryRun = Nothing,
      _dcvrMaxResults = Nothing,
      _dcvrFilters = Nothing,
      _dcvrClientVPNEndpointId = pClientVPNEndpointId_
    }

-- | The token to retrieve the next page of results.
dcvrNextToken :: Lens' DescribeClientVPNRoutes (Maybe Text)
dcvrNextToken = lens _dcvrNextToken (\s a -> s {_dcvrNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvrDryRun :: Lens' DescribeClientVPNRoutes (Maybe Bool)
dcvrDryRun = lens _dcvrDryRun (\s a -> s {_dcvrDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
dcvrMaxResults :: Lens' DescribeClientVPNRoutes (Maybe Natural)
dcvrMaxResults = lens _dcvrMaxResults (\s a -> s {_dcvrMaxResults = a}) . mapping _Nat

-- | One or more filters. Filter names and values are case-sensitive.     * @destination-cidr@ - The CIDR of the route destination.     * @origin@ - How the route was associated with the Client VPN endpoint (@associate@ | @add-route@ ).     * @target-subnet@ - The ID of the subnet through which traffic is routed.
dcvrFilters :: Lens' DescribeClientVPNRoutes [Filter]
dcvrFilters = lens _dcvrFilters (\s a -> s {_dcvrFilters = a}) . _Default . _Coerce

-- | The ID of the Client VPN endpoint.
dcvrClientVPNEndpointId :: Lens' DescribeClientVPNRoutes Text
dcvrClientVPNEndpointId = lens _dcvrClientVPNEndpointId (\s a -> s {_dcvrClientVPNEndpointId = a})

instance AWSPager DescribeClientVPNRoutes where
  page rq rs
    | stop (rs ^. dcvrrrsNextToken) = Nothing
    | stop (rs ^. dcvrrrsRoutes) = Nothing
    | otherwise =
      Just $ rq & dcvrNextToken .~ rs ^. dcvrrrsNextToken

instance AWSRequest DescribeClientVPNRoutes where
  type
    Rs DescribeClientVPNRoutes =
      DescribeClientVPNRoutesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeClientVPNRoutesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "routes" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClientVPNRoutes

instance NFData DescribeClientVPNRoutes

instance ToHeaders DescribeClientVPNRoutes where
  toHeaders = const mempty

instance ToPath DescribeClientVPNRoutes where
  toPath = const "/"

instance ToQuery DescribeClientVPNRoutes where
  toQuery DescribeClientVPNRoutes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClientVpnRoutes" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dcvrNextToken,
        "DryRun" =: _dcvrDryRun,
        "MaxResults" =: _dcvrMaxResults,
        toQuery (toQueryList "Filter" <$> _dcvrFilters),
        "ClientVpnEndpointId" =: _dcvrClientVPNEndpointId
      ]

-- | /See:/ 'describeClientVPNRoutesResponse' smart constructor.
data DescribeClientVPNRoutesResponse = DescribeClientVPNRoutesResponse'
  { _dcvrrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcvrrrsRoutes ::
      !( Maybe
           [ClientVPNRoute]
       ),
    _dcvrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClientVPNRoutesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvrrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcvrrrsRoutes' - Information about the Client VPN endpoint routes.
--
-- * 'dcvrrrsResponseStatus' - -- | The response status code.
describeClientVPNRoutesResponse ::
  -- | 'dcvrrrsResponseStatus'
  Int ->
  DescribeClientVPNRoutesResponse
describeClientVPNRoutesResponse pResponseStatus_ =
  DescribeClientVPNRoutesResponse'
    { _dcvrrrsNextToken =
        Nothing,
      _dcvrrrsRoutes = Nothing,
      _dcvrrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcvrrrsNextToken :: Lens' DescribeClientVPNRoutesResponse (Maybe Text)
dcvrrrsNextToken = lens _dcvrrrsNextToken (\s a -> s {_dcvrrrsNextToken = a})

-- | Information about the Client VPN endpoint routes.
dcvrrrsRoutes :: Lens' DescribeClientVPNRoutesResponse [ClientVPNRoute]
dcvrrrsRoutes = lens _dcvrrrsRoutes (\s a -> s {_dcvrrrsRoutes = a}) . _Default . _Coerce

-- | -- | The response status code.
dcvrrrsResponseStatus :: Lens' DescribeClientVPNRoutesResponse Int
dcvrrrsResponseStatus = lens _dcvrrrsResponseStatus (\s a -> s {_dcvrrrsResponseStatus = a})

instance NFData DescribeClientVPNRoutesResponse

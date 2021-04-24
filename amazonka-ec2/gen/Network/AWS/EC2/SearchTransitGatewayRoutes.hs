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
-- Module      : Network.AWS.EC2.SearchTransitGatewayRoutes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for routes in the specified transit gateway route table.
module Network.AWS.EC2.SearchTransitGatewayRoutes
  ( -- * Creating a Request
    searchTransitGatewayRoutes,
    SearchTransitGatewayRoutes,

    -- * Request Lenses
    stgrDryRun,
    stgrMaxResults,
    stgrTransitGatewayRouteTableId,
    stgrFilters,

    -- * Destructuring the Response
    searchTransitGatewayRoutesResponse,
    SearchTransitGatewayRoutesResponse,

    -- * Response Lenses
    stgrrrsRoutes,
    stgrrrsAdditionalRoutesAvailable,
    stgrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchTransitGatewayRoutes' smart constructor.
data SearchTransitGatewayRoutes = SearchTransitGatewayRoutes'
  { _stgrDryRun ::
      !(Maybe Bool),
    _stgrMaxResults ::
      !(Maybe Nat),
    _stgrTransitGatewayRouteTableId ::
      !Text,
    _stgrFilters ::
      ![Filter]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SearchTransitGatewayRoutes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stgrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'stgrMaxResults' - The maximum number of routes to return.
--
-- * 'stgrTransitGatewayRouteTableId' - The ID of the transit gateway route table.
--
-- * 'stgrFilters' - One or more filters. The possible values are:     * @attachment.transit-gateway-attachment-id@ - The id of the transit gateway attachment.     * @attachment.resource-id@ - The resource id of the transit gateway attachment.     * @attachment.resource-type@ - The attachment resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @prefix-list-id@ - The ID of the prefix list.     * @route-search.exact-match@ - The exact match of the specified filter.     * @route-search.longest-prefix-match@ - The longest prefix that matches the route.     * @route-search.subnet-of-match@ - The routes with a subnet that match the specified CIDR filter.     * @route-search.supernet-of-match@ - The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.     * @state@ - The state of the route (@active@ | @blackhole@ ).     * @type@ - The type of route (@propagated@ | @static@ ).
searchTransitGatewayRoutes ::
  -- | 'stgrTransitGatewayRouteTableId'
  Text ->
  SearchTransitGatewayRoutes
searchTransitGatewayRoutes
  pTransitGatewayRouteTableId_ =
    SearchTransitGatewayRoutes'
      { _stgrDryRun = Nothing,
        _stgrMaxResults = Nothing,
        _stgrTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_,
        _stgrFilters = mempty
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
stgrDryRun :: Lens' SearchTransitGatewayRoutes (Maybe Bool)
stgrDryRun = lens _stgrDryRun (\s a -> s {_stgrDryRun = a})

-- | The maximum number of routes to return.
stgrMaxResults :: Lens' SearchTransitGatewayRoutes (Maybe Natural)
stgrMaxResults = lens _stgrMaxResults (\s a -> s {_stgrMaxResults = a}) . mapping _Nat

-- | The ID of the transit gateway route table.
stgrTransitGatewayRouteTableId :: Lens' SearchTransitGatewayRoutes Text
stgrTransitGatewayRouteTableId = lens _stgrTransitGatewayRouteTableId (\s a -> s {_stgrTransitGatewayRouteTableId = a})

-- | One or more filters. The possible values are:     * @attachment.transit-gateway-attachment-id@ - The id of the transit gateway attachment.     * @attachment.resource-id@ - The resource id of the transit gateway attachment.     * @attachment.resource-type@ - The attachment resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @prefix-list-id@ - The ID of the prefix list.     * @route-search.exact-match@ - The exact match of the specified filter.     * @route-search.longest-prefix-match@ - The longest prefix that matches the route.     * @route-search.subnet-of-match@ - The routes with a subnet that match the specified CIDR filter.     * @route-search.supernet-of-match@ - The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.     * @state@ - The state of the route (@active@ | @blackhole@ ).     * @type@ - The type of route (@propagated@ | @static@ ).
stgrFilters :: Lens' SearchTransitGatewayRoutes [Filter]
stgrFilters = lens _stgrFilters (\s a -> s {_stgrFilters = a}) . _Coerce

instance AWSRequest SearchTransitGatewayRoutes where
  type
    Rs SearchTransitGatewayRoutes =
      SearchTransitGatewayRoutesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          SearchTransitGatewayRoutesResponse'
            <$> ( x .@? "routeSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "additionalRoutesAvailable")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchTransitGatewayRoutes

instance NFData SearchTransitGatewayRoutes

instance ToHeaders SearchTransitGatewayRoutes where
  toHeaders = const mempty

instance ToPath SearchTransitGatewayRoutes where
  toPath = const "/"

instance ToQuery SearchTransitGatewayRoutes where
  toQuery SearchTransitGatewayRoutes' {..} =
    mconcat
      [ "Action"
          =: ("SearchTransitGatewayRoutes" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _stgrDryRun,
        "MaxResults" =: _stgrMaxResults,
        "TransitGatewayRouteTableId"
          =: _stgrTransitGatewayRouteTableId,
        toQueryList "Filter" _stgrFilters
      ]

-- | /See:/ 'searchTransitGatewayRoutesResponse' smart constructor.
data SearchTransitGatewayRoutesResponse = SearchTransitGatewayRoutesResponse'
  { _stgrrrsRoutes ::
      !( Maybe
           [TransitGatewayRoute]
       ),
    _stgrrrsAdditionalRoutesAvailable ::
      !( Maybe
           Bool
       ),
    _stgrrrsResponseStatus ::
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

-- | Creates a value of 'SearchTransitGatewayRoutesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stgrrrsRoutes' - Information about the routes.
--
-- * 'stgrrrsAdditionalRoutesAvailable' - Indicates whether there are additional routes available.
--
-- * 'stgrrrsResponseStatus' - -- | The response status code.
searchTransitGatewayRoutesResponse ::
  -- | 'stgrrrsResponseStatus'
  Int ->
  SearchTransitGatewayRoutesResponse
searchTransitGatewayRoutesResponse pResponseStatus_ =
  SearchTransitGatewayRoutesResponse'
    { _stgrrrsRoutes =
        Nothing,
      _stgrrrsAdditionalRoutesAvailable =
        Nothing,
      _stgrrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the routes.
stgrrrsRoutes :: Lens' SearchTransitGatewayRoutesResponse [TransitGatewayRoute]
stgrrrsRoutes = lens _stgrrrsRoutes (\s a -> s {_stgrrrsRoutes = a}) . _Default . _Coerce

-- | Indicates whether there are additional routes available.
stgrrrsAdditionalRoutesAvailable :: Lens' SearchTransitGatewayRoutesResponse (Maybe Bool)
stgrrrsAdditionalRoutesAvailable = lens _stgrrrsAdditionalRoutesAvailable (\s a -> s {_stgrrrsAdditionalRoutesAvailable = a})

-- | -- | The response status code.
stgrrrsResponseStatus :: Lens' SearchTransitGatewayRoutesResponse Int
stgrrrsResponseStatus = lens _stgrrrsResponseStatus (\s a -> s {_stgrrrsResponseStatus = a})

instance NFData SearchTransitGatewayRoutesResponse

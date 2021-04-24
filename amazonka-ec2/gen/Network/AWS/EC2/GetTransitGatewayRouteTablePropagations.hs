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
-- Module      : Network.AWS.EC2.GetTransitGatewayRouteTablePropagations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the route table propagations for the specified transit gateway route table.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.GetTransitGatewayRouteTablePropagations
  ( -- * Creating a Request
    getTransitGatewayRouteTablePropagations,
    GetTransitGatewayRouteTablePropagations,

    -- * Request Lenses
    gtgrtpNextToken,
    gtgrtpDryRun,
    gtgrtpMaxResults,
    gtgrtpFilters,
    gtgrtpTransitGatewayRouteTableId,

    -- * Destructuring the Response
    getTransitGatewayRouteTablePropagationsResponse,
    GetTransitGatewayRouteTablePropagationsResponse,

    -- * Response Lenses
    gtgrtprrsNextToken,
    gtgrtprrsTransitGatewayRouteTablePropagations,
    gtgrtprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTransitGatewayRouteTablePropagations' smart constructor.
data GetTransitGatewayRouteTablePropagations = GetTransitGatewayRouteTablePropagations'
  { _gtgrtpNextToken ::
      !( Maybe
           Text
       ),
    _gtgrtpDryRun ::
      !( Maybe
           Bool
       ),
    _gtgrtpMaxResults ::
      !( Maybe
           Nat
       ),
    _gtgrtpFilters ::
      !( Maybe
           [Filter]
       ),
    _gtgrtpTransitGatewayRouteTableId ::
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

-- | Creates a value of 'GetTransitGatewayRouteTablePropagations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgrtpNextToken' - The token for the next page of results.
--
-- * 'gtgrtpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gtgrtpMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gtgrtpFilters' - One or more filters. The possible values are:     * @resource-id@ - The ID of the resource.     * @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.
--
-- * 'gtgrtpTransitGatewayRouteTableId' - The ID of the transit gateway route table.
getTransitGatewayRouteTablePropagations ::
  -- | 'gtgrtpTransitGatewayRouteTableId'
  Text ->
  GetTransitGatewayRouteTablePropagations
getTransitGatewayRouteTablePropagations
  pTransitGatewayRouteTableId_ =
    GetTransitGatewayRouteTablePropagations'
      { _gtgrtpNextToken =
          Nothing,
        _gtgrtpDryRun = Nothing,
        _gtgrtpMaxResults = Nothing,
        _gtgrtpFilters = Nothing,
        _gtgrtpTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | The token for the next page of results.
gtgrtpNextToken :: Lens' GetTransitGatewayRouteTablePropagations (Maybe Text)
gtgrtpNextToken = lens _gtgrtpNextToken (\s a -> s {_gtgrtpNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gtgrtpDryRun :: Lens' GetTransitGatewayRouteTablePropagations (Maybe Bool)
gtgrtpDryRun = lens _gtgrtpDryRun (\s a -> s {_gtgrtpDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gtgrtpMaxResults :: Lens' GetTransitGatewayRouteTablePropagations (Maybe Natural)
gtgrtpMaxResults = lens _gtgrtpMaxResults (\s a -> s {_gtgrtpMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @resource-id@ - The ID of the resource.     * @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.
gtgrtpFilters :: Lens' GetTransitGatewayRouteTablePropagations [Filter]
gtgrtpFilters = lens _gtgrtpFilters (\s a -> s {_gtgrtpFilters = a}) . _Default . _Coerce

-- | The ID of the transit gateway route table.
gtgrtpTransitGatewayRouteTableId :: Lens' GetTransitGatewayRouteTablePropagations Text
gtgrtpTransitGatewayRouteTableId = lens _gtgrtpTransitGatewayRouteTableId (\s a -> s {_gtgrtpTransitGatewayRouteTableId = a})

instance
  AWSPager
    GetTransitGatewayRouteTablePropagations
  where
  page rq rs
    | stop (rs ^. gtgrtprrsNextToken) = Nothing
    | stop
        (rs ^. gtgrtprrsTransitGatewayRouteTablePropagations) =
      Nothing
    | otherwise =
      Just $
        rq
          & gtgrtpNextToken .~ rs ^. gtgrtprrsNextToken

instance
  AWSRequest
    GetTransitGatewayRouteTablePropagations
  where
  type
    Rs GetTransitGatewayRouteTablePropagations =
      GetTransitGatewayRouteTablePropagationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetTransitGatewayRouteTablePropagationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayRouteTablePropagations"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetTransitGatewayRouteTablePropagations

instance
  NFData
    GetTransitGatewayRouteTablePropagations

instance
  ToHeaders
    GetTransitGatewayRouteTablePropagations
  where
  toHeaders = const mempty

instance
  ToPath
    GetTransitGatewayRouteTablePropagations
  where
  toPath = const "/"

instance
  ToQuery
    GetTransitGatewayRouteTablePropagations
  where
  toQuery GetTransitGatewayRouteTablePropagations' {..} =
    mconcat
      [ "Action"
          =: ( "GetTransitGatewayRouteTablePropagations" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gtgrtpNextToken,
        "DryRun" =: _gtgrtpDryRun,
        "MaxResults" =: _gtgrtpMaxResults,
        toQuery (toQueryList "Filter" <$> _gtgrtpFilters),
        "TransitGatewayRouteTableId"
          =: _gtgrtpTransitGatewayRouteTableId
      ]

-- | /See:/ 'getTransitGatewayRouteTablePropagationsResponse' smart constructor.
data GetTransitGatewayRouteTablePropagationsResponse = GetTransitGatewayRouteTablePropagationsResponse'
  { _gtgrtprrsNextToken ::
      !( Maybe
           Text
       ),
    _gtgrtprrsTransitGatewayRouteTablePropagations ::
      !( Maybe
           [TransitGatewayRouteTablePropagation]
       ),
    _gtgrtprrsResponseStatus ::
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

-- | Creates a value of 'GetTransitGatewayRouteTablePropagationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgrtprrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gtgrtprrsTransitGatewayRouteTablePropagations' - Information about the route table propagations.
--
-- * 'gtgrtprrsResponseStatus' - -- | The response status code.
getTransitGatewayRouteTablePropagationsResponse ::
  -- | 'gtgrtprrsResponseStatus'
  Int ->
  GetTransitGatewayRouteTablePropagationsResponse
getTransitGatewayRouteTablePropagationsResponse
  pResponseStatus_ =
    GetTransitGatewayRouteTablePropagationsResponse'
      { _gtgrtprrsNextToken =
          Nothing,
        _gtgrtprrsTransitGatewayRouteTablePropagations =
          Nothing,
        _gtgrtprrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gtgrtprrsNextToken :: Lens' GetTransitGatewayRouteTablePropagationsResponse (Maybe Text)
gtgrtprrsNextToken = lens _gtgrtprrsNextToken (\s a -> s {_gtgrtprrsNextToken = a})

-- | Information about the route table propagations.
gtgrtprrsTransitGatewayRouteTablePropagations :: Lens' GetTransitGatewayRouteTablePropagationsResponse [TransitGatewayRouteTablePropagation]
gtgrtprrsTransitGatewayRouteTablePropagations = lens _gtgrtprrsTransitGatewayRouteTablePropagations (\s a -> s {_gtgrtprrsTransitGatewayRouteTablePropagations = a}) . _Default . _Coerce

-- | -- | The response status code.
gtgrtprrsResponseStatus :: Lens' GetTransitGatewayRouteTablePropagationsResponse Int
gtgrtprrsResponseStatus = lens _gtgrtprrsResponseStatus (\s a -> s {_gtgrtprrsResponseStatus = a})

instance
  NFData
    GetTransitGatewayRouteTablePropagationsResponse

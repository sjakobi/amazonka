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
-- Module      : Network.AWS.EC2.GetTransitGatewayRouteTableAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the associations for the specified transit gateway route table.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.GetTransitGatewayRouteTableAssociations
  ( -- * Creating a Request
    getTransitGatewayRouteTableAssociations,
    GetTransitGatewayRouteTableAssociations,

    -- * Request Lenses
    gtgrtaNextToken,
    gtgrtaDryRun,
    gtgrtaMaxResults,
    gtgrtaFilters,
    gtgrtaTransitGatewayRouteTableId,

    -- * Destructuring the Response
    getTransitGatewayRouteTableAssociationsResponse,
    GetTransitGatewayRouteTableAssociationsResponse,

    -- * Response Lenses
    gtgrtarrsNextToken,
    gtgrtarrsAssociations,
    gtgrtarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTransitGatewayRouteTableAssociations' smart constructor.
data GetTransitGatewayRouteTableAssociations = GetTransitGatewayRouteTableAssociations'
  { _gtgrtaNextToken ::
      !( Maybe
           Text
       ),
    _gtgrtaDryRun ::
      !( Maybe
           Bool
       ),
    _gtgrtaMaxResults ::
      !( Maybe
           Nat
       ),
    _gtgrtaFilters ::
      !( Maybe
           [Filter]
       ),
    _gtgrtaTransitGatewayRouteTableId ::
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

-- | Creates a value of 'GetTransitGatewayRouteTableAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgrtaNextToken' - The token for the next page of results.
--
-- * 'gtgrtaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gtgrtaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gtgrtaFilters' - One or more filters. The possible values are:     * @resource-id@ - The ID of the resource.     * @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.
--
-- * 'gtgrtaTransitGatewayRouteTableId' - The ID of the transit gateway route table.
getTransitGatewayRouteTableAssociations ::
  -- | 'gtgrtaTransitGatewayRouteTableId'
  Text ->
  GetTransitGatewayRouteTableAssociations
getTransitGatewayRouteTableAssociations
  pTransitGatewayRouteTableId_ =
    GetTransitGatewayRouteTableAssociations'
      { _gtgrtaNextToken =
          Nothing,
        _gtgrtaDryRun = Nothing,
        _gtgrtaMaxResults = Nothing,
        _gtgrtaFilters = Nothing,
        _gtgrtaTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | The token for the next page of results.
gtgrtaNextToken :: Lens' GetTransitGatewayRouteTableAssociations (Maybe Text)
gtgrtaNextToken = lens _gtgrtaNextToken (\s a -> s {_gtgrtaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gtgrtaDryRun :: Lens' GetTransitGatewayRouteTableAssociations (Maybe Bool)
gtgrtaDryRun = lens _gtgrtaDryRun (\s a -> s {_gtgrtaDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gtgrtaMaxResults :: Lens' GetTransitGatewayRouteTableAssociations (Maybe Natural)
gtgrtaMaxResults = lens _gtgrtaMaxResults (\s a -> s {_gtgrtaMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @resource-id@ - The ID of the resource.     * @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.
gtgrtaFilters :: Lens' GetTransitGatewayRouteTableAssociations [Filter]
gtgrtaFilters = lens _gtgrtaFilters (\s a -> s {_gtgrtaFilters = a}) . _Default . _Coerce

-- | The ID of the transit gateway route table.
gtgrtaTransitGatewayRouteTableId :: Lens' GetTransitGatewayRouteTableAssociations Text
gtgrtaTransitGatewayRouteTableId = lens _gtgrtaTransitGatewayRouteTableId (\s a -> s {_gtgrtaTransitGatewayRouteTableId = a})

instance
  AWSPager
    GetTransitGatewayRouteTableAssociations
  where
  page rq rs
    | stop (rs ^. gtgrtarrsNextToken) = Nothing
    | stop (rs ^. gtgrtarrsAssociations) = Nothing
    | otherwise =
      Just $
        rq
          & gtgrtaNextToken .~ rs ^. gtgrtarrsNextToken

instance
  AWSRequest
    GetTransitGatewayRouteTableAssociations
  where
  type
    Rs GetTransitGatewayRouteTableAssociations =
      GetTransitGatewayRouteTableAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetTransitGatewayRouteTableAssociationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "associations" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetTransitGatewayRouteTableAssociations

instance
  NFData
    GetTransitGatewayRouteTableAssociations

instance
  ToHeaders
    GetTransitGatewayRouteTableAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    GetTransitGatewayRouteTableAssociations
  where
  toPath = const "/"

instance
  ToQuery
    GetTransitGatewayRouteTableAssociations
  where
  toQuery GetTransitGatewayRouteTableAssociations' {..} =
    mconcat
      [ "Action"
          =: ( "GetTransitGatewayRouteTableAssociations" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gtgrtaNextToken,
        "DryRun" =: _gtgrtaDryRun,
        "MaxResults" =: _gtgrtaMaxResults,
        toQuery (toQueryList "Filter" <$> _gtgrtaFilters),
        "TransitGatewayRouteTableId"
          =: _gtgrtaTransitGatewayRouteTableId
      ]

-- | /See:/ 'getTransitGatewayRouteTableAssociationsResponse' smart constructor.
data GetTransitGatewayRouteTableAssociationsResponse = GetTransitGatewayRouteTableAssociationsResponse'
  { _gtgrtarrsNextToken ::
      !( Maybe
           Text
       ),
    _gtgrtarrsAssociations ::
      !( Maybe
           [TransitGatewayRouteTableAssociation]
       ),
    _gtgrtarrsResponseStatus ::
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

-- | Creates a value of 'GetTransitGatewayRouteTableAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgrtarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gtgrtarrsAssociations' - Information about the associations.
--
-- * 'gtgrtarrsResponseStatus' - -- | The response status code.
getTransitGatewayRouteTableAssociationsResponse ::
  -- | 'gtgrtarrsResponseStatus'
  Int ->
  GetTransitGatewayRouteTableAssociationsResponse
getTransitGatewayRouteTableAssociationsResponse
  pResponseStatus_ =
    GetTransitGatewayRouteTableAssociationsResponse'
      { _gtgrtarrsNextToken =
          Nothing,
        _gtgrtarrsAssociations =
          Nothing,
        _gtgrtarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gtgrtarrsNextToken :: Lens' GetTransitGatewayRouteTableAssociationsResponse (Maybe Text)
gtgrtarrsNextToken = lens _gtgrtarrsNextToken (\s a -> s {_gtgrtarrsNextToken = a})

-- | Information about the associations.
gtgrtarrsAssociations :: Lens' GetTransitGatewayRouteTableAssociationsResponse [TransitGatewayRouteTableAssociation]
gtgrtarrsAssociations = lens _gtgrtarrsAssociations (\s a -> s {_gtgrtarrsAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
gtgrtarrsResponseStatus :: Lens' GetTransitGatewayRouteTableAssociationsResponse Int
gtgrtarrsResponseStatus = lens _gtgrtarrsResponseStatus (\s a -> s {_gtgrtarrsResponseStatus = a})

instance
  NFData
    GetTransitGatewayRouteTableAssociationsResponse

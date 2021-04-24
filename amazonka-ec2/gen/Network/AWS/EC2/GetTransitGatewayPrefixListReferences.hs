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
-- Module      : Network.AWS.EC2.GetTransitGatewayPrefixListReferences
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the prefix list references in a specified transit gateway route table.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.GetTransitGatewayPrefixListReferences
  ( -- * Creating a Request
    getTransitGatewayPrefixListReferences,
    GetTransitGatewayPrefixListReferences,

    -- * Request Lenses
    gtgplrNextToken,
    gtgplrDryRun,
    gtgplrMaxResults,
    gtgplrFilters,
    gtgplrTransitGatewayRouteTableId,

    -- * Destructuring the Response
    getTransitGatewayPrefixListReferencesResponse,
    GetTransitGatewayPrefixListReferencesResponse,

    -- * Response Lenses
    gtgplrrrsNextToken,
    gtgplrrrsTransitGatewayPrefixListReferences,
    gtgplrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTransitGatewayPrefixListReferences' smart constructor.
data GetTransitGatewayPrefixListReferences = GetTransitGatewayPrefixListReferences'
  { _gtgplrNextToken ::
      !( Maybe
           Text
       ),
    _gtgplrDryRun ::
      !( Maybe
           Bool
       ),
    _gtgplrMaxResults ::
      !( Maybe
           Nat
       ),
    _gtgplrFilters ::
      !( Maybe
           [Filter]
       ),
    _gtgplrTransitGatewayRouteTableId ::
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

-- | Creates a value of 'GetTransitGatewayPrefixListReferences' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgplrNextToken' - The token for the next page of results.
--
-- * 'gtgplrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gtgplrMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gtgplrFilters' - One or more filters. The possible values are:     * @attachment.resource-id@ - The ID of the resource for the attachment.     * @attachment.resource-type@ - The type of resource for the attachment. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ .     * @attachment.transit-gateway-attachment-id@ - The ID of the attachment.     * @is-blackhole@ - Whether traffic matching the route is blocked (@true@ | @false@ ).     * @prefix-list-id@ - The ID of the prefix list.     * @prefix-list-owner-id@ - The ID of the owner of the prefix list.     * @state@ - The state of the prefix list reference (@pending@ | @available@ | @modifying@ | @deleting@ ).
--
-- * 'gtgplrTransitGatewayRouteTableId' - The ID of the transit gateway route table.
getTransitGatewayPrefixListReferences ::
  -- | 'gtgplrTransitGatewayRouteTableId'
  Text ->
  GetTransitGatewayPrefixListReferences
getTransitGatewayPrefixListReferences
  pTransitGatewayRouteTableId_ =
    GetTransitGatewayPrefixListReferences'
      { _gtgplrNextToken =
          Nothing,
        _gtgplrDryRun = Nothing,
        _gtgplrMaxResults = Nothing,
        _gtgplrFilters = Nothing,
        _gtgplrTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | The token for the next page of results.
gtgplrNextToken :: Lens' GetTransitGatewayPrefixListReferences (Maybe Text)
gtgplrNextToken = lens _gtgplrNextToken (\s a -> s {_gtgplrNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gtgplrDryRun :: Lens' GetTransitGatewayPrefixListReferences (Maybe Bool)
gtgplrDryRun = lens _gtgplrDryRun (\s a -> s {_gtgplrDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gtgplrMaxResults :: Lens' GetTransitGatewayPrefixListReferences (Maybe Natural)
gtgplrMaxResults = lens _gtgplrMaxResults (\s a -> s {_gtgplrMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @attachment.resource-id@ - The ID of the resource for the attachment.     * @attachment.resource-type@ - The type of resource for the attachment. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ .     * @attachment.transit-gateway-attachment-id@ - The ID of the attachment.     * @is-blackhole@ - Whether traffic matching the route is blocked (@true@ | @false@ ).     * @prefix-list-id@ - The ID of the prefix list.     * @prefix-list-owner-id@ - The ID of the owner of the prefix list.     * @state@ - The state of the prefix list reference (@pending@ | @available@ | @modifying@ | @deleting@ ).
gtgplrFilters :: Lens' GetTransitGatewayPrefixListReferences [Filter]
gtgplrFilters = lens _gtgplrFilters (\s a -> s {_gtgplrFilters = a}) . _Default . _Coerce

-- | The ID of the transit gateway route table.
gtgplrTransitGatewayRouteTableId :: Lens' GetTransitGatewayPrefixListReferences Text
gtgplrTransitGatewayRouteTableId = lens _gtgplrTransitGatewayRouteTableId (\s a -> s {_gtgplrTransitGatewayRouteTableId = a})

instance
  AWSPager
    GetTransitGatewayPrefixListReferences
  where
  page rq rs
    | stop (rs ^. gtgplrrrsNextToken) = Nothing
    | stop
        (rs ^. gtgplrrrsTransitGatewayPrefixListReferences) =
      Nothing
    | otherwise =
      Just $
        rq
          & gtgplrNextToken .~ rs ^. gtgplrrrsNextToken

instance
  AWSRequest
    GetTransitGatewayPrefixListReferences
  where
  type
    Rs GetTransitGatewayPrefixListReferences =
      GetTransitGatewayPrefixListReferencesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetTransitGatewayPrefixListReferencesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayPrefixListReferenceSet"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetTransitGatewayPrefixListReferences

instance NFData GetTransitGatewayPrefixListReferences

instance
  ToHeaders
    GetTransitGatewayPrefixListReferences
  where
  toHeaders = const mempty

instance ToPath GetTransitGatewayPrefixListReferences where
  toPath = const "/"

instance
  ToQuery
    GetTransitGatewayPrefixListReferences
  where
  toQuery GetTransitGatewayPrefixListReferences' {..} =
    mconcat
      [ "Action"
          =: ( "GetTransitGatewayPrefixListReferences" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gtgplrNextToken,
        "DryRun" =: _gtgplrDryRun,
        "MaxResults" =: _gtgplrMaxResults,
        toQuery (toQueryList "Filter" <$> _gtgplrFilters),
        "TransitGatewayRouteTableId"
          =: _gtgplrTransitGatewayRouteTableId
      ]

-- | /See:/ 'getTransitGatewayPrefixListReferencesResponse' smart constructor.
data GetTransitGatewayPrefixListReferencesResponse = GetTransitGatewayPrefixListReferencesResponse'
  { _gtgplrrrsNextToken ::
      !( Maybe
           Text
       ),
    _gtgplrrrsTransitGatewayPrefixListReferences ::
      !( Maybe
           [TransitGatewayPrefixListReference]
       ),
    _gtgplrrrsResponseStatus ::
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

-- | Creates a value of 'GetTransitGatewayPrefixListReferencesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgplrrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gtgplrrrsTransitGatewayPrefixListReferences' - Information about the prefix list references.
--
-- * 'gtgplrrrsResponseStatus' - -- | The response status code.
getTransitGatewayPrefixListReferencesResponse ::
  -- | 'gtgplrrrsResponseStatus'
  Int ->
  GetTransitGatewayPrefixListReferencesResponse
getTransitGatewayPrefixListReferencesResponse
  pResponseStatus_ =
    GetTransitGatewayPrefixListReferencesResponse'
      { _gtgplrrrsNextToken =
          Nothing,
        _gtgplrrrsTransitGatewayPrefixListReferences =
          Nothing,
        _gtgplrrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gtgplrrrsNextToken :: Lens' GetTransitGatewayPrefixListReferencesResponse (Maybe Text)
gtgplrrrsNextToken = lens _gtgplrrrsNextToken (\s a -> s {_gtgplrrrsNextToken = a})

-- | Information about the prefix list references.
gtgplrrrsTransitGatewayPrefixListReferences :: Lens' GetTransitGatewayPrefixListReferencesResponse [TransitGatewayPrefixListReference]
gtgplrrrsTransitGatewayPrefixListReferences = lens _gtgplrrrsTransitGatewayPrefixListReferences (\s a -> s {_gtgplrrrsTransitGatewayPrefixListReferences = a}) . _Default . _Coerce

-- | -- | The response status code.
gtgplrrrsResponseStatus :: Lens' GetTransitGatewayPrefixListReferencesResponse Int
gtgplrrrsResponseStatus = lens _gtgplrrrsResponseStatus (\s a -> s {_gtgplrrrsResponseStatus = a})

instance
  NFData
    GetTransitGatewayPrefixListReferencesResponse

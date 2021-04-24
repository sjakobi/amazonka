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
-- Module      : Network.AWS.EC2.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the associations between virtual interface groups and local gateway route tables.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
  ( -- * Creating a Request
    describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations,
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations,

    -- * Request Lenses
    dlgrtvigaNextToken,
    dlgrtvigaDryRun,
    dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds,
    dlgrtvigaMaxResults,
    dlgrtvigaFilters,

    -- * Destructuring the Response
    describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse,
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse,

    -- * Response Lenses
    dlgrtvigarrsNextToken,
    dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations,
    dlgrtvigarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations' smart constructor.
data DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations = DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations'
  { _dlgrtvigaNextToken ::
      !( Maybe
           Text
       ),
    _dlgrtvigaDryRun ::
      !( Maybe
           Bool
       ),
    _dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds ::
      !( Maybe
           [Text]
       ),
    _dlgrtvigaMaxResults ::
      !( Maybe
           Nat
       ),
    _dlgrtvigaFilters ::
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

-- | Creates a value of 'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrtvigaNextToken' - The token for the next page of results.
--
-- * 'dlgrtvigaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds' - The IDs of the associations.
--
-- * 'dlgrtvigaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dlgrtvigaFilters' - One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of the local gateway route table.     * @local-gateway-route-table-virtual-interface-group-association-id@ - The ID of the association.     * @local-gateway-route-table-virtual-interface-group-id@ - The ID of the virtual interface group.     * @state@ - The state of the association.
describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations ::
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations =
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations'
    { _dlgrtvigaNextToken =
        Nothing,
      _dlgrtvigaDryRun =
        Nothing,
      _dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds =
        Nothing,
      _dlgrtvigaMaxResults =
        Nothing,
      _dlgrtvigaFilters =
        Nothing
    }

-- | The token for the next page of results.
dlgrtvigaNextToken :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations (Maybe Text)
dlgrtvigaNextToken = lens _dlgrtvigaNextToken (\s a -> s {_dlgrtvigaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dlgrtvigaDryRun :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations (Maybe Bool)
dlgrtvigaDryRun = lens _dlgrtvigaDryRun (\s a -> s {_dlgrtvigaDryRun = a})

-- | The IDs of the associations.
dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations [Text]
dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds = lens _dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds (\s a -> s {_dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds = a}) . _Default . _Coerce

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dlgrtvigaMaxResults :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations (Maybe Natural)
dlgrtvigaMaxResults = lens _dlgrtvigaMaxResults (\s a -> s {_dlgrtvigaMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of the local gateway route table.     * @local-gateway-route-table-virtual-interface-group-association-id@ - The ID of the association.     * @local-gateway-route-table-virtual-interface-group-id@ - The ID of the virtual interface group.     * @state@ - The state of the association.
dlgrtvigaFilters :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations [Filter]
dlgrtvigaFilters = lens _dlgrtvigaFilters (\s a -> s {_dlgrtvigaFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
  where
  page rq rs
    | stop (rs ^. dlgrtvigarrsNextToken) = Nothing
    | stop
        ( rs
            ^. dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & dlgrtvigaNextToken .~ rs ^. dlgrtvigarrsNextToken

instance
  AWSRequest
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
  where
  type
    Rs
      DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations =
      DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse'
            <$> (x .@? "nextToken")
              <*> ( x
                      .@? "localGatewayRouteTableVirtualInterfaceGroupAssociationSet"
                      .!@ mempty
                      >>= may (parseXMLList "item")
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations

instance
  NFData
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations

instance
  ToHeaders
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
  where
  toPath = const "/"

instance
  ToQuery
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations
  where
  toQuery
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations' {..} =
      mconcat
        [ "Action"
            =: ( "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "NextToken" =: _dlgrtvigaNextToken,
          "DryRun" =: _dlgrtvigaDryRun,
          toQuery
            ( toQueryList
                "LocalGatewayRouteTableVirtualInterfaceGroupAssociationId"
                <$> _dlgrtvigaLocalGatewayRouteTableVirtualInterfaceGroupAssociationIds
            ),
          "MaxResults" =: _dlgrtvigaMaxResults,
          toQuery (toQueryList "Filter" <$> _dlgrtvigaFilters)
        ]

-- | /See:/ 'describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse' smart constructor.
data DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse = DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse'
  { _dlgrtvigarrsNextToken ::
      !( Maybe
           Text
       ),
    _dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations ::
      !( Maybe
           [LocalGatewayRouteTableVirtualInterfaceGroupAssociation]
       ),
    _dlgrtvigarrsResponseStatus ::
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

-- | Creates a value of 'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrtvigarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations' - Information about the associations.
--
-- * 'dlgrtvigarrsResponseStatus' - -- | The response status code.
describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse ::
  -- | 'dlgrtvigarrsResponseStatus'
  Int ->
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse
describeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse
  pResponseStatus_ =
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse'
      { _dlgrtvigarrsNextToken =
          Nothing,
        _dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations =
          Nothing,
        _dlgrtvigarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dlgrtvigarrsNextToken :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse (Maybe Text)
dlgrtvigarrsNextToken = lens _dlgrtvigarrsNextToken (\s a -> s {_dlgrtvigarrsNextToken = a})

-- | Information about the associations.
dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse [LocalGatewayRouteTableVirtualInterfaceGroupAssociation]
dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations = lens _dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations (\s a -> s {_dlgrtvigarrsLocalGatewayRouteTableVirtualInterfaceGroupAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgrtvigarrsResponseStatus :: Lens' DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse Int
dlgrtvigarrsResponseStatus = lens _dlgrtvigarrsResponseStatus (\s a -> s {_dlgrtvigarrsResponseStatus = a})

instance
  NFData
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResponse

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
-- Module      : Network.AWS.EC2.DescribeLocalGatewayRouteTableVPCAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified associations between VPCs and local gateway route tables.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayRouteTableVPCAssociations
  ( -- * Creating a Request
    describeLocalGatewayRouteTableVPCAssociations,
    DescribeLocalGatewayRouteTableVPCAssociations,

    -- * Request Lenses
    dlgrtvpcaNextToken,
    dlgrtvpcaDryRun,
    dlgrtvpcaMaxResults,
    dlgrtvpcaFilters,
    dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds,

    -- * Destructuring the Response
    describeLocalGatewayRouteTableVPCAssociationsResponse,
    DescribeLocalGatewayRouteTableVPCAssociationsResponse,

    -- * Response Lenses
    dlgrtvpcarrsNextToken,
    dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations,
    dlgrtvpcarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLocalGatewayRouteTableVPCAssociations' smart constructor.
data DescribeLocalGatewayRouteTableVPCAssociations = DescribeLocalGatewayRouteTableVPCAssociations'
  { _dlgrtvpcaNextToken ::
      !( Maybe
           Text
       ),
    _dlgrtvpcaDryRun ::
      !( Maybe
           Bool
       ),
    _dlgrtvpcaMaxResults ::
      !( Maybe
           Nat
       ),
    _dlgrtvpcaFilters ::
      !( Maybe
           [Filter]
       ),
    _dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'DescribeLocalGatewayRouteTableVPCAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrtvpcaNextToken' - The token for the next page of results.
--
-- * 'dlgrtvpcaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dlgrtvpcaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dlgrtvpcaFilters' - One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of the local gateway route table.     * @local-gateway-route-table-vpc-association-id@ - The ID of the association.     * @state@ - The state of the association.     * @vpc-id@ - The ID of the VPC.
--
-- * 'dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds' - The IDs of the associations.
describeLocalGatewayRouteTableVPCAssociations ::
  DescribeLocalGatewayRouteTableVPCAssociations
describeLocalGatewayRouteTableVPCAssociations =
  DescribeLocalGatewayRouteTableVPCAssociations'
    { _dlgrtvpcaNextToken =
        Nothing,
      _dlgrtvpcaDryRun = Nothing,
      _dlgrtvpcaMaxResults =
        Nothing,
      _dlgrtvpcaFilters = Nothing,
      _dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds =
        Nothing
    }

-- | The token for the next page of results.
dlgrtvpcaNextToken :: Lens' DescribeLocalGatewayRouteTableVPCAssociations (Maybe Text)
dlgrtvpcaNextToken = lens _dlgrtvpcaNextToken (\s a -> s {_dlgrtvpcaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dlgrtvpcaDryRun :: Lens' DescribeLocalGatewayRouteTableVPCAssociations (Maybe Bool)
dlgrtvpcaDryRun = lens _dlgrtvpcaDryRun (\s a -> s {_dlgrtvpcaDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dlgrtvpcaMaxResults :: Lens' DescribeLocalGatewayRouteTableVPCAssociations (Maybe Natural)
dlgrtvpcaMaxResults = lens _dlgrtvpcaMaxResults (\s a -> s {_dlgrtvpcaMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of the local gateway route table.     * @local-gateway-route-table-vpc-association-id@ - The ID of the association.     * @state@ - The state of the association.     * @vpc-id@ - The ID of the VPC.
dlgrtvpcaFilters :: Lens' DescribeLocalGatewayRouteTableVPCAssociations [Filter]
dlgrtvpcaFilters = lens _dlgrtvpcaFilters (\s a -> s {_dlgrtvpcaFilters = a}) . _Default . _Coerce

-- | The IDs of the associations.
dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds :: Lens' DescribeLocalGatewayRouteTableVPCAssociations [Text]
dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds = lens _dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds (\s a -> s {_dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeLocalGatewayRouteTableVPCAssociations
  where
  page rq rs
    | stop (rs ^. dlgrtvpcarrsNextToken) = Nothing
    | stop
        ( rs
            ^. dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & dlgrtvpcaNextToken .~ rs ^. dlgrtvpcarrsNextToken

instance
  AWSRequest
    DescribeLocalGatewayRouteTableVPCAssociations
  where
  type
    Rs DescribeLocalGatewayRouteTableVPCAssociations =
      DescribeLocalGatewayRouteTableVPCAssociationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLocalGatewayRouteTableVPCAssociationsResponse'
            <$> (x .@? "nextToken")
              <*> ( x .@? "localGatewayRouteTableVpcAssociationSet"
                      .!@ mempty
                      >>= may (parseXMLList "item")
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeLocalGatewayRouteTableVPCAssociations

instance
  NFData
    DescribeLocalGatewayRouteTableVPCAssociations

instance
  ToHeaders
    DescribeLocalGatewayRouteTableVPCAssociations
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeLocalGatewayRouteTableVPCAssociations
  where
  toPath = const "/"

instance
  ToQuery
    DescribeLocalGatewayRouteTableVPCAssociations
  where
  toQuery
    DescribeLocalGatewayRouteTableVPCAssociations' {..} =
      mconcat
        [ "Action"
            =: ( "DescribeLocalGatewayRouteTableVpcAssociations" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "NextToken" =: _dlgrtvpcaNextToken,
          "DryRun" =: _dlgrtvpcaDryRun,
          "MaxResults" =: _dlgrtvpcaMaxResults,
          toQuery (toQueryList "Filter" <$> _dlgrtvpcaFilters),
          toQuery
            ( toQueryList "LocalGatewayRouteTableVpcAssociationId"
                <$> _dlgrtvpcaLocalGatewayRouteTableVPCAssociationIds
            )
        ]

-- | /See:/ 'describeLocalGatewayRouteTableVPCAssociationsResponse' smart constructor.
data DescribeLocalGatewayRouteTableVPCAssociationsResponse = DescribeLocalGatewayRouteTableVPCAssociationsResponse'
  { _dlgrtvpcarrsNextToken ::
      !( Maybe
           Text
       ),
    _dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations ::
      !( Maybe
           [LocalGatewayRouteTableVPCAssociation]
       ),
    _dlgrtvpcarrsResponseStatus ::
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

-- | Creates a value of 'DescribeLocalGatewayRouteTableVPCAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrtvpcarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations' - Information about the associations.
--
-- * 'dlgrtvpcarrsResponseStatus' - -- | The response status code.
describeLocalGatewayRouteTableVPCAssociationsResponse ::
  -- | 'dlgrtvpcarrsResponseStatus'
  Int ->
  DescribeLocalGatewayRouteTableVPCAssociationsResponse
describeLocalGatewayRouteTableVPCAssociationsResponse
  pResponseStatus_ =
    DescribeLocalGatewayRouteTableVPCAssociationsResponse'
      { _dlgrtvpcarrsNextToken =
          Nothing,
        _dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations =
          Nothing,
        _dlgrtvpcarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dlgrtvpcarrsNextToken :: Lens' DescribeLocalGatewayRouteTableVPCAssociationsResponse (Maybe Text)
dlgrtvpcarrsNextToken = lens _dlgrtvpcarrsNextToken (\s a -> s {_dlgrtvpcarrsNextToken = a})

-- | Information about the associations.
dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations :: Lens' DescribeLocalGatewayRouteTableVPCAssociationsResponse [LocalGatewayRouteTableVPCAssociation]
dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations = lens _dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations (\s a -> s {_dlgrtvpcarrsLocalGatewayRouteTableVPCAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgrtvpcarrsResponseStatus :: Lens' DescribeLocalGatewayRouteTableVPCAssociationsResponse Int
dlgrtvpcarrsResponseStatus = lens _dlgrtvpcarrsResponseStatus (\s a -> s {_dlgrtvpcarrsResponseStatus = a})

instance
  NFData
    DescribeLocalGatewayRouteTableVPCAssociationsResponse

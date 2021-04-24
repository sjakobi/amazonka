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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayRouteTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more transit gateway route tables. By default, all transit gateway route tables are described. Alternatively, you can filter the results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayRouteTables
  ( -- * Creating a Request
    describeTransitGatewayRouteTables,
    DescribeTransitGatewayRouteTables,

    -- * Request Lenses
    dtgrtsNextToken,
    dtgrtsDryRun,
    dtgrtsMaxResults,
    dtgrtsTransitGatewayRouteTableIds,
    dtgrtsFilters,

    -- * Destructuring the Response
    describeTransitGatewayRouteTablesResponse,
    DescribeTransitGatewayRouteTablesResponse,

    -- * Response Lenses
    dtgrtrrsNextToken,
    dtgrtrrsTransitGatewayRouteTables,
    dtgrtrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayRouteTables' smart constructor.
data DescribeTransitGatewayRouteTables = DescribeTransitGatewayRouteTables'
  { _dtgrtsNextToken ::
      !( Maybe
           Text
       ),
    _dtgrtsDryRun ::
      !( Maybe
           Bool
       ),
    _dtgrtsMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgrtsTransitGatewayRouteTableIds ::
      !( Maybe
           [Text]
       ),
    _dtgrtsFilters ::
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

-- | Creates a value of 'DescribeTransitGatewayRouteTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrtsNextToken' - The token for the next page of results.
--
-- * 'dtgrtsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgrtsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgrtsTransitGatewayRouteTableIds' - The IDs of the transit gateway route tables.
--
-- * 'dtgrtsFilters' - One or more filters. The possible values are:     * @default-association-route-table@ - Indicates whether this is the default association route table for the transit gateway (@true@ | @false@ ).     * @default-propagation-route-table@ - Indicates whether this is the default propagation route table for the transit gateway (@true@ | @false@ ).     * @state@ - The state of the route table (@available@ | @deleting@ | @deleted@ | @pending@ ).     * @transit-gateway-id@ - The ID of the transit gateway.     * @transit-gateway-route-table-id@ - The ID of the transit gateway route table.
describeTransitGatewayRouteTables ::
  DescribeTransitGatewayRouteTables
describeTransitGatewayRouteTables =
  DescribeTransitGatewayRouteTables'
    { _dtgrtsNextToken =
        Nothing,
      _dtgrtsDryRun = Nothing,
      _dtgrtsMaxResults = Nothing,
      _dtgrtsTransitGatewayRouteTableIds =
        Nothing,
      _dtgrtsFilters = Nothing
    }

-- | The token for the next page of results.
dtgrtsNextToken :: Lens' DescribeTransitGatewayRouteTables (Maybe Text)
dtgrtsNextToken = lens _dtgrtsNextToken (\s a -> s {_dtgrtsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgrtsDryRun :: Lens' DescribeTransitGatewayRouteTables (Maybe Bool)
dtgrtsDryRun = lens _dtgrtsDryRun (\s a -> s {_dtgrtsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgrtsMaxResults :: Lens' DescribeTransitGatewayRouteTables (Maybe Natural)
dtgrtsMaxResults = lens _dtgrtsMaxResults (\s a -> s {_dtgrtsMaxResults = a}) . mapping _Nat

-- | The IDs of the transit gateway route tables.
dtgrtsTransitGatewayRouteTableIds :: Lens' DescribeTransitGatewayRouteTables [Text]
dtgrtsTransitGatewayRouteTableIds = lens _dtgrtsTransitGatewayRouteTableIds (\s a -> s {_dtgrtsTransitGatewayRouteTableIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @default-association-route-table@ - Indicates whether this is the default association route table for the transit gateway (@true@ | @false@ ).     * @default-propagation-route-table@ - Indicates whether this is the default propagation route table for the transit gateway (@true@ | @false@ ).     * @state@ - The state of the route table (@available@ | @deleting@ | @deleted@ | @pending@ ).     * @transit-gateway-id@ - The ID of the transit gateway.     * @transit-gateway-route-table-id@ - The ID of the transit gateway route table.
dtgrtsFilters :: Lens' DescribeTransitGatewayRouteTables [Filter]
dtgrtsFilters = lens _dtgrtsFilters (\s a -> s {_dtgrtsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTransitGatewayRouteTables where
  page rq rs
    | stop (rs ^. dtgrtrrsNextToken) = Nothing
    | stop (rs ^. dtgrtrrsTransitGatewayRouteTables) =
      Nothing
    | otherwise =
      Just $
        rq
          & dtgrtsNextToken .~ rs ^. dtgrtrrsNextToken

instance AWSRequest DescribeTransitGatewayRouteTables where
  type
    Rs DescribeTransitGatewayRouteTables =
      DescribeTransitGatewayRouteTablesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayRouteTablesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayRouteTables" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTransitGatewayRouteTables

instance NFData DescribeTransitGatewayRouteTables

instance ToHeaders DescribeTransitGatewayRouteTables where
  toHeaders = const mempty

instance ToPath DescribeTransitGatewayRouteTables where
  toPath = const "/"

instance ToQuery DescribeTransitGatewayRouteTables where
  toQuery DescribeTransitGatewayRouteTables' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTransitGatewayRouteTables" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgrtsNextToken,
        "DryRun" =: _dtgrtsDryRun,
        "MaxResults" =: _dtgrtsMaxResults,
        toQuery
          ( toQueryList "TransitGatewayRouteTableIds"
              <$> _dtgrtsTransitGatewayRouteTableIds
          ),
        toQuery (toQueryList "Filter" <$> _dtgrtsFilters)
      ]

-- | /See:/ 'describeTransitGatewayRouteTablesResponse' smart constructor.
data DescribeTransitGatewayRouteTablesResponse = DescribeTransitGatewayRouteTablesResponse'
  { _dtgrtrrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgrtrrsTransitGatewayRouteTables ::
      !( Maybe
           [TransitGatewayRouteTable]
       ),
    _dtgrtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayRouteTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrtrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgrtrrsTransitGatewayRouteTables' - Information about the transit gateway route tables.
--
-- * 'dtgrtrrsResponseStatus' - -- | The response status code.
describeTransitGatewayRouteTablesResponse ::
  -- | 'dtgrtrrsResponseStatus'
  Int ->
  DescribeTransitGatewayRouteTablesResponse
describeTransitGatewayRouteTablesResponse
  pResponseStatus_ =
    DescribeTransitGatewayRouteTablesResponse'
      { _dtgrtrrsNextToken =
          Nothing,
        _dtgrtrrsTransitGatewayRouteTables =
          Nothing,
        _dtgrtrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgrtrrsNextToken :: Lens' DescribeTransitGatewayRouteTablesResponse (Maybe Text)
dtgrtrrsNextToken = lens _dtgrtrrsNextToken (\s a -> s {_dtgrtrrsNextToken = a})

-- | Information about the transit gateway route tables.
dtgrtrrsTransitGatewayRouteTables :: Lens' DescribeTransitGatewayRouteTablesResponse [TransitGatewayRouteTable]
dtgrtrrsTransitGatewayRouteTables = lens _dtgrtrrsTransitGatewayRouteTables (\s a -> s {_dtgrtrrsTransitGatewayRouteTables = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgrtrrsResponseStatus :: Lens' DescribeTransitGatewayRouteTablesResponse Int
dtgrtrrsResponseStatus = lens _dtgrtrrsResponseStatus (\s a -> s {_dtgrtrrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayRouteTablesResponse

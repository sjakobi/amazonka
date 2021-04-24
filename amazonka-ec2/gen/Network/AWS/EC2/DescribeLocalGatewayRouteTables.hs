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
-- Module      : Network.AWS.EC2.DescribeLocalGatewayRouteTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more local gateway route tables. By default, all local gateway route tables are described. Alternatively, you can filter the results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayRouteTables
  ( -- * Creating a Request
    describeLocalGatewayRouteTables,
    DescribeLocalGatewayRouteTables,

    -- * Request Lenses
    dlgrtLocalGatewayRouteTableIds,
    dlgrtNextToken,
    dlgrtDryRun,
    dlgrtMaxResults,
    dlgrtFilters,

    -- * Destructuring the Response
    describeLocalGatewayRouteTablesResponse,
    DescribeLocalGatewayRouteTablesResponse,

    -- * Response Lenses
    dlgrtrrsNextToken,
    dlgrtrrsLocalGatewayRouteTables,
    dlgrtrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLocalGatewayRouteTables' smart constructor.
data DescribeLocalGatewayRouteTables = DescribeLocalGatewayRouteTables'
  { _dlgrtLocalGatewayRouteTableIds ::
      !( Maybe
           [Text]
       ),
    _dlgrtNextToken ::
      !( Maybe
           Text
       ),
    _dlgrtDryRun ::
      !( Maybe
           Bool
       ),
    _dlgrtMaxResults ::
      !( Maybe
           Nat
       ),
    _dlgrtFilters ::
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

-- | Creates a value of 'DescribeLocalGatewayRouteTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrtLocalGatewayRouteTableIds' - The IDs of the local gateway route tables.
--
-- * 'dlgrtNextToken' - The token for the next page of results.
--
-- * 'dlgrtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dlgrtMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dlgrtFilters' - One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of a local gateway route table.     * @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.     * @state@ - The state of the local gateway route table.
describeLocalGatewayRouteTables ::
  DescribeLocalGatewayRouteTables
describeLocalGatewayRouteTables =
  DescribeLocalGatewayRouteTables'
    { _dlgrtLocalGatewayRouteTableIds =
        Nothing,
      _dlgrtNextToken = Nothing,
      _dlgrtDryRun = Nothing,
      _dlgrtMaxResults = Nothing,
      _dlgrtFilters = Nothing
    }

-- | The IDs of the local gateway route tables.
dlgrtLocalGatewayRouteTableIds :: Lens' DescribeLocalGatewayRouteTables [Text]
dlgrtLocalGatewayRouteTableIds = lens _dlgrtLocalGatewayRouteTableIds (\s a -> s {_dlgrtLocalGatewayRouteTableIds = a}) . _Default . _Coerce

-- | The token for the next page of results.
dlgrtNextToken :: Lens' DescribeLocalGatewayRouteTables (Maybe Text)
dlgrtNextToken = lens _dlgrtNextToken (\s a -> s {_dlgrtNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dlgrtDryRun :: Lens' DescribeLocalGatewayRouteTables (Maybe Bool)
dlgrtDryRun = lens _dlgrtDryRun (\s a -> s {_dlgrtDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dlgrtMaxResults :: Lens' DescribeLocalGatewayRouteTables (Maybe Natural)
dlgrtMaxResults = lens _dlgrtMaxResults (\s a -> s {_dlgrtMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of a local gateway route table.     * @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.     * @state@ - The state of the local gateway route table.
dlgrtFilters :: Lens' DescribeLocalGatewayRouteTables [Filter]
dlgrtFilters = lens _dlgrtFilters (\s a -> s {_dlgrtFilters = a}) . _Default . _Coerce

instance AWSPager DescribeLocalGatewayRouteTables where
  page rq rs
    | stop (rs ^. dlgrtrrsNextToken) = Nothing
    | stop (rs ^. dlgrtrrsLocalGatewayRouteTables) =
      Nothing
    | otherwise =
      Just $ rq & dlgrtNextToken .~ rs ^. dlgrtrrsNextToken

instance AWSRequest DescribeLocalGatewayRouteTables where
  type
    Rs DescribeLocalGatewayRouteTables =
      DescribeLocalGatewayRouteTablesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLocalGatewayRouteTablesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "localGatewayRouteTableSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLocalGatewayRouteTables

instance NFData DescribeLocalGatewayRouteTables

instance ToHeaders DescribeLocalGatewayRouteTables where
  toHeaders = const mempty

instance ToPath DescribeLocalGatewayRouteTables where
  toPath = const "/"

instance ToQuery DescribeLocalGatewayRouteTables where
  toQuery DescribeLocalGatewayRouteTables' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLocalGatewayRouteTables" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "LocalGatewayRouteTableId"
              <$> _dlgrtLocalGatewayRouteTableIds
          ),
        "NextToken" =: _dlgrtNextToken,
        "DryRun" =: _dlgrtDryRun,
        "MaxResults" =: _dlgrtMaxResults,
        toQuery (toQueryList "Filter" <$> _dlgrtFilters)
      ]

-- | /See:/ 'describeLocalGatewayRouteTablesResponse' smart constructor.
data DescribeLocalGatewayRouteTablesResponse = DescribeLocalGatewayRouteTablesResponse'
  { _dlgrtrrsNextToken ::
      !( Maybe
           Text
       ),
    _dlgrtrrsLocalGatewayRouteTables ::
      !( Maybe
           [LocalGatewayRouteTable]
       ),
    _dlgrtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLocalGatewayRouteTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrtrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dlgrtrrsLocalGatewayRouteTables' - Information about the local gateway route tables.
--
-- * 'dlgrtrrsResponseStatus' - -- | The response status code.
describeLocalGatewayRouteTablesResponse ::
  -- | 'dlgrtrrsResponseStatus'
  Int ->
  DescribeLocalGatewayRouteTablesResponse
describeLocalGatewayRouteTablesResponse
  pResponseStatus_ =
    DescribeLocalGatewayRouteTablesResponse'
      { _dlgrtrrsNextToken =
          Nothing,
        _dlgrtrrsLocalGatewayRouteTables =
          Nothing,
        _dlgrtrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dlgrtrrsNextToken :: Lens' DescribeLocalGatewayRouteTablesResponse (Maybe Text)
dlgrtrrsNextToken = lens _dlgrtrrsNextToken (\s a -> s {_dlgrtrrsNextToken = a})

-- | Information about the local gateway route tables.
dlgrtrrsLocalGatewayRouteTables :: Lens' DescribeLocalGatewayRouteTablesResponse [LocalGatewayRouteTable]
dlgrtrrsLocalGatewayRouteTables = lens _dlgrtrrsLocalGatewayRouteTables (\s a -> s {_dlgrtrrsLocalGatewayRouteTables = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgrtrrsResponseStatus :: Lens' DescribeLocalGatewayRouteTablesResponse Int
dlgrtrrsResponseStatus = lens _dlgrtrrsResponseStatus (\s a -> s {_dlgrtrrsResponseStatus = a})

instance
  NFData
    DescribeLocalGatewayRouteTablesResponse

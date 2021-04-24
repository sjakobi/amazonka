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
-- Module      : Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaceGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified local gateway virtual interface groups.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaceGroups
  ( -- * Creating a Request
    describeLocalGatewayVirtualInterfaceGroups,
    DescribeLocalGatewayVirtualInterfaceGroups,

    -- * Request Lenses
    dlgvigNextToken,
    dlgvigDryRun,
    dlgvigMaxResults,
    dlgvigFilters,
    dlgvigLocalGatewayVirtualInterfaceGroupIds,

    -- * Destructuring the Response
    describeLocalGatewayVirtualInterfaceGroupsResponse,
    DescribeLocalGatewayVirtualInterfaceGroupsResponse,

    -- * Response Lenses
    dlgvigrrsNextToken,
    dlgvigrrsLocalGatewayVirtualInterfaceGroups,
    dlgvigrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLocalGatewayVirtualInterfaceGroups' smart constructor.
data DescribeLocalGatewayVirtualInterfaceGroups = DescribeLocalGatewayVirtualInterfaceGroups'
  { _dlgvigNextToken ::
      !( Maybe
           Text
       ),
    _dlgvigDryRun ::
      !( Maybe
           Bool
       ),
    _dlgvigMaxResults ::
      !( Maybe
           Nat
       ),
    _dlgvigFilters ::
      !( Maybe
           [Filter]
       ),
    _dlgvigLocalGatewayVirtualInterfaceGroupIds ::
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

-- | Creates a value of 'DescribeLocalGatewayVirtualInterfaceGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgvigNextToken' - The token for the next page of results.
--
-- * 'dlgvigDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dlgvigMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dlgvigFilters' - One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-virtual-interface-id@ - The ID of the virtual interface.     * @local-gateway-virtual-interface-group-id@ - The ID of the virtual interface group.
--
-- * 'dlgvigLocalGatewayVirtualInterfaceGroupIds' - The IDs of the virtual interface groups.
describeLocalGatewayVirtualInterfaceGroups ::
  DescribeLocalGatewayVirtualInterfaceGroups
describeLocalGatewayVirtualInterfaceGroups =
  DescribeLocalGatewayVirtualInterfaceGroups'
    { _dlgvigNextToken =
        Nothing,
      _dlgvigDryRun = Nothing,
      _dlgvigMaxResults = Nothing,
      _dlgvigFilters = Nothing,
      _dlgvigLocalGatewayVirtualInterfaceGroupIds =
        Nothing
    }

-- | The token for the next page of results.
dlgvigNextToken :: Lens' DescribeLocalGatewayVirtualInterfaceGroups (Maybe Text)
dlgvigNextToken = lens _dlgvigNextToken (\s a -> s {_dlgvigNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dlgvigDryRun :: Lens' DescribeLocalGatewayVirtualInterfaceGroups (Maybe Bool)
dlgvigDryRun = lens _dlgvigDryRun (\s a -> s {_dlgvigDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dlgvigMaxResults :: Lens' DescribeLocalGatewayVirtualInterfaceGroups (Maybe Natural)
dlgvigMaxResults = lens _dlgvigMaxResults (\s a -> s {_dlgvigMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-virtual-interface-id@ - The ID of the virtual interface.     * @local-gateway-virtual-interface-group-id@ - The ID of the virtual interface group.
dlgvigFilters :: Lens' DescribeLocalGatewayVirtualInterfaceGroups [Filter]
dlgvigFilters = lens _dlgvigFilters (\s a -> s {_dlgvigFilters = a}) . _Default . _Coerce

-- | The IDs of the virtual interface groups.
dlgvigLocalGatewayVirtualInterfaceGroupIds :: Lens' DescribeLocalGatewayVirtualInterfaceGroups [Text]
dlgvigLocalGatewayVirtualInterfaceGroupIds = lens _dlgvigLocalGatewayVirtualInterfaceGroupIds (\s a -> s {_dlgvigLocalGatewayVirtualInterfaceGroupIds = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeLocalGatewayVirtualInterfaceGroups
  where
  page rq rs
    | stop (rs ^. dlgvigrrsNextToken) = Nothing
    | stop
        (rs ^. dlgvigrrsLocalGatewayVirtualInterfaceGroups) =
      Nothing
    | otherwise =
      Just $
        rq
          & dlgvigNextToken .~ rs ^. dlgvigrrsNextToken

instance
  AWSRequest
    DescribeLocalGatewayVirtualInterfaceGroups
  where
  type
    Rs DescribeLocalGatewayVirtualInterfaceGroups =
      DescribeLocalGatewayVirtualInterfaceGroupsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLocalGatewayVirtualInterfaceGroupsResponse'
            <$> (x .@? "nextToken")
              <*> ( x .@? "localGatewayVirtualInterfaceGroupSet"
                      .!@ mempty
                      >>= may (parseXMLList "item")
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeLocalGatewayVirtualInterfaceGroups

instance
  NFData
    DescribeLocalGatewayVirtualInterfaceGroups

instance
  ToHeaders
    DescribeLocalGatewayVirtualInterfaceGroups
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeLocalGatewayVirtualInterfaceGroups
  where
  toPath = const "/"

instance
  ToQuery
    DescribeLocalGatewayVirtualInterfaceGroups
  where
  toQuery
    DescribeLocalGatewayVirtualInterfaceGroups' {..} =
      mconcat
        [ "Action"
            =: ( "DescribeLocalGatewayVirtualInterfaceGroups" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "NextToken" =: _dlgvigNextToken,
          "DryRun" =: _dlgvigDryRun,
          "MaxResults" =: _dlgvigMaxResults,
          toQuery (toQueryList "Filter" <$> _dlgvigFilters),
          toQuery
            ( toQueryList "LocalGatewayVirtualInterfaceGroupId"
                <$> _dlgvigLocalGatewayVirtualInterfaceGroupIds
            )
        ]

-- | /See:/ 'describeLocalGatewayVirtualInterfaceGroupsResponse' smart constructor.
data DescribeLocalGatewayVirtualInterfaceGroupsResponse = DescribeLocalGatewayVirtualInterfaceGroupsResponse'
  { _dlgvigrrsNextToken ::
      !( Maybe
           Text
       ),
    _dlgvigrrsLocalGatewayVirtualInterfaceGroups ::
      !( Maybe
           [LocalGatewayVirtualInterfaceGroup]
       ),
    _dlgvigrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLocalGatewayVirtualInterfaceGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgvigrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dlgvigrrsLocalGatewayVirtualInterfaceGroups' - The virtual interface groups.
--
-- * 'dlgvigrrsResponseStatus' - -- | The response status code.
describeLocalGatewayVirtualInterfaceGroupsResponse ::
  -- | 'dlgvigrrsResponseStatus'
  Int ->
  DescribeLocalGatewayVirtualInterfaceGroupsResponse
describeLocalGatewayVirtualInterfaceGroupsResponse
  pResponseStatus_ =
    DescribeLocalGatewayVirtualInterfaceGroupsResponse'
      { _dlgvigrrsNextToken =
          Nothing,
        _dlgvigrrsLocalGatewayVirtualInterfaceGroups =
          Nothing,
        _dlgvigrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dlgvigrrsNextToken :: Lens' DescribeLocalGatewayVirtualInterfaceGroupsResponse (Maybe Text)
dlgvigrrsNextToken = lens _dlgvigrrsNextToken (\s a -> s {_dlgvigrrsNextToken = a})

-- | The virtual interface groups.
dlgvigrrsLocalGatewayVirtualInterfaceGroups :: Lens' DescribeLocalGatewayVirtualInterfaceGroupsResponse [LocalGatewayVirtualInterfaceGroup]
dlgvigrrsLocalGatewayVirtualInterfaceGroups = lens _dlgvigrrsLocalGatewayVirtualInterfaceGroups (\s a -> s {_dlgvigrrsLocalGatewayVirtualInterfaceGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgvigrrsResponseStatus :: Lens' DescribeLocalGatewayVirtualInterfaceGroupsResponse Int
dlgvigrrsResponseStatus = lens _dlgvigrrsResponseStatus (\s a -> s {_dlgvigrrsResponseStatus = a})

instance
  NFData
    DescribeLocalGatewayVirtualInterfaceGroupsResponse

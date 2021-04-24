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
-- Module      : Network.AWS.EC2.DescribeLocalGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more local gateways. By default, all local gateways are described. Alternatively, you can filter the results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGateways
  ( -- * Creating a Request
    describeLocalGateways,
    DescribeLocalGateways,

    -- * Request Lenses
    dlgNextToken,
    dlgDryRun,
    dlgMaxResults,
    dlgLocalGatewayIds,
    dlgFilters,

    -- * Destructuring the Response
    describeLocalGatewaysResponse,
    DescribeLocalGatewaysResponse,

    -- * Response Lenses
    dlgrrsNextToken,
    dlgrrsLocalGateways,
    dlgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLocalGateways' smart constructor.
data DescribeLocalGateways = DescribeLocalGateways'
  { _dlgNextToken ::
      !(Maybe Text),
    _dlgDryRun :: !(Maybe Bool),
    _dlgMaxResults ::
      !(Maybe Nat),
    _dlgLocalGatewayIds ::
      !(Maybe [Text]),
    _dlgFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLocalGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgNextToken' - The token for the next page of results.
--
-- * 'dlgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dlgMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dlgLocalGatewayIds' - One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of the local gateway route table.     * @local-gateway-route-table-virtual-interface-group-association-id@ - The ID of the association.     * @local-gateway-route-table-virtual-interface-group-id@ - The ID of the virtual interface group.     * @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.     * @state@ - The state of the association.
--
-- * 'dlgFilters' - One or more filters.
describeLocalGateways ::
  DescribeLocalGateways
describeLocalGateways =
  DescribeLocalGateways'
    { _dlgNextToken = Nothing,
      _dlgDryRun = Nothing,
      _dlgMaxResults = Nothing,
      _dlgLocalGatewayIds = Nothing,
      _dlgFilters = Nothing
    }

-- | The token for the next page of results.
dlgNextToken :: Lens' DescribeLocalGateways (Maybe Text)
dlgNextToken = lens _dlgNextToken (\s a -> s {_dlgNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dlgDryRun :: Lens' DescribeLocalGateways (Maybe Bool)
dlgDryRun = lens _dlgDryRun (\s a -> s {_dlgDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dlgMaxResults :: Lens' DescribeLocalGateways (Maybe Natural)
dlgMaxResults = lens _dlgMaxResults (\s a -> s {_dlgMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @local-gateway-id@ - The ID of a local gateway.     * @local-gateway-route-table-id@ - The ID of the local gateway route table.     * @local-gateway-route-table-virtual-interface-group-association-id@ - The ID of the association.     * @local-gateway-route-table-virtual-interface-group-id@ - The ID of the virtual interface group.     * @outpost-arn@ - The Amazon Resource Name (ARN) of the Outpost.     * @state@ - The state of the association.
dlgLocalGatewayIds :: Lens' DescribeLocalGateways [Text]
dlgLocalGatewayIds = lens _dlgLocalGatewayIds (\s a -> s {_dlgLocalGatewayIds = a}) . _Default . _Coerce

-- | One or more filters.
dlgFilters :: Lens' DescribeLocalGateways [Filter]
dlgFilters = lens _dlgFilters (\s a -> s {_dlgFilters = a}) . _Default . _Coerce

instance AWSPager DescribeLocalGateways where
  page rq rs
    | stop (rs ^. dlgrrsNextToken) = Nothing
    | stop (rs ^. dlgrrsLocalGateways) = Nothing
    | otherwise =
      Just $ rq & dlgNextToken .~ rs ^. dlgrrsNextToken

instance AWSRequest DescribeLocalGateways where
  type
    Rs DescribeLocalGateways =
      DescribeLocalGatewaysResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLocalGatewaysResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "localGatewaySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLocalGateways

instance NFData DescribeLocalGateways

instance ToHeaders DescribeLocalGateways where
  toHeaders = const mempty

instance ToPath DescribeLocalGateways where
  toPath = const "/"

instance ToQuery DescribeLocalGateways where
  toQuery DescribeLocalGateways' {..} =
    mconcat
      [ "Action" =: ("DescribeLocalGateways" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dlgNextToken,
        "DryRun" =: _dlgDryRun,
        "MaxResults" =: _dlgMaxResults,
        toQuery
          ( toQueryList "LocalGatewayId"
              <$> _dlgLocalGatewayIds
          ),
        toQuery (toQueryList "Filter" <$> _dlgFilters)
      ]

-- | /See:/ 'describeLocalGatewaysResponse' smart constructor.
data DescribeLocalGatewaysResponse = DescribeLocalGatewaysResponse'
  { _dlgrrsNextToken ::
      !( Maybe
           Text
       ),
    _dlgrrsLocalGateways ::
      !( Maybe
           [LocalGateway]
       ),
    _dlgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLocalGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dlgrrsLocalGateways' - Information about the local gateways.
--
-- * 'dlgrrsResponseStatus' - -- | The response status code.
describeLocalGatewaysResponse ::
  -- | 'dlgrrsResponseStatus'
  Int ->
  DescribeLocalGatewaysResponse
describeLocalGatewaysResponse pResponseStatus_ =
  DescribeLocalGatewaysResponse'
    { _dlgrrsNextToken =
        Nothing,
      _dlgrrsLocalGateways = Nothing,
      _dlgrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dlgrrsNextToken :: Lens' DescribeLocalGatewaysResponse (Maybe Text)
dlgrrsNextToken = lens _dlgrrsNextToken (\s a -> s {_dlgrrsNextToken = a})

-- | Information about the local gateways.
dlgrrsLocalGateways :: Lens' DescribeLocalGatewaysResponse [LocalGateway]
dlgrrsLocalGateways = lens _dlgrrsLocalGateways (\s a -> s {_dlgrrsLocalGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgrrsResponseStatus :: Lens' DescribeLocalGatewaysResponse Int
dlgrrsResponseStatus = lens _dlgrrsResponseStatus (\s a -> s {_dlgrrsResponseStatus = a})

instance NFData DescribeLocalGatewaysResponse

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
-- Module      : Network.AWS.EC2.DescribeCoipPools
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified customer-owned address pools or all of your customer-owned address pools.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeCoipPools
  ( -- * Creating a Request
    describeCoipPools,
    DescribeCoipPools,

    -- * Request Lenses
    dcpNextToken,
    dcpDryRun,
    dcpMaxResults,
    dcpFilters,
    dcpPoolIds,

    -- * Destructuring the Response
    describeCoipPoolsResponse,
    DescribeCoipPoolsResponse,

    -- * Response Lenses
    dcprrsNextToken,
    dcprrsCoipPools,
    dcprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCoipPools' smart constructor.
data DescribeCoipPools = DescribeCoipPools'
  { _dcpNextToken ::
      !(Maybe Text),
    _dcpDryRun :: !(Maybe Bool),
    _dcpMaxResults :: !(Maybe Nat),
    _dcpFilters :: !(Maybe [Filter]),
    _dcpPoolIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeCoipPools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpNextToken' - The token for the next page of results.
--
-- * 'dcpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcpMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dcpFilters' - The filters. The following are the possible values:     * @coip-pool.pool-id@      * @coip-pool.local-gateway-route-table-id@
--
-- * 'dcpPoolIds' - The IDs of the address pools.
describeCoipPools ::
  DescribeCoipPools
describeCoipPools =
  DescribeCoipPools'
    { _dcpNextToken = Nothing,
      _dcpDryRun = Nothing,
      _dcpMaxResults = Nothing,
      _dcpFilters = Nothing,
      _dcpPoolIds = Nothing
    }

-- | The token for the next page of results.
dcpNextToken :: Lens' DescribeCoipPools (Maybe Text)
dcpNextToken = lens _dcpNextToken (\s a -> s {_dcpNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcpDryRun :: Lens' DescribeCoipPools (Maybe Bool)
dcpDryRun = lens _dcpDryRun (\s a -> s {_dcpDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dcpMaxResults :: Lens' DescribeCoipPools (Maybe Natural)
dcpMaxResults = lens _dcpMaxResults (\s a -> s {_dcpMaxResults = a}) . mapping _Nat

-- | The filters. The following are the possible values:     * @coip-pool.pool-id@      * @coip-pool.local-gateway-route-table-id@
dcpFilters :: Lens' DescribeCoipPools [Filter]
dcpFilters = lens _dcpFilters (\s a -> s {_dcpFilters = a}) . _Default . _Coerce

-- | The IDs of the address pools.
dcpPoolIds :: Lens' DescribeCoipPools [Text]
dcpPoolIds = lens _dcpPoolIds (\s a -> s {_dcpPoolIds = a}) . _Default . _Coerce

instance AWSPager DescribeCoipPools where
  page rq rs
    | stop (rs ^. dcprrsNextToken) = Nothing
    | stop (rs ^. dcprrsCoipPools) = Nothing
    | otherwise =
      Just $ rq & dcpNextToken .~ rs ^. dcprrsNextToken

instance AWSRequest DescribeCoipPools where
  type Rs DescribeCoipPools = DescribeCoipPoolsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeCoipPoolsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "coipPoolSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCoipPools

instance NFData DescribeCoipPools

instance ToHeaders DescribeCoipPools where
  toHeaders = const mempty

instance ToPath DescribeCoipPools where
  toPath = const "/"

instance ToQuery DescribeCoipPools where
  toQuery DescribeCoipPools' {..} =
    mconcat
      [ "Action" =: ("DescribeCoipPools" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dcpNextToken,
        "DryRun" =: _dcpDryRun,
        "MaxResults" =: _dcpMaxResults,
        toQuery (toQueryList "Filter" <$> _dcpFilters),
        toQuery (toQueryList "PoolId" <$> _dcpPoolIds)
      ]

-- | /See:/ 'describeCoipPoolsResponse' smart constructor.
data DescribeCoipPoolsResponse = DescribeCoipPoolsResponse'
  { _dcprrsNextToken ::
      !(Maybe Text),
    _dcprrsCoipPools ::
      !(Maybe [CoipPool]),
    _dcprrsResponseStatus ::
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

-- | Creates a value of 'DescribeCoipPoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcprrsCoipPools' - Information about the address pools.
--
-- * 'dcprrsResponseStatus' - -- | The response status code.
describeCoipPoolsResponse ::
  -- | 'dcprrsResponseStatus'
  Int ->
  DescribeCoipPoolsResponse
describeCoipPoolsResponse pResponseStatus_ =
  DescribeCoipPoolsResponse'
    { _dcprrsNextToken =
        Nothing,
      _dcprrsCoipPools = Nothing,
      _dcprrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcprrsNextToken :: Lens' DescribeCoipPoolsResponse (Maybe Text)
dcprrsNextToken = lens _dcprrsNextToken (\s a -> s {_dcprrsNextToken = a})

-- | Information about the address pools.
dcprrsCoipPools :: Lens' DescribeCoipPoolsResponse [CoipPool]
dcprrsCoipPools = lens _dcprrsCoipPools (\s a -> s {_dcprrsCoipPools = a}) . _Default . _Coerce

-- | -- | The response status code.
dcprrsResponseStatus :: Lens' DescribeCoipPoolsResponse Int
dcprrsResponseStatus = lens _dcprrsResponseStatus (\s a -> s {_dcprrsResponseStatus = a})

instance NFData DescribeCoipPoolsResponse

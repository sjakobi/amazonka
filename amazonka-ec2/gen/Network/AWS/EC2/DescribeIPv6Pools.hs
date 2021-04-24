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
-- Module      : Network.AWS.EC2.DescribeIPv6Pools
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your IPv6 address pools.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeIPv6Pools
  ( -- * Creating a Request
    describeIPv6Pools,
    DescribeIPv6Pools,

    -- * Request Lenses
    dipNextToken,
    dipDryRun,
    dipMaxResults,
    dipFilters,
    dipPoolIds,

    -- * Destructuring the Response
    describeIPv6PoolsResponse,
    DescribeIPv6PoolsResponse,

    -- * Response Lenses
    diprrsNextToken,
    diprrsIPv6Pools,
    diprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeIPv6Pools' smart constructor.
data DescribeIPv6Pools = DescribeIPv6Pools'
  { _dipNextToken ::
      !(Maybe Text),
    _dipDryRun :: !(Maybe Bool),
    _dipMaxResults :: !(Maybe Nat),
    _dipFilters :: !(Maybe [Filter]),
    _dipPoolIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeIPv6Pools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dipNextToken' - The token for the next page of results.
--
-- * 'dipDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dipMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dipFilters' - One or more filters.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
--
-- * 'dipPoolIds' - The IDs of the IPv6 address pools.
describeIPv6Pools ::
  DescribeIPv6Pools
describeIPv6Pools =
  DescribeIPv6Pools'
    { _dipNextToken = Nothing,
      _dipDryRun = Nothing,
      _dipMaxResults = Nothing,
      _dipFilters = Nothing,
      _dipPoolIds = Nothing
    }

-- | The token for the next page of results.
dipNextToken :: Lens' DescribeIPv6Pools (Maybe Text)
dipNextToken = lens _dipNextToken (\s a -> s {_dipNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dipDryRun :: Lens' DescribeIPv6Pools (Maybe Bool)
dipDryRun = lens _dipDryRun (\s a -> s {_dipDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dipMaxResults :: Lens' DescribeIPv6Pools (Maybe Natural)
dipMaxResults = lens _dipMaxResults (\s a -> s {_dipMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dipFilters :: Lens' DescribeIPv6Pools [Filter]
dipFilters = lens _dipFilters (\s a -> s {_dipFilters = a}) . _Default . _Coerce

-- | The IDs of the IPv6 address pools.
dipPoolIds :: Lens' DescribeIPv6Pools [Text]
dipPoolIds = lens _dipPoolIds (\s a -> s {_dipPoolIds = a}) . _Default . _Coerce

instance AWSPager DescribeIPv6Pools where
  page rq rs
    | stop (rs ^. diprrsNextToken) = Nothing
    | stop (rs ^. diprrsIPv6Pools) = Nothing
    | otherwise =
      Just $ rq & dipNextToken .~ rs ^. diprrsNextToken

instance AWSRequest DescribeIPv6Pools where
  type Rs DescribeIPv6Pools = DescribeIPv6PoolsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeIPv6PoolsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "ipv6PoolSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeIPv6Pools

instance NFData DescribeIPv6Pools

instance ToHeaders DescribeIPv6Pools where
  toHeaders = const mempty

instance ToPath DescribeIPv6Pools where
  toPath = const "/"

instance ToQuery DescribeIPv6Pools where
  toQuery DescribeIPv6Pools' {..} =
    mconcat
      [ "Action" =: ("DescribeIpv6Pools" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dipNextToken,
        "DryRun" =: _dipDryRun,
        "MaxResults" =: _dipMaxResults,
        toQuery (toQueryList "Filter" <$> _dipFilters),
        toQuery (toQueryList "PoolId" <$> _dipPoolIds)
      ]

-- | /See:/ 'describeIPv6PoolsResponse' smart constructor.
data DescribeIPv6PoolsResponse = DescribeIPv6PoolsResponse'
  { _diprrsNextToken ::
      !(Maybe Text),
    _diprrsIPv6Pools ::
      !(Maybe [IPv6Pool]),
    _diprrsResponseStatus ::
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

-- | Creates a value of 'DescribeIPv6PoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diprrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'diprrsIPv6Pools' - Information about the IPv6 address pools.
--
-- * 'diprrsResponseStatus' - -- | The response status code.
describeIPv6PoolsResponse ::
  -- | 'diprrsResponseStatus'
  Int ->
  DescribeIPv6PoolsResponse
describeIPv6PoolsResponse pResponseStatus_ =
  DescribeIPv6PoolsResponse'
    { _diprrsNextToken =
        Nothing,
      _diprrsIPv6Pools = Nothing,
      _diprrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
diprrsNextToken :: Lens' DescribeIPv6PoolsResponse (Maybe Text)
diprrsNextToken = lens _diprrsNextToken (\s a -> s {_diprrsNextToken = a})

-- | Information about the IPv6 address pools.
diprrsIPv6Pools :: Lens' DescribeIPv6PoolsResponse [IPv6Pool]
diprrsIPv6Pools = lens _diprrsIPv6Pools (\s a -> s {_diprrsIPv6Pools = a}) . _Default . _Coerce

-- | -- | The response status code.
diprrsResponseStatus :: Lens' DescribeIPv6PoolsResponse Int
diprrsResponseStatus = lens _diprrsResponseStatus (\s a -> s {_diprrsResponseStatus = a})

instance NFData DescribeIPv6PoolsResponse

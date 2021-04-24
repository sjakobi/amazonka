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
-- Module      : Network.AWS.EC2.DescribePublicIPv4Pools
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified IPv4 address pools.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribePublicIPv4Pools
  ( -- * Creating a Request
    describePublicIPv4Pools,
    DescribePublicIPv4Pools,

    -- * Request Lenses
    dpipNextToken,
    dpipMaxResults,
    dpipFilters,
    dpipPoolIds,

    -- * Destructuring the Response
    describePublicIPv4PoolsResponse,
    DescribePublicIPv4PoolsResponse,

    -- * Response Lenses
    dpiprrsNextToken,
    dpiprrsPublicIPv4Pools,
    dpiprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePublicIPv4Pools' smart constructor.
data DescribePublicIPv4Pools = DescribePublicIPv4Pools'
  { _dpipNextToken ::
      !(Maybe Text),
    _dpipMaxResults ::
      !(Maybe Nat),
    _dpipFilters ::
      !(Maybe [Filter]),
    _dpipPoolIds ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePublicIPv4Pools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpipNextToken' - The token for the next page of results.
--
-- * 'dpipMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dpipFilters' - One or more filters.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
--
-- * 'dpipPoolIds' - The IDs of the address pools.
describePublicIPv4Pools ::
  DescribePublicIPv4Pools
describePublicIPv4Pools =
  DescribePublicIPv4Pools'
    { _dpipNextToken = Nothing,
      _dpipMaxResults = Nothing,
      _dpipFilters = Nothing,
      _dpipPoolIds = Nothing
    }

-- | The token for the next page of results.
dpipNextToken :: Lens' DescribePublicIPv4Pools (Maybe Text)
dpipNextToken = lens _dpipNextToken (\s a -> s {_dpipNextToken = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dpipMaxResults :: Lens' DescribePublicIPv4Pools (Maybe Natural)
dpipMaxResults = lens _dpipMaxResults (\s a -> s {_dpipMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dpipFilters :: Lens' DescribePublicIPv4Pools [Filter]
dpipFilters = lens _dpipFilters (\s a -> s {_dpipFilters = a}) . _Default . _Coerce

-- | The IDs of the address pools.
dpipPoolIds :: Lens' DescribePublicIPv4Pools [Text]
dpipPoolIds = lens _dpipPoolIds (\s a -> s {_dpipPoolIds = a}) . _Default . _Coerce

instance AWSPager DescribePublicIPv4Pools where
  page rq rs
    | stop (rs ^. dpiprrsNextToken) = Nothing
    | stop (rs ^. dpiprrsPublicIPv4Pools) = Nothing
    | otherwise =
      Just $ rq & dpipNextToken .~ rs ^. dpiprrsNextToken

instance AWSRequest DescribePublicIPv4Pools where
  type
    Rs DescribePublicIPv4Pools =
      DescribePublicIPv4PoolsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribePublicIPv4PoolsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "publicIpv4PoolSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePublicIPv4Pools

instance NFData DescribePublicIPv4Pools

instance ToHeaders DescribePublicIPv4Pools where
  toHeaders = const mempty

instance ToPath DescribePublicIPv4Pools where
  toPath = const "/"

instance ToQuery DescribePublicIPv4Pools where
  toQuery DescribePublicIPv4Pools' {..} =
    mconcat
      [ "Action"
          =: ("DescribePublicIpv4Pools" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dpipNextToken,
        "MaxResults" =: _dpipMaxResults,
        toQuery (toQueryList "Filter" <$> _dpipFilters),
        toQuery (toQueryList "PoolId" <$> _dpipPoolIds)
      ]

-- | /See:/ 'describePublicIPv4PoolsResponse' smart constructor.
data DescribePublicIPv4PoolsResponse = DescribePublicIPv4PoolsResponse'
  { _dpiprrsNextToken ::
      !( Maybe
           Text
       ),
    _dpiprrsPublicIPv4Pools ::
      !( Maybe
           [PublicIPv4Pool]
       ),
    _dpiprrsResponseStatus ::
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

-- | Creates a value of 'DescribePublicIPv4PoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpiprrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dpiprrsPublicIPv4Pools' - Information about the address pools.
--
-- * 'dpiprrsResponseStatus' - -- | The response status code.
describePublicIPv4PoolsResponse ::
  -- | 'dpiprrsResponseStatus'
  Int ->
  DescribePublicIPv4PoolsResponse
describePublicIPv4PoolsResponse pResponseStatus_ =
  DescribePublicIPv4PoolsResponse'
    { _dpiprrsNextToken =
        Nothing,
      _dpiprrsPublicIPv4Pools = Nothing,
      _dpiprrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dpiprrsNextToken :: Lens' DescribePublicIPv4PoolsResponse (Maybe Text)
dpiprrsNextToken = lens _dpiprrsNextToken (\s a -> s {_dpiprrsNextToken = a})

-- | Information about the address pools.
dpiprrsPublicIPv4Pools :: Lens' DescribePublicIPv4PoolsResponse [PublicIPv4Pool]
dpiprrsPublicIPv4Pools = lens _dpiprrsPublicIPv4Pools (\s a -> s {_dpiprrsPublicIPv4Pools = a}) . _Default . _Coerce

-- | -- | The response status code.
dpiprrsResponseStatus :: Lens' DescribePublicIPv4PoolsResponse Int
dpiprrsResponseStatus = lens _dpiprrsResponseStatus (\s a -> s {_dpiprrsResponseStatus = a})

instance NFData DescribePublicIPv4PoolsResponse

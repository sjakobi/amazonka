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
-- Module      : Network.AWS.EC2.DescribePrefixLists
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service.
--
--
-- We recommend that you use 'DescribeManagedPrefixLists' instead.
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribePrefixLists
  ( -- * Creating a Request
    describePrefixLists,
    DescribePrefixLists,

    -- * Request Lenses
    dplNextToken,
    dplPrefixListIds,
    dplDryRun,
    dplMaxResults,
    dplFilters,

    -- * Destructuring the Response
    describePrefixListsResponse,
    DescribePrefixListsResponse,

    -- * Response Lenses
    dplrrsNextToken,
    dplrrsPrefixLists,
    dplrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePrefixLists' smart constructor.
data DescribePrefixLists = DescribePrefixLists'
  { _dplNextToken ::
      !(Maybe Text),
    _dplPrefixListIds ::
      !(Maybe [Text]),
    _dplDryRun :: !(Maybe Bool),
    _dplMaxResults :: !(Maybe Int),
    _dplFilters ::
      !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribePrefixLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dplNextToken' - The token for the next page of results.
--
-- * 'dplPrefixListIds' - One or more prefix list IDs.
--
-- * 'dplDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dplMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dplFilters' - One or more filters.     * @prefix-list-id@ : The ID of a prefix list.     * @prefix-list-name@ : The name of a prefix list.
describePrefixLists ::
  DescribePrefixLists
describePrefixLists =
  DescribePrefixLists'
    { _dplNextToken = Nothing,
      _dplPrefixListIds = Nothing,
      _dplDryRun = Nothing,
      _dplMaxResults = Nothing,
      _dplFilters = Nothing
    }

-- | The token for the next page of results.
dplNextToken :: Lens' DescribePrefixLists (Maybe Text)
dplNextToken = lens _dplNextToken (\s a -> s {_dplNextToken = a})

-- | One or more prefix list IDs.
dplPrefixListIds :: Lens' DescribePrefixLists [Text]
dplPrefixListIds = lens _dplPrefixListIds (\s a -> s {_dplPrefixListIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dplDryRun :: Lens' DescribePrefixLists (Maybe Bool)
dplDryRun = lens _dplDryRun (\s a -> s {_dplDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dplMaxResults :: Lens' DescribePrefixLists (Maybe Int)
dplMaxResults = lens _dplMaxResults (\s a -> s {_dplMaxResults = a})

-- | One or more filters.     * @prefix-list-id@ : The ID of a prefix list.     * @prefix-list-name@ : The name of a prefix list.
dplFilters :: Lens' DescribePrefixLists [Filter]
dplFilters = lens _dplFilters (\s a -> s {_dplFilters = a}) . _Default . _Coerce

instance AWSPager DescribePrefixLists where
  page rq rs
    | stop (rs ^. dplrrsNextToken) = Nothing
    | stop (rs ^. dplrrsPrefixLists) = Nothing
    | otherwise =
      Just $ rq & dplNextToken .~ rs ^. dplrrsNextToken

instance AWSRequest DescribePrefixLists where
  type
    Rs DescribePrefixLists =
      DescribePrefixListsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribePrefixListsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "prefixListSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePrefixLists

instance NFData DescribePrefixLists

instance ToHeaders DescribePrefixLists where
  toHeaders = const mempty

instance ToPath DescribePrefixLists where
  toPath = const "/"

instance ToQuery DescribePrefixLists where
  toQuery DescribePrefixLists' {..} =
    mconcat
      [ "Action" =: ("DescribePrefixLists" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dplNextToken,
        toQuery
          (toQueryList "PrefixListId" <$> _dplPrefixListIds),
        "DryRun" =: _dplDryRun,
        "MaxResults" =: _dplMaxResults,
        toQuery (toQueryList "Filter" <$> _dplFilters)
      ]

-- | /See:/ 'describePrefixListsResponse' smart constructor.
data DescribePrefixListsResponse = DescribePrefixListsResponse'
  { _dplrrsNextToken ::
      !(Maybe Text),
    _dplrrsPrefixLists ::
      !( Maybe
           [PrefixList]
       ),
    _dplrrsResponseStatus ::
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

-- | Creates a value of 'DescribePrefixListsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dplrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dplrrsPrefixLists' - All available prefix lists.
--
-- * 'dplrrsResponseStatus' - -- | The response status code.
describePrefixListsResponse ::
  -- | 'dplrrsResponseStatus'
  Int ->
  DescribePrefixListsResponse
describePrefixListsResponse pResponseStatus_ =
  DescribePrefixListsResponse'
    { _dplrrsNextToken =
        Nothing,
      _dplrrsPrefixLists = Nothing,
      _dplrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dplrrsNextToken :: Lens' DescribePrefixListsResponse (Maybe Text)
dplrrsNextToken = lens _dplrrsNextToken (\s a -> s {_dplrrsNextToken = a})

-- | All available prefix lists.
dplrrsPrefixLists :: Lens' DescribePrefixListsResponse [PrefixList]
dplrrsPrefixLists = lens _dplrrsPrefixLists (\s a -> s {_dplrrsPrefixLists = a}) . _Default . _Coerce

-- | -- | The response status code.
dplrrsResponseStatus :: Lens' DescribePrefixListsResponse Int
dplrrsResponseStatus = lens _dplrrsResponseStatus (\s a -> s {_dplrrsResponseStatus = a})

instance NFData DescribePrefixListsResponse

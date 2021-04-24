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
-- Module      : Network.AWS.EC2.DescribeManagedPrefixLists
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your managed prefix lists and any AWS-managed prefix lists.
--
--
-- To view the entries for your prefix list, use 'GetManagedPrefixListEntries' .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeManagedPrefixLists
  ( -- * Creating a Request
    describeManagedPrefixLists,
    DescribeManagedPrefixLists,

    -- * Request Lenses
    dmplNextToken,
    dmplPrefixListIds,
    dmplDryRun,
    dmplMaxResults,
    dmplFilters,

    -- * Destructuring the Response
    describeManagedPrefixListsResponse,
    DescribeManagedPrefixListsResponse,

    -- * Response Lenses
    dmplrmrsNextToken,
    dmplrmrsPrefixLists,
    dmplrmrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeManagedPrefixLists' smart constructor.
data DescribeManagedPrefixLists = DescribeManagedPrefixLists'
  { _dmplNextToken ::
      !(Maybe Text),
    _dmplPrefixListIds ::
      !(Maybe [Text]),
    _dmplDryRun ::
      !(Maybe Bool),
    _dmplMaxResults ::
      !(Maybe Nat),
    _dmplFilters ::
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

-- | Creates a value of 'DescribeManagedPrefixLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmplNextToken' - The token for the next page of results.
--
-- * 'dmplPrefixListIds' - One or more prefix list IDs.
--
-- * 'dmplDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dmplMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dmplFilters' - One or more filters.     * @owner-id@ - The ID of the prefix list owner.     * @prefix-list-id@ - The ID of the prefix list.     * @prefix-list-name@ - The name of the prefix list.
describeManagedPrefixLists ::
  DescribeManagedPrefixLists
describeManagedPrefixLists =
  DescribeManagedPrefixLists'
    { _dmplNextToken =
        Nothing,
      _dmplPrefixListIds = Nothing,
      _dmplDryRun = Nothing,
      _dmplMaxResults = Nothing,
      _dmplFilters = Nothing
    }

-- | The token for the next page of results.
dmplNextToken :: Lens' DescribeManagedPrefixLists (Maybe Text)
dmplNextToken = lens _dmplNextToken (\s a -> s {_dmplNextToken = a})

-- | One or more prefix list IDs.
dmplPrefixListIds :: Lens' DescribeManagedPrefixLists [Text]
dmplPrefixListIds = lens _dmplPrefixListIds (\s a -> s {_dmplPrefixListIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dmplDryRun :: Lens' DescribeManagedPrefixLists (Maybe Bool)
dmplDryRun = lens _dmplDryRun (\s a -> s {_dmplDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dmplMaxResults :: Lens' DescribeManagedPrefixLists (Maybe Natural)
dmplMaxResults = lens _dmplMaxResults (\s a -> s {_dmplMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @owner-id@ - The ID of the prefix list owner.     * @prefix-list-id@ - The ID of the prefix list.     * @prefix-list-name@ - The name of the prefix list.
dmplFilters :: Lens' DescribeManagedPrefixLists [Filter]
dmplFilters = lens _dmplFilters (\s a -> s {_dmplFilters = a}) . _Default . _Coerce

instance AWSPager DescribeManagedPrefixLists where
  page rq rs
    | stop (rs ^. dmplrmrsNextToken) = Nothing
    | stop (rs ^. dmplrmrsPrefixLists) = Nothing
    | otherwise =
      Just $ rq & dmplNextToken .~ rs ^. dmplrmrsNextToken

instance AWSRequest DescribeManagedPrefixLists where
  type
    Rs DescribeManagedPrefixLists =
      DescribeManagedPrefixListsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeManagedPrefixListsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "prefixListSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeManagedPrefixLists

instance NFData DescribeManagedPrefixLists

instance ToHeaders DescribeManagedPrefixLists where
  toHeaders = const mempty

instance ToPath DescribeManagedPrefixLists where
  toPath = const "/"

instance ToQuery DescribeManagedPrefixLists where
  toQuery DescribeManagedPrefixLists' {..} =
    mconcat
      [ "Action"
          =: ("DescribeManagedPrefixLists" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dmplNextToken,
        toQuery
          (toQueryList "PrefixListId" <$> _dmplPrefixListIds),
        "DryRun" =: _dmplDryRun,
        "MaxResults" =: _dmplMaxResults,
        toQuery (toQueryList "Filter" <$> _dmplFilters)
      ]

-- | /See:/ 'describeManagedPrefixListsResponse' smart constructor.
data DescribeManagedPrefixListsResponse = DescribeManagedPrefixListsResponse'
  { _dmplrmrsNextToken ::
      !( Maybe
           Text
       ),
    _dmplrmrsPrefixLists ::
      !( Maybe
           [ManagedPrefixList]
       ),
    _dmplrmrsResponseStatus ::
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

-- | Creates a value of 'DescribeManagedPrefixListsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmplrmrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dmplrmrsPrefixLists' - Information about the prefix lists.
--
-- * 'dmplrmrsResponseStatus' - -- | The response status code.
describeManagedPrefixListsResponse ::
  -- | 'dmplrmrsResponseStatus'
  Int ->
  DescribeManagedPrefixListsResponse
describeManagedPrefixListsResponse pResponseStatus_ =
  DescribeManagedPrefixListsResponse'
    { _dmplrmrsNextToken =
        Nothing,
      _dmplrmrsPrefixLists = Nothing,
      _dmplrmrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dmplrmrsNextToken :: Lens' DescribeManagedPrefixListsResponse (Maybe Text)
dmplrmrsNextToken = lens _dmplrmrsNextToken (\s a -> s {_dmplrmrsNextToken = a})

-- | Information about the prefix lists.
dmplrmrsPrefixLists :: Lens' DescribeManagedPrefixListsResponse [ManagedPrefixList]
dmplrmrsPrefixLists = lens _dmplrmrsPrefixLists (\s a -> s {_dmplrmrsPrefixLists = a}) . _Default . _Coerce

-- | -- | The response status code.
dmplrmrsResponseStatus :: Lens' DescribeManagedPrefixListsResponse Int
dmplrmrsResponseStatus = lens _dmplrmrsResponseStatus (\s a -> s {_dmplrmrsResponseStatus = a})

instance NFData DescribeManagedPrefixListsResponse

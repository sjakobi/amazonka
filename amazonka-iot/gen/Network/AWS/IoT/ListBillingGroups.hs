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
-- Module      : Network.AWS.IoT.ListBillingGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the billing groups you have created.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListBillingGroups
  ( -- * Creating a Request
    listBillingGroups,
    ListBillingGroups,

    -- * Request Lenses
    lbgNamePrefixFilter,
    lbgNextToken,
    lbgMaxResults,

    -- * Destructuring the Response
    listBillingGroupsResponse,
    ListBillingGroupsResponse,

    -- * Response Lenses
    lbgrrsBillingGroups,
    lbgrrsNextToken,
    lbgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBillingGroups' smart constructor.
data ListBillingGroups = ListBillingGroups'
  { _lbgNamePrefixFilter ::
      !(Maybe Text),
    _lbgNextToken :: !(Maybe Text),
    _lbgMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBillingGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbgNamePrefixFilter' - Limit the results to billing groups whose names have the given prefix.
--
-- * 'lbgNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'lbgMaxResults' - The maximum number of results to return per request.
listBillingGroups ::
  ListBillingGroups
listBillingGroups =
  ListBillingGroups'
    { _lbgNamePrefixFilter = Nothing,
      _lbgNextToken = Nothing,
      _lbgMaxResults = Nothing
    }

-- | Limit the results to billing groups whose names have the given prefix.
lbgNamePrefixFilter :: Lens' ListBillingGroups (Maybe Text)
lbgNamePrefixFilter = lens _lbgNamePrefixFilter (\s a -> s {_lbgNamePrefixFilter = a})

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
lbgNextToken :: Lens' ListBillingGroups (Maybe Text)
lbgNextToken = lens _lbgNextToken (\s a -> s {_lbgNextToken = a})

-- | The maximum number of results to return per request.
lbgMaxResults :: Lens' ListBillingGroups (Maybe Natural)
lbgMaxResults = lens _lbgMaxResults (\s a -> s {_lbgMaxResults = a}) . mapping _Nat

instance AWSPager ListBillingGroups where
  page rq rs
    | stop (rs ^. lbgrrsNextToken) = Nothing
    | stop (rs ^. lbgrrsBillingGroups) = Nothing
    | otherwise =
      Just $ rq & lbgNextToken .~ rs ^. lbgrrsNextToken

instance AWSRequest ListBillingGroups where
  type Rs ListBillingGroups = ListBillingGroupsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListBillingGroupsResponse'
            <$> (x .?> "billingGroups" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListBillingGroups

instance NFData ListBillingGroups

instance ToHeaders ListBillingGroups where
  toHeaders = const mempty

instance ToPath ListBillingGroups where
  toPath = const "/billing-groups"

instance ToQuery ListBillingGroups where
  toQuery ListBillingGroups' {..} =
    mconcat
      [ "namePrefixFilter" =: _lbgNamePrefixFilter,
        "nextToken" =: _lbgNextToken,
        "maxResults" =: _lbgMaxResults
      ]

-- | /See:/ 'listBillingGroupsResponse' smart constructor.
data ListBillingGroupsResponse = ListBillingGroupsResponse'
  { _lbgrrsBillingGroups ::
      !( Maybe
           [GroupNameAndARN]
       ),
    _lbgrrsNextToken ::
      !(Maybe Text),
    _lbgrrsResponseStatus ::
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

-- | Creates a value of 'ListBillingGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbgrrsBillingGroups' - The list of billing groups.
--
-- * 'lbgrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'lbgrrsResponseStatus' - -- | The response status code.
listBillingGroupsResponse ::
  -- | 'lbgrrsResponseStatus'
  Int ->
  ListBillingGroupsResponse
listBillingGroupsResponse pResponseStatus_ =
  ListBillingGroupsResponse'
    { _lbgrrsBillingGroups =
        Nothing,
      _lbgrrsNextToken = Nothing,
      _lbgrrsResponseStatus = pResponseStatus_
    }

-- | The list of billing groups.
lbgrrsBillingGroups :: Lens' ListBillingGroupsResponse [GroupNameAndARN]
lbgrrsBillingGroups = lens _lbgrrsBillingGroups (\s a -> s {_lbgrrsBillingGroups = a}) . _Default . _Coerce

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
lbgrrsNextToken :: Lens' ListBillingGroupsResponse (Maybe Text)
lbgrrsNextToken = lens _lbgrrsNextToken (\s a -> s {_lbgrrsNextToken = a})

-- | -- | The response status code.
lbgrrsResponseStatus :: Lens' ListBillingGroupsResponse Int
lbgrrsResponseStatus = lens _lbgrrsResponseStatus (\s a -> s {_lbgrrsResponseStatus = a})

instance NFData ListBillingGroupsResponse

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
-- Module      : Network.AWS.Connect.ListInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Return a list of instances which are in active state, creation-in-progress state, and failed state. Instances that aren't successfully created (they are in a failed state) are returned only for 24 hours after the CreateInstance API was invoked.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListInstances
  ( -- * Creating a Request
    listInstances,
    ListInstances,

    -- * Request Lenses
    liNextToken,
    liMaxResults,

    -- * Destructuring the Response
    listInstancesResponse,
    ListInstancesResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsInstanceSummaryList,
    lirrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstances' smart constructor.
data ListInstances = ListInstances'
  { _liNextToken ::
      !(Maybe Text),
    _liMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'liMaxResults' - The maximum number of results to return per page.
listInstances ::
  ListInstances
listInstances =
  ListInstances'
    { _liNextToken = Nothing,
      _liMaxResults = Nothing
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
liNextToken :: Lens' ListInstances (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | The maximum number of results to return per page.
liMaxResults :: Lens' ListInstances (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

instance AWSPager ListInstances where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsInstanceSummaryList) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListInstances where
  type Rs ListInstances = ListInstancesResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListInstancesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "InstanceSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInstances

instance NFData ListInstances

instance ToHeaders ListInstances where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInstances where
  toPath = const "/instance"

instance ToQuery ListInstances where
  toQuery ListInstances' {..} =
    mconcat
      [ "nextToken" =: _liNextToken,
        "maxResults" =: _liMaxResults
      ]

-- | /See:/ 'listInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsInstanceSummaryList ::
      !(Maybe [InstanceSummary]),
    _lirrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lirrsInstanceSummaryList' - Information about the instances.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listInstancesResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListInstancesResponse
listInstancesResponse pResponseStatus_ =
  ListInstancesResponse'
    { _lirrsNextToken = Nothing,
      _lirrsInstanceSummaryList = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lirrsNextToken :: Lens' ListInstancesResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | Information about the instances.
lirrsInstanceSummaryList :: Lens' ListInstancesResponse [InstanceSummary]
lirrsInstanceSummaryList = lens _lirrsInstanceSummaryList (\s a -> s {_lirrsInstanceSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListInstancesResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListInstancesResponse

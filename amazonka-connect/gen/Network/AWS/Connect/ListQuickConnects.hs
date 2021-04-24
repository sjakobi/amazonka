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
-- Module      : Network.AWS.Connect.ListQuickConnects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Provides information about the quick connects for the specified Amazon Connect instance.
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListQuickConnects
  ( -- * Creating a Request
    listQuickConnects,
    ListQuickConnects,

    -- * Request Lenses
    lqcNextToken,
    lqcMaxResults,
    lqcQuickConnectTypes,
    lqcInstanceId,

    -- * Destructuring the Response
    listQuickConnectsResponse,
    ListQuickConnectsResponse,

    -- * Response Lenses
    lqcrrsNextToken,
    lqcrrsQuickConnectSummaryList,
    lqcrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listQuickConnects' smart constructor.
data ListQuickConnects = ListQuickConnects'
  { _lqcNextToken ::
      !(Maybe Text),
    _lqcMaxResults :: !(Maybe Nat),
    _lqcQuickConnectTypes ::
      !(Maybe [QuickConnectType]),
    _lqcInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListQuickConnects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqcNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'lqcMaxResults' - The maximum number of results to return per page.
--
-- * 'lqcQuickConnectTypes' - The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
--
-- * 'lqcInstanceId' - The identifier of the Amazon Connect instance.
listQuickConnects ::
  -- | 'lqcInstanceId'
  Text ->
  ListQuickConnects
listQuickConnects pInstanceId_ =
  ListQuickConnects'
    { _lqcNextToken = Nothing,
      _lqcMaxResults = Nothing,
      _lqcQuickConnectTypes = Nothing,
      _lqcInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
lqcNextToken :: Lens' ListQuickConnects (Maybe Text)
lqcNextToken = lens _lqcNextToken (\s a -> s {_lqcNextToken = a})

-- | The maximum number of results to return per page.
lqcMaxResults :: Lens' ListQuickConnects (Maybe Natural)
lqcMaxResults = lens _lqcMaxResults (\s a -> s {_lqcMaxResults = a}) . mapping _Nat

-- | The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
lqcQuickConnectTypes :: Lens' ListQuickConnects [QuickConnectType]
lqcQuickConnectTypes = lens _lqcQuickConnectTypes (\s a -> s {_lqcQuickConnectTypes = a}) . _Default . _Coerce

-- | The identifier of the Amazon Connect instance.
lqcInstanceId :: Lens' ListQuickConnects Text
lqcInstanceId = lens _lqcInstanceId (\s a -> s {_lqcInstanceId = a})

instance AWSPager ListQuickConnects where
  page rq rs
    | stop (rs ^. lqcrrsNextToken) = Nothing
    | stop (rs ^. lqcrrsQuickConnectSummaryList) =
      Nothing
    | otherwise =
      Just $ rq & lqcNextToken .~ rs ^. lqcrrsNextToken

instance AWSRequest ListQuickConnects where
  type Rs ListQuickConnects = ListQuickConnectsResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListQuickConnectsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "QuickConnectSummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListQuickConnects

instance NFData ListQuickConnects

instance ToHeaders ListQuickConnects where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListQuickConnects where
  toPath ListQuickConnects' {..} =
    mconcat ["/quick-connects/", toBS _lqcInstanceId]

instance ToQuery ListQuickConnects where
  toQuery ListQuickConnects' {..} =
    mconcat
      [ "nextToken" =: _lqcNextToken,
        "maxResults" =: _lqcMaxResults,
        "QuickConnectTypes"
          =: toQuery
            (toQueryList "member" <$> _lqcQuickConnectTypes)
      ]

-- | /See:/ 'listQuickConnectsResponse' smart constructor.
data ListQuickConnectsResponse = ListQuickConnectsResponse'
  { _lqcrrsNextToken ::
      !(Maybe Text),
    _lqcrrsQuickConnectSummaryList ::
      !( Maybe
           [QuickConnectSummary]
       ),
    _lqcrrsResponseStatus ::
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

-- | Creates a value of 'ListQuickConnectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqcrrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lqcrrsQuickConnectSummaryList' - Information about the quick connects.
--
-- * 'lqcrrsResponseStatus' - -- | The response status code.
listQuickConnectsResponse ::
  -- | 'lqcrrsResponseStatus'
  Int ->
  ListQuickConnectsResponse
listQuickConnectsResponse pResponseStatus_ =
  ListQuickConnectsResponse'
    { _lqcrrsNextToken =
        Nothing,
      _lqcrrsQuickConnectSummaryList = Nothing,
      _lqcrrsResponseStatus = pResponseStatus_
    }

-- | If there are additional results, this is the token for the next set of results.
lqcrrsNextToken :: Lens' ListQuickConnectsResponse (Maybe Text)
lqcrrsNextToken = lens _lqcrrsNextToken (\s a -> s {_lqcrrsNextToken = a})

-- | Information about the quick connects.
lqcrrsQuickConnectSummaryList :: Lens' ListQuickConnectsResponse [QuickConnectSummary]
lqcrrsQuickConnectSummaryList = lens _lqcrrsQuickConnectSummaryList (\s a -> s {_lqcrrsQuickConnectSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
lqcrrsResponseStatus :: Lens' ListQuickConnectsResponse Int
lqcrrsResponseStatus = lens _lqcrrsResponseStatus (\s a -> s {_lqcrrsResponseStatus = a})

instance NFData ListQuickConnectsResponse

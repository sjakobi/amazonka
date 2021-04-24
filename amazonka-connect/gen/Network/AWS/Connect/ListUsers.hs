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
-- Module      : Network.AWS.Connect.ListUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides summary information about the users for the specified Amazon Connect instance.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListUsers
  ( -- * Creating a Request
    listUsers,
    ListUsers,

    -- * Request Lenses
    luNextToken,
    luMaxResults,
    luInstanceId,

    -- * Destructuring the Response
    listUsersResponse,
    ListUsersResponse,

    -- * Response Lenses
    lurrsUserSummaryList,
    lurrsNextToken,
    lurrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listUsers' smart constructor.
data ListUsers = ListUsers'
  { _luNextToken ::
      !(Maybe Text),
    _luMaxResults :: !(Maybe Nat),
    _luInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luNextToken' - The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
--
-- * 'luMaxResults' - The maximum number of results to return per page.
--
-- * 'luInstanceId' - The identifier of the Amazon Connect instance.
listUsers ::
  -- | 'luInstanceId'
  Text ->
  ListUsers
listUsers pInstanceId_ =
  ListUsers'
    { _luNextToken = Nothing,
      _luMaxResults = Nothing,
      _luInstanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
luNextToken :: Lens' ListUsers (Maybe Text)
luNextToken = lens _luNextToken (\s a -> s {_luNextToken = a})

-- | The maximum number of results to return per page.
luMaxResults :: Lens' ListUsers (Maybe Natural)
luMaxResults = lens _luMaxResults (\s a -> s {_luMaxResults = a}) . mapping _Nat

-- | The identifier of the Amazon Connect instance.
luInstanceId :: Lens' ListUsers Text
luInstanceId = lens _luInstanceId (\s a -> s {_luInstanceId = a})

instance AWSPager ListUsers where
  page rq rs
    | stop (rs ^. lurrsNextToken) = Nothing
    | stop (rs ^. lurrsUserSummaryList) = Nothing
    | otherwise =
      Just $ rq & luNextToken .~ rs ^. lurrsNextToken

instance AWSRequest ListUsers where
  type Rs ListUsers = ListUsersResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          ListUsersResponse'
            <$> (x .?> "UserSummaryList" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListUsers

instance NFData ListUsers

instance ToHeaders ListUsers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListUsers where
  toPath ListUsers' {..} =
    mconcat ["/users-summary/", toBS _luInstanceId]

instance ToQuery ListUsers where
  toQuery ListUsers' {..} =
    mconcat
      [ "nextToken" =: _luNextToken,
        "maxResults" =: _luMaxResults
      ]

-- | /See:/ 'listUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { _lurrsUserSummaryList ::
      !(Maybe [UserSummary]),
    _lurrsNextToken :: !(Maybe Text),
    _lurrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lurrsUserSummaryList' - Information about the users.
--
-- * 'lurrsNextToken' - If there are additional results, this is the token for the next set of results.
--
-- * 'lurrsResponseStatus' - -- | The response status code.
listUsersResponse ::
  -- | 'lurrsResponseStatus'
  Int ->
  ListUsersResponse
listUsersResponse pResponseStatus_ =
  ListUsersResponse'
    { _lurrsUserSummaryList = Nothing,
      _lurrsNextToken = Nothing,
      _lurrsResponseStatus = pResponseStatus_
    }

-- | Information about the users.
lurrsUserSummaryList :: Lens' ListUsersResponse [UserSummary]
lurrsUserSummaryList = lens _lurrsUserSummaryList (\s a -> s {_lurrsUserSummaryList = a}) . _Default . _Coerce

-- | If there are additional results, this is the token for the next set of results.
lurrsNextToken :: Lens' ListUsersResponse (Maybe Text)
lurrsNextToken = lens _lurrsNextToken (\s a -> s {_lurrsNextToken = a})

-- | -- | The response status code.
lurrsResponseStatus :: Lens' ListUsersResponse Int
lurrsResponseStatus = lens _lurrsResponseStatus (\s a -> s {_lurrsResponseStatus = a})

instance NFData ListUsersResponse

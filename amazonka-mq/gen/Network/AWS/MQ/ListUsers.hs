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
-- Module      : Network.AWS.MQ.ListUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all ActiveMQ users.
module Network.AWS.MQ.ListUsers
  ( -- * Creating a Request
    listUsers,
    ListUsers,

    -- * Request Lenses
    luNextToken,
    luMaxResults,
    luBrokerId,

    -- * Destructuring the Response
    listUsersResponse,
    ListUsersResponse,

    -- * Response Lenses
    lurrsNextToken,
    lurrsBrokerId,
    lurrsMaxResults,
    lurrsUsers,
    lurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listUsers' smart constructor.
data ListUsers = ListUsers'
  { _luNextToken ::
      !(Maybe Text),
    _luMaxResults :: !(Maybe Nat),
    _luBrokerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'luMaxResults' - The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'luBrokerId' - The unique ID that Amazon MQ generates for the broker.
listUsers ::
  -- | 'luBrokerId'
  Text ->
  ListUsers
listUsers pBrokerId_ =
  ListUsers'
    { _luNextToken = Nothing,
      _luMaxResults = Nothing,
      _luBrokerId = pBrokerId_
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
luNextToken :: Lens' ListUsers (Maybe Text)
luNextToken = lens _luNextToken (\s a -> s {_luNextToken = a})

-- | The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
luMaxResults :: Lens' ListUsers (Maybe Natural)
luMaxResults = lens _luMaxResults (\s a -> s {_luMaxResults = a}) . mapping _Nat

-- | The unique ID that Amazon MQ generates for the broker.
luBrokerId :: Lens' ListUsers Text
luBrokerId = lens _luBrokerId (\s a -> s {_luBrokerId = a})

instance AWSRequest ListUsers where
  type Rs ListUsers = ListUsersResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          ListUsersResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "brokerId")
            <*> (x .?> "maxResults")
            <*> (x .?> "users" .!@ mempty)
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
    mconcat
      ["/v1/brokers/", toBS _luBrokerId, "/users"]

instance ToQuery ListUsers where
  toQuery ListUsers' {..} =
    mconcat
      [ "nextToken" =: _luNextToken,
        "maxResults" =: _luMaxResults
      ]

-- | /See:/ 'listUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { _lurrsNextToken ::
      !(Maybe Text),
    _lurrsBrokerId :: !(Maybe Text),
    _lurrsMaxResults :: !(Maybe Nat),
    _lurrsUsers ::
      !(Maybe [UserSummary]),
    _lurrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lurrsNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lurrsBrokerId' - Required. The unique ID that Amazon MQ generates for the broker.
--
-- * 'lurrsMaxResults' - Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'lurrsUsers' - Required. The list of all ActiveMQ usernames for the specified broker.
--
-- * 'lurrsResponseStatus' - -- | The response status code.
listUsersResponse ::
  -- | 'lurrsResponseStatus'
  Int ->
  ListUsersResponse
listUsersResponse pResponseStatus_ =
  ListUsersResponse'
    { _lurrsNextToken = Nothing,
      _lurrsBrokerId = Nothing,
      _lurrsMaxResults = Nothing,
      _lurrsUsers = Nothing,
      _lurrsResponseStatus = pResponseStatus_
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lurrsNextToken :: Lens' ListUsersResponse (Maybe Text)
lurrsNextToken = lens _lurrsNextToken (\s a -> s {_lurrsNextToken = a})

-- | Required. The unique ID that Amazon MQ generates for the broker.
lurrsBrokerId :: Lens' ListUsersResponse (Maybe Text)
lurrsBrokerId = lens _lurrsBrokerId (\s a -> s {_lurrsBrokerId = a})

-- | Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.
lurrsMaxResults :: Lens' ListUsersResponse (Maybe Natural)
lurrsMaxResults = lens _lurrsMaxResults (\s a -> s {_lurrsMaxResults = a}) . mapping _Nat

-- | Required. The list of all ActiveMQ usernames for the specified broker.
lurrsUsers :: Lens' ListUsersResponse [UserSummary]
lurrsUsers = lens _lurrsUsers (\s a -> s {_lurrsUsers = a}) . _Default . _Coerce

-- | -- | The response status code.
lurrsResponseStatus :: Lens' ListUsersResponse Int
lurrsResponseStatus = lens _lurrsResponseStatus (\s a -> s {_lurrsResponseStatus = a})

instance NFData ListUsersResponse

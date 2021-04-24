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
-- Module      : Network.AWS.WorkMail.ListUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summaries of the organization's users.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListUsers
  ( -- * Creating a Request
    listUsers,
    ListUsers,

    -- * Request Lenses
    luNextToken,
    luMaxResults,
    luOrganizationId,

    -- * Destructuring the Response
    listUsersResponse,
    ListUsersResponse,

    -- * Response Lenses
    lurrsNextToken,
    lurrsUsers,
    lurrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'listUsers' smart constructor.
data ListUsers = ListUsers'
  { _luNextToken ::
      !(Maybe Text),
    _luMaxResults :: !(Maybe Nat),
    _luOrganizationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luNextToken' - The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- * 'luMaxResults' - The maximum number of results to return in a single call.
--
-- * 'luOrganizationId' - The identifier for the organization under which the users exist.
listUsers ::
  -- | 'luOrganizationId'
  Text ->
  ListUsers
listUsers pOrganizationId_ =
  ListUsers'
    { _luNextToken = Nothing,
      _luMaxResults = Nothing,
      _luOrganizationId = pOrganizationId_
    }

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
luNextToken :: Lens' ListUsers (Maybe Text)
luNextToken = lens _luNextToken (\s a -> s {_luNextToken = a})

-- | The maximum number of results to return in a single call.
luMaxResults :: Lens' ListUsers (Maybe Natural)
luMaxResults = lens _luMaxResults (\s a -> s {_luMaxResults = a}) . mapping _Nat

-- | The identifier for the organization under which the users exist.
luOrganizationId :: Lens' ListUsers Text
luOrganizationId = lens _luOrganizationId (\s a -> s {_luOrganizationId = a})

instance AWSPager ListUsers where
  page rq rs
    | stop (rs ^. lurrsNextToken) = Nothing
    | stop (rs ^. lurrsUsers) = Nothing
    | otherwise =
      Just $ rq & luNextToken .~ rs ^. lurrsNextToken

instance AWSRequest ListUsers where
  type Rs ListUsers = ListUsersResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          ListUsersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Users" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListUsers

instance NFData ListUsers

instance ToHeaders ListUsers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.ListUsers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListUsers where
  toJSON ListUsers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _luNextToken,
            ("MaxResults" .=) <$> _luMaxResults,
            Just ("OrganizationId" .= _luOrganizationId)
          ]
      )

instance ToPath ListUsers where
  toPath = const "/"

instance ToQuery ListUsers where
  toQuery = const mempty

-- | /See:/ 'listUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse'
  { _lurrsNextToken ::
      !(Maybe Text),
    _lurrsUsers :: !(Maybe [User]),
    _lurrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lurrsNextToken' - The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
--
-- * 'lurrsUsers' - The overview of users for an organization.
--
-- * 'lurrsResponseStatus' - -- | The response status code.
listUsersResponse ::
  -- | 'lurrsResponseStatus'
  Int ->
  ListUsersResponse
listUsersResponse pResponseStatus_ =
  ListUsersResponse'
    { _lurrsNextToken = Nothing,
      _lurrsUsers = Nothing,
      _lurrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
lurrsNextToken :: Lens' ListUsersResponse (Maybe Text)
lurrsNextToken = lens _lurrsNextToken (\s a -> s {_lurrsNextToken = a})

-- | The overview of users for an organization.
lurrsUsers :: Lens' ListUsersResponse [User]
lurrsUsers = lens _lurrsUsers (\s a -> s {_lurrsUsers = a}) . _Default . _Coerce

-- | -- | The response status code.
lurrsResponseStatus :: Lens' ListUsersResponse Int
lurrsResponseStatus = lens _lurrsResponseStatus (\s a -> s {_lurrsResponseStatus = a})

instance NFData ListUsersResponse

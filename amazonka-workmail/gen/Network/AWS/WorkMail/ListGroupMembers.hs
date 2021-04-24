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
-- Module      : Network.AWS.WorkMail.ListGroupMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an overview of the members of a group. Users and groups can be members of a group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListGroupMembers
  ( -- * Creating a Request
    listGroupMembers,
    ListGroupMembers,

    -- * Request Lenses
    lgmNextToken,
    lgmMaxResults,
    lgmOrganizationId,
    lgmGroupId,

    -- * Destructuring the Response
    listGroupMembersResponse,
    ListGroupMembersResponse,

    -- * Response Lenses
    lgmrrsNextToken,
    lgmrrsMembers,
    lgmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'listGroupMembers' smart constructor.
data ListGroupMembers = ListGroupMembers'
  { _lgmNextToken ::
      !(Maybe Text),
    _lgmMaxResults :: !(Maybe Nat),
    _lgmOrganizationId :: !Text,
    _lgmGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgmNextToken' - The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- * 'lgmMaxResults' - The maximum number of results to return in a single call.
--
-- * 'lgmOrganizationId' - The identifier for the organization under which the group exists.
--
-- * 'lgmGroupId' - The identifier for the group to which the members (users or groups) are associated.
listGroupMembers ::
  -- | 'lgmOrganizationId'
  Text ->
  -- | 'lgmGroupId'
  Text ->
  ListGroupMembers
listGroupMembers pOrganizationId_ pGroupId_ =
  ListGroupMembers'
    { _lgmNextToken = Nothing,
      _lgmMaxResults = Nothing,
      _lgmOrganizationId = pOrganizationId_,
      _lgmGroupId = pGroupId_
    }

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
lgmNextToken :: Lens' ListGroupMembers (Maybe Text)
lgmNextToken = lens _lgmNextToken (\s a -> s {_lgmNextToken = a})

-- | The maximum number of results to return in a single call.
lgmMaxResults :: Lens' ListGroupMembers (Maybe Natural)
lgmMaxResults = lens _lgmMaxResults (\s a -> s {_lgmMaxResults = a}) . mapping _Nat

-- | The identifier for the organization under which the group exists.
lgmOrganizationId :: Lens' ListGroupMembers Text
lgmOrganizationId = lens _lgmOrganizationId (\s a -> s {_lgmOrganizationId = a})

-- | The identifier for the group to which the members (users or groups) are associated.
lgmGroupId :: Lens' ListGroupMembers Text
lgmGroupId = lens _lgmGroupId (\s a -> s {_lgmGroupId = a})

instance AWSPager ListGroupMembers where
  page rq rs
    | stop (rs ^. lgmrrsNextToken) = Nothing
    | stop (rs ^. lgmrrsMembers) = Nothing
    | otherwise =
      Just $ rq & lgmNextToken .~ rs ^. lgmrrsNextToken

instance AWSRequest ListGroupMembers where
  type Rs ListGroupMembers = ListGroupMembersResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          ListGroupMembersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Members" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListGroupMembers

instance NFData ListGroupMembers

instance ToHeaders ListGroupMembers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.ListGroupMembers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListGroupMembers where
  toJSON ListGroupMembers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lgmNextToken,
            ("MaxResults" .=) <$> _lgmMaxResults,
            Just ("OrganizationId" .= _lgmOrganizationId),
            Just ("GroupId" .= _lgmGroupId)
          ]
      )

instance ToPath ListGroupMembers where
  toPath = const "/"

instance ToQuery ListGroupMembers where
  toQuery = const mempty

-- | /See:/ 'listGroupMembersResponse' smart constructor.
data ListGroupMembersResponse = ListGroupMembersResponse'
  { _lgmrrsNextToken ::
      !(Maybe Text),
    _lgmrrsMembers ::
      !(Maybe [Member]),
    _lgmrrsResponseStatus ::
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

-- | Creates a value of 'ListGroupMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgmrrsNextToken' - The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- * 'lgmrrsMembers' - The members associated to the group.
--
-- * 'lgmrrsResponseStatus' - -- | The response status code.
listGroupMembersResponse ::
  -- | 'lgmrrsResponseStatus'
  Int ->
  ListGroupMembersResponse
listGroupMembersResponse pResponseStatus_ =
  ListGroupMembersResponse'
    { _lgmrrsNextToken =
        Nothing,
      _lgmrrsMembers = Nothing,
      _lgmrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
lgmrrsNextToken :: Lens' ListGroupMembersResponse (Maybe Text)
lgmrrsNextToken = lens _lgmrrsNextToken (\s a -> s {_lgmrrsNextToken = a})

-- | The members associated to the group.
lgmrrsMembers :: Lens' ListGroupMembersResponse [Member]
lgmrrsMembers = lens _lgmrrsMembers (\s a -> s {_lgmrrsMembers = a}) . _Default . _Coerce

-- | -- | The response status code.
lgmrrsResponseStatus :: Lens' ListGroupMembersResponse Int
lgmrrsResponseStatus = lens _lgmrrsResponseStatus (\s a -> s {_lgmrrsResponseStatus = a})

instance NFData ListGroupMembersResponse

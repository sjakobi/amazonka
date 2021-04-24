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
-- Module      : Network.AWS.GuardDuty.ListInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GuardDuty membership invitations that were sent to the current AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.GuardDuty.ListInvitations
  ( -- * Creating a Request
    listInvitations,
    ListInvitations,

    -- * Request Lenses
    liNextToken,
    liMaxResults,

    -- * Destructuring the Response
    listInvitationsResponse,
    ListInvitationsResponse,

    -- * Response Lenses
    lirrsNextToken,
    lirrsInvitations,
    lirrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInvitations' smart constructor.
data ListInvitations = ListInvitations'
  { _liNextToken ::
      !(Maybe Text),
    _liMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInvitations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
--
-- * 'liMaxResults' - You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.
listInvitations ::
  ListInvitations
listInvitations =
  ListInvitations'
    { _liNextToken = Nothing,
      _liMaxResults = Nothing
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
liNextToken :: Lens' ListInvitations (Maybe Text)
liNextToken = lens _liNextToken (\s a -> s {_liNextToken = a})

-- | You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.
liMaxResults :: Lens' ListInvitations (Maybe Natural)
liMaxResults = lens _liMaxResults (\s a -> s {_liMaxResults = a}) . mapping _Nat

instance AWSPager ListInvitations where
  page rq rs
    | stop (rs ^. lirrsNextToken) = Nothing
    | stop (rs ^. lirrsInvitations) = Nothing
    | otherwise =
      Just $ rq & liNextToken .~ rs ^. lirrsNextToken

instance AWSRequest ListInvitations where
  type Rs ListInvitations = ListInvitationsResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          ListInvitationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "invitations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInvitations

instance NFData ListInvitations

instance ToHeaders ListInvitations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListInvitations where
  toPath = const "/invitation"

instance ToQuery ListInvitations where
  toQuery ListInvitations' {..} =
    mconcat
      [ "nextToken" =: _liNextToken,
        "maxResults" =: _liMaxResults
      ]

-- | /See:/ 'listInvitationsResponse' smart constructor.
data ListInvitationsResponse = ListInvitationsResponse'
  { _lirrsNextToken ::
      !(Maybe Text),
    _lirrsInvitations ::
      !(Maybe [Invitation]),
    _lirrsResponseStatus ::
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

-- | Creates a value of 'ListInvitationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirrsNextToken' - The pagination parameter to be used on the next list operation to retrieve more items.
--
-- * 'lirrsInvitations' - A list of invitation descriptions.
--
-- * 'lirrsResponseStatus' - -- | The response status code.
listInvitationsResponse ::
  -- | 'lirrsResponseStatus'
  Int ->
  ListInvitationsResponse
listInvitationsResponse pResponseStatus_ =
  ListInvitationsResponse'
    { _lirrsNextToken = Nothing,
      _lirrsInvitations = Nothing,
      _lirrsResponseStatus = pResponseStatus_
    }

-- | The pagination parameter to be used on the next list operation to retrieve more items.
lirrsNextToken :: Lens' ListInvitationsResponse (Maybe Text)
lirrsNextToken = lens _lirrsNextToken (\s a -> s {_lirrsNextToken = a})

-- | A list of invitation descriptions.
lirrsInvitations :: Lens' ListInvitationsResponse [Invitation]
lirrsInvitations = lens _lirrsInvitations (\s a -> s {_lirrsInvitations = a}) . _Default . _Coerce

-- | -- | The response status code.
lirrsResponseStatus :: Lens' ListInvitationsResponse Int
lirrsResponseStatus = lens _lirrsResponseStatus (\s a -> s {_lirrsResponseStatus = a})

instance NFData ListInvitationsResponse

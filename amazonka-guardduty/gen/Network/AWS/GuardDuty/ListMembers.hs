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
-- Module      : Network.AWS.GuardDuty.ListMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists details about all member accounts for the current GuardDuty administrator account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.GuardDuty.ListMembers
  ( -- * Creating a Request
    listMembers,
    ListMembers,

    -- * Request Lenses
    lmNextToken,
    lmMaxResults,
    lmOnlyAssociated,
    lmDetectorId,

    -- * Destructuring the Response
    listMembersResponse,
    ListMembersResponse,

    -- * Response Lenses
    lmrrsNextToken,
    lmrrsMembers,
    lmrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listMembers' smart constructor.
data ListMembers = ListMembers'
  { _lmNextToken ::
      !(Maybe Text),
    _lmMaxResults :: !(Maybe Nat),
    _lmOnlyAssociated :: !(Maybe Text),
    _lmDetectorId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmNextToken' - You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
--
-- * 'lmMaxResults' - You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.
--
-- * 'lmOnlyAssociated' - Specifies whether to only return associated members or to return all members (including members who haven't been invited yet or have been disassociated).
--
-- * 'lmDetectorId' - The unique ID of the detector the member is associated with.
listMembers ::
  -- | 'lmDetectorId'
  Text ->
  ListMembers
listMembers pDetectorId_ =
  ListMembers'
    { _lmNextToken = Nothing,
      _lmMaxResults = Nothing,
      _lmOnlyAssociated = Nothing,
      _lmDetectorId = pDetectorId_
    }

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
lmNextToken :: Lens' ListMembers (Maybe Text)
lmNextToken = lens _lmNextToken (\s a -> s {_lmNextToken = a})

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.
lmMaxResults :: Lens' ListMembers (Maybe Natural)
lmMaxResults = lens _lmMaxResults (\s a -> s {_lmMaxResults = a}) . mapping _Nat

-- | Specifies whether to only return associated members or to return all members (including members who haven't been invited yet or have been disassociated).
lmOnlyAssociated :: Lens' ListMembers (Maybe Text)
lmOnlyAssociated = lens _lmOnlyAssociated (\s a -> s {_lmOnlyAssociated = a})

-- | The unique ID of the detector the member is associated with.
lmDetectorId :: Lens' ListMembers Text
lmDetectorId = lens _lmDetectorId (\s a -> s {_lmDetectorId = a})

instance AWSPager ListMembers where
  page rq rs
    | stop (rs ^. lmrrsNextToken) = Nothing
    | stop (rs ^. lmrrsMembers) = Nothing
    | otherwise =
      Just $ rq & lmNextToken .~ rs ^. lmrrsNextToken

instance AWSRequest ListMembers where
  type Rs ListMembers = ListMembersResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          ListMembersResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "members" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListMembers

instance NFData ListMembers

instance ToHeaders ListMembers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListMembers where
  toPath ListMembers' {..} =
    mconcat
      ["/detector/", toBS _lmDetectorId, "/member"]

instance ToQuery ListMembers where
  toQuery ListMembers' {..} =
    mconcat
      [ "nextToken" =: _lmNextToken,
        "maxResults" =: _lmMaxResults,
        "onlyAssociated" =: _lmOnlyAssociated
      ]

-- | /See:/ 'listMembersResponse' smart constructor.
data ListMembersResponse = ListMembersResponse'
  { _lmrrsNextToken ::
      !(Maybe Text),
    _lmrrsMembers ::
      !(Maybe [Member]),
    _lmrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrrsNextToken' - The pagination parameter to be used on the next list operation to retrieve more items.
--
-- * 'lmrrsMembers' - A list of members.
--
-- * 'lmrrsResponseStatus' - -- | The response status code.
listMembersResponse ::
  -- | 'lmrrsResponseStatus'
  Int ->
  ListMembersResponse
listMembersResponse pResponseStatus_ =
  ListMembersResponse'
    { _lmrrsNextToken = Nothing,
      _lmrrsMembers = Nothing,
      _lmrrsResponseStatus = pResponseStatus_
    }

-- | The pagination parameter to be used on the next list operation to retrieve more items.
lmrrsNextToken :: Lens' ListMembersResponse (Maybe Text)
lmrrsNextToken = lens _lmrrsNextToken (\s a -> s {_lmrrsNextToken = a})

-- | A list of members.
lmrrsMembers :: Lens' ListMembersResponse [Member]
lmrrsMembers = lens _lmrrsMembers (\s a -> s {_lmrrsMembers = a}) . _Default . _Coerce

-- | -- | The response status code.
lmrrsResponseStatus :: Lens' ListMembersResponse Int
lmrrsResponseStatus = lens _lmrrsResponseStatus (\s a -> s {_lmrrsResponseStatus = a})

instance NFData ListMembersResponse

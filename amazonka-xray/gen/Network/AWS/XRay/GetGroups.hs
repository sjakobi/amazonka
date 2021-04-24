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
-- Module      : Network.AWS.XRay.GetGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all active group details.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetGroups
  ( -- * Creating a Request
    getGroups,
    GetGroups,

    -- * Request Lenses
    ggNextToken,

    -- * Destructuring the Response
    getGroupsResponse,
    GetGroupsResponse,

    -- * Response Lenses
    ggrrsGroups,
    ggrrsNextToken,
    ggrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getGroups' smart constructor.
newtype GetGroups = GetGroups'
  { _ggNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggNextToken' - Pagination token.
getGroups ::
  GetGroups
getGroups = GetGroups' {_ggNextToken = Nothing}

-- | Pagination token.
ggNextToken :: Lens' GetGroups (Maybe Text)
ggNextToken = lens _ggNextToken (\s a -> s {_ggNextToken = a})

instance AWSPager GetGroups where
  page rq rs
    | stop (rs ^. ggrrsNextToken) = Nothing
    | stop (rs ^. ggrrsGroups) = Nothing
    | otherwise =
      Just $ rq & ggNextToken .~ rs ^. ggrrsNextToken

instance AWSRequest GetGroups where
  type Rs GetGroups = GetGroupsResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetGroupsResponse'
            <$> (x .?> "Groups" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetGroups

instance NFData GetGroups

instance ToHeaders GetGroups where
  toHeaders = const mempty

instance ToJSON GetGroups where
  toJSON GetGroups' {..} =
    object
      (catMaybes [("NextToken" .=) <$> _ggNextToken])

instance ToPath GetGroups where
  toPath = const "/Groups"

instance ToQuery GetGroups where
  toQuery = const mempty

-- | /See:/ 'getGroupsResponse' smart constructor.
data GetGroupsResponse = GetGroupsResponse'
  { _ggrrsGroups ::
      !(Maybe [GroupSummary]),
    _ggrrsNextToken :: !(Maybe Text),
    _ggrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrrsGroups' - The collection of all active groups.
--
-- * 'ggrrsNextToken' - Pagination token.
--
-- * 'ggrrsResponseStatus' - -- | The response status code.
getGroupsResponse ::
  -- | 'ggrrsResponseStatus'
  Int ->
  GetGroupsResponse
getGroupsResponse pResponseStatus_ =
  GetGroupsResponse'
    { _ggrrsGroups = Nothing,
      _ggrrsNextToken = Nothing,
      _ggrrsResponseStatus = pResponseStatus_
    }

-- | The collection of all active groups.
ggrrsGroups :: Lens' GetGroupsResponse [GroupSummary]
ggrrsGroups = lens _ggrrsGroups (\s a -> s {_ggrrsGroups = a}) . _Default . _Coerce

-- | Pagination token.
ggrrsNextToken :: Lens' GetGroupsResponse (Maybe Text)
ggrrsNextToken = lens _ggrrsNextToken (\s a -> s {_ggrrsNextToken = a})

-- | -- | The response status code.
ggrrsResponseStatus :: Lens' GetGroupsResponse Int
ggrrsResponseStatus = lens _ggrrsResponseStatus (\s a -> s {_ggrrsResponseStatus = a})

instance NFData GetGroupsResponse

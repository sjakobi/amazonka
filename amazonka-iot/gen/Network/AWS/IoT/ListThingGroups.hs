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
-- Module      : Network.AWS.IoT.ListThingGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the thing groups in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingGroups
  ( -- * Creating a Request
    listThingGroups,
    ListThingGroups,

    -- * Request Lenses
    ltgNamePrefixFilter,
    ltgNextToken,
    ltgMaxResults,
    ltgRecursive,
    ltgParentGroup,

    -- * Destructuring the Response
    listThingGroupsResponse,
    ListThingGroupsResponse,

    -- * Response Lenses
    ltgrrsNextToken,
    ltgrrsThingGroups,
    ltgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listThingGroups' smart constructor.
data ListThingGroups = ListThingGroups'
  { _ltgNamePrefixFilter ::
      !(Maybe Text),
    _ltgNextToken :: !(Maybe Text),
    _ltgMaxResults :: !(Maybe Nat),
    _ltgRecursive :: !(Maybe Bool),
    _ltgParentGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListThingGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgNamePrefixFilter' - A filter that limits the results to those with the specified name prefix.
--
-- * 'ltgNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltgMaxResults' - The maximum number of results to return at one time.
--
-- * 'ltgRecursive' - If true, return child groups as well.
--
-- * 'ltgParentGroup' - A filter that limits the results to those with the specified parent group.
listThingGroups ::
  ListThingGroups
listThingGroups =
  ListThingGroups'
    { _ltgNamePrefixFilter = Nothing,
      _ltgNextToken = Nothing,
      _ltgMaxResults = Nothing,
      _ltgRecursive = Nothing,
      _ltgParentGroup = Nothing
    }

-- | A filter that limits the results to those with the specified name prefix.
ltgNamePrefixFilter :: Lens' ListThingGroups (Maybe Text)
ltgNamePrefixFilter = lens _ltgNamePrefixFilter (\s a -> s {_ltgNamePrefixFilter = a})

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltgNextToken :: Lens' ListThingGroups (Maybe Text)
ltgNextToken = lens _ltgNextToken (\s a -> s {_ltgNextToken = a})

-- | The maximum number of results to return at one time.
ltgMaxResults :: Lens' ListThingGroups (Maybe Natural)
ltgMaxResults = lens _ltgMaxResults (\s a -> s {_ltgMaxResults = a}) . mapping _Nat

-- | If true, return child groups as well.
ltgRecursive :: Lens' ListThingGroups (Maybe Bool)
ltgRecursive = lens _ltgRecursive (\s a -> s {_ltgRecursive = a})

-- | A filter that limits the results to those with the specified parent group.
ltgParentGroup :: Lens' ListThingGroups (Maybe Text)
ltgParentGroup = lens _ltgParentGroup (\s a -> s {_ltgParentGroup = a})

instance AWSPager ListThingGroups where
  page rq rs
    | stop (rs ^. ltgrrsNextToken) = Nothing
    | stop (rs ^. ltgrrsThingGroups) = Nothing
    | otherwise =
      Just $ rq & ltgNextToken .~ rs ^. ltgrrsNextToken

instance AWSRequest ListThingGroups where
  type Rs ListThingGroups = ListThingGroupsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingGroupsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "thingGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingGroups

instance NFData ListThingGroups

instance ToHeaders ListThingGroups where
  toHeaders = const mempty

instance ToPath ListThingGroups where
  toPath = const "/thing-groups"

instance ToQuery ListThingGroups where
  toQuery ListThingGroups' {..} =
    mconcat
      [ "namePrefixFilter" =: _ltgNamePrefixFilter,
        "nextToken" =: _ltgNextToken,
        "maxResults" =: _ltgMaxResults,
        "recursive" =: _ltgRecursive,
        "parentGroup" =: _ltgParentGroup
      ]

-- | /See:/ 'listThingGroupsResponse' smart constructor.
data ListThingGroupsResponse = ListThingGroupsResponse'
  { _ltgrrsNextToken ::
      !(Maybe Text),
    _ltgrrsThingGroups ::
      !( Maybe
           [GroupNameAndARN]
       ),
    _ltgrrsResponseStatus ::
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

-- | Creates a value of 'ListThingGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgrrsNextToken' - The token to use to get the next set of results. Will not be returned if operation has returned all results.
--
-- * 'ltgrrsThingGroups' - The thing groups.
--
-- * 'ltgrrsResponseStatus' - -- | The response status code.
listThingGroupsResponse ::
  -- | 'ltgrrsResponseStatus'
  Int ->
  ListThingGroupsResponse
listThingGroupsResponse pResponseStatus_ =
  ListThingGroupsResponse'
    { _ltgrrsNextToken =
        Nothing,
      _ltgrrsThingGroups = Nothing,
      _ltgrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results. Will not be returned if operation has returned all results.
ltgrrsNextToken :: Lens' ListThingGroupsResponse (Maybe Text)
ltgrrsNextToken = lens _ltgrrsNextToken (\s a -> s {_ltgrrsNextToken = a})

-- | The thing groups.
ltgrrsThingGroups :: Lens' ListThingGroupsResponse [GroupNameAndARN]
ltgrrsThingGroups = lens _ltgrrsThingGroups (\s a -> s {_ltgrrsThingGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
ltgrrsResponseStatus :: Lens' ListThingGroupsResponse Int
ltgrrsResponseStatus = lens _ltgrrsResponseStatus (\s a -> s {_ltgrrsResponseStatus = a})

instance NFData ListThingGroupsResponse

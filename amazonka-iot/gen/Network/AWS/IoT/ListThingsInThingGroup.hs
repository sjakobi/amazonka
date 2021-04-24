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
-- Module      : Network.AWS.IoT.ListThingsInThingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the things in the specified group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingsInThingGroup
  ( -- * Creating a Request
    listThingsInThingGroup,
    ListThingsInThingGroup,

    -- * Request Lenses
    ltitgNextToken,
    ltitgMaxResults,
    ltitgRecursive,
    ltitgThingGroupName,

    -- * Destructuring the Response
    listThingsInThingGroupResponse,
    ListThingsInThingGroupResponse,

    -- * Response Lenses
    ltitgrrsNextToken,
    ltitgrrsThings,
    ltitgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listThingsInThingGroup' smart constructor.
data ListThingsInThingGroup = ListThingsInThingGroup'
  { _ltitgNextToken ::
      !(Maybe Text),
    _ltitgMaxResults ::
      !(Maybe Nat),
    _ltitgRecursive ::
      !(Maybe Bool),
    _ltitgThingGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListThingsInThingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltitgNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltitgMaxResults' - The maximum number of results to return at one time.
--
-- * 'ltitgRecursive' - When true, list things in this thing group and in all child groups as well.
--
-- * 'ltitgThingGroupName' - The thing group name.
listThingsInThingGroup ::
  -- | 'ltitgThingGroupName'
  Text ->
  ListThingsInThingGroup
listThingsInThingGroup pThingGroupName_ =
  ListThingsInThingGroup'
    { _ltitgNextToken = Nothing,
      _ltitgMaxResults = Nothing,
      _ltitgRecursive = Nothing,
      _ltitgThingGroupName = pThingGroupName_
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltitgNextToken :: Lens' ListThingsInThingGroup (Maybe Text)
ltitgNextToken = lens _ltitgNextToken (\s a -> s {_ltitgNextToken = a})

-- | The maximum number of results to return at one time.
ltitgMaxResults :: Lens' ListThingsInThingGroup (Maybe Natural)
ltitgMaxResults = lens _ltitgMaxResults (\s a -> s {_ltitgMaxResults = a}) . mapping _Nat

-- | When true, list things in this thing group and in all child groups as well.
ltitgRecursive :: Lens' ListThingsInThingGroup (Maybe Bool)
ltitgRecursive = lens _ltitgRecursive (\s a -> s {_ltitgRecursive = a})

-- | The thing group name.
ltitgThingGroupName :: Lens' ListThingsInThingGroup Text
ltitgThingGroupName = lens _ltitgThingGroupName (\s a -> s {_ltitgThingGroupName = a})

instance AWSPager ListThingsInThingGroup where
  page rq rs
    | stop (rs ^. ltitgrrsNextToken) = Nothing
    | stop (rs ^. ltitgrrsThings) = Nothing
    | otherwise =
      Just $ rq & ltitgNextToken .~ rs ^. ltitgrrsNextToken

instance AWSRequest ListThingsInThingGroup where
  type
    Rs ListThingsInThingGroup =
      ListThingsInThingGroupResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingsInThingGroupResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "things" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingsInThingGroup

instance NFData ListThingsInThingGroup

instance ToHeaders ListThingsInThingGroup where
  toHeaders = const mempty

instance ToPath ListThingsInThingGroup where
  toPath ListThingsInThingGroup' {..} =
    mconcat
      [ "/thing-groups/",
        toBS _ltitgThingGroupName,
        "/things"
      ]

instance ToQuery ListThingsInThingGroup where
  toQuery ListThingsInThingGroup' {..} =
    mconcat
      [ "nextToken" =: _ltitgNextToken,
        "maxResults" =: _ltitgMaxResults,
        "recursive" =: _ltitgRecursive
      ]

-- | /See:/ 'listThingsInThingGroupResponse' smart constructor.
data ListThingsInThingGroupResponse = ListThingsInThingGroupResponse'
  { _ltitgrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltitgrrsThings ::
      !( Maybe
           [Text]
       ),
    _ltitgrrsResponseStatus ::
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

-- | Creates a value of 'ListThingsInThingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltitgrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'ltitgrrsThings' - The things in the specified thing group.
--
-- * 'ltitgrrsResponseStatus' - -- | The response status code.
listThingsInThingGroupResponse ::
  -- | 'ltitgrrsResponseStatus'
  Int ->
  ListThingsInThingGroupResponse
listThingsInThingGroupResponse pResponseStatus_ =
  ListThingsInThingGroupResponse'
    { _ltitgrrsNextToken =
        Nothing,
      _ltitgrrsThings = Nothing,
      _ltitgrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
ltitgrrsNextToken :: Lens' ListThingsInThingGroupResponse (Maybe Text)
ltitgrrsNextToken = lens _ltitgrrsNextToken (\s a -> s {_ltitgrrsNextToken = a})

-- | The things in the specified thing group.
ltitgrrsThings :: Lens' ListThingsInThingGroupResponse [Text]
ltitgrrsThings = lens _ltitgrrsThings (\s a -> s {_ltitgrrsThings = a}) . _Default . _Coerce

-- | -- | The response status code.
ltitgrrsResponseStatus :: Lens' ListThingsInThingGroupResponse Int
ltitgrrsResponseStatus = lens _ltitgrrsResponseStatus (\s a -> s {_ltitgrrsResponseStatus = a})

instance NFData ListThingsInThingGroupResponse

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
-- Module      : Network.AWS.IoT.ListThingGroupsForThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the thing groups to which the specified thing belongs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingGroupsForThing
  ( -- * Creating a Request
    listThingGroupsForThing,
    ListThingGroupsForThing,

    -- * Request Lenses
    ltgftNextToken,
    ltgftMaxResults,
    ltgftThingName,

    -- * Destructuring the Response
    listThingGroupsForThingResponse,
    ListThingGroupsForThingResponse,

    -- * Response Lenses
    ltgftrrsNextToken,
    ltgftrrsThingGroups,
    ltgftrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listThingGroupsForThing' smart constructor.
data ListThingGroupsForThing = ListThingGroupsForThing'
  { _ltgftNextToken ::
      !(Maybe Text),
    _ltgftMaxResults ::
      !(Maybe Nat),
    _ltgftThingName ::
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

-- | Creates a value of 'ListThingGroupsForThing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgftNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltgftMaxResults' - The maximum number of results to return at one time.
--
-- * 'ltgftThingName' - The thing name.
listThingGroupsForThing ::
  -- | 'ltgftThingName'
  Text ->
  ListThingGroupsForThing
listThingGroupsForThing pThingName_ =
  ListThingGroupsForThing'
    { _ltgftNextToken = Nothing,
      _ltgftMaxResults = Nothing,
      _ltgftThingName = pThingName_
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltgftNextToken :: Lens' ListThingGroupsForThing (Maybe Text)
ltgftNextToken = lens _ltgftNextToken (\s a -> s {_ltgftNextToken = a})

-- | The maximum number of results to return at one time.
ltgftMaxResults :: Lens' ListThingGroupsForThing (Maybe Natural)
ltgftMaxResults = lens _ltgftMaxResults (\s a -> s {_ltgftMaxResults = a}) . mapping _Nat

-- | The thing name.
ltgftThingName :: Lens' ListThingGroupsForThing Text
ltgftThingName = lens _ltgftThingName (\s a -> s {_ltgftThingName = a})

instance AWSPager ListThingGroupsForThing where
  page rq rs
    | stop (rs ^. ltgftrrsNextToken) = Nothing
    | stop (rs ^. ltgftrrsThingGroups) = Nothing
    | otherwise =
      Just $ rq & ltgftNextToken .~ rs ^. ltgftrrsNextToken

instance AWSRequest ListThingGroupsForThing where
  type
    Rs ListThingGroupsForThing =
      ListThingGroupsForThingResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingGroupsForThingResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "thingGroups" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingGroupsForThing

instance NFData ListThingGroupsForThing

instance ToHeaders ListThingGroupsForThing where
  toHeaders = const mempty

instance ToPath ListThingGroupsForThing where
  toPath ListThingGroupsForThing' {..} =
    mconcat
      ["/things/", toBS _ltgftThingName, "/thing-groups"]

instance ToQuery ListThingGroupsForThing where
  toQuery ListThingGroupsForThing' {..} =
    mconcat
      [ "nextToken" =: _ltgftNextToken,
        "maxResults" =: _ltgftMaxResults
      ]

-- | /See:/ 'listThingGroupsForThingResponse' smart constructor.
data ListThingGroupsForThingResponse = ListThingGroupsForThingResponse'
  { _ltgftrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltgftrrsThingGroups ::
      !( Maybe
           [GroupNameAndARN]
       ),
    _ltgftrrsResponseStatus ::
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

-- | Creates a value of 'ListThingGroupsForThingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgftrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'ltgftrrsThingGroups' - The thing groups.
--
-- * 'ltgftrrsResponseStatus' - -- | The response status code.
listThingGroupsForThingResponse ::
  -- | 'ltgftrrsResponseStatus'
  Int ->
  ListThingGroupsForThingResponse
listThingGroupsForThingResponse pResponseStatus_ =
  ListThingGroupsForThingResponse'
    { _ltgftrrsNextToken =
        Nothing,
      _ltgftrrsThingGroups = Nothing,
      _ltgftrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
ltgftrrsNextToken :: Lens' ListThingGroupsForThingResponse (Maybe Text)
ltgftrrsNextToken = lens _ltgftrrsNextToken (\s a -> s {_ltgftrrsNextToken = a})

-- | The thing groups.
ltgftrrsThingGroups :: Lens' ListThingGroupsForThingResponse [GroupNameAndARN]
ltgftrrsThingGroups = lens _ltgftrrsThingGroups (\s a -> s {_ltgftrrsThingGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
ltgftrrsResponseStatus :: Lens' ListThingGroupsForThingResponse Int
ltgftrrsResponseStatus = lens _ltgftrrsResponseStatus (\s a -> s {_ltgftrrsResponseStatus = a})

instance NFData ListThingGroupsForThingResponse

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
-- Module      : Network.AWS.IoT.ListThingRegistrationTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List bulk thing provisioning tasks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingRegistrationTasks
  ( -- * Creating a Request
    listThingRegistrationTasks,
    ListThingRegistrationTasks,

    -- * Request Lenses
    ltrtNextToken,
    ltrtStatus,
    ltrtMaxResults,

    -- * Destructuring the Response
    listThingRegistrationTasksResponse,
    ListThingRegistrationTasksResponse,

    -- * Response Lenses
    ltrtrrsNextToken,
    ltrtrrsTaskIds,
    ltrtrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listThingRegistrationTasks' smart constructor.
data ListThingRegistrationTasks = ListThingRegistrationTasks'
  { _ltrtNextToken ::
      !(Maybe Text),
    _ltrtStatus ::
      !( Maybe
           TaskStatus
       ),
    _ltrtMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListThingRegistrationTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrtNextToken' - To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
--
-- * 'ltrtStatus' - The status of the bulk thing provisioning task.
--
-- * 'ltrtMaxResults' - The maximum number of results to return at one time.
listThingRegistrationTasks ::
  ListThingRegistrationTasks
listThingRegistrationTasks =
  ListThingRegistrationTasks'
    { _ltrtNextToken =
        Nothing,
      _ltrtStatus = Nothing,
      _ltrtMaxResults = Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a previous response; otherwise __null__ to receive the first set of results.
ltrtNextToken :: Lens' ListThingRegistrationTasks (Maybe Text)
ltrtNextToken = lens _ltrtNextToken (\s a -> s {_ltrtNextToken = a})

-- | The status of the bulk thing provisioning task.
ltrtStatus :: Lens' ListThingRegistrationTasks (Maybe TaskStatus)
ltrtStatus = lens _ltrtStatus (\s a -> s {_ltrtStatus = a})

-- | The maximum number of results to return at one time.
ltrtMaxResults :: Lens' ListThingRegistrationTasks (Maybe Natural)
ltrtMaxResults = lens _ltrtMaxResults (\s a -> s {_ltrtMaxResults = a}) . mapping _Nat

instance AWSPager ListThingRegistrationTasks where
  page rq rs
    | stop (rs ^. ltrtrrsNextToken) = Nothing
    | stop (rs ^. ltrtrrsTaskIds) = Nothing
    | otherwise =
      Just $ rq & ltrtNextToken .~ rs ^. ltrtrrsNextToken

instance AWSRequest ListThingRegistrationTasks where
  type
    Rs ListThingRegistrationTasks =
      ListThingRegistrationTasksResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListThingRegistrationTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "taskIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListThingRegistrationTasks

instance NFData ListThingRegistrationTasks

instance ToHeaders ListThingRegistrationTasks where
  toHeaders = const mempty

instance ToPath ListThingRegistrationTasks where
  toPath = const "/thing-registration-tasks"

instance ToQuery ListThingRegistrationTasks where
  toQuery ListThingRegistrationTasks' {..} =
    mconcat
      [ "nextToken" =: _ltrtNextToken,
        "status" =: _ltrtStatus,
        "maxResults" =: _ltrtMaxResults
      ]

-- | /See:/ 'listThingRegistrationTasksResponse' smart constructor.
data ListThingRegistrationTasksResponse = ListThingRegistrationTasksResponse'
  { _ltrtrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltrtrrsTaskIds ::
      !( Maybe
           [Text]
       ),
    _ltrtrrsResponseStatus ::
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

-- | Creates a value of 'ListThingRegistrationTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrtrrsNextToken' - The token to use to get the next set of results, or __null__ if there are no additional results.
--
-- * 'ltrtrrsTaskIds' - A list of bulk thing provisioning task IDs.
--
-- * 'ltrtrrsResponseStatus' - -- | The response status code.
listThingRegistrationTasksResponse ::
  -- | 'ltrtrrsResponseStatus'
  Int ->
  ListThingRegistrationTasksResponse
listThingRegistrationTasksResponse pResponseStatus_ =
  ListThingRegistrationTasksResponse'
    { _ltrtrrsNextToken =
        Nothing,
      _ltrtrrsTaskIds = Nothing,
      _ltrtrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to get the next set of results, or __null__ if there are no additional results.
ltrtrrsNextToken :: Lens' ListThingRegistrationTasksResponse (Maybe Text)
ltrtrrsNextToken = lens _ltrtrrsNextToken (\s a -> s {_ltrtrrsNextToken = a})

-- | A list of bulk thing provisioning task IDs.
ltrtrrsTaskIds :: Lens' ListThingRegistrationTasksResponse [Text]
ltrtrrsTaskIds = lens _ltrtrrsTaskIds (\s a -> s {_ltrtrrsTaskIds = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrtrrsResponseStatus :: Lens' ListThingRegistrationTasksResponse Int
ltrtrrsResponseStatus = lens _ltrtrrsResponseStatus (\s a -> s {_ltrtrrsResponseStatus = a})

instance NFData ListThingRegistrationTasksResponse

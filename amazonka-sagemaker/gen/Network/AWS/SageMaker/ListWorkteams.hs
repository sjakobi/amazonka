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
-- Module      : Network.AWS.SageMaker.ListWorkteams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of private work teams that you have defined in a region. The list may be empty if no work team satisfies the filter specified in the @NameContains@ parameter.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListWorkteams
  ( -- * Creating a Request
    listWorkteams,
    ListWorkteams,

    -- * Request Lenses
    lwsSortOrder,
    lwsNextToken,
    lwsNameContains,
    lwsMaxResults,
    lwsSortBy,

    -- * Destructuring the Response
    listWorkteamsResponse,
    ListWorkteamsResponse,

    -- * Response Lenses
    lwrrsNextToken,
    lwrrsResponseStatus,
    lwrrsWorkteams,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listWorkteams' smart constructor.
data ListWorkteams = ListWorkteams'
  { _lwsSortOrder ::
      !(Maybe SortOrder),
    _lwsNextToken :: !(Maybe Text),
    _lwsNameContains :: !(Maybe Text),
    _lwsMaxResults :: !(Maybe Nat),
    _lwsSortBy ::
      !(Maybe ListWorkteamsSortByOptions)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListWorkteams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwsSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lwsNextToken' - If the result of the previous @ListWorkteams@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of labeling jobs, use the token in the next request.
--
-- * 'lwsNameContains' - A string in the work team's name. This filter returns only work teams whose name contains the specified string.
--
-- * 'lwsMaxResults' - The maximum number of work teams to return in each page of the response.
--
-- * 'lwsSortBy' - The field to sort results by. The default is @CreationTime@ .
listWorkteams ::
  ListWorkteams
listWorkteams =
  ListWorkteams'
    { _lwsSortOrder = Nothing,
      _lwsNextToken = Nothing,
      _lwsNameContains = Nothing,
      _lwsMaxResults = Nothing,
      _lwsSortBy = Nothing
    }

-- | The sort order for results. The default is @Ascending@ .
lwsSortOrder :: Lens' ListWorkteams (Maybe SortOrder)
lwsSortOrder = lens _lwsSortOrder (\s a -> s {_lwsSortOrder = a})

-- | If the result of the previous @ListWorkteams@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of labeling jobs, use the token in the next request.
lwsNextToken :: Lens' ListWorkteams (Maybe Text)
lwsNextToken = lens _lwsNextToken (\s a -> s {_lwsNextToken = a})

-- | A string in the work team's name. This filter returns only work teams whose name contains the specified string.
lwsNameContains :: Lens' ListWorkteams (Maybe Text)
lwsNameContains = lens _lwsNameContains (\s a -> s {_lwsNameContains = a})

-- | The maximum number of work teams to return in each page of the response.
lwsMaxResults :: Lens' ListWorkteams (Maybe Natural)
lwsMaxResults = lens _lwsMaxResults (\s a -> s {_lwsMaxResults = a}) . mapping _Nat

-- | The field to sort results by. The default is @CreationTime@ .
lwsSortBy :: Lens' ListWorkteams (Maybe ListWorkteamsSortByOptions)
lwsSortBy = lens _lwsSortBy (\s a -> s {_lwsSortBy = a})

instance AWSPager ListWorkteams where
  page rq rs
    | stop (rs ^. lwrrsNextToken) = Nothing
    | stop (rs ^. lwrrsWorkteams) = Nothing
    | otherwise =
      Just $ rq & lwsNextToken .~ rs ^. lwrrsNextToken

instance AWSRequest ListWorkteams where
  type Rs ListWorkteams = ListWorkteamsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListWorkteamsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "Workteams" .!@ mempty)
      )

instance Hashable ListWorkteams

instance NFData ListWorkteams

instance ToHeaders ListWorkteams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListWorkteams" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListWorkteams where
  toJSON ListWorkteams' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lwsSortOrder,
            ("NextToken" .=) <$> _lwsNextToken,
            ("NameContains" .=) <$> _lwsNameContains,
            ("MaxResults" .=) <$> _lwsMaxResults,
            ("SortBy" .=) <$> _lwsSortBy
          ]
      )

instance ToPath ListWorkteams where
  toPath = const "/"

instance ToQuery ListWorkteams where
  toQuery = const mempty

-- | /See:/ 'listWorkteamsResponse' smart constructor.
data ListWorkteamsResponse = ListWorkteamsResponse'
  { _lwrrsNextToken ::
      !(Maybe Text),
    _lwrrsResponseStatus ::
      !Int,
    _lwrrsWorkteams ::
      ![Workteam]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListWorkteamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of work teams, use it in the subsequent request.
--
-- * 'lwrrsResponseStatus' - -- | The response status code.
--
-- * 'lwrrsWorkteams' - An array of @Workteam@ objects, each describing a work team.
listWorkteamsResponse ::
  -- | 'lwrrsResponseStatus'
  Int ->
  ListWorkteamsResponse
listWorkteamsResponse pResponseStatus_ =
  ListWorkteamsResponse'
    { _lwrrsNextToken = Nothing,
      _lwrrsResponseStatus = pResponseStatus_,
      _lwrrsWorkteams = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of work teams, use it in the subsequent request.
lwrrsNextToken :: Lens' ListWorkteamsResponse (Maybe Text)
lwrrsNextToken = lens _lwrrsNextToken (\s a -> s {_lwrrsNextToken = a})

-- | -- | The response status code.
lwrrsResponseStatus :: Lens' ListWorkteamsResponse Int
lwrrsResponseStatus = lens _lwrrsResponseStatus (\s a -> s {_lwrrsResponseStatus = a})

-- | An array of @Workteam@ objects, each describing a work team.
lwrrsWorkteams :: Lens' ListWorkteamsResponse [Workteam]
lwrrsWorkteams = lens _lwrrsWorkteams (\s a -> s {_lwrrsWorkteams = a}) . _Coerce

instance NFData ListWorkteamsResponse

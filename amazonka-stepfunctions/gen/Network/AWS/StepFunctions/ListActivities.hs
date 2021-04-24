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
-- Module      : Network.AWS.StepFunctions.ListActivities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing activities.
--
--
-- If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
--
-- This operation returns paginated results.
module Network.AWS.StepFunctions.ListActivities
  ( -- * Creating a Request
    listActivities,
    ListActivities,

    -- * Request Lenses
    laNextToken,
    laMaxResults,

    -- * Destructuring the Response
    listActivitiesResponse,
    ListActivitiesResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsResponseStatus,
    larrsActivities,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'listActivities' smart constructor.
data ListActivities = ListActivities'
  { _laNextToken ::
      !(Maybe Text),
    _laMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListActivities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'laMaxResults' - The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
listActivities ::
  ListActivities
listActivities =
  ListActivities'
    { _laNextToken = Nothing,
      _laMaxResults = Nothing
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
laNextToken :: Lens' ListActivities (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
laMaxResults :: Lens' ListActivities (Maybe Natural)
laMaxResults = lens _laMaxResults (\s a -> s {_laMaxResults = a}) . mapping _Nat

instance AWSPager ListActivities where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsActivities) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListActivities where
  type Rs ListActivities = ListActivitiesResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          ListActivitiesResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "activities" .!@ mempty)
      )

instance Hashable ListActivities

instance NFData ListActivities

instance ToHeaders ListActivities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSStepFunctions.ListActivities" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListActivities where
  toJSON ListActivities' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _laNextToken,
            ("maxResults" .=) <$> _laMaxResults
          ]
      )

instance ToPath ListActivities where
  toPath = const "/"

instance ToQuery ListActivities where
  toQuery = const mempty

-- | /See:/ 'listActivitiesResponse' smart constructor.
data ListActivitiesResponse = ListActivitiesResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsResponseStatus ::
      !Int,
    _larrsActivities ::
      ![ActivityListItem]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'larrsResponseStatus' - -- | The response status code.
--
-- * 'larrsActivities' - The list of activities.
listActivitiesResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListActivitiesResponse
listActivitiesResponse pResponseStatus_ =
  ListActivitiesResponse'
    { _larrsNextToken = Nothing,
      _larrsResponseStatus = pResponseStatus_,
      _larrsActivities = mempty
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
larrsNextToken :: Lens' ListActivitiesResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListActivitiesResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

-- | The list of activities.
larrsActivities :: Lens' ListActivitiesResponse [ActivityListItem]
larrsActivities = lens _larrsActivities (\s a -> s {_larrsActivities = a}) . _Coerce

instance NFData ListActivitiesResponse

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
-- Module      : Network.AWS.SageMaker.ListTransformJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists transform jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTransformJobs
  ( -- * Creating a Request
    listTransformJobs,
    ListTransformJobs,

    -- * Request Lenses
    ltjsLastModifiedTimeBefore,
    ltjsSortOrder,
    ltjsNextToken,
    ltjsNameContains,
    ltjsMaxResults,
    ltjsCreationTimeBefore,
    ltjsLastModifiedTimeAfter,
    ltjsSortBy,
    ltjsStatusEquals,
    ltjsCreationTimeAfter,

    -- * Destructuring the Response
    listTransformJobsResponse,
    ListTransformJobsResponse,

    -- * Response Lenses
    ltjrrsNextToken,
    ltjrrsResponseStatus,
    ltjrrsTransformJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listTransformJobs' smart constructor.
data ListTransformJobs = ListTransformJobs'
  { _ltjsLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _ltjsSortOrder ::
      !(Maybe SortOrder),
    _ltjsNextToken :: !(Maybe Text),
    _ltjsNameContains :: !(Maybe Text),
    _ltjsMaxResults :: !(Maybe Nat),
    _ltjsCreationTimeBefore ::
      !(Maybe POSIX),
    _ltjsLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _ltjsSortBy :: !(Maybe SortBy),
    _ltjsStatusEquals ::
      !(Maybe TransformJobStatus),
    _ltjsCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTransformJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjsLastModifiedTimeBefore' - A filter that returns only transform jobs modified before the specified time.
--
-- * 'ltjsSortOrder' - The sort order for results. The default is @Descending@ .
--
-- * 'ltjsNextToken' - If the result of the previous @ListTransformJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of transform jobs, use the token in the next request.
--
-- * 'ltjsNameContains' - A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.
--
-- * 'ltjsMaxResults' - The maximum number of transform jobs to return in the response. The default value is @10@ .
--
-- * 'ltjsCreationTimeBefore' - A filter that returns only transform jobs created before the specified time.
--
-- * 'ltjsLastModifiedTimeAfter' - A filter that returns only transform jobs modified after the specified time.
--
-- * 'ltjsSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'ltjsStatusEquals' - A filter that retrieves only transform jobs with a specific status.
--
-- * 'ltjsCreationTimeAfter' - A filter that returns only transform jobs created after the specified time.
listTransformJobs ::
  ListTransformJobs
listTransformJobs =
  ListTransformJobs'
    { _ltjsLastModifiedTimeBefore =
        Nothing,
      _ltjsSortOrder = Nothing,
      _ltjsNextToken = Nothing,
      _ltjsNameContains = Nothing,
      _ltjsMaxResults = Nothing,
      _ltjsCreationTimeBefore = Nothing,
      _ltjsLastModifiedTimeAfter = Nothing,
      _ltjsSortBy = Nothing,
      _ltjsStatusEquals = Nothing,
      _ltjsCreationTimeAfter = Nothing
    }

-- | A filter that returns only transform jobs modified before the specified time.
ltjsLastModifiedTimeBefore :: Lens' ListTransformJobs (Maybe UTCTime)
ltjsLastModifiedTimeBefore = lens _ltjsLastModifiedTimeBefore (\s a -> s {_ltjsLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Descending@ .
ltjsSortOrder :: Lens' ListTransformJobs (Maybe SortOrder)
ltjsSortOrder = lens _ltjsSortOrder (\s a -> s {_ltjsSortOrder = a})

-- | If the result of the previous @ListTransformJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of transform jobs, use the token in the next request.
ltjsNextToken :: Lens' ListTransformJobs (Maybe Text)
ltjsNextToken = lens _ltjsNextToken (\s a -> s {_ltjsNextToken = a})

-- | A string in the transform job name. This filter returns only transform jobs whose name contains the specified string.
ltjsNameContains :: Lens' ListTransformJobs (Maybe Text)
ltjsNameContains = lens _ltjsNameContains (\s a -> s {_ltjsNameContains = a})

-- | The maximum number of transform jobs to return in the response. The default value is @10@ .
ltjsMaxResults :: Lens' ListTransformJobs (Maybe Natural)
ltjsMaxResults = lens _ltjsMaxResults (\s a -> s {_ltjsMaxResults = a}) . mapping _Nat

-- | A filter that returns only transform jobs created before the specified time.
ltjsCreationTimeBefore :: Lens' ListTransformJobs (Maybe UTCTime)
ltjsCreationTimeBefore = lens _ltjsCreationTimeBefore (\s a -> s {_ltjsCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only transform jobs modified after the specified time.
ltjsLastModifiedTimeAfter :: Lens' ListTransformJobs (Maybe UTCTime)
ltjsLastModifiedTimeAfter = lens _ltjsLastModifiedTimeAfter (\s a -> s {_ltjsLastModifiedTimeAfter = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
ltjsSortBy :: Lens' ListTransformJobs (Maybe SortBy)
ltjsSortBy = lens _ltjsSortBy (\s a -> s {_ltjsSortBy = a})

-- | A filter that retrieves only transform jobs with a specific status.
ltjsStatusEquals :: Lens' ListTransformJobs (Maybe TransformJobStatus)
ltjsStatusEquals = lens _ltjsStatusEquals (\s a -> s {_ltjsStatusEquals = a})

-- | A filter that returns only transform jobs created after the specified time.
ltjsCreationTimeAfter :: Lens' ListTransformJobs (Maybe UTCTime)
ltjsCreationTimeAfter = lens _ltjsCreationTimeAfter (\s a -> s {_ltjsCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListTransformJobs where
  page rq rs
    | stop (rs ^. ltjrrsNextToken) = Nothing
    | stop (rs ^. ltjrrsTransformJobSummaries) = Nothing
    | otherwise =
      Just $ rq & ltjsNextToken .~ rs ^. ltjrrsNextToken

instance AWSRequest ListTransformJobs where
  type Rs ListTransformJobs = ListTransformJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListTransformJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "TransformJobSummaries" .!@ mempty)
      )

instance Hashable ListTransformJobs

instance NFData ListTransformJobs

instance ToHeaders ListTransformJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListTransformJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTransformJobs where
  toJSON ListTransformJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _ltjsLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _ltjsSortOrder,
            ("NextToken" .=) <$> _ltjsNextToken,
            ("NameContains" .=) <$> _ltjsNameContains,
            ("MaxResults" .=) <$> _ltjsMaxResults,
            ("CreationTimeBefore" .=)
              <$> _ltjsCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _ltjsLastModifiedTimeAfter,
            ("SortBy" .=) <$> _ltjsSortBy,
            ("StatusEquals" .=) <$> _ltjsStatusEquals,
            ("CreationTimeAfter" .=) <$> _ltjsCreationTimeAfter
          ]
      )

instance ToPath ListTransformJobs where
  toPath = const "/"

instance ToQuery ListTransformJobs where
  toQuery = const mempty

-- | /See:/ 'listTransformJobsResponse' smart constructor.
data ListTransformJobsResponse = ListTransformJobsResponse'
  { _ltjrrsNextToken ::
      !(Maybe Text),
    _ltjrrsResponseStatus ::
      !Int,
    _ltjrrsTransformJobSummaries ::
      ![TransformJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTransformJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of transform jobs, use it in the next request.
--
-- * 'ltjrrsResponseStatus' - -- | The response status code.
--
-- * 'ltjrrsTransformJobSummaries' - An array of @TransformJobSummary@ objects.
listTransformJobsResponse ::
  -- | 'ltjrrsResponseStatus'
  Int ->
  ListTransformJobsResponse
listTransformJobsResponse pResponseStatus_ =
  ListTransformJobsResponse'
    { _ltjrrsNextToken =
        Nothing,
      _ltjrrsResponseStatus = pResponseStatus_,
      _ltjrrsTransformJobSummaries = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of transform jobs, use it in the next request.
ltjrrsNextToken :: Lens' ListTransformJobsResponse (Maybe Text)
ltjrrsNextToken = lens _ltjrrsNextToken (\s a -> s {_ltjrrsNextToken = a})

-- | -- | The response status code.
ltjrrsResponseStatus :: Lens' ListTransformJobsResponse Int
ltjrrsResponseStatus = lens _ltjrrsResponseStatus (\s a -> s {_ltjrrsResponseStatus = a})

-- | An array of @TransformJobSummary@ objects.
ltjrrsTransformJobSummaries :: Lens' ListTransformJobsResponse [TransformJobSummary]
ltjrrsTransformJobSummaries = lens _ltjrrsTransformJobSummaries (\s a -> s {_ltjrrsTransformJobSummaries = a}) . _Coerce

instance NFData ListTransformJobsResponse

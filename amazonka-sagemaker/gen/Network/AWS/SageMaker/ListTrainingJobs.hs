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
-- Module      : Network.AWS.SageMaker.ListTrainingJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists training jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTrainingJobs
  ( -- * Creating a Request
    listTrainingJobs,
    ListTrainingJobs,

    -- * Request Lenses
    ltjLastModifiedTimeBefore,
    ltjSortOrder,
    ltjNextToken,
    ltjNameContains,
    ltjMaxResults,
    ltjCreationTimeBefore,
    ltjLastModifiedTimeAfter,
    ltjSortBy,
    ltjStatusEquals,
    ltjCreationTimeAfter,

    -- * Destructuring the Response
    listTrainingJobsResponse,
    ListTrainingJobsResponse,

    -- * Response Lenses
    ltjrtrsNextToken,
    ltjrtrsResponseStatus,
    ltjrtrsTrainingJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listTrainingJobs' smart constructor.
data ListTrainingJobs = ListTrainingJobs'
  { _ltjLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _ltjSortOrder :: !(Maybe SortOrder),
    _ltjNextToken :: !(Maybe Text),
    _ltjNameContains :: !(Maybe Text),
    _ltjMaxResults :: !(Maybe Nat),
    _ltjCreationTimeBefore ::
      !(Maybe POSIX),
    _ltjLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _ltjSortBy :: !(Maybe SortBy),
    _ltjStatusEquals ::
      !(Maybe TrainingJobStatus),
    _ltjCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTrainingJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjLastModifiedTimeBefore' - A filter that returns only training jobs modified before the specified time (timestamp).
--
-- * 'ltjSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'ltjNextToken' - If the result of the previous @ListTrainingJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of training jobs, use the token in the next request.
--
-- * 'ltjNameContains' - A string in the training job name. This filter returns only training jobs whose name contains the specified string.
--
-- * 'ltjMaxResults' - The maximum number of training jobs to return in the response.
--
-- * 'ltjCreationTimeBefore' - A filter that returns only training jobs created before the specified time (timestamp).
--
-- * 'ltjLastModifiedTimeAfter' - A filter that returns only training jobs modified after the specified time (timestamp).
--
-- * 'ltjSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'ltjStatusEquals' - A filter that retrieves only training jobs with a specific status.
--
-- * 'ltjCreationTimeAfter' - A filter that returns only training jobs created after the specified time (timestamp).
listTrainingJobs ::
  ListTrainingJobs
listTrainingJobs =
  ListTrainingJobs'
    { _ltjLastModifiedTimeBefore =
        Nothing,
      _ltjSortOrder = Nothing,
      _ltjNextToken = Nothing,
      _ltjNameContains = Nothing,
      _ltjMaxResults = Nothing,
      _ltjCreationTimeBefore = Nothing,
      _ltjLastModifiedTimeAfter = Nothing,
      _ltjSortBy = Nothing,
      _ltjStatusEquals = Nothing,
      _ltjCreationTimeAfter = Nothing
    }

-- | A filter that returns only training jobs modified before the specified time (timestamp).
ltjLastModifiedTimeBefore :: Lens' ListTrainingJobs (Maybe UTCTime)
ltjLastModifiedTimeBefore = lens _ltjLastModifiedTimeBefore (\s a -> s {_ltjLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Ascending@ .
ltjSortOrder :: Lens' ListTrainingJobs (Maybe SortOrder)
ltjSortOrder = lens _ltjSortOrder (\s a -> s {_ltjSortOrder = a})

-- | If the result of the previous @ListTrainingJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of training jobs, use the token in the next request.
ltjNextToken :: Lens' ListTrainingJobs (Maybe Text)
ltjNextToken = lens _ltjNextToken (\s a -> s {_ltjNextToken = a})

-- | A string in the training job name. This filter returns only training jobs whose name contains the specified string.
ltjNameContains :: Lens' ListTrainingJobs (Maybe Text)
ltjNameContains = lens _ltjNameContains (\s a -> s {_ltjNameContains = a})

-- | The maximum number of training jobs to return in the response.
ltjMaxResults :: Lens' ListTrainingJobs (Maybe Natural)
ltjMaxResults = lens _ltjMaxResults (\s a -> s {_ltjMaxResults = a}) . mapping _Nat

-- | A filter that returns only training jobs created before the specified time (timestamp).
ltjCreationTimeBefore :: Lens' ListTrainingJobs (Maybe UTCTime)
ltjCreationTimeBefore = lens _ltjCreationTimeBefore (\s a -> s {_ltjCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only training jobs modified after the specified time (timestamp).
ltjLastModifiedTimeAfter :: Lens' ListTrainingJobs (Maybe UTCTime)
ltjLastModifiedTimeAfter = lens _ltjLastModifiedTimeAfter (\s a -> s {_ltjLastModifiedTimeAfter = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
ltjSortBy :: Lens' ListTrainingJobs (Maybe SortBy)
ltjSortBy = lens _ltjSortBy (\s a -> s {_ltjSortBy = a})

-- | A filter that retrieves only training jobs with a specific status.
ltjStatusEquals :: Lens' ListTrainingJobs (Maybe TrainingJobStatus)
ltjStatusEquals = lens _ltjStatusEquals (\s a -> s {_ltjStatusEquals = a})

-- | A filter that returns only training jobs created after the specified time (timestamp).
ltjCreationTimeAfter :: Lens' ListTrainingJobs (Maybe UTCTime)
ltjCreationTimeAfter = lens _ltjCreationTimeAfter (\s a -> s {_ltjCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListTrainingJobs where
  page rq rs
    | stop (rs ^. ltjrtrsNextToken) = Nothing
    | stop (rs ^. ltjrtrsTrainingJobSummaries) = Nothing
    | otherwise =
      Just $ rq & ltjNextToken .~ rs ^. ltjrtrsNextToken

instance AWSRequest ListTrainingJobs where
  type Rs ListTrainingJobs = ListTrainingJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListTrainingJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "TrainingJobSummaries" .!@ mempty)
      )

instance Hashable ListTrainingJobs

instance NFData ListTrainingJobs

instance ToHeaders ListTrainingJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListTrainingJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTrainingJobs where
  toJSON ListTrainingJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _ltjLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _ltjSortOrder,
            ("NextToken" .=) <$> _ltjNextToken,
            ("NameContains" .=) <$> _ltjNameContains,
            ("MaxResults" .=) <$> _ltjMaxResults,
            ("CreationTimeBefore" .=) <$> _ltjCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _ltjLastModifiedTimeAfter,
            ("SortBy" .=) <$> _ltjSortBy,
            ("StatusEquals" .=) <$> _ltjStatusEquals,
            ("CreationTimeAfter" .=) <$> _ltjCreationTimeAfter
          ]
      )

instance ToPath ListTrainingJobs where
  toPath = const "/"

instance ToQuery ListTrainingJobs where
  toQuery = const mempty

-- | /See:/ 'listTrainingJobsResponse' smart constructor.
data ListTrainingJobsResponse = ListTrainingJobsResponse'
  { _ltjrtrsNextToken ::
      !(Maybe Text),
    _ltjrtrsResponseStatus ::
      !Int,
    _ltjrtrsTrainingJobSummaries ::
      ![TrainingJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTrainingJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjrtrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of training jobs, use it in the subsequent request.
--
-- * 'ltjrtrsResponseStatus' - -- | The response status code.
--
-- * 'ltjrtrsTrainingJobSummaries' - An array of @TrainingJobSummary@ objects, each listing a training job.
listTrainingJobsResponse ::
  -- | 'ltjrtrsResponseStatus'
  Int ->
  ListTrainingJobsResponse
listTrainingJobsResponse pResponseStatus_ =
  ListTrainingJobsResponse'
    { _ltjrtrsNextToken =
        Nothing,
      _ltjrtrsResponseStatus = pResponseStatus_,
      _ltjrtrsTrainingJobSummaries = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of training jobs, use it in the subsequent request.
ltjrtrsNextToken :: Lens' ListTrainingJobsResponse (Maybe Text)
ltjrtrsNextToken = lens _ltjrtrsNextToken (\s a -> s {_ltjrtrsNextToken = a})

-- | -- | The response status code.
ltjrtrsResponseStatus :: Lens' ListTrainingJobsResponse Int
ltjrtrsResponseStatus = lens _ltjrtrsResponseStatus (\s a -> s {_ltjrtrsResponseStatus = a})

-- | An array of @TrainingJobSummary@ objects, each listing a training job.
ltjrtrsTrainingJobSummaries :: Lens' ListTrainingJobsResponse [TrainingJobSummary]
ltjrtrsTrainingJobSummaries = lens _ltjrtrsTrainingJobSummaries (\s a -> s {_ltjrtrsTrainingJobSummaries = a}) . _Coerce

instance NFData ListTrainingJobsResponse

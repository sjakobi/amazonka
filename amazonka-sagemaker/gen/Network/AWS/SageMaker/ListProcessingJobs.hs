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
-- Module      : Network.AWS.SageMaker.ListProcessingJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists processing jobs that satisfy various filters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListProcessingJobs
  ( -- * Creating a Request
    listProcessingJobs,
    ListProcessingJobs,

    -- * Request Lenses
    lpjLastModifiedTimeBefore,
    lpjSortOrder,
    lpjNextToken,
    lpjNameContains,
    lpjMaxResults,
    lpjCreationTimeBefore,
    lpjLastModifiedTimeAfter,
    lpjSortBy,
    lpjStatusEquals,
    lpjCreationTimeAfter,

    -- * Destructuring the Response
    listProcessingJobsResponse,
    ListProcessingJobsResponse,

    -- * Response Lenses
    lpjrrsNextToken,
    lpjrrsResponseStatus,
    lpjrrsProcessingJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listProcessingJobs' smart constructor.
data ListProcessingJobs = ListProcessingJobs'
  { _lpjLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lpjSortOrder ::
      !(Maybe SortOrder),
    _lpjNextToken :: !(Maybe Text),
    _lpjNameContains :: !(Maybe Text),
    _lpjMaxResults :: !(Maybe Nat),
    _lpjCreationTimeBefore ::
      !(Maybe POSIX),
    _lpjLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lpjSortBy :: !(Maybe SortBy),
    _lpjStatusEquals ::
      !(Maybe ProcessingJobStatus),
    _lpjCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListProcessingJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpjLastModifiedTimeBefore' - A filter that returns only processing jobs modified before the specified time.
--
-- * 'lpjSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lpjNextToken' - If the result of the previous @ListProcessingJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of processing jobs, use the token in the next request.
--
-- * 'lpjNameContains' - A string in the processing job name. This filter returns only processing jobs whose name contains the specified string.
--
-- * 'lpjMaxResults' - The maximum number of processing jobs to return in the response.
--
-- * 'lpjCreationTimeBefore' - A filter that returns only processing jobs created after the specified time.
--
-- * 'lpjLastModifiedTimeAfter' - A filter that returns only processing jobs modified after the specified time.
--
-- * 'lpjSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'lpjStatusEquals' - A filter that retrieves only processing jobs with a specific status.
--
-- * 'lpjCreationTimeAfter' - A filter that returns only processing jobs created after the specified time.
listProcessingJobs ::
  ListProcessingJobs
listProcessingJobs =
  ListProcessingJobs'
    { _lpjLastModifiedTimeBefore =
        Nothing,
      _lpjSortOrder = Nothing,
      _lpjNextToken = Nothing,
      _lpjNameContains = Nothing,
      _lpjMaxResults = Nothing,
      _lpjCreationTimeBefore = Nothing,
      _lpjLastModifiedTimeAfter = Nothing,
      _lpjSortBy = Nothing,
      _lpjStatusEquals = Nothing,
      _lpjCreationTimeAfter = Nothing
    }

-- | A filter that returns only processing jobs modified before the specified time.
lpjLastModifiedTimeBefore :: Lens' ListProcessingJobs (Maybe UTCTime)
lpjLastModifiedTimeBefore = lens _lpjLastModifiedTimeBefore (\s a -> s {_lpjLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Ascending@ .
lpjSortOrder :: Lens' ListProcessingJobs (Maybe SortOrder)
lpjSortOrder = lens _lpjSortOrder (\s a -> s {_lpjSortOrder = a})

-- | If the result of the previous @ListProcessingJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of processing jobs, use the token in the next request.
lpjNextToken :: Lens' ListProcessingJobs (Maybe Text)
lpjNextToken = lens _lpjNextToken (\s a -> s {_lpjNextToken = a})

-- | A string in the processing job name. This filter returns only processing jobs whose name contains the specified string.
lpjNameContains :: Lens' ListProcessingJobs (Maybe Text)
lpjNameContains = lens _lpjNameContains (\s a -> s {_lpjNameContains = a})

-- | The maximum number of processing jobs to return in the response.
lpjMaxResults :: Lens' ListProcessingJobs (Maybe Natural)
lpjMaxResults = lens _lpjMaxResults (\s a -> s {_lpjMaxResults = a}) . mapping _Nat

-- | A filter that returns only processing jobs created after the specified time.
lpjCreationTimeBefore :: Lens' ListProcessingJobs (Maybe UTCTime)
lpjCreationTimeBefore = lens _lpjCreationTimeBefore (\s a -> s {_lpjCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only processing jobs modified after the specified time.
lpjLastModifiedTimeAfter :: Lens' ListProcessingJobs (Maybe UTCTime)
lpjLastModifiedTimeAfter = lens _lpjLastModifiedTimeAfter (\s a -> s {_lpjLastModifiedTimeAfter = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
lpjSortBy :: Lens' ListProcessingJobs (Maybe SortBy)
lpjSortBy = lens _lpjSortBy (\s a -> s {_lpjSortBy = a})

-- | A filter that retrieves only processing jobs with a specific status.
lpjStatusEquals :: Lens' ListProcessingJobs (Maybe ProcessingJobStatus)
lpjStatusEquals = lens _lpjStatusEquals (\s a -> s {_lpjStatusEquals = a})

-- | A filter that returns only processing jobs created after the specified time.
lpjCreationTimeAfter :: Lens' ListProcessingJobs (Maybe UTCTime)
lpjCreationTimeAfter = lens _lpjCreationTimeAfter (\s a -> s {_lpjCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListProcessingJobs where
  page rq rs
    | stop (rs ^. lpjrrsNextToken) = Nothing
    | stop (rs ^. lpjrrsProcessingJobSummaries) = Nothing
    | otherwise =
      Just $ rq & lpjNextToken .~ rs ^. lpjrrsNextToken

instance AWSRequest ListProcessingJobs where
  type
    Rs ListProcessingJobs =
      ListProcessingJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListProcessingJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "ProcessingJobSummaries" .!@ mempty)
      )

instance Hashable ListProcessingJobs

instance NFData ListProcessingJobs

instance ToHeaders ListProcessingJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListProcessingJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProcessingJobs where
  toJSON ListProcessingJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lpjLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lpjSortOrder,
            ("NextToken" .=) <$> _lpjNextToken,
            ("NameContains" .=) <$> _lpjNameContains,
            ("MaxResults" .=) <$> _lpjMaxResults,
            ("CreationTimeBefore" .=) <$> _lpjCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lpjLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lpjSortBy,
            ("StatusEquals" .=) <$> _lpjStatusEquals,
            ("CreationTimeAfter" .=) <$> _lpjCreationTimeAfter
          ]
      )

instance ToPath ListProcessingJobs where
  toPath = const "/"

instance ToQuery ListProcessingJobs where
  toQuery = const mempty

-- | /See:/ 'listProcessingJobsResponse' smart constructor.
data ListProcessingJobsResponse = ListProcessingJobsResponse'
  { _lpjrrsNextToken ::
      !(Maybe Text),
    _lpjrrsResponseStatus ::
      !Int,
    _lpjrrsProcessingJobSummaries ::
      ![ProcessingJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListProcessingJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpjrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of processing jobs, use it in the subsequent request.
--
-- * 'lpjrrsResponseStatus' - -- | The response status code.
--
-- * 'lpjrrsProcessingJobSummaries' - An array of @ProcessingJobSummary@ objects, each listing a processing job.
listProcessingJobsResponse ::
  -- | 'lpjrrsResponseStatus'
  Int ->
  ListProcessingJobsResponse
listProcessingJobsResponse pResponseStatus_ =
  ListProcessingJobsResponse'
    { _lpjrrsNextToken =
        Nothing,
      _lpjrrsResponseStatus = pResponseStatus_,
      _lpjrrsProcessingJobSummaries = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of processing jobs, use it in the subsequent request.
lpjrrsNextToken :: Lens' ListProcessingJobsResponse (Maybe Text)
lpjrrsNextToken = lens _lpjrrsNextToken (\s a -> s {_lpjrrsNextToken = a})

-- | -- | The response status code.
lpjrrsResponseStatus :: Lens' ListProcessingJobsResponse Int
lpjrrsResponseStatus = lens _lpjrrsResponseStatus (\s a -> s {_lpjrrsResponseStatus = a})

-- | An array of @ProcessingJobSummary@ objects, each listing a processing job.
lpjrrsProcessingJobSummaries :: Lens' ListProcessingJobsResponse [ProcessingJobSummary]
lpjrrsProcessingJobSummaries = lens _lpjrrsProcessingJobSummaries (\s a -> s {_lpjrrsProcessingJobSummaries = a}) . _Coerce

instance NFData ListProcessingJobsResponse

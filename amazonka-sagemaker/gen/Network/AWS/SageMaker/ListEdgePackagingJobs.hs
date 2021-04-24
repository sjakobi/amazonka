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
-- Module      : Network.AWS.SageMaker.ListEdgePackagingJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of edge packaging jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListEdgePackagingJobs
  ( -- * Creating a Request
    listEdgePackagingJobs,
    ListEdgePackagingJobs,

    -- * Request Lenses
    lepjLastModifiedTimeBefore,
    lepjSortOrder,
    lepjNextToken,
    lepjNameContains,
    lepjMaxResults,
    lepjModelNameContains,
    lepjCreationTimeBefore,
    lepjLastModifiedTimeAfter,
    lepjSortBy,
    lepjStatusEquals,
    lepjCreationTimeAfter,

    -- * Destructuring the Response
    listEdgePackagingJobsResponse,
    ListEdgePackagingJobsResponse,

    -- * Response Lenses
    lepjrrsNextToken,
    lepjrrsResponseStatus,
    lepjrrsEdgePackagingJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listEdgePackagingJobs' smart constructor.
data ListEdgePackagingJobs = ListEdgePackagingJobs'
  { _lepjLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lepjSortOrder ::
      !(Maybe SortOrder),
    _lepjNextToken ::
      !(Maybe Text),
    _lepjNameContains ::
      !(Maybe Text),
    _lepjMaxResults ::
      !(Maybe Int),
    _lepjModelNameContains ::
      !(Maybe Text),
    _lepjCreationTimeBefore ::
      !(Maybe POSIX),
    _lepjLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lepjSortBy ::
      !( Maybe
           ListEdgePackagingJobsSortBy
       ),
    _lepjStatusEquals ::
      !( Maybe
           EdgePackagingJobStatus
       ),
    _lepjCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEdgePackagingJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lepjLastModifiedTimeBefore' - Select jobs where the job was updated before specified time.
--
-- * 'lepjSortOrder' - What direction to sort by.
--
-- * 'lepjNextToken' - The response from the last list when returning a list large enough to need tokening.
--
-- * 'lepjNameContains' - Filter for jobs containing this name in their packaging job name.
--
-- * 'lepjMaxResults' - Maximum number of results to select.
--
-- * 'lepjModelNameContains' - Filter for jobs where the model name contains this string.
--
-- * 'lepjCreationTimeBefore' - Select jobs where the job was created before specified time.
--
-- * 'lepjLastModifiedTimeAfter' - Select jobs where the job was updated after specified time.
--
-- * 'lepjSortBy' - Use to specify what column to sort by.
--
-- * 'lepjStatusEquals' - The job status to filter for.
--
-- * 'lepjCreationTimeAfter' - Select jobs where the job was created after specified time.
listEdgePackagingJobs ::
  ListEdgePackagingJobs
listEdgePackagingJobs =
  ListEdgePackagingJobs'
    { _lepjLastModifiedTimeBefore =
        Nothing,
      _lepjSortOrder = Nothing,
      _lepjNextToken = Nothing,
      _lepjNameContains = Nothing,
      _lepjMaxResults = Nothing,
      _lepjModelNameContains = Nothing,
      _lepjCreationTimeBefore = Nothing,
      _lepjLastModifiedTimeAfter = Nothing,
      _lepjSortBy = Nothing,
      _lepjStatusEquals = Nothing,
      _lepjCreationTimeAfter = Nothing
    }

-- | Select jobs where the job was updated before specified time.
lepjLastModifiedTimeBefore :: Lens' ListEdgePackagingJobs (Maybe UTCTime)
lepjLastModifiedTimeBefore = lens _lepjLastModifiedTimeBefore (\s a -> s {_lepjLastModifiedTimeBefore = a}) . mapping _Time

-- | What direction to sort by.
lepjSortOrder :: Lens' ListEdgePackagingJobs (Maybe SortOrder)
lepjSortOrder = lens _lepjSortOrder (\s a -> s {_lepjSortOrder = a})

-- | The response from the last list when returning a list large enough to need tokening.
lepjNextToken :: Lens' ListEdgePackagingJobs (Maybe Text)
lepjNextToken = lens _lepjNextToken (\s a -> s {_lepjNextToken = a})

-- | Filter for jobs containing this name in their packaging job name.
lepjNameContains :: Lens' ListEdgePackagingJobs (Maybe Text)
lepjNameContains = lens _lepjNameContains (\s a -> s {_lepjNameContains = a})

-- | Maximum number of results to select.
lepjMaxResults :: Lens' ListEdgePackagingJobs (Maybe Int)
lepjMaxResults = lens _lepjMaxResults (\s a -> s {_lepjMaxResults = a})

-- | Filter for jobs where the model name contains this string.
lepjModelNameContains :: Lens' ListEdgePackagingJobs (Maybe Text)
lepjModelNameContains = lens _lepjModelNameContains (\s a -> s {_lepjModelNameContains = a})

-- | Select jobs where the job was created before specified time.
lepjCreationTimeBefore :: Lens' ListEdgePackagingJobs (Maybe UTCTime)
lepjCreationTimeBefore = lens _lepjCreationTimeBefore (\s a -> s {_lepjCreationTimeBefore = a}) . mapping _Time

-- | Select jobs where the job was updated after specified time.
lepjLastModifiedTimeAfter :: Lens' ListEdgePackagingJobs (Maybe UTCTime)
lepjLastModifiedTimeAfter = lens _lepjLastModifiedTimeAfter (\s a -> s {_lepjLastModifiedTimeAfter = a}) . mapping _Time

-- | Use to specify what column to sort by.
lepjSortBy :: Lens' ListEdgePackagingJobs (Maybe ListEdgePackagingJobsSortBy)
lepjSortBy = lens _lepjSortBy (\s a -> s {_lepjSortBy = a})

-- | The job status to filter for.
lepjStatusEquals :: Lens' ListEdgePackagingJobs (Maybe EdgePackagingJobStatus)
lepjStatusEquals = lens _lepjStatusEquals (\s a -> s {_lepjStatusEquals = a})

-- | Select jobs where the job was created after specified time.
lepjCreationTimeAfter :: Lens' ListEdgePackagingJobs (Maybe UTCTime)
lepjCreationTimeAfter = lens _lepjCreationTimeAfter (\s a -> s {_lepjCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListEdgePackagingJobs where
  page rq rs
    | stop (rs ^. lepjrrsNextToken) = Nothing
    | stop (rs ^. lepjrrsEdgePackagingJobSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lepjNextToken .~ rs ^. lepjrrsNextToken

instance AWSRequest ListEdgePackagingJobs where
  type
    Rs ListEdgePackagingJobs =
      ListEdgePackagingJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListEdgePackagingJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "EdgePackagingJobSummaries" .!@ mempty)
      )

instance Hashable ListEdgePackagingJobs

instance NFData ListEdgePackagingJobs

instance ToHeaders ListEdgePackagingJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListEdgePackagingJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEdgePackagingJobs where
  toJSON ListEdgePackagingJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lepjLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lepjSortOrder,
            ("NextToken" .=) <$> _lepjNextToken,
            ("NameContains" .=) <$> _lepjNameContains,
            ("MaxResults" .=) <$> _lepjMaxResults,
            ("ModelNameContains" .=) <$> _lepjModelNameContains,
            ("CreationTimeBefore" .=)
              <$> _lepjCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lepjLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lepjSortBy,
            ("StatusEquals" .=) <$> _lepjStatusEquals,
            ("CreationTimeAfter" .=) <$> _lepjCreationTimeAfter
          ]
      )

instance ToPath ListEdgePackagingJobs where
  toPath = const "/"

instance ToQuery ListEdgePackagingJobs where
  toQuery = const mempty

-- | /See:/ 'listEdgePackagingJobsResponse' smart constructor.
data ListEdgePackagingJobsResponse = ListEdgePackagingJobsResponse'
  { _lepjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lepjrrsResponseStatus ::
      !Int,
    _lepjrrsEdgePackagingJobSummaries ::
      ![EdgePackagingJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEdgePackagingJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lepjrrsNextToken' - Token to use when calling the next page of results.
--
-- * 'lepjrrsResponseStatus' - -- | The response status code.
--
-- * 'lepjrrsEdgePackagingJobSummaries' - Summaries of edge packaging jobs.
listEdgePackagingJobsResponse ::
  -- | 'lepjrrsResponseStatus'
  Int ->
  ListEdgePackagingJobsResponse
listEdgePackagingJobsResponse pResponseStatus_ =
  ListEdgePackagingJobsResponse'
    { _lepjrrsNextToken =
        Nothing,
      _lepjrrsResponseStatus = pResponseStatus_,
      _lepjrrsEdgePackagingJobSummaries = mempty
    }

-- | Token to use when calling the next page of results.
lepjrrsNextToken :: Lens' ListEdgePackagingJobsResponse (Maybe Text)
lepjrrsNextToken = lens _lepjrrsNextToken (\s a -> s {_lepjrrsNextToken = a})

-- | -- | The response status code.
lepjrrsResponseStatus :: Lens' ListEdgePackagingJobsResponse Int
lepjrrsResponseStatus = lens _lepjrrsResponseStatus (\s a -> s {_lepjrrsResponseStatus = a})

-- | Summaries of edge packaging jobs.
lepjrrsEdgePackagingJobSummaries :: Lens' ListEdgePackagingJobsResponse [EdgePackagingJobSummary]
lepjrrsEdgePackagingJobSummaries = lens _lepjrrsEdgePackagingJobSummaries (\s a -> s {_lepjrrsEdgePackagingJobSummaries = a}) . _Coerce

instance NFData ListEdgePackagingJobsResponse

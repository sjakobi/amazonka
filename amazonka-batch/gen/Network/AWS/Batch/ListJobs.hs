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
-- Module      : Network.AWS.Batch.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of AWS Batch jobs.
--
--
-- You must specify only one of the following items:
--
--     * A job queue ID to return a list of jobs in that job queue
--
--     * A multi-node parallel job ID to return a list of that job's nodes
--
--     * An array job ID to return a list of that job's children
--
--
--
-- You can filter the results by job status with the @jobStatus@ parameter. If you don't specify a status, only @RUNNING@ jobs are returned.
--
--
-- This operation returns paginated results.
module Network.AWS.Batch.ListJobs
  ( -- * Creating a Request
    listJobs,
    ListJobs,

    -- * Request Lenses
    ljNextToken,
    ljMaxResults,
    ljJobQueue,
    ljJobStatus,
    ljArrayJobId,
    ljMultiNodeJobId,

    -- * Destructuring the Response
    listJobsResponse,
    ListJobsResponse,

    -- * Response Lenses
    ljrrsNextToken,
    ljrrsResponseStatus,
    ljrrsJobSummaryList,
  )
where

import Network.AWS.Batch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for @ListJobs@ .
--
--
--
-- /See:/ 'listJobs' smart constructor.
data ListJobs = ListJobs'
  { _ljNextToken ::
      !(Maybe Text),
    _ljMaxResults :: !(Maybe Int),
    _ljJobQueue :: !(Maybe Text),
    _ljJobStatus :: !(Maybe JobStatus),
    _ljArrayJobId :: !(Maybe Text),
    _ljMultiNodeJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljNextToken' - The @nextToken@ value returned from a previous paginated @ListJobs@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
--
-- * 'ljMaxResults' - The maximum number of results returned by @ListJobs@ in paginated output. When this parameter is used, @ListJobs@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListJobs@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @ListJobs@ returns up to 100 results and a @nextToken@ value if applicable.
--
-- * 'ljJobQueue' - The name or full Amazon Resource Name (ARN) of the job queue used to list jobs.
--
-- * 'ljJobStatus' - The job status used to filter jobs in the specified queue. If you don't specify a status, only @RUNNING@ jobs are returned.
--
-- * 'ljArrayJobId' - The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.
--
-- * 'ljMultiNodeJobId' - The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all nodes that are associated with the specified job.
listJobs ::
  ListJobs
listJobs =
  ListJobs'
    { _ljNextToken = Nothing,
      _ljMaxResults = Nothing,
      _ljJobQueue = Nothing,
      _ljJobStatus = Nothing,
      _ljArrayJobId = Nothing,
      _ljMultiNodeJobId = Nothing
    }

-- | The @nextToken@ value returned from a previous paginated @ListJobs@ request where @maxResults@ was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the @nextToken@ value. This value is @null@ when there are no more results to return.
ljNextToken :: Lens' ListJobs (Maybe Text)
ljNextToken = lens _ljNextToken (\s a -> s {_ljNextToken = a})

-- | The maximum number of results returned by @ListJobs@ in paginated output. When this parameter is used, @ListJobs@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListJobs@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter isn't used, then @ListJobs@ returns up to 100 results and a @nextToken@ value if applicable.
ljMaxResults :: Lens' ListJobs (Maybe Int)
ljMaxResults = lens _ljMaxResults (\s a -> s {_ljMaxResults = a})

-- | The name or full Amazon Resource Name (ARN) of the job queue used to list jobs.
ljJobQueue :: Lens' ListJobs (Maybe Text)
ljJobQueue = lens _ljJobQueue (\s a -> s {_ljJobQueue = a})

-- | The job status used to filter jobs in the specified queue. If you don't specify a status, only @RUNNING@ jobs are returned.
ljJobStatus :: Lens' ListJobs (Maybe JobStatus)
ljJobStatus = lens _ljJobStatus (\s a -> s {_ljJobStatus = a})

-- | The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the specified array.
ljArrayJobId :: Lens' ListJobs (Maybe Text)
ljArrayJobId = lens _ljArrayJobId (\s a -> s {_ljArrayJobId = a})

-- | The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all nodes that are associated with the specified job.
ljMultiNodeJobId :: Lens' ListJobs (Maybe Text)
ljMultiNodeJobId = lens _ljMultiNodeJobId (\s a -> s {_ljMultiNodeJobId = a})

instance AWSPager ListJobs where
  page rq rs
    | stop (rs ^. ljrrsNextToken) = Nothing
    | stop (rs ^. ljrrsJobSummaryList) = Nothing
    | otherwise =
      Just $ rq & ljNextToken .~ rs ^. ljrrsNextToken

instance AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request = postJSON batch
  response =
    receiveJSON
      ( \s h x ->
          ListJobsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "jobSummaryList" .!@ mempty)
      )

instance Hashable ListJobs

instance NFData ListJobs

instance ToHeaders ListJobs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListJobs where
  toJSON ListJobs' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ljNextToken,
            ("maxResults" .=) <$> _ljMaxResults,
            ("jobQueue" .=) <$> _ljJobQueue,
            ("jobStatus" .=) <$> _ljJobStatus,
            ("arrayJobId" .=) <$> _ljArrayJobId,
            ("multiNodeJobId" .=) <$> _ljMultiNodeJobId
          ]
      )

instance ToPath ListJobs where
  toPath = const "/v1/listjobs"

instance ToQuery ListJobs where
  toQuery = const mempty

-- | /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { _ljrrsNextToken ::
      !(Maybe Text),
    _ljrrsResponseStatus :: !Int,
    _ljrrsJobSummaryList :: ![JobSummary]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsNextToken' - The @nextToken@ value to include in a future @ListJobs@ request. When the results of a @ListJobs@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'ljrrsResponseStatus' - -- | The response status code.
--
-- * 'ljrrsJobSummaryList' - A list of job summaries that match the request.
listJobsResponse ::
  -- | 'ljrrsResponseStatus'
  Int ->
  ListJobsResponse
listJobsResponse pResponseStatus_ =
  ListJobsResponse'
    { _ljrrsNextToken = Nothing,
      _ljrrsResponseStatus = pResponseStatus_,
      _ljrrsJobSummaryList = mempty
    }

-- | The @nextToken@ value to include in a future @ListJobs@ request. When the results of a @ListJobs@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
ljrrsNextToken :: Lens' ListJobsResponse (Maybe Text)
ljrrsNextToken = lens _ljrrsNextToken (\s a -> s {_ljrrsNextToken = a})

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJobsResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

-- | A list of job summaries that match the request.
ljrrsJobSummaryList :: Lens' ListJobsResponse [JobSummary]
ljrrsJobSummaryList = lens _ljrrsJobSummaryList (\s a -> s {_ljrrsJobSummaryList = a}) . _Coerce

instance NFData ListJobsResponse

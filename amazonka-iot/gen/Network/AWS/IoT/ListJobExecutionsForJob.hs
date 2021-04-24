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
-- Module      : Network.AWS.IoT.ListJobExecutionsForJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the job executions for a job.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListJobExecutionsForJob
  ( -- * Creating a Request
    listJobExecutionsForJob,
    ListJobExecutionsForJob,

    -- * Request Lenses
    ljefjNextToken,
    ljefjStatus,
    ljefjMaxResults,
    ljefjJobId,

    -- * Destructuring the Response
    listJobExecutionsForJobResponse,
    ListJobExecutionsForJobResponse,

    -- * Response Lenses
    ljefjrrsNextToken,
    ljefjrrsExecutionSummaries,
    ljefjrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listJobExecutionsForJob' smart constructor.
data ListJobExecutionsForJob = ListJobExecutionsForJob'
  { _ljefjNextToken ::
      !(Maybe Text),
    _ljefjStatus ::
      !( Maybe
           JobExecutionStatus
       ),
    _ljefjMaxResults ::
      !(Maybe Nat),
    _ljefjJobId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListJobExecutionsForJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljefjNextToken' - The token to retrieve the next set of results.
--
-- * 'ljefjStatus' - The status of the job.
--
-- * 'ljefjMaxResults' - The maximum number of results to be returned per request.
--
-- * 'ljefjJobId' - The unique identifier you assigned to this job when it was created.
listJobExecutionsForJob ::
  -- | 'ljefjJobId'
  Text ->
  ListJobExecutionsForJob
listJobExecutionsForJob pJobId_ =
  ListJobExecutionsForJob'
    { _ljefjNextToken = Nothing,
      _ljefjStatus = Nothing,
      _ljefjMaxResults = Nothing,
      _ljefjJobId = pJobId_
    }

-- | The token to retrieve the next set of results.
ljefjNextToken :: Lens' ListJobExecutionsForJob (Maybe Text)
ljefjNextToken = lens _ljefjNextToken (\s a -> s {_ljefjNextToken = a})

-- | The status of the job.
ljefjStatus :: Lens' ListJobExecutionsForJob (Maybe JobExecutionStatus)
ljefjStatus = lens _ljefjStatus (\s a -> s {_ljefjStatus = a})

-- | The maximum number of results to be returned per request.
ljefjMaxResults :: Lens' ListJobExecutionsForJob (Maybe Natural)
ljefjMaxResults = lens _ljefjMaxResults (\s a -> s {_ljefjMaxResults = a}) . mapping _Nat

-- | The unique identifier you assigned to this job when it was created.
ljefjJobId :: Lens' ListJobExecutionsForJob Text
ljefjJobId = lens _ljefjJobId (\s a -> s {_ljefjJobId = a})

instance AWSPager ListJobExecutionsForJob where
  page rq rs
    | stop (rs ^. ljefjrrsNextToken) = Nothing
    | stop (rs ^. ljefjrrsExecutionSummaries) = Nothing
    | otherwise =
      Just $ rq & ljefjNextToken .~ rs ^. ljefjrrsNextToken

instance AWSRequest ListJobExecutionsForJob where
  type
    Rs ListJobExecutionsForJob =
      ListJobExecutionsForJobResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListJobExecutionsForJobResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "executionSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobExecutionsForJob

instance NFData ListJobExecutionsForJob

instance ToHeaders ListJobExecutionsForJob where
  toHeaders = const mempty

instance ToPath ListJobExecutionsForJob where
  toPath ListJobExecutionsForJob' {..} =
    mconcat ["/jobs/", toBS _ljefjJobId, "/things"]

instance ToQuery ListJobExecutionsForJob where
  toQuery ListJobExecutionsForJob' {..} =
    mconcat
      [ "nextToken" =: _ljefjNextToken,
        "status" =: _ljefjStatus,
        "maxResults" =: _ljefjMaxResults
      ]

-- | /See:/ 'listJobExecutionsForJobResponse' smart constructor.
data ListJobExecutionsForJobResponse = ListJobExecutionsForJobResponse'
  { _ljefjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ljefjrrsExecutionSummaries ::
      !( Maybe
           [JobExecutionSummaryForJob]
       ),
    _ljefjrrsResponseStatus ::
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

-- | Creates a value of 'ListJobExecutionsForJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljefjrrsNextToken' - The token for the next set of results, or __null__ if there are no additional results.
--
-- * 'ljefjrrsExecutionSummaries' - A list of job execution summaries.
--
-- * 'ljefjrrsResponseStatus' - -- | The response status code.
listJobExecutionsForJobResponse ::
  -- | 'ljefjrrsResponseStatus'
  Int ->
  ListJobExecutionsForJobResponse
listJobExecutionsForJobResponse pResponseStatus_ =
  ListJobExecutionsForJobResponse'
    { _ljefjrrsNextToken =
        Nothing,
      _ljefjrrsExecutionSummaries = Nothing,
      _ljefjrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results, or __null__ if there are no additional results.
ljefjrrsNextToken :: Lens' ListJobExecutionsForJobResponse (Maybe Text)
ljefjrrsNextToken = lens _ljefjrrsNextToken (\s a -> s {_ljefjrrsNextToken = a})

-- | A list of job execution summaries.
ljefjrrsExecutionSummaries :: Lens' ListJobExecutionsForJobResponse [JobExecutionSummaryForJob]
ljefjrrsExecutionSummaries = lens _ljefjrrsExecutionSummaries (\s a -> s {_ljefjrrsExecutionSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ljefjrrsResponseStatus :: Lens' ListJobExecutionsForJobResponse Int
ljefjrrsResponseStatus = lens _ljefjrrsResponseStatus (\s a -> s {_ljefjrrsResponseStatus = a})

instance NFData ListJobExecutionsForJobResponse

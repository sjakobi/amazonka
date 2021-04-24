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
-- Module      : Network.AWS.Transcribe.ListTranscriptionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists transcription jobs with the specified status.
module Network.AWS.Transcribe.ListTranscriptionJobs
  ( -- * Creating a Request
    listTranscriptionJobs,
    ListTranscriptionJobs,

    -- * Request Lenses
    ltjStatus,
    ltjNextToken,
    ltjMaxResults,
    ltjJobNameContains,

    -- * Destructuring the Response
    listTranscriptionJobsResponse,
    ListTranscriptionJobsResponse,

    -- * Response Lenses
    ltjrrsStatus,
    ltjrrsNextToken,
    ltjrrsTranscriptionJobSummaries,
    ltjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'listTranscriptionJobs' smart constructor.
data ListTranscriptionJobs = ListTranscriptionJobs'
  { _ltjStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _ltjNextToken ::
      !(Maybe Text),
    _ltjMaxResults ::
      !(Maybe Nat),
    _ltjJobNameContains ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTranscriptionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjStatus' - When specified, returns only transcription jobs with the specified status. Jobs are ordered by creation date, with the newest jobs returned first. If you don’t specify a status, Amazon Transcribe returns all transcription jobs ordered by creation date.
--
-- * 'ltjNextToken' - If the result of the previous request to @ListTranscriptionJobs@ was truncated, include the @NextToken@ to fetch the next set of jobs.
--
-- * 'ltjMaxResults' - The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.
--
-- * 'ltjJobNameContains' - When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.
listTranscriptionJobs ::
  ListTranscriptionJobs
listTranscriptionJobs =
  ListTranscriptionJobs'
    { _ltjStatus = Nothing,
      _ltjNextToken = Nothing,
      _ltjMaxResults = Nothing,
      _ltjJobNameContains = Nothing
    }

-- | When specified, returns only transcription jobs with the specified status. Jobs are ordered by creation date, with the newest jobs returned first. If you don’t specify a status, Amazon Transcribe returns all transcription jobs ordered by creation date.
ltjStatus :: Lens' ListTranscriptionJobs (Maybe TranscriptionJobStatus)
ltjStatus = lens _ltjStatus (\s a -> s {_ltjStatus = a})

-- | If the result of the previous request to @ListTranscriptionJobs@ was truncated, include the @NextToken@ to fetch the next set of jobs.
ltjNextToken :: Lens' ListTranscriptionJobs (Maybe Text)
ltjNextToken = lens _ltjNextToken (\s a -> s {_ltjNextToken = a})

-- | The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.
ltjMaxResults :: Lens' ListTranscriptionJobs (Maybe Natural)
ltjMaxResults = lens _ltjMaxResults (\s a -> s {_ltjMaxResults = a}) . mapping _Nat

-- | When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.
ltjJobNameContains :: Lens' ListTranscriptionJobs (Maybe Text)
ltjJobNameContains = lens _ltjJobNameContains (\s a -> s {_ltjJobNameContains = a})

instance AWSRequest ListTranscriptionJobs where
  type
    Rs ListTranscriptionJobs =
      ListTranscriptionJobsResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          ListTranscriptionJobsResponse'
            <$> (x .?> "Status")
            <*> (x .?> "NextToken")
            <*> (x .?> "TranscriptionJobSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTranscriptionJobs

instance NFData ListTranscriptionJobs

instance ToHeaders ListTranscriptionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.ListTranscriptionJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTranscriptionJobs where
  toJSON ListTranscriptionJobs' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _ltjStatus,
            ("NextToken" .=) <$> _ltjNextToken,
            ("MaxResults" .=) <$> _ltjMaxResults,
            ("JobNameContains" .=) <$> _ltjJobNameContains
          ]
      )

instance ToPath ListTranscriptionJobs where
  toPath = const "/"

instance ToQuery ListTranscriptionJobs where
  toQuery = const mempty

-- | /See:/ 'listTranscriptionJobsResponse' smart constructor.
data ListTranscriptionJobsResponse = ListTranscriptionJobsResponse'
  { _ltjrrsStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _ltjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltjrrsTranscriptionJobSummaries ::
      !( Maybe
           [TranscriptionJobSummary]
       ),
    _ltjrrsResponseStatus ::
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

-- | Creates a value of 'ListTranscriptionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltjrrsStatus' - The requested status of the jobs returned.
--
-- * 'ltjrrsNextToken' - The @ListTranscriptionJobs@ operation returns a page of jobs at a time. The maximum size of the page is set by the @MaxResults@ parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the @ListTranscriptionJobs@ operation to return in the next page of jobs.
--
-- * 'ltjrrsTranscriptionJobSummaries' - A list of objects containing summary information for a transcription job.
--
-- * 'ltjrrsResponseStatus' - -- | The response status code.
listTranscriptionJobsResponse ::
  -- | 'ltjrrsResponseStatus'
  Int ->
  ListTranscriptionJobsResponse
listTranscriptionJobsResponse pResponseStatus_ =
  ListTranscriptionJobsResponse'
    { _ltjrrsStatus =
        Nothing,
      _ltjrrsNextToken = Nothing,
      _ltjrrsTranscriptionJobSummaries = Nothing,
      _ltjrrsResponseStatus = pResponseStatus_
    }

-- | The requested status of the jobs returned.
ltjrrsStatus :: Lens' ListTranscriptionJobsResponse (Maybe TranscriptionJobStatus)
ltjrrsStatus = lens _ltjrrsStatus (\s a -> s {_ltjrrsStatus = a})

-- | The @ListTranscriptionJobs@ operation returns a page of jobs at a time. The maximum size of the page is set by the @MaxResults@ parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the @ListTranscriptionJobs@ operation to return in the next page of jobs.
ltjrrsNextToken :: Lens' ListTranscriptionJobsResponse (Maybe Text)
ltjrrsNextToken = lens _ltjrrsNextToken (\s a -> s {_ltjrrsNextToken = a})

-- | A list of objects containing summary information for a transcription job.
ltjrrsTranscriptionJobSummaries :: Lens' ListTranscriptionJobsResponse [TranscriptionJobSummary]
ltjrrsTranscriptionJobSummaries = lens _ltjrrsTranscriptionJobSummaries (\s a -> s {_ltjrrsTranscriptionJobSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ltjrrsResponseStatus :: Lens' ListTranscriptionJobsResponse Int
ltjrrsResponseStatus = lens _ltjrrsResponseStatus (\s a -> s {_ltjrrsResponseStatus = a})

instance NFData ListTranscriptionJobsResponse

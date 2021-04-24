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
-- Module      : Network.AWS.Transcribe.ListMedicalTranscriptionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists medical transcription jobs with a specified status or substring that matches their names.
module Network.AWS.Transcribe.ListMedicalTranscriptionJobs
  ( -- * Creating a Request
    listMedicalTranscriptionJobs,
    ListMedicalTranscriptionJobs,

    -- * Request Lenses
    lmtjStatus,
    lmtjNextToken,
    lmtjMaxResults,
    lmtjJobNameContains,

    -- * Destructuring the Response
    listMedicalTranscriptionJobsResponse,
    ListMedicalTranscriptionJobsResponse,

    -- * Response Lenses
    lmtjrrsStatus,
    lmtjrrsNextToken,
    lmtjrrsMedicalTranscriptionJobSummaries,
    lmtjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'listMedicalTranscriptionJobs' smart constructor.
data ListMedicalTranscriptionJobs = ListMedicalTranscriptionJobs'
  { _lmtjStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _lmtjNextToken ::
      !(Maybe Text),
    _lmtjMaxResults ::
      !(Maybe Nat),
    _lmtjJobNameContains ::
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

-- | Creates a value of 'ListMedicalTranscriptionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmtjStatus' - When specified, returns only medical transcription jobs with the specified status. Jobs are ordered by creation date, with the newest jobs returned first. If you don't specify a status, Amazon Transcribe Medical returns all transcription jobs ordered by creation date.
--
-- * 'lmtjNextToken' - If you a receive a truncated result in the previous request of @ListMedicalTranscriptionJobs@ , include @NextToken@ to fetch the next set of jobs.
--
-- * 'lmtjMaxResults' - The maximum number of medical transcription jobs to return in the response. IF there are fewer results in the list, this response contains only the actual results.
--
-- * 'lmtjJobNameContains' - When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.
listMedicalTranscriptionJobs ::
  ListMedicalTranscriptionJobs
listMedicalTranscriptionJobs =
  ListMedicalTranscriptionJobs'
    { _lmtjStatus =
        Nothing,
      _lmtjNextToken = Nothing,
      _lmtjMaxResults = Nothing,
      _lmtjJobNameContains = Nothing
    }

-- | When specified, returns only medical transcription jobs with the specified status. Jobs are ordered by creation date, with the newest jobs returned first. If you don't specify a status, Amazon Transcribe Medical returns all transcription jobs ordered by creation date.
lmtjStatus :: Lens' ListMedicalTranscriptionJobs (Maybe TranscriptionJobStatus)
lmtjStatus = lens _lmtjStatus (\s a -> s {_lmtjStatus = a})

-- | If you a receive a truncated result in the previous request of @ListMedicalTranscriptionJobs@ , include @NextToken@ to fetch the next set of jobs.
lmtjNextToken :: Lens' ListMedicalTranscriptionJobs (Maybe Text)
lmtjNextToken = lens _lmtjNextToken (\s a -> s {_lmtjNextToken = a})

-- | The maximum number of medical transcription jobs to return in the response. IF there are fewer results in the list, this response contains only the actual results.
lmtjMaxResults :: Lens' ListMedicalTranscriptionJobs (Maybe Natural)
lmtjMaxResults = lens _lmtjMaxResults (\s a -> s {_lmtjMaxResults = a}) . mapping _Nat

-- | When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.
lmtjJobNameContains :: Lens' ListMedicalTranscriptionJobs (Maybe Text)
lmtjJobNameContains = lens _lmtjJobNameContains (\s a -> s {_lmtjJobNameContains = a})

instance AWSRequest ListMedicalTranscriptionJobs where
  type
    Rs ListMedicalTranscriptionJobs =
      ListMedicalTranscriptionJobsResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          ListMedicalTranscriptionJobsResponse'
            <$> (x .?> "Status")
            <*> (x .?> "NextToken")
            <*> (x .?> "MedicalTranscriptionJobSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListMedicalTranscriptionJobs

instance NFData ListMedicalTranscriptionJobs

instance ToHeaders ListMedicalTranscriptionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Transcribe.ListMedicalTranscriptionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListMedicalTranscriptionJobs where
  toJSON ListMedicalTranscriptionJobs' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _lmtjStatus,
            ("NextToken" .=) <$> _lmtjNextToken,
            ("MaxResults" .=) <$> _lmtjMaxResults,
            ("JobNameContains" .=) <$> _lmtjJobNameContains
          ]
      )

instance ToPath ListMedicalTranscriptionJobs where
  toPath = const "/"

instance ToQuery ListMedicalTranscriptionJobs where
  toQuery = const mempty

-- | /See:/ 'listMedicalTranscriptionJobsResponse' smart constructor.
data ListMedicalTranscriptionJobsResponse = ListMedicalTranscriptionJobsResponse'
  { _lmtjrrsStatus ::
      !( Maybe
           TranscriptionJobStatus
       ),
    _lmtjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmtjrrsMedicalTranscriptionJobSummaries ::
      !( Maybe
           [MedicalTranscriptionJobSummary]
       ),
    _lmtjrrsResponseStatus ::
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

-- | Creates a value of 'ListMedicalTranscriptionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmtjrrsStatus' - The requested status of the medical transcription jobs returned.
--
-- * 'lmtjrrsNextToken' - The @ListMedicalTranscriptionJobs@ operation returns a page of jobs at a time. The maximum size of the page is set by the @MaxResults@ parameter. If the number of jobs exceeds what can fit on a page, Amazon Transcribe Medical returns the @NextPage@ token. Include the token in the next request to the @ListMedicalTranscriptionJobs@ operation to return in the next page of jobs.
--
-- * 'lmtjrrsMedicalTranscriptionJobSummaries' - A list of objects containing summary information for a transcription job.
--
-- * 'lmtjrrsResponseStatus' - -- | The response status code.
listMedicalTranscriptionJobsResponse ::
  -- | 'lmtjrrsResponseStatus'
  Int ->
  ListMedicalTranscriptionJobsResponse
listMedicalTranscriptionJobsResponse pResponseStatus_ =
  ListMedicalTranscriptionJobsResponse'
    { _lmtjrrsStatus =
        Nothing,
      _lmtjrrsNextToken = Nothing,
      _lmtjrrsMedicalTranscriptionJobSummaries =
        Nothing,
      _lmtjrrsResponseStatus =
        pResponseStatus_
    }

-- | The requested status of the medical transcription jobs returned.
lmtjrrsStatus :: Lens' ListMedicalTranscriptionJobsResponse (Maybe TranscriptionJobStatus)
lmtjrrsStatus = lens _lmtjrrsStatus (\s a -> s {_lmtjrrsStatus = a})

-- | The @ListMedicalTranscriptionJobs@ operation returns a page of jobs at a time. The maximum size of the page is set by the @MaxResults@ parameter. If the number of jobs exceeds what can fit on a page, Amazon Transcribe Medical returns the @NextPage@ token. Include the token in the next request to the @ListMedicalTranscriptionJobs@ operation to return in the next page of jobs.
lmtjrrsNextToken :: Lens' ListMedicalTranscriptionJobsResponse (Maybe Text)
lmtjrrsNextToken = lens _lmtjrrsNextToken (\s a -> s {_lmtjrrsNextToken = a})

-- | A list of objects containing summary information for a transcription job.
lmtjrrsMedicalTranscriptionJobSummaries :: Lens' ListMedicalTranscriptionJobsResponse [MedicalTranscriptionJobSummary]
lmtjrrsMedicalTranscriptionJobSummaries = lens _lmtjrrsMedicalTranscriptionJobSummaries (\s a -> s {_lmtjrrsMedicalTranscriptionJobSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lmtjrrsResponseStatus :: Lens' ListMedicalTranscriptionJobsResponse Int
lmtjrrsResponseStatus = lens _lmtjrrsResponseStatus (\s a -> s {_lmtjrrsResponseStatus = a})

instance NFData ListMedicalTranscriptionJobsResponse

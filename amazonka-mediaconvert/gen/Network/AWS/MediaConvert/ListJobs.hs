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
-- Module      : Network.AWS.MediaConvert.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
--
-- This operation returns paginated results.
module Network.AWS.MediaConvert.ListJobs
  ( -- * Creating a Request
    listJobs,
    ListJobs,

    -- * Request Lenses
    ljStatus,
    ljNextToken,
    ljMaxResults,
    ljQueue,
    ljOrder,

    -- * Destructuring the Response
    listJobsResponse,
    ListJobsResponse,

    -- * Response Lenses
    ljrrsNextToken,
    ljrrsJobs,
    ljrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listJobs' smart constructor.
data ListJobs = ListJobs'
  { _ljStatus ::
      !(Maybe JobStatus),
    _ljNextToken :: !(Maybe Text),
    _ljMaxResults :: !(Maybe Nat),
    _ljQueue :: !(Maybe Text),
    _ljOrder :: !(Maybe Order)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljStatus' - Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
--
-- * 'ljNextToken' - Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs.
--
-- * 'ljMaxResults' - Optional. Number of jobs, up to twenty, that will be returned at one time.
--
-- * 'ljQueue' - Optional. Provide a queue name to get back only jobs from that queue.
--
-- * 'ljOrder' - Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
listJobs ::
  ListJobs
listJobs =
  ListJobs'
    { _ljStatus = Nothing,
      _ljNextToken = Nothing,
      _ljMaxResults = Nothing,
      _ljQueue = Nothing,
      _ljOrder = Nothing
    }

-- | Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
ljStatus :: Lens' ListJobs (Maybe JobStatus)
ljStatus = lens _ljStatus (\s a -> s {_ljStatus = a})

-- | Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs.
ljNextToken :: Lens' ListJobs (Maybe Text)
ljNextToken = lens _ljNextToken (\s a -> s {_ljNextToken = a})

-- | Optional. Number of jobs, up to twenty, that will be returned at one time.
ljMaxResults :: Lens' ListJobs (Maybe Natural)
ljMaxResults = lens _ljMaxResults (\s a -> s {_ljMaxResults = a}) . mapping _Nat

-- | Optional. Provide a queue name to get back only jobs from that queue.
ljQueue :: Lens' ListJobs (Maybe Text)
ljQueue = lens _ljQueue (\s a -> s {_ljQueue = a})

-- | Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
ljOrder :: Lens' ListJobs (Maybe Order)
ljOrder = lens _ljOrder (\s a -> s {_ljOrder = a})

instance AWSPager ListJobs where
  page rq rs
    | stop (rs ^. ljrrsNextToken) = Nothing
    | stop (rs ^. ljrrsJobs) = Nothing
    | otherwise =
      Just $ rq & ljNextToken .~ rs ^. ljrrsNextToken

instance AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request = get mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          ListJobsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "jobs" .!@ mempty)
            <*> (pure (fromEnum s))
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

instance ToPath ListJobs where
  toPath = const "/2017-08-29/jobs"

instance ToQuery ListJobs where
  toQuery ListJobs' {..} =
    mconcat
      [ "status" =: _ljStatus,
        "nextToken" =: _ljNextToken,
        "maxResults" =: _ljMaxResults,
        "queue" =: _ljQueue,
        "order" =: _ljOrder
      ]

-- | /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { _ljrrsNextToken ::
      !(Maybe Text),
    _ljrrsJobs :: !(Maybe [Job]),
    _ljrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsNextToken' - Use this string to request the next batch of jobs.
--
-- * 'ljrrsJobs' - List of jobs
--
-- * 'ljrrsResponseStatus' - -- | The response status code.
listJobsResponse ::
  -- | 'ljrrsResponseStatus'
  Int ->
  ListJobsResponse
listJobsResponse pResponseStatus_ =
  ListJobsResponse'
    { _ljrrsNextToken = Nothing,
      _ljrrsJobs = Nothing,
      _ljrrsResponseStatus = pResponseStatus_
    }

-- | Use this string to request the next batch of jobs.
ljrrsNextToken :: Lens' ListJobsResponse (Maybe Text)
ljrrsNextToken = lens _ljrrsNextToken (\s a -> s {_ljrrsNextToken = a})

-- | List of jobs
ljrrsJobs :: Lens' ListJobsResponse [Job]
ljrrsJobs = lens _ljrrsJobs (\s a -> s {_ljrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJobsResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

instance NFData ListJobsResponse

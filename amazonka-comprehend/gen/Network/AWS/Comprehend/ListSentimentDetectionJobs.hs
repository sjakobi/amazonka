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
-- Module      : Network.AWS.Comprehend.ListSentimentDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of sentiment detection jobs that you have submitted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListSentimentDetectionJobs
  ( -- * Creating a Request
    listSentimentDetectionJobs,
    ListSentimentDetectionJobs,

    -- * Request Lenses
    lsdjNextToken,
    lsdjMaxResults,
    lsdjFilter,

    -- * Destructuring the Response
    listSentimentDetectionJobsResponse,
    ListSentimentDetectionJobsResponse,

    -- * Response Lenses
    lsdjrrsSentimentDetectionJobPropertiesList,
    lsdjrrsNextToken,
    lsdjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSentimentDetectionJobs' smart constructor.
data ListSentimentDetectionJobs = ListSentimentDetectionJobs'
  { _lsdjNextToken ::
      !(Maybe Text),
    _lsdjMaxResults ::
      !(Maybe Nat),
    _lsdjFilter ::
      !( Maybe
           SentimentDetectionJobFilter
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListSentimentDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdjNextToken' - Identifies the next page of results to return.
--
-- * 'lsdjMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'lsdjFilter' - Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
listSentimentDetectionJobs ::
  ListSentimentDetectionJobs
listSentimentDetectionJobs =
  ListSentimentDetectionJobs'
    { _lsdjNextToken =
        Nothing,
      _lsdjMaxResults = Nothing,
      _lsdjFilter = Nothing
    }

-- | Identifies the next page of results to return.
lsdjNextToken :: Lens' ListSentimentDetectionJobs (Maybe Text)
lsdjNextToken = lens _lsdjNextToken (\s a -> s {_lsdjNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
lsdjMaxResults :: Lens' ListSentimentDetectionJobs (Maybe Natural)
lsdjMaxResults = lens _lsdjMaxResults (\s a -> s {_lsdjMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
lsdjFilter :: Lens' ListSentimentDetectionJobs (Maybe SentimentDetectionJobFilter)
lsdjFilter = lens _lsdjFilter (\s a -> s {_lsdjFilter = a})

instance AWSPager ListSentimentDetectionJobs where
  page rq rs
    | stop (rs ^. lsdjrrsNextToken) = Nothing
    | stop
        (rs ^. lsdjrrsSentimentDetectionJobPropertiesList) =
      Nothing
    | otherwise =
      Just $ rq & lsdjNextToken .~ rs ^. lsdjrrsNextToken

instance AWSRequest ListSentimentDetectionJobs where
  type
    Rs ListSentimentDetectionJobs =
      ListSentimentDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListSentimentDetectionJobsResponse'
            <$> ( x .?> "SentimentDetectionJobPropertiesList"
                    .!@ mempty
                )
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListSentimentDetectionJobs

instance NFData ListSentimentDetectionJobs

instance ToHeaders ListSentimentDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListSentimentDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSentimentDetectionJobs where
  toJSON ListSentimentDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsdjNextToken,
            ("MaxResults" .=) <$> _lsdjMaxResults,
            ("Filter" .=) <$> _lsdjFilter
          ]
      )

instance ToPath ListSentimentDetectionJobs where
  toPath = const "/"

instance ToQuery ListSentimentDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listSentimentDetectionJobsResponse' smart constructor.
data ListSentimentDetectionJobsResponse = ListSentimentDetectionJobsResponse'
  { _lsdjrrsSentimentDetectionJobPropertiesList ::
      !( Maybe
           [SentimentDetectionJobProperties]
       ),
    _lsdjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lsdjrrsResponseStatus ::
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

-- | Creates a value of 'ListSentimentDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsdjrrsSentimentDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'lsdjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'lsdjrrsResponseStatus' - -- | The response status code.
listSentimentDetectionJobsResponse ::
  -- | 'lsdjrrsResponseStatus'
  Int ->
  ListSentimentDetectionJobsResponse
listSentimentDetectionJobsResponse pResponseStatus_ =
  ListSentimentDetectionJobsResponse'
    { _lsdjrrsSentimentDetectionJobPropertiesList =
        Nothing,
      _lsdjrrsNextToken = Nothing,
      _lsdjrrsResponseStatus =
        pResponseStatus_
    }

-- | A list containing the properties of each job that is returned.
lsdjrrsSentimentDetectionJobPropertiesList :: Lens' ListSentimentDetectionJobsResponse [SentimentDetectionJobProperties]
lsdjrrsSentimentDetectionJobPropertiesList = lens _lsdjrrsSentimentDetectionJobPropertiesList (\s a -> s {_lsdjrrsSentimentDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | Identifies the next page of results to return.
lsdjrrsNextToken :: Lens' ListSentimentDetectionJobsResponse (Maybe Text)
lsdjrrsNextToken = lens _lsdjrrsNextToken (\s a -> s {_lsdjrrsNextToken = a})

-- | -- | The response status code.
lsdjrrsResponseStatus :: Lens' ListSentimentDetectionJobsResponse Int
lsdjrrsResponseStatus = lens _lsdjrrsResponseStatus (\s a -> s {_lsdjrrsResponseStatus = a})

instance NFData ListSentimentDetectionJobsResponse

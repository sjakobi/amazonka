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
-- Module      : Network.AWS.Comprehend.ListKeyPhrasesDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a list of key phrase detection jobs that you have submitted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListKeyPhrasesDetectionJobs
  ( -- * Creating a Request
    listKeyPhrasesDetectionJobs,
    ListKeyPhrasesDetectionJobs,

    -- * Request Lenses
    lkpdjNextToken,
    lkpdjMaxResults,
    lkpdjFilter,

    -- * Destructuring the Response
    listKeyPhrasesDetectionJobsResponse,
    ListKeyPhrasesDetectionJobsResponse,

    -- * Response Lenses
    lkpdjrrsNextToken,
    lkpdjrrsKeyPhrasesDetectionJobPropertiesList,
    lkpdjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listKeyPhrasesDetectionJobs' smart constructor.
data ListKeyPhrasesDetectionJobs = ListKeyPhrasesDetectionJobs'
  { _lkpdjNextToken ::
      !(Maybe Text),
    _lkpdjMaxResults ::
      !(Maybe Nat),
    _lkpdjFilter ::
      !( Maybe
           KeyPhrasesDetectionJobFilter
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

-- | Creates a value of 'ListKeyPhrasesDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkpdjNextToken' - Identifies the next page of results to return.
--
-- * 'lkpdjMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'lkpdjFilter' - Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
listKeyPhrasesDetectionJobs ::
  ListKeyPhrasesDetectionJobs
listKeyPhrasesDetectionJobs =
  ListKeyPhrasesDetectionJobs'
    { _lkpdjNextToken =
        Nothing,
      _lkpdjMaxResults = Nothing,
      _lkpdjFilter = Nothing
    }

-- | Identifies the next page of results to return.
lkpdjNextToken :: Lens' ListKeyPhrasesDetectionJobs (Maybe Text)
lkpdjNextToken = lens _lkpdjNextToken (\s a -> s {_lkpdjNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
lkpdjMaxResults :: Lens' ListKeyPhrasesDetectionJobs (Maybe Natural)
lkpdjMaxResults = lens _lkpdjMaxResults (\s a -> s {_lkpdjMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
lkpdjFilter :: Lens' ListKeyPhrasesDetectionJobs (Maybe KeyPhrasesDetectionJobFilter)
lkpdjFilter = lens _lkpdjFilter (\s a -> s {_lkpdjFilter = a})

instance AWSPager ListKeyPhrasesDetectionJobs where
  page rq rs
    | stop (rs ^. lkpdjrrsNextToken) = Nothing
    | stop
        (rs ^. lkpdjrrsKeyPhrasesDetectionJobPropertiesList) =
      Nothing
    | otherwise =
      Just $ rq & lkpdjNextToken .~ rs ^. lkpdjrrsNextToken

instance AWSRequest ListKeyPhrasesDetectionJobs where
  type
    Rs ListKeyPhrasesDetectionJobs =
      ListKeyPhrasesDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListKeyPhrasesDetectionJobsResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "KeyPhrasesDetectionJobPropertiesList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListKeyPhrasesDetectionJobs

instance NFData ListKeyPhrasesDetectionJobs

instance ToHeaders ListKeyPhrasesDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListKeyPhrasesDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListKeyPhrasesDetectionJobs where
  toJSON ListKeyPhrasesDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lkpdjNextToken,
            ("MaxResults" .=) <$> _lkpdjMaxResults,
            ("Filter" .=) <$> _lkpdjFilter
          ]
      )

instance ToPath ListKeyPhrasesDetectionJobs where
  toPath = const "/"

instance ToQuery ListKeyPhrasesDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listKeyPhrasesDetectionJobsResponse' smart constructor.
data ListKeyPhrasesDetectionJobsResponse = ListKeyPhrasesDetectionJobsResponse'
  { _lkpdjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lkpdjrrsKeyPhrasesDetectionJobPropertiesList ::
      !( Maybe
           [KeyPhrasesDetectionJobProperties]
       ),
    _lkpdjrrsResponseStatus ::
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

-- | Creates a value of 'ListKeyPhrasesDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkpdjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'lkpdjrrsKeyPhrasesDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'lkpdjrrsResponseStatus' - -- | The response status code.
listKeyPhrasesDetectionJobsResponse ::
  -- | 'lkpdjrrsResponseStatus'
  Int ->
  ListKeyPhrasesDetectionJobsResponse
listKeyPhrasesDetectionJobsResponse pResponseStatus_ =
  ListKeyPhrasesDetectionJobsResponse'
    { _lkpdjrrsNextToken =
        Nothing,
      _lkpdjrrsKeyPhrasesDetectionJobPropertiesList =
        Nothing,
      _lkpdjrrsResponseStatus =
        pResponseStatus_
    }

-- | Identifies the next page of results to return.
lkpdjrrsNextToken :: Lens' ListKeyPhrasesDetectionJobsResponse (Maybe Text)
lkpdjrrsNextToken = lens _lkpdjrrsNextToken (\s a -> s {_lkpdjrrsNextToken = a})

-- | A list containing the properties of each job that is returned.
lkpdjrrsKeyPhrasesDetectionJobPropertiesList :: Lens' ListKeyPhrasesDetectionJobsResponse [KeyPhrasesDetectionJobProperties]
lkpdjrrsKeyPhrasesDetectionJobPropertiesList = lens _lkpdjrrsKeyPhrasesDetectionJobPropertiesList (\s a -> s {_lkpdjrrsKeyPhrasesDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lkpdjrrsResponseStatus :: Lens' ListKeyPhrasesDetectionJobsResponse Int
lkpdjrrsResponseStatus = lens _lkpdjrrsResponseStatus (\s a -> s {_lkpdjrrsResponseStatus = a})

instance NFData ListKeyPhrasesDetectionJobsResponse

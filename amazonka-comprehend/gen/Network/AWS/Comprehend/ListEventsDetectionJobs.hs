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
-- Module      : Network.AWS.Comprehend.ListEventsDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the events detection jobs that you have submitted.
module Network.AWS.Comprehend.ListEventsDetectionJobs
  ( -- * Creating a Request
    listEventsDetectionJobs,
    ListEventsDetectionJobs,

    -- * Request Lenses
    ledjNextToken,
    ledjMaxResults,
    ledjFilter,

    -- * Destructuring the Response
    listEventsDetectionJobsResponse,
    ListEventsDetectionJobsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsEventsDetectionJobPropertiesList,
    lrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEventsDetectionJobs' smart constructor.
data ListEventsDetectionJobs = ListEventsDetectionJobs'
  { _ledjNextToken ::
      !(Maybe Text),
    _ledjMaxResults ::
      !(Maybe Nat),
    _ledjFilter ::
      !( Maybe
           EventsDetectionJobFilter
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

-- | Creates a value of 'ListEventsDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ledjNextToken' - Identifies the next page of results to return.
--
-- * 'ledjMaxResults' - The maximum number of results to return in each page.
--
-- * 'ledjFilter' - Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
listEventsDetectionJobs ::
  ListEventsDetectionJobs
listEventsDetectionJobs =
  ListEventsDetectionJobs'
    { _ledjNextToken = Nothing,
      _ledjMaxResults = Nothing,
      _ledjFilter = Nothing
    }

-- | Identifies the next page of results to return.
ledjNextToken :: Lens' ListEventsDetectionJobs (Maybe Text)
ledjNextToken = lens _ledjNextToken (\s a -> s {_ledjNextToken = a})

-- | The maximum number of results to return in each page.
ledjMaxResults :: Lens' ListEventsDetectionJobs (Maybe Natural)
ledjMaxResults = lens _ledjMaxResults (\s a -> s {_ledjMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
ledjFilter :: Lens' ListEventsDetectionJobs (Maybe EventsDetectionJobFilter)
ledjFilter = lens _ledjFilter (\s a -> s {_ledjFilter = a})

instance AWSRequest ListEventsDetectionJobs where
  type
    Rs ListEventsDetectionJobs =
      ListEventsDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListEventsDetectionJobsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EventsDetectionJobPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListEventsDetectionJobs

instance NFData ListEventsDetectionJobs

instance ToHeaders ListEventsDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListEventsDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEventsDetectionJobs where
  toJSON ListEventsDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ledjNextToken,
            ("MaxResults" .=) <$> _ledjMaxResults,
            ("Filter" .=) <$> _ledjFilter
          ]
      )

instance ToPath ListEventsDetectionJobs where
  toPath = const "/"

instance ToQuery ListEventsDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listEventsDetectionJobsResponse' smart constructor.
data ListEventsDetectionJobsResponse = ListEventsDetectionJobsResponse'
  { _lrsNextToken ::
      !( Maybe
           Text
       ),
    _lrsEventsDetectionJobPropertiesList ::
      !( Maybe
           [EventsDetectionJobProperties]
       ),
    _lrsResponseStatus ::
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

-- | Creates a value of 'ListEventsDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - Identifies the next page of results to return.
--
-- * 'lrsEventsDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'lrsResponseStatus' - -- | The response status code.
listEventsDetectionJobsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListEventsDetectionJobsResponse
listEventsDetectionJobsResponse pResponseStatus_ =
  ListEventsDetectionJobsResponse'
    { _lrsNextToken =
        Nothing,
      _lrsEventsDetectionJobPropertiesList =
        Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | Identifies the next page of results to return.
lrsNextToken :: Lens' ListEventsDetectionJobsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | A list containing the properties of each job that is returned.
lrsEventsDetectionJobPropertiesList :: Lens' ListEventsDetectionJobsResponse [EventsDetectionJobProperties]
lrsEventsDetectionJobPropertiesList = lens _lrsEventsDetectionJobPropertiesList (\s a -> s {_lrsEventsDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListEventsDetectionJobsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListEventsDetectionJobsResponse

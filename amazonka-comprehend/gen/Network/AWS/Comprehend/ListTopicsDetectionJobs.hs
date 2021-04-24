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
-- Module      : Network.AWS.Comprehend.ListTopicsDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the topic detection jobs that you have submitted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListTopicsDetectionJobs
  ( -- * Creating a Request
    listTopicsDetectionJobs,
    ListTopicsDetectionJobs,

    -- * Request Lenses
    ltdjNextToken,
    ltdjMaxResults,
    ltdjFilter,

    -- * Destructuring the Response
    listTopicsDetectionJobsResponse,
    ListTopicsDetectionJobsResponse,

    -- * Response Lenses
    ltdjrrsNextToken,
    ltdjrrsTopicsDetectionJobPropertiesList,
    ltdjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTopicsDetectionJobs' smart constructor.
data ListTopicsDetectionJobs = ListTopicsDetectionJobs'
  { _ltdjNextToken ::
      !(Maybe Text),
    _ltdjMaxResults ::
      !(Maybe Nat),
    _ltdjFilter ::
      !( Maybe
           TopicsDetectionJobFilter
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

-- | Creates a value of 'ListTopicsDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdjNextToken' - Identifies the next page of results to return.
--
-- * 'ltdjMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'ltdjFilter' - Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.
listTopicsDetectionJobs ::
  ListTopicsDetectionJobs
listTopicsDetectionJobs =
  ListTopicsDetectionJobs'
    { _ltdjNextToken = Nothing,
      _ltdjMaxResults = Nothing,
      _ltdjFilter = Nothing
    }

-- | Identifies the next page of results to return.
ltdjNextToken :: Lens' ListTopicsDetectionJobs (Maybe Text)
ltdjNextToken = lens _ltdjNextToken (\s a -> s {_ltdjNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
ltdjMaxResults :: Lens' ListTopicsDetectionJobs (Maybe Natural)
ltdjMaxResults = lens _ltdjMaxResults (\s a -> s {_ltdjMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. Jobs can be filtered on their name, status, or the date and time that they were submitted. You can set only one filter at a time.
ltdjFilter :: Lens' ListTopicsDetectionJobs (Maybe TopicsDetectionJobFilter)
ltdjFilter = lens _ltdjFilter (\s a -> s {_ltdjFilter = a})

instance AWSPager ListTopicsDetectionJobs where
  page rq rs
    | stop (rs ^. ltdjrrsNextToken) = Nothing
    | stop
        (rs ^. ltdjrrsTopicsDetectionJobPropertiesList) =
      Nothing
    | otherwise =
      Just $ rq & ltdjNextToken .~ rs ^. ltdjrrsNextToken

instance AWSRequest ListTopicsDetectionJobs where
  type
    Rs ListTopicsDetectionJobs =
      ListTopicsDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListTopicsDetectionJobsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TopicsDetectionJobPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTopicsDetectionJobs

instance NFData ListTopicsDetectionJobs

instance ToHeaders ListTopicsDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListTopicsDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTopicsDetectionJobs where
  toJSON ListTopicsDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltdjNextToken,
            ("MaxResults" .=) <$> _ltdjMaxResults,
            ("Filter" .=) <$> _ltdjFilter
          ]
      )

instance ToPath ListTopicsDetectionJobs where
  toPath = const "/"

instance ToQuery ListTopicsDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listTopicsDetectionJobsResponse' smart constructor.
data ListTopicsDetectionJobsResponse = ListTopicsDetectionJobsResponse'
  { _ltdjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltdjrrsTopicsDetectionJobPropertiesList ::
      !( Maybe
           [TopicsDetectionJobProperties]
       ),
    _ltdjrrsResponseStatus ::
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

-- | Creates a value of 'ListTopicsDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltdjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'ltdjrrsTopicsDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'ltdjrrsResponseStatus' - -- | The response status code.
listTopicsDetectionJobsResponse ::
  -- | 'ltdjrrsResponseStatus'
  Int ->
  ListTopicsDetectionJobsResponse
listTopicsDetectionJobsResponse pResponseStatus_ =
  ListTopicsDetectionJobsResponse'
    { _ltdjrrsNextToken =
        Nothing,
      _ltdjrrsTopicsDetectionJobPropertiesList =
        Nothing,
      _ltdjrrsResponseStatus = pResponseStatus_
    }

-- | Identifies the next page of results to return.
ltdjrrsNextToken :: Lens' ListTopicsDetectionJobsResponse (Maybe Text)
ltdjrrsNextToken = lens _ltdjrrsNextToken (\s a -> s {_ltdjrrsNextToken = a})

-- | A list containing the properties of each job that is returned.
ltdjrrsTopicsDetectionJobPropertiesList :: Lens' ListTopicsDetectionJobsResponse [TopicsDetectionJobProperties]
ltdjrrsTopicsDetectionJobPropertiesList = lens _ltdjrrsTopicsDetectionJobPropertiesList (\s a -> s {_ltdjrrsTopicsDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
ltdjrrsResponseStatus :: Lens' ListTopicsDetectionJobsResponse Int
ltdjrrsResponseStatus = lens _ltdjrrsResponseStatus (\s a -> s {_ltdjrrsResponseStatus = a})

instance NFData ListTopicsDetectionJobsResponse

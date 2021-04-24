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
-- Module      : Network.AWS.Comprehend.ListEntitiesDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the entity detection jobs that you have submitted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListEntitiesDetectionJobs
  ( -- * Creating a Request
    listEntitiesDetectionJobs,
    ListEntitiesDetectionJobs,

    -- * Request Lenses
    lNextToken,
    lMaxResults,
    lFilter,

    -- * Destructuring the Response
    listEntitiesDetectionJobsResponse,
    ListEntitiesDetectionJobsResponse,

    -- * Response Lenses
    ledjrrsNextToken,
    ledjrrsEntitiesDetectionJobPropertiesList,
    ledjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEntitiesDetectionJobs' smart constructor.
data ListEntitiesDetectionJobs = ListEntitiesDetectionJobs'
  { _lNextToken ::
      !(Maybe Text),
    _lMaxResults ::
      !(Maybe Nat),
    _lFilter ::
      !( Maybe
           EntitiesDetectionJobFilter
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

-- | Creates a value of 'ListEntitiesDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - Identifies the next page of results to return.
--
-- * 'lMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'lFilter' - Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
listEntitiesDetectionJobs ::
  ListEntitiesDetectionJobs
listEntitiesDetectionJobs =
  ListEntitiesDetectionJobs'
    { _lNextToken = Nothing,
      _lMaxResults = Nothing,
      _lFilter = Nothing
    }

-- | Identifies the next page of results to return.
lNextToken :: Lens' ListEntitiesDetectionJobs (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
lMaxResults :: Lens' ListEntitiesDetectionJobs (Maybe Natural)
lMaxResults = lens _lMaxResults (\s a -> s {_lMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
lFilter :: Lens' ListEntitiesDetectionJobs (Maybe EntitiesDetectionJobFilter)
lFilter = lens _lFilter (\s a -> s {_lFilter = a})

instance AWSPager ListEntitiesDetectionJobs where
  page rq rs
    | stop (rs ^. ledjrrsNextToken) = Nothing
    | stop
        (rs ^. ledjrrsEntitiesDetectionJobPropertiesList) =
      Nothing
    | otherwise =
      Just $ rq & lNextToken .~ rs ^. ledjrrsNextToken

instance AWSRequest ListEntitiesDetectionJobs where
  type
    Rs ListEntitiesDetectionJobs =
      ListEntitiesDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListEntitiesDetectionJobsResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "EntitiesDetectionJobPropertiesList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListEntitiesDetectionJobs

instance NFData ListEntitiesDetectionJobs

instance ToHeaders ListEntitiesDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListEntitiesDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEntitiesDetectionJobs where
  toJSON ListEntitiesDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lNextToken,
            ("MaxResults" .=) <$> _lMaxResults,
            ("Filter" .=) <$> _lFilter
          ]
      )

instance ToPath ListEntitiesDetectionJobs where
  toPath = const "/"

instance ToQuery ListEntitiesDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listEntitiesDetectionJobsResponse' smart constructor.
data ListEntitiesDetectionJobsResponse = ListEntitiesDetectionJobsResponse'
  { _ledjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ledjrrsEntitiesDetectionJobPropertiesList ::
      !( Maybe
           [EntitiesDetectionJobProperties]
       ),
    _ledjrrsResponseStatus ::
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

-- | Creates a value of 'ListEntitiesDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ledjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'ledjrrsEntitiesDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'ledjrrsResponseStatus' - -- | The response status code.
listEntitiesDetectionJobsResponse ::
  -- | 'ledjrrsResponseStatus'
  Int ->
  ListEntitiesDetectionJobsResponse
listEntitiesDetectionJobsResponse pResponseStatus_ =
  ListEntitiesDetectionJobsResponse'
    { _ledjrrsNextToken =
        Nothing,
      _ledjrrsEntitiesDetectionJobPropertiesList =
        Nothing,
      _ledjrrsResponseStatus =
        pResponseStatus_
    }

-- | Identifies the next page of results to return.
ledjrrsNextToken :: Lens' ListEntitiesDetectionJobsResponse (Maybe Text)
ledjrrsNextToken = lens _ledjrrsNextToken (\s a -> s {_ledjrrsNextToken = a})

-- | A list containing the properties of each job that is returned.
ledjrrsEntitiesDetectionJobPropertiesList :: Lens' ListEntitiesDetectionJobsResponse [EntitiesDetectionJobProperties]
ledjrrsEntitiesDetectionJobPropertiesList = lens _ledjrrsEntitiesDetectionJobPropertiesList (\s a -> s {_ledjrrsEntitiesDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
ledjrrsResponseStatus :: Lens' ListEntitiesDetectionJobsResponse Int
ledjrrsResponseStatus = lens _ledjrrsResponseStatus (\s a -> s {_ledjrrsResponseStatus = a})

instance NFData ListEntitiesDetectionJobsResponse

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
-- Module      : Network.AWS.Comprehend.ListDominantLanguageDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the dominant language detection jobs that you have submitted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListDominantLanguageDetectionJobs
  ( -- * Creating a Request
    listDominantLanguageDetectionJobs,
    ListDominantLanguageDetectionJobs,

    -- * Request Lenses
    ldldjNextToken,
    ldldjMaxResults,
    ldldjFilter,

    -- * Destructuring the Response
    listDominantLanguageDetectionJobsResponse,
    ListDominantLanguageDetectionJobsResponse,

    -- * Response Lenses
    ldldjrrsNextToken,
    ldldjrrsDominantLanguageDetectionJobPropertiesList,
    ldldjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDominantLanguageDetectionJobs' smart constructor.
data ListDominantLanguageDetectionJobs = ListDominantLanguageDetectionJobs'
  { _ldldjNextToken ::
      !( Maybe
           Text
       ),
    _ldldjMaxResults ::
      !( Maybe
           Nat
       ),
    _ldldjFilter ::
      !( Maybe
           DominantLanguageDetectionJobFilter
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

-- | Creates a value of 'ListDominantLanguageDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldldjNextToken' - Identifies the next page of results to return.
--
-- * 'ldldjMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'ldldjFilter' - Filters that jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
listDominantLanguageDetectionJobs ::
  ListDominantLanguageDetectionJobs
listDominantLanguageDetectionJobs =
  ListDominantLanguageDetectionJobs'
    { _ldldjNextToken =
        Nothing,
      _ldldjMaxResults = Nothing,
      _ldldjFilter = Nothing
    }

-- | Identifies the next page of results to return.
ldldjNextToken :: Lens' ListDominantLanguageDetectionJobs (Maybe Text)
ldldjNextToken = lens _ldldjNextToken (\s a -> s {_ldldjNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
ldldjMaxResults :: Lens' ListDominantLanguageDetectionJobs (Maybe Natural)
ldldjMaxResults = lens _ldldjMaxResults (\s a -> s {_ldldjMaxResults = a}) . mapping _Nat

-- | Filters that jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
ldldjFilter :: Lens' ListDominantLanguageDetectionJobs (Maybe DominantLanguageDetectionJobFilter)
ldldjFilter = lens _ldldjFilter (\s a -> s {_ldldjFilter = a})

instance AWSPager ListDominantLanguageDetectionJobs where
  page rq rs
    | stop (rs ^. ldldjrrsNextToken) = Nothing
    | stop
        ( rs
            ^. ldldjrrsDominantLanguageDetectionJobPropertiesList
        ) =
      Nothing
    | otherwise =
      Just $ rq & ldldjNextToken .~ rs ^. ldldjrrsNextToken

instance AWSRequest ListDominantLanguageDetectionJobs where
  type
    Rs ListDominantLanguageDetectionJobs =
      ListDominantLanguageDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListDominantLanguageDetectionJobsResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "DominantLanguageDetectionJobPropertiesList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListDominantLanguageDetectionJobs

instance NFData ListDominantLanguageDetectionJobs

instance ToHeaders ListDominantLanguageDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListDominantLanguageDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDominantLanguageDetectionJobs where
  toJSON ListDominantLanguageDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldldjNextToken,
            ("MaxResults" .=) <$> _ldldjMaxResults,
            ("Filter" .=) <$> _ldldjFilter
          ]
      )

instance ToPath ListDominantLanguageDetectionJobs where
  toPath = const "/"

instance ToQuery ListDominantLanguageDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listDominantLanguageDetectionJobsResponse' smart constructor.
data ListDominantLanguageDetectionJobsResponse = ListDominantLanguageDetectionJobsResponse'
  { _ldldjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldldjrrsDominantLanguageDetectionJobPropertiesList ::
      !( Maybe
           [DominantLanguageDetectionJobProperties]
       ),
    _ldldjrrsResponseStatus ::
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

-- | Creates a value of 'ListDominantLanguageDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldldjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'ldldjrrsDominantLanguageDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'ldldjrrsResponseStatus' - -- | The response status code.
listDominantLanguageDetectionJobsResponse ::
  -- | 'ldldjrrsResponseStatus'
  Int ->
  ListDominantLanguageDetectionJobsResponse
listDominantLanguageDetectionJobsResponse
  pResponseStatus_ =
    ListDominantLanguageDetectionJobsResponse'
      { _ldldjrrsNextToken =
          Nothing,
        _ldldjrrsDominantLanguageDetectionJobPropertiesList =
          Nothing,
        _ldldjrrsResponseStatus =
          pResponseStatus_
      }

-- | Identifies the next page of results to return.
ldldjrrsNextToken :: Lens' ListDominantLanguageDetectionJobsResponse (Maybe Text)
ldldjrrsNextToken = lens _ldldjrrsNextToken (\s a -> s {_ldldjrrsNextToken = a})

-- | A list containing the properties of each job that is returned.
ldldjrrsDominantLanguageDetectionJobPropertiesList :: Lens' ListDominantLanguageDetectionJobsResponse [DominantLanguageDetectionJobProperties]
ldldjrrsDominantLanguageDetectionJobPropertiesList = lens _ldldjrrsDominantLanguageDetectionJobPropertiesList (\s a -> s {_ldldjrrsDominantLanguageDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
ldldjrrsResponseStatus :: Lens' ListDominantLanguageDetectionJobsResponse Int
ldldjrrsResponseStatus = lens _ldldjrrsResponseStatus (\s a -> s {_ldldjrrsResponseStatus = a})

instance
  NFData
    ListDominantLanguageDetectionJobsResponse

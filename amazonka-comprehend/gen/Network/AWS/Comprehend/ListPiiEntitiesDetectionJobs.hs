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
-- Module      : Network.AWS.Comprehend.ListPiiEntitiesDetectionJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the PII entity detection jobs that you have submitted.
module Network.AWS.Comprehend.ListPiiEntitiesDetectionJobs
  ( -- * Creating a Request
    listPiiEntitiesDetectionJobs,
    ListPiiEntitiesDetectionJobs,

    -- * Request Lenses
    lpedjNextToken,
    lpedjMaxResults,
    lpedjFilter,

    -- * Destructuring the Response
    listPiiEntitiesDetectionJobsResponse,
    ListPiiEntitiesDetectionJobsResponse,

    -- * Response Lenses
    lpedjrrsNextToken,
    lpedjrrsPiiEntitiesDetectionJobPropertiesList,
    lpedjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPiiEntitiesDetectionJobs' smart constructor.
data ListPiiEntitiesDetectionJobs = ListPiiEntitiesDetectionJobs'
  { _lpedjNextToken ::
      !(Maybe Text),
    _lpedjMaxResults ::
      !(Maybe Nat),
    _lpedjFilter ::
      !( Maybe
           PiiEntitiesDetectionJobFilter
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

-- | Creates a value of 'ListPiiEntitiesDetectionJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpedjNextToken' - Identifies the next page of results to return.
--
-- * 'lpedjMaxResults' - The maximum number of results to return in each page.
--
-- * 'lpedjFilter' - Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
listPiiEntitiesDetectionJobs ::
  ListPiiEntitiesDetectionJobs
listPiiEntitiesDetectionJobs =
  ListPiiEntitiesDetectionJobs'
    { _lpedjNextToken =
        Nothing,
      _lpedjMaxResults = Nothing,
      _lpedjFilter = Nothing
    }

-- | Identifies the next page of results to return.
lpedjNextToken :: Lens' ListPiiEntitiesDetectionJobs (Maybe Text)
lpedjNextToken = lens _lpedjNextToken (\s a -> s {_lpedjNextToken = a})

-- | The maximum number of results to return in each page.
lpedjMaxResults :: Lens' ListPiiEntitiesDetectionJobs (Maybe Natural)
lpedjMaxResults = lens _lpedjMaxResults (\s a -> s {_lpedjMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. You can filter jobs on their name, status, or the date and time that they were submitted. You can only set one filter at a time.
lpedjFilter :: Lens' ListPiiEntitiesDetectionJobs (Maybe PiiEntitiesDetectionJobFilter)
lpedjFilter = lens _lpedjFilter (\s a -> s {_lpedjFilter = a})

instance AWSRequest ListPiiEntitiesDetectionJobs where
  type
    Rs ListPiiEntitiesDetectionJobs =
      ListPiiEntitiesDetectionJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListPiiEntitiesDetectionJobsResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "PiiEntitiesDetectionJobPropertiesList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListPiiEntitiesDetectionJobs

instance NFData ListPiiEntitiesDetectionJobs

instance ToHeaders ListPiiEntitiesDetectionJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListPiiEntitiesDetectionJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPiiEntitiesDetectionJobs where
  toJSON ListPiiEntitiesDetectionJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpedjNextToken,
            ("MaxResults" .=) <$> _lpedjMaxResults,
            ("Filter" .=) <$> _lpedjFilter
          ]
      )

instance ToPath ListPiiEntitiesDetectionJobs where
  toPath = const "/"

instance ToQuery ListPiiEntitiesDetectionJobs where
  toQuery = const mempty

-- | /See:/ 'listPiiEntitiesDetectionJobsResponse' smart constructor.
data ListPiiEntitiesDetectionJobsResponse = ListPiiEntitiesDetectionJobsResponse'
  { _lpedjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpedjrrsPiiEntitiesDetectionJobPropertiesList ::
      !( Maybe
           [PiiEntitiesDetectionJobProperties]
       ),
    _lpedjrrsResponseStatus ::
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

-- | Creates a value of 'ListPiiEntitiesDetectionJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpedjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'lpedjrrsPiiEntitiesDetectionJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'lpedjrrsResponseStatus' - -- | The response status code.
listPiiEntitiesDetectionJobsResponse ::
  -- | 'lpedjrrsResponseStatus'
  Int ->
  ListPiiEntitiesDetectionJobsResponse
listPiiEntitiesDetectionJobsResponse pResponseStatus_ =
  ListPiiEntitiesDetectionJobsResponse'
    { _lpedjrrsNextToken =
        Nothing,
      _lpedjrrsPiiEntitiesDetectionJobPropertiesList =
        Nothing,
      _lpedjrrsResponseStatus =
        pResponseStatus_
    }

-- | Identifies the next page of results to return.
lpedjrrsNextToken :: Lens' ListPiiEntitiesDetectionJobsResponse (Maybe Text)
lpedjrrsNextToken = lens _lpedjrrsNextToken (\s a -> s {_lpedjrrsNextToken = a})

-- | A list containing the properties of each job that is returned.
lpedjrrsPiiEntitiesDetectionJobPropertiesList :: Lens' ListPiiEntitiesDetectionJobsResponse [PiiEntitiesDetectionJobProperties]
lpedjrrsPiiEntitiesDetectionJobPropertiesList = lens _lpedjrrsPiiEntitiesDetectionJobPropertiesList (\s a -> s {_lpedjrrsPiiEntitiesDetectionJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpedjrrsResponseStatus :: Lens' ListPiiEntitiesDetectionJobsResponse Int
lpedjrrsResponseStatus = lens _lpedjrrsResponseStatus (\s a -> s {_lpedjrrsResponseStatus = a})

instance NFData ListPiiEntitiesDetectionJobsResponse

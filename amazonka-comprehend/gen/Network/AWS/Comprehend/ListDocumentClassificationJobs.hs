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
-- Module      : Network.AWS.Comprehend.ListDocumentClassificationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the documentation classification jobs that you have submitted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListDocumentClassificationJobs
  ( -- * Creating a Request
    listDocumentClassificationJobs,
    ListDocumentClassificationJobs,

    -- * Request Lenses
    ldcjNextToken,
    ldcjMaxResults,
    ldcjFilter,

    -- * Destructuring the Response
    listDocumentClassificationJobsResponse,
    ListDocumentClassificationJobsResponse,

    -- * Response Lenses
    ldcjrrsNextToken,
    ldcjrrsDocumentClassificationJobPropertiesList,
    ldcjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDocumentClassificationJobs' smart constructor.
data ListDocumentClassificationJobs = ListDocumentClassificationJobs'
  { _ldcjNextToken ::
      !( Maybe
           Text
       ),
    _ldcjMaxResults ::
      !( Maybe
           Nat
       ),
    _ldcjFilter ::
      !( Maybe
           DocumentClassificationJobFilter
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

-- | Creates a value of 'ListDocumentClassificationJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcjNextToken' - Identifies the next page of results to return.
--
-- * 'ldcjMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'ldcjFilter' - Filters the jobs that are returned. You can filter jobs on their names, status, or the date and time that they were submitted. You can only set one filter at a time.
listDocumentClassificationJobs ::
  ListDocumentClassificationJobs
listDocumentClassificationJobs =
  ListDocumentClassificationJobs'
    { _ldcjNextToken =
        Nothing,
      _ldcjMaxResults = Nothing,
      _ldcjFilter = Nothing
    }

-- | Identifies the next page of results to return.
ldcjNextToken :: Lens' ListDocumentClassificationJobs (Maybe Text)
ldcjNextToken = lens _ldcjNextToken (\s a -> s {_ldcjNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
ldcjMaxResults :: Lens' ListDocumentClassificationJobs (Maybe Natural)
ldcjMaxResults = lens _ldcjMaxResults (\s a -> s {_ldcjMaxResults = a}) . mapping _Nat

-- | Filters the jobs that are returned. You can filter jobs on their names, status, or the date and time that they were submitted. You can only set one filter at a time.
ldcjFilter :: Lens' ListDocumentClassificationJobs (Maybe DocumentClassificationJobFilter)
ldcjFilter = lens _ldcjFilter (\s a -> s {_ldcjFilter = a})

instance AWSPager ListDocumentClassificationJobs where
  page rq rs
    | stop (rs ^. ldcjrrsNextToken) = Nothing
    | stop
        ( rs
            ^. ldcjrrsDocumentClassificationJobPropertiesList
        ) =
      Nothing
    | otherwise =
      Just $ rq & ldcjNextToken .~ rs ^. ldcjrrsNextToken

instance AWSRequest ListDocumentClassificationJobs where
  type
    Rs ListDocumentClassificationJobs =
      ListDocumentClassificationJobsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListDocumentClassificationJobsResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "DocumentClassificationJobPropertiesList"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListDocumentClassificationJobs

instance NFData ListDocumentClassificationJobs

instance ToHeaders ListDocumentClassificationJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListDocumentClassificationJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDocumentClassificationJobs where
  toJSON ListDocumentClassificationJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldcjNextToken,
            ("MaxResults" .=) <$> _ldcjMaxResults,
            ("Filter" .=) <$> _ldcjFilter
          ]
      )

instance ToPath ListDocumentClassificationJobs where
  toPath = const "/"

instance ToQuery ListDocumentClassificationJobs where
  toQuery = const mempty

-- | /See:/ 'listDocumentClassificationJobsResponse' smart constructor.
data ListDocumentClassificationJobsResponse = ListDocumentClassificationJobsResponse'
  { _ldcjrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldcjrrsDocumentClassificationJobPropertiesList ::
      !( Maybe
           [DocumentClassificationJobProperties]
       ),
    _ldcjrrsResponseStatus ::
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

-- | Creates a value of 'ListDocumentClassificationJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcjrrsNextToken' - Identifies the next page of results to return.
--
-- * 'ldcjrrsDocumentClassificationJobPropertiesList' - A list containing the properties of each job returned.
--
-- * 'ldcjrrsResponseStatus' - -- | The response status code.
listDocumentClassificationJobsResponse ::
  -- | 'ldcjrrsResponseStatus'
  Int ->
  ListDocumentClassificationJobsResponse
listDocumentClassificationJobsResponse
  pResponseStatus_ =
    ListDocumentClassificationJobsResponse'
      { _ldcjrrsNextToken =
          Nothing,
        _ldcjrrsDocumentClassificationJobPropertiesList =
          Nothing,
        _ldcjrrsResponseStatus =
          pResponseStatus_
      }

-- | Identifies the next page of results to return.
ldcjrrsNextToken :: Lens' ListDocumentClassificationJobsResponse (Maybe Text)
ldcjrrsNextToken = lens _ldcjrrsNextToken (\s a -> s {_ldcjrrsNextToken = a})

-- | A list containing the properties of each job returned.
ldcjrrsDocumentClassificationJobPropertiesList :: Lens' ListDocumentClassificationJobsResponse [DocumentClassificationJobProperties]
ldcjrrsDocumentClassificationJobPropertiesList = lens _ldcjrrsDocumentClassificationJobPropertiesList (\s a -> s {_ldcjrrsDocumentClassificationJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
ldcjrrsResponseStatus :: Lens' ListDocumentClassificationJobsResponse Int
ldcjrrsResponseStatus = lens _ldcjrrsResponseStatus (\s a -> s {_ldcjrrsResponseStatus = a})

instance
  NFData
    ListDocumentClassificationJobsResponse

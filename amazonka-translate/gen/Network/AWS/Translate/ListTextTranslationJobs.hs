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
-- Module      : Network.AWS.Translate.ListTextTranslationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the batch translation jobs that you have submitted.
module Network.AWS.Translate.ListTextTranslationJobs
  ( -- * Creating a Request
    listTextTranslationJobs,
    ListTextTranslationJobs,

    -- * Request Lenses
    lttjNextToken,
    lttjMaxResults,
    lttjFilter,

    -- * Destructuring the Response
    listTextTranslationJobsResponse,
    ListTextTranslationJobsResponse,

    -- * Response Lenses
    lttjrrsNextToken,
    lttjrrsTextTranslationJobPropertiesList,
    lttjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'listTextTranslationJobs' smart constructor.
data ListTextTranslationJobs = ListTextTranslationJobs'
  { _lttjNextToken ::
      !(Maybe Text),
    _lttjMaxResults ::
      !(Maybe Nat),
    _lttjFilter ::
      !( Maybe
           TextTranslationJobFilter
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

-- | Creates a value of 'ListTextTranslationJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lttjNextToken' - The token to request the next page of results.
--
-- * 'lttjMaxResults' - The maximum number of results to return in each page. The default value is 100.
--
-- * 'lttjFilter' - The parameters that specify which batch translation jobs to retrieve. Filters include job name, job status, and submission time. You can only set one filter at a time.
listTextTranslationJobs ::
  ListTextTranslationJobs
listTextTranslationJobs =
  ListTextTranslationJobs'
    { _lttjNextToken = Nothing,
      _lttjMaxResults = Nothing,
      _lttjFilter = Nothing
    }

-- | The token to request the next page of results.
lttjNextToken :: Lens' ListTextTranslationJobs (Maybe Text)
lttjNextToken = lens _lttjNextToken (\s a -> s {_lttjNextToken = a})

-- | The maximum number of results to return in each page. The default value is 100.
lttjMaxResults :: Lens' ListTextTranslationJobs (Maybe Natural)
lttjMaxResults = lens _lttjMaxResults (\s a -> s {_lttjMaxResults = a}) . mapping _Nat

-- | The parameters that specify which batch translation jobs to retrieve. Filters include job name, job status, and submission time. You can only set one filter at a time.
lttjFilter :: Lens' ListTextTranslationJobs (Maybe TextTranslationJobFilter)
lttjFilter = lens _lttjFilter (\s a -> s {_lttjFilter = a})

instance AWSRequest ListTextTranslationJobs where
  type
    Rs ListTextTranslationJobs =
      ListTextTranslationJobsResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          ListTextTranslationJobsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TextTranslationJobPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTextTranslationJobs

instance NFData ListTextTranslationJobs

instance ToHeaders ListTextTranslationJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.ListTextTranslationJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTextTranslationJobs where
  toJSON ListTextTranslationJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lttjNextToken,
            ("MaxResults" .=) <$> _lttjMaxResults,
            ("Filter" .=) <$> _lttjFilter
          ]
      )

instance ToPath ListTextTranslationJobs where
  toPath = const "/"

instance ToQuery ListTextTranslationJobs where
  toQuery = const mempty

-- | /See:/ 'listTextTranslationJobsResponse' smart constructor.
data ListTextTranslationJobsResponse = ListTextTranslationJobsResponse'
  { _lttjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lttjrrsTextTranslationJobPropertiesList ::
      !( Maybe
           [TextTranslationJobProperties]
       ),
    _lttjrrsResponseStatus ::
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

-- | Creates a value of 'ListTextTranslationJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lttjrrsNextToken' - The token to use to retreive the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'lttjrrsTextTranslationJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- * 'lttjrrsResponseStatus' - -- | The response status code.
listTextTranslationJobsResponse ::
  -- | 'lttjrrsResponseStatus'
  Int ->
  ListTextTranslationJobsResponse
listTextTranslationJobsResponse pResponseStatus_ =
  ListTextTranslationJobsResponse'
    { _lttjrrsNextToken =
        Nothing,
      _lttjrrsTextTranslationJobPropertiesList =
        Nothing,
      _lttjrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retreive the next page of results. This value is @null@ when there are no more results to return.
lttjrrsNextToken :: Lens' ListTextTranslationJobsResponse (Maybe Text)
lttjrrsNextToken = lens _lttjrrsNextToken (\s a -> s {_lttjrrsNextToken = a})

-- | A list containing the properties of each job that is returned.
lttjrrsTextTranslationJobPropertiesList :: Lens' ListTextTranslationJobsResponse [TextTranslationJobProperties]
lttjrrsTextTranslationJobPropertiesList = lens _lttjrrsTextTranslationJobPropertiesList (\s a -> s {_lttjrrsTextTranslationJobPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lttjrrsResponseStatus :: Lens' ListTextTranslationJobsResponse Int
lttjrrsResponseStatus = lens _lttjrrsResponseStatus (\s a -> s {_lttjrrsResponseStatus = a})

instance NFData ListTextTranslationJobsResponse

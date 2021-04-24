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
-- Module      : Network.AWS.SageMaker.ListLabelingJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of labeling jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListLabelingJobs
  ( -- * Creating a Request
    listLabelingJobs,
    ListLabelingJobs,

    -- * Request Lenses
    lljLastModifiedTimeBefore,
    lljSortOrder,
    lljNextToken,
    lljNameContains,
    lljMaxResults,
    lljCreationTimeBefore,
    lljLastModifiedTimeAfter,
    lljSortBy,
    lljStatusEquals,
    lljCreationTimeAfter,

    -- * Destructuring the Response
    listLabelingJobsResponse,
    ListLabelingJobsResponse,

    -- * Response Lenses
    lljrrsLabelingJobSummaryList,
    lljrrsNextToken,
    lljrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listLabelingJobs' smart constructor.
data ListLabelingJobs = ListLabelingJobs'
  { _lljLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lljSortOrder :: !(Maybe SortOrder),
    _lljNextToken :: !(Maybe Text),
    _lljNameContains :: !(Maybe Text),
    _lljMaxResults :: !(Maybe Nat),
    _lljCreationTimeBefore ::
      !(Maybe POSIX),
    _lljLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lljSortBy :: !(Maybe SortBy),
    _lljStatusEquals ::
      !(Maybe LabelingJobStatus),
    _lljCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLabelingJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lljLastModifiedTimeBefore' - A filter that returns only labeling jobs modified before the specified time (timestamp).
--
-- * 'lljSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lljNextToken' - If the result of the previous @ListLabelingJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of labeling jobs, use the token in the next request.
--
-- * 'lljNameContains' - A string in the labeling job name. This filter returns only labeling jobs whose name contains the specified string.
--
-- * 'lljMaxResults' - The maximum number of labeling jobs to return in each page of the response.
--
-- * 'lljCreationTimeBefore' - A filter that returns only labeling jobs created before the specified time (timestamp).
--
-- * 'lljLastModifiedTimeAfter' - A filter that returns only labeling jobs modified after the specified time (timestamp).
--
-- * 'lljSortBy' - The field to sort results by. The default is @CreationTime@ .
--
-- * 'lljStatusEquals' - A filter that retrieves only labeling jobs with a specific status.
--
-- * 'lljCreationTimeAfter' - A filter that returns only labeling jobs created after the specified time (timestamp).
listLabelingJobs ::
  ListLabelingJobs
listLabelingJobs =
  ListLabelingJobs'
    { _lljLastModifiedTimeBefore =
        Nothing,
      _lljSortOrder = Nothing,
      _lljNextToken = Nothing,
      _lljNameContains = Nothing,
      _lljMaxResults = Nothing,
      _lljCreationTimeBefore = Nothing,
      _lljLastModifiedTimeAfter = Nothing,
      _lljSortBy = Nothing,
      _lljStatusEquals = Nothing,
      _lljCreationTimeAfter = Nothing
    }

-- | A filter that returns only labeling jobs modified before the specified time (timestamp).
lljLastModifiedTimeBefore :: Lens' ListLabelingJobs (Maybe UTCTime)
lljLastModifiedTimeBefore = lens _lljLastModifiedTimeBefore (\s a -> s {_lljLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Ascending@ .
lljSortOrder :: Lens' ListLabelingJobs (Maybe SortOrder)
lljSortOrder = lens _lljSortOrder (\s a -> s {_lljSortOrder = a})

-- | If the result of the previous @ListLabelingJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of labeling jobs, use the token in the next request.
lljNextToken :: Lens' ListLabelingJobs (Maybe Text)
lljNextToken = lens _lljNextToken (\s a -> s {_lljNextToken = a})

-- | A string in the labeling job name. This filter returns only labeling jobs whose name contains the specified string.
lljNameContains :: Lens' ListLabelingJobs (Maybe Text)
lljNameContains = lens _lljNameContains (\s a -> s {_lljNameContains = a})

-- | The maximum number of labeling jobs to return in each page of the response.
lljMaxResults :: Lens' ListLabelingJobs (Maybe Natural)
lljMaxResults = lens _lljMaxResults (\s a -> s {_lljMaxResults = a}) . mapping _Nat

-- | A filter that returns only labeling jobs created before the specified time (timestamp).
lljCreationTimeBefore :: Lens' ListLabelingJobs (Maybe UTCTime)
lljCreationTimeBefore = lens _lljCreationTimeBefore (\s a -> s {_lljCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only labeling jobs modified after the specified time (timestamp).
lljLastModifiedTimeAfter :: Lens' ListLabelingJobs (Maybe UTCTime)
lljLastModifiedTimeAfter = lens _lljLastModifiedTimeAfter (\s a -> s {_lljLastModifiedTimeAfter = a}) . mapping _Time

-- | The field to sort results by. The default is @CreationTime@ .
lljSortBy :: Lens' ListLabelingJobs (Maybe SortBy)
lljSortBy = lens _lljSortBy (\s a -> s {_lljSortBy = a})

-- | A filter that retrieves only labeling jobs with a specific status.
lljStatusEquals :: Lens' ListLabelingJobs (Maybe LabelingJobStatus)
lljStatusEquals = lens _lljStatusEquals (\s a -> s {_lljStatusEquals = a})

-- | A filter that returns only labeling jobs created after the specified time (timestamp).
lljCreationTimeAfter :: Lens' ListLabelingJobs (Maybe UTCTime)
lljCreationTimeAfter = lens _lljCreationTimeAfter (\s a -> s {_lljCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListLabelingJobs where
  page rq rs
    | stop (rs ^. lljrrsNextToken) = Nothing
    | stop (rs ^. lljrrsLabelingJobSummaryList) = Nothing
    | otherwise =
      Just $ rq & lljNextToken .~ rs ^. lljrrsNextToken

instance AWSRequest ListLabelingJobs where
  type Rs ListLabelingJobs = ListLabelingJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListLabelingJobsResponse'
            <$> (x .?> "LabelingJobSummaryList" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListLabelingJobs

instance NFData ListLabelingJobs

instance ToHeaders ListLabelingJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListLabelingJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListLabelingJobs where
  toJSON ListLabelingJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lljLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lljSortOrder,
            ("NextToken" .=) <$> _lljNextToken,
            ("NameContains" .=) <$> _lljNameContains,
            ("MaxResults" .=) <$> _lljMaxResults,
            ("CreationTimeBefore" .=) <$> _lljCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lljLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lljSortBy,
            ("StatusEquals" .=) <$> _lljStatusEquals,
            ("CreationTimeAfter" .=) <$> _lljCreationTimeAfter
          ]
      )

instance ToPath ListLabelingJobs where
  toPath = const "/"

instance ToQuery ListLabelingJobs where
  toQuery = const mempty

-- | /See:/ 'listLabelingJobsResponse' smart constructor.
data ListLabelingJobsResponse = ListLabelingJobsResponse'
  { _lljrrsLabelingJobSummaryList ::
      !( Maybe
           [LabelingJobSummary]
       ),
    _lljrrsNextToken ::
      !(Maybe Text),
    _lljrrsResponseStatus ::
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

-- | Creates a value of 'ListLabelingJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lljrrsLabelingJobSummaryList' - An array of @LabelingJobSummary@ objects, each describing a labeling job.
--
-- * 'lljrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of labeling jobs, use it in the subsequent request.
--
-- * 'lljrrsResponseStatus' - -- | The response status code.
listLabelingJobsResponse ::
  -- | 'lljrrsResponseStatus'
  Int ->
  ListLabelingJobsResponse
listLabelingJobsResponse pResponseStatus_ =
  ListLabelingJobsResponse'
    { _lljrrsLabelingJobSummaryList =
        Nothing,
      _lljrrsNextToken = Nothing,
      _lljrrsResponseStatus = pResponseStatus_
    }

-- | An array of @LabelingJobSummary@ objects, each describing a labeling job.
lljrrsLabelingJobSummaryList :: Lens' ListLabelingJobsResponse [LabelingJobSummary]
lljrrsLabelingJobSummaryList = lens _lljrrsLabelingJobSummaryList (\s a -> s {_lljrrsLabelingJobSummaryList = a}) . _Default . _Coerce

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of labeling jobs, use it in the subsequent request.
lljrrsNextToken :: Lens' ListLabelingJobsResponse (Maybe Text)
lljrrsNextToken = lens _lljrrsNextToken (\s a -> s {_lljrrsNextToken = a})

-- | -- | The response status code.
lljrrsResponseStatus :: Lens' ListLabelingJobsResponse Int
lljrrsResponseStatus = lens _lljrrsResponseStatus (\s a -> s {_lljrrsResponseStatus = a})

instance NFData ListLabelingJobsResponse

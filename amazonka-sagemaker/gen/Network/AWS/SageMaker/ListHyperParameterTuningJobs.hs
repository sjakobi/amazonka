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
-- Module      : Network.AWS.SageMaker.ListHyperParameterTuningJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of 'HyperParameterTuningJobSummary' objects that describe the hyperparameter tuning jobs launched in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListHyperParameterTuningJobs
  ( -- * Creating a Request
    listHyperParameterTuningJobs,
    ListHyperParameterTuningJobs,

    -- * Request Lenses
    lhptjLastModifiedTimeBefore,
    lhptjSortOrder,
    lhptjNextToken,
    lhptjNameContains,
    lhptjMaxResults,
    lhptjCreationTimeBefore,
    lhptjLastModifiedTimeAfter,
    lhptjSortBy,
    lhptjStatusEquals,
    lhptjCreationTimeAfter,

    -- * Destructuring the Response
    listHyperParameterTuningJobsResponse,
    ListHyperParameterTuningJobsResponse,

    -- * Response Lenses
    lhptjrrsNextToken,
    lhptjrrsResponseStatus,
    lhptjrrsHyperParameterTuningJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listHyperParameterTuningJobs' smart constructor.
data ListHyperParameterTuningJobs = ListHyperParameterTuningJobs'
  { _lhptjLastModifiedTimeBefore ::
      !( Maybe
           POSIX
       ),
    _lhptjSortOrder ::
      !( Maybe
           SortOrder
       ),
    _lhptjNextToken ::
      !(Maybe Text),
    _lhptjNameContains ::
      !(Maybe Text),
    _lhptjMaxResults ::
      !(Maybe Nat),
    _lhptjCreationTimeBefore ::
      !( Maybe
           POSIX
       ),
    _lhptjLastModifiedTimeAfter ::
      !( Maybe
           POSIX
       ),
    _lhptjSortBy ::
      !( Maybe
           HyperParameterTuningJobSortByOptions
       ),
    _lhptjStatusEquals ::
      !( Maybe
           HyperParameterTuningJobStatus
       ),
    _lhptjCreationTimeAfter ::
      !( Maybe
           POSIX
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

-- | Creates a value of 'ListHyperParameterTuningJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhptjLastModifiedTimeBefore' - A filter that returns only tuning jobs that were modified before the specified time.
--
-- * 'lhptjSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lhptjNextToken' - If the result of the previous @ListHyperParameterTuningJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of tuning jobs, use the token in the next request.
--
-- * 'lhptjNameContains' - A string in the tuning job name. This filter returns only tuning jobs whose name contains the specified string.
--
-- * 'lhptjMaxResults' - The maximum number of tuning jobs to return. The default value is 10.
--
-- * 'lhptjCreationTimeBefore' - A filter that returns only tuning jobs that were created before the specified time.
--
-- * 'lhptjLastModifiedTimeAfter' - A filter that returns only tuning jobs that were modified after the specified time.
--
-- * 'lhptjSortBy' - The field to sort results by. The default is @Name@ .
--
-- * 'lhptjStatusEquals' - A filter that returns only tuning jobs with the specified status.
--
-- * 'lhptjCreationTimeAfter' - A filter that returns only tuning jobs that were created after the specified time.
listHyperParameterTuningJobs ::
  ListHyperParameterTuningJobs
listHyperParameterTuningJobs =
  ListHyperParameterTuningJobs'
    { _lhptjLastModifiedTimeBefore =
        Nothing,
      _lhptjSortOrder = Nothing,
      _lhptjNextToken = Nothing,
      _lhptjNameContains = Nothing,
      _lhptjMaxResults = Nothing,
      _lhptjCreationTimeBefore = Nothing,
      _lhptjLastModifiedTimeAfter = Nothing,
      _lhptjSortBy = Nothing,
      _lhptjStatusEquals = Nothing,
      _lhptjCreationTimeAfter = Nothing
    }

-- | A filter that returns only tuning jobs that were modified before the specified time.
lhptjLastModifiedTimeBefore :: Lens' ListHyperParameterTuningJobs (Maybe UTCTime)
lhptjLastModifiedTimeBefore = lens _lhptjLastModifiedTimeBefore (\s a -> s {_lhptjLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Ascending@ .
lhptjSortOrder :: Lens' ListHyperParameterTuningJobs (Maybe SortOrder)
lhptjSortOrder = lens _lhptjSortOrder (\s a -> s {_lhptjSortOrder = a})

-- | If the result of the previous @ListHyperParameterTuningJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of tuning jobs, use the token in the next request.
lhptjNextToken :: Lens' ListHyperParameterTuningJobs (Maybe Text)
lhptjNextToken = lens _lhptjNextToken (\s a -> s {_lhptjNextToken = a})

-- | A string in the tuning job name. This filter returns only tuning jobs whose name contains the specified string.
lhptjNameContains :: Lens' ListHyperParameterTuningJobs (Maybe Text)
lhptjNameContains = lens _lhptjNameContains (\s a -> s {_lhptjNameContains = a})

-- | The maximum number of tuning jobs to return. The default value is 10.
lhptjMaxResults :: Lens' ListHyperParameterTuningJobs (Maybe Natural)
lhptjMaxResults = lens _lhptjMaxResults (\s a -> s {_lhptjMaxResults = a}) . mapping _Nat

-- | A filter that returns only tuning jobs that were created before the specified time.
lhptjCreationTimeBefore :: Lens' ListHyperParameterTuningJobs (Maybe UTCTime)
lhptjCreationTimeBefore = lens _lhptjCreationTimeBefore (\s a -> s {_lhptjCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only tuning jobs that were modified after the specified time.
lhptjLastModifiedTimeAfter :: Lens' ListHyperParameterTuningJobs (Maybe UTCTime)
lhptjLastModifiedTimeAfter = lens _lhptjLastModifiedTimeAfter (\s a -> s {_lhptjLastModifiedTimeAfter = a}) . mapping _Time

-- | The field to sort results by. The default is @Name@ .
lhptjSortBy :: Lens' ListHyperParameterTuningJobs (Maybe HyperParameterTuningJobSortByOptions)
lhptjSortBy = lens _lhptjSortBy (\s a -> s {_lhptjSortBy = a})

-- | A filter that returns only tuning jobs with the specified status.
lhptjStatusEquals :: Lens' ListHyperParameterTuningJobs (Maybe HyperParameterTuningJobStatus)
lhptjStatusEquals = lens _lhptjStatusEquals (\s a -> s {_lhptjStatusEquals = a})

-- | A filter that returns only tuning jobs that were created after the specified time.
lhptjCreationTimeAfter :: Lens' ListHyperParameterTuningJobs (Maybe UTCTime)
lhptjCreationTimeAfter = lens _lhptjCreationTimeAfter (\s a -> s {_lhptjCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListHyperParameterTuningJobs where
  page rq rs
    | stop (rs ^. lhptjrrsNextToken) = Nothing
    | stop
        (rs ^. lhptjrrsHyperParameterTuningJobSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lhptjNextToken .~ rs ^. lhptjrrsNextToken

instance AWSRequest ListHyperParameterTuningJobs where
  type
    Rs ListHyperParameterTuningJobs =
      ListHyperParameterTuningJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListHyperParameterTuningJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .?> "HyperParameterTuningJobSummaries"
                    .!@ mempty
                )
      )

instance Hashable ListHyperParameterTuningJobs

instance NFData ListHyperParameterTuningJobs

instance ToHeaders ListHyperParameterTuningJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListHyperParameterTuningJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListHyperParameterTuningJobs where
  toJSON ListHyperParameterTuningJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lhptjLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lhptjSortOrder,
            ("NextToken" .=) <$> _lhptjNextToken,
            ("NameContains" .=) <$> _lhptjNameContains,
            ("MaxResults" .=) <$> _lhptjMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lhptjCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lhptjLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lhptjSortBy,
            ("StatusEquals" .=) <$> _lhptjStatusEquals,
            ("CreationTimeAfter" .=)
              <$> _lhptjCreationTimeAfter
          ]
      )

instance ToPath ListHyperParameterTuningJobs where
  toPath = const "/"

instance ToQuery ListHyperParameterTuningJobs where
  toQuery = const mempty

-- | /See:/ 'listHyperParameterTuningJobsResponse' smart constructor.
data ListHyperParameterTuningJobsResponse = ListHyperParameterTuningJobsResponse'
  { _lhptjrrsNextToken ::
      !( Maybe
           Text
       ),
    _lhptjrrsResponseStatus ::
      !Int,
    _lhptjrrsHyperParameterTuningJobSummaries ::
      ![HyperParameterTuningJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListHyperParameterTuningJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhptjrrsNextToken' - If the result of this @ListHyperParameterTuningJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of tuning jobs, use the token in the next request.
--
-- * 'lhptjrrsResponseStatus' - -- | The response status code.
--
-- * 'lhptjrrsHyperParameterTuningJobSummaries' - A list of 'HyperParameterTuningJobSummary' objects that describe the tuning jobs that the @ListHyperParameterTuningJobs@ request returned.
listHyperParameterTuningJobsResponse ::
  -- | 'lhptjrrsResponseStatus'
  Int ->
  ListHyperParameterTuningJobsResponse
listHyperParameterTuningJobsResponse pResponseStatus_ =
  ListHyperParameterTuningJobsResponse'
    { _lhptjrrsNextToken =
        Nothing,
      _lhptjrrsResponseStatus =
        pResponseStatus_,
      _lhptjrrsHyperParameterTuningJobSummaries =
        mempty
    }

-- | If the result of this @ListHyperParameterTuningJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of tuning jobs, use the token in the next request.
lhptjrrsNextToken :: Lens' ListHyperParameterTuningJobsResponse (Maybe Text)
lhptjrrsNextToken = lens _lhptjrrsNextToken (\s a -> s {_lhptjrrsNextToken = a})

-- | -- | The response status code.
lhptjrrsResponseStatus :: Lens' ListHyperParameterTuningJobsResponse Int
lhptjrrsResponseStatus = lens _lhptjrrsResponseStatus (\s a -> s {_lhptjrrsResponseStatus = a})

-- | A list of 'HyperParameterTuningJobSummary' objects that describe the tuning jobs that the @ListHyperParameterTuningJobs@ request returned.
lhptjrrsHyperParameterTuningJobSummaries :: Lens' ListHyperParameterTuningJobsResponse [HyperParameterTuningJobSummary]
lhptjrrsHyperParameterTuningJobSummaries = lens _lhptjrrsHyperParameterTuningJobSummaries (\s a -> s {_lhptjrrsHyperParameterTuningJobSummaries = a}) . _Coerce

instance NFData ListHyperParameterTuningJobsResponse

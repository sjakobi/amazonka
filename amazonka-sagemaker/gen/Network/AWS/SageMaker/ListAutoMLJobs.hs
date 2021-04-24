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
-- Module      : Network.AWS.SageMaker.ListAutoMLJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request a list of jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListAutoMLJobs
  ( -- * Creating a Request
    listAutoMLJobs,
    ListAutoMLJobs,

    -- * Request Lenses
    lamljLastModifiedTimeBefore,
    lamljSortOrder,
    lamljNextToken,
    lamljNameContains,
    lamljMaxResults,
    lamljCreationTimeBefore,
    lamljLastModifiedTimeAfter,
    lamljSortBy,
    lamljStatusEquals,
    lamljCreationTimeAfter,

    -- * Destructuring the Response
    listAutoMLJobsResponse,
    ListAutoMLJobsResponse,

    -- * Response Lenses
    lamljrrsNextToken,
    lamljrrsResponseStatus,
    lamljrrsAutoMLJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listAutoMLJobs' smart constructor.
data ListAutoMLJobs = ListAutoMLJobs'
  { _lamljLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lamljSortOrder ::
      !(Maybe AutoMLSortOrder),
    _lamljNextToken :: !(Maybe Text),
    _lamljNameContains :: !(Maybe Text),
    _lamljMaxResults :: !(Maybe Nat),
    _lamljCreationTimeBefore ::
      !(Maybe POSIX),
    _lamljLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lamljSortBy :: !(Maybe AutoMLSortBy),
    _lamljStatusEquals ::
      !(Maybe AutoMLJobStatus),
    _lamljCreationTimeAfter :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAutoMLJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamljLastModifiedTimeBefore' - Request a list of jobs, using a filter for time.
--
-- * 'lamljSortOrder' - The sort order for the results. The default is Descending.
--
-- * 'lamljNextToken' - If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
--
-- * 'lamljNameContains' - Request a list of jobs, using a search filter for name.
--
-- * 'lamljMaxResults' - Request a list of jobs up to a specified limit.
--
-- * 'lamljCreationTimeBefore' - Request a list of jobs, using a filter for time.
--
-- * 'lamljLastModifiedTimeAfter' - Request a list of jobs, using a filter for time.
--
-- * 'lamljSortBy' - The parameter by which to sort the results. The default is AutoMLJobName.
--
-- * 'lamljStatusEquals' - Request a list of jobs, using a filter for status.
--
-- * 'lamljCreationTimeAfter' - Request a list of jobs, using a filter for time.
listAutoMLJobs ::
  ListAutoMLJobs
listAutoMLJobs =
  ListAutoMLJobs'
    { _lamljLastModifiedTimeBefore =
        Nothing,
      _lamljSortOrder = Nothing,
      _lamljNextToken = Nothing,
      _lamljNameContains = Nothing,
      _lamljMaxResults = Nothing,
      _lamljCreationTimeBefore = Nothing,
      _lamljLastModifiedTimeAfter = Nothing,
      _lamljSortBy = Nothing,
      _lamljStatusEquals = Nothing,
      _lamljCreationTimeAfter = Nothing
    }

-- | Request a list of jobs, using a filter for time.
lamljLastModifiedTimeBefore :: Lens' ListAutoMLJobs (Maybe UTCTime)
lamljLastModifiedTimeBefore = lens _lamljLastModifiedTimeBefore (\s a -> s {_lamljLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for the results. The default is Descending.
lamljSortOrder :: Lens' ListAutoMLJobs (Maybe AutoMLSortOrder)
lamljSortOrder = lens _lamljSortOrder (\s a -> s {_lamljSortOrder = a})

-- | If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
lamljNextToken :: Lens' ListAutoMLJobs (Maybe Text)
lamljNextToken = lens _lamljNextToken (\s a -> s {_lamljNextToken = a})

-- | Request a list of jobs, using a search filter for name.
lamljNameContains :: Lens' ListAutoMLJobs (Maybe Text)
lamljNameContains = lens _lamljNameContains (\s a -> s {_lamljNameContains = a})

-- | Request a list of jobs up to a specified limit.
lamljMaxResults :: Lens' ListAutoMLJobs (Maybe Natural)
lamljMaxResults = lens _lamljMaxResults (\s a -> s {_lamljMaxResults = a}) . mapping _Nat

-- | Request a list of jobs, using a filter for time.
lamljCreationTimeBefore :: Lens' ListAutoMLJobs (Maybe UTCTime)
lamljCreationTimeBefore = lens _lamljCreationTimeBefore (\s a -> s {_lamljCreationTimeBefore = a}) . mapping _Time

-- | Request a list of jobs, using a filter for time.
lamljLastModifiedTimeAfter :: Lens' ListAutoMLJobs (Maybe UTCTime)
lamljLastModifiedTimeAfter = lens _lamljLastModifiedTimeAfter (\s a -> s {_lamljLastModifiedTimeAfter = a}) . mapping _Time

-- | The parameter by which to sort the results. The default is AutoMLJobName.
lamljSortBy :: Lens' ListAutoMLJobs (Maybe AutoMLSortBy)
lamljSortBy = lens _lamljSortBy (\s a -> s {_lamljSortBy = a})

-- | Request a list of jobs, using a filter for status.
lamljStatusEquals :: Lens' ListAutoMLJobs (Maybe AutoMLJobStatus)
lamljStatusEquals = lens _lamljStatusEquals (\s a -> s {_lamljStatusEquals = a})

-- | Request a list of jobs, using a filter for time.
lamljCreationTimeAfter :: Lens' ListAutoMLJobs (Maybe UTCTime)
lamljCreationTimeAfter = lens _lamljCreationTimeAfter (\s a -> s {_lamljCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListAutoMLJobs where
  page rq rs
    | stop (rs ^. lamljrrsNextToken) = Nothing
    | stop (rs ^. lamljrrsAutoMLJobSummaries) = Nothing
    | otherwise =
      Just $ rq & lamljNextToken .~ rs ^. lamljrrsNextToken

instance AWSRequest ListAutoMLJobs where
  type Rs ListAutoMLJobs = ListAutoMLJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListAutoMLJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "AutoMLJobSummaries" .!@ mempty)
      )

instance Hashable ListAutoMLJobs

instance NFData ListAutoMLJobs

instance ToHeaders ListAutoMLJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListAutoMLJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAutoMLJobs where
  toJSON ListAutoMLJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lamljLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lamljSortOrder,
            ("NextToken" .=) <$> _lamljNextToken,
            ("NameContains" .=) <$> _lamljNameContains,
            ("MaxResults" .=) <$> _lamljMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lamljCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lamljLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lamljSortBy,
            ("StatusEquals" .=) <$> _lamljStatusEquals,
            ("CreationTimeAfter" .=)
              <$> _lamljCreationTimeAfter
          ]
      )

instance ToPath ListAutoMLJobs where
  toPath = const "/"

instance ToQuery ListAutoMLJobs where
  toQuery = const mempty

-- | /See:/ 'listAutoMLJobsResponse' smart constructor.
data ListAutoMLJobsResponse = ListAutoMLJobsResponse'
  { _lamljrrsNextToken ::
      !(Maybe Text),
    _lamljrrsResponseStatus ::
      !Int,
    _lamljrrsAutoMLJobSummaries ::
      ![AutoMLJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAutoMLJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamljrrsNextToken' - If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
--
-- * 'lamljrrsResponseStatus' - -- | The response status code.
--
-- * 'lamljrrsAutoMLJobSummaries' - Returns a summary list of jobs.
listAutoMLJobsResponse ::
  -- | 'lamljrrsResponseStatus'
  Int ->
  ListAutoMLJobsResponse
listAutoMLJobsResponse pResponseStatus_ =
  ListAutoMLJobsResponse'
    { _lamljrrsNextToken =
        Nothing,
      _lamljrrsResponseStatus = pResponseStatus_,
      _lamljrrsAutoMLJobSummaries = mempty
    }

-- | If the previous response was truncated, you receive this token. Use it in your next request to receive the next set of results.
lamljrrsNextToken :: Lens' ListAutoMLJobsResponse (Maybe Text)
lamljrrsNextToken = lens _lamljrrsNextToken (\s a -> s {_lamljrrsNextToken = a})

-- | -- | The response status code.
lamljrrsResponseStatus :: Lens' ListAutoMLJobsResponse Int
lamljrrsResponseStatus = lens _lamljrrsResponseStatus (\s a -> s {_lamljrrsResponseStatus = a})

-- | Returns a summary list of jobs.
lamljrrsAutoMLJobSummaries :: Lens' ListAutoMLJobsResponse [AutoMLJobSummary]
lamljrrsAutoMLJobSummaries = lens _lamljrrsAutoMLJobSummaries (\s a -> s {_lamljrrsAutoMLJobSummaries = a}) . _Coerce

instance NFData ListAutoMLJobsResponse

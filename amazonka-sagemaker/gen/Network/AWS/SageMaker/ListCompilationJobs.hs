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
-- Module      : Network.AWS.SageMaker.ListCompilationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists model compilation jobs that satisfy various filters.
--
--
-- To create a model compilation job, use 'CreateCompilationJob' . To get information about a particular model compilation job you have created, use 'DescribeCompilationJob' .
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListCompilationJobs
  ( -- * Creating a Request
    listCompilationJobs,
    ListCompilationJobs,

    -- * Request Lenses
    lcjLastModifiedTimeBefore,
    lcjSortOrder,
    lcjNextToken,
    lcjNameContains,
    lcjMaxResults,
    lcjCreationTimeBefore,
    lcjLastModifiedTimeAfter,
    lcjSortBy,
    lcjStatusEquals,
    lcjCreationTimeAfter,

    -- * Destructuring the Response
    listCompilationJobsResponse,
    ListCompilationJobsResponse,

    -- * Response Lenses
    lcjrrsNextToken,
    lcjrrsResponseStatus,
    lcjrrsCompilationJobSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listCompilationJobs' smart constructor.
data ListCompilationJobs = ListCompilationJobs'
  { _lcjLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lcjSortOrder ::
      !(Maybe SortOrder),
    _lcjNextToken :: !(Maybe Text),
    _lcjNameContains ::
      !(Maybe Text),
    _lcjMaxResults :: !(Maybe Nat),
    _lcjCreationTimeBefore ::
      !(Maybe POSIX),
    _lcjLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lcjSortBy ::
      !( Maybe
           ListCompilationJobsSortBy
       ),
    _lcjStatusEquals ::
      !(Maybe CompilationJobStatus),
    _lcjCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCompilationJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcjLastModifiedTimeBefore' - A filter that returns the model compilation jobs that were modified before a specified time.
--
-- * 'lcjSortOrder' - The sort order for results. The default is @Ascending@ .
--
-- * 'lcjNextToken' - If the result of the previous @ListCompilationJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model compilation jobs, use the token in the next request.
--
-- * 'lcjNameContains' - A filter that returns the model compilation jobs whose name contains a specified string.
--
-- * 'lcjMaxResults' - The maximum number of model compilation jobs to return in the response.
--
-- * 'lcjCreationTimeBefore' - A filter that returns the model compilation jobs that were created before a specified time.
--
-- * 'lcjLastModifiedTimeAfter' - A filter that returns the model compilation jobs that were modified after a specified time.
--
-- * 'lcjSortBy' - The field by which to sort results. The default is @CreationTime@ .
--
-- * 'lcjStatusEquals' - A filter that retrieves model compilation jobs with a specific 'DescribeCompilationJobResponse$CompilationJobStatus' status.
--
-- * 'lcjCreationTimeAfter' - A filter that returns the model compilation jobs that were created after a specified time.
listCompilationJobs ::
  ListCompilationJobs
listCompilationJobs =
  ListCompilationJobs'
    { _lcjLastModifiedTimeBefore =
        Nothing,
      _lcjSortOrder = Nothing,
      _lcjNextToken = Nothing,
      _lcjNameContains = Nothing,
      _lcjMaxResults = Nothing,
      _lcjCreationTimeBefore = Nothing,
      _lcjLastModifiedTimeAfter = Nothing,
      _lcjSortBy = Nothing,
      _lcjStatusEquals = Nothing,
      _lcjCreationTimeAfter = Nothing
    }

-- | A filter that returns the model compilation jobs that were modified before a specified time.
lcjLastModifiedTimeBefore :: Lens' ListCompilationJobs (Maybe UTCTime)
lcjLastModifiedTimeBefore = lens _lcjLastModifiedTimeBefore (\s a -> s {_lcjLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results. The default is @Ascending@ .
lcjSortOrder :: Lens' ListCompilationJobs (Maybe SortOrder)
lcjSortOrder = lens _lcjSortOrder (\s a -> s {_lcjSortOrder = a})

-- | If the result of the previous @ListCompilationJobs@ request was truncated, the response includes a @NextToken@ . To retrieve the next set of model compilation jobs, use the token in the next request.
lcjNextToken :: Lens' ListCompilationJobs (Maybe Text)
lcjNextToken = lens _lcjNextToken (\s a -> s {_lcjNextToken = a})

-- | A filter that returns the model compilation jobs whose name contains a specified string.
lcjNameContains :: Lens' ListCompilationJobs (Maybe Text)
lcjNameContains = lens _lcjNameContains (\s a -> s {_lcjNameContains = a})

-- | The maximum number of model compilation jobs to return in the response.
lcjMaxResults :: Lens' ListCompilationJobs (Maybe Natural)
lcjMaxResults = lens _lcjMaxResults (\s a -> s {_lcjMaxResults = a}) . mapping _Nat

-- | A filter that returns the model compilation jobs that were created before a specified time.
lcjCreationTimeBefore :: Lens' ListCompilationJobs (Maybe UTCTime)
lcjCreationTimeBefore = lens _lcjCreationTimeBefore (\s a -> s {_lcjCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns the model compilation jobs that were modified after a specified time.
lcjLastModifiedTimeAfter :: Lens' ListCompilationJobs (Maybe UTCTime)
lcjLastModifiedTimeAfter = lens _lcjLastModifiedTimeAfter (\s a -> s {_lcjLastModifiedTimeAfter = a}) . mapping _Time

-- | The field by which to sort results. The default is @CreationTime@ .
lcjSortBy :: Lens' ListCompilationJobs (Maybe ListCompilationJobsSortBy)
lcjSortBy = lens _lcjSortBy (\s a -> s {_lcjSortBy = a})

-- | A filter that retrieves model compilation jobs with a specific 'DescribeCompilationJobResponse$CompilationJobStatus' status.
lcjStatusEquals :: Lens' ListCompilationJobs (Maybe CompilationJobStatus)
lcjStatusEquals = lens _lcjStatusEquals (\s a -> s {_lcjStatusEquals = a})

-- | A filter that returns the model compilation jobs that were created after a specified time.
lcjCreationTimeAfter :: Lens' ListCompilationJobs (Maybe UTCTime)
lcjCreationTimeAfter = lens _lcjCreationTimeAfter (\s a -> s {_lcjCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListCompilationJobs where
  page rq rs
    | stop (rs ^. lcjrrsNextToken) = Nothing
    | stop (rs ^. lcjrrsCompilationJobSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lcjNextToken .~ rs ^. lcjrrsNextToken

instance AWSRequest ListCompilationJobs where
  type
    Rs ListCompilationJobs =
      ListCompilationJobsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListCompilationJobsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "CompilationJobSummaries" .!@ mempty)
      )

instance Hashable ListCompilationJobs

instance NFData ListCompilationJobs

instance ToHeaders ListCompilationJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListCompilationJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCompilationJobs where
  toJSON ListCompilationJobs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lcjLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lcjSortOrder,
            ("NextToken" .=) <$> _lcjNextToken,
            ("NameContains" .=) <$> _lcjNameContains,
            ("MaxResults" .=) <$> _lcjMaxResults,
            ("CreationTimeBefore" .=) <$> _lcjCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lcjLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lcjSortBy,
            ("StatusEquals" .=) <$> _lcjStatusEquals,
            ("CreationTimeAfter" .=) <$> _lcjCreationTimeAfter
          ]
      )

instance ToPath ListCompilationJobs where
  toPath = const "/"

instance ToQuery ListCompilationJobs where
  toQuery = const mempty

-- | /See:/ 'listCompilationJobsResponse' smart constructor.
data ListCompilationJobsResponse = ListCompilationJobsResponse'
  { _lcjrrsNextToken ::
      !(Maybe Text),
    _lcjrrsResponseStatus ::
      !Int,
    _lcjrrsCompilationJobSummaries ::
      ![CompilationJobSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCompilationJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcjrrsNextToken' - If the response is truncated, Amazon SageMaker returns this @NextToken@ . To retrieve the next set of model compilation jobs, use this token in the next request.
--
-- * 'lcjrrsResponseStatus' - -- | The response status code.
--
-- * 'lcjrrsCompilationJobSummaries' - An array of 'CompilationJobSummary' objects, each describing a model compilation job.
listCompilationJobsResponse ::
  -- | 'lcjrrsResponseStatus'
  Int ->
  ListCompilationJobsResponse
listCompilationJobsResponse pResponseStatus_ =
  ListCompilationJobsResponse'
    { _lcjrrsNextToken =
        Nothing,
      _lcjrrsResponseStatus = pResponseStatus_,
      _lcjrrsCompilationJobSummaries = mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this @NextToken@ . To retrieve the next set of model compilation jobs, use this token in the next request.
lcjrrsNextToken :: Lens' ListCompilationJobsResponse (Maybe Text)
lcjrrsNextToken = lens _lcjrrsNextToken (\s a -> s {_lcjrrsNextToken = a})

-- | -- | The response status code.
lcjrrsResponseStatus :: Lens' ListCompilationJobsResponse Int
lcjrrsResponseStatus = lens _lcjrrsResponseStatus (\s a -> s {_lcjrrsResponseStatus = a})

-- | An array of 'CompilationJobSummary' objects, each describing a model compilation job.
lcjrrsCompilationJobSummaries :: Lens' ListCompilationJobsResponse [CompilationJobSummary]
lcjrrsCompilationJobSummaries = lens _lcjrrsCompilationJobSummaries (\s a -> s {_lcjrrsCompilationJobSummaries = a}) . _Coerce

instance NFData ListCompilationJobsResponse

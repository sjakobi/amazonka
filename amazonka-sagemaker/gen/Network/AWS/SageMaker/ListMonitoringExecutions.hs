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
-- Module      : Network.AWS.SageMaker.ListMonitoringExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of all monitoring job executions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListMonitoringExecutions
  ( -- * Creating a Request
    listMonitoringExecutions,
    ListMonitoringExecutions,

    -- * Request Lenses
    lmeLastModifiedTimeBefore,
    lmeSortOrder,
    lmeNextToken,
    lmeEndpointName,
    lmeMonitoringJobDefinitionName,
    lmeMonitoringScheduleName,
    lmeMaxResults,
    lmeScheduledTimeAfter,
    lmeCreationTimeBefore,
    lmeLastModifiedTimeAfter,
    lmeSortBy,
    lmeStatusEquals,
    lmeMonitoringTypeEquals,
    lmeCreationTimeAfter,
    lmeScheduledTimeBefore,

    -- * Destructuring the Response
    listMonitoringExecutionsResponse,
    ListMonitoringExecutionsResponse,

    -- * Response Lenses
    lmerrsNextToken,
    lmerrsResponseStatus,
    lmerrsMonitoringExecutionSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listMonitoringExecutions' smart constructor.
data ListMonitoringExecutions = ListMonitoringExecutions'
  { _lmeLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lmeSortOrder ::
      !(Maybe SortOrder),
    _lmeNextToken ::
      !(Maybe Text),
    _lmeEndpointName ::
      !(Maybe Text),
    _lmeMonitoringJobDefinitionName ::
      !(Maybe Text),
    _lmeMonitoringScheduleName ::
      !(Maybe Text),
    _lmeMaxResults ::
      !(Maybe Nat),
    _lmeScheduledTimeAfter ::
      !(Maybe POSIX),
    _lmeCreationTimeBefore ::
      !(Maybe POSIX),
    _lmeLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lmeSortBy ::
      !( Maybe
           MonitoringExecutionSortKey
       ),
    _lmeStatusEquals ::
      !( Maybe
           ExecutionStatus
       ),
    _lmeMonitoringTypeEquals ::
      !( Maybe
           MonitoringType
       ),
    _lmeCreationTimeAfter ::
      !(Maybe POSIX),
    _lmeScheduledTimeBefore ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMonitoringExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmeLastModifiedTimeBefore' - A filter that returns only jobs modified after a specified time.
--
-- * 'lmeSortOrder' - Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
--
-- * 'lmeNextToken' - The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
--
-- * 'lmeEndpointName' - Name of a specific endpoint to fetch jobs for.
--
-- * 'lmeMonitoringJobDefinitionName' - Gets a list of the monitoring job runs of the specified monitoring job definitions.
--
-- * 'lmeMonitoringScheduleName' - Name of a specific schedule to fetch jobs for.
--
-- * 'lmeMaxResults' - The maximum number of jobs to return in the response. The default value is 10.
--
-- * 'lmeScheduledTimeAfter' - Filter for jobs scheduled after a specified time.
--
-- * 'lmeCreationTimeBefore' - A filter that returns only jobs created before a specified time.
--
-- * 'lmeLastModifiedTimeAfter' - A filter that returns only jobs modified before a specified time.
--
-- * 'lmeSortBy' - Whether to sort results by @Status@ , @CreationTime@ , @ScheduledTime@ field. The default is @CreationTime@ .
--
-- * 'lmeStatusEquals' - A filter that retrieves only jobs with a specific status.
--
-- * 'lmeMonitoringTypeEquals' - A filter that returns only the monitoring job runs of the specified monitoring type.
--
-- * 'lmeCreationTimeAfter' - A filter that returns only jobs created after a specified time.
--
-- * 'lmeScheduledTimeBefore' - Filter for jobs scheduled before a specified time.
listMonitoringExecutions ::
  ListMonitoringExecutions
listMonitoringExecutions =
  ListMonitoringExecutions'
    { _lmeLastModifiedTimeBefore =
        Nothing,
      _lmeSortOrder = Nothing,
      _lmeNextToken = Nothing,
      _lmeEndpointName = Nothing,
      _lmeMonitoringJobDefinitionName = Nothing,
      _lmeMonitoringScheduleName = Nothing,
      _lmeMaxResults = Nothing,
      _lmeScheduledTimeAfter = Nothing,
      _lmeCreationTimeBefore = Nothing,
      _lmeLastModifiedTimeAfter = Nothing,
      _lmeSortBy = Nothing,
      _lmeStatusEquals = Nothing,
      _lmeMonitoringTypeEquals = Nothing,
      _lmeCreationTimeAfter = Nothing,
      _lmeScheduledTimeBefore = Nothing
    }

-- | A filter that returns only jobs modified after a specified time.
lmeLastModifiedTimeBefore :: Lens' ListMonitoringExecutions (Maybe UTCTime)
lmeLastModifiedTimeBefore = lens _lmeLastModifiedTimeBefore (\s a -> s {_lmeLastModifiedTimeBefore = a}) . mapping _Time

-- | Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
lmeSortOrder :: Lens' ListMonitoringExecutions (Maybe SortOrder)
lmeSortOrder = lens _lmeSortOrder (\s a -> s {_lmeSortOrder = a})

-- | The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
lmeNextToken :: Lens' ListMonitoringExecutions (Maybe Text)
lmeNextToken = lens _lmeNextToken (\s a -> s {_lmeNextToken = a})

-- | Name of a specific endpoint to fetch jobs for.
lmeEndpointName :: Lens' ListMonitoringExecutions (Maybe Text)
lmeEndpointName = lens _lmeEndpointName (\s a -> s {_lmeEndpointName = a})

-- | Gets a list of the monitoring job runs of the specified monitoring job definitions.
lmeMonitoringJobDefinitionName :: Lens' ListMonitoringExecutions (Maybe Text)
lmeMonitoringJobDefinitionName = lens _lmeMonitoringJobDefinitionName (\s a -> s {_lmeMonitoringJobDefinitionName = a})

-- | Name of a specific schedule to fetch jobs for.
lmeMonitoringScheduleName :: Lens' ListMonitoringExecutions (Maybe Text)
lmeMonitoringScheduleName = lens _lmeMonitoringScheduleName (\s a -> s {_lmeMonitoringScheduleName = a})

-- | The maximum number of jobs to return in the response. The default value is 10.
lmeMaxResults :: Lens' ListMonitoringExecutions (Maybe Natural)
lmeMaxResults = lens _lmeMaxResults (\s a -> s {_lmeMaxResults = a}) . mapping _Nat

-- | Filter for jobs scheduled after a specified time.
lmeScheduledTimeAfter :: Lens' ListMonitoringExecutions (Maybe UTCTime)
lmeScheduledTimeAfter = lens _lmeScheduledTimeAfter (\s a -> s {_lmeScheduledTimeAfter = a}) . mapping _Time

-- | A filter that returns only jobs created before a specified time.
lmeCreationTimeBefore :: Lens' ListMonitoringExecutions (Maybe UTCTime)
lmeCreationTimeBefore = lens _lmeCreationTimeBefore (\s a -> s {_lmeCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only jobs modified before a specified time.
lmeLastModifiedTimeAfter :: Lens' ListMonitoringExecutions (Maybe UTCTime)
lmeLastModifiedTimeAfter = lens _lmeLastModifiedTimeAfter (\s a -> s {_lmeLastModifiedTimeAfter = a}) . mapping _Time

-- | Whether to sort results by @Status@ , @CreationTime@ , @ScheduledTime@ field. The default is @CreationTime@ .
lmeSortBy :: Lens' ListMonitoringExecutions (Maybe MonitoringExecutionSortKey)
lmeSortBy = lens _lmeSortBy (\s a -> s {_lmeSortBy = a})

-- | A filter that retrieves only jobs with a specific status.
lmeStatusEquals :: Lens' ListMonitoringExecutions (Maybe ExecutionStatus)
lmeStatusEquals = lens _lmeStatusEquals (\s a -> s {_lmeStatusEquals = a})

-- | A filter that returns only the monitoring job runs of the specified monitoring type.
lmeMonitoringTypeEquals :: Lens' ListMonitoringExecutions (Maybe MonitoringType)
lmeMonitoringTypeEquals = lens _lmeMonitoringTypeEquals (\s a -> s {_lmeMonitoringTypeEquals = a})

-- | A filter that returns only jobs created after a specified time.
lmeCreationTimeAfter :: Lens' ListMonitoringExecutions (Maybe UTCTime)
lmeCreationTimeAfter = lens _lmeCreationTimeAfter (\s a -> s {_lmeCreationTimeAfter = a}) . mapping _Time

-- | Filter for jobs scheduled before a specified time.
lmeScheduledTimeBefore :: Lens' ListMonitoringExecutions (Maybe UTCTime)
lmeScheduledTimeBefore = lens _lmeScheduledTimeBefore (\s a -> s {_lmeScheduledTimeBefore = a}) . mapping _Time

instance AWSPager ListMonitoringExecutions where
  page rq rs
    | stop (rs ^. lmerrsNextToken) = Nothing
    | stop (rs ^. lmerrsMonitoringExecutionSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lmeNextToken .~ rs ^. lmerrsNextToken

instance AWSRequest ListMonitoringExecutions where
  type
    Rs ListMonitoringExecutions =
      ListMonitoringExecutionsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListMonitoringExecutionsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "MonitoringExecutionSummaries" .!@ mempty)
      )

instance Hashable ListMonitoringExecutions

instance NFData ListMonitoringExecutions

instance ToHeaders ListMonitoringExecutions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListMonitoringExecutions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListMonitoringExecutions where
  toJSON ListMonitoringExecutions' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lmeLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lmeSortOrder,
            ("NextToken" .=) <$> _lmeNextToken,
            ("EndpointName" .=) <$> _lmeEndpointName,
            ("MonitoringJobDefinitionName" .=)
              <$> _lmeMonitoringJobDefinitionName,
            ("MonitoringScheduleName" .=)
              <$> _lmeMonitoringScheduleName,
            ("MaxResults" .=) <$> _lmeMaxResults,
            ("ScheduledTimeAfter" .=) <$> _lmeScheduledTimeAfter,
            ("CreationTimeBefore" .=) <$> _lmeCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lmeLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lmeSortBy,
            ("StatusEquals" .=) <$> _lmeStatusEquals,
            ("MonitoringTypeEquals" .=)
              <$> _lmeMonitoringTypeEquals,
            ("CreationTimeAfter" .=) <$> _lmeCreationTimeAfter,
            ("ScheduledTimeBefore" .=)
              <$> _lmeScheduledTimeBefore
          ]
      )

instance ToPath ListMonitoringExecutions where
  toPath = const "/"

instance ToQuery ListMonitoringExecutions where
  toQuery = const mempty

-- | /See:/ 'listMonitoringExecutionsResponse' smart constructor.
data ListMonitoringExecutionsResponse = ListMonitoringExecutionsResponse'
  { _lmerrsNextToken ::
      !( Maybe
           Text
       ),
    _lmerrsResponseStatus ::
      !Int,
    _lmerrsMonitoringExecutionSummaries ::
      ![MonitoringExecutionSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMonitoringExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmerrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent reques
--
-- * 'lmerrsResponseStatus' - -- | The response status code.
--
-- * 'lmerrsMonitoringExecutionSummaries' - A JSON array in which each element is a summary for a monitoring execution.
listMonitoringExecutionsResponse ::
  -- | 'lmerrsResponseStatus'
  Int ->
  ListMonitoringExecutionsResponse
listMonitoringExecutionsResponse pResponseStatus_ =
  ListMonitoringExecutionsResponse'
    { _lmerrsNextToken =
        Nothing,
      _lmerrsResponseStatus = pResponseStatus_,
      _lmerrsMonitoringExecutionSummaries =
        mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent reques
lmerrsNextToken :: Lens' ListMonitoringExecutionsResponse (Maybe Text)
lmerrsNextToken = lens _lmerrsNextToken (\s a -> s {_lmerrsNextToken = a})

-- | -- | The response status code.
lmerrsResponseStatus :: Lens' ListMonitoringExecutionsResponse Int
lmerrsResponseStatus = lens _lmerrsResponseStatus (\s a -> s {_lmerrsResponseStatus = a})

-- | A JSON array in which each element is a summary for a monitoring execution.
lmerrsMonitoringExecutionSummaries :: Lens' ListMonitoringExecutionsResponse [MonitoringExecutionSummary]
lmerrsMonitoringExecutionSummaries = lens _lmerrsMonitoringExecutionSummaries (\s a -> s {_lmerrsMonitoringExecutionSummaries = a}) . _Coerce

instance NFData ListMonitoringExecutionsResponse

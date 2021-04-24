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
-- Module      : Network.AWS.SageMaker.ListMonitoringSchedules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns list of all monitoring schedules.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListMonitoringSchedules
  ( -- * Creating a Request
    listMonitoringSchedules,
    ListMonitoringSchedules,

    -- * Request Lenses
    lmsLastModifiedTimeBefore,
    lmsSortOrder,
    lmsNextToken,
    lmsEndpointName,
    lmsNameContains,
    lmsMonitoringJobDefinitionName,
    lmsMaxResults,
    lmsCreationTimeBefore,
    lmsLastModifiedTimeAfter,
    lmsSortBy,
    lmsStatusEquals,
    lmsMonitoringTypeEquals,
    lmsCreationTimeAfter,

    -- * Destructuring the Response
    listMonitoringSchedulesResponse,
    ListMonitoringSchedulesResponse,

    -- * Response Lenses
    lmsrrsNextToken,
    lmsrrsResponseStatus,
    lmsrrsMonitoringScheduleSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listMonitoringSchedules' smart constructor.
data ListMonitoringSchedules = ListMonitoringSchedules'
  { _lmsLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lmsSortOrder ::
      !(Maybe SortOrder),
    _lmsNextToken ::
      !(Maybe Text),
    _lmsEndpointName ::
      !(Maybe Text),
    _lmsNameContains ::
      !(Maybe Text),
    _lmsMonitoringJobDefinitionName ::
      !(Maybe Text),
    _lmsMaxResults ::
      !(Maybe Nat),
    _lmsCreationTimeBefore ::
      !(Maybe POSIX),
    _lmsLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lmsSortBy ::
      !( Maybe
           MonitoringScheduleSortKey
       ),
    _lmsStatusEquals ::
      !(Maybe ScheduleStatus),
    _lmsMonitoringTypeEquals ::
      !(Maybe MonitoringType),
    _lmsCreationTimeAfter ::
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

-- | Creates a value of 'ListMonitoringSchedules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmsLastModifiedTimeBefore' - A filter that returns only monitoring schedules modified before a specified time.
--
-- * 'lmsSortOrder' - Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
--
-- * 'lmsNextToken' - The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
--
-- * 'lmsEndpointName' - Name of a specific endpoint to fetch schedules for.
--
-- * 'lmsNameContains' - Filter for monitoring schedules whose name contains a specified string.
--
-- * 'lmsMonitoringJobDefinitionName' - Gets a list of the monitoring schedules for the specified monitoring job definition.
--
-- * 'lmsMaxResults' - The maximum number of jobs to return in the response. The default value is 10.
--
-- * 'lmsCreationTimeBefore' - A filter that returns only monitoring schedules created before a specified time.
--
-- * 'lmsLastModifiedTimeAfter' - A filter that returns only monitoring schedules modified after a specified time.
--
-- * 'lmsSortBy' - Whether to sort results by @Status@ , @CreationTime@ , @ScheduledTime@ field. The default is @CreationTime@ .
--
-- * 'lmsStatusEquals' - A filter that returns only monitoring schedules modified before a specified time.
--
-- * 'lmsMonitoringTypeEquals' - A filter that returns only the monitoring schedules for the specified monitoring type.
--
-- * 'lmsCreationTimeAfter' - A filter that returns only monitoring schedules created after a specified time.
listMonitoringSchedules ::
  ListMonitoringSchedules
listMonitoringSchedules =
  ListMonitoringSchedules'
    { _lmsLastModifiedTimeBefore =
        Nothing,
      _lmsSortOrder = Nothing,
      _lmsNextToken = Nothing,
      _lmsEndpointName = Nothing,
      _lmsNameContains = Nothing,
      _lmsMonitoringJobDefinitionName = Nothing,
      _lmsMaxResults = Nothing,
      _lmsCreationTimeBefore = Nothing,
      _lmsLastModifiedTimeAfter = Nothing,
      _lmsSortBy = Nothing,
      _lmsStatusEquals = Nothing,
      _lmsMonitoringTypeEquals = Nothing,
      _lmsCreationTimeAfter = Nothing
    }

-- | A filter that returns only monitoring schedules modified before a specified time.
lmsLastModifiedTimeBefore :: Lens' ListMonitoringSchedules (Maybe UTCTime)
lmsLastModifiedTimeBefore = lens _lmsLastModifiedTimeBefore (\s a -> s {_lmsLastModifiedTimeBefore = a}) . mapping _Time

-- | Whether to sort the results in @Ascending@ or @Descending@ order. The default is @Descending@ .
lmsSortOrder :: Lens' ListMonitoringSchedules (Maybe SortOrder)
lmsSortOrder = lens _lmsSortOrder (\s a -> s {_lmsSortOrder = a})

-- | The token returned if the response is truncated. To retrieve the next set of job executions, use it in the next request.
lmsNextToken :: Lens' ListMonitoringSchedules (Maybe Text)
lmsNextToken = lens _lmsNextToken (\s a -> s {_lmsNextToken = a})

-- | Name of a specific endpoint to fetch schedules for.
lmsEndpointName :: Lens' ListMonitoringSchedules (Maybe Text)
lmsEndpointName = lens _lmsEndpointName (\s a -> s {_lmsEndpointName = a})

-- | Filter for monitoring schedules whose name contains a specified string.
lmsNameContains :: Lens' ListMonitoringSchedules (Maybe Text)
lmsNameContains = lens _lmsNameContains (\s a -> s {_lmsNameContains = a})

-- | Gets a list of the monitoring schedules for the specified monitoring job definition.
lmsMonitoringJobDefinitionName :: Lens' ListMonitoringSchedules (Maybe Text)
lmsMonitoringJobDefinitionName = lens _lmsMonitoringJobDefinitionName (\s a -> s {_lmsMonitoringJobDefinitionName = a})

-- | The maximum number of jobs to return in the response. The default value is 10.
lmsMaxResults :: Lens' ListMonitoringSchedules (Maybe Natural)
lmsMaxResults = lens _lmsMaxResults (\s a -> s {_lmsMaxResults = a}) . mapping _Nat

-- | A filter that returns only monitoring schedules created before a specified time.
lmsCreationTimeBefore :: Lens' ListMonitoringSchedules (Maybe UTCTime)
lmsCreationTimeBefore = lens _lmsCreationTimeBefore (\s a -> s {_lmsCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only monitoring schedules modified after a specified time.
lmsLastModifiedTimeAfter :: Lens' ListMonitoringSchedules (Maybe UTCTime)
lmsLastModifiedTimeAfter = lens _lmsLastModifiedTimeAfter (\s a -> s {_lmsLastModifiedTimeAfter = a}) . mapping _Time

-- | Whether to sort results by @Status@ , @CreationTime@ , @ScheduledTime@ field. The default is @CreationTime@ .
lmsSortBy :: Lens' ListMonitoringSchedules (Maybe MonitoringScheduleSortKey)
lmsSortBy = lens _lmsSortBy (\s a -> s {_lmsSortBy = a})

-- | A filter that returns only monitoring schedules modified before a specified time.
lmsStatusEquals :: Lens' ListMonitoringSchedules (Maybe ScheduleStatus)
lmsStatusEquals = lens _lmsStatusEquals (\s a -> s {_lmsStatusEquals = a})

-- | A filter that returns only the monitoring schedules for the specified monitoring type.
lmsMonitoringTypeEquals :: Lens' ListMonitoringSchedules (Maybe MonitoringType)
lmsMonitoringTypeEquals = lens _lmsMonitoringTypeEquals (\s a -> s {_lmsMonitoringTypeEquals = a})

-- | A filter that returns only monitoring schedules created after a specified time.
lmsCreationTimeAfter :: Lens' ListMonitoringSchedules (Maybe UTCTime)
lmsCreationTimeAfter = lens _lmsCreationTimeAfter (\s a -> s {_lmsCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListMonitoringSchedules where
  page rq rs
    | stop (rs ^. lmsrrsNextToken) = Nothing
    | stop (rs ^. lmsrrsMonitoringScheduleSummaries) =
      Nothing
    | otherwise =
      Just $ rq & lmsNextToken .~ rs ^. lmsrrsNextToken

instance AWSRequest ListMonitoringSchedules where
  type
    Rs ListMonitoringSchedules =
      ListMonitoringSchedulesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListMonitoringSchedulesResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "MonitoringScheduleSummaries" .!@ mempty)
      )

instance Hashable ListMonitoringSchedules

instance NFData ListMonitoringSchedules

instance ToHeaders ListMonitoringSchedules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListMonitoringSchedules" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListMonitoringSchedules where
  toJSON ListMonitoringSchedules' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lmsLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lmsSortOrder,
            ("NextToken" .=) <$> _lmsNextToken,
            ("EndpointName" .=) <$> _lmsEndpointName,
            ("NameContains" .=) <$> _lmsNameContains,
            ("MonitoringJobDefinitionName" .=)
              <$> _lmsMonitoringJobDefinitionName,
            ("MaxResults" .=) <$> _lmsMaxResults,
            ("CreationTimeBefore" .=) <$> _lmsCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lmsLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lmsSortBy,
            ("StatusEquals" .=) <$> _lmsStatusEquals,
            ("MonitoringTypeEquals" .=)
              <$> _lmsMonitoringTypeEquals,
            ("CreationTimeAfter" .=) <$> _lmsCreationTimeAfter
          ]
      )

instance ToPath ListMonitoringSchedules where
  toPath = const "/"

instance ToQuery ListMonitoringSchedules where
  toQuery = const mempty

-- | /See:/ 'listMonitoringSchedulesResponse' smart constructor.
data ListMonitoringSchedulesResponse = ListMonitoringSchedulesResponse'
  { _lmsrrsNextToken ::
      !( Maybe
           Text
       ),
    _lmsrrsResponseStatus ::
      !Int,
    _lmsrrsMonitoringScheduleSummaries ::
      ![MonitoringScheduleSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListMonitoringSchedulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmsrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent request.
--
-- * 'lmsrrsResponseStatus' - -- | The response status code.
--
-- * 'lmsrrsMonitoringScheduleSummaries' - A JSON array in which each element is a summary for a monitoring schedule.
listMonitoringSchedulesResponse ::
  -- | 'lmsrrsResponseStatus'
  Int ->
  ListMonitoringSchedulesResponse
listMonitoringSchedulesResponse pResponseStatus_ =
  ListMonitoringSchedulesResponse'
    { _lmsrrsNextToken =
        Nothing,
      _lmsrrsResponseStatus = pResponseStatus_,
      _lmsrrsMonitoringScheduleSummaries =
        mempty
    }

-- | If the response is truncated, Amazon SageMaker returns this token. To retrieve the next set of jobs, use it in the subsequent request.
lmsrrsNextToken :: Lens' ListMonitoringSchedulesResponse (Maybe Text)
lmsrrsNextToken = lens _lmsrrsNextToken (\s a -> s {_lmsrrsNextToken = a})

-- | -- | The response status code.
lmsrrsResponseStatus :: Lens' ListMonitoringSchedulesResponse Int
lmsrrsResponseStatus = lens _lmsrrsResponseStatus (\s a -> s {_lmsrrsResponseStatus = a})

-- | A JSON array in which each element is a summary for a monitoring schedule.
lmsrrsMonitoringScheduleSummaries :: Lens' ListMonitoringSchedulesResponse [MonitoringScheduleSummary]
lmsrrsMonitoringScheduleSummaries = lens _lmsrrsMonitoringScheduleSummaries (\s a -> s {_lmsrrsMonitoringScheduleSummaries = a}) . _Coerce

instance NFData ListMonitoringSchedulesResponse

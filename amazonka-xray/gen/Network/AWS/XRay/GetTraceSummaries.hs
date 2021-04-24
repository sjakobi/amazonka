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
-- Module      : Network.AWS.XRay.GetTraceSummaries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to @BatchGetTraces@ .
--
--
-- A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through @api.example.com@ :
--
-- @service("api.example.com")@
--
-- This filter expression finds traces that have an annotation named @account@ with the value @12345@ :
--
-- @annotation.account = "12345"@
--
-- For a full list of indexed fields and keywords that you can use in filter expressions, see <https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html Using Filter Expressions> in the /AWS X-Ray Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetTraceSummaries
  ( -- * Creating a Request
    getTraceSummaries,
    GetTraceSummaries,

    -- * Request Lenses
    gtsNextToken,
    gtsFilterExpression,
    gtsTimeRangeType,
    gtsSampling,
    gtsSamplingStrategy,
    gtsStartTime,
    gtsEndTime,

    -- * Destructuring the Response
    getTraceSummariesResponse,
    GetTraceSummariesResponse,

    -- * Response Lenses
    gtsrrsNextToken,
    gtsrrsTracesProcessedCount,
    gtsrrsTraceSummaries,
    gtsrrsApproximateTime,
    gtsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getTraceSummaries' smart constructor.
data GetTraceSummaries = GetTraceSummaries'
  { _gtsNextToken ::
      !(Maybe Text),
    _gtsFilterExpression ::
      !(Maybe Text),
    _gtsTimeRangeType ::
      !(Maybe TimeRangeType),
    _gtsSampling :: !(Maybe Bool),
    _gtsSamplingStrategy ::
      !(Maybe SamplingStrategy),
    _gtsStartTime :: !POSIX,
    _gtsEndTime :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTraceSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsNextToken' - Specify the pagination token returned by a previous request to retrieve the next page of results.
--
-- * 'gtsFilterExpression' - Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.
--
-- * 'gtsTimeRangeType' - A parameter to indicate whether to query trace summaries by TraceId or Event time.
--
-- * 'gtsSampling' - Set to @true@ to get summaries for only a subset of available traces.
--
-- * 'gtsSamplingStrategy' - A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and Value.
--
-- * 'gtsStartTime' - The start of the time frame for which to retrieve traces.
--
-- * 'gtsEndTime' - The end of the time frame for which to retrieve traces.
getTraceSummaries ::
  -- | 'gtsStartTime'
  UTCTime ->
  -- | 'gtsEndTime'
  UTCTime ->
  GetTraceSummaries
getTraceSummaries pStartTime_ pEndTime_ =
  GetTraceSummaries'
    { _gtsNextToken = Nothing,
      _gtsFilterExpression = Nothing,
      _gtsTimeRangeType = Nothing,
      _gtsSampling = Nothing,
      _gtsSamplingStrategy = Nothing,
      _gtsStartTime = _Time # pStartTime_,
      _gtsEndTime = _Time # pEndTime_
    }

-- | Specify the pagination token returned by a previous request to retrieve the next page of results.
gtsNextToken :: Lens' GetTraceSummaries (Maybe Text)
gtsNextToken = lens _gtsNextToken (\s a -> s {_gtsNextToken = a})

-- | Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.
gtsFilterExpression :: Lens' GetTraceSummaries (Maybe Text)
gtsFilterExpression = lens _gtsFilterExpression (\s a -> s {_gtsFilterExpression = a})

-- | A parameter to indicate whether to query trace summaries by TraceId or Event time.
gtsTimeRangeType :: Lens' GetTraceSummaries (Maybe TimeRangeType)
gtsTimeRangeType = lens _gtsTimeRangeType (\s a -> s {_gtsTimeRangeType = a})

-- | Set to @true@ to get summaries for only a subset of available traces.
gtsSampling :: Lens' GetTraceSummaries (Maybe Bool)
gtsSampling = lens _gtsSampling (\s a -> s {_gtsSampling = a})

-- | A parameter to indicate whether to enable sampling on trace summaries. Input parameters are Name and Value.
gtsSamplingStrategy :: Lens' GetTraceSummaries (Maybe SamplingStrategy)
gtsSamplingStrategy = lens _gtsSamplingStrategy (\s a -> s {_gtsSamplingStrategy = a})

-- | The start of the time frame for which to retrieve traces.
gtsStartTime :: Lens' GetTraceSummaries UTCTime
gtsStartTime = lens _gtsStartTime (\s a -> s {_gtsStartTime = a}) . _Time

-- | The end of the time frame for which to retrieve traces.
gtsEndTime :: Lens' GetTraceSummaries UTCTime
gtsEndTime = lens _gtsEndTime (\s a -> s {_gtsEndTime = a}) . _Time

instance AWSPager GetTraceSummaries where
  page rq rs
    | stop (rs ^. gtsrrsNextToken) = Nothing
    | stop (rs ^. gtsrrsTraceSummaries) = Nothing
    | otherwise =
      Just $ rq & gtsNextToken .~ rs ^. gtsrrsNextToken

instance AWSRequest GetTraceSummaries where
  type Rs GetTraceSummaries = GetTraceSummariesResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetTraceSummariesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TracesProcessedCount")
            <*> (x .?> "TraceSummaries" .!@ mempty)
            <*> (x .?> "ApproximateTime")
            <*> (pure (fromEnum s))
      )

instance Hashable GetTraceSummaries

instance NFData GetTraceSummaries

instance ToHeaders GetTraceSummaries where
  toHeaders = const mempty

instance ToJSON GetTraceSummaries where
  toJSON GetTraceSummaries' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gtsNextToken,
            ("FilterExpression" .=) <$> _gtsFilterExpression,
            ("TimeRangeType" .=) <$> _gtsTimeRangeType,
            ("Sampling" .=) <$> _gtsSampling,
            ("SamplingStrategy" .=) <$> _gtsSamplingStrategy,
            Just ("StartTime" .= _gtsStartTime),
            Just ("EndTime" .= _gtsEndTime)
          ]
      )

instance ToPath GetTraceSummaries where
  toPath = const "/TraceSummaries"

instance ToQuery GetTraceSummaries where
  toQuery = const mempty

-- | /See:/ 'getTraceSummariesResponse' smart constructor.
data GetTraceSummariesResponse = GetTraceSummariesResponse'
  { _gtsrrsNextToken ::
      !(Maybe Text),
    _gtsrrsTracesProcessedCount ::
      !(Maybe Integer),
    _gtsrrsTraceSummaries ::
      !( Maybe
           [TraceSummary]
       ),
    _gtsrrsApproximateTime ::
      !(Maybe POSIX),
    _gtsrrsResponseStatus ::
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

-- | Creates a value of 'GetTraceSummariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsrrsNextToken' - If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most recent results, closest to the end of the time frame.
--
-- * 'gtsrrsTracesProcessedCount' - The total number of traces processed, including traces that did not match the specified filter expression.
--
-- * 'gtsrrsTraceSummaries' - Trace IDs and annotations for traces that were found in the specified time frame.
--
-- * 'gtsrrsApproximateTime' - The start time of this page of results.
--
-- * 'gtsrrsResponseStatus' - -- | The response status code.
getTraceSummariesResponse ::
  -- | 'gtsrrsResponseStatus'
  Int ->
  GetTraceSummariesResponse
getTraceSummariesResponse pResponseStatus_ =
  GetTraceSummariesResponse'
    { _gtsrrsNextToken =
        Nothing,
      _gtsrrsTracesProcessedCount = Nothing,
      _gtsrrsTraceSummaries = Nothing,
      _gtsrrsApproximateTime = Nothing,
      _gtsrrsResponseStatus = pResponseStatus_
    }

-- | If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most recent results, closest to the end of the time frame.
gtsrrsNextToken :: Lens' GetTraceSummariesResponse (Maybe Text)
gtsrrsNextToken = lens _gtsrrsNextToken (\s a -> s {_gtsrrsNextToken = a})

-- | The total number of traces processed, including traces that did not match the specified filter expression.
gtsrrsTracesProcessedCount :: Lens' GetTraceSummariesResponse (Maybe Integer)
gtsrrsTracesProcessedCount = lens _gtsrrsTracesProcessedCount (\s a -> s {_gtsrrsTracesProcessedCount = a})

-- | Trace IDs and annotations for traces that were found in the specified time frame.
gtsrrsTraceSummaries :: Lens' GetTraceSummariesResponse [TraceSummary]
gtsrrsTraceSummaries = lens _gtsrrsTraceSummaries (\s a -> s {_gtsrrsTraceSummaries = a}) . _Default . _Coerce

-- | The start time of this page of results.
gtsrrsApproximateTime :: Lens' GetTraceSummariesResponse (Maybe UTCTime)
gtsrrsApproximateTime = lens _gtsrrsApproximateTime (\s a -> s {_gtsrrsApproximateTime = a}) . mapping _Time

-- | -- | The response status code.
gtsrrsResponseStatus :: Lens' GetTraceSummariesResponse Int
gtsrrsResponseStatus = lens _gtsrrsResponseStatus (\s a -> s {_gtsrrsResponseStatus = a})

instance NFData GetTraceSummariesResponse

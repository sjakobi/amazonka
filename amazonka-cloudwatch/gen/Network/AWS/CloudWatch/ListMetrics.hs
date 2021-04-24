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
-- Module      : Network.AWS.CloudWatch.ListMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the specified metrics. You can use the returned metrics with <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html GetMetricData> or <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html GetMetricStatistics> to obtain statistical data.
--
--
-- Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls.
--
-- After you create a metric, allow up to 15 minutes before the metric appears. You can see statistics about the metric sooner by using <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html GetMetricData> or <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html GetMetricStatistics> .
--
-- @ListMetrics@ doesn't return information about metrics if those metrics haven't reported data in the past two weeks. To retrieve those metrics, use <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html GetMetricData> or <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html GetMetricStatistics> .
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatch.ListMetrics
  ( -- * Creating a Request
    listMetrics,
    ListMetrics,

    -- * Request Lenses
    lmNextToken,
    lmMetricName,
    lmDimensions,
    lmNamespace,
    lmRecentlyActive,

    -- * Destructuring the Response
    listMetricsResponse,
    ListMetricsResponse,

    -- * Response Lenses
    lmrrsNextToken,
    lmrrsMetrics,
    lmrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listMetrics' smart constructor.
data ListMetrics = ListMetrics'
  { _lmNextToken ::
      !(Maybe Text),
    _lmMetricName :: !(Maybe Text),
    _lmDimensions :: !(Maybe [DimensionFilter]),
    _lmNamespace :: !(Maybe Text),
    _lmRecentlyActive :: !(Maybe RecentlyActive)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmNextToken' - The token returned by a previous call to indicate that there is more data available.
--
-- * 'lmMetricName' - The name of the metric to filter against. Only the metrics with names that match exactly will be returned.
--
-- * 'lmDimensions' - The dimensions to filter against. Only the dimensions that match exactly will be returned.
--
-- * 'lmNamespace' - The metric namespace to filter against. Only the namespace that matches exactly will be returned.
--
-- * 'lmRecentlyActive' - To filter the results to show only metrics that have had data points published in the past three hours, specify this parameter with a value of @PT3H@ . This is the only valid value for this parameter. The results that are returned are an approximation of the value you specify. There is a low probability that the returned results include metrics with last published data as much as 40 minutes more than the specified time interval.
listMetrics ::
  ListMetrics
listMetrics =
  ListMetrics'
    { _lmNextToken = Nothing,
      _lmMetricName = Nothing,
      _lmDimensions = Nothing,
      _lmNamespace = Nothing,
      _lmRecentlyActive = Nothing
    }

-- | The token returned by a previous call to indicate that there is more data available.
lmNextToken :: Lens' ListMetrics (Maybe Text)
lmNextToken = lens _lmNextToken (\s a -> s {_lmNextToken = a})

-- | The name of the metric to filter against. Only the metrics with names that match exactly will be returned.
lmMetricName :: Lens' ListMetrics (Maybe Text)
lmMetricName = lens _lmMetricName (\s a -> s {_lmMetricName = a})

-- | The dimensions to filter against. Only the dimensions that match exactly will be returned.
lmDimensions :: Lens' ListMetrics [DimensionFilter]
lmDimensions = lens _lmDimensions (\s a -> s {_lmDimensions = a}) . _Default . _Coerce

-- | The metric namespace to filter against. Only the namespace that matches exactly will be returned.
lmNamespace :: Lens' ListMetrics (Maybe Text)
lmNamespace = lens _lmNamespace (\s a -> s {_lmNamespace = a})

-- | To filter the results to show only metrics that have had data points published in the past three hours, specify this parameter with a value of @PT3H@ . This is the only valid value for this parameter. The results that are returned are an approximation of the value you specify. There is a low probability that the returned results include metrics with last published data as much as 40 minutes more than the specified time interval.
lmRecentlyActive :: Lens' ListMetrics (Maybe RecentlyActive)
lmRecentlyActive = lens _lmRecentlyActive (\s a -> s {_lmRecentlyActive = a})

instance AWSPager ListMetrics where
  page rq rs
    | stop (rs ^. lmrrsNextToken) = Nothing
    | stop (rs ^. lmrrsMetrics) = Nothing
    | otherwise =
      Just $ rq & lmNextToken .~ rs ^. lmrrsNextToken

instance AWSRequest ListMetrics where
  type Rs ListMetrics = ListMetricsResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "ListMetricsResult"
      ( \s h x ->
          ListMetricsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "Metrics" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListMetrics

instance NFData ListMetrics

instance ToHeaders ListMetrics where
  toHeaders = const mempty

instance ToPath ListMetrics where
  toPath = const "/"

instance ToQuery ListMetrics where
  toQuery ListMetrics' {..} =
    mconcat
      [ "Action" =: ("ListMetrics" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "NextToken" =: _lmNextToken,
        "MetricName" =: _lmMetricName,
        "Dimensions"
          =: toQuery (toQueryList "member" <$> _lmDimensions),
        "Namespace" =: _lmNamespace,
        "RecentlyActive" =: _lmRecentlyActive
      ]

-- | /See:/ 'listMetricsResponse' smart constructor.
data ListMetricsResponse = ListMetricsResponse'
  { _lmrrsNextToken ::
      !(Maybe Text),
    _lmrrsMetrics ::
      !(Maybe [Metric]),
    _lmrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMetricsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrrsNextToken' - The token that marks the start of the next batch of returned results.
--
-- * 'lmrrsMetrics' - The metrics that match your request.
--
-- * 'lmrrsResponseStatus' - -- | The response status code.
listMetricsResponse ::
  -- | 'lmrrsResponseStatus'
  Int ->
  ListMetricsResponse
listMetricsResponse pResponseStatus_ =
  ListMetricsResponse'
    { _lmrrsNextToken = Nothing,
      _lmrrsMetrics = Nothing,
      _lmrrsResponseStatus = pResponseStatus_
    }

-- | The token that marks the start of the next batch of returned results.
lmrrsNextToken :: Lens' ListMetricsResponse (Maybe Text)
lmrrsNextToken = lens _lmrrsNextToken (\s a -> s {_lmrrsNextToken = a})

-- | The metrics that match your request.
lmrrsMetrics :: Lens' ListMetricsResponse [Metric]
lmrrsMetrics = lens _lmrrsMetrics (\s a -> s {_lmrrsMetrics = a}) . _Default . _Coerce

-- | -- | The response status code.
lmrrsResponseStatus :: Lens' ListMetricsResponse Int
lmrrsResponseStatus = lens _lmrrsResponseStatus (\s a -> s {_lmrrsResponseStatus = a})

instance NFData ListMetricsResponse

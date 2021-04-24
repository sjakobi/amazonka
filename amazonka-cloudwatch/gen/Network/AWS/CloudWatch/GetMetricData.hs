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
-- Module      : Network.AWS.CloudWatch.GetMetricData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use the @GetMetricData@ API to retrieve as many as 500 different metrics in a single request, with a total of as many as 100,800 data points. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax Metric Math Syntax and Functions> in the /Amazon CloudWatch User Guide/ .
--
--
-- Calls to the @GetMetricData@ API have a different pricing structure than calls to @GetMetricStatistics@ . For more information about pricing, see <https://aws.amazon.com/cloudwatch/pricing/ Amazon CloudWatch Pricing> .
--
-- Amazon CloudWatch retains metric data as follows:
--
--     * Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a @StorageResolution@ of 1.
--
--     * Data points with a period of 60 seconds (1-minute) are available for 15 days.
--
--     * Data points with a period of 300 seconds (5-minute) are available for 63 days.
--
--     * Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).
--
--
--
-- Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.
--
-- If you omit @Unit@ in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatch.GetMetricData
  ( -- * Creating a Request
    getMetricData,
    GetMetricData,

    -- * Request Lenses
    gmdNextToken,
    gmdScanBy,
    gmdLabelOptions,
    gmdMaxDatapoints,
    gmdMetricDataQueries,
    gmdStartTime,
    gmdEndTime,

    -- * Destructuring the Response
    getMetricDataResponse,
    GetMetricDataResponse,

    -- * Response Lenses
    gmdrrsNextToken,
    gmdrrsMetricDataResults,
    gmdrrsMessages,
    gmdrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMetricData' smart constructor.
data GetMetricData = GetMetricData'
  { _gmdNextToken ::
      !(Maybe Text),
    _gmdScanBy :: !(Maybe ScanBy),
    _gmdLabelOptions :: !(Maybe LabelOptions),
    _gmdMaxDatapoints :: !(Maybe Int),
    _gmdMetricDataQueries :: ![MetricDataQuery],
    _gmdStartTime :: !ISO8601,
    _gmdEndTime :: !ISO8601
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMetricData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmdNextToken' - Include this value, if it was returned by the previous @GetMetricData@ operation, to get the next set of data points.
--
-- * 'gmdScanBy' - The order in which data points should be returned. @TimestampDescending@ returns the newest data first and paginates when the @MaxDatapoints@ limit is reached. @TimestampAscending@ returns the oldest data first and paginates when the @MaxDatapoints@ limit is reached.
--
-- * 'gmdLabelOptions' - This structure includes the @Timezone@ parameter, which you can use to specify your time zone so that the labels of returned data display the correct time for your time zone.
--
-- * 'gmdMaxDatapoints' - The maximum number of data points the request should return before paginating. If you omit this, the default of 100,800 is used.
--
-- * 'gmdMetricDataQueries' - The metric queries to be returned. A single @GetMetricData@ call can include as many as 500 @MetricDataQuery@ structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data.
--
-- * 'gmdStartTime' - The time stamp indicating the earliest data to be returned. The value specified is inclusive; results include data points with the specified time stamp.  CloudWatch rounds the specified time stamp as follows:     * Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.     * Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.     * Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00. If you set @Period@ to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15.  For better performance, specify @StartTime@ and @EndTime@ values that align with the value of the metric's @Period@ and sync up with the beginning and end of an hour. For example, if the @Period@ of a metric is 5 minutes, specifying 12:05 or 12:30 as @StartTime@ can get a faster response from CloudWatch than setting 12:07 or 12:29 as the @StartTime@ .
--
-- * 'gmdEndTime' - The time stamp indicating the latest data to be returned. The value specified is exclusive; results include data points up to the specified time stamp. For better performance, specify @StartTime@ and @EndTime@ values that align with the value of the metric's @Period@ and sync up with the beginning and end of an hour. For example, if the @Period@ of a metric is 5 minutes, specifying 12:05 or 12:30 as @EndTime@ can get a faster response from CloudWatch than setting 12:07 or 12:29 as the @EndTime@ .
getMetricData ::
  -- | 'gmdStartTime'
  UTCTime ->
  -- | 'gmdEndTime'
  UTCTime ->
  GetMetricData
getMetricData pStartTime_ pEndTime_ =
  GetMetricData'
    { _gmdNextToken = Nothing,
      _gmdScanBy = Nothing,
      _gmdLabelOptions = Nothing,
      _gmdMaxDatapoints = Nothing,
      _gmdMetricDataQueries = mempty,
      _gmdStartTime = _Time # pStartTime_,
      _gmdEndTime = _Time # pEndTime_
    }

-- | Include this value, if it was returned by the previous @GetMetricData@ operation, to get the next set of data points.
gmdNextToken :: Lens' GetMetricData (Maybe Text)
gmdNextToken = lens _gmdNextToken (\s a -> s {_gmdNextToken = a})

-- | The order in which data points should be returned. @TimestampDescending@ returns the newest data first and paginates when the @MaxDatapoints@ limit is reached. @TimestampAscending@ returns the oldest data first and paginates when the @MaxDatapoints@ limit is reached.
gmdScanBy :: Lens' GetMetricData (Maybe ScanBy)
gmdScanBy = lens _gmdScanBy (\s a -> s {_gmdScanBy = a})

-- | This structure includes the @Timezone@ parameter, which you can use to specify your time zone so that the labels of returned data display the correct time for your time zone.
gmdLabelOptions :: Lens' GetMetricData (Maybe LabelOptions)
gmdLabelOptions = lens _gmdLabelOptions (\s a -> s {_gmdLabelOptions = a})

-- | The maximum number of data points the request should return before paginating. If you omit this, the default of 100,800 is used.
gmdMaxDatapoints :: Lens' GetMetricData (Maybe Int)
gmdMaxDatapoints = lens _gmdMaxDatapoints (\s a -> s {_gmdMaxDatapoints = a})

-- | The metric queries to be returned. A single @GetMetricData@ call can include as many as 500 @MetricDataQuery@ structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data.
gmdMetricDataQueries :: Lens' GetMetricData [MetricDataQuery]
gmdMetricDataQueries = lens _gmdMetricDataQueries (\s a -> s {_gmdMetricDataQueries = a}) . _Coerce

-- | The time stamp indicating the earliest data to be returned. The value specified is inclusive; results include data points with the specified time stamp.  CloudWatch rounds the specified time stamp as follows:     * Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.     * Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.     * Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00. If you set @Period@ to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15.  For better performance, specify @StartTime@ and @EndTime@ values that align with the value of the metric's @Period@ and sync up with the beginning and end of an hour. For example, if the @Period@ of a metric is 5 minutes, specifying 12:05 or 12:30 as @StartTime@ can get a faster response from CloudWatch than setting 12:07 or 12:29 as the @StartTime@ .
gmdStartTime :: Lens' GetMetricData UTCTime
gmdStartTime = lens _gmdStartTime (\s a -> s {_gmdStartTime = a}) . _Time

-- | The time stamp indicating the latest data to be returned. The value specified is exclusive; results include data points up to the specified time stamp. For better performance, specify @StartTime@ and @EndTime@ values that align with the value of the metric's @Period@ and sync up with the beginning and end of an hour. For example, if the @Period@ of a metric is 5 minutes, specifying 12:05 or 12:30 as @EndTime@ can get a faster response from CloudWatch than setting 12:07 or 12:29 as the @EndTime@ .
gmdEndTime :: Lens' GetMetricData UTCTime
gmdEndTime = lens _gmdEndTime (\s a -> s {_gmdEndTime = a}) . _Time

instance AWSPager GetMetricData where
  page rq rs
    | stop (rs ^. gmdrrsNextToken) = Nothing
    | stop (rs ^. gmdrrsMetricDataResults) = Nothing
    | stop (rs ^. gmdrrsMessages) = Nothing
    | otherwise =
      Just $ rq & gmdNextToken .~ rs ^. gmdrrsNextToken

instance AWSRequest GetMetricData where
  type Rs GetMetricData = GetMetricDataResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "GetMetricDataResult"
      ( \s h x ->
          GetMetricDataResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "MetricDataResults" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "Messages" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetMetricData

instance NFData GetMetricData

instance ToHeaders GetMetricData where
  toHeaders = const mempty

instance ToPath GetMetricData where
  toPath = const "/"

instance ToQuery GetMetricData where
  toQuery GetMetricData' {..} =
    mconcat
      [ "Action" =: ("GetMetricData" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "NextToken" =: _gmdNextToken,
        "ScanBy" =: _gmdScanBy,
        "LabelOptions" =: _gmdLabelOptions,
        "MaxDatapoints" =: _gmdMaxDatapoints,
        "MetricDataQueries"
          =: toQueryList "member" _gmdMetricDataQueries,
        "StartTime" =: _gmdStartTime,
        "EndTime" =: _gmdEndTime
      ]

-- | /See:/ 'getMetricDataResponse' smart constructor.
data GetMetricDataResponse = GetMetricDataResponse'
  { _gmdrrsNextToken ::
      !(Maybe Text),
    _gmdrrsMetricDataResults ::
      !(Maybe [MetricDataResult]),
    _gmdrrsMessages ::
      !(Maybe [MessageData]),
    _gmdrrsResponseStatus ::
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

-- | Creates a value of 'GetMetricDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmdrrsNextToken' - A token that marks the next batch of returned results.
--
-- * 'gmdrrsMetricDataResults' - The metrics that are returned, including the metric name, namespace, and dimensions.
--
-- * 'gmdrrsMessages' - Contains a message about this @GetMetricData@ operation, if the operation results in such a message. An example of a message that might be returned is @Maximum number of allowed metrics exceeded@ . If there is a message, as much of the operation as possible is still executed. A message appears here only if it is related to the global @GetMetricData@ operation. Any message about a specific metric returned by the operation appears in the @MetricDataResult@ object returned for that metric.
--
-- * 'gmdrrsResponseStatus' - -- | The response status code.
getMetricDataResponse ::
  -- | 'gmdrrsResponseStatus'
  Int ->
  GetMetricDataResponse
getMetricDataResponse pResponseStatus_ =
  GetMetricDataResponse'
    { _gmdrrsNextToken = Nothing,
      _gmdrrsMetricDataResults = Nothing,
      _gmdrrsMessages = Nothing,
      _gmdrrsResponseStatus = pResponseStatus_
    }

-- | A token that marks the next batch of returned results.
gmdrrsNextToken :: Lens' GetMetricDataResponse (Maybe Text)
gmdrrsNextToken = lens _gmdrrsNextToken (\s a -> s {_gmdrrsNextToken = a})

-- | The metrics that are returned, including the metric name, namespace, and dimensions.
gmdrrsMetricDataResults :: Lens' GetMetricDataResponse [MetricDataResult]
gmdrrsMetricDataResults = lens _gmdrrsMetricDataResults (\s a -> s {_gmdrrsMetricDataResults = a}) . _Default . _Coerce

-- | Contains a message about this @GetMetricData@ operation, if the operation results in such a message. An example of a message that might be returned is @Maximum number of allowed metrics exceeded@ . If there is a message, as much of the operation as possible is still executed. A message appears here only if it is related to the global @GetMetricData@ operation. Any message about a specific metric returned by the operation appears in the @MetricDataResult@ object returned for that metric.
gmdrrsMessages :: Lens' GetMetricDataResponse [MessageData]
gmdrrsMessages = lens _gmdrrsMessages (\s a -> s {_gmdrrsMessages = a}) . _Default . _Coerce

-- | -- | The response status code.
gmdrrsResponseStatus :: Lens' GetMetricDataResponse Int
gmdrrsResponseStatus = lens _gmdrrsResponseStatus (\s a -> s {_gmdrrsResponseStatus = a})

instance NFData GetMetricDataResponse

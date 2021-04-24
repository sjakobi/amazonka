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
-- Module      : Network.AWS.XRay.GetTimeSeriesServiceStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an aggregation of service statistics defined by a specific time range.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetTimeSeriesServiceStatistics
  ( -- * Creating a Request
    getTimeSeriesServiceStatistics,
    GetTimeSeriesServiceStatistics,

    -- * Request Lenses
    gtsssNextToken,
    gtsssEntitySelectorExpression,
    gtsssGroupName,
    gtsssForecastStatistics,
    gtsssPeriod,
    gtsssGroupARN,
    gtsssStartTime,
    gtsssEndTime,

    -- * Destructuring the Response
    getTimeSeriesServiceStatisticsResponse,
    GetTimeSeriesServiceStatisticsResponse,

    -- * Response Lenses
    gtsssrrsNextToken,
    gtsssrrsTimeSeriesServiceStatistics,
    gtsssrrsContainsOldGroupVersions,
    gtsssrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getTimeSeriesServiceStatistics' smart constructor.
data GetTimeSeriesServiceStatistics = GetTimeSeriesServiceStatistics'
  { _gtsssNextToken ::
      !( Maybe
           Text
       ),
    _gtsssEntitySelectorExpression ::
      !( Maybe
           Text
       ),
    _gtsssGroupName ::
      !( Maybe
           Text
       ),
    _gtsssForecastStatistics ::
      !( Maybe
           Bool
       ),
    _gtsssPeriod ::
      !( Maybe
           Int
       ),
    _gtsssGroupARN ::
      !( Maybe
           Text
       ),
    _gtsssStartTime ::
      !POSIX,
    _gtsssEndTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetTimeSeriesServiceStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsssNextToken' - Pagination token.
--
-- * 'gtsssEntitySelectorExpression' - A filter expression defining entities that will be aggregated for statistics. Supports ID, service, and edge functions. If no selector expression is specified, edge statistics are returned.
--
-- * 'gtsssGroupName' - The case-sensitive name of the group for which to pull statistics from.
--
-- * 'gtsssForecastStatistics' - The forecasted high and low fault count values. Forecast enabled requests require the EntitySelectorExpression ID be provided.
--
-- * 'gtsssPeriod' - Aggregation period in seconds.
--
-- * 'gtsssGroupARN' - The Amazon Resource Name (ARN) of the group for which to pull statistics from.
--
-- * 'gtsssStartTime' - The start of the time frame for which to aggregate statistics.
--
-- * 'gtsssEndTime' - The end of the time frame for which to aggregate statistics.
getTimeSeriesServiceStatistics ::
  -- | 'gtsssStartTime'
  UTCTime ->
  -- | 'gtsssEndTime'
  UTCTime ->
  GetTimeSeriesServiceStatistics
getTimeSeriesServiceStatistics pStartTime_ pEndTime_ =
  GetTimeSeriesServiceStatistics'
    { _gtsssNextToken =
        Nothing,
      _gtsssEntitySelectorExpression = Nothing,
      _gtsssGroupName = Nothing,
      _gtsssForecastStatistics = Nothing,
      _gtsssPeriod = Nothing,
      _gtsssGroupARN = Nothing,
      _gtsssStartTime = _Time # pStartTime_,
      _gtsssEndTime = _Time # pEndTime_
    }

-- | Pagination token.
gtsssNextToken :: Lens' GetTimeSeriesServiceStatistics (Maybe Text)
gtsssNextToken = lens _gtsssNextToken (\s a -> s {_gtsssNextToken = a})

-- | A filter expression defining entities that will be aggregated for statistics. Supports ID, service, and edge functions. If no selector expression is specified, edge statistics are returned.
gtsssEntitySelectorExpression :: Lens' GetTimeSeriesServiceStatistics (Maybe Text)
gtsssEntitySelectorExpression = lens _gtsssEntitySelectorExpression (\s a -> s {_gtsssEntitySelectorExpression = a})

-- | The case-sensitive name of the group for which to pull statistics from.
gtsssGroupName :: Lens' GetTimeSeriesServiceStatistics (Maybe Text)
gtsssGroupName = lens _gtsssGroupName (\s a -> s {_gtsssGroupName = a})

-- | The forecasted high and low fault count values. Forecast enabled requests require the EntitySelectorExpression ID be provided.
gtsssForecastStatistics :: Lens' GetTimeSeriesServiceStatistics (Maybe Bool)
gtsssForecastStatistics = lens _gtsssForecastStatistics (\s a -> s {_gtsssForecastStatistics = a})

-- | Aggregation period in seconds.
gtsssPeriod :: Lens' GetTimeSeriesServiceStatistics (Maybe Int)
gtsssPeriod = lens _gtsssPeriod (\s a -> s {_gtsssPeriod = a})

-- | The Amazon Resource Name (ARN) of the group for which to pull statistics from.
gtsssGroupARN :: Lens' GetTimeSeriesServiceStatistics (Maybe Text)
gtsssGroupARN = lens _gtsssGroupARN (\s a -> s {_gtsssGroupARN = a})

-- | The start of the time frame for which to aggregate statistics.
gtsssStartTime :: Lens' GetTimeSeriesServiceStatistics UTCTime
gtsssStartTime = lens _gtsssStartTime (\s a -> s {_gtsssStartTime = a}) . _Time

-- | The end of the time frame for which to aggregate statistics.
gtsssEndTime :: Lens' GetTimeSeriesServiceStatistics UTCTime
gtsssEndTime = lens _gtsssEndTime (\s a -> s {_gtsssEndTime = a}) . _Time

instance AWSPager GetTimeSeriesServiceStatistics where
  page rq rs
    | stop (rs ^. gtsssrrsNextToken) = Nothing
    | stop (rs ^. gtsssrrsTimeSeriesServiceStatistics) =
      Nothing
    | otherwise =
      Just $ rq & gtsssNextToken .~ rs ^. gtsssrrsNextToken

instance AWSRequest GetTimeSeriesServiceStatistics where
  type
    Rs GetTimeSeriesServiceStatistics =
      GetTimeSeriesServiceStatisticsResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetTimeSeriesServiceStatisticsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TimeSeriesServiceStatistics" .!@ mempty)
            <*> (x .?> "ContainsOldGroupVersions")
            <*> (pure (fromEnum s))
      )

instance Hashable GetTimeSeriesServiceStatistics

instance NFData GetTimeSeriesServiceStatistics

instance ToHeaders GetTimeSeriesServiceStatistics where
  toHeaders = const mempty

instance ToJSON GetTimeSeriesServiceStatistics where
  toJSON GetTimeSeriesServiceStatistics' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gtsssNextToken,
            ("EntitySelectorExpression" .=)
              <$> _gtsssEntitySelectorExpression,
            ("GroupName" .=) <$> _gtsssGroupName,
            ("ForecastStatistics" .=)
              <$> _gtsssForecastStatistics,
            ("Period" .=) <$> _gtsssPeriod,
            ("GroupARN" .=) <$> _gtsssGroupARN,
            Just ("StartTime" .= _gtsssStartTime),
            Just ("EndTime" .= _gtsssEndTime)
          ]
      )

instance ToPath GetTimeSeriesServiceStatistics where
  toPath = const "/TimeSeriesServiceStatistics"

instance ToQuery GetTimeSeriesServiceStatistics where
  toQuery = const mempty

-- | /See:/ 'getTimeSeriesServiceStatisticsResponse' smart constructor.
data GetTimeSeriesServiceStatisticsResponse = GetTimeSeriesServiceStatisticsResponse'
  { _gtsssrrsNextToken ::
      !( Maybe
           Text
       ),
    _gtsssrrsTimeSeriesServiceStatistics ::
      !( Maybe
           [TimeSeriesServiceStatistics]
       ),
    _gtsssrrsContainsOldGroupVersions ::
      !( Maybe
           Bool
       ),
    _gtsssrrsResponseStatus ::
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

-- | Creates a value of 'GetTimeSeriesServiceStatisticsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsssrrsNextToken' - Pagination token.
--
-- * 'gtsssrrsTimeSeriesServiceStatistics' - The collection of statistics.
--
-- * 'gtsssrrsContainsOldGroupVersions' - A flag indicating whether or not a group's filter expression has been consistent, or if a returned aggregation might show statistics from an older version of the group's filter expression.
--
-- * 'gtsssrrsResponseStatus' - -- | The response status code.
getTimeSeriesServiceStatisticsResponse ::
  -- | 'gtsssrrsResponseStatus'
  Int ->
  GetTimeSeriesServiceStatisticsResponse
getTimeSeriesServiceStatisticsResponse
  pResponseStatus_ =
    GetTimeSeriesServiceStatisticsResponse'
      { _gtsssrrsNextToken =
          Nothing,
        _gtsssrrsTimeSeriesServiceStatistics =
          Nothing,
        _gtsssrrsContainsOldGroupVersions =
          Nothing,
        _gtsssrrsResponseStatus =
          pResponseStatus_
      }

-- | Pagination token.
gtsssrrsNextToken :: Lens' GetTimeSeriesServiceStatisticsResponse (Maybe Text)
gtsssrrsNextToken = lens _gtsssrrsNextToken (\s a -> s {_gtsssrrsNextToken = a})

-- | The collection of statistics.
gtsssrrsTimeSeriesServiceStatistics :: Lens' GetTimeSeriesServiceStatisticsResponse [TimeSeriesServiceStatistics]
gtsssrrsTimeSeriesServiceStatistics = lens _gtsssrrsTimeSeriesServiceStatistics (\s a -> s {_gtsssrrsTimeSeriesServiceStatistics = a}) . _Default . _Coerce

-- | A flag indicating whether or not a group's filter expression has been consistent, or if a returned aggregation might show statistics from an older version of the group's filter expression.
gtsssrrsContainsOldGroupVersions :: Lens' GetTimeSeriesServiceStatisticsResponse (Maybe Bool)
gtsssrrsContainsOldGroupVersions = lens _gtsssrrsContainsOldGroupVersions (\s a -> s {_gtsssrrsContainsOldGroupVersions = a})

-- | -- | The response status code.
gtsssrrsResponseStatus :: Lens' GetTimeSeriesServiceStatisticsResponse Int
gtsssrrsResponseStatus = lens _gtsssrrsResponseStatus (\s a -> s {_gtsssrrsResponseStatus = a})

instance
  NFData
    GetTimeSeriesServiceStatisticsResponse

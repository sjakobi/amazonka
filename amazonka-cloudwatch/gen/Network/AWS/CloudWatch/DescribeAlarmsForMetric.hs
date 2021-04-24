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
-- Module      : Network.AWS.CloudWatch.DescribeAlarmsForMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.
--
--
-- This operation retrieves only standard alarms that are based on the specified metric. It does not return alarms based on math expressions that use the specified metric, or composite alarms that use the specified metric.
module Network.AWS.CloudWatch.DescribeAlarmsForMetric
  ( -- * Creating a Request
    describeAlarmsForMetric,
    DescribeAlarmsForMetric,

    -- * Request Lenses
    dafmExtendedStatistic,
    dafmUnit,
    dafmStatistic,
    dafmDimensions,
    dafmPeriod,
    dafmMetricName,
    dafmNamespace,

    -- * Destructuring the Response
    describeAlarmsForMetricResponse,
    DescribeAlarmsForMetricResponse,

    -- * Response Lenses
    dafmrrsMetricAlarms,
    dafmrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAlarmsForMetric' smart constructor.
data DescribeAlarmsForMetric = DescribeAlarmsForMetric'
  { _dafmExtendedStatistic ::
      !(Maybe Text),
    _dafmUnit ::
      !(Maybe StandardUnit),
    _dafmStatistic ::
      !(Maybe Statistic),
    _dafmDimensions ::
      !(Maybe [Dimension]),
    _dafmPeriod ::
      !(Maybe Nat),
    _dafmMetricName ::
      !Text,
    _dafmNamespace :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAlarmsForMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dafmExtendedStatistic' - The percentile statistic for the metric. Specify a value between p0.0 and p100.
--
-- * 'dafmUnit' - The unit for the metric.
--
-- * 'dafmStatistic' - The statistic for the metric, other than percentiles. For percentile statistics, use @ExtendedStatistics@ .
--
-- * 'dafmDimensions' - The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.
--
-- * 'dafmPeriod' - The period, in seconds, over which the statistic is applied.
--
-- * 'dafmMetricName' - The name of the metric.
--
-- * 'dafmNamespace' - The namespace of the metric.
describeAlarmsForMetric ::
  -- | 'dafmMetricName'
  Text ->
  -- | 'dafmNamespace'
  Text ->
  DescribeAlarmsForMetric
describeAlarmsForMetric pMetricName_ pNamespace_ =
  DescribeAlarmsForMetric'
    { _dafmExtendedStatistic =
        Nothing,
      _dafmUnit = Nothing,
      _dafmStatistic = Nothing,
      _dafmDimensions = Nothing,
      _dafmPeriod = Nothing,
      _dafmMetricName = pMetricName_,
      _dafmNamespace = pNamespace_
    }

-- | The percentile statistic for the metric. Specify a value between p0.0 and p100.
dafmExtendedStatistic :: Lens' DescribeAlarmsForMetric (Maybe Text)
dafmExtendedStatistic = lens _dafmExtendedStatistic (\s a -> s {_dafmExtendedStatistic = a})

-- | The unit for the metric.
dafmUnit :: Lens' DescribeAlarmsForMetric (Maybe StandardUnit)
dafmUnit = lens _dafmUnit (\s a -> s {_dafmUnit = a})

-- | The statistic for the metric, other than percentiles. For percentile statistics, use @ExtendedStatistics@ .
dafmStatistic :: Lens' DescribeAlarmsForMetric (Maybe Statistic)
dafmStatistic = lens _dafmStatistic (\s a -> s {_dafmStatistic = a})

-- | The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.
dafmDimensions :: Lens' DescribeAlarmsForMetric [Dimension]
dafmDimensions = lens _dafmDimensions (\s a -> s {_dafmDimensions = a}) . _Default . _Coerce

-- | The period, in seconds, over which the statistic is applied.
dafmPeriod :: Lens' DescribeAlarmsForMetric (Maybe Natural)
dafmPeriod = lens _dafmPeriod (\s a -> s {_dafmPeriod = a}) . mapping _Nat

-- | The name of the metric.
dafmMetricName :: Lens' DescribeAlarmsForMetric Text
dafmMetricName = lens _dafmMetricName (\s a -> s {_dafmMetricName = a})

-- | The namespace of the metric.
dafmNamespace :: Lens' DescribeAlarmsForMetric Text
dafmNamespace = lens _dafmNamespace (\s a -> s {_dafmNamespace = a})

instance AWSRequest DescribeAlarmsForMetric where
  type
    Rs DescribeAlarmsForMetric =
      DescribeAlarmsForMetricResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DescribeAlarmsForMetricResult"
      ( \s h x ->
          DescribeAlarmsForMetricResponse'
            <$> ( x .@? "MetricAlarms" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAlarmsForMetric

instance NFData DescribeAlarmsForMetric

instance ToHeaders DescribeAlarmsForMetric where
  toHeaders = const mempty

instance ToPath DescribeAlarmsForMetric where
  toPath = const "/"

instance ToQuery DescribeAlarmsForMetric where
  toQuery DescribeAlarmsForMetric' {..} =
    mconcat
      [ "Action"
          =: ("DescribeAlarmsForMetric" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "ExtendedStatistic" =: _dafmExtendedStatistic,
        "Unit" =: _dafmUnit,
        "Statistic" =: _dafmStatistic,
        "Dimensions"
          =: toQuery (toQueryList "member" <$> _dafmDimensions),
        "Period" =: _dafmPeriod,
        "MetricName" =: _dafmMetricName,
        "Namespace" =: _dafmNamespace
      ]

-- | /See:/ 'describeAlarmsForMetricResponse' smart constructor.
data DescribeAlarmsForMetricResponse = DescribeAlarmsForMetricResponse'
  { _dafmrrsMetricAlarms ::
      !( Maybe
           [MetricAlarm]
       ),
    _dafmrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAlarmsForMetricResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dafmrrsMetricAlarms' - The information for each alarm with the specified metric.
--
-- * 'dafmrrsResponseStatus' - -- | The response status code.
describeAlarmsForMetricResponse ::
  -- | 'dafmrrsResponseStatus'
  Int ->
  DescribeAlarmsForMetricResponse
describeAlarmsForMetricResponse pResponseStatus_ =
  DescribeAlarmsForMetricResponse'
    { _dafmrrsMetricAlarms =
        Nothing,
      _dafmrrsResponseStatus = pResponseStatus_
    }

-- | The information for each alarm with the specified metric.
dafmrrsMetricAlarms :: Lens' DescribeAlarmsForMetricResponse [MetricAlarm]
dafmrrsMetricAlarms = lens _dafmrrsMetricAlarms (\s a -> s {_dafmrrsMetricAlarms = a}) . _Default . _Coerce

-- | -- | The response status code.
dafmrrsResponseStatus :: Lens' DescribeAlarmsForMetricResponse Int
dafmrrsResponseStatus = lens _dafmrrsResponseStatus (\s a -> s {_dafmrrsResponseStatus = a})

instance NFData DescribeAlarmsForMetricResponse

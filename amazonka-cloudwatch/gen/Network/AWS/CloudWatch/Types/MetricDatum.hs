{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.MetricDatum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.MetricDatum where

import Network.AWS.CloudWatch.Types.Dimension
import Network.AWS.CloudWatch.Types.StandardUnit
import Network.AWS.CloudWatch.Types.StatisticSet
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.
--
--
--
-- /See:/ 'metricDatum' smart constructor.
data MetricDatum = MetricDatum'
  { _metStorageResolution ::
      !(Maybe Nat),
    _metUnit :: !(Maybe StandardUnit),
    _metValues :: !(Maybe [Double]),
    _metCounts :: !(Maybe [Double]),
    _metTimestamp :: !(Maybe ISO8601),
    _metStatisticValues :: !(Maybe StatisticSet),
    _metValue :: !(Maybe Double),
    _metDimensions :: !(Maybe [Dimension]),
    _metMetricName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetricDatum' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'metStorageResolution' - Valid values are 1 and 60. Setting this to 1 specifies this metric as a high-resolution metric, so that CloudWatch stores the metric with sub-minute resolution down to one second. Setting this to 60 specifies this metric as a regular-resolution metric, which CloudWatch stores at 1-minute resolution. Currently, high resolution is available only for custom metrics. For more information about high-resolution metrics, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics High-Resolution Metrics> in the /Amazon CloudWatch User Guide/ .  This field is optional, if you do not specify it the default of 60 is used.
--
-- * 'metUnit' - When you are using a @Put@ operation, this defines what unit you want to use when storing the metric. In a @Get@ operation, this displays the unit that is used for the metric.
--
-- * 'metValues' - Array of numbers representing the values for the metric during the period. Each unique value is listed just once in this array, and the corresponding number in the @Counts@ array specifies the number of times that value occurred during the period. You can include up to 150 unique values in each @PutMetricData@ action that specifies a @Values@ array. Although the @Values@ array accepts numbers of type @Double@ , CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.
--
-- * 'metCounts' - Array of numbers that is used along with the @Values@ array. Each number in the @Count@ array is the number of times the corresponding value in the @Values@ array occurred during the period.  If you omit the @Counts@ array, the default of 1 is used as the value for each count. If you include a @Counts@ array, it must include the same amount of values as the @Values@ array.
--
-- * 'metTimestamp' - The time the metric data was received, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.
--
-- * 'metStatisticValues' - The statistical values for the metric.
--
-- * 'metValue' - The value for the metric. Although the parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.
--
-- * 'metDimensions' - The dimensions associated with the metric.
--
-- * 'metMetricName' - The name of the metric.
metricDatum ::
  -- | 'metMetricName'
  Text ->
  MetricDatum
metricDatum pMetricName_ =
  MetricDatum'
    { _metStorageResolution = Nothing,
      _metUnit = Nothing,
      _metValues = Nothing,
      _metCounts = Nothing,
      _metTimestamp = Nothing,
      _metStatisticValues = Nothing,
      _metValue = Nothing,
      _metDimensions = Nothing,
      _metMetricName = pMetricName_
    }

-- | Valid values are 1 and 60. Setting this to 1 specifies this metric as a high-resolution metric, so that CloudWatch stores the metric with sub-minute resolution down to one second. Setting this to 60 specifies this metric as a regular-resolution metric, which CloudWatch stores at 1-minute resolution. Currently, high resolution is available only for custom metrics. For more information about high-resolution metrics, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics High-Resolution Metrics> in the /Amazon CloudWatch User Guide/ .  This field is optional, if you do not specify it the default of 60 is used.
metStorageResolution :: Lens' MetricDatum (Maybe Natural)
metStorageResolution = lens _metStorageResolution (\s a -> s {_metStorageResolution = a}) . mapping _Nat

-- | When you are using a @Put@ operation, this defines what unit you want to use when storing the metric. In a @Get@ operation, this displays the unit that is used for the metric.
metUnit :: Lens' MetricDatum (Maybe StandardUnit)
metUnit = lens _metUnit (\s a -> s {_metUnit = a})

-- | Array of numbers representing the values for the metric during the period. Each unique value is listed just once in this array, and the corresponding number in the @Counts@ array specifies the number of times that value occurred during the period. You can include up to 150 unique values in each @PutMetricData@ action that specifies a @Values@ array. Although the @Values@ array accepts numbers of type @Double@ , CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.
metValues :: Lens' MetricDatum [Double]
metValues = lens _metValues (\s a -> s {_metValues = a}) . _Default . _Coerce

-- | Array of numbers that is used along with the @Values@ array. Each number in the @Count@ array is the number of times the corresponding value in the @Values@ array occurred during the period.  If you omit the @Counts@ array, the default of 1 is used as the value for each count. If you include a @Counts@ array, it must include the same amount of values as the @Values@ array.
metCounts :: Lens' MetricDatum [Double]
metCounts = lens _metCounts (\s a -> s {_metCounts = a}) . _Default . _Coerce

-- | The time the metric data was received, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.
metTimestamp :: Lens' MetricDatum (Maybe UTCTime)
metTimestamp = lens _metTimestamp (\s a -> s {_metTimestamp = a}) . mapping _Time

-- | The statistical values for the metric.
metStatisticValues :: Lens' MetricDatum (Maybe StatisticSet)
metStatisticValues = lens _metStatisticValues (\s a -> s {_metStatisticValues = a})

-- | The value for the metric. Although the parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.
metValue :: Lens' MetricDatum (Maybe Double)
metValue = lens _metValue (\s a -> s {_metValue = a})

-- | The dimensions associated with the metric.
metDimensions :: Lens' MetricDatum [Dimension]
metDimensions = lens _metDimensions (\s a -> s {_metDimensions = a}) . _Default . _Coerce

-- | The name of the metric.
metMetricName :: Lens' MetricDatum Text
metMetricName = lens _metMetricName (\s a -> s {_metMetricName = a})

instance Hashable MetricDatum

instance NFData MetricDatum

instance ToQuery MetricDatum where
  toQuery MetricDatum' {..} =
    mconcat
      [ "StorageResolution" =: _metStorageResolution,
        "Unit" =: _metUnit,
        "Values"
          =: toQuery (toQueryList "member" <$> _metValues),
        "Counts"
          =: toQuery (toQueryList "member" <$> _metCounts),
        "Timestamp" =: _metTimestamp,
        "StatisticValues" =: _metStatisticValues,
        "Value" =: _metValue,
        "Dimensions"
          =: toQuery (toQueryList "member" <$> _metDimensions),
        "MetricName" =: _metMetricName
      ]

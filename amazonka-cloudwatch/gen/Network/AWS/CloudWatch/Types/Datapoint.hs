{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.Datapoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.Datapoint where

import Network.AWS.CloudWatch.Types.StandardUnit
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Encapsulates the statistical data that CloudWatch computes from metric data.
--
--
--
-- /See:/ 'datapoint' smart constructor.
data Datapoint = Datapoint'
  { _dUnit ::
      !(Maybe StandardUnit),
    _dMinimum :: !(Maybe Double),
    _dSum :: !(Maybe Double),
    _dSampleCount :: !(Maybe Double),
    _dTimestamp :: !(Maybe ISO8601),
    _dAverage :: !(Maybe Double),
    _dMaximum :: !(Maybe Double),
    _dExtendedStatistics :: !(Maybe (Map Text Double))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Datapoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dUnit' - The standard unit for the data point.
--
-- * 'dMinimum' - The minimum metric value for the data point.
--
-- * 'dSum' - The sum of the metric values for the data point.
--
-- * 'dSampleCount' - The number of metric values that contributed to the aggregate value of this data point.
--
-- * 'dTimestamp' - The time stamp used for the data point.
--
-- * 'dAverage' - The average of the metric values that correspond to the data point.
--
-- * 'dMaximum' - The maximum metric value for the data point.
--
-- * 'dExtendedStatistics' - The percentile statistic for the data point.
datapoint ::
  Datapoint
datapoint =
  Datapoint'
    { _dUnit = Nothing,
      _dMinimum = Nothing,
      _dSum = Nothing,
      _dSampleCount = Nothing,
      _dTimestamp = Nothing,
      _dAverage = Nothing,
      _dMaximum = Nothing,
      _dExtendedStatistics = Nothing
    }

-- | The standard unit for the data point.
dUnit :: Lens' Datapoint (Maybe StandardUnit)
dUnit = lens _dUnit (\s a -> s {_dUnit = a})

-- | The minimum metric value for the data point.
dMinimum :: Lens' Datapoint (Maybe Double)
dMinimum = lens _dMinimum (\s a -> s {_dMinimum = a})

-- | The sum of the metric values for the data point.
dSum :: Lens' Datapoint (Maybe Double)
dSum = lens _dSum (\s a -> s {_dSum = a})

-- | The number of metric values that contributed to the aggregate value of this data point.
dSampleCount :: Lens' Datapoint (Maybe Double)
dSampleCount = lens _dSampleCount (\s a -> s {_dSampleCount = a})

-- | The time stamp used for the data point.
dTimestamp :: Lens' Datapoint (Maybe UTCTime)
dTimestamp = lens _dTimestamp (\s a -> s {_dTimestamp = a}) . mapping _Time

-- | The average of the metric values that correspond to the data point.
dAverage :: Lens' Datapoint (Maybe Double)
dAverage = lens _dAverage (\s a -> s {_dAverage = a})

-- | The maximum metric value for the data point.
dMaximum :: Lens' Datapoint (Maybe Double)
dMaximum = lens _dMaximum (\s a -> s {_dMaximum = a})

-- | The percentile statistic for the data point.
dExtendedStatistics :: Lens' Datapoint (HashMap Text Double)
dExtendedStatistics = lens _dExtendedStatistics (\s a -> s {_dExtendedStatistics = a}) . _Default . _Map

instance FromXML Datapoint where
  parseXML x =
    Datapoint'
      <$> (x .@? "Unit")
      <*> (x .@? "Minimum")
      <*> (x .@? "Sum")
      <*> (x .@? "SampleCount")
      <*> (x .@? "Timestamp")
      <*> (x .@? "Average")
      <*> (x .@? "Maximum")
      <*> ( x .@? "ExtendedStatistics" .!@ mempty
              >>= may (parseXMLMap "entry" "key" "value")
          )

instance Hashable Datapoint

instance NFData Datapoint

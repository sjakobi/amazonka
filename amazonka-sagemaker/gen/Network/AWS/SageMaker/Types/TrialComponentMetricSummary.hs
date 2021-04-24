{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponentMetricSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentMetricSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of the metrics of a trial component.
--
--
--
-- /See:/ 'trialComponentMetricSummary' smart constructor.
data TrialComponentMetricSummary = TrialComponentMetricSummary'
  { _tcmsMetricName ::
      !(Maybe Text),
    _tcmsMin ::
      !(Maybe Double),
    _tcmsStdDev ::
      !(Maybe Double),
    _tcmsMax ::
      !(Maybe Double),
    _tcmsTimeStamp ::
      !(Maybe POSIX),
    _tcmsCount ::
      !(Maybe Int),
    _tcmsSourceARN ::
      !(Maybe Text),
    _tcmsAvg ::
      !(Maybe Double),
    _tcmsLast ::
      !(Maybe Double)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TrialComponentMetricSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcmsMetricName' - The name of the metric.
--
-- * 'tcmsMin' - The minimum value of the metric.
--
-- * 'tcmsStdDev' - The standard deviation of the metric.
--
-- * 'tcmsMax' - The maximum value of the metric.
--
-- * 'tcmsTimeStamp' - When the metric was last updated.
--
-- * 'tcmsCount' - The number of samples used to generate the metric.
--
-- * 'tcmsSourceARN' - The Amazon Resource Name (ARN) of the source.
--
-- * 'tcmsAvg' - The average value of the metric.
--
-- * 'tcmsLast' - The most recent value of the metric.
trialComponentMetricSummary ::
  TrialComponentMetricSummary
trialComponentMetricSummary =
  TrialComponentMetricSummary'
    { _tcmsMetricName =
        Nothing,
      _tcmsMin = Nothing,
      _tcmsStdDev = Nothing,
      _tcmsMax = Nothing,
      _tcmsTimeStamp = Nothing,
      _tcmsCount = Nothing,
      _tcmsSourceARN = Nothing,
      _tcmsAvg = Nothing,
      _tcmsLast = Nothing
    }

-- | The name of the metric.
tcmsMetricName :: Lens' TrialComponentMetricSummary (Maybe Text)
tcmsMetricName = lens _tcmsMetricName (\s a -> s {_tcmsMetricName = a})

-- | The minimum value of the metric.
tcmsMin :: Lens' TrialComponentMetricSummary (Maybe Double)
tcmsMin = lens _tcmsMin (\s a -> s {_tcmsMin = a})

-- | The standard deviation of the metric.
tcmsStdDev :: Lens' TrialComponentMetricSummary (Maybe Double)
tcmsStdDev = lens _tcmsStdDev (\s a -> s {_tcmsStdDev = a})

-- | The maximum value of the metric.
tcmsMax :: Lens' TrialComponentMetricSummary (Maybe Double)
tcmsMax = lens _tcmsMax (\s a -> s {_tcmsMax = a})

-- | When the metric was last updated.
tcmsTimeStamp :: Lens' TrialComponentMetricSummary (Maybe UTCTime)
tcmsTimeStamp = lens _tcmsTimeStamp (\s a -> s {_tcmsTimeStamp = a}) . mapping _Time

-- | The number of samples used to generate the metric.
tcmsCount :: Lens' TrialComponentMetricSummary (Maybe Int)
tcmsCount = lens _tcmsCount (\s a -> s {_tcmsCount = a})

-- | The Amazon Resource Name (ARN) of the source.
tcmsSourceARN :: Lens' TrialComponentMetricSummary (Maybe Text)
tcmsSourceARN = lens _tcmsSourceARN (\s a -> s {_tcmsSourceARN = a})

-- | The average value of the metric.
tcmsAvg :: Lens' TrialComponentMetricSummary (Maybe Double)
tcmsAvg = lens _tcmsAvg (\s a -> s {_tcmsAvg = a})

-- | The most recent value of the metric.
tcmsLast :: Lens' TrialComponentMetricSummary (Maybe Double)
tcmsLast = lens _tcmsLast (\s a -> s {_tcmsLast = a})

instance FromJSON TrialComponentMetricSummary where
  parseJSON =
    withObject
      "TrialComponentMetricSummary"
      ( \x ->
          TrialComponentMetricSummary'
            <$> (x .:? "MetricName")
            <*> (x .:? "Min")
            <*> (x .:? "StdDev")
            <*> (x .:? "Max")
            <*> (x .:? "TimeStamp")
            <*> (x .:? "Count")
            <*> (x .:? "SourceArn")
            <*> (x .:? "Avg")
            <*> (x .:? "Last")
      )

instance Hashable TrialComponentMetricSummary

instance NFData TrialComponentMetricSummary

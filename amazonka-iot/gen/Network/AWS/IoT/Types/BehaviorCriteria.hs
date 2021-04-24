{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.BehaviorCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.BehaviorCriteria where

import Network.AWS.IoT.Types.ComparisonOperator
import Network.AWS.IoT.Types.MachineLearningDetectionConfig
import Network.AWS.IoT.Types.MetricValue
import Network.AWS.IoT.Types.StatisticalThreshold
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The criteria by which the behavior is determined to be normal.
--
--
--
-- /See:/ 'behaviorCriteria' smart constructor.
data BehaviorCriteria = BehaviorCriteria'
  { _bcComparisonOperator ::
      !(Maybe ComparisonOperator),
    _bcConsecutiveDatapointsToAlarm ::
      !(Maybe Nat),
    _bcStatisticalThreshold ::
      !(Maybe StatisticalThreshold),
    _bcMlDetectionConfig ::
      !( Maybe
           MachineLearningDetectionConfig
       ),
    _bcConsecutiveDatapointsToClear ::
      !(Maybe Nat),
    _bcValue :: !(Maybe MetricValue),
    _bcDurationSeconds :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BehaviorCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcComparisonOperator' - The operator that relates the thing measured (@metric@ ) to the criteria (containing a @value@ or @statisticalThreshold@ ). Valid operators include:     * @string-list@ : @in-set@ and @not-in-set@      * @number-list@ : @in-set@ and @not-in-set@      * @ip-address-list@ : @in-cidr-set@ and @not-in-cidr-set@      * @number@ : @less-than@ , @less-than-equals@ , @greater-than@ , and @greater-than-equals@
--
-- * 'bcConsecutiveDatapointsToAlarm' - If a device is in violation of the behavior for the specified number of consecutive datapoints, an alarm occurs. If not specified, the default is 1.
--
-- * 'bcStatisticalThreshold' - A statistical ranking (percentile)that indicates a threshold value by which a behavior is determined to be in compliance or in violation of the behavior.
--
-- * 'bcMlDetectionConfig' - The configuration of an ML Detect
--
-- * 'bcConsecutiveDatapointsToClear' - If an alarm has occurred and the offending device is no longer in violation of the behavior for the specified number of consecutive datapoints, the alarm is cleared. If not specified, the default is 1.
--
-- * 'bcValue' - The value to be compared with the @metric@ .
--
-- * 'bcDurationSeconds' - Use this to specify the time duration over which the behavior is evaluated, for those criteria that have a time dimension (for example, @NUM_MESSAGES_SENT@ ). For a @statisticalThreshhold@ metric comparison, measurements from all devices are accumulated over this time duration before being used to calculate percentiles, and later, measurements from an individual device are also accumulated over this time duration before being given a percentile rank. Cannot be used with list-based metric datatypes.
behaviorCriteria ::
  BehaviorCriteria
behaviorCriteria =
  BehaviorCriteria'
    { _bcComparisonOperator = Nothing,
      _bcConsecutiveDatapointsToAlarm = Nothing,
      _bcStatisticalThreshold = Nothing,
      _bcMlDetectionConfig = Nothing,
      _bcConsecutiveDatapointsToClear = Nothing,
      _bcValue = Nothing,
      _bcDurationSeconds = Nothing
    }

-- | The operator that relates the thing measured (@metric@ ) to the criteria (containing a @value@ or @statisticalThreshold@ ). Valid operators include:     * @string-list@ : @in-set@ and @not-in-set@      * @number-list@ : @in-set@ and @not-in-set@      * @ip-address-list@ : @in-cidr-set@ and @not-in-cidr-set@      * @number@ : @less-than@ , @less-than-equals@ , @greater-than@ , and @greater-than-equals@
bcComparisonOperator :: Lens' BehaviorCriteria (Maybe ComparisonOperator)
bcComparisonOperator = lens _bcComparisonOperator (\s a -> s {_bcComparisonOperator = a})

-- | If a device is in violation of the behavior for the specified number of consecutive datapoints, an alarm occurs. If not specified, the default is 1.
bcConsecutiveDatapointsToAlarm :: Lens' BehaviorCriteria (Maybe Natural)
bcConsecutiveDatapointsToAlarm = lens _bcConsecutiveDatapointsToAlarm (\s a -> s {_bcConsecutiveDatapointsToAlarm = a}) . mapping _Nat

-- | A statistical ranking (percentile)that indicates a threshold value by which a behavior is determined to be in compliance or in violation of the behavior.
bcStatisticalThreshold :: Lens' BehaviorCriteria (Maybe StatisticalThreshold)
bcStatisticalThreshold = lens _bcStatisticalThreshold (\s a -> s {_bcStatisticalThreshold = a})

-- | The configuration of an ML Detect
bcMlDetectionConfig :: Lens' BehaviorCriteria (Maybe MachineLearningDetectionConfig)
bcMlDetectionConfig = lens _bcMlDetectionConfig (\s a -> s {_bcMlDetectionConfig = a})

-- | If an alarm has occurred and the offending device is no longer in violation of the behavior for the specified number of consecutive datapoints, the alarm is cleared. If not specified, the default is 1.
bcConsecutiveDatapointsToClear :: Lens' BehaviorCriteria (Maybe Natural)
bcConsecutiveDatapointsToClear = lens _bcConsecutiveDatapointsToClear (\s a -> s {_bcConsecutiveDatapointsToClear = a}) . mapping _Nat

-- | The value to be compared with the @metric@ .
bcValue :: Lens' BehaviorCriteria (Maybe MetricValue)
bcValue = lens _bcValue (\s a -> s {_bcValue = a})

-- | Use this to specify the time duration over which the behavior is evaluated, for those criteria that have a time dimension (for example, @NUM_MESSAGES_SENT@ ). For a @statisticalThreshhold@ metric comparison, measurements from all devices are accumulated over this time duration before being used to calculate percentiles, and later, measurements from an individual device are also accumulated over this time duration before being given a percentile rank. Cannot be used with list-based metric datatypes.
bcDurationSeconds :: Lens' BehaviorCriteria (Maybe Int)
bcDurationSeconds = lens _bcDurationSeconds (\s a -> s {_bcDurationSeconds = a})

instance FromJSON BehaviorCriteria where
  parseJSON =
    withObject
      "BehaviorCriteria"
      ( \x ->
          BehaviorCriteria'
            <$> (x .:? "comparisonOperator")
            <*> (x .:? "consecutiveDatapointsToAlarm")
            <*> (x .:? "statisticalThreshold")
            <*> (x .:? "mlDetectionConfig")
            <*> (x .:? "consecutiveDatapointsToClear")
            <*> (x .:? "value")
            <*> (x .:? "durationSeconds")
      )

instance Hashable BehaviorCriteria

instance NFData BehaviorCriteria

instance ToJSON BehaviorCriteria where
  toJSON BehaviorCriteria' {..} =
    object
      ( catMaybes
          [ ("comparisonOperator" .=) <$> _bcComparisonOperator,
            ("consecutiveDatapointsToAlarm" .=)
              <$> _bcConsecutiveDatapointsToAlarm,
            ("statisticalThreshold" .=)
              <$> _bcStatisticalThreshold,
            ("mlDetectionConfig" .=) <$> _bcMlDetectionConfig,
            ("consecutiveDatapointsToClear" .=)
              <$> _bcConsecutiveDatapointsToClear,
            ("value" .=) <$> _bcValue,
            ("durationSeconds" .=) <$> _bcDurationSeconds
          ]
      )

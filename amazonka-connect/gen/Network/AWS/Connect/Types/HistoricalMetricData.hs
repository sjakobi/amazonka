{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.HistoricalMetricData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HistoricalMetricData where

import Network.AWS.Connect.Types.HistoricalMetric
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the data for a historical metric.
--
--
--
-- /See:/ 'historicalMetricData' smart constructor.
data HistoricalMetricData = HistoricalMetricData'
  { _hmdMetric ::
      !(Maybe HistoricalMetric),
    _hmdValue :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HistoricalMetricData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmdMetric' - Information about the metric.
--
-- * 'hmdValue' - The value of the metric.
historicalMetricData ::
  HistoricalMetricData
historicalMetricData =
  HistoricalMetricData'
    { _hmdMetric = Nothing,
      _hmdValue = Nothing
    }

-- | Information about the metric.
hmdMetric :: Lens' HistoricalMetricData (Maybe HistoricalMetric)
hmdMetric = lens _hmdMetric (\s a -> s {_hmdMetric = a})

-- | The value of the metric.
hmdValue :: Lens' HistoricalMetricData (Maybe Double)
hmdValue = lens _hmdValue (\s a -> s {_hmdValue = a})

instance FromJSON HistoricalMetricData where
  parseJSON =
    withObject
      "HistoricalMetricData"
      ( \x ->
          HistoricalMetricData'
            <$> (x .:? "Metric") <*> (x .:? "Value")
      )

instance Hashable HistoricalMetricData

instance NFData HistoricalMetricData

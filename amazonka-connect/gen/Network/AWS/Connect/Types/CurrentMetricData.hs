{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.CurrentMetricData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.CurrentMetricData where

import Network.AWS.Connect.Types.CurrentMetric
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the data for a real-time metric.
--
--
--
-- /See:/ 'currentMetricData' smart constructor.
data CurrentMetricData = CurrentMetricData'
  { _cmdMetric ::
      !(Maybe CurrentMetric),
    _cmdValue :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CurrentMetricData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmdMetric' - Information about the metric.
--
-- * 'cmdValue' - The value of the metric.
currentMetricData ::
  CurrentMetricData
currentMetricData =
  CurrentMetricData'
    { _cmdMetric = Nothing,
      _cmdValue = Nothing
    }

-- | Information about the metric.
cmdMetric :: Lens' CurrentMetricData (Maybe CurrentMetric)
cmdMetric = lens _cmdMetric (\s a -> s {_cmdMetric = a})

-- | The value of the metric.
cmdValue :: Lens' CurrentMetricData (Maybe Double)
cmdValue = lens _cmdValue (\s a -> s {_cmdValue = a})

instance FromJSON CurrentMetricData where
  parseJSON =
    withObject
      "CurrentMetricData"
      ( \x ->
          CurrentMetricData'
            <$> (x .:? "Metric") <*> (x .:? "Value")
      )

instance Hashable CurrentMetricData

instance NFData CurrentMetricData

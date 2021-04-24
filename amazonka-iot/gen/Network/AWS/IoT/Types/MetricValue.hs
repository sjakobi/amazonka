{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.MetricValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.MetricValue where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The value to be compared with the @metric@ .
--
--
--
-- /See:/ 'metricValue' smart constructor.
data MetricValue = MetricValue'
  { _mvNumbers ::
      !(Maybe [Double]),
    _mvPorts :: !(Maybe [Nat]),
    _mvCidrs :: !(Maybe [Text]),
    _mvStrings :: !(Maybe [Text]),
    _mvCount :: !(Maybe Nat),
    _mvNumber :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvNumbers' - The numeral values of a metric.
--
-- * 'mvPorts' - If the @comparisonOperator@ calls for a set of ports, use this to specify that set to be compared with the @metric@ .
--
-- * 'mvCidrs' - If the @comparisonOperator@ calls for a set of CIDRs, use this to specify that set to be compared with the @metric@ .
--
-- * 'mvStrings' - The string values of a metric.
--
-- * 'mvCount' - If the @comparisonOperator@ calls for a numeric value, use this to specify that numeric value to be compared with the @metric@ .
--
-- * 'mvNumber' - The numeral value of a metric.
metricValue ::
  MetricValue
metricValue =
  MetricValue'
    { _mvNumbers = Nothing,
      _mvPorts = Nothing,
      _mvCidrs = Nothing,
      _mvStrings = Nothing,
      _mvCount = Nothing,
      _mvNumber = Nothing
    }

-- | The numeral values of a metric.
mvNumbers :: Lens' MetricValue [Double]
mvNumbers = lens _mvNumbers (\s a -> s {_mvNumbers = a}) . _Default . _Coerce

-- | If the @comparisonOperator@ calls for a set of ports, use this to specify that set to be compared with the @metric@ .
mvPorts :: Lens' MetricValue [Natural]
mvPorts = lens _mvPorts (\s a -> s {_mvPorts = a}) . _Default . _Coerce

-- | If the @comparisonOperator@ calls for a set of CIDRs, use this to specify that set to be compared with the @metric@ .
mvCidrs :: Lens' MetricValue [Text]
mvCidrs = lens _mvCidrs (\s a -> s {_mvCidrs = a}) . _Default . _Coerce

-- | The string values of a metric.
mvStrings :: Lens' MetricValue [Text]
mvStrings = lens _mvStrings (\s a -> s {_mvStrings = a}) . _Default . _Coerce

-- | If the @comparisonOperator@ calls for a numeric value, use this to specify that numeric value to be compared with the @metric@ .
mvCount :: Lens' MetricValue (Maybe Natural)
mvCount = lens _mvCount (\s a -> s {_mvCount = a}) . mapping _Nat

-- | The numeral value of a metric.
mvNumber :: Lens' MetricValue (Maybe Double)
mvNumber = lens _mvNumber (\s a -> s {_mvNumber = a})

instance FromJSON MetricValue where
  parseJSON =
    withObject
      "MetricValue"
      ( \x ->
          MetricValue'
            <$> (x .:? "numbers" .!= mempty)
            <*> (x .:? "ports" .!= mempty)
            <*> (x .:? "cidrs" .!= mempty)
            <*> (x .:? "strings" .!= mempty)
            <*> (x .:? "count")
            <*> (x .:? "number")
      )

instance Hashable MetricValue

instance NFData MetricValue

instance ToJSON MetricValue where
  toJSON MetricValue' {..} =
    object
      ( catMaybes
          [ ("numbers" .=) <$> _mvNumbers,
            ("ports" .=) <$> _mvPorts,
            ("cidrs" .=) <$> _mvCidrs,
            ("strings" .=) <$> _mvStrings,
            ("count" .=) <$> _mvCount,
            ("number" .=) <$> _mvNumber
          ]
      )

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataQualityBaselineConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataQualityBaselineConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringConstraintsResource
import Network.AWS.SageMaker.Types.MonitoringStatisticsResource

-- | Configuration for monitoring constraints and monitoring statistics. These baseline resources are compared against the results of the current job from the series of jobs scheduled to collect data periodically.
--
--
--
-- /See:/ 'dataQualityBaselineConfig' smart constructor.
data DataQualityBaselineConfig = DataQualityBaselineConfig'
  { _dqbcStatisticsResource ::
      !( Maybe
           MonitoringStatisticsResource
       ),
    _dqbcConstraintsResource ::
      !( Maybe
           MonitoringConstraintsResource
       ),
    _dqbcBaseliningJobName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DataQualityBaselineConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqbcStatisticsResource' - Undocumented member.
--
-- * 'dqbcConstraintsResource' - Undocumented member.
--
-- * 'dqbcBaseliningJobName' - The name of the job that performs baselining for the data quality monitoring job.
dataQualityBaselineConfig ::
  DataQualityBaselineConfig
dataQualityBaselineConfig =
  DataQualityBaselineConfig'
    { _dqbcStatisticsResource =
        Nothing,
      _dqbcConstraintsResource = Nothing,
      _dqbcBaseliningJobName = Nothing
    }

-- | Undocumented member.
dqbcStatisticsResource :: Lens' DataQualityBaselineConfig (Maybe MonitoringStatisticsResource)
dqbcStatisticsResource = lens _dqbcStatisticsResource (\s a -> s {_dqbcStatisticsResource = a})

-- | Undocumented member.
dqbcConstraintsResource :: Lens' DataQualityBaselineConfig (Maybe MonitoringConstraintsResource)
dqbcConstraintsResource = lens _dqbcConstraintsResource (\s a -> s {_dqbcConstraintsResource = a})

-- | The name of the job that performs baselining for the data quality monitoring job.
dqbcBaseliningJobName :: Lens' DataQualityBaselineConfig (Maybe Text)
dqbcBaseliningJobName = lens _dqbcBaseliningJobName (\s a -> s {_dqbcBaseliningJobName = a})

instance FromJSON DataQualityBaselineConfig where
  parseJSON =
    withObject
      "DataQualityBaselineConfig"
      ( \x ->
          DataQualityBaselineConfig'
            <$> (x .:? "StatisticsResource")
            <*> (x .:? "ConstraintsResource")
            <*> (x .:? "BaseliningJobName")
      )

instance Hashable DataQualityBaselineConfig

instance NFData DataQualityBaselineConfig

instance ToJSON DataQualityBaselineConfig where
  toJSON DataQualityBaselineConfig' {..} =
    object
      ( catMaybes
          [ ("StatisticsResource" .=)
              <$> _dqbcStatisticsResource,
            ("ConstraintsResource" .=)
              <$> _dqbcConstraintsResource,
            ("BaseliningJobName" .=) <$> _dqbcBaseliningJobName
          ]
      )

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringScheduleConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringScheduleConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringJobDefinition
import Network.AWS.SageMaker.Types.MonitoringType
import Network.AWS.SageMaker.Types.ScheduleConfig

-- | Configures the monitoring schedule and defines the monitoring job.
--
--
--
-- /See:/ 'monitoringScheduleConfig' smart constructor.
data MonitoringScheduleConfig = MonitoringScheduleConfig'
  { _mscScheduleConfig ::
      !( Maybe
           ScheduleConfig
       ),
    _mscMonitoringType ::
      !( Maybe
           MonitoringType
       ),
    _mscMonitoringJobDefinitionName ::
      !(Maybe Text),
    _mscMonitoringJobDefinition ::
      !( Maybe
           MonitoringJobDefinition
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MonitoringScheduleConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mscScheduleConfig' - Configures the monitoring schedule.
--
-- * 'mscMonitoringType' - The type of the monitoring job definition to schedule.
--
-- * 'mscMonitoringJobDefinitionName' - The name of the monitoring job definition to schedule.
--
-- * 'mscMonitoringJobDefinition' - Defines the monitoring job.
monitoringScheduleConfig ::
  MonitoringScheduleConfig
monitoringScheduleConfig =
  MonitoringScheduleConfig'
    { _mscScheduleConfig =
        Nothing,
      _mscMonitoringType = Nothing,
      _mscMonitoringJobDefinitionName = Nothing,
      _mscMonitoringJobDefinition = Nothing
    }

-- | Configures the monitoring schedule.
mscScheduleConfig :: Lens' MonitoringScheduleConfig (Maybe ScheduleConfig)
mscScheduleConfig = lens _mscScheduleConfig (\s a -> s {_mscScheduleConfig = a})

-- | The type of the monitoring job definition to schedule.
mscMonitoringType :: Lens' MonitoringScheduleConfig (Maybe MonitoringType)
mscMonitoringType = lens _mscMonitoringType (\s a -> s {_mscMonitoringType = a})

-- | The name of the monitoring job definition to schedule.
mscMonitoringJobDefinitionName :: Lens' MonitoringScheduleConfig (Maybe Text)
mscMonitoringJobDefinitionName = lens _mscMonitoringJobDefinitionName (\s a -> s {_mscMonitoringJobDefinitionName = a})

-- | Defines the monitoring job.
mscMonitoringJobDefinition :: Lens' MonitoringScheduleConfig (Maybe MonitoringJobDefinition)
mscMonitoringJobDefinition = lens _mscMonitoringJobDefinition (\s a -> s {_mscMonitoringJobDefinition = a})

instance FromJSON MonitoringScheduleConfig where
  parseJSON =
    withObject
      "MonitoringScheduleConfig"
      ( \x ->
          MonitoringScheduleConfig'
            <$> (x .:? "ScheduleConfig")
            <*> (x .:? "MonitoringType")
            <*> (x .:? "MonitoringJobDefinitionName")
            <*> (x .:? "MonitoringJobDefinition")
      )

instance Hashable MonitoringScheduleConfig

instance NFData MonitoringScheduleConfig

instance ToJSON MonitoringScheduleConfig where
  toJSON MonitoringScheduleConfig' {..} =
    object
      ( catMaybes
          [ ("ScheduleConfig" .=) <$> _mscScheduleConfig,
            ("MonitoringType" .=) <$> _mscMonitoringType,
            ("MonitoringJobDefinitionName" .=)
              <$> _mscMonitoringJobDefinitionName,
            ("MonitoringJobDefinition" .=)
              <$> _mscMonitoringJobDefinition
          ]
      )

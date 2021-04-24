{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelQualityBaselineConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelQualityBaselineConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringConstraintsResource

-- | Configuration for monitoring constraints and monitoring statistics. These baseline resources are compared against the results of the current job from the series of jobs scheduled to collect data periodically.
--
--
--
-- /See:/ 'modelQualityBaselineConfig' smart constructor.
data ModelQualityBaselineConfig = ModelQualityBaselineConfig'
  { _mqbcConstraintsResource ::
      !( Maybe
           MonitoringConstraintsResource
       ),
    _mqbcBaseliningJobName ::
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

-- | Creates a value of 'ModelQualityBaselineConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mqbcConstraintsResource' - Undocumented member.
--
-- * 'mqbcBaseliningJobName' - The name of the job that performs baselining for the monitoring job.
modelQualityBaselineConfig ::
  ModelQualityBaselineConfig
modelQualityBaselineConfig =
  ModelQualityBaselineConfig'
    { _mqbcConstraintsResource =
        Nothing,
      _mqbcBaseliningJobName = Nothing
    }

-- | Undocumented member.
mqbcConstraintsResource :: Lens' ModelQualityBaselineConfig (Maybe MonitoringConstraintsResource)
mqbcConstraintsResource = lens _mqbcConstraintsResource (\s a -> s {_mqbcConstraintsResource = a})

-- | The name of the job that performs baselining for the monitoring job.
mqbcBaseliningJobName :: Lens' ModelQualityBaselineConfig (Maybe Text)
mqbcBaseliningJobName = lens _mqbcBaseliningJobName (\s a -> s {_mqbcBaseliningJobName = a})

instance FromJSON ModelQualityBaselineConfig where
  parseJSON =
    withObject
      "ModelQualityBaselineConfig"
      ( \x ->
          ModelQualityBaselineConfig'
            <$> (x .:? "ConstraintsResource")
            <*> (x .:? "BaseliningJobName")
      )

instance Hashable ModelQualityBaselineConfig

instance NFData ModelQualityBaselineConfig

instance ToJSON ModelQualityBaselineConfig where
  toJSON ModelQualityBaselineConfig' {..} =
    object
      ( catMaybes
          [ ("ConstraintsResource" .=)
              <$> _mqbcConstraintsResource,
            ("BaseliningJobName" .=) <$> _mqbcBaseliningJobName
          ]
      )

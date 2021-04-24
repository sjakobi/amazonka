{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelExplainabilityBaselineConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelExplainabilityBaselineConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringConstraintsResource

-- | The configuration for a baseline model explainability job.
--
--
--
-- /See:/ 'modelExplainabilityBaselineConfig' smart constructor.
data ModelExplainabilityBaselineConfig = ModelExplainabilityBaselineConfig'
  { _mebcConstraintsResource ::
      !( Maybe
           MonitoringConstraintsResource
       ),
    _mebcBaseliningJobName ::
      !( Maybe
           Text
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

-- | Creates a value of 'ModelExplainabilityBaselineConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mebcConstraintsResource' - Undocumented member.
--
-- * 'mebcBaseliningJobName' - The name of the baseline model explainability job.
modelExplainabilityBaselineConfig ::
  ModelExplainabilityBaselineConfig
modelExplainabilityBaselineConfig =
  ModelExplainabilityBaselineConfig'
    { _mebcConstraintsResource =
        Nothing,
      _mebcBaseliningJobName = Nothing
    }

-- | Undocumented member.
mebcConstraintsResource :: Lens' ModelExplainabilityBaselineConfig (Maybe MonitoringConstraintsResource)
mebcConstraintsResource = lens _mebcConstraintsResource (\s a -> s {_mebcConstraintsResource = a})

-- | The name of the baseline model explainability job.
mebcBaseliningJobName :: Lens' ModelExplainabilityBaselineConfig (Maybe Text)
mebcBaseliningJobName = lens _mebcBaseliningJobName (\s a -> s {_mebcBaseliningJobName = a})

instance FromJSON ModelExplainabilityBaselineConfig where
  parseJSON =
    withObject
      "ModelExplainabilityBaselineConfig"
      ( \x ->
          ModelExplainabilityBaselineConfig'
            <$> (x .:? "ConstraintsResource")
            <*> (x .:? "BaseliningJobName")
      )

instance Hashable ModelExplainabilityBaselineConfig

instance NFData ModelExplainabilityBaselineConfig

instance ToJSON ModelExplainabilityBaselineConfig where
  toJSON ModelExplainabilityBaselineConfig' {..} =
    object
      ( catMaybes
          [ ("ConstraintsResource" .=)
              <$> _mebcConstraintsResource,
            ("BaseliningJobName" .=) <$> _mebcBaseliningJobName
          ]
      )

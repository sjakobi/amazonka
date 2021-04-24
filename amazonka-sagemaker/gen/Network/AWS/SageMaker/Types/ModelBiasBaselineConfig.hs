{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelBiasBaselineConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelBiasBaselineConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringConstraintsResource

-- | The configuration for a baseline model bias job.
--
--
--
-- /See:/ 'modelBiasBaselineConfig' smart constructor.
data ModelBiasBaselineConfig = ModelBiasBaselineConfig'
  { _mbbcConstraintsResource ::
      !( Maybe
           MonitoringConstraintsResource
       ),
    _mbbcBaseliningJobName ::
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

-- | Creates a value of 'ModelBiasBaselineConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbbcConstraintsResource' - Undocumented member.
--
-- * 'mbbcBaseliningJobName' - The name of the baseline model bias job.
modelBiasBaselineConfig ::
  ModelBiasBaselineConfig
modelBiasBaselineConfig =
  ModelBiasBaselineConfig'
    { _mbbcConstraintsResource =
        Nothing,
      _mbbcBaseliningJobName = Nothing
    }

-- | Undocumented member.
mbbcConstraintsResource :: Lens' ModelBiasBaselineConfig (Maybe MonitoringConstraintsResource)
mbbcConstraintsResource = lens _mbbcConstraintsResource (\s a -> s {_mbbcConstraintsResource = a})

-- | The name of the baseline model bias job.
mbbcBaseliningJobName :: Lens' ModelBiasBaselineConfig (Maybe Text)
mbbcBaseliningJobName = lens _mbbcBaseliningJobName (\s a -> s {_mbbcBaseliningJobName = a})

instance FromJSON ModelBiasBaselineConfig where
  parseJSON =
    withObject
      "ModelBiasBaselineConfig"
      ( \x ->
          ModelBiasBaselineConfig'
            <$> (x .:? "ConstraintsResource")
            <*> (x .:? "BaseliningJobName")
      )

instance Hashable ModelBiasBaselineConfig

instance NFData ModelBiasBaselineConfig

instance ToJSON ModelBiasBaselineConfig where
  toJSON ModelBiasBaselineConfig' {..} =
    object
      ( catMaybes
          [ ("ConstraintsResource" .=)
              <$> _mbbcConstraintsResource,
            ("BaseliningJobName" .=) <$> _mbbcBaseliningJobName
          ]
      )

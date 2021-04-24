{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.DeploymentCanarySettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.DeploymentCanarySettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The input configuration for a canary deployment.
--
--
--
-- /See:/ 'deploymentCanarySettings' smart constructor.
data DeploymentCanarySettings = DeploymentCanarySettings'
  { _dcsPercentTraffic ::
      !(Maybe Double),
    _dcsUseStageCache ::
      !(Maybe Bool),
    _dcsStageVariableOverrides ::
      !( Maybe
           (Map Text Text)
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

-- | Creates a value of 'DeploymentCanarySettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsPercentTraffic' - The percentage (0.0-100.0) of traffic routed to the canary deployment.
--
-- * 'dcsUseStageCache' - A Boolean flag to indicate whether the canary release deployment uses the stage cache or not.
--
-- * 'dcsStageVariableOverrides' - A stage variable overrides used for the canary release deployment. They can override existing stage variables or add new stage variables for the canary release deployment. These stage variables are represented as a string-to-string map between stage variable names and their values.
deploymentCanarySettings ::
  DeploymentCanarySettings
deploymentCanarySettings =
  DeploymentCanarySettings'
    { _dcsPercentTraffic =
        Nothing,
      _dcsUseStageCache = Nothing,
      _dcsStageVariableOverrides = Nothing
    }

-- | The percentage (0.0-100.0) of traffic routed to the canary deployment.
dcsPercentTraffic :: Lens' DeploymentCanarySettings (Maybe Double)
dcsPercentTraffic = lens _dcsPercentTraffic (\s a -> s {_dcsPercentTraffic = a})

-- | A Boolean flag to indicate whether the canary release deployment uses the stage cache or not.
dcsUseStageCache :: Lens' DeploymentCanarySettings (Maybe Bool)
dcsUseStageCache = lens _dcsUseStageCache (\s a -> s {_dcsUseStageCache = a})

-- | A stage variable overrides used for the canary release deployment. They can override existing stage variables or add new stage variables for the canary release deployment. These stage variables are represented as a string-to-string map between stage variable names and their values.
dcsStageVariableOverrides :: Lens' DeploymentCanarySettings (HashMap Text Text)
dcsStageVariableOverrides = lens _dcsStageVariableOverrides (\s a -> s {_dcsStageVariableOverrides = a}) . _Default . _Map

instance Hashable DeploymentCanarySettings

instance NFData DeploymentCanarySettings

instance ToJSON DeploymentCanarySettings where
  toJSON DeploymentCanarySettings' {..} =
    object
      ( catMaybes
          [ ("percentTraffic" .=) <$> _dcsPercentTraffic,
            ("useStageCache" .=) <$> _dcsUseStageCache,
            ("stageVariableOverrides" .=)
              <$> _dcsStageVariableOverrides
          ]
      )

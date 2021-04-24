{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.CanarySettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.CanarySettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration settings of a canary deployment.
--
--
--
-- /See:/ 'canarySettings' smart constructor.
data CanarySettings = CanarySettings'
  { _csDeploymentId ::
      !(Maybe Text),
    _csPercentTraffic :: !(Maybe Double),
    _csUseStageCache :: !(Maybe Bool),
    _csStageVariableOverrides ::
      !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CanarySettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csDeploymentId' - The ID of the canary deployment.
--
-- * 'csPercentTraffic' - The percent (0-100) of traffic diverted to a canary deployment.
--
-- * 'csUseStageCache' - A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
--
-- * 'csStageVariableOverrides' - Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
canarySettings ::
  CanarySettings
canarySettings =
  CanarySettings'
    { _csDeploymentId = Nothing,
      _csPercentTraffic = Nothing,
      _csUseStageCache = Nothing,
      _csStageVariableOverrides = Nothing
    }

-- | The ID of the canary deployment.
csDeploymentId :: Lens' CanarySettings (Maybe Text)
csDeploymentId = lens _csDeploymentId (\s a -> s {_csDeploymentId = a})

-- | The percent (0-100) of traffic diverted to a canary deployment.
csPercentTraffic :: Lens' CanarySettings (Maybe Double)
csPercentTraffic = lens _csPercentTraffic (\s a -> s {_csPercentTraffic = a})

-- | A Boolean flag to indicate whether the canary deployment uses the stage cache or not.
csUseStageCache :: Lens' CanarySettings (Maybe Bool)
csUseStageCache = lens _csUseStageCache (\s a -> s {_csUseStageCache = a})

-- | Stage variables overridden for a canary release deployment, including new stage variables introduced in the canary. These stage variables are represented as a string-to-string map between stage variable names and their values.
csStageVariableOverrides :: Lens' CanarySettings (HashMap Text Text)
csStageVariableOverrides = lens _csStageVariableOverrides (\s a -> s {_csStageVariableOverrides = a}) . _Default . _Map

instance FromJSON CanarySettings where
  parseJSON =
    withObject
      "CanarySettings"
      ( \x ->
          CanarySettings'
            <$> (x .:? "deploymentId")
            <*> (x .:? "percentTraffic")
            <*> (x .:? "useStageCache")
            <*> (x .:? "stageVariableOverrides" .!= mempty)
      )

instance Hashable CanarySettings

instance NFData CanarySettings

instance ToJSON CanarySettings where
  toJSON CanarySettings' {..} =
    object
      ( catMaybes
          [ ("deploymentId" .=) <$> _csDeploymentId,
            ("percentTraffic" .=) <$> _csPercentTraffic,
            ("useStageCache" .=) <$> _csUseStageCache,
            ("stageVariableOverrides" .=)
              <$> _csStageVariableOverrides
          ]
      )

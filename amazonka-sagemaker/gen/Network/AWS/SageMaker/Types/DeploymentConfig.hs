{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DeploymentConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DeploymentConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.AutoRollbackConfig
import Network.AWS.SageMaker.Types.BlueGreenUpdatePolicy

-- | Currently, the @DeploymentConfig@ API is not supported.
--
--
--
-- /See:/ 'deploymentConfig' smart constructor.
data DeploymentConfig = DeploymentConfig'
  { _dcAutoRollbackConfiguration ::
      !(Maybe AutoRollbackConfig),
    _dcBlueGreenUpdatePolicy ::
      !BlueGreenUpdatePolicy
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcAutoRollbackConfiguration' -
--
-- * 'dcBlueGreenUpdatePolicy' -
deploymentConfig ::
  -- | 'dcBlueGreenUpdatePolicy'
  BlueGreenUpdatePolicy ->
  DeploymentConfig
deploymentConfig pBlueGreenUpdatePolicy_ =
  DeploymentConfig'
    { _dcAutoRollbackConfiguration =
        Nothing,
      _dcBlueGreenUpdatePolicy = pBlueGreenUpdatePolicy_
    }

-- |
dcAutoRollbackConfiguration :: Lens' DeploymentConfig (Maybe AutoRollbackConfig)
dcAutoRollbackConfiguration = lens _dcAutoRollbackConfiguration (\s a -> s {_dcAutoRollbackConfiguration = a})

-- |
dcBlueGreenUpdatePolicy :: Lens' DeploymentConfig BlueGreenUpdatePolicy
dcBlueGreenUpdatePolicy = lens _dcBlueGreenUpdatePolicy (\s a -> s {_dcBlueGreenUpdatePolicy = a})

instance FromJSON DeploymentConfig where
  parseJSON =
    withObject
      "DeploymentConfig"
      ( \x ->
          DeploymentConfig'
            <$> (x .:? "AutoRollbackConfiguration")
            <*> (x .: "BlueGreenUpdatePolicy")
      )

instance Hashable DeploymentConfig

instance NFData DeploymentConfig

instance ToJSON DeploymentConfig where
  toJSON DeploymentConfig' {..} =
    object
      ( catMaybes
          [ ("AutoRollbackConfiguration" .=)
              <$> _dcAutoRollbackConfiguration,
            Just
              ( "BlueGreenUpdatePolicy"
                  .= _dcBlueGreenUpdatePolicy
              )
          ]
      )

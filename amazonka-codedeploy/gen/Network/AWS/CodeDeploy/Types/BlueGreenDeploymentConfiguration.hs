{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.BlueGreenDeploymentConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.BlueGreenDeploymentConfiguration where

import Network.AWS.CodeDeploy.Types.BlueInstanceTerminationOption
import Network.AWS.CodeDeploy.Types.DeploymentReadyOption
import Network.AWS.CodeDeploy.Types.GreenFleetProvisioningOption
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about blue/green deployment options for a deployment group.
--
--
--
-- /See:/ 'blueGreenDeploymentConfiguration' smart constructor.
data BlueGreenDeploymentConfiguration = BlueGreenDeploymentConfiguration'
  { _bgdcGreenFleetProvisioningOption ::
      !( Maybe
           GreenFleetProvisioningOption
       ),
    _bgdcDeploymentReadyOption ::
      !( Maybe
           DeploymentReadyOption
       ),
    _bgdcTerminateBlueInstancesOnDeploymentSuccess ::
      !( Maybe
           BlueInstanceTerminationOption
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

-- | Creates a value of 'BlueGreenDeploymentConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgdcGreenFleetProvisioningOption' - Information about how instances are provisioned for a replacement environment in a blue/green deployment.
--
-- * 'bgdcDeploymentReadyOption' - Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.
--
-- * 'bgdcTerminateBlueInstancesOnDeploymentSuccess' - Information about whether to terminate instances in the original fleet during a blue/green deployment.
blueGreenDeploymentConfiguration ::
  BlueGreenDeploymentConfiguration
blueGreenDeploymentConfiguration =
  BlueGreenDeploymentConfiguration'
    { _bgdcGreenFleetProvisioningOption =
        Nothing,
      _bgdcDeploymentReadyOption = Nothing,
      _bgdcTerminateBlueInstancesOnDeploymentSuccess =
        Nothing
    }

-- | Information about how instances are provisioned for a replacement environment in a blue/green deployment.
bgdcGreenFleetProvisioningOption :: Lens' BlueGreenDeploymentConfiguration (Maybe GreenFleetProvisioningOption)
bgdcGreenFleetProvisioningOption = lens _bgdcGreenFleetProvisioningOption (\s a -> s {_bgdcGreenFleetProvisioningOption = a})

-- | Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.
bgdcDeploymentReadyOption :: Lens' BlueGreenDeploymentConfiguration (Maybe DeploymentReadyOption)
bgdcDeploymentReadyOption = lens _bgdcDeploymentReadyOption (\s a -> s {_bgdcDeploymentReadyOption = a})

-- | Information about whether to terminate instances in the original fleet during a blue/green deployment.
bgdcTerminateBlueInstancesOnDeploymentSuccess :: Lens' BlueGreenDeploymentConfiguration (Maybe BlueInstanceTerminationOption)
bgdcTerminateBlueInstancesOnDeploymentSuccess = lens _bgdcTerminateBlueInstancesOnDeploymentSuccess (\s a -> s {_bgdcTerminateBlueInstancesOnDeploymentSuccess = a})

instance FromJSON BlueGreenDeploymentConfiguration where
  parseJSON =
    withObject
      "BlueGreenDeploymentConfiguration"
      ( \x ->
          BlueGreenDeploymentConfiguration'
            <$> (x .:? "greenFleetProvisioningOption")
            <*> (x .:? "deploymentReadyOption")
            <*> (x .:? "terminateBlueInstancesOnDeploymentSuccess")
      )

instance Hashable BlueGreenDeploymentConfiguration

instance NFData BlueGreenDeploymentConfiguration

instance ToJSON BlueGreenDeploymentConfiguration where
  toJSON BlueGreenDeploymentConfiguration' {..} =
    object
      ( catMaybes
          [ ("greenFleetProvisioningOption" .=)
              <$> _bgdcGreenFleetProvisioningOption,
            ("deploymentReadyOption" .=)
              <$> _bgdcDeploymentReadyOption,
            ("terminateBlueInstancesOnDeploymentSuccess" .=)
              <$> _bgdcTerminateBlueInstancesOnDeploymentSuccess
          ]
      )

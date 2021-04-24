{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentStyle where

import Network.AWS.CodeDeploy.Types.DeploymentOption
import Network.AWS.CodeDeploy.Types.DeploymentType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
--
--
--
-- /See:/ 'deploymentStyle' smart constructor.
data DeploymentStyle = DeploymentStyle'
  { _dsDeploymentType ::
      !(Maybe DeploymentType),
    _dsDeploymentOption ::
      !(Maybe DeploymentOption)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsDeploymentType' - Indicates whether to run an in-place deployment or a blue/green deployment.
--
-- * 'dsDeploymentOption' - Indicates whether to route deployment traffic behind a load balancer.
deploymentStyle ::
  DeploymentStyle
deploymentStyle =
  DeploymentStyle'
    { _dsDeploymentType = Nothing,
      _dsDeploymentOption = Nothing
    }

-- | Indicates whether to run an in-place deployment or a blue/green deployment.
dsDeploymentType :: Lens' DeploymentStyle (Maybe DeploymentType)
dsDeploymentType = lens _dsDeploymentType (\s a -> s {_dsDeploymentType = a})

-- | Indicates whether to route deployment traffic behind a load balancer.
dsDeploymentOption :: Lens' DeploymentStyle (Maybe DeploymentOption)
dsDeploymentOption = lens _dsDeploymentOption (\s a -> s {_dsDeploymentOption = a})

instance FromJSON DeploymentStyle where
  parseJSON =
    withObject
      "DeploymentStyle"
      ( \x ->
          DeploymentStyle'
            <$> (x .:? "deploymentType")
            <*> (x .:? "deploymentOption")
      )

instance Hashable DeploymentStyle

instance NFData DeploymentStyle

instance ToJSON DeploymentStyle where
  toJSON DeploymentStyle' {..} =
    object
      ( catMaybes
          [ ("deploymentType" .=) <$> _dsDeploymentType,
            ("deploymentOption" .=) <$> _dsDeploymentOption
          ]
      )

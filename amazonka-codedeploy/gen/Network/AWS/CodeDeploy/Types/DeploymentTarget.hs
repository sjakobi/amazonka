{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentTarget where

import Network.AWS.CodeDeploy.Types.CloudFormationTarget
import Network.AWS.CodeDeploy.Types.DeploymentTargetType
import Network.AWS.CodeDeploy.Types.ECSTarget
import Network.AWS.CodeDeploy.Types.InstanceTarget
import Network.AWS.CodeDeploy.Types.LambdaTarget
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the deployment target.
--
--
--
-- /See:/ 'deploymentTarget' smart constructor.
data DeploymentTarget = DeploymentTarget'
  { _dtEcsTarget ::
      !(Maybe ECSTarget),
    _dtLambdaTarget ::
      !(Maybe LambdaTarget),
    _dtCloudFormationTarget ::
      !(Maybe CloudFormationTarget),
    _dtInstanceTarget ::
      !(Maybe InstanceTarget),
    _dtDeploymentTargetType ::
      !(Maybe DeploymentTargetType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtEcsTarget' - Information about the target for a deployment that uses the Amazon ECS compute platform.
--
-- * 'dtLambdaTarget' - Information about the target for a deployment that uses the AWS Lambda compute platform.
--
-- * 'dtCloudFormationTarget' - Undocumented member.
--
-- * 'dtInstanceTarget' - Information about the target for a deployment that uses the EC2/On-premises compute platform.
--
-- * 'dtDeploymentTargetType' - The deployment type that is specific to the deployment's compute platform or deployments initiated by a CloudFormation stack update.
deploymentTarget ::
  DeploymentTarget
deploymentTarget =
  DeploymentTarget'
    { _dtEcsTarget = Nothing,
      _dtLambdaTarget = Nothing,
      _dtCloudFormationTarget = Nothing,
      _dtInstanceTarget = Nothing,
      _dtDeploymentTargetType = Nothing
    }

-- | Information about the target for a deployment that uses the Amazon ECS compute platform.
dtEcsTarget :: Lens' DeploymentTarget (Maybe ECSTarget)
dtEcsTarget = lens _dtEcsTarget (\s a -> s {_dtEcsTarget = a})

-- | Information about the target for a deployment that uses the AWS Lambda compute platform.
dtLambdaTarget :: Lens' DeploymentTarget (Maybe LambdaTarget)
dtLambdaTarget = lens _dtLambdaTarget (\s a -> s {_dtLambdaTarget = a})

-- | Undocumented member.
dtCloudFormationTarget :: Lens' DeploymentTarget (Maybe CloudFormationTarget)
dtCloudFormationTarget = lens _dtCloudFormationTarget (\s a -> s {_dtCloudFormationTarget = a})

-- | Information about the target for a deployment that uses the EC2/On-premises compute platform.
dtInstanceTarget :: Lens' DeploymentTarget (Maybe InstanceTarget)
dtInstanceTarget = lens _dtInstanceTarget (\s a -> s {_dtInstanceTarget = a})

-- | The deployment type that is specific to the deployment's compute platform or deployments initiated by a CloudFormation stack update.
dtDeploymentTargetType :: Lens' DeploymentTarget (Maybe DeploymentTargetType)
dtDeploymentTargetType = lens _dtDeploymentTargetType (\s a -> s {_dtDeploymentTargetType = a})

instance FromJSON DeploymentTarget where
  parseJSON =
    withObject
      "DeploymentTarget"
      ( \x ->
          DeploymentTarget'
            <$> (x .:? "ecsTarget")
            <*> (x .:? "lambdaTarget")
            <*> (x .:? "cloudFormationTarget")
            <*> (x .:? "instanceTarget")
            <*> (x .:? "deploymentTargetType")
      )

instance Hashable DeploymentTarget

instance NFData DeploymentTarget

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Deployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Deployment where

import Network.AWS.ECS.Types.CapacityProviderStrategyItem
import Network.AWS.ECS.Types.DeploymentRolloutState
import Network.AWS.ECS.Types.LaunchType
import Network.AWS.ECS.Types.NetworkConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details of an Amazon ECS service deployment. This is used only when a service uses the @ECS@ deployment controller type.
--
--
--
-- /See:/ 'deployment' smart constructor.
data Deployment = Deployment'
  { _dRolloutState ::
      !(Maybe DeploymentRolloutState),
    _dStatus :: !(Maybe Text),
    _dRunningCount :: !(Maybe Int),
    _dNetworkConfiguration ::
      !(Maybe NetworkConfiguration),
    _dCapacityProviderStrategy ::
      !(Maybe [CapacityProviderStrategyItem]),
    _dDesiredCount :: !(Maybe Int),
    _dUpdatedAt :: !(Maybe POSIX),
    _dLaunchType :: !(Maybe LaunchType),
    _dCreatedAt :: !(Maybe POSIX),
    _dPlatformVersion :: !(Maybe Text),
    _dId :: !(Maybe Text),
    _dPendingCount :: !(Maybe Int),
    _dRolloutStateReason :: !(Maybe Text),
    _dTaskDefinition :: !(Maybe Text),
    _dFailedTasks :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dRolloutState' - The rollout state of the deployment. When a service deployment is started, it begins in an @IN_PROGRESS@ state. When the service reaches a steady state, the deployment will transition to a @COMPLETED@ state. If the service fails to reach a steady state and circuit breaker is enabled, the deployment will transition to a @FAILED@ state. A deployment in @FAILED@ state will launch no new tasks. For more information, see 'DeploymentCircuitBreaker' .
--
-- * 'dStatus' - The status of the deployment. The following describes each state:     * PRIMARY    * The most recent deployment of a service.     * ACTIVE    * A service deployment that still has running tasks, but are in the process of being replaced with a new @PRIMARY@ deployment.     * INACTIVE    * A deployment that has been completely replaced.
--
-- * 'dRunningCount' - The number of tasks in the deployment that are in the @RUNNING@ status.
--
-- * 'dNetworkConfiguration' - The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the @awsvpc@ networking mode.
--
-- * 'dCapacityProviderStrategy' - The capacity provider strategy that the deployment is using.
--
-- * 'dDesiredCount' - The most recent desired count of tasks that was specified for the service to deploy or maintain.
--
-- * 'dUpdatedAt' - The Unix timestamp for when the service deployment was last updated.
--
-- * 'dLaunchType' - The launch type the tasks in the service are using. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'dCreatedAt' - The Unix timestamp for when the service deployment was created.
--
-- * 'dPlatformVersion' - The platform version on which your tasks in the service are running. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'dId' - The ID of the deployment.
--
-- * 'dPendingCount' - The number of tasks in the deployment that are in the @PENDING@ status.
--
-- * 'dRolloutStateReason' - A description of the rollout state of a deployment.
--
-- * 'dTaskDefinition' - The most recent task definition that was specified for the tasks in the service to use.
--
-- * 'dFailedTasks' - The number of consecutively failed tasks in the deployment. A task is considered a failure if the service scheduler can't launch the task, the task doesn't transition to a @RUNNING@ state, or if it fails any of its defined health checks and is stopped.
deployment ::
  Deployment
deployment =
  Deployment'
    { _dRolloutState = Nothing,
      _dStatus = Nothing,
      _dRunningCount = Nothing,
      _dNetworkConfiguration = Nothing,
      _dCapacityProviderStrategy = Nothing,
      _dDesiredCount = Nothing,
      _dUpdatedAt = Nothing,
      _dLaunchType = Nothing,
      _dCreatedAt = Nothing,
      _dPlatformVersion = Nothing,
      _dId = Nothing,
      _dPendingCount = Nothing,
      _dRolloutStateReason = Nothing,
      _dTaskDefinition = Nothing,
      _dFailedTasks = Nothing
    }

-- | The rollout state of the deployment. When a service deployment is started, it begins in an @IN_PROGRESS@ state. When the service reaches a steady state, the deployment will transition to a @COMPLETED@ state. If the service fails to reach a steady state and circuit breaker is enabled, the deployment will transition to a @FAILED@ state. A deployment in @FAILED@ state will launch no new tasks. For more information, see 'DeploymentCircuitBreaker' .
dRolloutState :: Lens' Deployment (Maybe DeploymentRolloutState)
dRolloutState = lens _dRolloutState (\s a -> s {_dRolloutState = a})

-- | The status of the deployment. The following describes each state:     * PRIMARY    * The most recent deployment of a service.     * ACTIVE    * A service deployment that still has running tasks, but are in the process of being replaced with a new @PRIMARY@ deployment.     * INACTIVE    * A deployment that has been completely replaced.
dStatus :: Lens' Deployment (Maybe Text)
dStatus = lens _dStatus (\s a -> s {_dStatus = a})

-- | The number of tasks in the deployment that are in the @RUNNING@ status.
dRunningCount :: Lens' Deployment (Maybe Int)
dRunningCount = lens _dRunningCount (\s a -> s {_dRunningCount = a})

-- | The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the @awsvpc@ networking mode.
dNetworkConfiguration :: Lens' Deployment (Maybe NetworkConfiguration)
dNetworkConfiguration = lens _dNetworkConfiguration (\s a -> s {_dNetworkConfiguration = a})

-- | The capacity provider strategy that the deployment is using.
dCapacityProviderStrategy :: Lens' Deployment [CapacityProviderStrategyItem]
dCapacityProviderStrategy = lens _dCapacityProviderStrategy (\s a -> s {_dCapacityProviderStrategy = a}) . _Default . _Coerce

-- | The most recent desired count of tasks that was specified for the service to deploy or maintain.
dDesiredCount :: Lens' Deployment (Maybe Int)
dDesiredCount = lens _dDesiredCount (\s a -> s {_dDesiredCount = a})

-- | The Unix timestamp for when the service deployment was last updated.
dUpdatedAt :: Lens' Deployment (Maybe UTCTime)
dUpdatedAt = lens _dUpdatedAt (\s a -> s {_dUpdatedAt = a}) . mapping _Time

-- | The launch type the tasks in the service are using. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
dLaunchType :: Lens' Deployment (Maybe LaunchType)
dLaunchType = lens _dLaunchType (\s a -> s {_dLaunchType = a})

-- | The Unix timestamp for when the service deployment was created.
dCreatedAt :: Lens' Deployment (Maybe UTCTime)
dCreatedAt = lens _dCreatedAt (\s a -> s {_dCreatedAt = a}) . mapping _Time

-- | The platform version on which your tasks in the service are running. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
dPlatformVersion :: Lens' Deployment (Maybe Text)
dPlatformVersion = lens _dPlatformVersion (\s a -> s {_dPlatformVersion = a})

-- | The ID of the deployment.
dId :: Lens' Deployment (Maybe Text)
dId = lens _dId (\s a -> s {_dId = a})

-- | The number of tasks in the deployment that are in the @PENDING@ status.
dPendingCount :: Lens' Deployment (Maybe Int)
dPendingCount = lens _dPendingCount (\s a -> s {_dPendingCount = a})

-- | A description of the rollout state of a deployment.
dRolloutStateReason :: Lens' Deployment (Maybe Text)
dRolloutStateReason = lens _dRolloutStateReason (\s a -> s {_dRolloutStateReason = a})

-- | The most recent task definition that was specified for the tasks in the service to use.
dTaskDefinition :: Lens' Deployment (Maybe Text)
dTaskDefinition = lens _dTaskDefinition (\s a -> s {_dTaskDefinition = a})

-- | The number of consecutively failed tasks in the deployment. A task is considered a failure if the service scheduler can't launch the task, the task doesn't transition to a @RUNNING@ state, or if it fails any of its defined health checks and is stopped.
dFailedTasks :: Lens' Deployment (Maybe Int)
dFailedTasks = lens _dFailedTasks (\s a -> s {_dFailedTasks = a})

instance FromJSON Deployment where
  parseJSON =
    withObject
      "Deployment"
      ( \x ->
          Deployment'
            <$> (x .:? "rolloutState")
            <*> (x .:? "status")
            <*> (x .:? "runningCount")
            <*> (x .:? "networkConfiguration")
            <*> (x .:? "capacityProviderStrategy" .!= mempty)
            <*> (x .:? "desiredCount")
            <*> (x .:? "updatedAt")
            <*> (x .:? "launchType")
            <*> (x .:? "createdAt")
            <*> (x .:? "platformVersion")
            <*> (x .:? "id")
            <*> (x .:? "pendingCount")
            <*> (x .:? "rolloutStateReason")
            <*> (x .:? "taskDefinition")
            <*> (x .:? "failedTasks")
      )

instance Hashable Deployment

instance NFData Deployment

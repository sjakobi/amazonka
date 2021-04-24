{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentInfo where

import Network.AWS.CodeDeploy.Types.AutoRollbackConfiguration
import Network.AWS.CodeDeploy.Types.BlueGreenDeploymentConfiguration
import Network.AWS.CodeDeploy.Types.ComputePlatform
import Network.AWS.CodeDeploy.Types.DeploymentCreator
import Network.AWS.CodeDeploy.Types.DeploymentOverview
import Network.AWS.CodeDeploy.Types.DeploymentStatus
import Network.AWS.CodeDeploy.Types.DeploymentStyle
import Network.AWS.CodeDeploy.Types.ErrorInformation
import Network.AWS.CodeDeploy.Types.FileExistsBehavior
import Network.AWS.CodeDeploy.Types.LoadBalancerInfo
import Network.AWS.CodeDeploy.Types.RevisionLocation
import Network.AWS.CodeDeploy.Types.RollbackInfo
import Network.AWS.CodeDeploy.Types.TargetInstances
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a deployment.
--
--
--
-- /See:/ 'deploymentInfo' smart constructor.
data DeploymentInfo = DeploymentInfo'
  { _diDeploymentId ::
      !(Maybe Text),
    _diStatus :: !(Maybe DeploymentStatus),
    _diDeploymentConfigName :: !(Maybe Text),
    _diIgnoreApplicationStopFailures ::
      !(Maybe Bool),
    _diUpdateOutdatedInstancesOnly ::
      !(Maybe Bool),
    _diAutoRollbackConfiguration ::
      !(Maybe AutoRollbackConfiguration),
    _diDeploymentGroupName :: !(Maybe Text),
    _diTargetInstances ::
      !(Maybe TargetInstances),
    _diStartTime :: !(Maybe POSIX),
    _diInstanceTerminationWaitTimeStarted ::
      !(Maybe Bool),
    _diPreviousRevision ::
      !(Maybe RevisionLocation),
    _diLoadBalancerInfo ::
      !(Maybe LoadBalancerInfo),
    _diCompleteTime :: !(Maybe POSIX),
    _diErrorInformation ::
      !(Maybe ErrorInformation),
    _diBlueGreenDeploymentConfiguration ::
      !(Maybe BlueGreenDeploymentConfiguration),
    _diCreator :: !(Maybe DeploymentCreator),
    _diCreateTime :: !(Maybe POSIX),
    _diDescription :: !(Maybe Text),
    _diDeploymentStyle ::
      !(Maybe DeploymentStyle),
    _diRevision :: !(Maybe RevisionLocation),
    _diRollbackInfo :: !(Maybe RollbackInfo),
    _diExternalId :: !(Maybe Text),
    _diApplicationName :: !(Maybe Text),
    _diDeploymentStatusMessages ::
      !(Maybe [Text]),
    _diFileExistsBehavior ::
      !(Maybe FileExistsBehavior),
    _diAdditionalDeploymentStatusInfo ::
      !(Maybe Text),
    _diDeploymentOverview ::
      !(Maybe DeploymentOverview),
    _diComputePlatform ::
      !(Maybe ComputePlatform)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diDeploymentId' - The unique ID of a deployment.
--
-- * 'diStatus' - The current state of the deployment as a whole.
--
-- * 'diDeploymentConfigName' - The deployment configuration name.
--
-- * 'diIgnoreApplicationStopFailures' - If true, then if an @ApplicationStop@ , @BeforeBlockTraffic@ , or @AfterBlockTraffic@ deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if @ApplicationStop@ fails, the deployment continues with DownloadBundle. If @BeforeBlockTraffic@ fails, the deployment continues with @BlockTraffic@ . If @AfterBlockTraffic@ fails, the deployment continues with @ApplicationStop@ .  If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.  During a deployment, the AWS CodeDeploy agent runs the scripts specified for @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail.  If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use @ignoreApplicationStopFailures@ to specify that the @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ failures should be ignored.
--
-- * 'diUpdateOutdatedInstancesOnly' - Indicates whether only instances that are not running the latest application revision are to be deployed to.
--
-- * 'diAutoRollbackConfiguration' - Information about the automatic rollback configuration associated with the deployment.
--
-- * 'diDeploymentGroupName' - The deployment group name.
--
-- * 'diTargetInstances' - Information about the instances that belong to the replacement environment in a blue/green deployment.
--
-- * 'diStartTime' - A timestamp that indicates when the deployment was deployed to the deployment group. In some cases, the reported value of the start time might be later than the complete time. This is due to differences in the clock settings of backend servers that participate in the deployment process.
--
-- * 'diInstanceTerminationWaitTimeStarted' - Indicates whether the wait period set for the termination of instances in the original environment has started. Status is 'false' if the KEEP_ALIVE option is specified. Otherwise, 'true' as soon as the termination wait period starts.
--
-- * 'diPreviousRevision' - Information about the application revision that was deployed to the deployment group before the most recent successful deployment.
--
-- * 'diLoadBalancerInfo' - Information about the load balancer used in the deployment.
--
-- * 'diCompleteTime' - A timestamp that indicates when the deployment was complete.
--
-- * 'diErrorInformation' - Information about any error associated with this deployment.
--
-- * 'diBlueGreenDeploymentConfiguration' - Information about blue/green deployment options for this deployment.
--
-- * 'diCreator' - The means by which the deployment was created:     * @user@ : A user created the deployment.     * @autoscaling@ : Amazon EC2 Auto Scaling created the deployment.     * @codeDeployRollback@ : A rollback process created the deployment.
--
-- * 'diCreateTime' - A timestamp that indicates when the deployment was created.
--
-- * 'diDescription' - A comment about the deployment.
--
-- * 'diDeploymentStyle' - Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
--
-- * 'diRevision' - Information about the location of stored application artifacts and the service from which to retrieve them.
--
-- * 'diRollbackInfo' - Information about a deployment rollback.
--
-- * 'diExternalId' - The unique ID for an external resource (for example, a CloudFormation stack ID) that is linked to this deployment.
--
-- * 'diApplicationName' - The application name.
--
-- * 'diDeploymentStatusMessages' - Messages that contain information about the status of a deployment.
--
-- * 'diFileExistsBehavior' - Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.     * @DISALLOW@ : The deployment fails. This is also the default behavior if no option is specified.     * @OVERWRITE@ : The version of the file from the application revision currently being deployed replaces the version already on the instance.     * @RETAIN@ : The version of the file already on the instance is kept and used as part of the new deployment.
--
-- * 'diAdditionalDeploymentStatusInfo' - Provides information about the results of a deployment, such as whether instances in the original environment in a blue/green deployment were not terminated.
--
-- * 'diDeploymentOverview' - A summary of the deployment status of the instances in the deployment.
--
-- * 'diComputePlatform' - The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
deploymentInfo ::
  DeploymentInfo
deploymentInfo =
  DeploymentInfo'
    { _diDeploymentId = Nothing,
      _diStatus = Nothing,
      _diDeploymentConfigName = Nothing,
      _diIgnoreApplicationStopFailures = Nothing,
      _diUpdateOutdatedInstancesOnly = Nothing,
      _diAutoRollbackConfiguration = Nothing,
      _diDeploymentGroupName = Nothing,
      _diTargetInstances = Nothing,
      _diStartTime = Nothing,
      _diInstanceTerminationWaitTimeStarted = Nothing,
      _diPreviousRevision = Nothing,
      _diLoadBalancerInfo = Nothing,
      _diCompleteTime = Nothing,
      _diErrorInformation = Nothing,
      _diBlueGreenDeploymentConfiguration = Nothing,
      _diCreator = Nothing,
      _diCreateTime = Nothing,
      _diDescription = Nothing,
      _diDeploymentStyle = Nothing,
      _diRevision = Nothing,
      _diRollbackInfo = Nothing,
      _diExternalId = Nothing,
      _diApplicationName = Nothing,
      _diDeploymentStatusMessages = Nothing,
      _diFileExistsBehavior = Nothing,
      _diAdditionalDeploymentStatusInfo = Nothing,
      _diDeploymentOverview = Nothing,
      _diComputePlatform = Nothing
    }

-- | The unique ID of a deployment.
diDeploymentId :: Lens' DeploymentInfo (Maybe Text)
diDeploymentId = lens _diDeploymentId (\s a -> s {_diDeploymentId = a})

-- | The current state of the deployment as a whole.
diStatus :: Lens' DeploymentInfo (Maybe DeploymentStatus)
diStatus = lens _diStatus (\s a -> s {_diStatus = a})

-- | The deployment configuration name.
diDeploymentConfigName :: Lens' DeploymentInfo (Maybe Text)
diDeploymentConfigName = lens _diDeploymentConfigName (\s a -> s {_diDeploymentConfigName = a})

-- | If true, then if an @ApplicationStop@ , @BeforeBlockTraffic@ , or @AfterBlockTraffic@ deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if @ApplicationStop@ fails, the deployment continues with DownloadBundle. If @BeforeBlockTraffic@ fails, the deployment continues with @BlockTraffic@ . If @AfterBlockTraffic@ fails, the deployment continues with @ApplicationStop@ .  If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.  During a deployment, the AWS CodeDeploy agent runs the scripts specified for @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail.  If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use @ignoreApplicationStopFailures@ to specify that the @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ failures should be ignored.
diIgnoreApplicationStopFailures :: Lens' DeploymentInfo (Maybe Bool)
diIgnoreApplicationStopFailures = lens _diIgnoreApplicationStopFailures (\s a -> s {_diIgnoreApplicationStopFailures = a})

-- | Indicates whether only instances that are not running the latest application revision are to be deployed to.
diUpdateOutdatedInstancesOnly :: Lens' DeploymentInfo (Maybe Bool)
diUpdateOutdatedInstancesOnly = lens _diUpdateOutdatedInstancesOnly (\s a -> s {_diUpdateOutdatedInstancesOnly = a})

-- | Information about the automatic rollback configuration associated with the deployment.
diAutoRollbackConfiguration :: Lens' DeploymentInfo (Maybe AutoRollbackConfiguration)
diAutoRollbackConfiguration = lens _diAutoRollbackConfiguration (\s a -> s {_diAutoRollbackConfiguration = a})

-- | The deployment group name.
diDeploymentGroupName :: Lens' DeploymentInfo (Maybe Text)
diDeploymentGroupName = lens _diDeploymentGroupName (\s a -> s {_diDeploymentGroupName = a})

-- | Information about the instances that belong to the replacement environment in a blue/green deployment.
diTargetInstances :: Lens' DeploymentInfo (Maybe TargetInstances)
diTargetInstances = lens _diTargetInstances (\s a -> s {_diTargetInstances = a})

-- | A timestamp that indicates when the deployment was deployed to the deployment group. In some cases, the reported value of the start time might be later than the complete time. This is due to differences in the clock settings of backend servers that participate in the deployment process.
diStartTime :: Lens' DeploymentInfo (Maybe UTCTime)
diStartTime = lens _diStartTime (\s a -> s {_diStartTime = a}) . mapping _Time

-- | Indicates whether the wait period set for the termination of instances in the original environment has started. Status is 'false' if the KEEP_ALIVE option is specified. Otherwise, 'true' as soon as the termination wait period starts.
diInstanceTerminationWaitTimeStarted :: Lens' DeploymentInfo (Maybe Bool)
diInstanceTerminationWaitTimeStarted = lens _diInstanceTerminationWaitTimeStarted (\s a -> s {_diInstanceTerminationWaitTimeStarted = a})

-- | Information about the application revision that was deployed to the deployment group before the most recent successful deployment.
diPreviousRevision :: Lens' DeploymentInfo (Maybe RevisionLocation)
diPreviousRevision = lens _diPreviousRevision (\s a -> s {_diPreviousRevision = a})

-- | Information about the load balancer used in the deployment.
diLoadBalancerInfo :: Lens' DeploymentInfo (Maybe LoadBalancerInfo)
diLoadBalancerInfo = lens _diLoadBalancerInfo (\s a -> s {_diLoadBalancerInfo = a})

-- | A timestamp that indicates when the deployment was complete.
diCompleteTime :: Lens' DeploymentInfo (Maybe UTCTime)
diCompleteTime = lens _diCompleteTime (\s a -> s {_diCompleteTime = a}) . mapping _Time

-- | Information about any error associated with this deployment.
diErrorInformation :: Lens' DeploymentInfo (Maybe ErrorInformation)
diErrorInformation = lens _diErrorInformation (\s a -> s {_diErrorInformation = a})

-- | Information about blue/green deployment options for this deployment.
diBlueGreenDeploymentConfiguration :: Lens' DeploymentInfo (Maybe BlueGreenDeploymentConfiguration)
diBlueGreenDeploymentConfiguration = lens _diBlueGreenDeploymentConfiguration (\s a -> s {_diBlueGreenDeploymentConfiguration = a})

-- | The means by which the deployment was created:     * @user@ : A user created the deployment.     * @autoscaling@ : Amazon EC2 Auto Scaling created the deployment.     * @codeDeployRollback@ : A rollback process created the deployment.
diCreator :: Lens' DeploymentInfo (Maybe DeploymentCreator)
diCreator = lens _diCreator (\s a -> s {_diCreator = a})

-- | A timestamp that indicates when the deployment was created.
diCreateTime :: Lens' DeploymentInfo (Maybe UTCTime)
diCreateTime = lens _diCreateTime (\s a -> s {_diCreateTime = a}) . mapping _Time

-- | A comment about the deployment.
diDescription :: Lens' DeploymentInfo (Maybe Text)
diDescription = lens _diDescription (\s a -> s {_diDescription = a})

-- | Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
diDeploymentStyle :: Lens' DeploymentInfo (Maybe DeploymentStyle)
diDeploymentStyle = lens _diDeploymentStyle (\s a -> s {_diDeploymentStyle = a})

-- | Information about the location of stored application artifacts and the service from which to retrieve them.
diRevision :: Lens' DeploymentInfo (Maybe RevisionLocation)
diRevision = lens _diRevision (\s a -> s {_diRevision = a})

-- | Information about a deployment rollback.
diRollbackInfo :: Lens' DeploymentInfo (Maybe RollbackInfo)
diRollbackInfo = lens _diRollbackInfo (\s a -> s {_diRollbackInfo = a})

-- | The unique ID for an external resource (for example, a CloudFormation stack ID) that is linked to this deployment.
diExternalId :: Lens' DeploymentInfo (Maybe Text)
diExternalId = lens _diExternalId (\s a -> s {_diExternalId = a})

-- | The application name.
diApplicationName :: Lens' DeploymentInfo (Maybe Text)
diApplicationName = lens _diApplicationName (\s a -> s {_diApplicationName = a})

-- | Messages that contain information about the status of a deployment.
diDeploymentStatusMessages :: Lens' DeploymentInfo [Text]
diDeploymentStatusMessages = lens _diDeploymentStatusMessages (\s a -> s {_diDeploymentStatusMessages = a}) . _Default . _Coerce

-- | Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.     * @DISALLOW@ : The deployment fails. This is also the default behavior if no option is specified.     * @OVERWRITE@ : The version of the file from the application revision currently being deployed replaces the version already on the instance.     * @RETAIN@ : The version of the file already on the instance is kept and used as part of the new deployment.
diFileExistsBehavior :: Lens' DeploymentInfo (Maybe FileExistsBehavior)
diFileExistsBehavior = lens _diFileExistsBehavior (\s a -> s {_diFileExistsBehavior = a})

-- | Provides information about the results of a deployment, such as whether instances in the original environment in a blue/green deployment were not terminated.
diAdditionalDeploymentStatusInfo :: Lens' DeploymentInfo (Maybe Text)
diAdditionalDeploymentStatusInfo = lens _diAdditionalDeploymentStatusInfo (\s a -> s {_diAdditionalDeploymentStatusInfo = a})

-- | A summary of the deployment status of the instances in the deployment.
diDeploymentOverview :: Lens' DeploymentInfo (Maybe DeploymentOverview)
diDeploymentOverview = lens _diDeploymentOverview (\s a -> s {_diDeploymentOverview = a})

-- | The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
diComputePlatform :: Lens' DeploymentInfo (Maybe ComputePlatform)
diComputePlatform = lens _diComputePlatform (\s a -> s {_diComputePlatform = a})

instance FromJSON DeploymentInfo where
  parseJSON =
    withObject
      "DeploymentInfo"
      ( \x ->
          DeploymentInfo'
            <$> (x .:? "deploymentId")
            <*> (x .:? "status")
            <*> (x .:? "deploymentConfigName")
            <*> (x .:? "ignoreApplicationStopFailures")
            <*> (x .:? "updateOutdatedInstancesOnly")
            <*> (x .:? "autoRollbackConfiguration")
            <*> (x .:? "deploymentGroupName")
            <*> (x .:? "targetInstances")
            <*> (x .:? "startTime")
            <*> (x .:? "instanceTerminationWaitTimeStarted")
            <*> (x .:? "previousRevision")
            <*> (x .:? "loadBalancerInfo")
            <*> (x .:? "completeTime")
            <*> (x .:? "errorInformation")
            <*> (x .:? "blueGreenDeploymentConfiguration")
            <*> (x .:? "creator")
            <*> (x .:? "createTime")
            <*> (x .:? "description")
            <*> (x .:? "deploymentStyle")
            <*> (x .:? "revision")
            <*> (x .:? "rollbackInfo")
            <*> (x .:? "externalId")
            <*> (x .:? "applicationName")
            <*> (x .:? "deploymentStatusMessages" .!= mempty)
            <*> (x .:? "fileExistsBehavior")
            <*> (x .:? "additionalDeploymentStatusInfo")
            <*> (x .:? "deploymentOverview")
            <*> (x .:? "computePlatform")
      )

instance Hashable DeploymentInfo

instance NFData DeploymentInfo

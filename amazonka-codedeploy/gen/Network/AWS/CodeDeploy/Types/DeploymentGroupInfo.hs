{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentGroupInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentGroupInfo where

import Network.AWS.CodeDeploy.Types.AlarmConfiguration
import Network.AWS.CodeDeploy.Types.AutoRollbackConfiguration
import Network.AWS.CodeDeploy.Types.AutoScalingGroup
import Network.AWS.CodeDeploy.Types.BlueGreenDeploymentConfiguration
import Network.AWS.CodeDeploy.Types.ComputePlatform
import Network.AWS.CodeDeploy.Types.DeploymentStyle
import Network.AWS.CodeDeploy.Types.EC2TagFilter
import Network.AWS.CodeDeploy.Types.EC2TagSet
import Network.AWS.CodeDeploy.Types.ECSService
import Network.AWS.CodeDeploy.Types.LastDeploymentInfo
import Network.AWS.CodeDeploy.Types.LoadBalancerInfo
import Network.AWS.CodeDeploy.Types.OnPremisesTagSet
import Network.AWS.CodeDeploy.Types.RevisionLocation
import Network.AWS.CodeDeploy.Types.TagFilter
import Network.AWS.CodeDeploy.Types.TriggerConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a deployment group.
--
--
--
-- /See:/ 'deploymentGroupInfo' smart constructor.
data DeploymentGroupInfo = DeploymentGroupInfo'
  { _dgiOnPremisesTagSet ::
      !(Maybe OnPremisesTagSet),
    _dgiServiceRoleARN ::
      !(Maybe Text),
    _dgiDeploymentConfigName ::
      !(Maybe Text),
    _dgiAutoRollbackConfiguration ::
      !( Maybe
           AutoRollbackConfiguration
       ),
    _dgiDeploymentGroupName ::
      !(Maybe Text),
    _dgiTriggerConfigurations ::
      !(Maybe [TriggerConfig]),
    _dgiDeploymentGroupId ::
      !(Maybe Text),
    _dgiEc2TagFilters ::
      !(Maybe [EC2TagFilter]),
    _dgiTargetRevision ::
      !(Maybe RevisionLocation),
    _dgiLastSuccessfulDeployment ::
      !(Maybe LastDeploymentInfo),
    _dgiLastAttemptedDeployment ::
      !(Maybe LastDeploymentInfo),
    _dgiOnPremisesInstanceTagFilters ::
      !(Maybe [TagFilter]),
    _dgiLoadBalancerInfo ::
      !(Maybe LoadBalancerInfo),
    _dgiEc2TagSet ::
      !(Maybe EC2TagSet),
    _dgiBlueGreenDeploymentConfiguration ::
      !( Maybe
           BlueGreenDeploymentConfiguration
       ),
    _dgiAutoScalingGroups ::
      !(Maybe [AutoScalingGroup]),
    _dgiDeploymentStyle ::
      !(Maybe DeploymentStyle),
    _dgiAlarmConfiguration ::
      !(Maybe AlarmConfiguration),
    _dgiEcsServices ::
      !(Maybe [ECSService]),
    _dgiApplicationName ::
      !(Maybe Text),
    _dgiComputePlatform ::
      !(Maybe ComputePlatform)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentGroupInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgiOnPremisesTagSet' - Information about groups of tags applied to an on-premises instance. The deployment group includes only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.
--
-- * 'dgiServiceRoleARN' - A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make calls to AWS services on your behalf. For more information, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html Create a Service Role for AWS CodeDeploy> in the /AWS CodeDeploy User Guide/ .
--
-- * 'dgiDeploymentConfigName' - The deployment configuration name.
--
-- * 'dgiAutoRollbackConfiguration' - Information about the automatic rollback configuration associated with the deployment group.
--
-- * 'dgiDeploymentGroupName' - The deployment group name.
--
-- * 'dgiTriggerConfigurations' - Information about triggers associated with the deployment group.
--
-- * 'dgiDeploymentGroupId' - The deployment group ID.
--
-- * 'dgiEc2TagFilters' - The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags.
--
-- * 'dgiTargetRevision' - Information about the deployment group's target revision, including type and location.
--
-- * 'dgiLastSuccessfulDeployment' - Information about the most recent successful deployment to the deployment group.
--
-- * 'dgiLastAttemptedDeployment' - Information about the most recent attempted deployment to the deployment group.
--
-- * 'dgiOnPremisesInstanceTagFilters' - The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags.
--
-- * 'dgiLoadBalancerInfo' - Information about the load balancer to use in a deployment.
--
-- * 'dgiEc2TagSet' - Information about groups of tags applied to an EC2 instance. The deployment group includes only EC2 instances identified by all of the tag groups. Cannot be used in the same call as ec2TagFilters.
--
-- * 'dgiBlueGreenDeploymentConfiguration' - Information about blue/green deployment options for a deployment group.
--
-- * 'dgiAutoScalingGroups' - A list of associated Auto Scaling groups.
--
-- * 'dgiDeploymentStyle' - Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
--
-- * 'dgiAlarmConfiguration' - A list of alarms associated with the deployment group.
--
-- * 'dgiEcsServices' - The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ .
--
-- * 'dgiApplicationName' - The application name.
--
-- * 'dgiComputePlatform' - The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
deploymentGroupInfo ::
  DeploymentGroupInfo
deploymentGroupInfo =
  DeploymentGroupInfo'
    { _dgiOnPremisesTagSet =
        Nothing,
      _dgiServiceRoleARN = Nothing,
      _dgiDeploymentConfigName = Nothing,
      _dgiAutoRollbackConfiguration = Nothing,
      _dgiDeploymentGroupName = Nothing,
      _dgiTriggerConfigurations = Nothing,
      _dgiDeploymentGroupId = Nothing,
      _dgiEc2TagFilters = Nothing,
      _dgiTargetRevision = Nothing,
      _dgiLastSuccessfulDeployment = Nothing,
      _dgiLastAttemptedDeployment = Nothing,
      _dgiOnPremisesInstanceTagFilters = Nothing,
      _dgiLoadBalancerInfo = Nothing,
      _dgiEc2TagSet = Nothing,
      _dgiBlueGreenDeploymentConfiguration = Nothing,
      _dgiAutoScalingGroups = Nothing,
      _dgiDeploymentStyle = Nothing,
      _dgiAlarmConfiguration = Nothing,
      _dgiEcsServices = Nothing,
      _dgiApplicationName = Nothing,
      _dgiComputePlatform = Nothing
    }

-- | Information about groups of tags applied to an on-premises instance. The deployment group includes only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.
dgiOnPremisesTagSet :: Lens' DeploymentGroupInfo (Maybe OnPremisesTagSet)
dgiOnPremisesTagSet = lens _dgiOnPremisesTagSet (\s a -> s {_dgiOnPremisesTagSet = a})

-- | A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make calls to AWS services on your behalf. For more information, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html Create a Service Role for AWS CodeDeploy> in the /AWS CodeDeploy User Guide/ .
dgiServiceRoleARN :: Lens' DeploymentGroupInfo (Maybe Text)
dgiServiceRoleARN = lens _dgiServiceRoleARN (\s a -> s {_dgiServiceRoleARN = a})

-- | The deployment configuration name.
dgiDeploymentConfigName :: Lens' DeploymentGroupInfo (Maybe Text)
dgiDeploymentConfigName = lens _dgiDeploymentConfigName (\s a -> s {_dgiDeploymentConfigName = a})

-- | Information about the automatic rollback configuration associated with the deployment group.
dgiAutoRollbackConfiguration :: Lens' DeploymentGroupInfo (Maybe AutoRollbackConfiguration)
dgiAutoRollbackConfiguration = lens _dgiAutoRollbackConfiguration (\s a -> s {_dgiAutoRollbackConfiguration = a})

-- | The deployment group name.
dgiDeploymentGroupName :: Lens' DeploymentGroupInfo (Maybe Text)
dgiDeploymentGroupName = lens _dgiDeploymentGroupName (\s a -> s {_dgiDeploymentGroupName = a})

-- | Information about triggers associated with the deployment group.
dgiTriggerConfigurations :: Lens' DeploymentGroupInfo [TriggerConfig]
dgiTriggerConfigurations = lens _dgiTriggerConfigurations (\s a -> s {_dgiTriggerConfigurations = a}) . _Default . _Coerce

-- | The deployment group ID.
dgiDeploymentGroupId :: Lens' DeploymentGroupInfo (Maybe Text)
dgiDeploymentGroupId = lens _dgiDeploymentGroupId (\s a -> s {_dgiDeploymentGroupId = a})

-- | The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags.
dgiEc2TagFilters :: Lens' DeploymentGroupInfo [EC2TagFilter]
dgiEc2TagFilters = lens _dgiEc2TagFilters (\s a -> s {_dgiEc2TagFilters = a}) . _Default . _Coerce

-- | Information about the deployment group's target revision, including type and location.
dgiTargetRevision :: Lens' DeploymentGroupInfo (Maybe RevisionLocation)
dgiTargetRevision = lens _dgiTargetRevision (\s a -> s {_dgiTargetRevision = a})

-- | Information about the most recent successful deployment to the deployment group.
dgiLastSuccessfulDeployment :: Lens' DeploymentGroupInfo (Maybe LastDeploymentInfo)
dgiLastSuccessfulDeployment = lens _dgiLastSuccessfulDeployment (\s a -> s {_dgiLastSuccessfulDeployment = a})

-- | Information about the most recent attempted deployment to the deployment group.
dgiLastAttemptedDeployment :: Lens' DeploymentGroupInfo (Maybe LastDeploymentInfo)
dgiLastAttemptedDeployment = lens _dgiLastAttemptedDeployment (\s a -> s {_dgiLastAttemptedDeployment = a})

-- | The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags.
dgiOnPremisesInstanceTagFilters :: Lens' DeploymentGroupInfo [TagFilter]
dgiOnPremisesInstanceTagFilters = lens _dgiOnPremisesInstanceTagFilters (\s a -> s {_dgiOnPremisesInstanceTagFilters = a}) . _Default . _Coerce

-- | Information about the load balancer to use in a deployment.
dgiLoadBalancerInfo :: Lens' DeploymentGroupInfo (Maybe LoadBalancerInfo)
dgiLoadBalancerInfo = lens _dgiLoadBalancerInfo (\s a -> s {_dgiLoadBalancerInfo = a})

-- | Information about groups of tags applied to an EC2 instance. The deployment group includes only EC2 instances identified by all of the tag groups. Cannot be used in the same call as ec2TagFilters.
dgiEc2TagSet :: Lens' DeploymentGroupInfo (Maybe EC2TagSet)
dgiEc2TagSet = lens _dgiEc2TagSet (\s a -> s {_dgiEc2TagSet = a})

-- | Information about blue/green deployment options for a deployment group.
dgiBlueGreenDeploymentConfiguration :: Lens' DeploymentGroupInfo (Maybe BlueGreenDeploymentConfiguration)
dgiBlueGreenDeploymentConfiguration = lens _dgiBlueGreenDeploymentConfiguration (\s a -> s {_dgiBlueGreenDeploymentConfiguration = a})

-- | A list of associated Auto Scaling groups.
dgiAutoScalingGroups :: Lens' DeploymentGroupInfo [AutoScalingGroup]
dgiAutoScalingGroups = lens _dgiAutoScalingGroups (\s a -> s {_dgiAutoScalingGroups = a}) . _Default . _Coerce

-- | Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
dgiDeploymentStyle :: Lens' DeploymentGroupInfo (Maybe DeploymentStyle)
dgiDeploymentStyle = lens _dgiDeploymentStyle (\s a -> s {_dgiDeploymentStyle = a})

-- | A list of alarms associated with the deployment group.
dgiAlarmConfiguration :: Lens' DeploymentGroupInfo (Maybe AlarmConfiguration)
dgiAlarmConfiguration = lens _dgiAlarmConfiguration (\s a -> s {_dgiAlarmConfiguration = a})

-- | The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ .
dgiEcsServices :: Lens' DeploymentGroupInfo [ECSService]
dgiEcsServices = lens _dgiEcsServices (\s a -> s {_dgiEcsServices = a}) . _Default . _Coerce

-- | The application name.
dgiApplicationName :: Lens' DeploymentGroupInfo (Maybe Text)
dgiApplicationName = lens _dgiApplicationName (\s a -> s {_dgiApplicationName = a})

-- | The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
dgiComputePlatform :: Lens' DeploymentGroupInfo (Maybe ComputePlatform)
dgiComputePlatform = lens _dgiComputePlatform (\s a -> s {_dgiComputePlatform = a})

instance FromJSON DeploymentGroupInfo where
  parseJSON =
    withObject
      "DeploymentGroupInfo"
      ( \x ->
          DeploymentGroupInfo'
            <$> (x .:? "onPremisesTagSet")
            <*> (x .:? "serviceRoleArn")
            <*> (x .:? "deploymentConfigName")
            <*> (x .:? "autoRollbackConfiguration")
            <*> (x .:? "deploymentGroupName")
            <*> (x .:? "triggerConfigurations" .!= mempty)
            <*> (x .:? "deploymentGroupId")
            <*> (x .:? "ec2TagFilters" .!= mempty)
            <*> (x .:? "targetRevision")
            <*> (x .:? "lastSuccessfulDeployment")
            <*> (x .:? "lastAttemptedDeployment")
            <*> (x .:? "onPremisesInstanceTagFilters" .!= mempty)
            <*> (x .:? "loadBalancerInfo")
            <*> (x .:? "ec2TagSet")
            <*> (x .:? "blueGreenDeploymentConfiguration")
            <*> (x .:? "autoScalingGroups" .!= mempty)
            <*> (x .:? "deploymentStyle")
            <*> (x .:? "alarmConfiguration")
            <*> (x .:? "ecsServices" .!= mempty)
            <*> (x .:? "applicationName")
            <*> (x .:? "computePlatform")
      )

instance Hashable DeploymentGroupInfo

instance NFData DeploymentGroupInfo

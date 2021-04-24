{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.CreateDeploymentGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment group to which application revisions are deployed.
module Network.AWS.CodeDeploy.CreateDeploymentGroup
  ( -- * Creating a Request
    createDeploymentGroup,
    CreateDeploymentGroup,

    -- * Request Lenses
    cdgOnPremisesTagSet,
    cdgDeploymentConfigName,
    cdgAutoRollbackConfiguration,
    cdgTriggerConfigurations,
    cdgEc2TagFilters,
    cdgOnPremisesInstanceTagFilters,
    cdgLoadBalancerInfo,
    cdgEc2TagSet,
    cdgBlueGreenDeploymentConfiguration,
    cdgTags,
    cdgAutoScalingGroups,
    cdgDeploymentStyle,
    cdgAlarmConfiguration,
    cdgEcsServices,
    cdgApplicationName,
    cdgDeploymentGroupName,
    cdgServiceRoleARN,

    -- * Destructuring the Response
    createDeploymentGroupResponse,
    CreateDeploymentGroupResponse,

    -- * Response Lenses
    cdgrrsDeploymentGroupId,
    cdgrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @CreateDeploymentGroup@ operation.
--
--
--
-- /See:/ 'createDeploymentGroup' smart constructor.
data CreateDeploymentGroup = CreateDeploymentGroup'
  { _cdgOnPremisesTagSet ::
      !(Maybe OnPremisesTagSet),
    _cdgDeploymentConfigName ::
      !(Maybe Text),
    _cdgAutoRollbackConfiguration ::
      !( Maybe
           AutoRollbackConfiguration
       ),
    _cdgTriggerConfigurations ::
      !(Maybe [TriggerConfig]),
    _cdgEc2TagFilters ::
      !(Maybe [EC2TagFilter]),
    _cdgOnPremisesInstanceTagFilters ::
      !(Maybe [TagFilter]),
    _cdgLoadBalancerInfo ::
      !(Maybe LoadBalancerInfo),
    _cdgEc2TagSet ::
      !(Maybe EC2TagSet),
    _cdgBlueGreenDeploymentConfiguration ::
      !( Maybe
           BlueGreenDeploymentConfiguration
       ),
    _cdgTags :: !(Maybe [Tag]),
    _cdgAutoScalingGroups ::
      !(Maybe [Text]),
    _cdgDeploymentStyle ::
      !(Maybe DeploymentStyle),
    _cdgAlarmConfiguration ::
      !(Maybe AlarmConfiguration),
    _cdgEcsServices ::
      !(Maybe [ECSService]),
    _cdgApplicationName ::
      !Text,
    _cdgDeploymentGroupName ::
      !Text,
    _cdgServiceRoleARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDeploymentGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdgOnPremisesTagSet' - Information about groups of tags applied to on-premises instances. The deployment group includes only on-premises instances identified by all of the tag groups. Cannot be used in the same call as @onPremisesInstanceTagFilters@ .
--
-- * 'cdgDeploymentConfigName' - If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation. @CodeDeployDefault.OneAtATime@ is the default deployment configuration. It is used if a configuration isn't specified for the deployment or deployment group. For more information about the predefined deployment configurations in AWS CodeDeploy, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html Working with Deployment Configurations in CodeDeploy> in the /AWS CodeDeploy User Guide/ .
--
-- * 'cdgAutoRollbackConfiguration' - Configuration information for an automatic rollback that is added when a deployment group is created.
--
-- * 'cdgTriggerConfigurations' - Information about triggers to create when the deployment group is created. For examples, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html Create a Trigger for an AWS CodeDeploy Event> in the /AWS CodeDeploy User Guide/ .
--
-- * 'cdgEc2TagFilters' - The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.
--
-- * 'cdgOnPremisesInstanceTagFilters' - The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags. Cannot be used in the same call as @OnPremisesTagSet@ .
--
-- * 'cdgLoadBalancerInfo' - Information about the load balancer used in a deployment.
--
-- * 'cdgEc2TagSet' - Information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same call as @ec2TagFilters@ .
--
-- * 'cdgBlueGreenDeploymentConfiguration' - Information about blue/green deployment options for a deployment group.
--
-- * 'cdgTags' - The metadata that you apply to CodeDeploy deployment groups to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define.
--
-- * 'cdgAutoScalingGroups' - A list of associated Amazon EC2 Auto Scaling groups.
--
-- * 'cdgDeploymentStyle' - Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.
--
-- * 'cdgAlarmConfiguration' - Information to add about Amazon CloudWatch alarms when the deployment group is created.
--
-- * 'cdgEcsServices' - The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ .
--
-- * 'cdgApplicationName' - The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
--
-- * 'cdgDeploymentGroupName' - The name of a new deployment group for the specified application.
--
-- * 'cdgServiceRoleARN' - A service role Amazon Resource Name (ARN) that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.
createDeploymentGroup ::
  -- | 'cdgApplicationName'
  Text ->
  -- | 'cdgDeploymentGroupName'
  Text ->
  -- | 'cdgServiceRoleARN'
  Text ->
  CreateDeploymentGroup
createDeploymentGroup
  pApplicationName_
  pDeploymentGroupName_
  pServiceRoleARN_ =
    CreateDeploymentGroup'
      { _cdgOnPremisesTagSet =
          Nothing,
        _cdgDeploymentConfigName = Nothing,
        _cdgAutoRollbackConfiguration = Nothing,
        _cdgTriggerConfigurations = Nothing,
        _cdgEc2TagFilters = Nothing,
        _cdgOnPremisesInstanceTagFilters = Nothing,
        _cdgLoadBalancerInfo = Nothing,
        _cdgEc2TagSet = Nothing,
        _cdgBlueGreenDeploymentConfiguration = Nothing,
        _cdgTags = Nothing,
        _cdgAutoScalingGroups = Nothing,
        _cdgDeploymentStyle = Nothing,
        _cdgAlarmConfiguration = Nothing,
        _cdgEcsServices = Nothing,
        _cdgApplicationName = pApplicationName_,
        _cdgDeploymentGroupName = pDeploymentGroupName_,
        _cdgServiceRoleARN = pServiceRoleARN_
      }

-- | Information about groups of tags applied to on-premises instances. The deployment group includes only on-premises instances identified by all of the tag groups. Cannot be used in the same call as @onPremisesInstanceTagFilters@ .
cdgOnPremisesTagSet :: Lens' CreateDeploymentGroup (Maybe OnPremisesTagSet)
cdgOnPremisesTagSet = lens _cdgOnPremisesTagSet (\s a -> s {_cdgOnPremisesTagSet = a})

-- | If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation. @CodeDeployDefault.OneAtATime@ is the default deployment configuration. It is used if a configuration isn't specified for the deployment or deployment group. For more information about the predefined deployment configurations in AWS CodeDeploy, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html Working with Deployment Configurations in CodeDeploy> in the /AWS CodeDeploy User Guide/ .
cdgDeploymentConfigName :: Lens' CreateDeploymentGroup (Maybe Text)
cdgDeploymentConfigName = lens _cdgDeploymentConfigName (\s a -> s {_cdgDeploymentConfigName = a})

-- | Configuration information for an automatic rollback that is added when a deployment group is created.
cdgAutoRollbackConfiguration :: Lens' CreateDeploymentGroup (Maybe AutoRollbackConfiguration)
cdgAutoRollbackConfiguration = lens _cdgAutoRollbackConfiguration (\s a -> s {_cdgAutoRollbackConfiguration = a})

-- | Information about triggers to create when the deployment group is created. For examples, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html Create a Trigger for an AWS CodeDeploy Event> in the /AWS CodeDeploy User Guide/ .
cdgTriggerConfigurations :: Lens' CreateDeploymentGroup [TriggerConfig]
cdgTriggerConfigurations = lens _cdgTriggerConfigurations (\s a -> s {_cdgTriggerConfigurations = a}) . _Default . _Coerce

-- | The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.
cdgEc2TagFilters :: Lens' CreateDeploymentGroup [EC2TagFilter]
cdgEc2TagFilters = lens _cdgEc2TagFilters (\s a -> s {_cdgEc2TagFilters = a}) . _Default . _Coerce

-- | The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags. Cannot be used in the same call as @OnPremisesTagSet@ .
cdgOnPremisesInstanceTagFilters :: Lens' CreateDeploymentGroup [TagFilter]
cdgOnPremisesInstanceTagFilters = lens _cdgOnPremisesInstanceTagFilters (\s a -> s {_cdgOnPremisesInstanceTagFilters = a}) . _Default . _Coerce

-- | Information about the load balancer used in a deployment.
cdgLoadBalancerInfo :: Lens' CreateDeploymentGroup (Maybe LoadBalancerInfo)
cdgLoadBalancerInfo = lens _cdgLoadBalancerInfo (\s a -> s {_cdgLoadBalancerInfo = a})

-- | Information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same call as @ec2TagFilters@ .
cdgEc2TagSet :: Lens' CreateDeploymentGroup (Maybe EC2TagSet)
cdgEc2TagSet = lens _cdgEc2TagSet (\s a -> s {_cdgEc2TagSet = a})

-- | Information about blue/green deployment options for a deployment group.
cdgBlueGreenDeploymentConfiguration :: Lens' CreateDeploymentGroup (Maybe BlueGreenDeploymentConfiguration)
cdgBlueGreenDeploymentConfiguration = lens _cdgBlueGreenDeploymentConfiguration (\s a -> s {_cdgBlueGreenDeploymentConfiguration = a})

-- | The metadata that you apply to CodeDeploy deployment groups to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define.
cdgTags :: Lens' CreateDeploymentGroup [Tag]
cdgTags = lens _cdgTags (\s a -> s {_cdgTags = a}) . _Default . _Coerce

-- | A list of associated Amazon EC2 Auto Scaling groups.
cdgAutoScalingGroups :: Lens' CreateDeploymentGroup [Text]
cdgAutoScalingGroups = lens _cdgAutoScalingGroups (\s a -> s {_cdgAutoScalingGroups = a}) . _Default . _Coerce

-- | Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.
cdgDeploymentStyle :: Lens' CreateDeploymentGroup (Maybe DeploymentStyle)
cdgDeploymentStyle = lens _cdgDeploymentStyle (\s a -> s {_cdgDeploymentStyle = a})

-- | Information to add about Amazon CloudWatch alarms when the deployment group is created.
cdgAlarmConfiguration :: Lens' CreateDeploymentGroup (Maybe AlarmConfiguration)
cdgAlarmConfiguration = lens _cdgAlarmConfiguration (\s a -> s {_cdgAlarmConfiguration = a})

-- | The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ .
cdgEcsServices :: Lens' CreateDeploymentGroup [ECSService]
cdgEcsServices = lens _cdgEcsServices (\s a -> s {_cdgEcsServices = a}) . _Default . _Coerce

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
cdgApplicationName :: Lens' CreateDeploymentGroup Text
cdgApplicationName = lens _cdgApplicationName (\s a -> s {_cdgApplicationName = a})

-- | The name of a new deployment group for the specified application.
cdgDeploymentGroupName :: Lens' CreateDeploymentGroup Text
cdgDeploymentGroupName = lens _cdgDeploymentGroupName (\s a -> s {_cdgDeploymentGroupName = a})

-- | A service role Amazon Resource Name (ARN) that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.
cdgServiceRoleARN :: Lens' CreateDeploymentGroup Text
cdgServiceRoleARN = lens _cdgServiceRoleARN (\s a -> s {_cdgServiceRoleARN = a})

instance AWSRequest CreateDeploymentGroup where
  type
    Rs CreateDeploymentGroup =
      CreateDeploymentGroupResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          CreateDeploymentGroupResponse'
            <$> (x .?> "deploymentGroupId") <*> (pure (fromEnum s))
      )

instance Hashable CreateDeploymentGroup

instance NFData CreateDeploymentGroup

instance ToHeaders CreateDeploymentGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.CreateDeploymentGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDeploymentGroup where
  toJSON CreateDeploymentGroup' {..} =
    object
      ( catMaybes
          [ ("onPremisesTagSet" .=) <$> _cdgOnPremisesTagSet,
            ("deploymentConfigName" .=)
              <$> _cdgDeploymentConfigName,
            ("autoRollbackConfiguration" .=)
              <$> _cdgAutoRollbackConfiguration,
            ("triggerConfigurations" .=)
              <$> _cdgTriggerConfigurations,
            ("ec2TagFilters" .=) <$> _cdgEc2TagFilters,
            ("onPremisesInstanceTagFilters" .=)
              <$> _cdgOnPremisesInstanceTagFilters,
            ("loadBalancerInfo" .=) <$> _cdgLoadBalancerInfo,
            ("ec2TagSet" .=) <$> _cdgEc2TagSet,
            ("blueGreenDeploymentConfiguration" .=)
              <$> _cdgBlueGreenDeploymentConfiguration,
            ("tags" .=) <$> _cdgTags,
            ("autoScalingGroups" .=) <$> _cdgAutoScalingGroups,
            ("deploymentStyle" .=) <$> _cdgDeploymentStyle,
            ("alarmConfiguration" .=) <$> _cdgAlarmConfiguration,
            ("ecsServices" .=) <$> _cdgEcsServices,
            Just ("applicationName" .= _cdgApplicationName),
            Just
              ("deploymentGroupName" .= _cdgDeploymentGroupName),
            Just ("serviceRoleArn" .= _cdgServiceRoleARN)
          ]
      )

instance ToPath CreateDeploymentGroup where
  toPath = const "/"

instance ToQuery CreateDeploymentGroup where
  toQuery = const mempty

-- | Represents the output of a @CreateDeploymentGroup@ operation.
--
--
--
-- /See:/ 'createDeploymentGroupResponse' smart constructor.
data CreateDeploymentGroupResponse = CreateDeploymentGroupResponse'
  { _cdgrrsDeploymentGroupId ::
      !( Maybe
           Text
       ),
    _cdgrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDeploymentGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdgrrsDeploymentGroupId' - A unique deployment group ID.
--
-- * 'cdgrrsResponseStatus' - -- | The response status code.
createDeploymentGroupResponse ::
  -- | 'cdgrrsResponseStatus'
  Int ->
  CreateDeploymentGroupResponse
createDeploymentGroupResponse pResponseStatus_ =
  CreateDeploymentGroupResponse'
    { _cdgrrsDeploymentGroupId =
        Nothing,
      _cdgrrsResponseStatus = pResponseStatus_
    }

-- | A unique deployment group ID.
cdgrrsDeploymentGroupId :: Lens' CreateDeploymentGroupResponse (Maybe Text)
cdgrrsDeploymentGroupId = lens _cdgrrsDeploymentGroupId (\s a -> s {_cdgrrsDeploymentGroupId = a})

-- | -- | The response status code.
cdgrrsResponseStatus :: Lens' CreateDeploymentGroupResponse Int
cdgrrsResponseStatus = lens _cdgrrsResponseStatus (\s a -> s {_cdgrrsResponseStatus = a})

instance NFData CreateDeploymentGroupResponse

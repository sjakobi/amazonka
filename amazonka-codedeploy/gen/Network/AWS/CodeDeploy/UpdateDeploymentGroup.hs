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
-- Module      : Network.AWS.CodeDeploy.UpdateDeploymentGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about a deployment group.
module Network.AWS.CodeDeploy.UpdateDeploymentGroup
  ( -- * Creating a Request
    updateDeploymentGroup,
    UpdateDeploymentGroup,

    -- * Request Lenses
    udgOnPremisesTagSet,
    udgServiceRoleARN,
    udgDeploymentConfigName,
    udgAutoRollbackConfiguration,
    udgTriggerConfigurations,
    udgEc2TagFilters,
    udgOnPremisesInstanceTagFilters,
    udgLoadBalancerInfo,
    udgEc2TagSet,
    udgBlueGreenDeploymentConfiguration,
    udgAutoScalingGroups,
    udgDeploymentStyle,
    udgAlarmConfiguration,
    udgEcsServices,
    udgNewDeploymentGroupName,
    udgApplicationName,
    udgCurrentDeploymentGroupName,

    -- * Destructuring the Response
    updateDeploymentGroupResponse,
    UpdateDeploymentGroupResponse,

    -- * Response Lenses
    udgrrsHooksNotCleanedUp,
    udgrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of an @UpdateDeploymentGroup@ operation.
--
--
--
-- /See:/ 'updateDeploymentGroup' smart constructor.
data UpdateDeploymentGroup = UpdateDeploymentGroup'
  { _udgOnPremisesTagSet ::
      !(Maybe OnPremisesTagSet),
    _udgServiceRoleARN ::
      !(Maybe Text),
    _udgDeploymentConfigName ::
      !(Maybe Text),
    _udgAutoRollbackConfiguration ::
      !( Maybe
           AutoRollbackConfiguration
       ),
    _udgTriggerConfigurations ::
      !(Maybe [TriggerConfig]),
    _udgEc2TagFilters ::
      !(Maybe [EC2TagFilter]),
    _udgOnPremisesInstanceTagFilters ::
      !(Maybe [TagFilter]),
    _udgLoadBalancerInfo ::
      !(Maybe LoadBalancerInfo),
    _udgEc2TagSet ::
      !(Maybe EC2TagSet),
    _udgBlueGreenDeploymentConfiguration ::
      !( Maybe
           BlueGreenDeploymentConfiguration
       ),
    _udgAutoScalingGroups ::
      !(Maybe [Text]),
    _udgDeploymentStyle ::
      !(Maybe DeploymentStyle),
    _udgAlarmConfiguration ::
      !(Maybe AlarmConfiguration),
    _udgEcsServices ::
      !(Maybe [ECSService]),
    _udgNewDeploymentGroupName ::
      !(Maybe Text),
    _udgApplicationName ::
      !Text,
    _udgCurrentDeploymentGroupName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDeploymentGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udgOnPremisesTagSet' - Information about an on-premises instance tag set. The deployment group includes only on-premises instances identified by all the tag groups.
--
-- * 'udgServiceRoleARN' - A replacement ARN for the service role, if you want to change it.
--
-- * 'udgDeploymentConfigName' - The replacement deployment configuration name to use, if you want to change it.
--
-- * 'udgAutoRollbackConfiguration' - Information for an automatic rollback configuration that is added or changed when a deployment group is updated.
--
-- * 'udgTriggerConfigurations' - Information about triggers to change when the deployment group is updated. For examples, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html Edit a Trigger in a CodeDeploy Deployment Group> in the /AWS CodeDeploy User Guide/ .
--
-- * 'udgEc2TagFilters' - The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
--
-- * 'udgOnPremisesInstanceTagFilters' - The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
--
-- * 'udgLoadBalancerInfo' - Information about the load balancer used in a deployment.
--
-- * 'udgEc2TagSet' - Information about groups of tags applied to on-premises instances. The deployment group includes only EC2 instances identified by all the tag groups.
--
-- * 'udgBlueGreenDeploymentConfiguration' - Information about blue/green deployment options for a deployment group.
--
-- * 'udgAutoScalingGroups' - The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.
--
-- * 'udgDeploymentStyle' - Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
--
-- * 'udgAlarmConfiguration' - Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.
--
-- * 'udgEcsServices' - The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ .
--
-- * 'udgNewDeploymentGroupName' - The new name of the deployment group, if you want to change it.
--
-- * 'udgApplicationName' - The application name that corresponds to the deployment group to update.
--
-- * 'udgCurrentDeploymentGroupName' - The current name of the deployment group.
updateDeploymentGroup ::
  -- | 'udgApplicationName'
  Text ->
  -- | 'udgCurrentDeploymentGroupName'
  Text ->
  UpdateDeploymentGroup
updateDeploymentGroup
  pApplicationName_
  pCurrentDeploymentGroupName_ =
    UpdateDeploymentGroup'
      { _udgOnPremisesTagSet =
          Nothing,
        _udgServiceRoleARN = Nothing,
        _udgDeploymentConfigName = Nothing,
        _udgAutoRollbackConfiguration = Nothing,
        _udgTriggerConfigurations = Nothing,
        _udgEc2TagFilters = Nothing,
        _udgOnPremisesInstanceTagFilters = Nothing,
        _udgLoadBalancerInfo = Nothing,
        _udgEc2TagSet = Nothing,
        _udgBlueGreenDeploymentConfiguration = Nothing,
        _udgAutoScalingGroups = Nothing,
        _udgDeploymentStyle = Nothing,
        _udgAlarmConfiguration = Nothing,
        _udgEcsServices = Nothing,
        _udgNewDeploymentGroupName = Nothing,
        _udgApplicationName = pApplicationName_,
        _udgCurrentDeploymentGroupName =
          pCurrentDeploymentGroupName_
      }

-- | Information about an on-premises instance tag set. The deployment group includes only on-premises instances identified by all the tag groups.
udgOnPremisesTagSet :: Lens' UpdateDeploymentGroup (Maybe OnPremisesTagSet)
udgOnPremisesTagSet = lens _udgOnPremisesTagSet (\s a -> s {_udgOnPremisesTagSet = a})

-- | A replacement ARN for the service role, if you want to change it.
udgServiceRoleARN :: Lens' UpdateDeploymentGroup (Maybe Text)
udgServiceRoleARN = lens _udgServiceRoleARN (\s a -> s {_udgServiceRoleARN = a})

-- | The replacement deployment configuration name to use, if you want to change it.
udgDeploymentConfigName :: Lens' UpdateDeploymentGroup (Maybe Text)
udgDeploymentConfigName = lens _udgDeploymentConfigName (\s a -> s {_udgDeploymentConfigName = a})

-- | Information for an automatic rollback configuration that is added or changed when a deployment group is updated.
udgAutoRollbackConfiguration :: Lens' UpdateDeploymentGroup (Maybe AutoRollbackConfiguration)
udgAutoRollbackConfiguration = lens _udgAutoRollbackConfiguration (\s a -> s {_udgAutoRollbackConfiguration = a})

-- | Information about triggers to change when the deployment group is updated. For examples, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html Edit a Trigger in a CodeDeploy Deployment Group> in the /AWS CodeDeploy User Guide/ .
udgTriggerConfigurations :: Lens' UpdateDeploymentGroup [TriggerConfig]
udgTriggerConfigurations = lens _udgTriggerConfigurations (\s a -> s {_udgTriggerConfigurations = a}) . _Default . _Coerce

-- | The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
udgEc2TagFilters :: Lens' UpdateDeploymentGroup [EC2TagFilter]
udgEc2TagFilters = lens _udgEc2TagFilters (\s a -> s {_udgEc2TagFilters = a}) . _Default . _Coerce

-- | The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
udgOnPremisesInstanceTagFilters :: Lens' UpdateDeploymentGroup [TagFilter]
udgOnPremisesInstanceTagFilters = lens _udgOnPremisesInstanceTagFilters (\s a -> s {_udgOnPremisesInstanceTagFilters = a}) . _Default . _Coerce

-- | Information about the load balancer used in a deployment.
udgLoadBalancerInfo :: Lens' UpdateDeploymentGroup (Maybe LoadBalancerInfo)
udgLoadBalancerInfo = lens _udgLoadBalancerInfo (\s a -> s {_udgLoadBalancerInfo = a})

-- | Information about groups of tags applied to on-premises instances. The deployment group includes only EC2 instances identified by all the tag groups.
udgEc2TagSet :: Lens' UpdateDeploymentGroup (Maybe EC2TagSet)
udgEc2TagSet = lens _udgEc2TagSet (\s a -> s {_udgEc2TagSet = a})

-- | Information about blue/green deployment options for a deployment group.
udgBlueGreenDeploymentConfiguration :: Lens' UpdateDeploymentGroup (Maybe BlueGreenDeploymentConfiguration)
udgBlueGreenDeploymentConfiguration = lens _udgBlueGreenDeploymentConfiguration (\s a -> s {_udgBlueGreenDeploymentConfiguration = a})

-- | The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.
udgAutoScalingGroups :: Lens' UpdateDeploymentGroup [Text]
udgAutoScalingGroups = lens _udgAutoScalingGroups (\s a -> s {_udgAutoScalingGroups = a}) . _Default . _Coerce

-- | Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
udgDeploymentStyle :: Lens' UpdateDeploymentGroup (Maybe DeploymentStyle)
udgDeploymentStyle = lens _udgDeploymentStyle (\s a -> s {_udgDeploymentStyle = a})

-- | Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.
udgAlarmConfiguration :: Lens' UpdateDeploymentGroup (Maybe AlarmConfiguration)
udgAlarmConfiguration = lens _udgAlarmConfiguration (\s a -> s {_udgAlarmConfiguration = a})

-- | The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ .
udgEcsServices :: Lens' UpdateDeploymentGroup [ECSService]
udgEcsServices = lens _udgEcsServices (\s a -> s {_udgEcsServices = a}) . _Default . _Coerce

-- | The new name of the deployment group, if you want to change it.
udgNewDeploymentGroupName :: Lens' UpdateDeploymentGroup (Maybe Text)
udgNewDeploymentGroupName = lens _udgNewDeploymentGroupName (\s a -> s {_udgNewDeploymentGroupName = a})

-- | The application name that corresponds to the deployment group to update.
udgApplicationName :: Lens' UpdateDeploymentGroup Text
udgApplicationName = lens _udgApplicationName (\s a -> s {_udgApplicationName = a})

-- | The current name of the deployment group.
udgCurrentDeploymentGroupName :: Lens' UpdateDeploymentGroup Text
udgCurrentDeploymentGroupName = lens _udgCurrentDeploymentGroupName (\s a -> s {_udgCurrentDeploymentGroupName = a})

instance AWSRequest UpdateDeploymentGroup where
  type
    Rs UpdateDeploymentGroup =
      UpdateDeploymentGroupResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          UpdateDeploymentGroupResponse'
            <$> (x .?> "hooksNotCleanedUp" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateDeploymentGroup

instance NFData UpdateDeploymentGroup

instance ToHeaders UpdateDeploymentGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.UpdateDeploymentGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDeploymentGroup where
  toJSON UpdateDeploymentGroup' {..} =
    object
      ( catMaybes
          [ ("onPremisesTagSet" .=) <$> _udgOnPremisesTagSet,
            ("serviceRoleArn" .=) <$> _udgServiceRoleARN,
            ("deploymentConfigName" .=)
              <$> _udgDeploymentConfigName,
            ("autoRollbackConfiguration" .=)
              <$> _udgAutoRollbackConfiguration,
            ("triggerConfigurations" .=)
              <$> _udgTriggerConfigurations,
            ("ec2TagFilters" .=) <$> _udgEc2TagFilters,
            ("onPremisesInstanceTagFilters" .=)
              <$> _udgOnPremisesInstanceTagFilters,
            ("loadBalancerInfo" .=) <$> _udgLoadBalancerInfo,
            ("ec2TagSet" .=) <$> _udgEc2TagSet,
            ("blueGreenDeploymentConfiguration" .=)
              <$> _udgBlueGreenDeploymentConfiguration,
            ("autoScalingGroups" .=) <$> _udgAutoScalingGroups,
            ("deploymentStyle" .=) <$> _udgDeploymentStyle,
            ("alarmConfiguration" .=) <$> _udgAlarmConfiguration,
            ("ecsServices" .=) <$> _udgEcsServices,
            ("newDeploymentGroupName" .=)
              <$> _udgNewDeploymentGroupName,
            Just ("applicationName" .= _udgApplicationName),
            Just
              ( "currentDeploymentGroupName"
                  .= _udgCurrentDeploymentGroupName
              )
          ]
      )

instance ToPath UpdateDeploymentGroup where
  toPath = const "/"

instance ToQuery UpdateDeploymentGroup where
  toQuery = const mempty

-- | Represents the output of an @UpdateDeploymentGroup@ operation.
--
--
--
-- /See:/ 'updateDeploymentGroupResponse' smart constructor.
data UpdateDeploymentGroupResponse = UpdateDeploymentGroupResponse'
  { _udgrrsHooksNotCleanedUp ::
      !( Maybe
           [AutoScalingGroup]
       ),
    _udgrrsResponseStatus ::
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

-- | Creates a value of 'UpdateDeploymentGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udgrrsHooksNotCleanedUp' - If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.
--
-- * 'udgrrsResponseStatus' - -- | The response status code.
updateDeploymentGroupResponse ::
  -- | 'udgrrsResponseStatus'
  Int ->
  UpdateDeploymentGroupResponse
updateDeploymentGroupResponse pResponseStatus_ =
  UpdateDeploymentGroupResponse'
    { _udgrrsHooksNotCleanedUp =
        Nothing,
      _udgrrsResponseStatus = pResponseStatus_
    }

-- | If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.
udgrrsHooksNotCleanedUp :: Lens' UpdateDeploymentGroupResponse [AutoScalingGroup]
udgrrsHooksNotCleanedUp = lens _udgrrsHooksNotCleanedUp (\s a -> s {_udgrrsHooksNotCleanedUp = a}) . _Default . _Coerce

-- | -- | The response status code.
udgrrsResponseStatus :: Lens' UpdateDeploymentGroupResponse Int
udgrrsResponseStatus = lens _udgrrsResponseStatus (\s a -> s {_udgrrsResponseStatus = a})

instance NFData UpdateDeploymentGroupResponse

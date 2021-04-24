{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.AutoScaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.AutoScaling where

import Data.Proxy
import Network.AWS.AutoScaling
import Test.AWS.AutoScaling.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestSuspendProcesses $
--             suspendProcesses
--
--         , requestDescribeInstanceRefreshes $
--             describeInstanceRefreshes
--
--         , requestEnterStandby $
--             enterStandby
--
--         , requestExecutePolicy $
--             executePolicy
--
--         , requestDeleteLifecycleHook $
--             deleteLifecycleHook
--
--         , requestResumeProcesses $
--             resumeProcesses
--
--         , requestPutNotificationConfiguration $
--             putNotificationConfiguration
--
--         , requestAttachLoadBalancerTargetGroups $
--             attachLoadBalancerTargetGroups
--
--         , requestPutScalingPolicy $
--             putScalingPolicy
--
--         , requestStartInstanceRefresh $
--             startInstanceRefresh
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestDeletePolicy $
--             deletePolicy
--
--         , requestCreateLaunchConfiguration $
--             createLaunchConfiguration
--
--         , requestCreateOrUpdateTags $
--             createOrUpdateTags
--
--         , requestDescribeScheduledActions $
--             describeScheduledActions
--
--         , requestDescribeAutoScalingNotificationTypes $
--             describeAutoScalingNotificationTypes
--
--         , requestDescribeAdjustmentTypes $
--             describeAdjustmentTypes
--
--         , requestDetachLoadBalancers $
--             detachLoadBalancers
--
--         , requestDeleteScheduledAction $
--             deleteScheduledAction
--
--         , requestDescribeScalingActivities $
--             describeScalingActivities
--
--         , requestDescribeLifecycleHooks $
--             describeLifecycleHooks
--
--         , requestDetachLoadBalancerTargetGroups $
--             detachLoadBalancerTargetGroups
--
--         , requestPutScheduledUpdateGroupAction $
--             putScheduledUpdateGroupAction
--
--         , requestSetInstanceProtection $
--             setInstanceProtection
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestDetachInstances $
--             detachInstances
--
--         , requestAttachLoadBalancers $
--             attachLoadBalancers
--
--         , requestDescribeAccountLimits $
--             describeAccountLimits
--
--         , requestTerminateInstanceInAutoScalingGroup $
--             terminateInstanceInAutoScalingGroup
--
--         , requestDescribeTerminationPolicyTypes $
--             describeTerminationPolicyTypes
--
--         , requestSetInstanceHealth $
--             setInstanceHealth
--
--         , requestExitStandby $
--             exitStandby
--
--         , requestPutLifecycleHook $
--             putLifecycleHook
--
--         , requestBatchPutScheduledUpdateGroupAction $
--             batchPutScheduledUpdateGroupAction
--
--         , requestDeleteLaunchConfiguration $
--             deleteLaunchConfiguration
--
--         , requestDeleteNotificationConfiguration $
--             deleteNotificationConfiguration
--
--         , requestUpdateAutoScalingGroup $
--             updateAutoScalingGroup
--
--         , requestDescribeLoadBalancers $
--             describeLoadBalancers
--
--         , requestDeleteAutoScalingGroup $
--             deleteAutoScalingGroup
--
--         , requestDescribeMetricCollectionTypes $
--             describeMetricCollectionTypes
--
--         , requestCreateAutoScalingGroup $
--             createAutoScalingGroup
--
--         , requestCompleteLifecycleAction $
--             completeLifecycleAction
--
--         , requestAttachInstances $
--             attachInstances
--
--         , requestSetDesiredCapacity $
--             setDesiredCapacity
--
--         , requestDescribePolicies $
--             describePolicies
--
--         , requestDescribeAutoScalingGroups $
--             describeAutoScalingGroups
--
--         , requestDescribeLaunchConfigurations $
--             describeLaunchConfigurations
--
--         , requestDescribeNotificationConfigurations $
--             describeNotificationConfigurations
--
--         , requestDescribeLifecycleHookTypes $
--             describeLifecycleHookTypes
--
--         , requestEnableMetricsCollection $
--             enableMetricsCollection
--
--         , requestDescribeScalingProcessTypes $
--             describeScalingProcessTypes
--
--         , requestDescribeAutoScalingInstances $
--             describeAutoScalingInstances
--
--         , requestDisableMetricsCollection $
--             disableMetricsCollection
--
--         , requestRecordLifecycleActionHeartbeat $
--             recordLifecycleActionHeartbeat
--
--         , requestBatchDeleteScheduledAction $
--             batchDeleteScheduledAction
--
--         , requestDescribeLoadBalancerTargetGroups $
--             describeLoadBalancerTargetGroups
--
--         , requestCancelInstanceRefresh $
--             cancelInstanceRefresh
--
--           ]

--     , testGroup "response"
--         [ responseSuspendProcesses $
--             suspendProcessesResponse
--
--         , responseDescribeInstanceRefreshes $
--             describeInstanceRefreshesResponse
--
--         , responseEnterStandby $
--             enterStandbyResponse
--
--         , responseExecutePolicy $
--             executePolicyResponse
--
--         , responseDeleteLifecycleHook $
--             deleteLifecycleHookResponse
--
--         , responseResumeProcesses $
--             resumeProcessesResponse
--
--         , responsePutNotificationConfiguration $
--             putNotificationConfigurationResponse
--
--         , responseAttachLoadBalancerTargetGroups $
--             attachLoadBalancerTargetGroupsResponse
--
--         , responsePutScalingPolicy $
--             putScalingPolicyResponse
--
--         , responseStartInstanceRefresh $
--             startInstanceRefreshResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseDeletePolicy $
--             deletePolicyResponse
--
--         , responseCreateLaunchConfiguration $
--             createLaunchConfigurationResponse
--
--         , responseCreateOrUpdateTags $
--             createOrUpdateTagsResponse
--
--         , responseDescribeScheduledActions $
--             describeScheduledActionsResponse
--
--         , responseDescribeAutoScalingNotificationTypes $
--             describeAutoScalingNotificationTypesResponse
--
--         , responseDescribeAdjustmentTypes $
--             describeAdjustmentTypesResponse
--
--         , responseDetachLoadBalancers $
--             detachLoadBalancersResponse
--
--         , responseDeleteScheduledAction $
--             deleteScheduledActionResponse
--
--         , responseDescribeScalingActivities $
--             describeScalingActivitiesResponse
--
--         , responseDescribeLifecycleHooks $
--             describeLifecycleHooksResponse
--
--         , responseDetachLoadBalancerTargetGroups $
--             detachLoadBalancerTargetGroupsResponse
--
--         , responsePutScheduledUpdateGroupAction $
--             putScheduledUpdateGroupActionResponse
--
--         , responseSetInstanceProtection $
--             setInstanceProtectionResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseDetachInstances $
--             detachInstancesResponse
--
--         , responseAttachLoadBalancers $
--             attachLoadBalancersResponse
--
--         , responseDescribeAccountLimits $
--             describeAccountLimitsResponse
--
--         , responseTerminateInstanceInAutoScalingGroup $
--             terminateInstanceInAutoScalingGroupResponse
--
--         , responseDescribeTerminationPolicyTypes $
--             describeTerminationPolicyTypesResponse
--
--         , responseSetInstanceHealth $
--             setInstanceHealthResponse
--
--         , responseExitStandby $
--             exitStandbyResponse
--
--         , responsePutLifecycleHook $
--             putLifecycleHookResponse
--
--         , responseBatchPutScheduledUpdateGroupAction $
--             batchPutScheduledUpdateGroupActionResponse
--
--         , responseDeleteLaunchConfiguration $
--             deleteLaunchConfigurationResponse
--
--         , responseDeleteNotificationConfiguration $
--             deleteNotificationConfigurationResponse
--
--         , responseUpdateAutoScalingGroup $
--             updateAutoScalingGroupResponse
--
--         , responseDescribeLoadBalancers $
--             describeLoadBalancersResponse
--
--         , responseDeleteAutoScalingGroup $
--             deleteAutoScalingGroupResponse
--
--         , responseDescribeMetricCollectionTypes $
--             describeMetricCollectionTypesResponse
--
--         , responseCreateAutoScalingGroup $
--             createAutoScalingGroupResponse
--
--         , responseCompleteLifecycleAction $
--             completeLifecycleActionResponse
--
--         , responseAttachInstances $
--             attachInstancesResponse
--
--         , responseSetDesiredCapacity $
--             setDesiredCapacityResponse
--
--         , responseDescribePolicies $
--             describePoliciesResponse
--
--         , responseDescribeAutoScalingGroups $
--             describeAutoScalingGroupsResponse
--
--         , responseDescribeLaunchConfigurations $
--             describeLaunchConfigurationsResponse
--
--         , responseDescribeNotificationConfigurations $
--             describeNotificationConfigurationsResponse
--
--         , responseDescribeLifecycleHookTypes $
--             describeLifecycleHookTypesResponse
--
--         , responseEnableMetricsCollection $
--             enableMetricsCollectionResponse
--
--         , responseDescribeScalingProcessTypes $
--             describeScalingProcessTypesResponse
--
--         , responseDescribeAutoScalingInstances $
--             describeAutoScalingInstancesResponse
--
--         , responseDisableMetricsCollection $
--             disableMetricsCollectionResponse
--
--         , responseRecordLifecycleActionHeartbeat $
--             recordLifecycleActionHeartbeatResponse
--
--         , responseBatchDeleteScheduledAction $
--             batchDeleteScheduledActionResponse
--
--         , responseDescribeLoadBalancerTargetGroups $
--             describeLoadBalancerTargetGroupsResponse
--
--         , responseCancelInstanceRefresh $
--             cancelInstanceRefreshResponse
--
--           ]
--     ]

-- Requests

requestSuspendProcesses :: SuspendProcesses -> TestTree
requestSuspendProcesses =
  req
    "SuspendProcesses"
    "fixture/SuspendProcesses.yaml"

requestDescribeInstanceRefreshes :: DescribeInstanceRefreshes -> TestTree
requestDescribeInstanceRefreshes =
  req
    "DescribeInstanceRefreshes"
    "fixture/DescribeInstanceRefreshes.yaml"

requestEnterStandby :: EnterStandby -> TestTree
requestEnterStandby =
  req
    "EnterStandby"
    "fixture/EnterStandby.yaml"

requestExecutePolicy :: ExecutePolicy -> TestTree
requestExecutePolicy =
  req
    "ExecutePolicy"
    "fixture/ExecutePolicy.yaml"

requestDeleteLifecycleHook :: DeleteLifecycleHook -> TestTree
requestDeleteLifecycleHook =
  req
    "DeleteLifecycleHook"
    "fixture/DeleteLifecycleHook.yaml"

requestResumeProcesses :: ResumeProcesses -> TestTree
requestResumeProcesses =
  req
    "ResumeProcesses"
    "fixture/ResumeProcesses.yaml"

requestPutNotificationConfiguration :: PutNotificationConfiguration -> TestTree
requestPutNotificationConfiguration =
  req
    "PutNotificationConfiguration"
    "fixture/PutNotificationConfiguration.yaml"

requestAttachLoadBalancerTargetGroups :: AttachLoadBalancerTargetGroups -> TestTree
requestAttachLoadBalancerTargetGroups =
  req
    "AttachLoadBalancerTargetGroups"
    "fixture/AttachLoadBalancerTargetGroups.yaml"

requestPutScalingPolicy :: PutScalingPolicy -> TestTree
requestPutScalingPolicy =
  req
    "PutScalingPolicy"
    "fixture/PutScalingPolicy.yaml"

requestStartInstanceRefresh :: StartInstanceRefresh -> TestTree
requestStartInstanceRefresh =
  req
    "StartInstanceRefresh"
    "fixture/StartInstanceRefresh.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestDeletePolicy :: DeletePolicy -> TestTree
requestDeletePolicy =
  req
    "DeletePolicy"
    "fixture/DeletePolicy.yaml"

requestCreateLaunchConfiguration :: CreateLaunchConfiguration -> TestTree
requestCreateLaunchConfiguration =
  req
    "CreateLaunchConfiguration"
    "fixture/CreateLaunchConfiguration.yaml"

requestCreateOrUpdateTags :: CreateOrUpdateTags -> TestTree
requestCreateOrUpdateTags =
  req
    "CreateOrUpdateTags"
    "fixture/CreateOrUpdateTags.yaml"

requestDescribeScheduledActions :: DescribeScheduledActions -> TestTree
requestDescribeScheduledActions =
  req
    "DescribeScheduledActions"
    "fixture/DescribeScheduledActions.yaml"

requestDescribeAutoScalingNotificationTypes :: DescribeAutoScalingNotificationTypes -> TestTree
requestDescribeAutoScalingNotificationTypes =
  req
    "DescribeAutoScalingNotificationTypes"
    "fixture/DescribeAutoScalingNotificationTypes.yaml"

requestDescribeAdjustmentTypes :: DescribeAdjustmentTypes -> TestTree
requestDescribeAdjustmentTypes =
  req
    "DescribeAdjustmentTypes"
    "fixture/DescribeAdjustmentTypes.yaml"

requestDetachLoadBalancers :: DetachLoadBalancers -> TestTree
requestDetachLoadBalancers =
  req
    "DetachLoadBalancers"
    "fixture/DetachLoadBalancers.yaml"

requestDeleteScheduledAction :: DeleteScheduledAction -> TestTree
requestDeleteScheduledAction =
  req
    "DeleteScheduledAction"
    "fixture/DeleteScheduledAction.yaml"

requestDescribeScalingActivities :: DescribeScalingActivities -> TestTree
requestDescribeScalingActivities =
  req
    "DescribeScalingActivities"
    "fixture/DescribeScalingActivities.yaml"

requestDescribeLifecycleHooks :: DescribeLifecycleHooks -> TestTree
requestDescribeLifecycleHooks =
  req
    "DescribeLifecycleHooks"
    "fixture/DescribeLifecycleHooks.yaml"

requestDetachLoadBalancerTargetGroups :: DetachLoadBalancerTargetGroups -> TestTree
requestDetachLoadBalancerTargetGroups =
  req
    "DetachLoadBalancerTargetGroups"
    "fixture/DetachLoadBalancerTargetGroups.yaml"

requestPutScheduledUpdateGroupAction :: PutScheduledUpdateGroupAction -> TestTree
requestPutScheduledUpdateGroupAction =
  req
    "PutScheduledUpdateGroupAction"
    "fixture/PutScheduledUpdateGroupAction.yaml"

requestSetInstanceProtection :: SetInstanceProtection -> TestTree
requestSetInstanceProtection =
  req
    "SetInstanceProtection"
    "fixture/SetInstanceProtection.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestDetachInstances :: DetachInstances -> TestTree
requestDetachInstances =
  req
    "DetachInstances"
    "fixture/DetachInstances.yaml"

requestAttachLoadBalancers :: AttachLoadBalancers -> TestTree
requestAttachLoadBalancers =
  req
    "AttachLoadBalancers"
    "fixture/AttachLoadBalancers.yaml"

requestDescribeAccountLimits :: DescribeAccountLimits -> TestTree
requestDescribeAccountLimits =
  req
    "DescribeAccountLimits"
    "fixture/DescribeAccountLimits.yaml"

requestTerminateInstanceInAutoScalingGroup :: TerminateInstanceInAutoScalingGroup -> TestTree
requestTerminateInstanceInAutoScalingGroup =
  req
    "TerminateInstanceInAutoScalingGroup"
    "fixture/TerminateInstanceInAutoScalingGroup.yaml"

requestDescribeTerminationPolicyTypes :: DescribeTerminationPolicyTypes -> TestTree
requestDescribeTerminationPolicyTypes =
  req
    "DescribeTerminationPolicyTypes"
    "fixture/DescribeTerminationPolicyTypes.yaml"

requestSetInstanceHealth :: SetInstanceHealth -> TestTree
requestSetInstanceHealth =
  req
    "SetInstanceHealth"
    "fixture/SetInstanceHealth.yaml"

requestExitStandby :: ExitStandby -> TestTree
requestExitStandby =
  req
    "ExitStandby"
    "fixture/ExitStandby.yaml"

requestPutLifecycleHook :: PutLifecycleHook -> TestTree
requestPutLifecycleHook =
  req
    "PutLifecycleHook"
    "fixture/PutLifecycleHook.yaml"

requestBatchPutScheduledUpdateGroupAction :: BatchPutScheduledUpdateGroupAction -> TestTree
requestBatchPutScheduledUpdateGroupAction =
  req
    "BatchPutScheduledUpdateGroupAction"
    "fixture/BatchPutScheduledUpdateGroupAction.yaml"

requestDeleteLaunchConfiguration :: DeleteLaunchConfiguration -> TestTree
requestDeleteLaunchConfiguration =
  req
    "DeleteLaunchConfiguration"
    "fixture/DeleteLaunchConfiguration.yaml"

requestDeleteNotificationConfiguration :: DeleteNotificationConfiguration -> TestTree
requestDeleteNotificationConfiguration =
  req
    "DeleteNotificationConfiguration"
    "fixture/DeleteNotificationConfiguration.yaml"

requestUpdateAutoScalingGroup :: UpdateAutoScalingGroup -> TestTree
requestUpdateAutoScalingGroup =
  req
    "UpdateAutoScalingGroup"
    "fixture/UpdateAutoScalingGroup.yaml"

requestDescribeLoadBalancers :: DescribeLoadBalancers -> TestTree
requestDescribeLoadBalancers =
  req
    "DescribeLoadBalancers"
    "fixture/DescribeLoadBalancers.yaml"

requestDeleteAutoScalingGroup :: DeleteAutoScalingGroup -> TestTree
requestDeleteAutoScalingGroup =
  req
    "DeleteAutoScalingGroup"
    "fixture/DeleteAutoScalingGroup.yaml"

requestDescribeMetricCollectionTypes :: DescribeMetricCollectionTypes -> TestTree
requestDescribeMetricCollectionTypes =
  req
    "DescribeMetricCollectionTypes"
    "fixture/DescribeMetricCollectionTypes.yaml"

requestCreateAutoScalingGroup :: CreateAutoScalingGroup -> TestTree
requestCreateAutoScalingGroup =
  req
    "CreateAutoScalingGroup"
    "fixture/CreateAutoScalingGroup.yaml"

requestCompleteLifecycleAction :: CompleteLifecycleAction -> TestTree
requestCompleteLifecycleAction =
  req
    "CompleteLifecycleAction"
    "fixture/CompleteLifecycleAction.yaml"

requestAttachInstances :: AttachInstances -> TestTree
requestAttachInstances =
  req
    "AttachInstances"
    "fixture/AttachInstances.yaml"

requestSetDesiredCapacity :: SetDesiredCapacity -> TestTree
requestSetDesiredCapacity =
  req
    "SetDesiredCapacity"
    "fixture/SetDesiredCapacity.yaml"

requestDescribePolicies :: DescribePolicies -> TestTree
requestDescribePolicies =
  req
    "DescribePolicies"
    "fixture/DescribePolicies.yaml"

requestDescribeAutoScalingGroups :: DescribeAutoScalingGroups -> TestTree
requestDescribeAutoScalingGroups =
  req
    "DescribeAutoScalingGroups"
    "fixture/DescribeAutoScalingGroups.yaml"

requestDescribeLaunchConfigurations :: DescribeLaunchConfigurations -> TestTree
requestDescribeLaunchConfigurations =
  req
    "DescribeLaunchConfigurations"
    "fixture/DescribeLaunchConfigurations.yaml"

requestDescribeNotificationConfigurations :: DescribeNotificationConfigurations -> TestTree
requestDescribeNotificationConfigurations =
  req
    "DescribeNotificationConfigurations"
    "fixture/DescribeNotificationConfigurations.yaml"

requestDescribeLifecycleHookTypes :: DescribeLifecycleHookTypes -> TestTree
requestDescribeLifecycleHookTypes =
  req
    "DescribeLifecycleHookTypes"
    "fixture/DescribeLifecycleHookTypes.yaml"

requestEnableMetricsCollection :: EnableMetricsCollection -> TestTree
requestEnableMetricsCollection =
  req
    "EnableMetricsCollection"
    "fixture/EnableMetricsCollection.yaml"

requestDescribeScalingProcessTypes :: DescribeScalingProcessTypes -> TestTree
requestDescribeScalingProcessTypes =
  req
    "DescribeScalingProcessTypes"
    "fixture/DescribeScalingProcessTypes.yaml"

requestDescribeAutoScalingInstances :: DescribeAutoScalingInstances -> TestTree
requestDescribeAutoScalingInstances =
  req
    "DescribeAutoScalingInstances"
    "fixture/DescribeAutoScalingInstances.yaml"

requestDisableMetricsCollection :: DisableMetricsCollection -> TestTree
requestDisableMetricsCollection =
  req
    "DisableMetricsCollection"
    "fixture/DisableMetricsCollection.yaml"

requestRecordLifecycleActionHeartbeat :: RecordLifecycleActionHeartbeat -> TestTree
requestRecordLifecycleActionHeartbeat =
  req
    "RecordLifecycleActionHeartbeat"
    "fixture/RecordLifecycleActionHeartbeat.yaml"

requestBatchDeleteScheduledAction :: BatchDeleteScheduledAction -> TestTree
requestBatchDeleteScheduledAction =
  req
    "BatchDeleteScheduledAction"
    "fixture/BatchDeleteScheduledAction.yaml"

requestDescribeLoadBalancerTargetGroups :: DescribeLoadBalancerTargetGroups -> TestTree
requestDescribeLoadBalancerTargetGroups =
  req
    "DescribeLoadBalancerTargetGroups"
    "fixture/DescribeLoadBalancerTargetGroups.yaml"

requestCancelInstanceRefresh :: CancelInstanceRefresh -> TestTree
requestCancelInstanceRefresh =
  req
    "CancelInstanceRefresh"
    "fixture/CancelInstanceRefresh.yaml"

-- Responses

responseSuspendProcesses :: SuspendProcessesResponse -> TestTree
responseSuspendProcesses =
  res
    "SuspendProcessesResponse"
    "fixture/SuspendProcessesResponse.proto"
    autoScaling
    (Proxy :: Proxy SuspendProcesses)

responseDescribeInstanceRefreshes :: DescribeInstanceRefreshesResponse -> TestTree
responseDescribeInstanceRefreshes =
  res
    "DescribeInstanceRefreshesResponse"
    "fixture/DescribeInstanceRefreshesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeInstanceRefreshes)

responseEnterStandby :: EnterStandbyResponse -> TestTree
responseEnterStandby =
  res
    "EnterStandbyResponse"
    "fixture/EnterStandbyResponse.proto"
    autoScaling
    (Proxy :: Proxy EnterStandby)

responseExecutePolicy :: ExecutePolicyResponse -> TestTree
responseExecutePolicy =
  res
    "ExecutePolicyResponse"
    "fixture/ExecutePolicyResponse.proto"
    autoScaling
    (Proxy :: Proxy ExecutePolicy)

responseDeleteLifecycleHook :: DeleteLifecycleHookResponse -> TestTree
responseDeleteLifecycleHook =
  res
    "DeleteLifecycleHookResponse"
    "fixture/DeleteLifecycleHookResponse.proto"
    autoScaling
    (Proxy :: Proxy DeleteLifecycleHook)

responseResumeProcesses :: ResumeProcessesResponse -> TestTree
responseResumeProcesses =
  res
    "ResumeProcessesResponse"
    "fixture/ResumeProcessesResponse.proto"
    autoScaling
    (Proxy :: Proxy ResumeProcesses)

responsePutNotificationConfiguration :: PutNotificationConfigurationResponse -> TestTree
responsePutNotificationConfiguration =
  res
    "PutNotificationConfigurationResponse"
    "fixture/PutNotificationConfigurationResponse.proto"
    autoScaling
    (Proxy :: Proxy PutNotificationConfiguration)

responseAttachLoadBalancerTargetGroups :: AttachLoadBalancerTargetGroupsResponse -> TestTree
responseAttachLoadBalancerTargetGroups =
  res
    "AttachLoadBalancerTargetGroupsResponse"
    "fixture/AttachLoadBalancerTargetGroupsResponse.proto"
    autoScaling
    (Proxy :: Proxy AttachLoadBalancerTargetGroups)

responsePutScalingPolicy :: PutScalingPolicyResponse -> TestTree
responsePutScalingPolicy =
  res
    "PutScalingPolicyResponse"
    "fixture/PutScalingPolicyResponse.proto"
    autoScaling
    (Proxy :: Proxy PutScalingPolicy)

responseStartInstanceRefresh :: StartInstanceRefreshResponse -> TestTree
responseStartInstanceRefresh =
  res
    "StartInstanceRefreshResponse"
    "fixture/StartInstanceRefreshResponse.proto"
    autoScaling
    (Proxy :: Proxy StartInstanceRefresh)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeTags)

responseDeletePolicy :: DeletePolicyResponse -> TestTree
responseDeletePolicy =
  res
    "DeletePolicyResponse"
    "fixture/DeletePolicyResponse.proto"
    autoScaling
    (Proxy :: Proxy DeletePolicy)

responseCreateLaunchConfiguration :: CreateLaunchConfigurationResponse -> TestTree
responseCreateLaunchConfiguration =
  res
    "CreateLaunchConfigurationResponse"
    "fixture/CreateLaunchConfigurationResponse.proto"
    autoScaling
    (Proxy :: Proxy CreateLaunchConfiguration)

responseCreateOrUpdateTags :: CreateOrUpdateTagsResponse -> TestTree
responseCreateOrUpdateTags =
  res
    "CreateOrUpdateTagsResponse"
    "fixture/CreateOrUpdateTagsResponse.proto"
    autoScaling
    (Proxy :: Proxy CreateOrUpdateTags)

responseDescribeScheduledActions :: DescribeScheduledActionsResponse -> TestTree
responseDescribeScheduledActions =
  res
    "DescribeScheduledActionsResponse"
    "fixture/DescribeScheduledActionsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeScheduledActions)

responseDescribeAutoScalingNotificationTypes :: DescribeAutoScalingNotificationTypesResponse -> TestTree
responseDescribeAutoScalingNotificationTypes =
  res
    "DescribeAutoScalingNotificationTypesResponse"
    "fixture/DescribeAutoScalingNotificationTypesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeAutoScalingNotificationTypes)

responseDescribeAdjustmentTypes :: DescribeAdjustmentTypesResponse -> TestTree
responseDescribeAdjustmentTypes =
  res
    "DescribeAdjustmentTypesResponse"
    "fixture/DescribeAdjustmentTypesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeAdjustmentTypes)

responseDetachLoadBalancers :: DetachLoadBalancersResponse -> TestTree
responseDetachLoadBalancers =
  res
    "DetachLoadBalancersResponse"
    "fixture/DetachLoadBalancersResponse.proto"
    autoScaling
    (Proxy :: Proxy DetachLoadBalancers)

responseDeleteScheduledAction :: DeleteScheduledActionResponse -> TestTree
responseDeleteScheduledAction =
  res
    "DeleteScheduledActionResponse"
    "fixture/DeleteScheduledActionResponse.proto"
    autoScaling
    (Proxy :: Proxy DeleteScheduledAction)

responseDescribeScalingActivities :: DescribeScalingActivitiesResponse -> TestTree
responseDescribeScalingActivities =
  res
    "DescribeScalingActivitiesResponse"
    "fixture/DescribeScalingActivitiesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeScalingActivities)

responseDescribeLifecycleHooks :: DescribeLifecycleHooksResponse -> TestTree
responseDescribeLifecycleHooks =
  res
    "DescribeLifecycleHooksResponse"
    "fixture/DescribeLifecycleHooksResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeLifecycleHooks)

responseDetachLoadBalancerTargetGroups :: DetachLoadBalancerTargetGroupsResponse -> TestTree
responseDetachLoadBalancerTargetGroups =
  res
    "DetachLoadBalancerTargetGroupsResponse"
    "fixture/DetachLoadBalancerTargetGroupsResponse.proto"
    autoScaling
    (Proxy :: Proxy DetachLoadBalancerTargetGroups)

responsePutScheduledUpdateGroupAction :: PutScheduledUpdateGroupActionResponse -> TestTree
responsePutScheduledUpdateGroupAction =
  res
    "PutScheduledUpdateGroupActionResponse"
    "fixture/PutScheduledUpdateGroupActionResponse.proto"
    autoScaling
    (Proxy :: Proxy PutScheduledUpdateGroupAction)

responseSetInstanceProtection :: SetInstanceProtectionResponse -> TestTree
responseSetInstanceProtection =
  res
    "SetInstanceProtectionResponse"
    "fixture/SetInstanceProtectionResponse.proto"
    autoScaling
    (Proxy :: Proxy SetInstanceProtection)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    autoScaling
    (Proxy :: Proxy DeleteTags)

responseDetachInstances :: DetachInstancesResponse -> TestTree
responseDetachInstances =
  res
    "DetachInstancesResponse"
    "fixture/DetachInstancesResponse.proto"
    autoScaling
    (Proxy :: Proxy DetachInstances)

responseAttachLoadBalancers :: AttachLoadBalancersResponse -> TestTree
responseAttachLoadBalancers =
  res
    "AttachLoadBalancersResponse"
    "fixture/AttachLoadBalancersResponse.proto"
    autoScaling
    (Proxy :: Proxy AttachLoadBalancers)

responseDescribeAccountLimits :: DescribeAccountLimitsResponse -> TestTree
responseDescribeAccountLimits =
  res
    "DescribeAccountLimitsResponse"
    "fixture/DescribeAccountLimitsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeAccountLimits)

responseTerminateInstanceInAutoScalingGroup :: TerminateInstanceInAutoScalingGroupResponse -> TestTree
responseTerminateInstanceInAutoScalingGroup =
  res
    "TerminateInstanceInAutoScalingGroupResponse"
    "fixture/TerminateInstanceInAutoScalingGroupResponse.proto"
    autoScaling
    (Proxy :: Proxy TerminateInstanceInAutoScalingGroup)

responseDescribeTerminationPolicyTypes :: DescribeTerminationPolicyTypesResponse -> TestTree
responseDescribeTerminationPolicyTypes =
  res
    "DescribeTerminationPolicyTypesResponse"
    "fixture/DescribeTerminationPolicyTypesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeTerminationPolicyTypes)

responseSetInstanceHealth :: SetInstanceHealthResponse -> TestTree
responseSetInstanceHealth =
  res
    "SetInstanceHealthResponse"
    "fixture/SetInstanceHealthResponse.proto"
    autoScaling
    (Proxy :: Proxy SetInstanceHealth)

responseExitStandby :: ExitStandbyResponse -> TestTree
responseExitStandby =
  res
    "ExitStandbyResponse"
    "fixture/ExitStandbyResponse.proto"
    autoScaling
    (Proxy :: Proxy ExitStandby)

responsePutLifecycleHook :: PutLifecycleHookResponse -> TestTree
responsePutLifecycleHook =
  res
    "PutLifecycleHookResponse"
    "fixture/PutLifecycleHookResponse.proto"
    autoScaling
    (Proxy :: Proxy PutLifecycleHook)

responseBatchPutScheduledUpdateGroupAction :: BatchPutScheduledUpdateGroupActionResponse -> TestTree
responseBatchPutScheduledUpdateGroupAction =
  res
    "BatchPutScheduledUpdateGroupActionResponse"
    "fixture/BatchPutScheduledUpdateGroupActionResponse.proto"
    autoScaling
    (Proxy :: Proxy BatchPutScheduledUpdateGroupAction)

responseDeleteLaunchConfiguration :: DeleteLaunchConfigurationResponse -> TestTree
responseDeleteLaunchConfiguration =
  res
    "DeleteLaunchConfigurationResponse"
    "fixture/DeleteLaunchConfigurationResponse.proto"
    autoScaling
    (Proxy :: Proxy DeleteLaunchConfiguration)

responseDeleteNotificationConfiguration :: DeleteNotificationConfigurationResponse -> TestTree
responseDeleteNotificationConfiguration =
  res
    "DeleteNotificationConfigurationResponse"
    "fixture/DeleteNotificationConfigurationResponse.proto"
    autoScaling
    (Proxy :: Proxy DeleteNotificationConfiguration)

responseUpdateAutoScalingGroup :: UpdateAutoScalingGroupResponse -> TestTree
responseUpdateAutoScalingGroup =
  res
    "UpdateAutoScalingGroupResponse"
    "fixture/UpdateAutoScalingGroupResponse.proto"
    autoScaling
    (Proxy :: Proxy UpdateAutoScalingGroup)

responseDescribeLoadBalancers :: DescribeLoadBalancersResponse -> TestTree
responseDescribeLoadBalancers =
  res
    "DescribeLoadBalancersResponse"
    "fixture/DescribeLoadBalancersResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeLoadBalancers)

responseDeleteAutoScalingGroup :: DeleteAutoScalingGroupResponse -> TestTree
responseDeleteAutoScalingGroup =
  res
    "DeleteAutoScalingGroupResponse"
    "fixture/DeleteAutoScalingGroupResponse.proto"
    autoScaling
    (Proxy :: Proxy DeleteAutoScalingGroup)

responseDescribeMetricCollectionTypes :: DescribeMetricCollectionTypesResponse -> TestTree
responseDescribeMetricCollectionTypes =
  res
    "DescribeMetricCollectionTypesResponse"
    "fixture/DescribeMetricCollectionTypesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeMetricCollectionTypes)

responseCreateAutoScalingGroup :: CreateAutoScalingGroupResponse -> TestTree
responseCreateAutoScalingGroup =
  res
    "CreateAutoScalingGroupResponse"
    "fixture/CreateAutoScalingGroupResponse.proto"
    autoScaling
    (Proxy :: Proxy CreateAutoScalingGroup)

responseCompleteLifecycleAction :: CompleteLifecycleActionResponse -> TestTree
responseCompleteLifecycleAction =
  res
    "CompleteLifecycleActionResponse"
    "fixture/CompleteLifecycleActionResponse.proto"
    autoScaling
    (Proxy :: Proxy CompleteLifecycleAction)

responseAttachInstances :: AttachInstancesResponse -> TestTree
responseAttachInstances =
  res
    "AttachInstancesResponse"
    "fixture/AttachInstancesResponse.proto"
    autoScaling
    (Proxy :: Proxy AttachInstances)

responseSetDesiredCapacity :: SetDesiredCapacityResponse -> TestTree
responseSetDesiredCapacity =
  res
    "SetDesiredCapacityResponse"
    "fixture/SetDesiredCapacityResponse.proto"
    autoScaling
    (Proxy :: Proxy SetDesiredCapacity)

responseDescribePolicies :: DescribePoliciesResponse -> TestTree
responseDescribePolicies =
  res
    "DescribePoliciesResponse"
    "fixture/DescribePoliciesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribePolicies)

responseDescribeAutoScalingGroups :: DescribeAutoScalingGroupsResponse -> TestTree
responseDescribeAutoScalingGroups =
  res
    "DescribeAutoScalingGroupsResponse"
    "fixture/DescribeAutoScalingGroupsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeAutoScalingGroups)

responseDescribeLaunchConfigurations :: DescribeLaunchConfigurationsResponse -> TestTree
responseDescribeLaunchConfigurations =
  res
    "DescribeLaunchConfigurationsResponse"
    "fixture/DescribeLaunchConfigurationsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeLaunchConfigurations)

responseDescribeNotificationConfigurations :: DescribeNotificationConfigurationsResponse -> TestTree
responseDescribeNotificationConfigurations =
  res
    "DescribeNotificationConfigurationsResponse"
    "fixture/DescribeNotificationConfigurationsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeNotificationConfigurations)

responseDescribeLifecycleHookTypes :: DescribeLifecycleHookTypesResponse -> TestTree
responseDescribeLifecycleHookTypes =
  res
    "DescribeLifecycleHookTypesResponse"
    "fixture/DescribeLifecycleHookTypesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeLifecycleHookTypes)

responseEnableMetricsCollection :: EnableMetricsCollectionResponse -> TestTree
responseEnableMetricsCollection =
  res
    "EnableMetricsCollectionResponse"
    "fixture/EnableMetricsCollectionResponse.proto"
    autoScaling
    (Proxy :: Proxy EnableMetricsCollection)

responseDescribeScalingProcessTypes :: DescribeScalingProcessTypesResponse -> TestTree
responseDescribeScalingProcessTypes =
  res
    "DescribeScalingProcessTypesResponse"
    "fixture/DescribeScalingProcessTypesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeScalingProcessTypes)

responseDescribeAutoScalingInstances :: DescribeAutoScalingInstancesResponse -> TestTree
responseDescribeAutoScalingInstances =
  res
    "DescribeAutoScalingInstancesResponse"
    "fixture/DescribeAutoScalingInstancesResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeAutoScalingInstances)

responseDisableMetricsCollection :: DisableMetricsCollectionResponse -> TestTree
responseDisableMetricsCollection =
  res
    "DisableMetricsCollectionResponse"
    "fixture/DisableMetricsCollectionResponse.proto"
    autoScaling
    (Proxy :: Proxy DisableMetricsCollection)

responseRecordLifecycleActionHeartbeat :: RecordLifecycleActionHeartbeatResponse -> TestTree
responseRecordLifecycleActionHeartbeat =
  res
    "RecordLifecycleActionHeartbeatResponse"
    "fixture/RecordLifecycleActionHeartbeatResponse.proto"
    autoScaling
    (Proxy :: Proxy RecordLifecycleActionHeartbeat)

responseBatchDeleteScheduledAction :: BatchDeleteScheduledActionResponse -> TestTree
responseBatchDeleteScheduledAction =
  res
    "BatchDeleteScheduledActionResponse"
    "fixture/BatchDeleteScheduledActionResponse.proto"
    autoScaling
    (Proxy :: Proxy BatchDeleteScheduledAction)

responseDescribeLoadBalancerTargetGroups :: DescribeLoadBalancerTargetGroupsResponse -> TestTree
responseDescribeLoadBalancerTargetGroups =
  res
    "DescribeLoadBalancerTargetGroupsResponse"
    "fixture/DescribeLoadBalancerTargetGroupsResponse.proto"
    autoScaling
    (Proxy :: Proxy DescribeLoadBalancerTargetGroups)

responseCancelInstanceRefresh :: CancelInstanceRefreshResponse -> TestTree
responseCancelInstanceRefresh =
  res
    "CancelInstanceRefreshResponse"
    "fixture/CancelInstanceRefreshResponse.proto"
    autoScaling
    (Proxy :: Proxy CancelInstanceRefresh)

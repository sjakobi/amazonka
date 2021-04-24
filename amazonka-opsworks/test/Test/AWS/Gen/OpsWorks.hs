{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.OpsWorks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.OpsWorks where

import Data.Proxy
import Network.AWS.OpsWorks
import Test.AWS.Fixture
import Test.AWS.OpsWorks.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDescribeInstances $
--             describeInstances
--
--         , requestDescribeDeployments $
--             describeDeployments
--
--         , requestUpdateMyUserProfile $
--             updateMyUserProfile
--
--         , requestDeregisterElasticIP $
--             deregisterElasticIP
--
--         , requestSetTimeBasedAutoScaling $
--             setTimeBasedAutoScaling
--
--         , requestDescribeRDSDBInstances $
--             describeRDSDBInstances
--
--         , requestAttachElasticLoadBalancer $
--             attachElasticLoadBalancer
--
--         , requestStartInstance $
--             startInstance
--
--         , requestSetPermission $
--             setPermission
--
--         , requestRegisterVolume $
--             registerVolume
--
--         , requestStopInstance $
--             stopInstance
--
--         , requestDescribeEcsClusters $
--             describeEcsClusters
--
--         , requestDescribeVolumes $
--             describeVolumes
--
--         , requestDescribeOperatingSystems $
--             describeOperatingSystems
--
--         , requestDisassociateElasticIP $
--             disassociateElasticIP
--
--         , requestStartStack $
--             startStack
--
--         , requestStopStack $
--             stopStack
--
--         , requestRegisterRDSDBInstance $
--             registerRDSDBInstance
--
--         , requestDescribeServiceErrors $
--             describeServiceErrors
--
--         , requestDescribeTimeBasedAutoScaling $
--             describeTimeBasedAutoScaling
--
--         , requestUpdateUserProfile $
--             updateUserProfile
--
--         , requestDescribeMyUserProfile $
--             describeMyUserProfile
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteUserProfile $
--             deleteUserProfile
--
--         , requestAssignInstance $
--             assignInstance
--
--         , requestDetachElasticLoadBalancer $
--             detachElasticLoadBalancer
--
--         , requestDescribeStackProvisioningParameters $
--             describeStackProvisioningParameters
--
--         , requestDeregisterVolume $
--             deregisterVolume
--
--         , requestDescribeStacks $
--             describeStacks
--
--         , requestDeleteInstance $
--             deleteInstance
--
--         , requestRebootInstance $
--             rebootInstance
--
--         , requestTagResource $
--             tagResource
--
--         , requestUpdateInstance $
--             updateInstance
--
--         , requestCloneStack $
--             cloneStack
--
--         , requestRegisterElasticIP $
--             registerElasticIP
--
--         , requestDescribeAgentVersions $
--             describeAgentVersions
--
--         , requestUpdateLayer $
--             updateLayer
--
--         , requestCreateStack $
--             createStack
--
--         , requestUnassignVolume $
--             unassignVolume
--
--         , requestGrantAccess $
--             grantAccess
--
--         , requestDeleteLayer $
--             deleteLayer
--
--         , requestDescribeApps $
--             describeApps
--
--         , requestDeregisterEcsCluster $
--             deregisterEcsCluster
--
--         , requestDescribeStackSummary $
--             describeStackSummary
--
--         , requestDeleteStack $
--             deleteStack
--
--         , requestSetLoadBasedAutoScaling $
--             setLoadBasedAutoScaling
--
--         , requestCreateLayer $
--             createLayer
--
--         , requestUpdateStack $
--             updateStack
--
--         , requestDescribeUserProfiles $
--             describeUserProfiles
--
--         , requestDescribeElasticLoadBalancers $
--             describeElasticLoadBalancers
--
--         , requestDescribeCommands $
--             describeCommands
--
--         , requestUpdateVolume $
--             updateVolume
--
--         , requestAssignVolume $
--             assignVolume
--
--         , requestDescribeRAIdArrays $
--             describeRAIdArrays
--
--         , requestDeregisterInstance $
--             deregisterInstance
--
--         , requestRegisterEcsCluster $
--             registerEcsCluster
--
--         , requestCreateUserProfile $
--             createUserProfile
--
--         , requestUpdateRDSDBInstance $
--             updateRDSDBInstance
--
--         , requestUnassignInstance $
--             unassignInstance
--
--         , requestListTags $
--             listTags
--
--         , requestDescribeLoadBasedAutoScaling $
--             describeLoadBasedAutoScaling
--
--         , requestRegisterInstance $
--             registerInstance
--
--         , requestDeleteApp $
--             deleteApp
--
--         , requestUpdateApp $
--             updateApp
--
--         , requestAssociateElasticIP $
--             associateElasticIP
--
--         , requestUpdateElasticIP $
--             updateElasticIP
--
--         , requestDescribePermissions $
--             describePermissions
--
--         , requestGetHostnameSuggestion $
--             getHostnameSuggestion
--
--         , requestCreateInstance $
--             createInstance
--
--         , requestDescribeLayers $
--             describeLayers
--
--         , requestCreateApp $
--             createApp
--
--         , requestCreateDeployment $
--             createDeployment
--
--         , requestDeregisterRDSDBInstance $
--             deregisterRDSDBInstance
--
--         , requestDescribeElasticIPs $
--             describeElasticIPs
--
--           ]

--     , testGroup "response"
--         [ responseDescribeInstances $
--             describeInstancesResponse
--
--         , responseDescribeDeployments $
--             describeDeploymentsResponse
--
--         , responseUpdateMyUserProfile $
--             updateMyUserProfileResponse
--
--         , responseDeregisterElasticIP $
--             deregisterElasticIPResponse
--
--         , responseSetTimeBasedAutoScaling $
--             setTimeBasedAutoScalingResponse
--
--         , responseDescribeRDSDBInstances $
--             describeRDSDBInstancesResponse
--
--         , responseAttachElasticLoadBalancer $
--             attachElasticLoadBalancerResponse
--
--         , responseStartInstance $
--             startInstanceResponse
--
--         , responseSetPermission $
--             setPermissionResponse
--
--         , responseRegisterVolume $
--             registerVolumeResponse
--
--         , responseStopInstance $
--             stopInstanceResponse
--
--         , responseDescribeEcsClusters $
--             describeEcsClustersResponse
--
--         , responseDescribeVolumes $
--             describeVolumesResponse
--
--         , responseDescribeOperatingSystems $
--             describeOperatingSystemsResponse
--
--         , responseDisassociateElasticIP $
--             disassociateElasticIPResponse
--
--         , responseStartStack $
--             startStackResponse
--
--         , responseStopStack $
--             stopStackResponse
--
--         , responseRegisterRDSDBInstance $
--             registerRDSDBInstanceResponse
--
--         , responseDescribeServiceErrors $
--             describeServiceErrorsResponse
--
--         , responseDescribeTimeBasedAutoScaling $
--             describeTimeBasedAutoScalingResponse
--
--         , responseUpdateUserProfile $
--             updateUserProfileResponse
--
--         , responseDescribeMyUserProfile $
--             describeMyUserProfileResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteUserProfile $
--             deleteUserProfileResponse
--
--         , responseAssignInstance $
--             assignInstanceResponse
--
--         , responseDetachElasticLoadBalancer $
--             detachElasticLoadBalancerResponse
--
--         , responseDescribeStackProvisioningParameters $
--             describeStackProvisioningParametersResponse
--
--         , responseDeregisterVolume $
--             deregisterVolumeResponse
--
--         , responseDescribeStacks $
--             describeStacksResponse
--
--         , responseDeleteInstance $
--             deleteInstanceResponse
--
--         , responseRebootInstance $
--             rebootInstanceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseUpdateInstance $
--             updateInstanceResponse
--
--         , responseCloneStack $
--             cloneStackResponse
--
--         , responseRegisterElasticIP $
--             registerElasticIPResponse
--
--         , responseDescribeAgentVersions $
--             describeAgentVersionsResponse
--
--         , responseUpdateLayer $
--             updateLayerResponse
--
--         , responseCreateStack $
--             createStackResponse
--
--         , responseUnassignVolume $
--             unassignVolumeResponse
--
--         , responseGrantAccess $
--             grantAccessResponse
--
--         , responseDeleteLayer $
--             deleteLayerResponse
--
--         , responseDescribeApps $
--             describeAppsResponse
--
--         , responseDeregisterEcsCluster $
--             deregisterEcsClusterResponse
--
--         , responseDescribeStackSummary $
--             describeStackSummaryResponse
--
--         , responseDeleteStack $
--             deleteStackResponse
--
--         , responseSetLoadBasedAutoScaling $
--             setLoadBasedAutoScalingResponse
--
--         , responseCreateLayer $
--             createLayerResponse
--
--         , responseUpdateStack $
--             updateStackResponse
--
--         , responseDescribeUserProfiles $
--             describeUserProfilesResponse
--
--         , responseDescribeElasticLoadBalancers $
--             describeElasticLoadBalancersResponse
--
--         , responseDescribeCommands $
--             describeCommandsResponse
--
--         , responseUpdateVolume $
--             updateVolumeResponse
--
--         , responseAssignVolume $
--             assignVolumeResponse
--
--         , responseDescribeRAIdArrays $
--             describeRAIdArraysResponse
--
--         , responseDeregisterInstance $
--             deregisterInstanceResponse
--
--         , responseRegisterEcsCluster $
--             registerEcsClusterResponse
--
--         , responseCreateUserProfile $
--             createUserProfileResponse
--
--         , responseUpdateRDSDBInstance $
--             updateRDSDBInstanceResponse
--
--         , responseUnassignInstance $
--             unassignInstanceResponse
--
--         , responseListTags $
--             listTagsResponse
--
--         , responseDescribeLoadBasedAutoScaling $
--             describeLoadBasedAutoScalingResponse
--
--         , responseRegisterInstance $
--             registerInstanceResponse
--
--         , responseDeleteApp $
--             deleteAppResponse
--
--         , responseUpdateApp $
--             updateAppResponse
--
--         , responseAssociateElasticIP $
--             associateElasticIPResponse
--
--         , responseUpdateElasticIP $
--             updateElasticIPResponse
--
--         , responseDescribePermissions $
--             describePermissionsResponse
--
--         , responseGetHostnameSuggestion $
--             getHostnameSuggestionResponse
--
--         , responseCreateInstance $
--             createInstanceResponse
--
--         , responseDescribeLayers $
--             describeLayersResponse
--
--         , responseCreateApp $
--             createAppResponse
--
--         , responseCreateDeployment $
--             createDeploymentResponse
--
--         , responseDeregisterRDSDBInstance $
--             deregisterRDSDBInstanceResponse
--
--         , responseDescribeElasticIPs $
--             describeElasticIPsResponse
--
--           ]
--     ]

-- Requests

requestDescribeInstances :: DescribeInstances -> TestTree
requestDescribeInstances =
  req
    "DescribeInstances"
    "fixture/DescribeInstances.yaml"

requestDescribeDeployments :: DescribeDeployments -> TestTree
requestDescribeDeployments =
  req
    "DescribeDeployments"
    "fixture/DescribeDeployments.yaml"

requestUpdateMyUserProfile :: UpdateMyUserProfile -> TestTree
requestUpdateMyUserProfile =
  req
    "UpdateMyUserProfile"
    "fixture/UpdateMyUserProfile.yaml"

requestDeregisterElasticIP :: DeregisterElasticIP -> TestTree
requestDeregisterElasticIP =
  req
    "DeregisterElasticIP"
    "fixture/DeregisterElasticIP.yaml"

requestSetTimeBasedAutoScaling :: SetTimeBasedAutoScaling -> TestTree
requestSetTimeBasedAutoScaling =
  req
    "SetTimeBasedAutoScaling"
    "fixture/SetTimeBasedAutoScaling.yaml"

requestDescribeRDSDBInstances :: DescribeRDSDBInstances -> TestTree
requestDescribeRDSDBInstances =
  req
    "DescribeRDSDBInstances"
    "fixture/DescribeRDSDBInstances.yaml"

requestAttachElasticLoadBalancer :: AttachElasticLoadBalancer -> TestTree
requestAttachElasticLoadBalancer =
  req
    "AttachElasticLoadBalancer"
    "fixture/AttachElasticLoadBalancer.yaml"

requestStartInstance :: StartInstance -> TestTree
requestStartInstance =
  req
    "StartInstance"
    "fixture/StartInstance.yaml"

requestSetPermission :: SetPermission -> TestTree
requestSetPermission =
  req
    "SetPermission"
    "fixture/SetPermission.yaml"

requestRegisterVolume :: RegisterVolume -> TestTree
requestRegisterVolume =
  req
    "RegisterVolume"
    "fixture/RegisterVolume.yaml"

requestStopInstance :: StopInstance -> TestTree
requestStopInstance =
  req
    "StopInstance"
    "fixture/StopInstance.yaml"

requestDescribeEcsClusters :: DescribeEcsClusters -> TestTree
requestDescribeEcsClusters =
  req
    "DescribeEcsClusters"
    "fixture/DescribeEcsClusters.yaml"

requestDescribeVolumes :: DescribeVolumes -> TestTree
requestDescribeVolumes =
  req
    "DescribeVolumes"
    "fixture/DescribeVolumes.yaml"

requestDescribeOperatingSystems :: DescribeOperatingSystems -> TestTree
requestDescribeOperatingSystems =
  req
    "DescribeOperatingSystems"
    "fixture/DescribeOperatingSystems.yaml"

requestDisassociateElasticIP :: DisassociateElasticIP -> TestTree
requestDisassociateElasticIP =
  req
    "DisassociateElasticIP"
    "fixture/DisassociateElasticIP.yaml"

requestStartStack :: StartStack -> TestTree
requestStartStack =
  req
    "StartStack"
    "fixture/StartStack.yaml"

requestStopStack :: StopStack -> TestTree
requestStopStack =
  req
    "StopStack"
    "fixture/StopStack.yaml"

requestRegisterRDSDBInstance :: RegisterRDSDBInstance -> TestTree
requestRegisterRDSDBInstance =
  req
    "RegisterRDSDBInstance"
    "fixture/RegisterRDSDBInstance.yaml"

requestDescribeServiceErrors :: DescribeServiceErrors -> TestTree
requestDescribeServiceErrors =
  req
    "DescribeServiceErrors"
    "fixture/DescribeServiceErrors.yaml"

requestDescribeTimeBasedAutoScaling :: DescribeTimeBasedAutoScaling -> TestTree
requestDescribeTimeBasedAutoScaling =
  req
    "DescribeTimeBasedAutoScaling"
    "fixture/DescribeTimeBasedAutoScaling.yaml"

requestUpdateUserProfile :: UpdateUserProfile -> TestTree
requestUpdateUserProfile =
  req
    "UpdateUserProfile"
    "fixture/UpdateUserProfile.yaml"

requestDescribeMyUserProfile :: DescribeMyUserProfile -> TestTree
requestDescribeMyUserProfile =
  req
    "DescribeMyUserProfile"
    "fixture/DescribeMyUserProfile.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteUserProfile :: DeleteUserProfile -> TestTree
requestDeleteUserProfile =
  req
    "DeleteUserProfile"
    "fixture/DeleteUserProfile.yaml"

requestAssignInstance :: AssignInstance -> TestTree
requestAssignInstance =
  req
    "AssignInstance"
    "fixture/AssignInstance.yaml"

requestDetachElasticLoadBalancer :: DetachElasticLoadBalancer -> TestTree
requestDetachElasticLoadBalancer =
  req
    "DetachElasticLoadBalancer"
    "fixture/DetachElasticLoadBalancer.yaml"

requestDescribeStackProvisioningParameters :: DescribeStackProvisioningParameters -> TestTree
requestDescribeStackProvisioningParameters =
  req
    "DescribeStackProvisioningParameters"
    "fixture/DescribeStackProvisioningParameters.yaml"

requestDeregisterVolume :: DeregisterVolume -> TestTree
requestDeregisterVolume =
  req
    "DeregisterVolume"
    "fixture/DeregisterVolume.yaml"

requestDescribeStacks :: DescribeStacks -> TestTree
requestDescribeStacks =
  req
    "DescribeStacks"
    "fixture/DescribeStacks.yaml"

requestDeleteInstance :: DeleteInstance -> TestTree
requestDeleteInstance =
  req
    "DeleteInstance"
    "fixture/DeleteInstance.yaml"

requestRebootInstance :: RebootInstance -> TestTree
requestRebootInstance =
  req
    "RebootInstance"
    "fixture/RebootInstance.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUpdateInstance :: UpdateInstance -> TestTree
requestUpdateInstance =
  req
    "UpdateInstance"
    "fixture/UpdateInstance.yaml"

requestCloneStack :: CloneStack -> TestTree
requestCloneStack =
  req
    "CloneStack"
    "fixture/CloneStack.yaml"

requestRegisterElasticIP :: RegisterElasticIP -> TestTree
requestRegisterElasticIP =
  req
    "RegisterElasticIP"
    "fixture/RegisterElasticIP.yaml"

requestDescribeAgentVersions :: DescribeAgentVersions -> TestTree
requestDescribeAgentVersions =
  req
    "DescribeAgentVersions"
    "fixture/DescribeAgentVersions.yaml"

requestUpdateLayer :: UpdateLayer -> TestTree
requestUpdateLayer =
  req
    "UpdateLayer"
    "fixture/UpdateLayer.yaml"

requestCreateStack :: CreateStack -> TestTree
requestCreateStack =
  req
    "CreateStack"
    "fixture/CreateStack.yaml"

requestUnassignVolume :: UnassignVolume -> TestTree
requestUnassignVolume =
  req
    "UnassignVolume"
    "fixture/UnassignVolume.yaml"

requestGrantAccess :: GrantAccess -> TestTree
requestGrantAccess =
  req
    "GrantAccess"
    "fixture/GrantAccess.yaml"

requestDeleteLayer :: DeleteLayer -> TestTree
requestDeleteLayer =
  req
    "DeleteLayer"
    "fixture/DeleteLayer.yaml"

requestDescribeApps :: DescribeApps -> TestTree
requestDescribeApps =
  req
    "DescribeApps"
    "fixture/DescribeApps.yaml"

requestDeregisterEcsCluster :: DeregisterEcsCluster -> TestTree
requestDeregisterEcsCluster =
  req
    "DeregisterEcsCluster"
    "fixture/DeregisterEcsCluster.yaml"

requestDescribeStackSummary :: DescribeStackSummary -> TestTree
requestDescribeStackSummary =
  req
    "DescribeStackSummary"
    "fixture/DescribeStackSummary.yaml"

requestDeleteStack :: DeleteStack -> TestTree
requestDeleteStack =
  req
    "DeleteStack"
    "fixture/DeleteStack.yaml"

requestSetLoadBasedAutoScaling :: SetLoadBasedAutoScaling -> TestTree
requestSetLoadBasedAutoScaling =
  req
    "SetLoadBasedAutoScaling"
    "fixture/SetLoadBasedAutoScaling.yaml"

requestCreateLayer :: CreateLayer -> TestTree
requestCreateLayer =
  req
    "CreateLayer"
    "fixture/CreateLayer.yaml"

requestUpdateStack :: UpdateStack -> TestTree
requestUpdateStack =
  req
    "UpdateStack"
    "fixture/UpdateStack.yaml"

requestDescribeUserProfiles :: DescribeUserProfiles -> TestTree
requestDescribeUserProfiles =
  req
    "DescribeUserProfiles"
    "fixture/DescribeUserProfiles.yaml"

requestDescribeElasticLoadBalancers :: DescribeElasticLoadBalancers -> TestTree
requestDescribeElasticLoadBalancers =
  req
    "DescribeElasticLoadBalancers"
    "fixture/DescribeElasticLoadBalancers.yaml"

requestDescribeCommands :: DescribeCommands -> TestTree
requestDescribeCommands =
  req
    "DescribeCommands"
    "fixture/DescribeCommands.yaml"

requestUpdateVolume :: UpdateVolume -> TestTree
requestUpdateVolume =
  req
    "UpdateVolume"
    "fixture/UpdateVolume.yaml"

requestAssignVolume :: AssignVolume -> TestTree
requestAssignVolume =
  req
    "AssignVolume"
    "fixture/AssignVolume.yaml"

requestDescribeRAIdArrays :: DescribeRAIdArrays -> TestTree
requestDescribeRAIdArrays =
  req
    "DescribeRAIdArrays"
    "fixture/DescribeRAIdArrays.yaml"

requestDeregisterInstance :: DeregisterInstance -> TestTree
requestDeregisterInstance =
  req
    "DeregisterInstance"
    "fixture/DeregisterInstance.yaml"

requestRegisterEcsCluster :: RegisterEcsCluster -> TestTree
requestRegisterEcsCluster =
  req
    "RegisterEcsCluster"
    "fixture/RegisterEcsCluster.yaml"

requestCreateUserProfile :: CreateUserProfile -> TestTree
requestCreateUserProfile =
  req
    "CreateUserProfile"
    "fixture/CreateUserProfile.yaml"

requestUpdateRDSDBInstance :: UpdateRDSDBInstance -> TestTree
requestUpdateRDSDBInstance =
  req
    "UpdateRDSDBInstance"
    "fixture/UpdateRDSDBInstance.yaml"

requestUnassignInstance :: UnassignInstance -> TestTree
requestUnassignInstance =
  req
    "UnassignInstance"
    "fixture/UnassignInstance.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestDescribeLoadBasedAutoScaling :: DescribeLoadBasedAutoScaling -> TestTree
requestDescribeLoadBasedAutoScaling =
  req
    "DescribeLoadBasedAutoScaling"
    "fixture/DescribeLoadBasedAutoScaling.yaml"

requestRegisterInstance :: RegisterInstance -> TestTree
requestRegisterInstance =
  req
    "RegisterInstance"
    "fixture/RegisterInstance.yaml"

requestDeleteApp :: DeleteApp -> TestTree
requestDeleteApp =
  req
    "DeleteApp"
    "fixture/DeleteApp.yaml"

requestUpdateApp :: UpdateApp -> TestTree
requestUpdateApp =
  req
    "UpdateApp"
    "fixture/UpdateApp.yaml"

requestAssociateElasticIP :: AssociateElasticIP -> TestTree
requestAssociateElasticIP =
  req
    "AssociateElasticIP"
    "fixture/AssociateElasticIP.yaml"

requestUpdateElasticIP :: UpdateElasticIP -> TestTree
requestUpdateElasticIP =
  req
    "UpdateElasticIP"
    "fixture/UpdateElasticIP.yaml"

requestDescribePermissions :: DescribePermissions -> TestTree
requestDescribePermissions =
  req
    "DescribePermissions"
    "fixture/DescribePermissions.yaml"

requestGetHostnameSuggestion :: GetHostnameSuggestion -> TestTree
requestGetHostnameSuggestion =
  req
    "GetHostnameSuggestion"
    "fixture/GetHostnameSuggestion.yaml"

requestCreateInstance :: CreateInstance -> TestTree
requestCreateInstance =
  req
    "CreateInstance"
    "fixture/CreateInstance.yaml"

requestDescribeLayers :: DescribeLayers -> TestTree
requestDescribeLayers =
  req
    "DescribeLayers"
    "fixture/DescribeLayers.yaml"

requestCreateApp :: CreateApp -> TestTree
requestCreateApp =
  req
    "CreateApp"
    "fixture/CreateApp.yaml"

requestCreateDeployment :: CreateDeployment -> TestTree
requestCreateDeployment =
  req
    "CreateDeployment"
    "fixture/CreateDeployment.yaml"

requestDeregisterRDSDBInstance :: DeregisterRDSDBInstance -> TestTree
requestDeregisterRDSDBInstance =
  req
    "DeregisterRDSDBInstance"
    "fixture/DeregisterRDSDBInstance.yaml"

requestDescribeElasticIPs :: DescribeElasticIPs -> TestTree
requestDescribeElasticIPs =
  req
    "DescribeElasticIPs"
    "fixture/DescribeElasticIPs.yaml"

-- Responses

responseDescribeInstances :: DescribeInstancesResponse -> TestTree
responseDescribeInstances =
  res
    "DescribeInstancesResponse"
    "fixture/DescribeInstancesResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeInstances)

responseDescribeDeployments :: DescribeDeploymentsResponse -> TestTree
responseDescribeDeployments =
  res
    "DescribeDeploymentsResponse"
    "fixture/DescribeDeploymentsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeDeployments)

responseUpdateMyUserProfile :: UpdateMyUserProfileResponse -> TestTree
responseUpdateMyUserProfile =
  res
    "UpdateMyUserProfileResponse"
    "fixture/UpdateMyUserProfileResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateMyUserProfile)

responseDeregisterElasticIP :: DeregisterElasticIPResponse -> TestTree
responseDeregisterElasticIP =
  res
    "DeregisterElasticIPResponse"
    "fixture/DeregisterElasticIPResponse.proto"
    opsWorks
    (Proxy :: Proxy DeregisterElasticIP)

responseSetTimeBasedAutoScaling :: SetTimeBasedAutoScalingResponse -> TestTree
responseSetTimeBasedAutoScaling =
  res
    "SetTimeBasedAutoScalingResponse"
    "fixture/SetTimeBasedAutoScalingResponse.proto"
    opsWorks
    (Proxy :: Proxy SetTimeBasedAutoScaling)

responseDescribeRDSDBInstances :: DescribeRDSDBInstancesResponse -> TestTree
responseDescribeRDSDBInstances =
  res
    "DescribeRDSDBInstancesResponse"
    "fixture/DescribeRDSDBInstancesResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeRDSDBInstances)

responseAttachElasticLoadBalancer :: AttachElasticLoadBalancerResponse -> TestTree
responseAttachElasticLoadBalancer =
  res
    "AttachElasticLoadBalancerResponse"
    "fixture/AttachElasticLoadBalancerResponse.proto"
    opsWorks
    (Proxy :: Proxy AttachElasticLoadBalancer)

responseStartInstance :: StartInstanceResponse -> TestTree
responseStartInstance =
  res
    "StartInstanceResponse"
    "fixture/StartInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy StartInstance)

responseSetPermission :: SetPermissionResponse -> TestTree
responseSetPermission =
  res
    "SetPermissionResponse"
    "fixture/SetPermissionResponse.proto"
    opsWorks
    (Proxy :: Proxy SetPermission)

responseRegisterVolume :: RegisterVolumeResponse -> TestTree
responseRegisterVolume =
  res
    "RegisterVolumeResponse"
    "fixture/RegisterVolumeResponse.proto"
    opsWorks
    (Proxy :: Proxy RegisterVolume)

responseStopInstance :: StopInstanceResponse -> TestTree
responseStopInstance =
  res
    "StopInstanceResponse"
    "fixture/StopInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy StopInstance)

responseDescribeEcsClusters :: DescribeEcsClustersResponse -> TestTree
responseDescribeEcsClusters =
  res
    "DescribeEcsClustersResponse"
    "fixture/DescribeEcsClustersResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeEcsClusters)

responseDescribeVolumes :: DescribeVolumesResponse -> TestTree
responseDescribeVolumes =
  res
    "DescribeVolumesResponse"
    "fixture/DescribeVolumesResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeVolumes)

responseDescribeOperatingSystems :: DescribeOperatingSystemsResponse -> TestTree
responseDescribeOperatingSystems =
  res
    "DescribeOperatingSystemsResponse"
    "fixture/DescribeOperatingSystemsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeOperatingSystems)

responseDisassociateElasticIP :: DisassociateElasticIPResponse -> TestTree
responseDisassociateElasticIP =
  res
    "DisassociateElasticIPResponse"
    "fixture/DisassociateElasticIPResponse.proto"
    opsWorks
    (Proxy :: Proxy DisassociateElasticIP)

responseStartStack :: StartStackResponse -> TestTree
responseStartStack =
  res
    "StartStackResponse"
    "fixture/StartStackResponse.proto"
    opsWorks
    (Proxy :: Proxy StartStack)

responseStopStack :: StopStackResponse -> TestTree
responseStopStack =
  res
    "StopStackResponse"
    "fixture/StopStackResponse.proto"
    opsWorks
    (Proxy :: Proxy StopStack)

responseRegisterRDSDBInstance :: RegisterRDSDBInstanceResponse -> TestTree
responseRegisterRDSDBInstance =
  res
    "RegisterRDSDBInstanceResponse"
    "fixture/RegisterRDSDBInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy RegisterRDSDBInstance)

responseDescribeServiceErrors :: DescribeServiceErrorsResponse -> TestTree
responseDescribeServiceErrors =
  res
    "DescribeServiceErrorsResponse"
    "fixture/DescribeServiceErrorsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeServiceErrors)

responseDescribeTimeBasedAutoScaling :: DescribeTimeBasedAutoScalingResponse -> TestTree
responseDescribeTimeBasedAutoScaling =
  res
    "DescribeTimeBasedAutoScalingResponse"
    "fixture/DescribeTimeBasedAutoScalingResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeTimeBasedAutoScaling)

responseUpdateUserProfile :: UpdateUserProfileResponse -> TestTree
responseUpdateUserProfile =
  res
    "UpdateUserProfileResponse"
    "fixture/UpdateUserProfileResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateUserProfile)

responseDescribeMyUserProfile :: DescribeMyUserProfileResponse -> TestTree
responseDescribeMyUserProfile =
  res
    "DescribeMyUserProfileResponse"
    "fixture/DescribeMyUserProfileResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeMyUserProfile)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    opsWorks
    (Proxy :: Proxy UntagResource)

responseDeleteUserProfile :: DeleteUserProfileResponse -> TestTree
responseDeleteUserProfile =
  res
    "DeleteUserProfileResponse"
    "fixture/DeleteUserProfileResponse.proto"
    opsWorks
    (Proxy :: Proxy DeleteUserProfile)

responseAssignInstance :: AssignInstanceResponse -> TestTree
responseAssignInstance =
  res
    "AssignInstanceResponse"
    "fixture/AssignInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy AssignInstance)

responseDetachElasticLoadBalancer :: DetachElasticLoadBalancerResponse -> TestTree
responseDetachElasticLoadBalancer =
  res
    "DetachElasticLoadBalancerResponse"
    "fixture/DetachElasticLoadBalancerResponse.proto"
    opsWorks
    (Proxy :: Proxy DetachElasticLoadBalancer)

responseDescribeStackProvisioningParameters :: DescribeStackProvisioningParametersResponse -> TestTree
responseDescribeStackProvisioningParameters =
  res
    "DescribeStackProvisioningParametersResponse"
    "fixture/DescribeStackProvisioningParametersResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeStackProvisioningParameters)

responseDeregisterVolume :: DeregisterVolumeResponse -> TestTree
responseDeregisterVolume =
  res
    "DeregisterVolumeResponse"
    "fixture/DeregisterVolumeResponse.proto"
    opsWorks
    (Proxy :: Proxy DeregisterVolume)

responseDescribeStacks :: DescribeStacksResponse -> TestTree
responseDescribeStacks =
  res
    "DescribeStacksResponse"
    "fixture/DescribeStacksResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeStacks)

responseDeleteInstance :: DeleteInstanceResponse -> TestTree
responseDeleteInstance =
  res
    "DeleteInstanceResponse"
    "fixture/DeleteInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy DeleteInstance)

responseRebootInstance :: RebootInstanceResponse -> TestTree
responseRebootInstance =
  res
    "RebootInstanceResponse"
    "fixture/RebootInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy RebootInstance)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    opsWorks
    (Proxy :: Proxy TagResource)

responseUpdateInstance :: UpdateInstanceResponse -> TestTree
responseUpdateInstance =
  res
    "UpdateInstanceResponse"
    "fixture/UpdateInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateInstance)

responseCloneStack :: CloneStackResponse -> TestTree
responseCloneStack =
  res
    "CloneStackResponse"
    "fixture/CloneStackResponse.proto"
    opsWorks
    (Proxy :: Proxy CloneStack)

responseRegisterElasticIP :: RegisterElasticIPResponse -> TestTree
responseRegisterElasticIP =
  res
    "RegisterElasticIPResponse"
    "fixture/RegisterElasticIPResponse.proto"
    opsWorks
    (Proxy :: Proxy RegisterElasticIP)

responseDescribeAgentVersions :: DescribeAgentVersionsResponse -> TestTree
responseDescribeAgentVersions =
  res
    "DescribeAgentVersionsResponse"
    "fixture/DescribeAgentVersionsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeAgentVersions)

responseUpdateLayer :: UpdateLayerResponse -> TestTree
responseUpdateLayer =
  res
    "UpdateLayerResponse"
    "fixture/UpdateLayerResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateLayer)

responseCreateStack :: CreateStackResponse -> TestTree
responseCreateStack =
  res
    "CreateStackResponse"
    "fixture/CreateStackResponse.proto"
    opsWorks
    (Proxy :: Proxy CreateStack)

responseUnassignVolume :: UnassignVolumeResponse -> TestTree
responseUnassignVolume =
  res
    "UnassignVolumeResponse"
    "fixture/UnassignVolumeResponse.proto"
    opsWorks
    (Proxy :: Proxy UnassignVolume)

responseGrantAccess :: GrantAccessResponse -> TestTree
responseGrantAccess =
  res
    "GrantAccessResponse"
    "fixture/GrantAccessResponse.proto"
    opsWorks
    (Proxy :: Proxy GrantAccess)

responseDeleteLayer :: DeleteLayerResponse -> TestTree
responseDeleteLayer =
  res
    "DeleteLayerResponse"
    "fixture/DeleteLayerResponse.proto"
    opsWorks
    (Proxy :: Proxy DeleteLayer)

responseDescribeApps :: DescribeAppsResponse -> TestTree
responseDescribeApps =
  res
    "DescribeAppsResponse"
    "fixture/DescribeAppsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeApps)

responseDeregisterEcsCluster :: DeregisterEcsClusterResponse -> TestTree
responseDeregisterEcsCluster =
  res
    "DeregisterEcsClusterResponse"
    "fixture/DeregisterEcsClusterResponse.proto"
    opsWorks
    (Proxy :: Proxy DeregisterEcsCluster)

responseDescribeStackSummary :: DescribeStackSummaryResponse -> TestTree
responseDescribeStackSummary =
  res
    "DescribeStackSummaryResponse"
    "fixture/DescribeStackSummaryResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeStackSummary)

responseDeleteStack :: DeleteStackResponse -> TestTree
responseDeleteStack =
  res
    "DeleteStackResponse"
    "fixture/DeleteStackResponse.proto"
    opsWorks
    (Proxy :: Proxy DeleteStack)

responseSetLoadBasedAutoScaling :: SetLoadBasedAutoScalingResponse -> TestTree
responseSetLoadBasedAutoScaling =
  res
    "SetLoadBasedAutoScalingResponse"
    "fixture/SetLoadBasedAutoScalingResponse.proto"
    opsWorks
    (Proxy :: Proxy SetLoadBasedAutoScaling)

responseCreateLayer :: CreateLayerResponse -> TestTree
responseCreateLayer =
  res
    "CreateLayerResponse"
    "fixture/CreateLayerResponse.proto"
    opsWorks
    (Proxy :: Proxy CreateLayer)

responseUpdateStack :: UpdateStackResponse -> TestTree
responseUpdateStack =
  res
    "UpdateStackResponse"
    "fixture/UpdateStackResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateStack)

responseDescribeUserProfiles :: DescribeUserProfilesResponse -> TestTree
responseDescribeUserProfiles =
  res
    "DescribeUserProfilesResponse"
    "fixture/DescribeUserProfilesResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeUserProfiles)

responseDescribeElasticLoadBalancers :: DescribeElasticLoadBalancersResponse -> TestTree
responseDescribeElasticLoadBalancers =
  res
    "DescribeElasticLoadBalancersResponse"
    "fixture/DescribeElasticLoadBalancersResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeElasticLoadBalancers)

responseDescribeCommands :: DescribeCommandsResponse -> TestTree
responseDescribeCommands =
  res
    "DescribeCommandsResponse"
    "fixture/DescribeCommandsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeCommands)

responseUpdateVolume :: UpdateVolumeResponse -> TestTree
responseUpdateVolume =
  res
    "UpdateVolumeResponse"
    "fixture/UpdateVolumeResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateVolume)

responseAssignVolume :: AssignVolumeResponse -> TestTree
responseAssignVolume =
  res
    "AssignVolumeResponse"
    "fixture/AssignVolumeResponse.proto"
    opsWorks
    (Proxy :: Proxy AssignVolume)

responseDescribeRAIdArrays :: DescribeRAIdArraysResponse -> TestTree
responseDescribeRAIdArrays =
  res
    "DescribeRAIdArraysResponse"
    "fixture/DescribeRAIdArraysResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeRAIdArrays)

responseDeregisterInstance :: DeregisterInstanceResponse -> TestTree
responseDeregisterInstance =
  res
    "DeregisterInstanceResponse"
    "fixture/DeregisterInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy DeregisterInstance)

responseRegisterEcsCluster :: RegisterEcsClusterResponse -> TestTree
responseRegisterEcsCluster =
  res
    "RegisterEcsClusterResponse"
    "fixture/RegisterEcsClusterResponse.proto"
    opsWorks
    (Proxy :: Proxy RegisterEcsCluster)

responseCreateUserProfile :: CreateUserProfileResponse -> TestTree
responseCreateUserProfile =
  res
    "CreateUserProfileResponse"
    "fixture/CreateUserProfileResponse.proto"
    opsWorks
    (Proxy :: Proxy CreateUserProfile)

responseUpdateRDSDBInstance :: UpdateRDSDBInstanceResponse -> TestTree
responseUpdateRDSDBInstance =
  res
    "UpdateRDSDBInstanceResponse"
    "fixture/UpdateRDSDBInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateRDSDBInstance)

responseUnassignInstance :: UnassignInstanceResponse -> TestTree
responseUnassignInstance =
  res
    "UnassignInstanceResponse"
    "fixture/UnassignInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy UnassignInstance)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    opsWorks
    (Proxy :: Proxy ListTags)

responseDescribeLoadBasedAutoScaling :: DescribeLoadBasedAutoScalingResponse -> TestTree
responseDescribeLoadBasedAutoScaling =
  res
    "DescribeLoadBasedAutoScalingResponse"
    "fixture/DescribeLoadBasedAutoScalingResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeLoadBasedAutoScaling)

responseRegisterInstance :: RegisterInstanceResponse -> TestTree
responseRegisterInstance =
  res
    "RegisterInstanceResponse"
    "fixture/RegisterInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy RegisterInstance)

responseDeleteApp :: DeleteAppResponse -> TestTree
responseDeleteApp =
  res
    "DeleteAppResponse"
    "fixture/DeleteAppResponse.proto"
    opsWorks
    (Proxy :: Proxy DeleteApp)

responseUpdateApp :: UpdateAppResponse -> TestTree
responseUpdateApp =
  res
    "UpdateAppResponse"
    "fixture/UpdateAppResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateApp)

responseAssociateElasticIP :: AssociateElasticIPResponse -> TestTree
responseAssociateElasticIP =
  res
    "AssociateElasticIPResponse"
    "fixture/AssociateElasticIPResponse.proto"
    opsWorks
    (Proxy :: Proxy AssociateElasticIP)

responseUpdateElasticIP :: UpdateElasticIPResponse -> TestTree
responseUpdateElasticIP =
  res
    "UpdateElasticIPResponse"
    "fixture/UpdateElasticIPResponse.proto"
    opsWorks
    (Proxy :: Proxy UpdateElasticIP)

responseDescribePermissions :: DescribePermissionsResponse -> TestTree
responseDescribePermissions =
  res
    "DescribePermissionsResponse"
    "fixture/DescribePermissionsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribePermissions)

responseGetHostnameSuggestion :: GetHostnameSuggestionResponse -> TestTree
responseGetHostnameSuggestion =
  res
    "GetHostnameSuggestionResponse"
    "fixture/GetHostnameSuggestionResponse.proto"
    opsWorks
    (Proxy :: Proxy GetHostnameSuggestion)

responseCreateInstance :: CreateInstanceResponse -> TestTree
responseCreateInstance =
  res
    "CreateInstanceResponse"
    "fixture/CreateInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy CreateInstance)

responseDescribeLayers :: DescribeLayersResponse -> TestTree
responseDescribeLayers =
  res
    "DescribeLayersResponse"
    "fixture/DescribeLayersResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeLayers)

responseCreateApp :: CreateAppResponse -> TestTree
responseCreateApp =
  res
    "CreateAppResponse"
    "fixture/CreateAppResponse.proto"
    opsWorks
    (Proxy :: Proxy CreateApp)

responseCreateDeployment :: CreateDeploymentResponse -> TestTree
responseCreateDeployment =
  res
    "CreateDeploymentResponse"
    "fixture/CreateDeploymentResponse.proto"
    opsWorks
    (Proxy :: Proxy CreateDeployment)

responseDeregisterRDSDBInstance :: DeregisterRDSDBInstanceResponse -> TestTree
responseDeregisterRDSDBInstance =
  res
    "DeregisterRDSDBInstanceResponse"
    "fixture/DeregisterRDSDBInstanceResponse.proto"
    opsWorks
    (Proxy :: Proxy DeregisterRDSDBInstance)

responseDescribeElasticIPs :: DescribeElasticIPsResponse -> TestTree
responseDescribeElasticIPs =
  res
    "DescribeElasticIPsResponse"
    "fixture/DescribeElasticIPsResponse.proto"
    opsWorks
    (Proxy :: Proxy DescribeElasticIPs)

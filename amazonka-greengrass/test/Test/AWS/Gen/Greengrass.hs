{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Greengrass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Greengrass where

import Data.Proxy
import Network.AWS.Greengrass
import Test.AWS.Fixture
import Test.AWS.Greengrass.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteSubscriptionDefinition $
--             deleteSubscriptionDefinition
--
--         , requestUpdateCoreDefinition $
--             updateCoreDefinition
--
--         , requestUpdateSubscriptionDefinition $
--             updateSubscriptionDefinition
--
--         , requestAssociateServiceRoleToAccount $
--             associateServiceRoleToAccount
--
--         , requestDeleteCoreDefinition $
--             deleteCoreDefinition
--
--         , requestAssociateRoleToGroup $
--             associateRoleToGroup
--
--         , requestGetGroupCertificateConfiguration $
--             getGroupCertificateConfiguration
--
--         , requestListFunctionDefinitionVersions $
--             listFunctionDefinitionVersions
--
--         , requestStartBulkDeployment $
--             startBulkDeployment
--
--         , requestCreateFunctionDefinitionVersion $
--             createFunctionDefinitionVersion
--
--         , requestGetFunctionDefinition $
--             getFunctionDefinition
--
--         , requestUpdateThingRuntimeConfiguration $
--             updateThingRuntimeConfiguration
--
--         , requestStopBulkDeployment $
--             stopBulkDeployment
--
--         , requestListGroups $
--             listGroups
--
--         , requestDeleteResourceDefinition $
--             deleteResourceDefinition
--
--         , requestGetThingRuntimeConfiguration $
--             getThingRuntimeConfiguration
--
--         , requestListDeviceDefinitionVersions $
--             listDeviceDefinitionVersions
--
--         , requestUpdateResourceDefinition $
--             updateResourceDefinition
--
--         , requestListResourceDefinitions $
--             listResourceDefinitions
--
--         , requestGetDeviceDefinition $
--             getDeviceDefinition
--
--         , requestCreateResourceDefinition $
--             createResourceDefinition
--
--         , requestGetResourceDefinitionVersion $
--             getResourceDefinitionVersion
--
--         , requestCreateDeviceDefinitionVersion $
--             createDeviceDefinitionVersion
--
--         , requestGetGroupVersion $
--             getGroupVersion
--
--         , requestUntagResource $
--             untagResource
--
--         , requestCreateGroup $
--             createGroup
--
--         , requestUpdateGroupCertificateConfiguration $
--             updateGroupCertificateConfiguration
--
--         , requestDeleteLoggerDefinition $
--             deleteLoggerDefinition
--
--         , requestListBulkDeployments $
--             listBulkDeployments
--
--         , requestCreateConnectorDefinitionVersion $
--             createConnectorDefinitionVersion
--
--         , requestCreateSubscriptionDefinitionVersion $
--             createSubscriptionDefinitionVersion
--
--         , requestUpdateLoggerDefinition $
--             updateLoggerDefinition
--
--         , requestListLoggerDefinitions $
--             listLoggerDefinitions
--
--         , requestCreateCoreDefinitionVersion $
--             createCoreDefinitionVersion
--
--         , requestListDeployments $
--             listDeployments
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetConnectivityInfo $
--             getConnectivityInfo
--
--         , requestListSubscriptionDefinitionVersions $
--             listSubscriptionDefinitionVersions
--
--         , requestListCoreDefinitionVersions $
--             listCoreDefinitionVersions
--
--         , requestListConnectorDefinitionVersions $
--             listConnectorDefinitionVersions
--
--         , requestCreateSoftwareUpdateJob $
--             createSoftwareUpdateJob
--
--         , requestCreateCoreDefinition $
--             createCoreDefinition
--
--         , requestCreateConnectorDefinition $
--             createConnectorDefinition
--
--         , requestGetAssociatedRole $
--             getAssociatedRole
--
--         , requestUpdateConnectivityInfo $
--             updateConnectivityInfo
--
--         , requestCreateSubscriptionDefinition $
--             createSubscriptionDefinition
--
--         , requestDisassociateRoleFromGroup $
--             disassociateRoleFromGroup
--
--         , requestListCoreDefinitions $
--             listCoreDefinitions
--
--         , requestListConnectorDefinitions $
--             listConnectorDefinitions
--
--         , requestCreateGroupCertificateAuthority $
--             createGroupCertificateAuthority
--
--         , requestListGroupCertificateAuthorities $
--             listGroupCertificateAuthorities
--
--         , requestDeleteConnectorDefinition $
--             deleteConnectorDefinition
--
--         , requestGetLoggerDefinition $
--             getLoggerDefinition
--
--         , requestUpdateConnectorDefinition $
--             updateConnectorDefinition
--
--         , requestCreateLoggerDefinitionVersion $
--             createLoggerDefinitionVersion
--
--         , requestResetDeployments $
--             resetDeployments
--
--         , requestListSubscriptionDefinitions $
--             listSubscriptionDefinitions
--
--         , requestListGroupVersions $
--             listGroupVersions
--
--         , requestDeleteDeviceDefinition $
--             deleteDeviceDefinition
--
--         , requestUpdateDeviceDefinition $
--             updateDeviceDefinition
--
--         , requestListDeviceDefinitions $
--             listDeviceDefinitions
--
--         , requestDisassociateServiceRoleFromAccount $
--             disassociateServiceRoleFromAccount
--
--         , requestListResourceDefinitionVersions $
--             listResourceDefinitionVersions
--
--         , requestGetResourceDefinition $
--             getResourceDefinition
--
--         , requestGetGroup $
--             getGroup
--
--         , requestCreateDeviceDefinition $
--             createDeviceDefinition
--
--         , requestGetDeviceDefinitionVersion $
--             getDeviceDefinitionVersion
--
--         , requestCreateResourceDefinitionVersion $
--             createResourceDefinitionVersion
--
--         , requestCreateGroupVersion $
--             createGroupVersion
--
--         , requestListBulkDeploymentDetailedReports $
--             listBulkDeploymentDetailedReports
--
--         , requestUpdateGroup $
--             updateGroup
--
--         , requestDeleteGroup $
--             deleteGroup
--
--         , requestDeleteFunctionDefinition $
--             deleteFunctionDefinition
--
--         , requestUpdateFunctionDefinition $
--             updateFunctionDefinition
--
--         , requestListFunctionDefinitions $
--             listFunctionDefinitions
--
--         , requestGetFunctionDefinitionVersion $
--             getFunctionDefinitionVersion
--
--         , requestGetBulkDeploymentStatus $
--             getBulkDeploymentStatus
--
--         , requestGetDeploymentStatus $
--             getDeploymentStatus
--
--         , requestCreateFunctionDefinition $
--             createFunctionDefinition
--
--         , requestGetSubscriptionDefinition $
--             getSubscriptionDefinition
--
--         , requestGetConnectorDefinition $
--             getConnectorDefinition
--
--         , requestGetCoreDefinition $
--             getCoreDefinition
--
--         , requestGetGroupCertificateAuthority $
--             getGroupCertificateAuthority
--
--         , requestGetServiceRoleForAccount $
--             getServiceRoleForAccount
--
--         , requestGetLoggerDefinitionVersion $
--             getLoggerDefinitionVersion
--
--         , requestCreateLoggerDefinition $
--             createLoggerDefinition
--
--         , requestCreateDeployment $
--             createDeployment
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetSubscriptionDefinitionVersion $
--             getSubscriptionDefinitionVersion
--
--         , requestListLoggerDefinitionVersions $
--             listLoggerDefinitionVersions
--
--         , requestGetCoreDefinitionVersion $
--             getCoreDefinitionVersion
--
--         , requestGetConnectorDefinitionVersion $
--             getConnectorDefinitionVersion
--
--           ]

--     , testGroup "response"
--         [ responseDeleteSubscriptionDefinition $
--             deleteSubscriptionDefinitionResponse
--
--         , responseUpdateCoreDefinition $
--             updateCoreDefinitionResponse
--
--         , responseUpdateSubscriptionDefinition $
--             updateSubscriptionDefinitionResponse
--
--         , responseAssociateServiceRoleToAccount $
--             associateServiceRoleToAccountResponse
--
--         , responseDeleteCoreDefinition $
--             deleteCoreDefinitionResponse
--
--         , responseAssociateRoleToGroup $
--             associateRoleToGroupResponse
--
--         , responseGetGroupCertificateConfiguration $
--             getGroupCertificateConfigurationResponse
--
--         , responseListFunctionDefinitionVersions $
--             listFunctionDefinitionVersionsResponse
--
--         , responseStartBulkDeployment $
--             startBulkDeploymentResponse
--
--         , responseCreateFunctionDefinitionVersion $
--             createFunctionDefinitionVersionResponse
--
--         , responseGetFunctionDefinition $
--             getFunctionDefinitionResponse
--
--         , responseUpdateThingRuntimeConfiguration $
--             updateThingRuntimeConfigurationResponse
--
--         , responseStopBulkDeployment $
--             stopBulkDeploymentResponse
--
--         , responseListGroups $
--             listGroupsResponse
--
--         , responseDeleteResourceDefinition $
--             deleteResourceDefinitionResponse
--
--         , responseGetThingRuntimeConfiguration $
--             getThingRuntimeConfigurationResponse
--
--         , responseListDeviceDefinitionVersions $
--             listDeviceDefinitionVersionsResponse
--
--         , responseUpdateResourceDefinition $
--             updateResourceDefinitionResponse
--
--         , responseListResourceDefinitions $
--             listResourceDefinitionsResponse
--
--         , responseGetDeviceDefinition $
--             getDeviceDefinitionResponse
--
--         , responseCreateResourceDefinition $
--             createResourceDefinitionResponse
--
--         , responseGetResourceDefinitionVersion $
--             getResourceDefinitionVersionResponse
--
--         , responseCreateDeviceDefinitionVersion $
--             createDeviceDefinitionVersionResponse
--
--         , responseGetGroupVersion $
--             getGroupVersionResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseCreateGroup $
--             createGroupResponse
--
--         , responseUpdateGroupCertificateConfiguration $
--             updateGroupCertificateConfigurationResponse
--
--         , responseDeleteLoggerDefinition $
--             deleteLoggerDefinitionResponse
--
--         , responseListBulkDeployments $
--             listBulkDeploymentsResponse
--
--         , responseCreateConnectorDefinitionVersion $
--             createConnectorDefinitionVersionResponse
--
--         , responseCreateSubscriptionDefinitionVersion $
--             createSubscriptionDefinitionVersionResponse
--
--         , responseUpdateLoggerDefinition $
--             updateLoggerDefinitionResponse
--
--         , responseListLoggerDefinitions $
--             listLoggerDefinitionsResponse
--
--         , responseCreateCoreDefinitionVersion $
--             createCoreDefinitionVersionResponse
--
--         , responseListDeployments $
--             listDeploymentsResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetConnectivityInfo $
--             getConnectivityInfoResponse
--
--         , responseListSubscriptionDefinitionVersions $
--             listSubscriptionDefinitionVersionsResponse
--
--         , responseListCoreDefinitionVersions $
--             listCoreDefinitionVersionsResponse
--
--         , responseListConnectorDefinitionVersions $
--             listConnectorDefinitionVersionsResponse
--
--         , responseCreateSoftwareUpdateJob $
--             createSoftwareUpdateJobResponse
--
--         , responseCreateCoreDefinition $
--             createCoreDefinitionResponse
--
--         , responseCreateConnectorDefinition $
--             createConnectorDefinitionResponse
--
--         , responseGetAssociatedRole $
--             getAssociatedRoleResponse
--
--         , responseUpdateConnectivityInfo $
--             updateConnectivityInfoResponse
--
--         , responseCreateSubscriptionDefinition $
--             createSubscriptionDefinitionResponse
--
--         , responseDisassociateRoleFromGroup $
--             disassociateRoleFromGroupResponse
--
--         , responseListCoreDefinitions $
--             listCoreDefinitionsResponse
--
--         , responseListConnectorDefinitions $
--             listConnectorDefinitionsResponse
--
--         , responseCreateGroupCertificateAuthority $
--             createGroupCertificateAuthorityResponse
--
--         , responseListGroupCertificateAuthorities $
--             listGroupCertificateAuthoritiesResponse
--
--         , responseDeleteConnectorDefinition $
--             deleteConnectorDefinitionResponse
--
--         , responseGetLoggerDefinition $
--             getLoggerDefinitionResponse
--
--         , responseUpdateConnectorDefinition $
--             updateConnectorDefinitionResponse
--
--         , responseCreateLoggerDefinitionVersion $
--             createLoggerDefinitionVersionResponse
--
--         , responseResetDeployments $
--             resetDeploymentsResponse
--
--         , responseListSubscriptionDefinitions $
--             listSubscriptionDefinitionsResponse
--
--         , responseListGroupVersions $
--             listGroupVersionsResponse
--
--         , responseDeleteDeviceDefinition $
--             deleteDeviceDefinitionResponse
--
--         , responseUpdateDeviceDefinition $
--             updateDeviceDefinitionResponse
--
--         , responseListDeviceDefinitions $
--             listDeviceDefinitionsResponse
--
--         , responseDisassociateServiceRoleFromAccount $
--             disassociateServiceRoleFromAccountResponse
--
--         , responseListResourceDefinitionVersions $
--             listResourceDefinitionVersionsResponse
--
--         , responseGetResourceDefinition $
--             getResourceDefinitionResponse
--
--         , responseGetGroup $
--             getGroupResponse
--
--         , responseCreateDeviceDefinition $
--             createDeviceDefinitionResponse
--
--         , responseGetDeviceDefinitionVersion $
--             getDeviceDefinitionVersionResponse
--
--         , responseCreateResourceDefinitionVersion $
--             createResourceDefinitionVersionResponse
--
--         , responseCreateGroupVersion $
--             createGroupVersionResponse
--
--         , responseListBulkDeploymentDetailedReports $
--             listBulkDeploymentDetailedReportsResponse
--
--         , responseUpdateGroup $
--             updateGroupResponse
--
--         , responseDeleteGroup $
--             deleteGroupResponse
--
--         , responseDeleteFunctionDefinition $
--             deleteFunctionDefinitionResponse
--
--         , responseUpdateFunctionDefinition $
--             updateFunctionDefinitionResponse
--
--         , responseListFunctionDefinitions $
--             listFunctionDefinitionsResponse
--
--         , responseGetFunctionDefinitionVersion $
--             getFunctionDefinitionVersionResponse
--
--         , responseGetBulkDeploymentStatus $
--             getBulkDeploymentStatusResponse
--
--         , responseGetDeploymentStatus $
--             getDeploymentStatusResponse
--
--         , responseCreateFunctionDefinition $
--             createFunctionDefinitionResponse
--
--         , responseGetSubscriptionDefinition $
--             getSubscriptionDefinitionResponse
--
--         , responseGetConnectorDefinition $
--             getConnectorDefinitionResponse
--
--         , responseGetCoreDefinition $
--             getCoreDefinitionResponse
--
--         , responseGetGroupCertificateAuthority $
--             getGroupCertificateAuthorityResponse
--
--         , responseGetServiceRoleForAccount $
--             getServiceRoleForAccountResponse
--
--         , responseGetLoggerDefinitionVersion $
--             getLoggerDefinitionVersionResponse
--
--         , responseCreateLoggerDefinition $
--             createLoggerDefinitionResponse
--
--         , responseCreateDeployment $
--             createDeploymentResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetSubscriptionDefinitionVersion $
--             getSubscriptionDefinitionVersionResponse
--
--         , responseListLoggerDefinitionVersions $
--             listLoggerDefinitionVersionsResponse
--
--         , responseGetCoreDefinitionVersion $
--             getCoreDefinitionVersionResponse
--
--         , responseGetConnectorDefinitionVersion $
--             getConnectorDefinitionVersionResponse
--
--           ]
--     ]

-- Requests

requestDeleteSubscriptionDefinition :: DeleteSubscriptionDefinition -> TestTree
requestDeleteSubscriptionDefinition =
  req
    "DeleteSubscriptionDefinition"
    "fixture/DeleteSubscriptionDefinition.yaml"

requestUpdateCoreDefinition :: UpdateCoreDefinition -> TestTree
requestUpdateCoreDefinition =
  req
    "UpdateCoreDefinition"
    "fixture/UpdateCoreDefinition.yaml"

requestUpdateSubscriptionDefinition :: UpdateSubscriptionDefinition -> TestTree
requestUpdateSubscriptionDefinition =
  req
    "UpdateSubscriptionDefinition"
    "fixture/UpdateSubscriptionDefinition.yaml"

requestAssociateServiceRoleToAccount :: AssociateServiceRoleToAccount -> TestTree
requestAssociateServiceRoleToAccount =
  req
    "AssociateServiceRoleToAccount"
    "fixture/AssociateServiceRoleToAccount.yaml"

requestDeleteCoreDefinition :: DeleteCoreDefinition -> TestTree
requestDeleteCoreDefinition =
  req
    "DeleteCoreDefinition"
    "fixture/DeleteCoreDefinition.yaml"

requestAssociateRoleToGroup :: AssociateRoleToGroup -> TestTree
requestAssociateRoleToGroup =
  req
    "AssociateRoleToGroup"
    "fixture/AssociateRoleToGroup.yaml"

requestGetGroupCertificateConfiguration :: GetGroupCertificateConfiguration -> TestTree
requestGetGroupCertificateConfiguration =
  req
    "GetGroupCertificateConfiguration"
    "fixture/GetGroupCertificateConfiguration.yaml"

requestListFunctionDefinitionVersions :: ListFunctionDefinitionVersions -> TestTree
requestListFunctionDefinitionVersions =
  req
    "ListFunctionDefinitionVersions"
    "fixture/ListFunctionDefinitionVersions.yaml"

requestStartBulkDeployment :: StartBulkDeployment -> TestTree
requestStartBulkDeployment =
  req
    "StartBulkDeployment"
    "fixture/StartBulkDeployment.yaml"

requestCreateFunctionDefinitionVersion :: CreateFunctionDefinitionVersion -> TestTree
requestCreateFunctionDefinitionVersion =
  req
    "CreateFunctionDefinitionVersion"
    "fixture/CreateFunctionDefinitionVersion.yaml"

requestGetFunctionDefinition :: GetFunctionDefinition -> TestTree
requestGetFunctionDefinition =
  req
    "GetFunctionDefinition"
    "fixture/GetFunctionDefinition.yaml"

requestUpdateThingRuntimeConfiguration :: UpdateThingRuntimeConfiguration -> TestTree
requestUpdateThingRuntimeConfiguration =
  req
    "UpdateThingRuntimeConfiguration"
    "fixture/UpdateThingRuntimeConfiguration.yaml"

requestStopBulkDeployment :: StopBulkDeployment -> TestTree
requestStopBulkDeployment =
  req
    "StopBulkDeployment"
    "fixture/StopBulkDeployment.yaml"

requestListGroups :: ListGroups -> TestTree
requestListGroups =
  req
    "ListGroups"
    "fixture/ListGroups.yaml"

requestDeleteResourceDefinition :: DeleteResourceDefinition -> TestTree
requestDeleteResourceDefinition =
  req
    "DeleteResourceDefinition"
    "fixture/DeleteResourceDefinition.yaml"

requestGetThingRuntimeConfiguration :: GetThingRuntimeConfiguration -> TestTree
requestGetThingRuntimeConfiguration =
  req
    "GetThingRuntimeConfiguration"
    "fixture/GetThingRuntimeConfiguration.yaml"

requestListDeviceDefinitionVersions :: ListDeviceDefinitionVersions -> TestTree
requestListDeviceDefinitionVersions =
  req
    "ListDeviceDefinitionVersions"
    "fixture/ListDeviceDefinitionVersions.yaml"

requestUpdateResourceDefinition :: UpdateResourceDefinition -> TestTree
requestUpdateResourceDefinition =
  req
    "UpdateResourceDefinition"
    "fixture/UpdateResourceDefinition.yaml"

requestListResourceDefinitions :: ListResourceDefinitions -> TestTree
requestListResourceDefinitions =
  req
    "ListResourceDefinitions"
    "fixture/ListResourceDefinitions.yaml"

requestGetDeviceDefinition :: GetDeviceDefinition -> TestTree
requestGetDeviceDefinition =
  req
    "GetDeviceDefinition"
    "fixture/GetDeviceDefinition.yaml"

requestCreateResourceDefinition :: CreateResourceDefinition -> TestTree
requestCreateResourceDefinition =
  req
    "CreateResourceDefinition"
    "fixture/CreateResourceDefinition.yaml"

requestGetResourceDefinitionVersion :: GetResourceDefinitionVersion -> TestTree
requestGetResourceDefinitionVersion =
  req
    "GetResourceDefinitionVersion"
    "fixture/GetResourceDefinitionVersion.yaml"

requestCreateDeviceDefinitionVersion :: CreateDeviceDefinitionVersion -> TestTree
requestCreateDeviceDefinitionVersion =
  req
    "CreateDeviceDefinitionVersion"
    "fixture/CreateDeviceDefinitionVersion.yaml"

requestGetGroupVersion :: GetGroupVersion -> TestTree
requestGetGroupVersion =
  req
    "GetGroupVersion"
    "fixture/GetGroupVersion.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCreateGroup :: CreateGroup -> TestTree
requestCreateGroup =
  req
    "CreateGroup"
    "fixture/CreateGroup.yaml"

requestUpdateGroupCertificateConfiguration :: UpdateGroupCertificateConfiguration -> TestTree
requestUpdateGroupCertificateConfiguration =
  req
    "UpdateGroupCertificateConfiguration"
    "fixture/UpdateGroupCertificateConfiguration.yaml"

requestDeleteLoggerDefinition :: DeleteLoggerDefinition -> TestTree
requestDeleteLoggerDefinition =
  req
    "DeleteLoggerDefinition"
    "fixture/DeleteLoggerDefinition.yaml"

requestListBulkDeployments :: ListBulkDeployments -> TestTree
requestListBulkDeployments =
  req
    "ListBulkDeployments"
    "fixture/ListBulkDeployments.yaml"

requestCreateConnectorDefinitionVersion :: CreateConnectorDefinitionVersion -> TestTree
requestCreateConnectorDefinitionVersion =
  req
    "CreateConnectorDefinitionVersion"
    "fixture/CreateConnectorDefinitionVersion.yaml"

requestCreateSubscriptionDefinitionVersion :: CreateSubscriptionDefinitionVersion -> TestTree
requestCreateSubscriptionDefinitionVersion =
  req
    "CreateSubscriptionDefinitionVersion"
    "fixture/CreateSubscriptionDefinitionVersion.yaml"

requestUpdateLoggerDefinition :: UpdateLoggerDefinition -> TestTree
requestUpdateLoggerDefinition =
  req
    "UpdateLoggerDefinition"
    "fixture/UpdateLoggerDefinition.yaml"

requestListLoggerDefinitions :: ListLoggerDefinitions -> TestTree
requestListLoggerDefinitions =
  req
    "ListLoggerDefinitions"
    "fixture/ListLoggerDefinitions.yaml"

requestCreateCoreDefinitionVersion :: CreateCoreDefinitionVersion -> TestTree
requestCreateCoreDefinitionVersion =
  req
    "CreateCoreDefinitionVersion"
    "fixture/CreateCoreDefinitionVersion.yaml"

requestListDeployments :: ListDeployments -> TestTree
requestListDeployments =
  req
    "ListDeployments"
    "fixture/ListDeployments.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetConnectivityInfo :: GetConnectivityInfo -> TestTree
requestGetConnectivityInfo =
  req
    "GetConnectivityInfo"
    "fixture/GetConnectivityInfo.yaml"

requestListSubscriptionDefinitionVersions :: ListSubscriptionDefinitionVersions -> TestTree
requestListSubscriptionDefinitionVersions =
  req
    "ListSubscriptionDefinitionVersions"
    "fixture/ListSubscriptionDefinitionVersions.yaml"

requestListCoreDefinitionVersions :: ListCoreDefinitionVersions -> TestTree
requestListCoreDefinitionVersions =
  req
    "ListCoreDefinitionVersions"
    "fixture/ListCoreDefinitionVersions.yaml"

requestListConnectorDefinitionVersions :: ListConnectorDefinitionVersions -> TestTree
requestListConnectorDefinitionVersions =
  req
    "ListConnectorDefinitionVersions"
    "fixture/ListConnectorDefinitionVersions.yaml"

requestCreateSoftwareUpdateJob :: CreateSoftwareUpdateJob -> TestTree
requestCreateSoftwareUpdateJob =
  req
    "CreateSoftwareUpdateJob"
    "fixture/CreateSoftwareUpdateJob.yaml"

requestCreateCoreDefinition :: CreateCoreDefinition -> TestTree
requestCreateCoreDefinition =
  req
    "CreateCoreDefinition"
    "fixture/CreateCoreDefinition.yaml"

requestCreateConnectorDefinition :: CreateConnectorDefinition -> TestTree
requestCreateConnectorDefinition =
  req
    "CreateConnectorDefinition"
    "fixture/CreateConnectorDefinition.yaml"

requestGetAssociatedRole :: GetAssociatedRole -> TestTree
requestGetAssociatedRole =
  req
    "GetAssociatedRole"
    "fixture/GetAssociatedRole.yaml"

requestUpdateConnectivityInfo :: UpdateConnectivityInfo -> TestTree
requestUpdateConnectivityInfo =
  req
    "UpdateConnectivityInfo"
    "fixture/UpdateConnectivityInfo.yaml"

requestCreateSubscriptionDefinition :: CreateSubscriptionDefinition -> TestTree
requestCreateSubscriptionDefinition =
  req
    "CreateSubscriptionDefinition"
    "fixture/CreateSubscriptionDefinition.yaml"

requestDisassociateRoleFromGroup :: DisassociateRoleFromGroup -> TestTree
requestDisassociateRoleFromGroup =
  req
    "DisassociateRoleFromGroup"
    "fixture/DisassociateRoleFromGroup.yaml"

requestListCoreDefinitions :: ListCoreDefinitions -> TestTree
requestListCoreDefinitions =
  req
    "ListCoreDefinitions"
    "fixture/ListCoreDefinitions.yaml"

requestListConnectorDefinitions :: ListConnectorDefinitions -> TestTree
requestListConnectorDefinitions =
  req
    "ListConnectorDefinitions"
    "fixture/ListConnectorDefinitions.yaml"

requestCreateGroupCertificateAuthority :: CreateGroupCertificateAuthority -> TestTree
requestCreateGroupCertificateAuthority =
  req
    "CreateGroupCertificateAuthority"
    "fixture/CreateGroupCertificateAuthority.yaml"

requestListGroupCertificateAuthorities :: ListGroupCertificateAuthorities -> TestTree
requestListGroupCertificateAuthorities =
  req
    "ListGroupCertificateAuthorities"
    "fixture/ListGroupCertificateAuthorities.yaml"

requestDeleteConnectorDefinition :: DeleteConnectorDefinition -> TestTree
requestDeleteConnectorDefinition =
  req
    "DeleteConnectorDefinition"
    "fixture/DeleteConnectorDefinition.yaml"

requestGetLoggerDefinition :: GetLoggerDefinition -> TestTree
requestGetLoggerDefinition =
  req
    "GetLoggerDefinition"
    "fixture/GetLoggerDefinition.yaml"

requestUpdateConnectorDefinition :: UpdateConnectorDefinition -> TestTree
requestUpdateConnectorDefinition =
  req
    "UpdateConnectorDefinition"
    "fixture/UpdateConnectorDefinition.yaml"

requestCreateLoggerDefinitionVersion :: CreateLoggerDefinitionVersion -> TestTree
requestCreateLoggerDefinitionVersion =
  req
    "CreateLoggerDefinitionVersion"
    "fixture/CreateLoggerDefinitionVersion.yaml"

requestResetDeployments :: ResetDeployments -> TestTree
requestResetDeployments =
  req
    "ResetDeployments"
    "fixture/ResetDeployments.yaml"

requestListSubscriptionDefinitions :: ListSubscriptionDefinitions -> TestTree
requestListSubscriptionDefinitions =
  req
    "ListSubscriptionDefinitions"
    "fixture/ListSubscriptionDefinitions.yaml"

requestListGroupVersions :: ListGroupVersions -> TestTree
requestListGroupVersions =
  req
    "ListGroupVersions"
    "fixture/ListGroupVersions.yaml"

requestDeleteDeviceDefinition :: DeleteDeviceDefinition -> TestTree
requestDeleteDeviceDefinition =
  req
    "DeleteDeviceDefinition"
    "fixture/DeleteDeviceDefinition.yaml"

requestUpdateDeviceDefinition :: UpdateDeviceDefinition -> TestTree
requestUpdateDeviceDefinition =
  req
    "UpdateDeviceDefinition"
    "fixture/UpdateDeviceDefinition.yaml"

requestListDeviceDefinitions :: ListDeviceDefinitions -> TestTree
requestListDeviceDefinitions =
  req
    "ListDeviceDefinitions"
    "fixture/ListDeviceDefinitions.yaml"

requestDisassociateServiceRoleFromAccount :: DisassociateServiceRoleFromAccount -> TestTree
requestDisassociateServiceRoleFromAccount =
  req
    "DisassociateServiceRoleFromAccount"
    "fixture/DisassociateServiceRoleFromAccount.yaml"

requestListResourceDefinitionVersions :: ListResourceDefinitionVersions -> TestTree
requestListResourceDefinitionVersions =
  req
    "ListResourceDefinitionVersions"
    "fixture/ListResourceDefinitionVersions.yaml"

requestGetResourceDefinition :: GetResourceDefinition -> TestTree
requestGetResourceDefinition =
  req
    "GetResourceDefinition"
    "fixture/GetResourceDefinition.yaml"

requestGetGroup :: GetGroup -> TestTree
requestGetGroup =
  req
    "GetGroup"
    "fixture/GetGroup.yaml"

requestCreateDeviceDefinition :: CreateDeviceDefinition -> TestTree
requestCreateDeviceDefinition =
  req
    "CreateDeviceDefinition"
    "fixture/CreateDeviceDefinition.yaml"

requestGetDeviceDefinitionVersion :: GetDeviceDefinitionVersion -> TestTree
requestGetDeviceDefinitionVersion =
  req
    "GetDeviceDefinitionVersion"
    "fixture/GetDeviceDefinitionVersion.yaml"

requestCreateResourceDefinitionVersion :: CreateResourceDefinitionVersion -> TestTree
requestCreateResourceDefinitionVersion =
  req
    "CreateResourceDefinitionVersion"
    "fixture/CreateResourceDefinitionVersion.yaml"

requestCreateGroupVersion :: CreateGroupVersion -> TestTree
requestCreateGroupVersion =
  req
    "CreateGroupVersion"
    "fixture/CreateGroupVersion.yaml"

requestListBulkDeploymentDetailedReports :: ListBulkDeploymentDetailedReports -> TestTree
requestListBulkDeploymentDetailedReports =
  req
    "ListBulkDeploymentDetailedReports"
    "fixture/ListBulkDeploymentDetailedReports.yaml"

requestUpdateGroup :: UpdateGroup -> TestTree
requestUpdateGroup =
  req
    "UpdateGroup"
    "fixture/UpdateGroup.yaml"

requestDeleteGroup :: DeleteGroup -> TestTree
requestDeleteGroup =
  req
    "DeleteGroup"
    "fixture/DeleteGroup.yaml"

requestDeleteFunctionDefinition :: DeleteFunctionDefinition -> TestTree
requestDeleteFunctionDefinition =
  req
    "DeleteFunctionDefinition"
    "fixture/DeleteFunctionDefinition.yaml"

requestUpdateFunctionDefinition :: UpdateFunctionDefinition -> TestTree
requestUpdateFunctionDefinition =
  req
    "UpdateFunctionDefinition"
    "fixture/UpdateFunctionDefinition.yaml"

requestListFunctionDefinitions :: ListFunctionDefinitions -> TestTree
requestListFunctionDefinitions =
  req
    "ListFunctionDefinitions"
    "fixture/ListFunctionDefinitions.yaml"

requestGetFunctionDefinitionVersion :: GetFunctionDefinitionVersion -> TestTree
requestGetFunctionDefinitionVersion =
  req
    "GetFunctionDefinitionVersion"
    "fixture/GetFunctionDefinitionVersion.yaml"

requestGetBulkDeploymentStatus :: GetBulkDeploymentStatus -> TestTree
requestGetBulkDeploymentStatus =
  req
    "GetBulkDeploymentStatus"
    "fixture/GetBulkDeploymentStatus.yaml"

requestGetDeploymentStatus :: GetDeploymentStatus -> TestTree
requestGetDeploymentStatus =
  req
    "GetDeploymentStatus"
    "fixture/GetDeploymentStatus.yaml"

requestCreateFunctionDefinition :: CreateFunctionDefinition -> TestTree
requestCreateFunctionDefinition =
  req
    "CreateFunctionDefinition"
    "fixture/CreateFunctionDefinition.yaml"

requestGetSubscriptionDefinition :: GetSubscriptionDefinition -> TestTree
requestGetSubscriptionDefinition =
  req
    "GetSubscriptionDefinition"
    "fixture/GetSubscriptionDefinition.yaml"

requestGetConnectorDefinition :: GetConnectorDefinition -> TestTree
requestGetConnectorDefinition =
  req
    "GetConnectorDefinition"
    "fixture/GetConnectorDefinition.yaml"

requestGetCoreDefinition :: GetCoreDefinition -> TestTree
requestGetCoreDefinition =
  req
    "GetCoreDefinition"
    "fixture/GetCoreDefinition.yaml"

requestGetGroupCertificateAuthority :: GetGroupCertificateAuthority -> TestTree
requestGetGroupCertificateAuthority =
  req
    "GetGroupCertificateAuthority"
    "fixture/GetGroupCertificateAuthority.yaml"

requestGetServiceRoleForAccount :: GetServiceRoleForAccount -> TestTree
requestGetServiceRoleForAccount =
  req
    "GetServiceRoleForAccount"
    "fixture/GetServiceRoleForAccount.yaml"

requestGetLoggerDefinitionVersion :: GetLoggerDefinitionVersion -> TestTree
requestGetLoggerDefinitionVersion =
  req
    "GetLoggerDefinitionVersion"
    "fixture/GetLoggerDefinitionVersion.yaml"

requestCreateLoggerDefinition :: CreateLoggerDefinition -> TestTree
requestCreateLoggerDefinition =
  req
    "CreateLoggerDefinition"
    "fixture/CreateLoggerDefinition.yaml"

requestCreateDeployment :: CreateDeployment -> TestTree
requestCreateDeployment =
  req
    "CreateDeployment"
    "fixture/CreateDeployment.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetSubscriptionDefinitionVersion :: GetSubscriptionDefinitionVersion -> TestTree
requestGetSubscriptionDefinitionVersion =
  req
    "GetSubscriptionDefinitionVersion"
    "fixture/GetSubscriptionDefinitionVersion.yaml"

requestListLoggerDefinitionVersions :: ListLoggerDefinitionVersions -> TestTree
requestListLoggerDefinitionVersions =
  req
    "ListLoggerDefinitionVersions"
    "fixture/ListLoggerDefinitionVersions.yaml"

requestGetCoreDefinitionVersion :: GetCoreDefinitionVersion -> TestTree
requestGetCoreDefinitionVersion =
  req
    "GetCoreDefinitionVersion"
    "fixture/GetCoreDefinitionVersion.yaml"

requestGetConnectorDefinitionVersion :: GetConnectorDefinitionVersion -> TestTree
requestGetConnectorDefinitionVersion =
  req
    "GetConnectorDefinitionVersion"
    "fixture/GetConnectorDefinitionVersion.yaml"

-- Responses

responseDeleteSubscriptionDefinition :: DeleteSubscriptionDefinitionResponse -> TestTree
responseDeleteSubscriptionDefinition =
  res
    "DeleteSubscriptionDefinitionResponse"
    "fixture/DeleteSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteSubscriptionDefinition)

responseUpdateCoreDefinition :: UpdateCoreDefinitionResponse -> TestTree
responseUpdateCoreDefinition =
  res
    "UpdateCoreDefinitionResponse"
    "fixture/UpdateCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateCoreDefinition)

responseUpdateSubscriptionDefinition :: UpdateSubscriptionDefinitionResponse -> TestTree
responseUpdateSubscriptionDefinition =
  res
    "UpdateSubscriptionDefinitionResponse"
    "fixture/UpdateSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateSubscriptionDefinition)

responseAssociateServiceRoleToAccount :: AssociateServiceRoleToAccountResponse -> TestTree
responseAssociateServiceRoleToAccount =
  res
    "AssociateServiceRoleToAccountResponse"
    "fixture/AssociateServiceRoleToAccountResponse.proto"
    greengrass
    (Proxy :: Proxy AssociateServiceRoleToAccount)

responseDeleteCoreDefinition :: DeleteCoreDefinitionResponse -> TestTree
responseDeleteCoreDefinition =
  res
    "DeleteCoreDefinitionResponse"
    "fixture/DeleteCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteCoreDefinition)

responseAssociateRoleToGroup :: AssociateRoleToGroupResponse -> TestTree
responseAssociateRoleToGroup =
  res
    "AssociateRoleToGroupResponse"
    "fixture/AssociateRoleToGroupResponse.proto"
    greengrass
    (Proxy :: Proxy AssociateRoleToGroup)

responseGetGroupCertificateConfiguration :: GetGroupCertificateConfigurationResponse -> TestTree
responseGetGroupCertificateConfiguration =
  res
    "GetGroupCertificateConfigurationResponse"
    "fixture/GetGroupCertificateConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroupCertificateConfiguration)

responseListFunctionDefinitionVersions :: ListFunctionDefinitionVersionsResponse -> TestTree
responseListFunctionDefinitionVersions =
  res
    "ListFunctionDefinitionVersionsResponse"
    "fixture/ListFunctionDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListFunctionDefinitionVersions)

responseStartBulkDeployment :: StartBulkDeploymentResponse -> TestTree
responseStartBulkDeployment =
  res
    "StartBulkDeploymentResponse"
    "fixture/StartBulkDeploymentResponse.proto"
    greengrass
    (Proxy :: Proxy StartBulkDeployment)

responseCreateFunctionDefinitionVersion :: CreateFunctionDefinitionVersionResponse -> TestTree
responseCreateFunctionDefinitionVersion =
  res
    "CreateFunctionDefinitionVersionResponse"
    "fixture/CreateFunctionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateFunctionDefinitionVersion)

responseGetFunctionDefinition :: GetFunctionDefinitionResponse -> TestTree
responseGetFunctionDefinition =
  res
    "GetFunctionDefinitionResponse"
    "fixture/GetFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetFunctionDefinition)

responseUpdateThingRuntimeConfiguration :: UpdateThingRuntimeConfigurationResponse -> TestTree
responseUpdateThingRuntimeConfiguration =
  res
    "UpdateThingRuntimeConfigurationResponse"
    "fixture/UpdateThingRuntimeConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateThingRuntimeConfiguration)

responseStopBulkDeployment :: StopBulkDeploymentResponse -> TestTree
responseStopBulkDeployment =
  res
    "StopBulkDeploymentResponse"
    "fixture/StopBulkDeploymentResponse.proto"
    greengrass
    (Proxy :: Proxy StopBulkDeployment)

responseListGroups :: ListGroupsResponse -> TestTree
responseListGroups =
  res
    "ListGroupsResponse"
    "fixture/ListGroupsResponse.proto"
    greengrass
    (Proxy :: Proxy ListGroups)

responseDeleteResourceDefinition :: DeleteResourceDefinitionResponse -> TestTree
responseDeleteResourceDefinition =
  res
    "DeleteResourceDefinitionResponse"
    "fixture/DeleteResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteResourceDefinition)

responseGetThingRuntimeConfiguration :: GetThingRuntimeConfigurationResponse -> TestTree
responseGetThingRuntimeConfiguration =
  res
    "GetThingRuntimeConfigurationResponse"
    "fixture/GetThingRuntimeConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy GetThingRuntimeConfiguration)

responseListDeviceDefinitionVersions :: ListDeviceDefinitionVersionsResponse -> TestTree
responseListDeviceDefinitionVersions =
  res
    "ListDeviceDefinitionVersionsResponse"
    "fixture/ListDeviceDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListDeviceDefinitionVersions)

responseUpdateResourceDefinition :: UpdateResourceDefinitionResponse -> TestTree
responseUpdateResourceDefinition =
  res
    "UpdateResourceDefinitionResponse"
    "fixture/UpdateResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateResourceDefinition)

responseListResourceDefinitions :: ListResourceDefinitionsResponse -> TestTree
responseListResourceDefinitions =
  res
    "ListResourceDefinitionsResponse"
    "fixture/ListResourceDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListResourceDefinitions)

responseGetDeviceDefinition :: GetDeviceDefinitionResponse -> TestTree
responseGetDeviceDefinition =
  res
    "GetDeviceDefinitionResponse"
    "fixture/GetDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetDeviceDefinition)

responseCreateResourceDefinition :: CreateResourceDefinitionResponse -> TestTree
responseCreateResourceDefinition =
  res
    "CreateResourceDefinitionResponse"
    "fixture/CreateResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateResourceDefinition)

responseGetResourceDefinitionVersion :: GetResourceDefinitionVersionResponse -> TestTree
responseGetResourceDefinitionVersion =
  res
    "GetResourceDefinitionVersionResponse"
    "fixture/GetResourceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetResourceDefinitionVersion)

responseCreateDeviceDefinitionVersion :: CreateDeviceDefinitionVersionResponse -> TestTree
responseCreateDeviceDefinitionVersion =
  res
    "CreateDeviceDefinitionVersionResponse"
    "fixture/CreateDeviceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateDeviceDefinitionVersion)

responseGetGroupVersion :: GetGroupVersionResponse -> TestTree
responseGetGroupVersion =
  res
    "GetGroupVersionResponse"
    "fixture/GetGroupVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroupVersion)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    greengrass
    (Proxy :: Proxy UntagResource)

responseCreateGroup :: CreateGroupResponse -> TestTree
responseCreateGroup =
  res
    "CreateGroupResponse"
    "fixture/CreateGroupResponse.proto"
    greengrass
    (Proxy :: Proxy CreateGroup)

responseUpdateGroupCertificateConfiguration :: UpdateGroupCertificateConfigurationResponse -> TestTree
responseUpdateGroupCertificateConfiguration =
  res
    "UpdateGroupCertificateConfigurationResponse"
    "fixture/UpdateGroupCertificateConfigurationResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateGroupCertificateConfiguration)

responseDeleteLoggerDefinition :: DeleteLoggerDefinitionResponse -> TestTree
responseDeleteLoggerDefinition =
  res
    "DeleteLoggerDefinitionResponse"
    "fixture/DeleteLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteLoggerDefinition)

responseListBulkDeployments :: ListBulkDeploymentsResponse -> TestTree
responseListBulkDeployments =
  res
    "ListBulkDeploymentsResponse"
    "fixture/ListBulkDeploymentsResponse.proto"
    greengrass
    (Proxy :: Proxy ListBulkDeployments)

responseCreateConnectorDefinitionVersion :: CreateConnectorDefinitionVersionResponse -> TestTree
responseCreateConnectorDefinitionVersion =
  res
    "CreateConnectorDefinitionVersionResponse"
    "fixture/CreateConnectorDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateConnectorDefinitionVersion)

responseCreateSubscriptionDefinitionVersion :: CreateSubscriptionDefinitionVersionResponse -> TestTree
responseCreateSubscriptionDefinitionVersion =
  res
    "CreateSubscriptionDefinitionVersionResponse"
    "fixture/CreateSubscriptionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateSubscriptionDefinitionVersion)

responseUpdateLoggerDefinition :: UpdateLoggerDefinitionResponse -> TestTree
responseUpdateLoggerDefinition =
  res
    "UpdateLoggerDefinitionResponse"
    "fixture/UpdateLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateLoggerDefinition)

responseListLoggerDefinitions :: ListLoggerDefinitionsResponse -> TestTree
responseListLoggerDefinitions =
  res
    "ListLoggerDefinitionsResponse"
    "fixture/ListLoggerDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListLoggerDefinitions)

responseCreateCoreDefinitionVersion :: CreateCoreDefinitionVersionResponse -> TestTree
responseCreateCoreDefinitionVersion =
  res
    "CreateCoreDefinitionVersionResponse"
    "fixture/CreateCoreDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateCoreDefinitionVersion)

responseListDeployments :: ListDeploymentsResponse -> TestTree
responseListDeployments =
  res
    "ListDeploymentsResponse"
    "fixture/ListDeploymentsResponse.proto"
    greengrass
    (Proxy :: Proxy ListDeployments)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    greengrass
    (Proxy :: Proxy TagResource)

responseGetConnectivityInfo :: GetConnectivityInfoResponse -> TestTree
responseGetConnectivityInfo =
  res
    "GetConnectivityInfoResponse"
    "fixture/GetConnectivityInfoResponse.proto"
    greengrass
    (Proxy :: Proxy GetConnectivityInfo)

responseListSubscriptionDefinitionVersions :: ListSubscriptionDefinitionVersionsResponse -> TestTree
responseListSubscriptionDefinitionVersions =
  res
    "ListSubscriptionDefinitionVersionsResponse"
    "fixture/ListSubscriptionDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListSubscriptionDefinitionVersions)

responseListCoreDefinitionVersions :: ListCoreDefinitionVersionsResponse -> TestTree
responseListCoreDefinitionVersions =
  res
    "ListCoreDefinitionVersionsResponse"
    "fixture/ListCoreDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListCoreDefinitionVersions)

responseListConnectorDefinitionVersions :: ListConnectorDefinitionVersionsResponse -> TestTree
responseListConnectorDefinitionVersions =
  res
    "ListConnectorDefinitionVersionsResponse"
    "fixture/ListConnectorDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListConnectorDefinitionVersions)

responseCreateSoftwareUpdateJob :: CreateSoftwareUpdateJobResponse -> TestTree
responseCreateSoftwareUpdateJob =
  res
    "CreateSoftwareUpdateJobResponse"
    "fixture/CreateSoftwareUpdateJobResponse.proto"
    greengrass
    (Proxy :: Proxy CreateSoftwareUpdateJob)

responseCreateCoreDefinition :: CreateCoreDefinitionResponse -> TestTree
responseCreateCoreDefinition =
  res
    "CreateCoreDefinitionResponse"
    "fixture/CreateCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateCoreDefinition)

responseCreateConnectorDefinition :: CreateConnectorDefinitionResponse -> TestTree
responseCreateConnectorDefinition =
  res
    "CreateConnectorDefinitionResponse"
    "fixture/CreateConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateConnectorDefinition)

responseGetAssociatedRole :: GetAssociatedRoleResponse -> TestTree
responseGetAssociatedRole =
  res
    "GetAssociatedRoleResponse"
    "fixture/GetAssociatedRoleResponse.proto"
    greengrass
    (Proxy :: Proxy GetAssociatedRole)

responseUpdateConnectivityInfo :: UpdateConnectivityInfoResponse -> TestTree
responseUpdateConnectivityInfo =
  res
    "UpdateConnectivityInfoResponse"
    "fixture/UpdateConnectivityInfoResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateConnectivityInfo)

responseCreateSubscriptionDefinition :: CreateSubscriptionDefinitionResponse -> TestTree
responseCreateSubscriptionDefinition =
  res
    "CreateSubscriptionDefinitionResponse"
    "fixture/CreateSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateSubscriptionDefinition)

responseDisassociateRoleFromGroup :: DisassociateRoleFromGroupResponse -> TestTree
responseDisassociateRoleFromGroup =
  res
    "DisassociateRoleFromGroupResponse"
    "fixture/DisassociateRoleFromGroupResponse.proto"
    greengrass
    (Proxy :: Proxy DisassociateRoleFromGroup)

responseListCoreDefinitions :: ListCoreDefinitionsResponse -> TestTree
responseListCoreDefinitions =
  res
    "ListCoreDefinitionsResponse"
    "fixture/ListCoreDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListCoreDefinitions)

responseListConnectorDefinitions :: ListConnectorDefinitionsResponse -> TestTree
responseListConnectorDefinitions =
  res
    "ListConnectorDefinitionsResponse"
    "fixture/ListConnectorDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListConnectorDefinitions)

responseCreateGroupCertificateAuthority :: CreateGroupCertificateAuthorityResponse -> TestTree
responseCreateGroupCertificateAuthority =
  res
    "CreateGroupCertificateAuthorityResponse"
    "fixture/CreateGroupCertificateAuthorityResponse.proto"
    greengrass
    (Proxy :: Proxy CreateGroupCertificateAuthority)

responseListGroupCertificateAuthorities :: ListGroupCertificateAuthoritiesResponse -> TestTree
responseListGroupCertificateAuthorities =
  res
    "ListGroupCertificateAuthoritiesResponse"
    "fixture/ListGroupCertificateAuthoritiesResponse.proto"
    greengrass
    (Proxy :: Proxy ListGroupCertificateAuthorities)

responseDeleteConnectorDefinition :: DeleteConnectorDefinitionResponse -> TestTree
responseDeleteConnectorDefinition =
  res
    "DeleteConnectorDefinitionResponse"
    "fixture/DeleteConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteConnectorDefinition)

responseGetLoggerDefinition :: GetLoggerDefinitionResponse -> TestTree
responseGetLoggerDefinition =
  res
    "GetLoggerDefinitionResponse"
    "fixture/GetLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetLoggerDefinition)

responseUpdateConnectorDefinition :: UpdateConnectorDefinitionResponse -> TestTree
responseUpdateConnectorDefinition =
  res
    "UpdateConnectorDefinitionResponse"
    "fixture/UpdateConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateConnectorDefinition)

responseCreateLoggerDefinitionVersion :: CreateLoggerDefinitionVersionResponse -> TestTree
responseCreateLoggerDefinitionVersion =
  res
    "CreateLoggerDefinitionVersionResponse"
    "fixture/CreateLoggerDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateLoggerDefinitionVersion)

responseResetDeployments :: ResetDeploymentsResponse -> TestTree
responseResetDeployments =
  res
    "ResetDeploymentsResponse"
    "fixture/ResetDeploymentsResponse.proto"
    greengrass
    (Proxy :: Proxy ResetDeployments)

responseListSubscriptionDefinitions :: ListSubscriptionDefinitionsResponse -> TestTree
responseListSubscriptionDefinitions =
  res
    "ListSubscriptionDefinitionsResponse"
    "fixture/ListSubscriptionDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListSubscriptionDefinitions)

responseListGroupVersions :: ListGroupVersionsResponse -> TestTree
responseListGroupVersions =
  res
    "ListGroupVersionsResponse"
    "fixture/ListGroupVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListGroupVersions)

responseDeleteDeviceDefinition :: DeleteDeviceDefinitionResponse -> TestTree
responseDeleteDeviceDefinition =
  res
    "DeleteDeviceDefinitionResponse"
    "fixture/DeleteDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteDeviceDefinition)

responseUpdateDeviceDefinition :: UpdateDeviceDefinitionResponse -> TestTree
responseUpdateDeviceDefinition =
  res
    "UpdateDeviceDefinitionResponse"
    "fixture/UpdateDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateDeviceDefinition)

responseListDeviceDefinitions :: ListDeviceDefinitionsResponse -> TestTree
responseListDeviceDefinitions =
  res
    "ListDeviceDefinitionsResponse"
    "fixture/ListDeviceDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListDeviceDefinitions)

responseDisassociateServiceRoleFromAccount :: DisassociateServiceRoleFromAccountResponse -> TestTree
responseDisassociateServiceRoleFromAccount =
  res
    "DisassociateServiceRoleFromAccountResponse"
    "fixture/DisassociateServiceRoleFromAccountResponse.proto"
    greengrass
    (Proxy :: Proxy DisassociateServiceRoleFromAccount)

responseListResourceDefinitionVersions :: ListResourceDefinitionVersionsResponse -> TestTree
responseListResourceDefinitionVersions =
  res
    "ListResourceDefinitionVersionsResponse"
    "fixture/ListResourceDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListResourceDefinitionVersions)

responseGetResourceDefinition :: GetResourceDefinitionResponse -> TestTree
responseGetResourceDefinition =
  res
    "GetResourceDefinitionResponse"
    "fixture/GetResourceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetResourceDefinition)

responseGetGroup :: GetGroupResponse -> TestTree
responseGetGroup =
  res
    "GetGroupResponse"
    "fixture/GetGroupResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroup)

responseCreateDeviceDefinition :: CreateDeviceDefinitionResponse -> TestTree
responseCreateDeviceDefinition =
  res
    "CreateDeviceDefinitionResponse"
    "fixture/CreateDeviceDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateDeviceDefinition)

responseGetDeviceDefinitionVersion :: GetDeviceDefinitionVersionResponse -> TestTree
responseGetDeviceDefinitionVersion =
  res
    "GetDeviceDefinitionVersionResponse"
    "fixture/GetDeviceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetDeviceDefinitionVersion)

responseCreateResourceDefinitionVersion :: CreateResourceDefinitionVersionResponse -> TestTree
responseCreateResourceDefinitionVersion =
  res
    "CreateResourceDefinitionVersionResponse"
    "fixture/CreateResourceDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateResourceDefinitionVersion)

responseCreateGroupVersion :: CreateGroupVersionResponse -> TestTree
responseCreateGroupVersion =
  res
    "CreateGroupVersionResponse"
    "fixture/CreateGroupVersionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateGroupVersion)

responseListBulkDeploymentDetailedReports :: ListBulkDeploymentDetailedReportsResponse -> TestTree
responseListBulkDeploymentDetailedReports =
  res
    "ListBulkDeploymentDetailedReportsResponse"
    "fixture/ListBulkDeploymentDetailedReportsResponse.proto"
    greengrass
    (Proxy :: Proxy ListBulkDeploymentDetailedReports)

responseUpdateGroup :: UpdateGroupResponse -> TestTree
responseUpdateGroup =
  res
    "UpdateGroupResponse"
    "fixture/UpdateGroupResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateGroup)

responseDeleteGroup :: DeleteGroupResponse -> TestTree
responseDeleteGroup =
  res
    "DeleteGroupResponse"
    "fixture/DeleteGroupResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteGroup)

responseDeleteFunctionDefinition :: DeleteFunctionDefinitionResponse -> TestTree
responseDeleteFunctionDefinition =
  res
    "DeleteFunctionDefinitionResponse"
    "fixture/DeleteFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy DeleteFunctionDefinition)

responseUpdateFunctionDefinition :: UpdateFunctionDefinitionResponse -> TestTree
responseUpdateFunctionDefinition =
  res
    "UpdateFunctionDefinitionResponse"
    "fixture/UpdateFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy UpdateFunctionDefinition)

responseListFunctionDefinitions :: ListFunctionDefinitionsResponse -> TestTree
responseListFunctionDefinitions =
  res
    "ListFunctionDefinitionsResponse"
    "fixture/ListFunctionDefinitionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListFunctionDefinitions)

responseGetFunctionDefinitionVersion :: GetFunctionDefinitionVersionResponse -> TestTree
responseGetFunctionDefinitionVersion =
  res
    "GetFunctionDefinitionVersionResponse"
    "fixture/GetFunctionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetFunctionDefinitionVersion)

responseGetBulkDeploymentStatus :: GetBulkDeploymentStatusResponse -> TestTree
responseGetBulkDeploymentStatus =
  res
    "GetBulkDeploymentStatusResponse"
    "fixture/GetBulkDeploymentStatusResponse.proto"
    greengrass
    (Proxy :: Proxy GetBulkDeploymentStatus)

responseGetDeploymentStatus :: GetDeploymentStatusResponse -> TestTree
responseGetDeploymentStatus =
  res
    "GetDeploymentStatusResponse"
    "fixture/GetDeploymentStatusResponse.proto"
    greengrass
    (Proxy :: Proxy GetDeploymentStatus)

responseCreateFunctionDefinition :: CreateFunctionDefinitionResponse -> TestTree
responseCreateFunctionDefinition =
  res
    "CreateFunctionDefinitionResponse"
    "fixture/CreateFunctionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateFunctionDefinition)

responseGetSubscriptionDefinition :: GetSubscriptionDefinitionResponse -> TestTree
responseGetSubscriptionDefinition =
  res
    "GetSubscriptionDefinitionResponse"
    "fixture/GetSubscriptionDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetSubscriptionDefinition)

responseGetConnectorDefinition :: GetConnectorDefinitionResponse -> TestTree
responseGetConnectorDefinition =
  res
    "GetConnectorDefinitionResponse"
    "fixture/GetConnectorDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetConnectorDefinition)

responseGetCoreDefinition :: GetCoreDefinitionResponse -> TestTree
responseGetCoreDefinition =
  res
    "GetCoreDefinitionResponse"
    "fixture/GetCoreDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy GetCoreDefinition)

responseGetGroupCertificateAuthority :: GetGroupCertificateAuthorityResponse -> TestTree
responseGetGroupCertificateAuthority =
  res
    "GetGroupCertificateAuthorityResponse"
    "fixture/GetGroupCertificateAuthorityResponse.proto"
    greengrass
    (Proxy :: Proxy GetGroupCertificateAuthority)

responseGetServiceRoleForAccount :: GetServiceRoleForAccountResponse -> TestTree
responseGetServiceRoleForAccount =
  res
    "GetServiceRoleForAccountResponse"
    "fixture/GetServiceRoleForAccountResponse.proto"
    greengrass
    (Proxy :: Proxy GetServiceRoleForAccount)

responseGetLoggerDefinitionVersion :: GetLoggerDefinitionVersionResponse -> TestTree
responseGetLoggerDefinitionVersion =
  res
    "GetLoggerDefinitionVersionResponse"
    "fixture/GetLoggerDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetLoggerDefinitionVersion)

responseCreateLoggerDefinition :: CreateLoggerDefinitionResponse -> TestTree
responseCreateLoggerDefinition =
  res
    "CreateLoggerDefinitionResponse"
    "fixture/CreateLoggerDefinitionResponse.proto"
    greengrass
    (Proxy :: Proxy CreateLoggerDefinition)

responseCreateDeployment :: CreateDeploymentResponse -> TestTree
responseCreateDeployment =
  res
    "CreateDeploymentResponse"
    "fixture/CreateDeploymentResponse.proto"
    greengrass
    (Proxy :: Proxy CreateDeployment)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    greengrass
    (Proxy :: Proxy ListTagsForResource)

responseGetSubscriptionDefinitionVersion :: GetSubscriptionDefinitionVersionResponse -> TestTree
responseGetSubscriptionDefinitionVersion =
  res
    "GetSubscriptionDefinitionVersionResponse"
    "fixture/GetSubscriptionDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetSubscriptionDefinitionVersion)

responseListLoggerDefinitionVersions :: ListLoggerDefinitionVersionsResponse -> TestTree
responseListLoggerDefinitionVersions =
  res
    "ListLoggerDefinitionVersionsResponse"
    "fixture/ListLoggerDefinitionVersionsResponse.proto"
    greengrass
    (Proxy :: Proxy ListLoggerDefinitionVersions)

responseGetCoreDefinitionVersion :: GetCoreDefinitionVersionResponse -> TestTree
responseGetCoreDefinitionVersion =
  res
    "GetCoreDefinitionVersionResponse"
    "fixture/GetCoreDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetCoreDefinitionVersion)

responseGetConnectorDefinitionVersion :: GetConnectorDefinitionVersionResponse -> TestTree
responseGetConnectorDefinitionVersion =
  res
    "GetConnectorDefinitionVersionResponse"
    "fixture/GetConnectorDefinitionVersionResponse.proto"
    greengrass
    (Proxy :: Proxy GetConnectorDefinitionVersion)

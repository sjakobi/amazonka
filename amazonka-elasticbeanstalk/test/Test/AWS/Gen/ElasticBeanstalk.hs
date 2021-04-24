{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ElasticBeanstalk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ElasticBeanstalk where

import Data.Proxy
import Network.AWS.ElasticBeanstalk
import Test.AWS.ElasticBeanstalk.Internal
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
--         [ requestSwapEnvironmentCNAMEs $
--             swapEnvironmentCNAMEs
--
--         , requestListPlatformBranches $
--             listPlatformBranches
--
--         , requestListAvailableSolutionStacks $
--             listAvailableSolutionStacks
--
--         , requestDescribeEnvironmentHealth $
--             describeEnvironmentHealth
--
--         , requestCreateConfigurationTemplate $
--             createConfigurationTemplate
--
--         , requestDescribeApplications $
--             describeApplications
--
--         , requestListPlatformVersions $
--             listPlatformVersions
--
--         , requestCreateApplicationVersion $
--             createApplicationVersion
--
--         , requestTerminateEnvironment $
--             terminateEnvironment
--
--         , requestDescribeEnvironmentResources $
--             describeEnvironmentResources
--
--         , requestUpdateApplicationVersion $
--             updateApplicationVersion
--
--         , requestCreatePlatformVersion $
--             createPlatformVersion
--
--         , requestDeleteApplicationVersion $
--             deleteApplicationVersion
--
--         , requestCreateEnvironment $
--             createEnvironment
--
--         , requestCreateApplication $
--             createApplication
--
--         , requestComposeEnvironments $
--             composeEnvironments
--
--         , requestCheckDNSAvailability $
--             checkDNSAvailability
--
--         , requestDescribeAccountAttributes $
--             describeAccountAttributes
--
--         , requestValidateConfigurationSettings $
--             validateConfigurationSettings
--
--         , requestCreateStorageLocation $
--             createStorageLocation
--
--         , requestDescribeEnvironmentManagedActions $
--             describeEnvironmentManagedActions
--
--         , requestDescribeConfigurationSettings $
--             describeConfigurationSettings
--
--         , requestDescribeConfigurationOptions $
--             describeConfigurationOptions
--
--         , requestRetrieveEnvironmentInfo $
--             retrieveEnvironmentInfo
--
--         , requestRequestEnvironmentInfo $
--             requestEnvironmentInfo
--
--         , requestDescribeEvents $
--             describeEvents
--
--         , requestApplyEnvironmentManagedAction $
--             applyEnvironmentManagedAction
--
--         , requestUpdateApplicationResourceLifecycle $
--             updateApplicationResourceLifecycle
--
--         , requestRebuildEnvironment $
--             rebuildEnvironment
--
--         , requestUpdateEnvironment $
--             updateEnvironment
--
--         , requestDeletePlatformVersion $
--             deletePlatformVersion
--
--         , requestDeleteEnvironmentConfiguration $
--             deleteEnvironmentConfiguration
--
--         , requestDescribeEnvironmentManagedActionHistory $
--             describeEnvironmentManagedActionHistory
--
--         , requestUpdateConfigurationTemplate $
--             updateConfigurationTemplate
--
--         , requestDeleteConfigurationTemplate $
--             deleteConfigurationTemplate
--
--         , requestUpdateTagsForResource $
--             updateTagsForResource
--
--         , requestDescribeApplicationVersions $
--             describeApplicationVersions
--
--         , requestAbortEnvironmentUpdate $
--             abortEnvironmentUpdate
--
--         , requestDescribeEnvironments $
--             describeEnvironments
--
--         , requestRestartAppServer $
--             restartAppServer
--
--         , requestAssociateEnvironmentOperationsRole $
--             associateEnvironmentOperationsRole
--
--         , requestDeleteApplication $
--             deleteApplication
--
--         , requestDescribeInstancesHealth $
--             describeInstancesHealth
--
--         , requestUpdateApplication $
--             updateApplication
--
--         , requestDescribePlatformVersion $
--             describePlatformVersion
--
--         , requestDisassociateEnvironmentOperationsRole $
--             disassociateEnvironmentOperationsRole
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--           ]

--     , testGroup "response"
--         [ responseSwapEnvironmentCNAMEs $
--             swapEnvironmentCNAMEsResponse
--
--         , responseListPlatformBranches $
--             listPlatformBranchesResponse
--
--         , responseListAvailableSolutionStacks $
--             listAvailableSolutionStacksResponse
--
--         , responseDescribeEnvironmentHealth $
--             describeEnvironmentHealthResponse
--
--         , responseCreateConfigurationTemplate $
--             configurationSettingsDescription
--
--         , responseDescribeApplications $
--             describeApplicationsResponse
--
--         , responseListPlatformVersions $
--             listPlatformVersionsResponse
--
--         , responseCreateApplicationVersion $
--             applicationVersionDescriptionMessage
--
--         , responseTerminateEnvironment $
--             environmentDescription
--
--         , responseDescribeEnvironmentResources $
--             describeEnvironmentResourcesResponse
--
--         , responseUpdateApplicationVersion $
--             applicationVersionDescriptionMessage
--
--         , responseCreatePlatformVersion $
--             createPlatformVersionResponse
--
--         , responseDeleteApplicationVersion $
--             deleteApplicationVersionResponse
--
--         , responseCreateEnvironment $
--             environmentDescription
--
--         , responseCreateApplication $
--             applicationDescriptionMessage
--
--         , responseComposeEnvironments $
--             environmentDescriptionsMessage
--
--         , responseCheckDNSAvailability $
--             checkDNSAvailabilityResponse
--
--         , responseDescribeAccountAttributes $
--             describeAccountAttributesResponse
--
--         , responseValidateConfigurationSettings $
--             validateConfigurationSettingsResponse
--
--         , responseCreateStorageLocation $
--             createStorageLocationResponse
--
--         , responseDescribeEnvironmentManagedActions $
--             describeEnvironmentManagedActionsResponse
--
--         , responseDescribeConfigurationSettings $
--             describeConfigurationSettingsResponse
--
--         , responseDescribeConfigurationOptions $
--             describeConfigurationOptionsResponse
--
--         , responseRetrieveEnvironmentInfo $
--             retrieveEnvironmentInfoResponse
--
--         , responseRequestEnvironmentInfo $
--             requestEnvironmentInfoResponse
--
--         , responseDescribeEvents $
--             describeEventsResponse
--
--         , responseApplyEnvironmentManagedAction $
--             applyEnvironmentManagedActionResponse
--
--         , responseUpdateApplicationResourceLifecycle $
--             updateApplicationResourceLifecycleResponse
--
--         , responseRebuildEnvironment $
--             rebuildEnvironmentResponse
--
--         , responseUpdateEnvironment $
--             environmentDescription
--
--         , responseDeletePlatformVersion $
--             deletePlatformVersionResponse
--
--         , responseDeleteEnvironmentConfiguration $
--             deleteEnvironmentConfigurationResponse
--
--         , responseDescribeEnvironmentManagedActionHistory $
--             describeEnvironmentManagedActionHistoryResponse
--
--         , responseUpdateConfigurationTemplate $
--             configurationSettingsDescription
--
--         , responseDeleteConfigurationTemplate $
--             deleteConfigurationTemplateResponse
--
--         , responseUpdateTagsForResource $
--             updateTagsForResourceResponse
--
--         , responseDescribeApplicationVersions $
--             describeApplicationVersionsResponse
--
--         , responseAbortEnvironmentUpdate $
--             abortEnvironmentUpdateResponse
--
--         , responseDescribeEnvironments $
--             environmentDescriptionsMessage
--
--         , responseRestartAppServer $
--             restartAppServerResponse
--
--         , responseAssociateEnvironmentOperationsRole $
--             associateEnvironmentOperationsRoleResponse
--
--         , responseDeleteApplication $
--             deleteApplicationResponse
--
--         , responseDescribeInstancesHealth $
--             describeInstancesHealthResponse
--
--         , responseUpdateApplication $
--             applicationDescriptionMessage
--
--         , responseDescribePlatformVersion $
--             describePlatformVersionResponse
--
--         , responseDisassociateEnvironmentOperationsRole $
--             disassociateEnvironmentOperationsRoleResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--           ]
--     ]

-- Requests

requestSwapEnvironmentCNAMEs :: SwapEnvironmentCNAMEs -> TestTree
requestSwapEnvironmentCNAMEs =
  req
    "SwapEnvironmentCNAMEs"
    "fixture/SwapEnvironmentCNAMEs.yaml"

requestListPlatformBranches :: ListPlatformBranches -> TestTree
requestListPlatformBranches =
  req
    "ListPlatformBranches"
    "fixture/ListPlatformBranches.yaml"

requestListAvailableSolutionStacks :: ListAvailableSolutionStacks -> TestTree
requestListAvailableSolutionStacks =
  req
    "ListAvailableSolutionStacks"
    "fixture/ListAvailableSolutionStacks.yaml"

requestDescribeEnvironmentHealth :: DescribeEnvironmentHealth -> TestTree
requestDescribeEnvironmentHealth =
  req
    "DescribeEnvironmentHealth"
    "fixture/DescribeEnvironmentHealth.yaml"

requestCreateConfigurationTemplate :: CreateConfigurationTemplate -> TestTree
requestCreateConfigurationTemplate =
  req
    "CreateConfigurationTemplate"
    "fixture/CreateConfigurationTemplate.yaml"

requestDescribeApplications :: DescribeApplications -> TestTree
requestDescribeApplications =
  req
    "DescribeApplications"
    "fixture/DescribeApplications.yaml"

requestListPlatformVersions :: ListPlatformVersions -> TestTree
requestListPlatformVersions =
  req
    "ListPlatformVersions"
    "fixture/ListPlatformVersions.yaml"

requestCreateApplicationVersion :: CreateApplicationVersion -> TestTree
requestCreateApplicationVersion =
  req
    "CreateApplicationVersion"
    "fixture/CreateApplicationVersion.yaml"

requestTerminateEnvironment :: TerminateEnvironment -> TestTree
requestTerminateEnvironment =
  req
    "TerminateEnvironment"
    "fixture/TerminateEnvironment.yaml"

requestDescribeEnvironmentResources :: DescribeEnvironmentResources -> TestTree
requestDescribeEnvironmentResources =
  req
    "DescribeEnvironmentResources"
    "fixture/DescribeEnvironmentResources.yaml"

requestUpdateApplicationVersion :: UpdateApplicationVersion -> TestTree
requestUpdateApplicationVersion =
  req
    "UpdateApplicationVersion"
    "fixture/UpdateApplicationVersion.yaml"

requestCreatePlatformVersion :: CreatePlatformVersion -> TestTree
requestCreatePlatformVersion =
  req
    "CreatePlatformVersion"
    "fixture/CreatePlatformVersion.yaml"

requestDeleteApplicationVersion :: DeleteApplicationVersion -> TestTree
requestDeleteApplicationVersion =
  req
    "DeleteApplicationVersion"
    "fixture/DeleteApplicationVersion.yaml"

requestCreateEnvironment :: CreateEnvironment -> TestTree
requestCreateEnvironment =
  req
    "CreateEnvironment"
    "fixture/CreateEnvironment.yaml"

requestCreateApplication :: CreateApplication -> TestTree
requestCreateApplication =
  req
    "CreateApplication"
    "fixture/CreateApplication.yaml"

requestComposeEnvironments :: ComposeEnvironments -> TestTree
requestComposeEnvironments =
  req
    "ComposeEnvironments"
    "fixture/ComposeEnvironments.yaml"

requestCheckDNSAvailability :: CheckDNSAvailability -> TestTree
requestCheckDNSAvailability =
  req
    "CheckDNSAvailability"
    "fixture/CheckDNSAvailability.yaml"

requestDescribeAccountAttributes :: DescribeAccountAttributes -> TestTree
requestDescribeAccountAttributes =
  req
    "DescribeAccountAttributes"
    "fixture/DescribeAccountAttributes.yaml"

requestValidateConfigurationSettings :: ValidateConfigurationSettings -> TestTree
requestValidateConfigurationSettings =
  req
    "ValidateConfigurationSettings"
    "fixture/ValidateConfigurationSettings.yaml"

requestCreateStorageLocation :: CreateStorageLocation -> TestTree
requestCreateStorageLocation =
  req
    "CreateStorageLocation"
    "fixture/CreateStorageLocation.yaml"

requestDescribeEnvironmentManagedActions :: DescribeEnvironmentManagedActions -> TestTree
requestDescribeEnvironmentManagedActions =
  req
    "DescribeEnvironmentManagedActions"
    "fixture/DescribeEnvironmentManagedActions.yaml"

requestDescribeConfigurationSettings :: DescribeConfigurationSettings -> TestTree
requestDescribeConfigurationSettings =
  req
    "DescribeConfigurationSettings"
    "fixture/DescribeConfigurationSettings.yaml"

requestDescribeConfigurationOptions :: DescribeConfigurationOptions -> TestTree
requestDescribeConfigurationOptions =
  req
    "DescribeConfigurationOptions"
    "fixture/DescribeConfigurationOptions.yaml"

requestRetrieveEnvironmentInfo :: RetrieveEnvironmentInfo -> TestTree
requestRetrieveEnvironmentInfo =
  req
    "RetrieveEnvironmentInfo"
    "fixture/RetrieveEnvironmentInfo.yaml"

requestRequestEnvironmentInfo :: RequestEnvironmentInfo -> TestTree
requestRequestEnvironmentInfo =
  req
    "RequestEnvironmentInfo"
    "fixture/RequestEnvironmentInfo.yaml"

requestDescribeEvents :: DescribeEvents -> TestTree
requestDescribeEvents =
  req
    "DescribeEvents"
    "fixture/DescribeEvents.yaml"

requestApplyEnvironmentManagedAction :: ApplyEnvironmentManagedAction -> TestTree
requestApplyEnvironmentManagedAction =
  req
    "ApplyEnvironmentManagedAction"
    "fixture/ApplyEnvironmentManagedAction.yaml"

requestUpdateApplicationResourceLifecycle :: UpdateApplicationResourceLifecycle -> TestTree
requestUpdateApplicationResourceLifecycle =
  req
    "UpdateApplicationResourceLifecycle"
    "fixture/UpdateApplicationResourceLifecycle.yaml"

requestRebuildEnvironment :: RebuildEnvironment -> TestTree
requestRebuildEnvironment =
  req
    "RebuildEnvironment"
    "fixture/RebuildEnvironment.yaml"

requestUpdateEnvironment :: UpdateEnvironment -> TestTree
requestUpdateEnvironment =
  req
    "UpdateEnvironment"
    "fixture/UpdateEnvironment.yaml"

requestDeletePlatformVersion :: DeletePlatformVersion -> TestTree
requestDeletePlatformVersion =
  req
    "DeletePlatformVersion"
    "fixture/DeletePlatformVersion.yaml"

requestDeleteEnvironmentConfiguration :: DeleteEnvironmentConfiguration -> TestTree
requestDeleteEnvironmentConfiguration =
  req
    "DeleteEnvironmentConfiguration"
    "fixture/DeleteEnvironmentConfiguration.yaml"

requestDescribeEnvironmentManagedActionHistory :: DescribeEnvironmentManagedActionHistory -> TestTree
requestDescribeEnvironmentManagedActionHistory =
  req
    "DescribeEnvironmentManagedActionHistory"
    "fixture/DescribeEnvironmentManagedActionHistory.yaml"

requestUpdateConfigurationTemplate :: UpdateConfigurationTemplate -> TestTree
requestUpdateConfigurationTemplate =
  req
    "UpdateConfigurationTemplate"
    "fixture/UpdateConfigurationTemplate.yaml"

requestDeleteConfigurationTemplate :: DeleteConfigurationTemplate -> TestTree
requestDeleteConfigurationTemplate =
  req
    "DeleteConfigurationTemplate"
    "fixture/DeleteConfigurationTemplate.yaml"

requestUpdateTagsForResource :: UpdateTagsForResource -> TestTree
requestUpdateTagsForResource =
  req
    "UpdateTagsForResource"
    "fixture/UpdateTagsForResource.yaml"

requestDescribeApplicationVersions :: DescribeApplicationVersions -> TestTree
requestDescribeApplicationVersions =
  req
    "DescribeApplicationVersions"
    "fixture/DescribeApplicationVersions.yaml"

requestAbortEnvironmentUpdate :: AbortEnvironmentUpdate -> TestTree
requestAbortEnvironmentUpdate =
  req
    "AbortEnvironmentUpdate"
    "fixture/AbortEnvironmentUpdate.yaml"

requestDescribeEnvironments :: DescribeEnvironments -> TestTree
requestDescribeEnvironments =
  req
    "DescribeEnvironments"
    "fixture/DescribeEnvironments.yaml"

requestRestartAppServer :: RestartAppServer -> TestTree
requestRestartAppServer =
  req
    "RestartAppServer"
    "fixture/RestartAppServer.yaml"

requestAssociateEnvironmentOperationsRole :: AssociateEnvironmentOperationsRole -> TestTree
requestAssociateEnvironmentOperationsRole =
  req
    "AssociateEnvironmentOperationsRole"
    "fixture/AssociateEnvironmentOperationsRole.yaml"

requestDeleteApplication :: DeleteApplication -> TestTree
requestDeleteApplication =
  req
    "DeleteApplication"
    "fixture/DeleteApplication.yaml"

requestDescribeInstancesHealth :: DescribeInstancesHealth -> TestTree
requestDescribeInstancesHealth =
  req
    "DescribeInstancesHealth"
    "fixture/DescribeInstancesHealth.yaml"

requestUpdateApplication :: UpdateApplication -> TestTree
requestUpdateApplication =
  req
    "UpdateApplication"
    "fixture/UpdateApplication.yaml"

requestDescribePlatformVersion :: DescribePlatformVersion -> TestTree
requestDescribePlatformVersion =
  req
    "DescribePlatformVersion"
    "fixture/DescribePlatformVersion.yaml"

requestDisassociateEnvironmentOperationsRole :: DisassociateEnvironmentOperationsRole -> TestTree
requestDisassociateEnvironmentOperationsRole =
  req
    "DisassociateEnvironmentOperationsRole"
    "fixture/DisassociateEnvironmentOperationsRole.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

-- Responses

responseSwapEnvironmentCNAMEs :: SwapEnvironmentCNAMEsResponse -> TestTree
responseSwapEnvironmentCNAMEs =
  res
    "SwapEnvironmentCNAMEsResponse"
    "fixture/SwapEnvironmentCNAMEsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy SwapEnvironmentCNAMEs)

responseListPlatformBranches :: ListPlatformBranchesResponse -> TestTree
responseListPlatformBranches =
  res
    "ListPlatformBranchesResponse"
    "fixture/ListPlatformBranchesResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ListPlatformBranches)

responseListAvailableSolutionStacks :: ListAvailableSolutionStacksResponse -> TestTree
responseListAvailableSolutionStacks =
  res
    "ListAvailableSolutionStacksResponse"
    "fixture/ListAvailableSolutionStacksResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ListAvailableSolutionStacks)

responseDescribeEnvironmentHealth :: DescribeEnvironmentHealthResponse -> TestTree
responseDescribeEnvironmentHealth =
  res
    "DescribeEnvironmentHealthResponse"
    "fixture/DescribeEnvironmentHealthResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeEnvironmentHealth)

responseCreateConfigurationTemplate :: ConfigurationSettingsDescription -> TestTree
responseCreateConfigurationTemplate =
  res
    "CreateConfigurationTemplateResponse"
    "fixture/CreateConfigurationTemplateResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CreateConfigurationTemplate)

responseDescribeApplications :: DescribeApplicationsResponse -> TestTree
responseDescribeApplications =
  res
    "DescribeApplicationsResponse"
    "fixture/DescribeApplicationsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeApplications)

responseListPlatformVersions :: ListPlatformVersionsResponse -> TestTree
responseListPlatformVersions =
  res
    "ListPlatformVersionsResponse"
    "fixture/ListPlatformVersionsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ListPlatformVersions)

responseCreateApplicationVersion :: ApplicationVersionDescriptionMessage -> TestTree
responseCreateApplicationVersion =
  res
    "CreateApplicationVersionResponse"
    "fixture/CreateApplicationVersionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CreateApplicationVersion)

responseTerminateEnvironment :: EnvironmentDescription -> TestTree
responseTerminateEnvironment =
  res
    "TerminateEnvironmentResponse"
    "fixture/TerminateEnvironmentResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy TerminateEnvironment)

responseDescribeEnvironmentResources :: DescribeEnvironmentResourcesResponse -> TestTree
responseDescribeEnvironmentResources =
  res
    "DescribeEnvironmentResourcesResponse"
    "fixture/DescribeEnvironmentResourcesResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeEnvironmentResources)

responseUpdateApplicationVersion :: ApplicationVersionDescriptionMessage -> TestTree
responseUpdateApplicationVersion =
  res
    "UpdateApplicationVersionResponse"
    "fixture/UpdateApplicationVersionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy UpdateApplicationVersion)

responseCreatePlatformVersion :: CreatePlatformVersionResponse -> TestTree
responseCreatePlatformVersion =
  res
    "CreatePlatformVersionResponse"
    "fixture/CreatePlatformVersionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CreatePlatformVersion)

responseDeleteApplicationVersion :: DeleteApplicationVersionResponse -> TestTree
responseDeleteApplicationVersion =
  res
    "DeleteApplicationVersionResponse"
    "fixture/DeleteApplicationVersionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DeleteApplicationVersion)

responseCreateEnvironment :: EnvironmentDescription -> TestTree
responseCreateEnvironment =
  res
    "CreateEnvironmentResponse"
    "fixture/CreateEnvironmentResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CreateEnvironment)

responseCreateApplication :: ApplicationDescriptionMessage -> TestTree
responseCreateApplication =
  res
    "CreateApplicationResponse"
    "fixture/CreateApplicationResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CreateApplication)

responseComposeEnvironments :: EnvironmentDescriptionsMessage -> TestTree
responseComposeEnvironments =
  res
    "ComposeEnvironmentsResponse"
    "fixture/ComposeEnvironmentsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ComposeEnvironments)

responseCheckDNSAvailability :: CheckDNSAvailabilityResponse -> TestTree
responseCheckDNSAvailability =
  res
    "CheckDNSAvailabilityResponse"
    "fixture/CheckDNSAvailabilityResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CheckDNSAvailability)

responseDescribeAccountAttributes :: DescribeAccountAttributesResponse -> TestTree
responseDescribeAccountAttributes =
  res
    "DescribeAccountAttributesResponse"
    "fixture/DescribeAccountAttributesResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeAccountAttributes)

responseValidateConfigurationSettings :: ValidateConfigurationSettingsResponse -> TestTree
responseValidateConfigurationSettings =
  res
    "ValidateConfigurationSettingsResponse"
    "fixture/ValidateConfigurationSettingsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ValidateConfigurationSettings)

responseCreateStorageLocation :: CreateStorageLocationResponse -> TestTree
responseCreateStorageLocation =
  res
    "CreateStorageLocationResponse"
    "fixture/CreateStorageLocationResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy CreateStorageLocation)

responseDescribeEnvironmentManagedActions :: DescribeEnvironmentManagedActionsResponse -> TestTree
responseDescribeEnvironmentManagedActions =
  res
    "DescribeEnvironmentManagedActionsResponse"
    "fixture/DescribeEnvironmentManagedActionsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeEnvironmentManagedActions)

responseDescribeConfigurationSettings :: DescribeConfigurationSettingsResponse -> TestTree
responseDescribeConfigurationSettings =
  res
    "DescribeConfigurationSettingsResponse"
    "fixture/DescribeConfigurationSettingsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeConfigurationSettings)

responseDescribeConfigurationOptions :: DescribeConfigurationOptionsResponse -> TestTree
responseDescribeConfigurationOptions =
  res
    "DescribeConfigurationOptionsResponse"
    "fixture/DescribeConfigurationOptionsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeConfigurationOptions)

responseRetrieveEnvironmentInfo :: RetrieveEnvironmentInfoResponse -> TestTree
responseRetrieveEnvironmentInfo =
  res
    "RetrieveEnvironmentInfoResponse"
    "fixture/RetrieveEnvironmentInfoResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy RetrieveEnvironmentInfo)

responseRequestEnvironmentInfo :: RequestEnvironmentInfoResponse -> TestTree
responseRequestEnvironmentInfo =
  res
    "RequestEnvironmentInfoResponse"
    "fixture/RequestEnvironmentInfoResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy RequestEnvironmentInfo)

responseDescribeEvents :: DescribeEventsResponse -> TestTree
responseDescribeEvents =
  res
    "DescribeEventsResponse"
    "fixture/DescribeEventsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeEvents)

responseApplyEnvironmentManagedAction :: ApplyEnvironmentManagedActionResponse -> TestTree
responseApplyEnvironmentManagedAction =
  res
    "ApplyEnvironmentManagedActionResponse"
    "fixture/ApplyEnvironmentManagedActionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ApplyEnvironmentManagedAction)

responseUpdateApplicationResourceLifecycle :: UpdateApplicationResourceLifecycleResponse -> TestTree
responseUpdateApplicationResourceLifecycle =
  res
    "UpdateApplicationResourceLifecycleResponse"
    "fixture/UpdateApplicationResourceLifecycleResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy UpdateApplicationResourceLifecycle)

responseRebuildEnvironment :: RebuildEnvironmentResponse -> TestTree
responseRebuildEnvironment =
  res
    "RebuildEnvironmentResponse"
    "fixture/RebuildEnvironmentResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy RebuildEnvironment)

responseUpdateEnvironment :: EnvironmentDescription -> TestTree
responseUpdateEnvironment =
  res
    "UpdateEnvironmentResponse"
    "fixture/UpdateEnvironmentResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy UpdateEnvironment)

responseDeletePlatformVersion :: DeletePlatformVersionResponse -> TestTree
responseDeletePlatformVersion =
  res
    "DeletePlatformVersionResponse"
    "fixture/DeletePlatformVersionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DeletePlatformVersion)

responseDeleteEnvironmentConfiguration :: DeleteEnvironmentConfigurationResponse -> TestTree
responseDeleteEnvironmentConfiguration =
  res
    "DeleteEnvironmentConfigurationResponse"
    "fixture/DeleteEnvironmentConfigurationResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DeleteEnvironmentConfiguration)

responseDescribeEnvironmentManagedActionHistory :: DescribeEnvironmentManagedActionHistoryResponse -> TestTree
responseDescribeEnvironmentManagedActionHistory =
  res
    "DescribeEnvironmentManagedActionHistoryResponse"
    "fixture/DescribeEnvironmentManagedActionHistoryResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeEnvironmentManagedActionHistory)

responseUpdateConfigurationTemplate :: ConfigurationSettingsDescription -> TestTree
responseUpdateConfigurationTemplate =
  res
    "UpdateConfigurationTemplateResponse"
    "fixture/UpdateConfigurationTemplateResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy UpdateConfigurationTemplate)

responseDeleteConfigurationTemplate :: DeleteConfigurationTemplateResponse -> TestTree
responseDeleteConfigurationTemplate =
  res
    "DeleteConfigurationTemplateResponse"
    "fixture/DeleteConfigurationTemplateResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DeleteConfigurationTemplate)

responseUpdateTagsForResource :: UpdateTagsForResourceResponse -> TestTree
responseUpdateTagsForResource =
  res
    "UpdateTagsForResourceResponse"
    "fixture/UpdateTagsForResourceResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy UpdateTagsForResource)

responseDescribeApplicationVersions :: DescribeApplicationVersionsResponse -> TestTree
responseDescribeApplicationVersions =
  res
    "DescribeApplicationVersionsResponse"
    "fixture/DescribeApplicationVersionsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeApplicationVersions)

responseAbortEnvironmentUpdate :: AbortEnvironmentUpdateResponse -> TestTree
responseAbortEnvironmentUpdate =
  res
    "AbortEnvironmentUpdateResponse"
    "fixture/AbortEnvironmentUpdateResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy AbortEnvironmentUpdate)

responseDescribeEnvironments :: EnvironmentDescriptionsMessage -> TestTree
responseDescribeEnvironments =
  res
    "DescribeEnvironmentsResponse"
    "fixture/DescribeEnvironmentsResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeEnvironments)

responseRestartAppServer :: RestartAppServerResponse -> TestTree
responseRestartAppServer =
  res
    "RestartAppServerResponse"
    "fixture/RestartAppServerResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy RestartAppServer)

responseAssociateEnvironmentOperationsRole :: AssociateEnvironmentOperationsRoleResponse -> TestTree
responseAssociateEnvironmentOperationsRole =
  res
    "AssociateEnvironmentOperationsRoleResponse"
    "fixture/AssociateEnvironmentOperationsRoleResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy AssociateEnvironmentOperationsRole)

responseDeleteApplication :: DeleteApplicationResponse -> TestTree
responseDeleteApplication =
  res
    "DeleteApplicationResponse"
    "fixture/DeleteApplicationResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DeleteApplication)

responseDescribeInstancesHealth :: DescribeInstancesHealthResponse -> TestTree
responseDescribeInstancesHealth =
  res
    "DescribeInstancesHealthResponse"
    "fixture/DescribeInstancesHealthResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribeInstancesHealth)

responseUpdateApplication :: ApplicationDescriptionMessage -> TestTree
responseUpdateApplication =
  res
    "UpdateApplicationResponse"
    "fixture/UpdateApplicationResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy UpdateApplication)

responseDescribePlatformVersion :: DescribePlatformVersionResponse -> TestTree
responseDescribePlatformVersion =
  res
    "DescribePlatformVersionResponse"
    "fixture/DescribePlatformVersionResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DescribePlatformVersion)

responseDisassociateEnvironmentOperationsRole :: DisassociateEnvironmentOperationsRoleResponse -> TestTree
responseDisassociateEnvironmentOperationsRole =
  res
    "DisassociateEnvironmentOperationsRoleResponse"
    "fixture/DisassociateEnvironmentOperationsRoleResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy DisassociateEnvironmentOperationsRole)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    elasticBeanstalk
    (Proxy :: Proxy ListTagsForResource)

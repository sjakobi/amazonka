{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DeviceFarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DeviceFarm where

import Data.Proxy
import Network.AWS.DeviceFarm
import Test.AWS.DeviceFarm.Internal
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
--         [ requestCreateUpload $
--             createUpload
--
--         , requestListTestGridSessionActions $
--             listTestGridSessionActions
--
--         , requestCreateTestGridProject $
--             createTestGridProject
--
--         , requestListSamples $
--             listSamples
--
--         , requestListTestGridSessionArtifacts $
--             listTestGridSessionArtifacts
--
--         , requestListNetworkProfiles $
--             listNetworkProfiles
--
--         , requestScheduleRun $
--             scheduleRun
--
--         , requestUpdateNetworkProfile $
--             updateNetworkProfile
--
--         , requestInstallToRemoteAccessSession $
--             installToRemoteAccessSession
--
--         , requestDeleteNetworkProfile $
--             deleteNetworkProfile
--
--         , requestGetDevicePoolCompatibility $
--             getDevicePoolCompatibility
--
--         , requestCreateVPCEConfiguration $
--             createVPCEConfiguration
--
--         , requestListProjects $
--             listProjects
--
--         , requestCreateProject $
--             createProject
--
--         , requestCreateTestGridURL $
--             createTestGridURL
--
--         , requestListOfferings $
--             listOfferings
--
--         , requestListDevices $
--             listDevices
--
--         , requestStopRun $
--             stopRun
--
--         , requestCreateNetworkProfile $
--             createNetworkProfile
--
--         , requestGetJob $
--             getJob
--
--         , requestCreateInstanceProfile $
--             createInstanceProfile
--
--         , requestGetDevice $
--             getDevice
--
--         , requestStopRemoteAccessSession $
--             stopRemoteAccessSession
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListDeviceInstances $
--             listDeviceInstances
--
--         , requestUpdateDeviceInstance $
--             updateDeviceInstance
--
--         , requestCreateDevicePool $
--             createDevicePool
--
--         , requestTagResource $
--             tagResource
--
--         , requestListRuns $
--             listRuns
--
--         , requestGetUpload $
--             getUpload
--
--         , requestGetTestGridProject $
--             getTestGridProject
--
--         , requestListDevicePools $
--             listDevicePools
--
--         , requestGetOfferingStatus $
--             getOfferingStatus
--
--         , requestDeleteUpload $
--             deleteUpload
--
--         , requestListUploads $
--             listUploads
--
--         , requestCreateRemoteAccessSession $
--             createRemoteAccessSession
--
--         , requestUpdateUpload $
--             updateUpload
--
--         , requestListTestGridProjects $
--             listTestGridProjects
--
--         , requestListArtifacts $
--             listArtifacts
--
--         , requestListRemoteAccessSessions $
--             listRemoteAccessSessions
--
--         , requestGetRun $
--             getRun
--
--         , requestGetDeviceInstance $
--             getDeviceInstance
--
--         , requestListSuites $
--             listSuites
--
--         , requestStopJob $
--             stopJob
--
--         , requestListTests $
--             listTests
--
--         , requestDeleteRemoteAccessSession $
--             deleteRemoteAccessSession
--
--         , requestDeleteProject $
--             deleteProject
--
--         , requestGetInstanceProfile $
--             getInstanceProfile
--
--         , requestUpdateProject $
--             updateProject
--
--         , requestListTestGridSessions $
--             listTestGridSessions
--
--         , requestListUniqueProblems $
--             listUniqueProblems
--
--         , requestDeleteVPCEConfiguration $
--             deleteVPCEConfiguration
--
--         , requestUpdateVPCEConfiguration $
--             updateVPCEConfiguration
--
--         , requestListVPCEConfigurations $
--             listVPCEConfigurations
--
--         , requestGetVPCEConfiguration $
--             getVPCEConfiguration
--
--         , requestListJobs $
--             listJobs
--
--         , requestGetTestGridSession $
--             getTestGridSession
--
--         , requestPurchaseOffering $
--             purchaseOffering
--
--         , requestGetProject $
--             getProject
--
--         , requestListInstanceProfiles $
--             listInstanceProfiles
--
--         , requestGetNetworkProfile $
--             getNetworkProfile
--
--         , requestUpdateInstanceProfile $
--             updateInstanceProfile
--
--         , requestDeleteInstanceProfile $
--             deleteInstanceProfile
--
--         , requestRenewOffering $
--             renewOffering
--
--         , requestGetRemoteAccessSession $
--             getRemoteAccessSession
--
--         , requestGetSuite $
--             getSuite
--
--         , requestDeleteRun $
--             deleteRun
--
--         , requestGetTest $
--             getTest
--
--         , requestDeleteDevicePool $
--             deleteDevicePool
--
--         , requestListOfferingTransactions $
--             listOfferingTransactions
--
--         , requestUpdateDevicePool $
--             updateDevicePool
--
--         , requestUpdateTestGridProject $
--             updateTestGridProject
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteTestGridProject $
--             deleteTestGridProject
--
--         , requestListOfferingPromotions $
--             listOfferingPromotions
--
--         , requestGetDevicePool $
--             getDevicePool
--
--         , requestGetAccountSettings $
--             getAccountSettings
--
--           ]

--     , testGroup "response"
--         [ responseCreateUpload $
--             createUploadResponse
--
--         , responseListTestGridSessionActions $
--             listTestGridSessionActionsResponse
--
--         , responseCreateTestGridProject $
--             createTestGridProjectResponse
--
--         , responseListSamples $
--             listSamplesResponse
--
--         , responseListTestGridSessionArtifacts $
--             listTestGridSessionArtifactsResponse
--
--         , responseListNetworkProfiles $
--             listNetworkProfilesResponse
--
--         , responseScheduleRun $
--             scheduleRunResponse
--
--         , responseUpdateNetworkProfile $
--             updateNetworkProfileResponse
--
--         , responseInstallToRemoteAccessSession $
--             installToRemoteAccessSessionResponse
--
--         , responseDeleteNetworkProfile $
--             deleteNetworkProfileResponse
--
--         , responseGetDevicePoolCompatibility $
--             getDevicePoolCompatibilityResponse
--
--         , responseCreateVPCEConfiguration $
--             createVPCEConfigurationResponse
--
--         , responseListProjects $
--             listProjectsResponse
--
--         , responseCreateProject $
--             createProjectResponse
--
--         , responseCreateTestGridURL $
--             createTestGridURLResponse
--
--         , responseListOfferings $
--             listOfferingsResponse
--
--         , responseListDevices $
--             listDevicesResponse
--
--         , responseStopRun $
--             stopRunResponse
--
--         , responseCreateNetworkProfile $
--             createNetworkProfileResponse
--
--         , responseGetJob $
--             getJobResponse
--
--         , responseCreateInstanceProfile $
--             createInstanceProfileResponse
--
--         , responseGetDevice $
--             getDeviceResponse
--
--         , responseStopRemoteAccessSession $
--             stopRemoteAccessSessionResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListDeviceInstances $
--             listDeviceInstancesResponse
--
--         , responseUpdateDeviceInstance $
--             updateDeviceInstanceResponse
--
--         , responseCreateDevicePool $
--             createDevicePoolResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListRuns $
--             listRunsResponse
--
--         , responseGetUpload $
--             getUploadResponse
--
--         , responseGetTestGridProject $
--             getTestGridProjectResponse
--
--         , responseListDevicePools $
--             listDevicePoolsResponse
--
--         , responseGetOfferingStatus $
--             getOfferingStatusResponse
--
--         , responseDeleteUpload $
--             deleteUploadResponse
--
--         , responseListUploads $
--             listUploadsResponse
--
--         , responseCreateRemoteAccessSession $
--             createRemoteAccessSessionResponse
--
--         , responseUpdateUpload $
--             updateUploadResponse
--
--         , responseListTestGridProjects $
--             listTestGridProjectsResponse
--
--         , responseListArtifacts $
--             listArtifactsResponse
--
--         , responseListRemoteAccessSessions $
--             listRemoteAccessSessionsResponse
--
--         , responseGetRun $
--             getRunResponse
--
--         , responseGetDeviceInstance $
--             getDeviceInstanceResponse
--
--         , responseListSuites $
--             listSuitesResponse
--
--         , responseStopJob $
--             stopJobResponse
--
--         , responseListTests $
--             listTestsResponse
--
--         , responseDeleteRemoteAccessSession $
--             deleteRemoteAccessSessionResponse
--
--         , responseDeleteProject $
--             deleteProjectResponse
--
--         , responseGetInstanceProfile $
--             getInstanceProfileResponse
--
--         , responseUpdateProject $
--             updateProjectResponse
--
--         , responseListTestGridSessions $
--             listTestGridSessionsResponse
--
--         , responseListUniqueProblems $
--             listUniqueProblemsResponse
--
--         , responseDeleteVPCEConfiguration $
--             deleteVPCEConfigurationResponse
--
--         , responseUpdateVPCEConfiguration $
--             updateVPCEConfigurationResponse
--
--         , responseListVPCEConfigurations $
--             listVPCEConfigurationsResponse
--
--         , responseGetVPCEConfiguration $
--             getVPCEConfigurationResponse
--
--         , responseListJobs $
--             listJobsResponse
--
--         , responseGetTestGridSession $
--             getTestGridSessionResponse
--
--         , responsePurchaseOffering $
--             purchaseOfferingResponse
--
--         , responseGetProject $
--             getProjectResponse
--
--         , responseListInstanceProfiles $
--             listInstanceProfilesResponse
--
--         , responseGetNetworkProfile $
--             getNetworkProfileResponse
--
--         , responseUpdateInstanceProfile $
--             updateInstanceProfileResponse
--
--         , responseDeleteInstanceProfile $
--             deleteInstanceProfileResponse
--
--         , responseRenewOffering $
--             renewOfferingResponse
--
--         , responseGetRemoteAccessSession $
--             getRemoteAccessSessionResponse
--
--         , responseGetSuite $
--             getSuiteResponse
--
--         , responseDeleteRun $
--             deleteRunResponse
--
--         , responseGetTest $
--             getTestResponse
--
--         , responseDeleteDevicePool $
--             deleteDevicePoolResponse
--
--         , responseListOfferingTransactions $
--             listOfferingTransactionsResponse
--
--         , responseUpdateDevicePool $
--             updateDevicePoolResponse
--
--         , responseUpdateTestGridProject $
--             updateTestGridProjectResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteTestGridProject $
--             deleteTestGridProjectResponse
--
--         , responseListOfferingPromotions $
--             listOfferingPromotionsResponse
--
--         , responseGetDevicePool $
--             getDevicePoolResponse
--
--         , responseGetAccountSettings $
--             getAccountSettingsResponse
--
--           ]
--     ]

-- Requests

requestCreateUpload :: CreateUpload -> TestTree
requestCreateUpload =
  req
    "CreateUpload"
    "fixture/CreateUpload.yaml"

requestListTestGridSessionActions :: ListTestGridSessionActions -> TestTree
requestListTestGridSessionActions =
  req
    "ListTestGridSessionActions"
    "fixture/ListTestGridSessionActions.yaml"

requestCreateTestGridProject :: CreateTestGridProject -> TestTree
requestCreateTestGridProject =
  req
    "CreateTestGridProject"
    "fixture/CreateTestGridProject.yaml"

requestListSamples :: ListSamples -> TestTree
requestListSamples =
  req
    "ListSamples"
    "fixture/ListSamples.yaml"

requestListTestGridSessionArtifacts :: ListTestGridSessionArtifacts -> TestTree
requestListTestGridSessionArtifacts =
  req
    "ListTestGridSessionArtifacts"
    "fixture/ListTestGridSessionArtifacts.yaml"

requestListNetworkProfiles :: ListNetworkProfiles -> TestTree
requestListNetworkProfiles =
  req
    "ListNetworkProfiles"
    "fixture/ListNetworkProfiles.yaml"

requestScheduleRun :: ScheduleRun -> TestTree
requestScheduleRun =
  req
    "ScheduleRun"
    "fixture/ScheduleRun.yaml"

requestUpdateNetworkProfile :: UpdateNetworkProfile -> TestTree
requestUpdateNetworkProfile =
  req
    "UpdateNetworkProfile"
    "fixture/UpdateNetworkProfile.yaml"

requestInstallToRemoteAccessSession :: InstallToRemoteAccessSession -> TestTree
requestInstallToRemoteAccessSession =
  req
    "InstallToRemoteAccessSession"
    "fixture/InstallToRemoteAccessSession.yaml"

requestDeleteNetworkProfile :: DeleteNetworkProfile -> TestTree
requestDeleteNetworkProfile =
  req
    "DeleteNetworkProfile"
    "fixture/DeleteNetworkProfile.yaml"

requestGetDevicePoolCompatibility :: GetDevicePoolCompatibility -> TestTree
requestGetDevicePoolCompatibility =
  req
    "GetDevicePoolCompatibility"
    "fixture/GetDevicePoolCompatibility.yaml"

requestCreateVPCEConfiguration :: CreateVPCEConfiguration -> TestTree
requestCreateVPCEConfiguration =
  req
    "CreateVPCEConfiguration"
    "fixture/CreateVPCEConfiguration.yaml"

requestListProjects :: ListProjects -> TestTree
requestListProjects =
  req
    "ListProjects"
    "fixture/ListProjects.yaml"

requestCreateProject :: CreateProject -> TestTree
requestCreateProject =
  req
    "CreateProject"
    "fixture/CreateProject.yaml"

requestCreateTestGridURL :: CreateTestGridURL -> TestTree
requestCreateTestGridURL =
  req
    "CreateTestGridURL"
    "fixture/CreateTestGridURL.yaml"

requestListOfferings :: ListOfferings -> TestTree
requestListOfferings =
  req
    "ListOfferings"
    "fixture/ListOfferings.yaml"

requestListDevices :: ListDevices -> TestTree
requestListDevices =
  req
    "ListDevices"
    "fixture/ListDevices.yaml"

requestStopRun :: StopRun -> TestTree
requestStopRun =
  req
    "StopRun"
    "fixture/StopRun.yaml"

requestCreateNetworkProfile :: CreateNetworkProfile -> TestTree
requestCreateNetworkProfile =
  req
    "CreateNetworkProfile"
    "fixture/CreateNetworkProfile.yaml"

requestGetJob :: GetJob -> TestTree
requestGetJob =
  req
    "GetJob"
    "fixture/GetJob.yaml"

requestCreateInstanceProfile :: CreateInstanceProfile -> TestTree
requestCreateInstanceProfile =
  req
    "CreateInstanceProfile"
    "fixture/CreateInstanceProfile.yaml"

requestGetDevice :: GetDevice -> TestTree
requestGetDevice =
  req
    "GetDevice"
    "fixture/GetDevice.yaml"

requestStopRemoteAccessSession :: StopRemoteAccessSession -> TestTree
requestStopRemoteAccessSession =
  req
    "StopRemoteAccessSession"
    "fixture/StopRemoteAccessSession.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListDeviceInstances :: ListDeviceInstances -> TestTree
requestListDeviceInstances =
  req
    "ListDeviceInstances"
    "fixture/ListDeviceInstances.yaml"

requestUpdateDeviceInstance :: UpdateDeviceInstance -> TestTree
requestUpdateDeviceInstance =
  req
    "UpdateDeviceInstance"
    "fixture/UpdateDeviceInstance.yaml"

requestCreateDevicePool :: CreateDevicePool -> TestTree
requestCreateDevicePool =
  req
    "CreateDevicePool"
    "fixture/CreateDevicePool.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListRuns :: ListRuns -> TestTree
requestListRuns =
  req
    "ListRuns"
    "fixture/ListRuns.yaml"

requestGetUpload :: GetUpload -> TestTree
requestGetUpload =
  req
    "GetUpload"
    "fixture/GetUpload.yaml"

requestGetTestGridProject :: GetTestGridProject -> TestTree
requestGetTestGridProject =
  req
    "GetTestGridProject"
    "fixture/GetTestGridProject.yaml"

requestListDevicePools :: ListDevicePools -> TestTree
requestListDevicePools =
  req
    "ListDevicePools"
    "fixture/ListDevicePools.yaml"

requestGetOfferingStatus :: GetOfferingStatus -> TestTree
requestGetOfferingStatus =
  req
    "GetOfferingStatus"
    "fixture/GetOfferingStatus.yaml"

requestDeleteUpload :: DeleteUpload -> TestTree
requestDeleteUpload =
  req
    "DeleteUpload"
    "fixture/DeleteUpload.yaml"

requestListUploads :: ListUploads -> TestTree
requestListUploads =
  req
    "ListUploads"
    "fixture/ListUploads.yaml"

requestCreateRemoteAccessSession :: CreateRemoteAccessSession -> TestTree
requestCreateRemoteAccessSession =
  req
    "CreateRemoteAccessSession"
    "fixture/CreateRemoteAccessSession.yaml"

requestUpdateUpload :: UpdateUpload -> TestTree
requestUpdateUpload =
  req
    "UpdateUpload"
    "fixture/UpdateUpload.yaml"

requestListTestGridProjects :: ListTestGridProjects -> TestTree
requestListTestGridProjects =
  req
    "ListTestGridProjects"
    "fixture/ListTestGridProjects.yaml"

requestListArtifacts :: ListArtifacts -> TestTree
requestListArtifacts =
  req
    "ListArtifacts"
    "fixture/ListArtifacts.yaml"

requestListRemoteAccessSessions :: ListRemoteAccessSessions -> TestTree
requestListRemoteAccessSessions =
  req
    "ListRemoteAccessSessions"
    "fixture/ListRemoteAccessSessions.yaml"

requestGetRun :: GetRun -> TestTree
requestGetRun =
  req
    "GetRun"
    "fixture/GetRun.yaml"

requestGetDeviceInstance :: GetDeviceInstance -> TestTree
requestGetDeviceInstance =
  req
    "GetDeviceInstance"
    "fixture/GetDeviceInstance.yaml"

requestListSuites :: ListSuites -> TestTree
requestListSuites =
  req
    "ListSuites"
    "fixture/ListSuites.yaml"

requestStopJob :: StopJob -> TestTree
requestStopJob =
  req
    "StopJob"
    "fixture/StopJob.yaml"

requestListTests :: ListTests -> TestTree
requestListTests =
  req
    "ListTests"
    "fixture/ListTests.yaml"

requestDeleteRemoteAccessSession :: DeleteRemoteAccessSession -> TestTree
requestDeleteRemoteAccessSession =
  req
    "DeleteRemoteAccessSession"
    "fixture/DeleteRemoteAccessSession.yaml"

requestDeleteProject :: DeleteProject -> TestTree
requestDeleteProject =
  req
    "DeleteProject"
    "fixture/DeleteProject.yaml"

requestGetInstanceProfile :: GetInstanceProfile -> TestTree
requestGetInstanceProfile =
  req
    "GetInstanceProfile"
    "fixture/GetInstanceProfile.yaml"

requestUpdateProject :: UpdateProject -> TestTree
requestUpdateProject =
  req
    "UpdateProject"
    "fixture/UpdateProject.yaml"

requestListTestGridSessions :: ListTestGridSessions -> TestTree
requestListTestGridSessions =
  req
    "ListTestGridSessions"
    "fixture/ListTestGridSessions.yaml"

requestListUniqueProblems :: ListUniqueProblems -> TestTree
requestListUniqueProblems =
  req
    "ListUniqueProblems"
    "fixture/ListUniqueProblems.yaml"

requestDeleteVPCEConfiguration :: DeleteVPCEConfiguration -> TestTree
requestDeleteVPCEConfiguration =
  req
    "DeleteVPCEConfiguration"
    "fixture/DeleteVPCEConfiguration.yaml"

requestUpdateVPCEConfiguration :: UpdateVPCEConfiguration -> TestTree
requestUpdateVPCEConfiguration =
  req
    "UpdateVPCEConfiguration"
    "fixture/UpdateVPCEConfiguration.yaml"

requestListVPCEConfigurations :: ListVPCEConfigurations -> TestTree
requestListVPCEConfigurations =
  req
    "ListVPCEConfigurations"
    "fixture/ListVPCEConfigurations.yaml"

requestGetVPCEConfiguration :: GetVPCEConfiguration -> TestTree
requestGetVPCEConfiguration =
  req
    "GetVPCEConfiguration"
    "fixture/GetVPCEConfiguration.yaml"

requestListJobs :: ListJobs -> TestTree
requestListJobs =
  req
    "ListJobs"
    "fixture/ListJobs.yaml"

requestGetTestGridSession :: GetTestGridSession -> TestTree
requestGetTestGridSession =
  req
    "GetTestGridSession"
    "fixture/GetTestGridSession.yaml"

requestPurchaseOffering :: PurchaseOffering -> TestTree
requestPurchaseOffering =
  req
    "PurchaseOffering"
    "fixture/PurchaseOffering.yaml"

requestGetProject :: GetProject -> TestTree
requestGetProject =
  req
    "GetProject"
    "fixture/GetProject.yaml"

requestListInstanceProfiles :: ListInstanceProfiles -> TestTree
requestListInstanceProfiles =
  req
    "ListInstanceProfiles"
    "fixture/ListInstanceProfiles.yaml"

requestGetNetworkProfile :: GetNetworkProfile -> TestTree
requestGetNetworkProfile =
  req
    "GetNetworkProfile"
    "fixture/GetNetworkProfile.yaml"

requestUpdateInstanceProfile :: UpdateInstanceProfile -> TestTree
requestUpdateInstanceProfile =
  req
    "UpdateInstanceProfile"
    "fixture/UpdateInstanceProfile.yaml"

requestDeleteInstanceProfile :: DeleteInstanceProfile -> TestTree
requestDeleteInstanceProfile =
  req
    "DeleteInstanceProfile"
    "fixture/DeleteInstanceProfile.yaml"

requestRenewOffering :: RenewOffering -> TestTree
requestRenewOffering =
  req
    "RenewOffering"
    "fixture/RenewOffering.yaml"

requestGetRemoteAccessSession :: GetRemoteAccessSession -> TestTree
requestGetRemoteAccessSession =
  req
    "GetRemoteAccessSession"
    "fixture/GetRemoteAccessSession.yaml"

requestGetSuite :: GetSuite -> TestTree
requestGetSuite =
  req
    "GetSuite"
    "fixture/GetSuite.yaml"

requestDeleteRun :: DeleteRun -> TestTree
requestDeleteRun =
  req
    "DeleteRun"
    "fixture/DeleteRun.yaml"

requestGetTest :: GetTest -> TestTree
requestGetTest =
  req
    "GetTest"
    "fixture/GetTest.yaml"

requestDeleteDevicePool :: DeleteDevicePool -> TestTree
requestDeleteDevicePool =
  req
    "DeleteDevicePool"
    "fixture/DeleteDevicePool.yaml"

requestListOfferingTransactions :: ListOfferingTransactions -> TestTree
requestListOfferingTransactions =
  req
    "ListOfferingTransactions"
    "fixture/ListOfferingTransactions.yaml"

requestUpdateDevicePool :: UpdateDevicePool -> TestTree
requestUpdateDevicePool =
  req
    "UpdateDevicePool"
    "fixture/UpdateDevicePool.yaml"

requestUpdateTestGridProject :: UpdateTestGridProject -> TestTree
requestUpdateTestGridProject =
  req
    "UpdateTestGridProject"
    "fixture/UpdateTestGridProject.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteTestGridProject :: DeleteTestGridProject -> TestTree
requestDeleteTestGridProject =
  req
    "DeleteTestGridProject"
    "fixture/DeleteTestGridProject.yaml"

requestListOfferingPromotions :: ListOfferingPromotions -> TestTree
requestListOfferingPromotions =
  req
    "ListOfferingPromotions"
    "fixture/ListOfferingPromotions.yaml"

requestGetDevicePool :: GetDevicePool -> TestTree
requestGetDevicePool =
  req
    "GetDevicePool"
    "fixture/GetDevicePool.yaml"

requestGetAccountSettings :: GetAccountSettings -> TestTree
requestGetAccountSettings =
  req
    "GetAccountSettings"
    "fixture/GetAccountSettings.yaml"

-- Responses

responseCreateUpload :: CreateUploadResponse -> TestTree
responseCreateUpload =
  res
    "CreateUploadResponse"
    "fixture/CreateUploadResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateUpload)

responseListTestGridSessionActions :: ListTestGridSessionActionsResponse -> TestTree
responseListTestGridSessionActions =
  res
    "ListTestGridSessionActionsResponse"
    "fixture/ListTestGridSessionActionsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListTestGridSessionActions)

responseCreateTestGridProject :: CreateTestGridProjectResponse -> TestTree
responseCreateTestGridProject =
  res
    "CreateTestGridProjectResponse"
    "fixture/CreateTestGridProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateTestGridProject)

responseListSamples :: ListSamplesResponse -> TestTree
responseListSamples =
  res
    "ListSamplesResponse"
    "fixture/ListSamplesResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListSamples)

responseListTestGridSessionArtifacts :: ListTestGridSessionArtifactsResponse -> TestTree
responseListTestGridSessionArtifacts =
  res
    "ListTestGridSessionArtifactsResponse"
    "fixture/ListTestGridSessionArtifactsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListTestGridSessionArtifacts)

responseListNetworkProfiles :: ListNetworkProfilesResponse -> TestTree
responseListNetworkProfiles =
  res
    "ListNetworkProfilesResponse"
    "fixture/ListNetworkProfilesResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListNetworkProfiles)

responseScheduleRun :: ScheduleRunResponse -> TestTree
responseScheduleRun =
  res
    "ScheduleRunResponse"
    "fixture/ScheduleRunResponse.proto"
    deviceFarm
    (Proxy :: Proxy ScheduleRun)

responseUpdateNetworkProfile :: UpdateNetworkProfileResponse -> TestTree
responseUpdateNetworkProfile =
  res
    "UpdateNetworkProfileResponse"
    "fixture/UpdateNetworkProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateNetworkProfile)

responseInstallToRemoteAccessSession :: InstallToRemoteAccessSessionResponse -> TestTree
responseInstallToRemoteAccessSession =
  res
    "InstallToRemoteAccessSessionResponse"
    "fixture/InstallToRemoteAccessSessionResponse.proto"
    deviceFarm
    (Proxy :: Proxy InstallToRemoteAccessSession)

responseDeleteNetworkProfile :: DeleteNetworkProfileResponse -> TestTree
responseDeleteNetworkProfile =
  res
    "DeleteNetworkProfileResponse"
    "fixture/DeleteNetworkProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteNetworkProfile)

responseGetDevicePoolCompatibility :: GetDevicePoolCompatibilityResponse -> TestTree
responseGetDevicePoolCompatibility =
  res
    "GetDevicePoolCompatibilityResponse"
    "fixture/GetDevicePoolCompatibilityResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetDevicePoolCompatibility)

responseCreateVPCEConfiguration :: CreateVPCEConfigurationResponse -> TestTree
responseCreateVPCEConfiguration =
  res
    "CreateVPCEConfigurationResponse"
    "fixture/CreateVPCEConfigurationResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateVPCEConfiguration)

responseListProjects :: ListProjectsResponse -> TestTree
responseListProjects =
  res
    "ListProjectsResponse"
    "fixture/ListProjectsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListProjects)

responseCreateProject :: CreateProjectResponse -> TestTree
responseCreateProject =
  res
    "CreateProjectResponse"
    "fixture/CreateProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateProject)

responseCreateTestGridURL :: CreateTestGridURLResponse -> TestTree
responseCreateTestGridURL =
  res
    "CreateTestGridURLResponse"
    "fixture/CreateTestGridURLResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateTestGridURL)

responseListOfferings :: ListOfferingsResponse -> TestTree
responseListOfferings =
  res
    "ListOfferingsResponse"
    "fixture/ListOfferingsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListOfferings)

responseListDevices :: ListDevicesResponse -> TestTree
responseListDevices =
  res
    "ListDevicesResponse"
    "fixture/ListDevicesResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListDevices)

responseStopRun :: StopRunResponse -> TestTree
responseStopRun =
  res
    "StopRunResponse"
    "fixture/StopRunResponse.proto"
    deviceFarm
    (Proxy :: Proxy StopRun)

responseCreateNetworkProfile :: CreateNetworkProfileResponse -> TestTree
responseCreateNetworkProfile =
  res
    "CreateNetworkProfileResponse"
    "fixture/CreateNetworkProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateNetworkProfile)

responseGetJob :: GetJobResponse -> TestTree
responseGetJob =
  res
    "GetJobResponse"
    "fixture/GetJobResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetJob)

responseCreateInstanceProfile :: CreateInstanceProfileResponse -> TestTree
responseCreateInstanceProfile =
  res
    "CreateInstanceProfileResponse"
    "fixture/CreateInstanceProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateInstanceProfile)

responseGetDevice :: GetDeviceResponse -> TestTree
responseGetDevice =
  res
    "GetDeviceResponse"
    "fixture/GetDeviceResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetDevice)

responseStopRemoteAccessSession :: StopRemoteAccessSessionResponse -> TestTree
responseStopRemoteAccessSession =
  res
    "StopRemoteAccessSessionResponse"
    "fixture/StopRemoteAccessSessionResponse.proto"
    deviceFarm
    (Proxy :: Proxy StopRemoteAccessSession)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    deviceFarm
    (Proxy :: Proxy UntagResource)

responseListDeviceInstances :: ListDeviceInstancesResponse -> TestTree
responseListDeviceInstances =
  res
    "ListDeviceInstancesResponse"
    "fixture/ListDeviceInstancesResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListDeviceInstances)

responseUpdateDeviceInstance :: UpdateDeviceInstanceResponse -> TestTree
responseUpdateDeviceInstance =
  res
    "UpdateDeviceInstanceResponse"
    "fixture/UpdateDeviceInstanceResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateDeviceInstance)

responseCreateDevicePool :: CreateDevicePoolResponse -> TestTree
responseCreateDevicePool =
  res
    "CreateDevicePoolResponse"
    "fixture/CreateDevicePoolResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateDevicePool)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    deviceFarm
    (Proxy :: Proxy TagResource)

responseListRuns :: ListRunsResponse -> TestTree
responseListRuns =
  res
    "ListRunsResponse"
    "fixture/ListRunsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListRuns)

responseGetUpload :: GetUploadResponse -> TestTree
responseGetUpload =
  res
    "GetUploadResponse"
    "fixture/GetUploadResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetUpload)

responseGetTestGridProject :: GetTestGridProjectResponse -> TestTree
responseGetTestGridProject =
  res
    "GetTestGridProjectResponse"
    "fixture/GetTestGridProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetTestGridProject)

responseListDevicePools :: ListDevicePoolsResponse -> TestTree
responseListDevicePools =
  res
    "ListDevicePoolsResponse"
    "fixture/ListDevicePoolsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListDevicePools)

responseGetOfferingStatus :: GetOfferingStatusResponse -> TestTree
responseGetOfferingStatus =
  res
    "GetOfferingStatusResponse"
    "fixture/GetOfferingStatusResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetOfferingStatus)

responseDeleteUpload :: DeleteUploadResponse -> TestTree
responseDeleteUpload =
  res
    "DeleteUploadResponse"
    "fixture/DeleteUploadResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteUpload)

responseListUploads :: ListUploadsResponse -> TestTree
responseListUploads =
  res
    "ListUploadsResponse"
    "fixture/ListUploadsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListUploads)

responseCreateRemoteAccessSession :: CreateRemoteAccessSessionResponse -> TestTree
responseCreateRemoteAccessSession =
  res
    "CreateRemoteAccessSessionResponse"
    "fixture/CreateRemoteAccessSessionResponse.proto"
    deviceFarm
    (Proxy :: Proxy CreateRemoteAccessSession)

responseUpdateUpload :: UpdateUploadResponse -> TestTree
responseUpdateUpload =
  res
    "UpdateUploadResponse"
    "fixture/UpdateUploadResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateUpload)

responseListTestGridProjects :: ListTestGridProjectsResponse -> TestTree
responseListTestGridProjects =
  res
    "ListTestGridProjectsResponse"
    "fixture/ListTestGridProjectsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListTestGridProjects)

responseListArtifacts :: ListArtifactsResponse -> TestTree
responseListArtifacts =
  res
    "ListArtifactsResponse"
    "fixture/ListArtifactsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListArtifacts)

responseListRemoteAccessSessions :: ListRemoteAccessSessionsResponse -> TestTree
responseListRemoteAccessSessions =
  res
    "ListRemoteAccessSessionsResponse"
    "fixture/ListRemoteAccessSessionsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListRemoteAccessSessions)

responseGetRun :: GetRunResponse -> TestTree
responseGetRun =
  res
    "GetRunResponse"
    "fixture/GetRunResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetRun)

responseGetDeviceInstance :: GetDeviceInstanceResponse -> TestTree
responseGetDeviceInstance =
  res
    "GetDeviceInstanceResponse"
    "fixture/GetDeviceInstanceResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetDeviceInstance)

responseListSuites :: ListSuitesResponse -> TestTree
responseListSuites =
  res
    "ListSuitesResponse"
    "fixture/ListSuitesResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListSuites)

responseStopJob :: StopJobResponse -> TestTree
responseStopJob =
  res
    "StopJobResponse"
    "fixture/StopJobResponse.proto"
    deviceFarm
    (Proxy :: Proxy StopJob)

responseListTests :: ListTestsResponse -> TestTree
responseListTests =
  res
    "ListTestsResponse"
    "fixture/ListTestsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListTests)

responseDeleteRemoteAccessSession :: DeleteRemoteAccessSessionResponse -> TestTree
responseDeleteRemoteAccessSession =
  res
    "DeleteRemoteAccessSessionResponse"
    "fixture/DeleteRemoteAccessSessionResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteRemoteAccessSession)

responseDeleteProject :: DeleteProjectResponse -> TestTree
responseDeleteProject =
  res
    "DeleteProjectResponse"
    "fixture/DeleteProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteProject)

responseGetInstanceProfile :: GetInstanceProfileResponse -> TestTree
responseGetInstanceProfile =
  res
    "GetInstanceProfileResponse"
    "fixture/GetInstanceProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetInstanceProfile)

responseUpdateProject :: UpdateProjectResponse -> TestTree
responseUpdateProject =
  res
    "UpdateProjectResponse"
    "fixture/UpdateProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateProject)

responseListTestGridSessions :: ListTestGridSessionsResponse -> TestTree
responseListTestGridSessions =
  res
    "ListTestGridSessionsResponse"
    "fixture/ListTestGridSessionsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListTestGridSessions)

responseListUniqueProblems :: ListUniqueProblemsResponse -> TestTree
responseListUniqueProblems =
  res
    "ListUniqueProblemsResponse"
    "fixture/ListUniqueProblemsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListUniqueProblems)

responseDeleteVPCEConfiguration :: DeleteVPCEConfigurationResponse -> TestTree
responseDeleteVPCEConfiguration =
  res
    "DeleteVPCEConfigurationResponse"
    "fixture/DeleteVPCEConfigurationResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteVPCEConfiguration)

responseUpdateVPCEConfiguration :: UpdateVPCEConfigurationResponse -> TestTree
responseUpdateVPCEConfiguration =
  res
    "UpdateVPCEConfigurationResponse"
    "fixture/UpdateVPCEConfigurationResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateVPCEConfiguration)

responseListVPCEConfigurations :: ListVPCEConfigurationsResponse -> TestTree
responseListVPCEConfigurations =
  res
    "ListVPCEConfigurationsResponse"
    "fixture/ListVPCEConfigurationsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListVPCEConfigurations)

responseGetVPCEConfiguration :: GetVPCEConfigurationResponse -> TestTree
responseGetVPCEConfiguration =
  res
    "GetVPCEConfigurationResponse"
    "fixture/GetVPCEConfigurationResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetVPCEConfiguration)

responseListJobs :: ListJobsResponse -> TestTree
responseListJobs =
  res
    "ListJobsResponse"
    "fixture/ListJobsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListJobs)

responseGetTestGridSession :: GetTestGridSessionResponse -> TestTree
responseGetTestGridSession =
  res
    "GetTestGridSessionResponse"
    "fixture/GetTestGridSessionResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetTestGridSession)

responsePurchaseOffering :: PurchaseOfferingResponse -> TestTree
responsePurchaseOffering =
  res
    "PurchaseOfferingResponse"
    "fixture/PurchaseOfferingResponse.proto"
    deviceFarm
    (Proxy :: Proxy PurchaseOffering)

responseGetProject :: GetProjectResponse -> TestTree
responseGetProject =
  res
    "GetProjectResponse"
    "fixture/GetProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetProject)

responseListInstanceProfiles :: ListInstanceProfilesResponse -> TestTree
responseListInstanceProfiles =
  res
    "ListInstanceProfilesResponse"
    "fixture/ListInstanceProfilesResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListInstanceProfiles)

responseGetNetworkProfile :: GetNetworkProfileResponse -> TestTree
responseGetNetworkProfile =
  res
    "GetNetworkProfileResponse"
    "fixture/GetNetworkProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetNetworkProfile)

responseUpdateInstanceProfile :: UpdateInstanceProfileResponse -> TestTree
responseUpdateInstanceProfile =
  res
    "UpdateInstanceProfileResponse"
    "fixture/UpdateInstanceProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateInstanceProfile)

responseDeleteInstanceProfile :: DeleteInstanceProfileResponse -> TestTree
responseDeleteInstanceProfile =
  res
    "DeleteInstanceProfileResponse"
    "fixture/DeleteInstanceProfileResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteInstanceProfile)

responseRenewOffering :: RenewOfferingResponse -> TestTree
responseRenewOffering =
  res
    "RenewOfferingResponse"
    "fixture/RenewOfferingResponse.proto"
    deviceFarm
    (Proxy :: Proxy RenewOffering)

responseGetRemoteAccessSession :: GetRemoteAccessSessionResponse -> TestTree
responseGetRemoteAccessSession =
  res
    "GetRemoteAccessSessionResponse"
    "fixture/GetRemoteAccessSessionResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetRemoteAccessSession)

responseGetSuite :: GetSuiteResponse -> TestTree
responseGetSuite =
  res
    "GetSuiteResponse"
    "fixture/GetSuiteResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetSuite)

responseDeleteRun :: DeleteRunResponse -> TestTree
responseDeleteRun =
  res
    "DeleteRunResponse"
    "fixture/DeleteRunResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteRun)

responseGetTest :: GetTestResponse -> TestTree
responseGetTest =
  res
    "GetTestResponse"
    "fixture/GetTestResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetTest)

responseDeleteDevicePool :: DeleteDevicePoolResponse -> TestTree
responseDeleteDevicePool =
  res
    "DeleteDevicePoolResponse"
    "fixture/DeleteDevicePoolResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteDevicePool)

responseListOfferingTransactions :: ListOfferingTransactionsResponse -> TestTree
responseListOfferingTransactions =
  res
    "ListOfferingTransactionsResponse"
    "fixture/ListOfferingTransactionsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListOfferingTransactions)

responseUpdateDevicePool :: UpdateDevicePoolResponse -> TestTree
responseUpdateDevicePool =
  res
    "UpdateDevicePoolResponse"
    "fixture/UpdateDevicePoolResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateDevicePool)

responseUpdateTestGridProject :: UpdateTestGridProjectResponse -> TestTree
responseUpdateTestGridProject =
  res
    "UpdateTestGridProjectResponse"
    "fixture/UpdateTestGridProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy UpdateTestGridProject)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListTagsForResource)

responseDeleteTestGridProject :: DeleteTestGridProjectResponse -> TestTree
responseDeleteTestGridProject =
  res
    "DeleteTestGridProjectResponse"
    "fixture/DeleteTestGridProjectResponse.proto"
    deviceFarm
    (Proxy :: Proxy DeleteTestGridProject)

responseListOfferingPromotions :: ListOfferingPromotionsResponse -> TestTree
responseListOfferingPromotions =
  res
    "ListOfferingPromotionsResponse"
    "fixture/ListOfferingPromotionsResponse.proto"
    deviceFarm
    (Proxy :: Proxy ListOfferingPromotions)

responseGetDevicePool :: GetDevicePoolResponse -> TestTree
responseGetDevicePool =
  res
    "GetDevicePoolResponse"
    "fixture/GetDevicePoolResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetDevicePool)

responseGetAccountSettings :: GetAccountSettingsResponse -> TestTree
responseGetAccountSettings =
  res
    "GetAccountSettingsResponse"
    "fixture/GetAccountSettingsResponse.proto"
    deviceFarm
    (Proxy :: Proxy GetAccountSettings)

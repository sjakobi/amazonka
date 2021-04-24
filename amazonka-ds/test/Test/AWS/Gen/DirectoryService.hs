{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.DirectoryService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.DirectoryService where

import Data.Proxy
import Network.AWS.DirectoryService
import Test.AWS.DirectoryService.Internal
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
--         [ requestConnectDirectory $
--             connectDirectory
--
--         , requestRejectSharedDirectory $
--             rejectSharedDirectory
--
--         , requestDisableRadius $
--             disableRadius
--
--         , requestRegisterEventTopic $
--             registerEventTopic
--
--         , requestShareDirectory $
--             shareDirectory
--
--         , requestAddRegion $
--             addRegion
--
--         , requestListIPRoutes $
--             listIPRoutes
--
--         , requestEnableRadius $
--             enableRadius
--
--         , requestListSchemaExtensions $
--             listSchemaExtensions
--
--         , requestRemoveRegion $
--             removeRegion
--
--         , requestDeleteLogSubscription $
--             deleteLogSubscription
--
--         , requestCancelSchemaExtension $
--             cancelSchemaExtension
--
--         , requestEnableSSO $
--             enableSSO
--
--         , requestCreateConditionalForwarder $
--             createConditionalForwarder
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestEnableLDAPS $
--             enableLDAPS
--
--         , requestDeleteConditionalForwarder $
--             deleteConditionalForwarder
--
--         , requestDescribeSharedDirectories $
--             describeSharedDirectories
--
--         , requestUpdateConditionalForwarder $
--             updateConditionalForwarder
--
--         , requestVerifyTrust $
--             verifyTrust
--
--         , requestDescribeCertificate $
--             describeCertificate
--
--         , requestCreateTrust $
--             createTrust
--
--         , requestDeleteDirectory $
--             deleteDirectory
--
--         , requestDisableClientAuthentication $
--             disableClientAuthentication
--
--         , requestCreateMicrosoftAD $
--             createMicrosoftAD
--
--         , requestDeleteSnapshot $
--             deleteSnapshot
--
--         , requestRemoveIPRoutes $
--             removeIPRoutes
--
--         , requestUpdateTrust $
--             updateTrust
--
--         , requestDeleteTrust $
--             deleteTrust
--
--         , requestCreateDirectory $
--             createDirectory
--
--         , requestRestoreFromSnapshot $
--             restoreFromSnapshot
--
--         , requestDescribeDomainControllers $
--             describeDomainControllers
--
--         , requestDescribeTrusts $
--             describeTrusts
--
--         , requestDescribeSnapshots $
--             describeSnapshots
--
--         , requestUnshareDirectory $
--             unshareDirectory
--
--         , requestRegisterCertificate $
--             registerCertificate
--
--         , requestGetSnapshotLimits $
--             getSnapshotLimits
--
--         , requestUpdateNumberOfDomainControllers $
--             updateNumberOfDomainControllers
--
--         , requestListCertificates $
--             listCertificates
--
--         , requestDescribeConditionalForwarders $
--             describeConditionalForwarders
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestGetDirectoryLimits $
--             getDirectoryLimits
--
--         , requestUpdateRadius $
--             updateRadius
--
--         , requestDisableLDAPS $
--             disableLDAPS
--
--         , requestListLogSubscriptions $
--             listLogSubscriptions
--
--         , requestDescribeRegions $
--             describeRegions
--
--         , requestDisableSSO $
--             disableSSO
--
--         , requestCreateLogSubscription $
--             createLogSubscription
--
--         , requestResetUserPassword $
--             resetUserPassword
--
--         , requestDescribeEventTopics $
--             describeEventTopics
--
--         , requestCreateComputer $
--             createComputer
--
--         , requestAcceptSharedDirectory $
--             acceptSharedDirectory
--
--         , requestEnableClientAuthentication $
--             enableClientAuthentication
--
--         , requestCreateSnapshot $
--             createSnapshot
--
--         , requestStartSchemaExtension $
--             startSchemaExtension
--
--         , requestDeregisterEventTopic $
--             deregisterEventTopic
--
--         , requestDeregisterCertificate $
--             deregisterCertificate
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestCreateAlias $
--             createAlias
--
--         , requestAddIPRoutes $
--             addIPRoutes
--
--         , requestDescribeDirectories $
--             describeDirectories
--
--         , requestDescribeLDAPSSettings $
--             describeLDAPSSettings
--
--           ]

--     , testGroup "response"
--         [ responseConnectDirectory $
--             connectDirectoryResponse
--
--         , responseRejectSharedDirectory $
--             rejectSharedDirectoryResponse
--
--         , responseDisableRadius $
--             disableRadiusResponse
--
--         , responseRegisterEventTopic $
--             registerEventTopicResponse
--
--         , responseShareDirectory $
--             shareDirectoryResponse
--
--         , responseAddRegion $
--             addRegionResponse
--
--         , responseListIPRoutes $
--             listIPRoutesResponse
--
--         , responseEnableRadius $
--             enableRadiusResponse
--
--         , responseListSchemaExtensions $
--             listSchemaExtensionsResponse
--
--         , responseRemoveRegion $
--             removeRegionResponse
--
--         , responseDeleteLogSubscription $
--             deleteLogSubscriptionResponse
--
--         , responseCancelSchemaExtension $
--             cancelSchemaExtensionResponse
--
--         , responseEnableSSO $
--             enableSSOResponse
--
--         , responseCreateConditionalForwarder $
--             createConditionalForwarderResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseEnableLDAPS $
--             enableLDAPSResponse
--
--         , responseDeleteConditionalForwarder $
--             deleteConditionalForwarderResponse
--
--         , responseDescribeSharedDirectories $
--             describeSharedDirectoriesResponse
--
--         , responseUpdateConditionalForwarder $
--             updateConditionalForwarderResponse
--
--         , responseVerifyTrust $
--             verifyTrustResponse
--
--         , responseDescribeCertificate $
--             describeCertificateResponse
--
--         , responseCreateTrust $
--             createTrustResponse
--
--         , responseDeleteDirectory $
--             deleteDirectoryResponse
--
--         , responseDisableClientAuthentication $
--             disableClientAuthenticationResponse
--
--         , responseCreateMicrosoftAD $
--             createMicrosoftADResponse
--
--         , responseDeleteSnapshot $
--             deleteSnapshotResponse
--
--         , responseRemoveIPRoutes $
--             removeIPRoutesResponse
--
--         , responseUpdateTrust $
--             updateTrustResponse
--
--         , responseDeleteTrust $
--             deleteTrustResponse
--
--         , responseCreateDirectory $
--             createDirectoryResponse
--
--         , responseRestoreFromSnapshot $
--             restoreFromSnapshotResponse
--
--         , responseDescribeDomainControllers $
--             describeDomainControllersResponse
--
--         , responseDescribeTrusts $
--             describeTrustsResponse
--
--         , responseDescribeSnapshots $
--             describeSnapshotsResponse
--
--         , responseUnshareDirectory $
--             unshareDirectoryResponse
--
--         , responseRegisterCertificate $
--             registerCertificateResponse
--
--         , responseGetSnapshotLimits $
--             getSnapshotLimitsResponse
--
--         , responseUpdateNumberOfDomainControllers $
--             updateNumberOfDomainControllersResponse
--
--         , responseListCertificates $
--             listCertificatesResponse
--
--         , responseDescribeConditionalForwarders $
--             describeConditionalForwardersResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseGetDirectoryLimits $
--             getDirectoryLimitsResponse
--
--         , responseUpdateRadius $
--             updateRadiusResponse
--
--         , responseDisableLDAPS $
--             disableLDAPSResponse
--
--         , responseListLogSubscriptions $
--             listLogSubscriptionsResponse
--
--         , responseDescribeRegions $
--             describeRegionsResponse
--
--         , responseDisableSSO $
--             disableSSOResponse
--
--         , responseCreateLogSubscription $
--             createLogSubscriptionResponse
--
--         , responseResetUserPassword $
--             resetUserPasswordResponse
--
--         , responseDescribeEventTopics $
--             describeEventTopicsResponse
--
--         , responseCreateComputer $
--             createComputerResponse
--
--         , responseAcceptSharedDirectory $
--             acceptSharedDirectoryResponse
--
--         , responseEnableClientAuthentication $
--             enableClientAuthenticationResponse
--
--         , responseCreateSnapshot $
--             createSnapshotResponse
--
--         , responseStartSchemaExtension $
--             startSchemaExtensionResponse
--
--         , responseDeregisterEventTopic $
--             deregisterEventTopicResponse
--
--         , responseDeregisterCertificate $
--             deregisterCertificateResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseCreateAlias $
--             createAliasResponse
--
--         , responseAddIPRoutes $
--             addIPRoutesResponse
--
--         , responseDescribeDirectories $
--             describeDirectoriesResponse
--
--         , responseDescribeLDAPSSettings $
--             describeLDAPSSettingsResponse
--
--           ]
--     ]

-- Requests

requestConnectDirectory :: ConnectDirectory -> TestTree
requestConnectDirectory =
  req
    "ConnectDirectory"
    "fixture/ConnectDirectory.yaml"

requestRejectSharedDirectory :: RejectSharedDirectory -> TestTree
requestRejectSharedDirectory =
  req
    "RejectSharedDirectory"
    "fixture/RejectSharedDirectory.yaml"

requestDisableRadius :: DisableRadius -> TestTree
requestDisableRadius =
  req
    "DisableRadius"
    "fixture/DisableRadius.yaml"

requestRegisterEventTopic :: RegisterEventTopic -> TestTree
requestRegisterEventTopic =
  req
    "RegisterEventTopic"
    "fixture/RegisterEventTopic.yaml"

requestShareDirectory :: ShareDirectory -> TestTree
requestShareDirectory =
  req
    "ShareDirectory"
    "fixture/ShareDirectory.yaml"

requestAddRegion :: AddRegion -> TestTree
requestAddRegion =
  req
    "AddRegion"
    "fixture/AddRegion.yaml"

requestListIPRoutes :: ListIPRoutes -> TestTree
requestListIPRoutes =
  req
    "ListIPRoutes"
    "fixture/ListIPRoutes.yaml"

requestEnableRadius :: EnableRadius -> TestTree
requestEnableRadius =
  req
    "EnableRadius"
    "fixture/EnableRadius.yaml"

requestListSchemaExtensions :: ListSchemaExtensions -> TestTree
requestListSchemaExtensions =
  req
    "ListSchemaExtensions"
    "fixture/ListSchemaExtensions.yaml"

requestRemoveRegion :: RemoveRegion -> TestTree
requestRemoveRegion =
  req
    "RemoveRegion"
    "fixture/RemoveRegion.yaml"

requestDeleteLogSubscription :: DeleteLogSubscription -> TestTree
requestDeleteLogSubscription =
  req
    "DeleteLogSubscription"
    "fixture/DeleteLogSubscription.yaml"

requestCancelSchemaExtension :: CancelSchemaExtension -> TestTree
requestCancelSchemaExtension =
  req
    "CancelSchemaExtension"
    "fixture/CancelSchemaExtension.yaml"

requestEnableSSO :: EnableSSO -> TestTree
requestEnableSSO =
  req
    "EnableSSO"
    "fixture/EnableSSO.yaml"

requestCreateConditionalForwarder :: CreateConditionalForwarder -> TestTree
requestCreateConditionalForwarder =
  req
    "CreateConditionalForwarder"
    "fixture/CreateConditionalForwarder.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestEnableLDAPS :: EnableLDAPS -> TestTree
requestEnableLDAPS =
  req
    "EnableLDAPS"
    "fixture/EnableLDAPS.yaml"

requestDeleteConditionalForwarder :: DeleteConditionalForwarder -> TestTree
requestDeleteConditionalForwarder =
  req
    "DeleteConditionalForwarder"
    "fixture/DeleteConditionalForwarder.yaml"

requestDescribeSharedDirectories :: DescribeSharedDirectories -> TestTree
requestDescribeSharedDirectories =
  req
    "DescribeSharedDirectories"
    "fixture/DescribeSharedDirectories.yaml"

requestUpdateConditionalForwarder :: UpdateConditionalForwarder -> TestTree
requestUpdateConditionalForwarder =
  req
    "UpdateConditionalForwarder"
    "fixture/UpdateConditionalForwarder.yaml"

requestVerifyTrust :: VerifyTrust -> TestTree
requestVerifyTrust =
  req
    "VerifyTrust"
    "fixture/VerifyTrust.yaml"

requestDescribeCertificate :: DescribeCertificate -> TestTree
requestDescribeCertificate =
  req
    "DescribeCertificate"
    "fixture/DescribeCertificate.yaml"

requestCreateTrust :: CreateTrust -> TestTree
requestCreateTrust =
  req
    "CreateTrust"
    "fixture/CreateTrust.yaml"

requestDeleteDirectory :: DeleteDirectory -> TestTree
requestDeleteDirectory =
  req
    "DeleteDirectory"
    "fixture/DeleteDirectory.yaml"

requestDisableClientAuthentication :: DisableClientAuthentication -> TestTree
requestDisableClientAuthentication =
  req
    "DisableClientAuthentication"
    "fixture/DisableClientAuthentication.yaml"

requestCreateMicrosoftAD :: CreateMicrosoftAD -> TestTree
requestCreateMicrosoftAD =
  req
    "CreateMicrosoftAD"
    "fixture/CreateMicrosoftAD.yaml"

requestDeleteSnapshot :: DeleteSnapshot -> TestTree
requestDeleteSnapshot =
  req
    "DeleteSnapshot"
    "fixture/DeleteSnapshot.yaml"

requestRemoveIPRoutes :: RemoveIPRoutes -> TestTree
requestRemoveIPRoutes =
  req
    "RemoveIPRoutes"
    "fixture/RemoveIPRoutes.yaml"

requestUpdateTrust :: UpdateTrust -> TestTree
requestUpdateTrust =
  req
    "UpdateTrust"
    "fixture/UpdateTrust.yaml"

requestDeleteTrust :: DeleteTrust -> TestTree
requestDeleteTrust =
  req
    "DeleteTrust"
    "fixture/DeleteTrust.yaml"

requestCreateDirectory :: CreateDirectory -> TestTree
requestCreateDirectory =
  req
    "CreateDirectory"
    "fixture/CreateDirectory.yaml"

requestRestoreFromSnapshot :: RestoreFromSnapshot -> TestTree
requestRestoreFromSnapshot =
  req
    "RestoreFromSnapshot"
    "fixture/RestoreFromSnapshot.yaml"

requestDescribeDomainControllers :: DescribeDomainControllers -> TestTree
requestDescribeDomainControllers =
  req
    "DescribeDomainControllers"
    "fixture/DescribeDomainControllers.yaml"

requestDescribeTrusts :: DescribeTrusts -> TestTree
requestDescribeTrusts =
  req
    "DescribeTrusts"
    "fixture/DescribeTrusts.yaml"

requestDescribeSnapshots :: DescribeSnapshots -> TestTree
requestDescribeSnapshots =
  req
    "DescribeSnapshots"
    "fixture/DescribeSnapshots.yaml"

requestUnshareDirectory :: UnshareDirectory -> TestTree
requestUnshareDirectory =
  req
    "UnshareDirectory"
    "fixture/UnshareDirectory.yaml"

requestRegisterCertificate :: RegisterCertificate -> TestTree
requestRegisterCertificate =
  req
    "RegisterCertificate"
    "fixture/RegisterCertificate.yaml"

requestGetSnapshotLimits :: GetSnapshotLimits -> TestTree
requestGetSnapshotLimits =
  req
    "GetSnapshotLimits"
    "fixture/GetSnapshotLimits.yaml"

requestUpdateNumberOfDomainControllers :: UpdateNumberOfDomainControllers -> TestTree
requestUpdateNumberOfDomainControllers =
  req
    "UpdateNumberOfDomainControllers"
    "fixture/UpdateNumberOfDomainControllers.yaml"

requestListCertificates :: ListCertificates -> TestTree
requestListCertificates =
  req
    "ListCertificates"
    "fixture/ListCertificates.yaml"

requestDescribeConditionalForwarders :: DescribeConditionalForwarders -> TestTree
requestDescribeConditionalForwarders =
  req
    "DescribeConditionalForwarders"
    "fixture/DescribeConditionalForwarders.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestGetDirectoryLimits :: GetDirectoryLimits -> TestTree
requestGetDirectoryLimits =
  req
    "GetDirectoryLimits"
    "fixture/GetDirectoryLimits.yaml"

requestUpdateRadius :: UpdateRadius -> TestTree
requestUpdateRadius =
  req
    "UpdateRadius"
    "fixture/UpdateRadius.yaml"

requestDisableLDAPS :: DisableLDAPS -> TestTree
requestDisableLDAPS =
  req
    "DisableLDAPS"
    "fixture/DisableLDAPS.yaml"

requestListLogSubscriptions :: ListLogSubscriptions -> TestTree
requestListLogSubscriptions =
  req
    "ListLogSubscriptions"
    "fixture/ListLogSubscriptions.yaml"

requestDescribeRegions :: DescribeRegions -> TestTree
requestDescribeRegions =
  req
    "DescribeRegions"
    "fixture/DescribeRegions.yaml"

requestDisableSSO :: DisableSSO -> TestTree
requestDisableSSO =
  req
    "DisableSSO"
    "fixture/DisableSSO.yaml"

requestCreateLogSubscription :: CreateLogSubscription -> TestTree
requestCreateLogSubscription =
  req
    "CreateLogSubscription"
    "fixture/CreateLogSubscription.yaml"

requestResetUserPassword :: ResetUserPassword -> TestTree
requestResetUserPassword =
  req
    "ResetUserPassword"
    "fixture/ResetUserPassword.yaml"

requestDescribeEventTopics :: DescribeEventTopics -> TestTree
requestDescribeEventTopics =
  req
    "DescribeEventTopics"
    "fixture/DescribeEventTopics.yaml"

requestCreateComputer :: CreateComputer -> TestTree
requestCreateComputer =
  req
    "CreateComputer"
    "fixture/CreateComputer.yaml"

requestAcceptSharedDirectory :: AcceptSharedDirectory -> TestTree
requestAcceptSharedDirectory =
  req
    "AcceptSharedDirectory"
    "fixture/AcceptSharedDirectory.yaml"

requestEnableClientAuthentication :: EnableClientAuthentication -> TestTree
requestEnableClientAuthentication =
  req
    "EnableClientAuthentication"
    "fixture/EnableClientAuthentication.yaml"

requestCreateSnapshot :: CreateSnapshot -> TestTree
requestCreateSnapshot =
  req
    "CreateSnapshot"
    "fixture/CreateSnapshot.yaml"

requestStartSchemaExtension :: StartSchemaExtension -> TestTree
requestStartSchemaExtension =
  req
    "StartSchemaExtension"
    "fixture/StartSchemaExtension.yaml"

requestDeregisterEventTopic :: DeregisterEventTopic -> TestTree
requestDeregisterEventTopic =
  req
    "DeregisterEventTopic"
    "fixture/DeregisterEventTopic.yaml"

requestDeregisterCertificate :: DeregisterCertificate -> TestTree
requestDeregisterCertificate =
  req
    "DeregisterCertificate"
    "fixture/DeregisterCertificate.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias =
  req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

requestAddIPRoutes :: AddIPRoutes -> TestTree
requestAddIPRoutes =
  req
    "AddIPRoutes"
    "fixture/AddIPRoutes.yaml"

requestDescribeDirectories :: DescribeDirectories -> TestTree
requestDescribeDirectories =
  req
    "DescribeDirectories"
    "fixture/DescribeDirectories.yaml"

requestDescribeLDAPSSettings :: DescribeLDAPSSettings -> TestTree
requestDescribeLDAPSSettings =
  req
    "DescribeLDAPSSettings"
    "fixture/DescribeLDAPSSettings.yaml"

-- Responses

responseConnectDirectory :: ConnectDirectoryResponse -> TestTree
responseConnectDirectory =
  res
    "ConnectDirectoryResponse"
    "fixture/ConnectDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy ConnectDirectory)

responseRejectSharedDirectory :: RejectSharedDirectoryResponse -> TestTree
responseRejectSharedDirectory =
  res
    "RejectSharedDirectoryResponse"
    "fixture/RejectSharedDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy RejectSharedDirectory)

responseDisableRadius :: DisableRadiusResponse -> TestTree
responseDisableRadius =
  res
    "DisableRadiusResponse"
    "fixture/DisableRadiusResponse.proto"
    directoryService
    (Proxy :: Proxy DisableRadius)

responseRegisterEventTopic :: RegisterEventTopicResponse -> TestTree
responseRegisterEventTopic =
  res
    "RegisterEventTopicResponse"
    "fixture/RegisterEventTopicResponse.proto"
    directoryService
    (Proxy :: Proxy RegisterEventTopic)

responseShareDirectory :: ShareDirectoryResponse -> TestTree
responseShareDirectory =
  res
    "ShareDirectoryResponse"
    "fixture/ShareDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy ShareDirectory)

responseAddRegion :: AddRegionResponse -> TestTree
responseAddRegion =
  res
    "AddRegionResponse"
    "fixture/AddRegionResponse.proto"
    directoryService
    (Proxy :: Proxy AddRegion)

responseListIPRoutes :: ListIPRoutesResponse -> TestTree
responseListIPRoutes =
  res
    "ListIPRoutesResponse"
    "fixture/ListIPRoutesResponse.proto"
    directoryService
    (Proxy :: Proxy ListIPRoutes)

responseEnableRadius :: EnableRadiusResponse -> TestTree
responseEnableRadius =
  res
    "EnableRadiusResponse"
    "fixture/EnableRadiusResponse.proto"
    directoryService
    (Proxy :: Proxy EnableRadius)

responseListSchemaExtensions :: ListSchemaExtensionsResponse -> TestTree
responseListSchemaExtensions =
  res
    "ListSchemaExtensionsResponse"
    "fixture/ListSchemaExtensionsResponse.proto"
    directoryService
    (Proxy :: Proxy ListSchemaExtensions)

responseRemoveRegion :: RemoveRegionResponse -> TestTree
responseRemoveRegion =
  res
    "RemoveRegionResponse"
    "fixture/RemoveRegionResponse.proto"
    directoryService
    (Proxy :: Proxy RemoveRegion)

responseDeleteLogSubscription :: DeleteLogSubscriptionResponse -> TestTree
responseDeleteLogSubscription =
  res
    "DeleteLogSubscriptionResponse"
    "fixture/DeleteLogSubscriptionResponse.proto"
    directoryService
    (Proxy :: Proxy DeleteLogSubscription)

responseCancelSchemaExtension :: CancelSchemaExtensionResponse -> TestTree
responseCancelSchemaExtension =
  res
    "CancelSchemaExtensionResponse"
    "fixture/CancelSchemaExtensionResponse.proto"
    directoryService
    (Proxy :: Proxy CancelSchemaExtension)

responseEnableSSO :: EnableSSOResponse -> TestTree
responseEnableSSO =
  res
    "EnableSSOResponse"
    "fixture/EnableSSOResponse.proto"
    directoryService
    (Proxy :: Proxy EnableSSO)

responseCreateConditionalForwarder :: CreateConditionalForwarderResponse -> TestTree
responseCreateConditionalForwarder =
  res
    "CreateConditionalForwarderResponse"
    "fixture/CreateConditionalForwarderResponse.proto"
    directoryService
    (Proxy :: Proxy CreateConditionalForwarder)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    directoryService
    (Proxy :: Proxy RemoveTagsFromResource)

responseEnableLDAPS :: EnableLDAPSResponse -> TestTree
responseEnableLDAPS =
  res
    "EnableLDAPSResponse"
    "fixture/EnableLDAPSResponse.proto"
    directoryService
    (Proxy :: Proxy EnableLDAPS)

responseDeleteConditionalForwarder :: DeleteConditionalForwarderResponse -> TestTree
responseDeleteConditionalForwarder =
  res
    "DeleteConditionalForwarderResponse"
    "fixture/DeleteConditionalForwarderResponse.proto"
    directoryService
    (Proxy :: Proxy DeleteConditionalForwarder)

responseDescribeSharedDirectories :: DescribeSharedDirectoriesResponse -> TestTree
responseDescribeSharedDirectories =
  res
    "DescribeSharedDirectoriesResponse"
    "fixture/DescribeSharedDirectoriesResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeSharedDirectories)

responseUpdateConditionalForwarder :: UpdateConditionalForwarderResponse -> TestTree
responseUpdateConditionalForwarder =
  res
    "UpdateConditionalForwarderResponse"
    "fixture/UpdateConditionalForwarderResponse.proto"
    directoryService
    (Proxy :: Proxy UpdateConditionalForwarder)

responseVerifyTrust :: VerifyTrustResponse -> TestTree
responseVerifyTrust =
  res
    "VerifyTrustResponse"
    "fixture/VerifyTrustResponse.proto"
    directoryService
    (Proxy :: Proxy VerifyTrust)

responseDescribeCertificate :: DescribeCertificateResponse -> TestTree
responseDescribeCertificate =
  res
    "DescribeCertificateResponse"
    "fixture/DescribeCertificateResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeCertificate)

responseCreateTrust :: CreateTrustResponse -> TestTree
responseCreateTrust =
  res
    "CreateTrustResponse"
    "fixture/CreateTrustResponse.proto"
    directoryService
    (Proxy :: Proxy CreateTrust)

responseDeleteDirectory :: DeleteDirectoryResponse -> TestTree
responseDeleteDirectory =
  res
    "DeleteDirectoryResponse"
    "fixture/DeleteDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy DeleteDirectory)

responseDisableClientAuthentication :: DisableClientAuthenticationResponse -> TestTree
responseDisableClientAuthentication =
  res
    "DisableClientAuthenticationResponse"
    "fixture/DisableClientAuthenticationResponse.proto"
    directoryService
    (Proxy :: Proxy DisableClientAuthentication)

responseCreateMicrosoftAD :: CreateMicrosoftADResponse -> TestTree
responseCreateMicrosoftAD =
  res
    "CreateMicrosoftADResponse"
    "fixture/CreateMicrosoftADResponse.proto"
    directoryService
    (Proxy :: Proxy CreateMicrosoftAD)

responseDeleteSnapshot :: DeleteSnapshotResponse -> TestTree
responseDeleteSnapshot =
  res
    "DeleteSnapshotResponse"
    "fixture/DeleteSnapshotResponse.proto"
    directoryService
    (Proxy :: Proxy DeleteSnapshot)

responseRemoveIPRoutes :: RemoveIPRoutesResponse -> TestTree
responseRemoveIPRoutes =
  res
    "RemoveIPRoutesResponse"
    "fixture/RemoveIPRoutesResponse.proto"
    directoryService
    (Proxy :: Proxy RemoveIPRoutes)

responseUpdateTrust :: UpdateTrustResponse -> TestTree
responseUpdateTrust =
  res
    "UpdateTrustResponse"
    "fixture/UpdateTrustResponse.proto"
    directoryService
    (Proxy :: Proxy UpdateTrust)

responseDeleteTrust :: DeleteTrustResponse -> TestTree
responseDeleteTrust =
  res
    "DeleteTrustResponse"
    "fixture/DeleteTrustResponse.proto"
    directoryService
    (Proxy :: Proxy DeleteTrust)

responseCreateDirectory :: CreateDirectoryResponse -> TestTree
responseCreateDirectory =
  res
    "CreateDirectoryResponse"
    "fixture/CreateDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy CreateDirectory)

responseRestoreFromSnapshot :: RestoreFromSnapshotResponse -> TestTree
responseRestoreFromSnapshot =
  res
    "RestoreFromSnapshotResponse"
    "fixture/RestoreFromSnapshotResponse.proto"
    directoryService
    (Proxy :: Proxy RestoreFromSnapshot)

responseDescribeDomainControllers :: DescribeDomainControllersResponse -> TestTree
responseDescribeDomainControllers =
  res
    "DescribeDomainControllersResponse"
    "fixture/DescribeDomainControllersResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeDomainControllers)

responseDescribeTrusts :: DescribeTrustsResponse -> TestTree
responseDescribeTrusts =
  res
    "DescribeTrustsResponse"
    "fixture/DescribeTrustsResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeTrusts)

responseDescribeSnapshots :: DescribeSnapshotsResponse -> TestTree
responseDescribeSnapshots =
  res
    "DescribeSnapshotsResponse"
    "fixture/DescribeSnapshotsResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeSnapshots)

responseUnshareDirectory :: UnshareDirectoryResponse -> TestTree
responseUnshareDirectory =
  res
    "UnshareDirectoryResponse"
    "fixture/UnshareDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy UnshareDirectory)

responseRegisterCertificate :: RegisterCertificateResponse -> TestTree
responseRegisterCertificate =
  res
    "RegisterCertificateResponse"
    "fixture/RegisterCertificateResponse.proto"
    directoryService
    (Proxy :: Proxy RegisterCertificate)

responseGetSnapshotLimits :: GetSnapshotLimitsResponse -> TestTree
responseGetSnapshotLimits =
  res
    "GetSnapshotLimitsResponse"
    "fixture/GetSnapshotLimitsResponse.proto"
    directoryService
    (Proxy :: Proxy GetSnapshotLimits)

responseUpdateNumberOfDomainControllers :: UpdateNumberOfDomainControllersResponse -> TestTree
responseUpdateNumberOfDomainControllers =
  res
    "UpdateNumberOfDomainControllersResponse"
    "fixture/UpdateNumberOfDomainControllersResponse.proto"
    directoryService
    (Proxy :: Proxy UpdateNumberOfDomainControllers)

responseListCertificates :: ListCertificatesResponse -> TestTree
responseListCertificates =
  res
    "ListCertificatesResponse"
    "fixture/ListCertificatesResponse.proto"
    directoryService
    (Proxy :: Proxy ListCertificates)

responseDescribeConditionalForwarders :: DescribeConditionalForwardersResponse -> TestTree
responseDescribeConditionalForwarders =
  res
    "DescribeConditionalForwardersResponse"
    "fixture/DescribeConditionalForwardersResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeConditionalForwarders)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    directoryService
    (Proxy :: Proxy AddTagsToResource)

responseGetDirectoryLimits :: GetDirectoryLimitsResponse -> TestTree
responseGetDirectoryLimits =
  res
    "GetDirectoryLimitsResponse"
    "fixture/GetDirectoryLimitsResponse.proto"
    directoryService
    (Proxy :: Proxy GetDirectoryLimits)

responseUpdateRadius :: UpdateRadiusResponse -> TestTree
responseUpdateRadius =
  res
    "UpdateRadiusResponse"
    "fixture/UpdateRadiusResponse.proto"
    directoryService
    (Proxy :: Proxy UpdateRadius)

responseDisableLDAPS :: DisableLDAPSResponse -> TestTree
responseDisableLDAPS =
  res
    "DisableLDAPSResponse"
    "fixture/DisableLDAPSResponse.proto"
    directoryService
    (Proxy :: Proxy DisableLDAPS)

responseListLogSubscriptions :: ListLogSubscriptionsResponse -> TestTree
responseListLogSubscriptions =
  res
    "ListLogSubscriptionsResponse"
    "fixture/ListLogSubscriptionsResponse.proto"
    directoryService
    (Proxy :: Proxy ListLogSubscriptions)

responseDescribeRegions :: DescribeRegionsResponse -> TestTree
responseDescribeRegions =
  res
    "DescribeRegionsResponse"
    "fixture/DescribeRegionsResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeRegions)

responseDisableSSO :: DisableSSOResponse -> TestTree
responseDisableSSO =
  res
    "DisableSSOResponse"
    "fixture/DisableSSOResponse.proto"
    directoryService
    (Proxy :: Proxy DisableSSO)

responseCreateLogSubscription :: CreateLogSubscriptionResponse -> TestTree
responseCreateLogSubscription =
  res
    "CreateLogSubscriptionResponse"
    "fixture/CreateLogSubscriptionResponse.proto"
    directoryService
    (Proxy :: Proxy CreateLogSubscription)

responseResetUserPassword :: ResetUserPasswordResponse -> TestTree
responseResetUserPassword =
  res
    "ResetUserPasswordResponse"
    "fixture/ResetUserPasswordResponse.proto"
    directoryService
    (Proxy :: Proxy ResetUserPassword)

responseDescribeEventTopics :: DescribeEventTopicsResponse -> TestTree
responseDescribeEventTopics =
  res
    "DescribeEventTopicsResponse"
    "fixture/DescribeEventTopicsResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeEventTopics)

responseCreateComputer :: CreateComputerResponse -> TestTree
responseCreateComputer =
  res
    "CreateComputerResponse"
    "fixture/CreateComputerResponse.proto"
    directoryService
    (Proxy :: Proxy CreateComputer)

responseAcceptSharedDirectory :: AcceptSharedDirectoryResponse -> TestTree
responseAcceptSharedDirectory =
  res
    "AcceptSharedDirectoryResponse"
    "fixture/AcceptSharedDirectoryResponse.proto"
    directoryService
    (Proxy :: Proxy AcceptSharedDirectory)

responseEnableClientAuthentication :: EnableClientAuthenticationResponse -> TestTree
responseEnableClientAuthentication =
  res
    "EnableClientAuthenticationResponse"
    "fixture/EnableClientAuthenticationResponse.proto"
    directoryService
    (Proxy :: Proxy EnableClientAuthentication)

responseCreateSnapshot :: CreateSnapshotResponse -> TestTree
responseCreateSnapshot =
  res
    "CreateSnapshotResponse"
    "fixture/CreateSnapshotResponse.proto"
    directoryService
    (Proxy :: Proxy CreateSnapshot)

responseStartSchemaExtension :: StartSchemaExtensionResponse -> TestTree
responseStartSchemaExtension =
  res
    "StartSchemaExtensionResponse"
    "fixture/StartSchemaExtensionResponse.proto"
    directoryService
    (Proxy :: Proxy StartSchemaExtension)

responseDeregisterEventTopic :: DeregisterEventTopicResponse -> TestTree
responseDeregisterEventTopic =
  res
    "DeregisterEventTopicResponse"
    "fixture/DeregisterEventTopicResponse.proto"
    directoryService
    (Proxy :: Proxy DeregisterEventTopic)

responseDeregisterCertificate :: DeregisterCertificateResponse -> TestTree
responseDeregisterCertificate =
  res
    "DeregisterCertificateResponse"
    "fixture/DeregisterCertificateResponse.proto"
    directoryService
    (Proxy :: Proxy DeregisterCertificate)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    directoryService
    (Proxy :: Proxy ListTagsForResource)

responseCreateAlias :: CreateAliasResponse -> TestTree
responseCreateAlias =
  res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    directoryService
    (Proxy :: Proxy CreateAlias)

responseAddIPRoutes :: AddIPRoutesResponse -> TestTree
responseAddIPRoutes =
  res
    "AddIPRoutesResponse"
    "fixture/AddIPRoutesResponse.proto"
    directoryService
    (Proxy :: Proxy AddIPRoutes)

responseDescribeDirectories :: DescribeDirectoriesResponse -> TestTree
responseDescribeDirectories =
  res
    "DescribeDirectoriesResponse"
    "fixture/DescribeDirectoriesResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeDirectories)

responseDescribeLDAPSSettings :: DescribeLDAPSSettingsResponse -> TestTree
responseDescribeLDAPSSettings =
  res
    "DescribeLDAPSSettingsResponse"
    "fixture/DescribeLDAPSSettingsResponse.proto"
    directoryService
    (Proxy :: Proxy DescribeLDAPSSettings)

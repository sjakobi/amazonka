{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.StorageGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.StorageGateway where

import Data.Proxy
import Network.AWS.StorageGateway
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.StorageGateway.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDetachVolume $
--             detachVolume
--
--         , requestCreateNFSFileShare $
--             createNFSFileShare
--
--         , requestRetrieveTapeArchive $
--             retrieveTapeArchive
--
--         , requestCancelArchival $
--             cancelArchival
--
--         , requestDescribeSMBSettings $
--             describeSMBSettings
--
--         , requestAddWorkingStorage $
--             addWorkingStorage
--
--         , requestListTapes $
--             listTapes
--
--         , requestListVolumes $
--             listVolumes
--
--         , requestDescribeSMBFileShares $
--             describeSMBFileShares
--
--         , requestDescribeCache $
--             describeCache
--
--         , requestUpdateMaintenanceStartTime $
--             updateMaintenanceStartTime
--
--         , requestDescribeGatewayInformation $
--             describeGatewayInformation
--
--         , requestActivateGateway $
--             activateGateway
--
--         , requestRefreshCache $
--             refreshCache
--
--         , requestUpdateNFSFileShare $
--             updateNFSFileShare
--
--         , requestDescribeTapes $
--             describeTapes
--
--         , requestListVolumeRecoveryPoints $
--             listVolumeRecoveryPoints
--
--         , requestUpdateSMBFileShare $
--             updateSMBFileShare
--
--         , requestDescribeAvailabilityMonitorTest $
--             describeAvailabilityMonitorTest
--
--         , requestRemoveTagsFromResource $
--             removeTagsFromResource
--
--         , requestDeleteTapeArchive $
--             deleteTapeArchive
--
--         , requestAttachVolume $
--             attachVolume
--
--         , requestCreateSMBFileShare $
--             createSMBFileShare
--
--         , requestUpdateGatewaySoftwareNow $
--             updateGatewaySoftwareNow
--
--         , requestStartGateway $
--             startGateway
--
--         , requestUpdateSMBSecurityStrategy $
--             updateSMBSecurityStrategy
--
--         , requestCreateTapePool $
--             createTapePool
--
--         , requestCancelRetrieval $
--             cancelRetrieval
--
--         , requestDescribeBandwidthRateLimit $
--             describeBandwidthRateLimit
--
--         , requestListTapePools $
--             listTapePools
--
--         , requestJoinDomain $
--             joinDomain
--
--         , requestListFileShares $
--             listFileShares
--
--         , requestListVolumeInitiators $
--             listVolumeInitiators
--
--         , requestCreateTapeWithBarcode $
--             createTapeWithBarcode
--
--         , requestSetLocalConsolePassword $
--             setLocalConsolePassword
--
--         , requestDescribeChapCredentials $
--             describeChapCredentials
--
--         , requestCreateTapes $
--             createTapes
--
--         , requestUpdateVTLDeviceType $
--             updateVTLDeviceType
--
--         , requestCreateCachediSCSIVolume $
--             createCachediSCSIVolume
--
--         , requestDescribeSnapshotSchedule $
--             describeSnapshotSchedule
--
--         , requestUpdateBandwidthRateLimitSchedule $
--             updateBandwidthRateLimitSchedule
--
--         , requestDisableGateway $
--             disableGateway
--
--         , requestCreateStorediSCSIVolume $
--             createStorediSCSIVolume
--
--         , requestDescribeTapeArchives $
--             describeTapeArchives
--
--         , requestDeleteTape $
--             deleteTape
--
--         , requestResetCache $
--             resetCache
--
--         , requestAddTagsToResource $
--             addTagsToResource
--
--         , requestSetSMBGuestPassword $
--             setSMBGuestPassword
--
--         , requestDeleteGateway $
--             deleteGateway
--
--         , requestCreateSnapshotFromVolumeRecoveryPoint $
--             createSnapshotFromVolumeRecoveryPoint
--
--         , requestUpdateBandwidthRateLimit $
--             updateBandwidthRateLimit
--
--         , requestDescribeTapeRecoveryPoints $
--             describeTapeRecoveryPoints
--
--         , requestDeleteVolume $
--             deleteVolume
--
--         , requestListLocalDisks $
--             listLocalDisks
--
--         , requestDeleteBandwidthRateLimit $
--             deleteBandwidthRateLimit
--
--         , requestRetrieveTapeRecoveryPoint $
--             retrieveTapeRecoveryPoint
--
--         , requestListGateways $
--             listGateways
--
--         , requestDescribeNFSFileShares $
--             describeNFSFileShares
--
--         , requestDescribeStorediSCSIVolumes $
--             describeStorediSCSIVolumes
--
--         , requestDescribeUploadBuffer $
--             describeUploadBuffer
--
--         , requestStartAvailabilityMonitorTest $
--             startAvailabilityMonitorTest
--
--         , requestDeleteChapCredentials $
--             deleteChapCredentials
--
--         , requestUpdateChapCredentials $
--             updateChapCredentials
--
--         , requestDeleteSnapshotSchedule $
--             deleteSnapshotSchedule
--
--         , requestShutdownGateway $
--             shutdownGateway
--
--         , requestDescribeBandwidthRateLimitSchedule $
--             describeBandwidthRateLimitSchedule
--
--         , requestDescribeVTLDevices $
--             describeVTLDevices
--
--         , requestCreateSnapshot $
--             createSnapshot
--
--         , requestUpdateSnapshotSchedule $
--             updateSnapshotSchedule
--
--         , requestUpdateSMBFileShareVisibility $
--             updateSMBFileShareVisibility
--
--         , requestListAutomaticTapeCreationPolicies $
--             listAutomaticTapeCreationPolicies
--
--         , requestAddCache $
--             addCache
--
--         , requestNotifyWhenUploaded $
--             notifyWhenUploaded
--
--         , requestDescribeCachediSCSIVolumes $
--             describeCachediSCSIVolumes
--
--         , requestDeleteAutomaticTapeCreationPolicy $
--             deleteAutomaticTapeCreationPolicy
--
--         , requestUpdateAutomaticTapeCreationPolicy $
--             updateAutomaticTapeCreationPolicy
--
--         , requestDescribeWorkingStorage $
--             describeWorkingStorage
--
--         , requestUpdateGatewayInformation $
--             updateGatewayInformation
--
--         , requestDescribeMaintenanceStartTime $
--             describeMaintenanceStartTime
--
--         , requestAssignTapePool $
--             assignTapePool
--
--         , requestDeleteTapePool $
--             deleteTapePool
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteFileShare $
--             deleteFileShare
--
--         , requestAddUploadBuffer $
--             addUploadBuffer
--
--           ]

--     , testGroup "response"
--         [ responseDetachVolume $
--             detachVolumeResponse
--
--         , responseCreateNFSFileShare $
--             createNFSFileShareResponse
--
--         , responseRetrieveTapeArchive $
--             retrieveTapeArchiveResponse
--
--         , responseCancelArchival $
--             cancelArchivalResponse
--
--         , responseDescribeSMBSettings $
--             describeSMBSettingsResponse
--
--         , responseAddWorkingStorage $
--             addWorkingStorageResponse
--
--         , responseListTapes $
--             listTapesResponse
--
--         , responseListVolumes $
--             listVolumesResponse
--
--         , responseDescribeSMBFileShares $
--             describeSMBFileSharesResponse
--
--         , responseDescribeCache $
--             describeCacheResponse
--
--         , responseUpdateMaintenanceStartTime $
--             updateMaintenanceStartTimeResponse
--
--         , responseDescribeGatewayInformation $
--             describeGatewayInformationResponse
--
--         , responseActivateGateway $
--             activateGatewayResponse
--
--         , responseRefreshCache $
--             refreshCacheResponse
--
--         , responseUpdateNFSFileShare $
--             updateNFSFileShareResponse
--
--         , responseDescribeTapes $
--             describeTapesResponse
--
--         , responseListVolumeRecoveryPoints $
--             listVolumeRecoveryPointsResponse
--
--         , responseUpdateSMBFileShare $
--             updateSMBFileShareResponse
--
--         , responseDescribeAvailabilityMonitorTest $
--             describeAvailabilityMonitorTestResponse
--
--         , responseRemoveTagsFromResource $
--             removeTagsFromResourceResponse
--
--         , responseDeleteTapeArchive $
--             deleteTapeArchiveResponse
--
--         , responseAttachVolume $
--             attachVolumeResponse
--
--         , responseCreateSMBFileShare $
--             createSMBFileShareResponse
--
--         , responseUpdateGatewaySoftwareNow $
--             updateGatewaySoftwareNowResponse
--
--         , responseStartGateway $
--             startGatewayResponse
--
--         , responseUpdateSMBSecurityStrategy $
--             updateSMBSecurityStrategyResponse
--
--         , responseCreateTapePool $
--             createTapePoolResponse
--
--         , responseCancelRetrieval $
--             cancelRetrievalResponse
--
--         , responseDescribeBandwidthRateLimit $
--             describeBandwidthRateLimitResponse
--
--         , responseListTapePools $
--             listTapePoolsResponse
--
--         , responseJoinDomain $
--             joinDomainResponse
--
--         , responseListFileShares $
--             listFileSharesResponse
--
--         , responseListVolumeInitiators $
--             listVolumeInitiatorsResponse
--
--         , responseCreateTapeWithBarcode $
--             createTapeWithBarcodeResponse
--
--         , responseSetLocalConsolePassword $
--             setLocalConsolePasswordResponse
--
--         , responseDescribeChapCredentials $
--             describeChapCredentialsResponse
--
--         , responseCreateTapes $
--             createTapesResponse
--
--         , responseUpdateVTLDeviceType $
--             updateVTLDeviceTypeResponse
--
--         , responseCreateCachediSCSIVolume $
--             createCachediSCSIVolumeResponse
--
--         , responseDescribeSnapshotSchedule $
--             describeSnapshotScheduleResponse
--
--         , responseUpdateBandwidthRateLimitSchedule $
--             updateBandwidthRateLimitScheduleResponse
--
--         , responseDisableGateway $
--             disableGatewayResponse
--
--         , responseCreateStorediSCSIVolume $
--             createStorediSCSIVolumeResponse
--
--         , responseDescribeTapeArchives $
--             describeTapeArchivesResponse
--
--         , responseDeleteTape $
--             deleteTapeResponse
--
--         , responseResetCache $
--             resetCacheResponse
--
--         , responseAddTagsToResource $
--             addTagsToResourceResponse
--
--         , responseSetSMBGuestPassword $
--             setSMBGuestPasswordResponse
--
--         , responseDeleteGateway $
--             deleteGatewayResponse
--
--         , responseCreateSnapshotFromVolumeRecoveryPoint $
--             createSnapshotFromVolumeRecoveryPointResponse
--
--         , responseUpdateBandwidthRateLimit $
--             updateBandwidthRateLimitResponse
--
--         , responseDescribeTapeRecoveryPoints $
--             describeTapeRecoveryPointsResponse
--
--         , responseDeleteVolume $
--             deleteVolumeResponse
--
--         , responseListLocalDisks $
--             listLocalDisksResponse
--
--         , responseDeleteBandwidthRateLimit $
--             deleteBandwidthRateLimitResponse
--
--         , responseRetrieveTapeRecoveryPoint $
--             retrieveTapeRecoveryPointResponse
--
--         , responseListGateways $
--             listGatewaysResponse
--
--         , responseDescribeNFSFileShares $
--             describeNFSFileSharesResponse
--
--         , responseDescribeStorediSCSIVolumes $
--             describeStorediSCSIVolumesResponse
--
--         , responseDescribeUploadBuffer $
--             describeUploadBufferResponse
--
--         , responseStartAvailabilityMonitorTest $
--             startAvailabilityMonitorTestResponse
--
--         , responseDeleteChapCredentials $
--             deleteChapCredentialsResponse
--
--         , responseUpdateChapCredentials $
--             updateChapCredentialsResponse
--
--         , responseDeleteSnapshotSchedule $
--             deleteSnapshotScheduleResponse
--
--         , responseShutdownGateway $
--             shutdownGatewayResponse
--
--         , responseDescribeBandwidthRateLimitSchedule $
--             describeBandwidthRateLimitScheduleResponse
--
--         , responseDescribeVTLDevices $
--             describeVTLDevicesResponse
--
--         , responseCreateSnapshot $
--             createSnapshotResponse
--
--         , responseUpdateSnapshotSchedule $
--             updateSnapshotScheduleResponse
--
--         , responseUpdateSMBFileShareVisibility $
--             updateSMBFileShareVisibilityResponse
--
--         , responseListAutomaticTapeCreationPolicies $
--             listAutomaticTapeCreationPoliciesResponse
--
--         , responseAddCache $
--             addCacheResponse
--
--         , responseNotifyWhenUploaded $
--             notifyWhenUploadedResponse
--
--         , responseDescribeCachediSCSIVolumes $
--             describeCachediSCSIVolumesResponse
--
--         , responseDeleteAutomaticTapeCreationPolicy $
--             deleteAutomaticTapeCreationPolicyResponse
--
--         , responseUpdateAutomaticTapeCreationPolicy $
--             updateAutomaticTapeCreationPolicyResponse
--
--         , responseDescribeWorkingStorage $
--             describeWorkingStorageResponse
--
--         , responseUpdateGatewayInformation $
--             updateGatewayInformationResponse
--
--         , responseDescribeMaintenanceStartTime $
--             describeMaintenanceStartTimeResponse
--
--         , responseAssignTapePool $
--             assignTapePoolResponse
--
--         , responseDeleteTapePool $
--             deleteTapePoolResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteFileShare $
--             deleteFileShareResponse
--
--         , responseAddUploadBuffer $
--             addUploadBufferResponse
--
--           ]
--     ]

-- Requests

requestDetachVolume :: DetachVolume -> TestTree
requestDetachVolume =
  req
    "DetachVolume"
    "fixture/DetachVolume.yaml"

requestCreateNFSFileShare :: CreateNFSFileShare -> TestTree
requestCreateNFSFileShare =
  req
    "CreateNFSFileShare"
    "fixture/CreateNFSFileShare.yaml"

requestRetrieveTapeArchive :: RetrieveTapeArchive -> TestTree
requestRetrieveTapeArchive =
  req
    "RetrieveTapeArchive"
    "fixture/RetrieveTapeArchive.yaml"

requestCancelArchival :: CancelArchival -> TestTree
requestCancelArchival =
  req
    "CancelArchival"
    "fixture/CancelArchival.yaml"

requestDescribeSMBSettings :: DescribeSMBSettings -> TestTree
requestDescribeSMBSettings =
  req
    "DescribeSMBSettings"
    "fixture/DescribeSMBSettings.yaml"

requestAddWorkingStorage :: AddWorkingStorage -> TestTree
requestAddWorkingStorage =
  req
    "AddWorkingStorage"
    "fixture/AddWorkingStorage.yaml"

requestListTapes :: ListTapes -> TestTree
requestListTapes =
  req
    "ListTapes"
    "fixture/ListTapes.yaml"

requestListVolumes :: ListVolumes -> TestTree
requestListVolumes =
  req
    "ListVolumes"
    "fixture/ListVolumes.yaml"

requestDescribeSMBFileShares :: DescribeSMBFileShares -> TestTree
requestDescribeSMBFileShares =
  req
    "DescribeSMBFileShares"
    "fixture/DescribeSMBFileShares.yaml"

requestDescribeCache :: DescribeCache -> TestTree
requestDescribeCache =
  req
    "DescribeCache"
    "fixture/DescribeCache.yaml"

requestUpdateMaintenanceStartTime :: UpdateMaintenanceStartTime -> TestTree
requestUpdateMaintenanceStartTime =
  req
    "UpdateMaintenanceStartTime"
    "fixture/UpdateMaintenanceStartTime.yaml"

requestDescribeGatewayInformation :: DescribeGatewayInformation -> TestTree
requestDescribeGatewayInformation =
  req
    "DescribeGatewayInformation"
    "fixture/DescribeGatewayInformation.yaml"

requestActivateGateway :: ActivateGateway -> TestTree
requestActivateGateway =
  req
    "ActivateGateway"
    "fixture/ActivateGateway.yaml"

requestRefreshCache :: RefreshCache -> TestTree
requestRefreshCache =
  req
    "RefreshCache"
    "fixture/RefreshCache.yaml"

requestUpdateNFSFileShare :: UpdateNFSFileShare -> TestTree
requestUpdateNFSFileShare =
  req
    "UpdateNFSFileShare"
    "fixture/UpdateNFSFileShare.yaml"

requestDescribeTapes :: DescribeTapes -> TestTree
requestDescribeTapes =
  req
    "DescribeTapes"
    "fixture/DescribeTapes.yaml"

requestListVolumeRecoveryPoints :: ListVolumeRecoveryPoints -> TestTree
requestListVolumeRecoveryPoints =
  req
    "ListVolumeRecoveryPoints"
    "fixture/ListVolumeRecoveryPoints.yaml"

requestUpdateSMBFileShare :: UpdateSMBFileShare -> TestTree
requestUpdateSMBFileShare =
  req
    "UpdateSMBFileShare"
    "fixture/UpdateSMBFileShare.yaml"

requestDescribeAvailabilityMonitorTest :: DescribeAvailabilityMonitorTest -> TestTree
requestDescribeAvailabilityMonitorTest =
  req
    "DescribeAvailabilityMonitorTest"
    "fixture/DescribeAvailabilityMonitorTest.yaml"

requestRemoveTagsFromResource :: RemoveTagsFromResource -> TestTree
requestRemoveTagsFromResource =
  req
    "RemoveTagsFromResource"
    "fixture/RemoveTagsFromResource.yaml"

requestDeleteTapeArchive :: DeleteTapeArchive -> TestTree
requestDeleteTapeArchive =
  req
    "DeleteTapeArchive"
    "fixture/DeleteTapeArchive.yaml"

requestAttachVolume :: AttachVolume -> TestTree
requestAttachVolume =
  req
    "AttachVolume"
    "fixture/AttachVolume.yaml"

requestCreateSMBFileShare :: CreateSMBFileShare -> TestTree
requestCreateSMBFileShare =
  req
    "CreateSMBFileShare"
    "fixture/CreateSMBFileShare.yaml"

requestUpdateGatewaySoftwareNow :: UpdateGatewaySoftwareNow -> TestTree
requestUpdateGatewaySoftwareNow =
  req
    "UpdateGatewaySoftwareNow"
    "fixture/UpdateGatewaySoftwareNow.yaml"

requestStartGateway :: StartGateway -> TestTree
requestStartGateway =
  req
    "StartGateway"
    "fixture/StartGateway.yaml"

requestUpdateSMBSecurityStrategy :: UpdateSMBSecurityStrategy -> TestTree
requestUpdateSMBSecurityStrategy =
  req
    "UpdateSMBSecurityStrategy"
    "fixture/UpdateSMBSecurityStrategy.yaml"

requestCreateTapePool :: CreateTapePool -> TestTree
requestCreateTapePool =
  req
    "CreateTapePool"
    "fixture/CreateTapePool.yaml"

requestCancelRetrieval :: CancelRetrieval -> TestTree
requestCancelRetrieval =
  req
    "CancelRetrieval"
    "fixture/CancelRetrieval.yaml"

requestDescribeBandwidthRateLimit :: DescribeBandwidthRateLimit -> TestTree
requestDescribeBandwidthRateLimit =
  req
    "DescribeBandwidthRateLimit"
    "fixture/DescribeBandwidthRateLimit.yaml"

requestListTapePools :: ListTapePools -> TestTree
requestListTapePools =
  req
    "ListTapePools"
    "fixture/ListTapePools.yaml"

requestJoinDomain :: JoinDomain -> TestTree
requestJoinDomain =
  req
    "JoinDomain"
    "fixture/JoinDomain.yaml"

requestListFileShares :: ListFileShares -> TestTree
requestListFileShares =
  req
    "ListFileShares"
    "fixture/ListFileShares.yaml"

requestListVolumeInitiators :: ListVolumeInitiators -> TestTree
requestListVolumeInitiators =
  req
    "ListVolumeInitiators"
    "fixture/ListVolumeInitiators.yaml"

requestCreateTapeWithBarcode :: CreateTapeWithBarcode -> TestTree
requestCreateTapeWithBarcode =
  req
    "CreateTapeWithBarcode"
    "fixture/CreateTapeWithBarcode.yaml"

requestSetLocalConsolePassword :: SetLocalConsolePassword -> TestTree
requestSetLocalConsolePassword =
  req
    "SetLocalConsolePassword"
    "fixture/SetLocalConsolePassword.yaml"

requestDescribeChapCredentials :: DescribeChapCredentials -> TestTree
requestDescribeChapCredentials =
  req
    "DescribeChapCredentials"
    "fixture/DescribeChapCredentials.yaml"

requestCreateTapes :: CreateTapes -> TestTree
requestCreateTapes =
  req
    "CreateTapes"
    "fixture/CreateTapes.yaml"

requestUpdateVTLDeviceType :: UpdateVTLDeviceType -> TestTree
requestUpdateVTLDeviceType =
  req
    "UpdateVTLDeviceType"
    "fixture/UpdateVTLDeviceType.yaml"

requestCreateCachediSCSIVolume :: CreateCachediSCSIVolume -> TestTree
requestCreateCachediSCSIVolume =
  req
    "CreateCachediSCSIVolume"
    "fixture/CreateCachediSCSIVolume.yaml"

requestDescribeSnapshotSchedule :: DescribeSnapshotSchedule -> TestTree
requestDescribeSnapshotSchedule =
  req
    "DescribeSnapshotSchedule"
    "fixture/DescribeSnapshotSchedule.yaml"

requestUpdateBandwidthRateLimitSchedule :: UpdateBandwidthRateLimitSchedule -> TestTree
requestUpdateBandwidthRateLimitSchedule =
  req
    "UpdateBandwidthRateLimitSchedule"
    "fixture/UpdateBandwidthRateLimitSchedule.yaml"

requestDisableGateway :: DisableGateway -> TestTree
requestDisableGateway =
  req
    "DisableGateway"
    "fixture/DisableGateway.yaml"

requestCreateStorediSCSIVolume :: CreateStorediSCSIVolume -> TestTree
requestCreateStorediSCSIVolume =
  req
    "CreateStorediSCSIVolume"
    "fixture/CreateStorediSCSIVolume.yaml"

requestDescribeTapeArchives :: DescribeTapeArchives -> TestTree
requestDescribeTapeArchives =
  req
    "DescribeTapeArchives"
    "fixture/DescribeTapeArchives.yaml"

requestDeleteTape :: DeleteTape -> TestTree
requestDeleteTape =
  req
    "DeleteTape"
    "fixture/DeleteTape.yaml"

requestResetCache :: ResetCache -> TestTree
requestResetCache =
  req
    "ResetCache"
    "fixture/ResetCache.yaml"

requestAddTagsToResource :: AddTagsToResource -> TestTree
requestAddTagsToResource =
  req
    "AddTagsToResource"
    "fixture/AddTagsToResource.yaml"

requestSetSMBGuestPassword :: SetSMBGuestPassword -> TestTree
requestSetSMBGuestPassword =
  req
    "SetSMBGuestPassword"
    "fixture/SetSMBGuestPassword.yaml"

requestDeleteGateway :: DeleteGateway -> TestTree
requestDeleteGateway =
  req
    "DeleteGateway"
    "fixture/DeleteGateway.yaml"

requestCreateSnapshotFromVolumeRecoveryPoint :: CreateSnapshotFromVolumeRecoveryPoint -> TestTree
requestCreateSnapshotFromVolumeRecoveryPoint =
  req
    "CreateSnapshotFromVolumeRecoveryPoint"
    "fixture/CreateSnapshotFromVolumeRecoveryPoint.yaml"

requestUpdateBandwidthRateLimit :: UpdateBandwidthRateLimit -> TestTree
requestUpdateBandwidthRateLimit =
  req
    "UpdateBandwidthRateLimit"
    "fixture/UpdateBandwidthRateLimit.yaml"

requestDescribeTapeRecoveryPoints :: DescribeTapeRecoveryPoints -> TestTree
requestDescribeTapeRecoveryPoints =
  req
    "DescribeTapeRecoveryPoints"
    "fixture/DescribeTapeRecoveryPoints.yaml"

requestDeleteVolume :: DeleteVolume -> TestTree
requestDeleteVolume =
  req
    "DeleteVolume"
    "fixture/DeleteVolume.yaml"

requestListLocalDisks :: ListLocalDisks -> TestTree
requestListLocalDisks =
  req
    "ListLocalDisks"
    "fixture/ListLocalDisks.yaml"

requestDeleteBandwidthRateLimit :: DeleteBandwidthRateLimit -> TestTree
requestDeleteBandwidthRateLimit =
  req
    "DeleteBandwidthRateLimit"
    "fixture/DeleteBandwidthRateLimit.yaml"

requestRetrieveTapeRecoveryPoint :: RetrieveTapeRecoveryPoint -> TestTree
requestRetrieveTapeRecoveryPoint =
  req
    "RetrieveTapeRecoveryPoint"
    "fixture/RetrieveTapeRecoveryPoint.yaml"

requestListGateways :: ListGateways -> TestTree
requestListGateways =
  req
    "ListGateways"
    "fixture/ListGateways.yaml"

requestDescribeNFSFileShares :: DescribeNFSFileShares -> TestTree
requestDescribeNFSFileShares =
  req
    "DescribeNFSFileShares"
    "fixture/DescribeNFSFileShares.yaml"

requestDescribeStorediSCSIVolumes :: DescribeStorediSCSIVolumes -> TestTree
requestDescribeStorediSCSIVolumes =
  req
    "DescribeStorediSCSIVolumes"
    "fixture/DescribeStorediSCSIVolumes.yaml"

requestDescribeUploadBuffer :: DescribeUploadBuffer -> TestTree
requestDescribeUploadBuffer =
  req
    "DescribeUploadBuffer"
    "fixture/DescribeUploadBuffer.yaml"

requestStartAvailabilityMonitorTest :: StartAvailabilityMonitorTest -> TestTree
requestStartAvailabilityMonitorTest =
  req
    "StartAvailabilityMonitorTest"
    "fixture/StartAvailabilityMonitorTest.yaml"

requestDeleteChapCredentials :: DeleteChapCredentials -> TestTree
requestDeleteChapCredentials =
  req
    "DeleteChapCredentials"
    "fixture/DeleteChapCredentials.yaml"

requestUpdateChapCredentials :: UpdateChapCredentials -> TestTree
requestUpdateChapCredentials =
  req
    "UpdateChapCredentials"
    "fixture/UpdateChapCredentials.yaml"

requestDeleteSnapshotSchedule :: DeleteSnapshotSchedule -> TestTree
requestDeleteSnapshotSchedule =
  req
    "DeleteSnapshotSchedule"
    "fixture/DeleteSnapshotSchedule.yaml"

requestShutdownGateway :: ShutdownGateway -> TestTree
requestShutdownGateway =
  req
    "ShutdownGateway"
    "fixture/ShutdownGateway.yaml"

requestDescribeBandwidthRateLimitSchedule :: DescribeBandwidthRateLimitSchedule -> TestTree
requestDescribeBandwidthRateLimitSchedule =
  req
    "DescribeBandwidthRateLimitSchedule"
    "fixture/DescribeBandwidthRateLimitSchedule.yaml"

requestDescribeVTLDevices :: DescribeVTLDevices -> TestTree
requestDescribeVTLDevices =
  req
    "DescribeVTLDevices"
    "fixture/DescribeVTLDevices.yaml"

requestCreateSnapshot :: CreateSnapshot -> TestTree
requestCreateSnapshot =
  req
    "CreateSnapshot"
    "fixture/CreateSnapshot.yaml"

requestUpdateSnapshotSchedule :: UpdateSnapshotSchedule -> TestTree
requestUpdateSnapshotSchedule =
  req
    "UpdateSnapshotSchedule"
    "fixture/UpdateSnapshotSchedule.yaml"

requestUpdateSMBFileShareVisibility :: UpdateSMBFileShareVisibility -> TestTree
requestUpdateSMBFileShareVisibility =
  req
    "UpdateSMBFileShareVisibility"
    "fixture/UpdateSMBFileShareVisibility.yaml"

requestListAutomaticTapeCreationPolicies :: ListAutomaticTapeCreationPolicies -> TestTree
requestListAutomaticTapeCreationPolicies =
  req
    "ListAutomaticTapeCreationPolicies"
    "fixture/ListAutomaticTapeCreationPolicies.yaml"

requestAddCache :: AddCache -> TestTree
requestAddCache =
  req
    "AddCache"
    "fixture/AddCache.yaml"

requestNotifyWhenUploaded :: NotifyWhenUploaded -> TestTree
requestNotifyWhenUploaded =
  req
    "NotifyWhenUploaded"
    "fixture/NotifyWhenUploaded.yaml"

requestDescribeCachediSCSIVolumes :: DescribeCachediSCSIVolumes -> TestTree
requestDescribeCachediSCSIVolumes =
  req
    "DescribeCachediSCSIVolumes"
    "fixture/DescribeCachediSCSIVolumes.yaml"

requestDeleteAutomaticTapeCreationPolicy :: DeleteAutomaticTapeCreationPolicy -> TestTree
requestDeleteAutomaticTapeCreationPolicy =
  req
    "DeleteAutomaticTapeCreationPolicy"
    "fixture/DeleteAutomaticTapeCreationPolicy.yaml"

requestUpdateAutomaticTapeCreationPolicy :: UpdateAutomaticTapeCreationPolicy -> TestTree
requestUpdateAutomaticTapeCreationPolicy =
  req
    "UpdateAutomaticTapeCreationPolicy"
    "fixture/UpdateAutomaticTapeCreationPolicy.yaml"

requestDescribeWorkingStorage :: DescribeWorkingStorage -> TestTree
requestDescribeWorkingStorage =
  req
    "DescribeWorkingStorage"
    "fixture/DescribeWorkingStorage.yaml"

requestUpdateGatewayInformation :: UpdateGatewayInformation -> TestTree
requestUpdateGatewayInformation =
  req
    "UpdateGatewayInformation"
    "fixture/UpdateGatewayInformation.yaml"

requestDescribeMaintenanceStartTime :: DescribeMaintenanceStartTime -> TestTree
requestDescribeMaintenanceStartTime =
  req
    "DescribeMaintenanceStartTime"
    "fixture/DescribeMaintenanceStartTime.yaml"

requestAssignTapePool :: AssignTapePool -> TestTree
requestAssignTapePool =
  req
    "AssignTapePool"
    "fixture/AssignTapePool.yaml"

requestDeleteTapePool :: DeleteTapePool -> TestTree
requestDeleteTapePool =
  req
    "DeleteTapePool"
    "fixture/DeleteTapePool.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteFileShare :: DeleteFileShare -> TestTree
requestDeleteFileShare =
  req
    "DeleteFileShare"
    "fixture/DeleteFileShare.yaml"

requestAddUploadBuffer :: AddUploadBuffer -> TestTree
requestAddUploadBuffer =
  req
    "AddUploadBuffer"
    "fixture/AddUploadBuffer.yaml"

-- Responses

responseDetachVolume :: DetachVolumeResponse -> TestTree
responseDetachVolume =
  res
    "DetachVolumeResponse"
    "fixture/DetachVolumeResponse.proto"
    storageGateway
    (Proxy :: Proxy DetachVolume)

responseCreateNFSFileShare :: CreateNFSFileShareResponse -> TestTree
responseCreateNFSFileShare =
  res
    "CreateNFSFileShareResponse"
    "fixture/CreateNFSFileShareResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateNFSFileShare)

responseRetrieveTapeArchive :: RetrieveTapeArchiveResponse -> TestTree
responseRetrieveTapeArchive =
  res
    "RetrieveTapeArchiveResponse"
    "fixture/RetrieveTapeArchiveResponse.proto"
    storageGateway
    (Proxy :: Proxy RetrieveTapeArchive)

responseCancelArchival :: CancelArchivalResponse -> TestTree
responseCancelArchival =
  res
    "CancelArchivalResponse"
    "fixture/CancelArchivalResponse.proto"
    storageGateway
    (Proxy :: Proxy CancelArchival)

responseDescribeSMBSettings :: DescribeSMBSettingsResponse -> TestTree
responseDescribeSMBSettings =
  res
    "DescribeSMBSettingsResponse"
    "fixture/DescribeSMBSettingsResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeSMBSettings)

responseAddWorkingStorage :: AddWorkingStorageResponse -> TestTree
responseAddWorkingStorage =
  res
    "AddWorkingStorageResponse"
    "fixture/AddWorkingStorageResponse.proto"
    storageGateway
    (Proxy :: Proxy AddWorkingStorage)

responseListTapes :: ListTapesResponse -> TestTree
responseListTapes =
  res
    "ListTapesResponse"
    "fixture/ListTapesResponse.proto"
    storageGateway
    (Proxy :: Proxy ListTapes)

responseListVolumes :: ListVolumesResponse -> TestTree
responseListVolumes =
  res
    "ListVolumesResponse"
    "fixture/ListVolumesResponse.proto"
    storageGateway
    (Proxy :: Proxy ListVolumes)

responseDescribeSMBFileShares :: DescribeSMBFileSharesResponse -> TestTree
responseDescribeSMBFileShares =
  res
    "DescribeSMBFileSharesResponse"
    "fixture/DescribeSMBFileSharesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeSMBFileShares)

responseDescribeCache :: DescribeCacheResponse -> TestTree
responseDescribeCache =
  res
    "DescribeCacheResponse"
    "fixture/DescribeCacheResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeCache)

responseUpdateMaintenanceStartTime :: UpdateMaintenanceStartTimeResponse -> TestTree
responseUpdateMaintenanceStartTime =
  res
    "UpdateMaintenanceStartTimeResponse"
    "fixture/UpdateMaintenanceStartTimeResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateMaintenanceStartTime)

responseDescribeGatewayInformation :: DescribeGatewayInformationResponse -> TestTree
responseDescribeGatewayInformation =
  res
    "DescribeGatewayInformationResponse"
    "fixture/DescribeGatewayInformationResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeGatewayInformation)

responseActivateGateway :: ActivateGatewayResponse -> TestTree
responseActivateGateway =
  res
    "ActivateGatewayResponse"
    "fixture/ActivateGatewayResponse.proto"
    storageGateway
    (Proxy :: Proxy ActivateGateway)

responseRefreshCache :: RefreshCacheResponse -> TestTree
responseRefreshCache =
  res
    "RefreshCacheResponse"
    "fixture/RefreshCacheResponse.proto"
    storageGateway
    (Proxy :: Proxy RefreshCache)

responseUpdateNFSFileShare :: UpdateNFSFileShareResponse -> TestTree
responseUpdateNFSFileShare =
  res
    "UpdateNFSFileShareResponse"
    "fixture/UpdateNFSFileShareResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateNFSFileShare)

responseDescribeTapes :: DescribeTapesResponse -> TestTree
responseDescribeTapes =
  res
    "DescribeTapesResponse"
    "fixture/DescribeTapesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeTapes)

responseListVolumeRecoveryPoints :: ListVolumeRecoveryPointsResponse -> TestTree
responseListVolumeRecoveryPoints =
  res
    "ListVolumeRecoveryPointsResponse"
    "fixture/ListVolumeRecoveryPointsResponse.proto"
    storageGateway
    (Proxy :: Proxy ListVolumeRecoveryPoints)

responseUpdateSMBFileShare :: UpdateSMBFileShareResponse -> TestTree
responseUpdateSMBFileShare =
  res
    "UpdateSMBFileShareResponse"
    "fixture/UpdateSMBFileShareResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateSMBFileShare)

responseDescribeAvailabilityMonitorTest :: DescribeAvailabilityMonitorTestResponse -> TestTree
responseDescribeAvailabilityMonitorTest =
  res
    "DescribeAvailabilityMonitorTestResponse"
    "fixture/DescribeAvailabilityMonitorTestResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeAvailabilityMonitorTest)

responseRemoveTagsFromResource :: RemoveTagsFromResourceResponse -> TestTree
responseRemoveTagsFromResource =
  res
    "RemoveTagsFromResourceResponse"
    "fixture/RemoveTagsFromResourceResponse.proto"
    storageGateway
    (Proxy :: Proxy RemoveTagsFromResource)

responseDeleteTapeArchive :: DeleteTapeArchiveResponse -> TestTree
responseDeleteTapeArchive =
  res
    "DeleteTapeArchiveResponse"
    "fixture/DeleteTapeArchiveResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteTapeArchive)

responseAttachVolume :: AttachVolumeResponse -> TestTree
responseAttachVolume =
  res
    "AttachVolumeResponse"
    "fixture/AttachVolumeResponse.proto"
    storageGateway
    (Proxy :: Proxy AttachVolume)

responseCreateSMBFileShare :: CreateSMBFileShareResponse -> TestTree
responseCreateSMBFileShare =
  res
    "CreateSMBFileShareResponse"
    "fixture/CreateSMBFileShareResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateSMBFileShare)

responseUpdateGatewaySoftwareNow :: UpdateGatewaySoftwareNowResponse -> TestTree
responseUpdateGatewaySoftwareNow =
  res
    "UpdateGatewaySoftwareNowResponse"
    "fixture/UpdateGatewaySoftwareNowResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateGatewaySoftwareNow)

responseStartGateway :: StartGatewayResponse -> TestTree
responseStartGateway =
  res
    "StartGatewayResponse"
    "fixture/StartGatewayResponse.proto"
    storageGateway
    (Proxy :: Proxy StartGateway)

responseUpdateSMBSecurityStrategy :: UpdateSMBSecurityStrategyResponse -> TestTree
responseUpdateSMBSecurityStrategy =
  res
    "UpdateSMBSecurityStrategyResponse"
    "fixture/UpdateSMBSecurityStrategyResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateSMBSecurityStrategy)

responseCreateTapePool :: CreateTapePoolResponse -> TestTree
responseCreateTapePool =
  res
    "CreateTapePoolResponse"
    "fixture/CreateTapePoolResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateTapePool)

responseCancelRetrieval :: CancelRetrievalResponse -> TestTree
responseCancelRetrieval =
  res
    "CancelRetrievalResponse"
    "fixture/CancelRetrievalResponse.proto"
    storageGateway
    (Proxy :: Proxy CancelRetrieval)

responseDescribeBandwidthRateLimit :: DescribeBandwidthRateLimitResponse -> TestTree
responseDescribeBandwidthRateLimit =
  res
    "DescribeBandwidthRateLimitResponse"
    "fixture/DescribeBandwidthRateLimitResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeBandwidthRateLimit)

responseListTapePools :: ListTapePoolsResponse -> TestTree
responseListTapePools =
  res
    "ListTapePoolsResponse"
    "fixture/ListTapePoolsResponse.proto"
    storageGateway
    (Proxy :: Proxy ListTapePools)

responseJoinDomain :: JoinDomainResponse -> TestTree
responseJoinDomain =
  res
    "JoinDomainResponse"
    "fixture/JoinDomainResponse.proto"
    storageGateway
    (Proxy :: Proxy JoinDomain)

responseListFileShares :: ListFileSharesResponse -> TestTree
responseListFileShares =
  res
    "ListFileSharesResponse"
    "fixture/ListFileSharesResponse.proto"
    storageGateway
    (Proxy :: Proxy ListFileShares)

responseListVolumeInitiators :: ListVolumeInitiatorsResponse -> TestTree
responseListVolumeInitiators =
  res
    "ListVolumeInitiatorsResponse"
    "fixture/ListVolumeInitiatorsResponse.proto"
    storageGateway
    (Proxy :: Proxy ListVolumeInitiators)

responseCreateTapeWithBarcode :: CreateTapeWithBarcodeResponse -> TestTree
responseCreateTapeWithBarcode =
  res
    "CreateTapeWithBarcodeResponse"
    "fixture/CreateTapeWithBarcodeResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateTapeWithBarcode)

responseSetLocalConsolePassword :: SetLocalConsolePasswordResponse -> TestTree
responseSetLocalConsolePassword =
  res
    "SetLocalConsolePasswordResponse"
    "fixture/SetLocalConsolePasswordResponse.proto"
    storageGateway
    (Proxy :: Proxy SetLocalConsolePassword)

responseDescribeChapCredentials :: DescribeChapCredentialsResponse -> TestTree
responseDescribeChapCredentials =
  res
    "DescribeChapCredentialsResponse"
    "fixture/DescribeChapCredentialsResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeChapCredentials)

responseCreateTapes :: CreateTapesResponse -> TestTree
responseCreateTapes =
  res
    "CreateTapesResponse"
    "fixture/CreateTapesResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateTapes)

responseUpdateVTLDeviceType :: UpdateVTLDeviceTypeResponse -> TestTree
responseUpdateVTLDeviceType =
  res
    "UpdateVTLDeviceTypeResponse"
    "fixture/UpdateVTLDeviceTypeResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateVTLDeviceType)

responseCreateCachediSCSIVolume :: CreateCachediSCSIVolumeResponse -> TestTree
responseCreateCachediSCSIVolume =
  res
    "CreateCachediSCSIVolumeResponse"
    "fixture/CreateCachediSCSIVolumeResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateCachediSCSIVolume)

responseDescribeSnapshotSchedule :: DescribeSnapshotScheduleResponse -> TestTree
responseDescribeSnapshotSchedule =
  res
    "DescribeSnapshotScheduleResponse"
    "fixture/DescribeSnapshotScheduleResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeSnapshotSchedule)

responseUpdateBandwidthRateLimitSchedule :: UpdateBandwidthRateLimitScheduleResponse -> TestTree
responseUpdateBandwidthRateLimitSchedule =
  res
    "UpdateBandwidthRateLimitScheduleResponse"
    "fixture/UpdateBandwidthRateLimitScheduleResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateBandwidthRateLimitSchedule)

responseDisableGateway :: DisableGatewayResponse -> TestTree
responseDisableGateway =
  res
    "DisableGatewayResponse"
    "fixture/DisableGatewayResponse.proto"
    storageGateway
    (Proxy :: Proxy DisableGateway)

responseCreateStorediSCSIVolume :: CreateStorediSCSIVolumeResponse -> TestTree
responseCreateStorediSCSIVolume =
  res
    "CreateStorediSCSIVolumeResponse"
    "fixture/CreateStorediSCSIVolumeResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateStorediSCSIVolume)

responseDescribeTapeArchives :: DescribeTapeArchivesResponse -> TestTree
responseDescribeTapeArchives =
  res
    "DescribeTapeArchivesResponse"
    "fixture/DescribeTapeArchivesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeTapeArchives)

responseDeleteTape :: DeleteTapeResponse -> TestTree
responseDeleteTape =
  res
    "DeleteTapeResponse"
    "fixture/DeleteTapeResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteTape)

responseResetCache :: ResetCacheResponse -> TestTree
responseResetCache =
  res
    "ResetCacheResponse"
    "fixture/ResetCacheResponse.proto"
    storageGateway
    (Proxy :: Proxy ResetCache)

responseAddTagsToResource :: AddTagsToResourceResponse -> TestTree
responseAddTagsToResource =
  res
    "AddTagsToResourceResponse"
    "fixture/AddTagsToResourceResponse.proto"
    storageGateway
    (Proxy :: Proxy AddTagsToResource)

responseSetSMBGuestPassword :: SetSMBGuestPasswordResponse -> TestTree
responseSetSMBGuestPassword =
  res
    "SetSMBGuestPasswordResponse"
    "fixture/SetSMBGuestPasswordResponse.proto"
    storageGateway
    (Proxy :: Proxy SetSMBGuestPassword)

responseDeleteGateway :: DeleteGatewayResponse -> TestTree
responseDeleteGateway =
  res
    "DeleteGatewayResponse"
    "fixture/DeleteGatewayResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteGateway)

responseCreateSnapshotFromVolumeRecoveryPoint :: CreateSnapshotFromVolumeRecoveryPointResponse -> TestTree
responseCreateSnapshotFromVolumeRecoveryPoint =
  res
    "CreateSnapshotFromVolumeRecoveryPointResponse"
    "fixture/CreateSnapshotFromVolumeRecoveryPointResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateSnapshotFromVolumeRecoveryPoint)

responseUpdateBandwidthRateLimit :: UpdateBandwidthRateLimitResponse -> TestTree
responseUpdateBandwidthRateLimit =
  res
    "UpdateBandwidthRateLimitResponse"
    "fixture/UpdateBandwidthRateLimitResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateBandwidthRateLimit)

responseDescribeTapeRecoveryPoints :: DescribeTapeRecoveryPointsResponse -> TestTree
responseDescribeTapeRecoveryPoints =
  res
    "DescribeTapeRecoveryPointsResponse"
    "fixture/DescribeTapeRecoveryPointsResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeTapeRecoveryPoints)

responseDeleteVolume :: DeleteVolumeResponse -> TestTree
responseDeleteVolume =
  res
    "DeleteVolumeResponse"
    "fixture/DeleteVolumeResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteVolume)

responseListLocalDisks :: ListLocalDisksResponse -> TestTree
responseListLocalDisks =
  res
    "ListLocalDisksResponse"
    "fixture/ListLocalDisksResponse.proto"
    storageGateway
    (Proxy :: Proxy ListLocalDisks)

responseDeleteBandwidthRateLimit :: DeleteBandwidthRateLimitResponse -> TestTree
responseDeleteBandwidthRateLimit =
  res
    "DeleteBandwidthRateLimitResponse"
    "fixture/DeleteBandwidthRateLimitResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteBandwidthRateLimit)

responseRetrieveTapeRecoveryPoint :: RetrieveTapeRecoveryPointResponse -> TestTree
responseRetrieveTapeRecoveryPoint =
  res
    "RetrieveTapeRecoveryPointResponse"
    "fixture/RetrieveTapeRecoveryPointResponse.proto"
    storageGateway
    (Proxy :: Proxy RetrieveTapeRecoveryPoint)

responseListGateways :: ListGatewaysResponse -> TestTree
responseListGateways =
  res
    "ListGatewaysResponse"
    "fixture/ListGatewaysResponse.proto"
    storageGateway
    (Proxy :: Proxy ListGateways)

responseDescribeNFSFileShares :: DescribeNFSFileSharesResponse -> TestTree
responseDescribeNFSFileShares =
  res
    "DescribeNFSFileSharesResponse"
    "fixture/DescribeNFSFileSharesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeNFSFileShares)

responseDescribeStorediSCSIVolumes :: DescribeStorediSCSIVolumesResponse -> TestTree
responseDescribeStorediSCSIVolumes =
  res
    "DescribeStorediSCSIVolumesResponse"
    "fixture/DescribeStorediSCSIVolumesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeStorediSCSIVolumes)

responseDescribeUploadBuffer :: DescribeUploadBufferResponse -> TestTree
responseDescribeUploadBuffer =
  res
    "DescribeUploadBufferResponse"
    "fixture/DescribeUploadBufferResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeUploadBuffer)

responseStartAvailabilityMonitorTest :: StartAvailabilityMonitorTestResponse -> TestTree
responseStartAvailabilityMonitorTest =
  res
    "StartAvailabilityMonitorTestResponse"
    "fixture/StartAvailabilityMonitorTestResponse.proto"
    storageGateway
    (Proxy :: Proxy StartAvailabilityMonitorTest)

responseDeleteChapCredentials :: DeleteChapCredentialsResponse -> TestTree
responseDeleteChapCredentials =
  res
    "DeleteChapCredentialsResponse"
    "fixture/DeleteChapCredentialsResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteChapCredentials)

responseUpdateChapCredentials :: UpdateChapCredentialsResponse -> TestTree
responseUpdateChapCredentials =
  res
    "UpdateChapCredentialsResponse"
    "fixture/UpdateChapCredentialsResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateChapCredentials)

responseDeleteSnapshotSchedule :: DeleteSnapshotScheduleResponse -> TestTree
responseDeleteSnapshotSchedule =
  res
    "DeleteSnapshotScheduleResponse"
    "fixture/DeleteSnapshotScheduleResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteSnapshotSchedule)

responseShutdownGateway :: ShutdownGatewayResponse -> TestTree
responseShutdownGateway =
  res
    "ShutdownGatewayResponse"
    "fixture/ShutdownGatewayResponse.proto"
    storageGateway
    (Proxy :: Proxy ShutdownGateway)

responseDescribeBandwidthRateLimitSchedule :: DescribeBandwidthRateLimitScheduleResponse -> TestTree
responseDescribeBandwidthRateLimitSchedule =
  res
    "DescribeBandwidthRateLimitScheduleResponse"
    "fixture/DescribeBandwidthRateLimitScheduleResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeBandwidthRateLimitSchedule)

responseDescribeVTLDevices :: DescribeVTLDevicesResponse -> TestTree
responseDescribeVTLDevices =
  res
    "DescribeVTLDevicesResponse"
    "fixture/DescribeVTLDevicesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeVTLDevices)

responseCreateSnapshot :: CreateSnapshotResponse -> TestTree
responseCreateSnapshot =
  res
    "CreateSnapshotResponse"
    "fixture/CreateSnapshotResponse.proto"
    storageGateway
    (Proxy :: Proxy CreateSnapshot)

responseUpdateSnapshotSchedule :: UpdateSnapshotScheduleResponse -> TestTree
responseUpdateSnapshotSchedule =
  res
    "UpdateSnapshotScheduleResponse"
    "fixture/UpdateSnapshotScheduleResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateSnapshotSchedule)

responseUpdateSMBFileShareVisibility :: UpdateSMBFileShareVisibilityResponse -> TestTree
responseUpdateSMBFileShareVisibility =
  res
    "UpdateSMBFileShareVisibilityResponse"
    "fixture/UpdateSMBFileShareVisibilityResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateSMBFileShareVisibility)

responseListAutomaticTapeCreationPolicies :: ListAutomaticTapeCreationPoliciesResponse -> TestTree
responseListAutomaticTapeCreationPolicies =
  res
    "ListAutomaticTapeCreationPoliciesResponse"
    "fixture/ListAutomaticTapeCreationPoliciesResponse.proto"
    storageGateway
    (Proxy :: Proxy ListAutomaticTapeCreationPolicies)

responseAddCache :: AddCacheResponse -> TestTree
responseAddCache =
  res
    "AddCacheResponse"
    "fixture/AddCacheResponse.proto"
    storageGateway
    (Proxy :: Proxy AddCache)

responseNotifyWhenUploaded :: NotifyWhenUploadedResponse -> TestTree
responseNotifyWhenUploaded =
  res
    "NotifyWhenUploadedResponse"
    "fixture/NotifyWhenUploadedResponse.proto"
    storageGateway
    (Proxy :: Proxy NotifyWhenUploaded)

responseDescribeCachediSCSIVolumes :: DescribeCachediSCSIVolumesResponse -> TestTree
responseDescribeCachediSCSIVolumes =
  res
    "DescribeCachediSCSIVolumesResponse"
    "fixture/DescribeCachediSCSIVolumesResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeCachediSCSIVolumes)

responseDeleteAutomaticTapeCreationPolicy :: DeleteAutomaticTapeCreationPolicyResponse -> TestTree
responseDeleteAutomaticTapeCreationPolicy =
  res
    "DeleteAutomaticTapeCreationPolicyResponse"
    "fixture/DeleteAutomaticTapeCreationPolicyResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteAutomaticTapeCreationPolicy)

responseUpdateAutomaticTapeCreationPolicy :: UpdateAutomaticTapeCreationPolicyResponse -> TestTree
responseUpdateAutomaticTapeCreationPolicy =
  res
    "UpdateAutomaticTapeCreationPolicyResponse"
    "fixture/UpdateAutomaticTapeCreationPolicyResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateAutomaticTapeCreationPolicy)

responseDescribeWorkingStorage :: DescribeWorkingStorageResponse -> TestTree
responseDescribeWorkingStorage =
  res
    "DescribeWorkingStorageResponse"
    "fixture/DescribeWorkingStorageResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeWorkingStorage)

responseUpdateGatewayInformation :: UpdateGatewayInformationResponse -> TestTree
responseUpdateGatewayInformation =
  res
    "UpdateGatewayInformationResponse"
    "fixture/UpdateGatewayInformationResponse.proto"
    storageGateway
    (Proxy :: Proxy UpdateGatewayInformation)

responseDescribeMaintenanceStartTime :: DescribeMaintenanceStartTimeResponse -> TestTree
responseDescribeMaintenanceStartTime =
  res
    "DescribeMaintenanceStartTimeResponse"
    "fixture/DescribeMaintenanceStartTimeResponse.proto"
    storageGateway
    (Proxy :: Proxy DescribeMaintenanceStartTime)

responseAssignTapePool :: AssignTapePoolResponse -> TestTree
responseAssignTapePool =
  res
    "AssignTapePoolResponse"
    "fixture/AssignTapePoolResponse.proto"
    storageGateway
    (Proxy :: Proxy AssignTapePool)

responseDeleteTapePool :: DeleteTapePoolResponse -> TestTree
responseDeleteTapePool =
  res
    "DeleteTapePoolResponse"
    "fixture/DeleteTapePoolResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteTapePool)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    storageGateway
    (Proxy :: Proxy ListTagsForResource)

responseDeleteFileShare :: DeleteFileShareResponse -> TestTree
responseDeleteFileShare =
  res
    "DeleteFileShareResponse"
    "fixture/DeleteFileShareResponse.proto"
    storageGateway
    (Proxy :: Proxy DeleteFileShare)

responseAddUploadBuffer :: AddUploadBufferResponse -> TestTree
responseAddUploadBuffer =
  res
    "AddUploadBufferResponse"
    "fixture/AddUploadBufferResponse.proto"
    storageGateway
    (Proxy :: Proxy AddUploadBuffer)

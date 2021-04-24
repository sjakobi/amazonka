{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Lightsail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Lightsail where

import Data.Proxy
import Network.AWS.Lightsail
import Test.AWS.Fixture
import Test.AWS.Lightsail.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetContainerServices $
--             getContainerServices
--
--         , requestGetStaticIP $
--             getStaticIP
--
--         , requestGetRelationalDatabaseSnapshots $
--             getRelationalDatabaseSnapshots
--
--         , requestGetDistributions $
--             getDistributions
--
--         , requestGetDiskSnapshot $
--             getDiskSnapshot
--
--         , requestCreateContainerServiceDeployment $
--             createContainerServiceDeployment
--
--         , requestPeerVPC $
--             peerVPC
--
--         , requestUpdateLoadBalancerAttribute $
--             updateLoadBalancerAttribute
--
--         , requestUpdateDistributionBundle $
--             updateDistributionBundle
--
--         , requestAllocateStaticIP $
--             allocateStaticIP
--
--         , requestCloseInstancePublicPorts $
--             closeInstancePublicPorts
--
--         , requestDeleteCertificate $
--             deleteCertificate
--
--         , requestDisableAddOn $
--             disableAddOn
--
--         , requestGetCloudFormationStackRecords $
--             getCloudFormationStackRecords
--
--         , requestIsVPCPeered $
--             isVPCPeered
--
--         , requestGetRelationalDatabaseSnapshot $
--             getRelationalDatabaseSnapshot
--
--         , requestGetRelationalDatabaseBlueprints $
--             getRelationalDatabaseBlueprints
--
--         , requestDeleteInstanceSnapshot $
--             deleteInstanceSnapshot
--
--         , requestUnpeerVPC $
--             unpeerVPC
--
--         , requestGetContainerAPIMetadata $
--             getContainerAPIMetadata
--
--         , requestGetInstances $
--             getInstances
--
--         , requestCreateInstancesFromSnapshot $
--             createInstancesFromSnapshot
--
--         , requestStartInstance $
--             startInstance
--
--         , requestCreateKeyPair $
--             createKeyPair
--
--         , requestGetInstanceAccessDetails $
--             getInstanceAccessDetails
--
--         , requestCopySnapshot $
--             copySnapshot
--
--         , requestCreateInstanceSnapshot $
--             createInstanceSnapshot
--
--         , requestStopInstance $
--             stopInstance
--
--         , requestRegisterContainerImage $
--             registerContainerImage
--
--         , requestDetachCertificateFromDistribution $
--             detachCertificateFromDistribution
--
--         , requestCreateLoadBalancer $
--             createLoadBalancer
--
--         , requestGetContainerServiceDeployments $
--             getContainerServiceDeployments
--
--         , requestDeleteContactMethod $
--             deleteContactMethod
--
--         , requestGetDomain $
--             getDomain
--
--         , requestDetachStaticIP $
--             detachStaticIP
--
--         , requestAttachDisk $
--             attachDisk
--
--         , requestGetDisk $
--             getDisk
--
--         , requestGetRelationalDatabaseLogEvents $
--             getRelationalDatabaseLogEvents
--
--         , requestGetRelationalDatabases $
--             getRelationalDatabases
--
--         , requestUntagResource $
--             untagResource
--
--         , requestCreateDiskFromSnapshot $
--             createDiskFromSnapshot
--
--         , requestGetInstanceMetricData $
--             getInstanceMetricData
--
--         , requestDeleteLoadBalancer $
--             deleteLoadBalancer
--
--         , requestExportSnapshot $
--             exportSnapshot
--
--         , requestCreateRelationalDatabaseFromSnapshot $
--             createRelationalDatabaseFromSnapshot
--
--         , requestGetOperations $
--             getOperations
--
--         , requestGetExportSnapshotRecords $
--             getExportSnapshotRecords
--
--         , requestGetLoadBalancerMetricData $
--             getLoadBalancerMetricData
--
--         , requestGetInstanceSnapshots $
--             getInstanceSnapshots
--
--         , requestDeleteInstance $
--             deleteInstance
--
--         , requestCreateLoadBalancerTLSCertificate $
--             createLoadBalancerTLSCertificate
--
--         , requestRebootInstance $
--             rebootInstance
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetRelationalDatabase $
--             getRelationalDatabase
--
--         , requestGetKeyPairs $
--             getKeyPairs
--
--         , requestAttachInstancesToLoadBalancer $
--             attachInstancesToLoadBalancer
--
--         , requestGetRegions $
--             getRegions
--
--         , requestTestAlarm $
--             testAlarm
--
--         , requestCreateDiskSnapshot $
--             createDiskSnapshot
--
--         , requestSetIPAddressType $
--             setIPAddressType
--
--         , requestDeleteAlarm $
--             deleteAlarm
--
--         , requestSendContactMethodVerification $
--             sendContactMethodVerification
--
--         , requestGetRelationalDatabaseMasterUserPassword $
--             getRelationalDatabaseMasterUserPassword
--
--         , requestGetBlueprints $
--             getBlueprints
--
--         , requestDetachDisk $
--             detachDisk
--
--         , requestGetInstancePortStates $
--             getInstancePortStates
--
--         , requestAttachStaticIP $
--             attachStaticIP
--
--         , requestDownloadDefaultKeyPair $
--             downloadDefaultKeyPair
--
--         , requestGetLoadBalancers $
--             getLoadBalancers
--
--         , requestUpdateRelationalDatabase $
--             updateRelationalDatabase
--
--         , requestGetRelationalDatabaseBundles $
--             getRelationalDatabaseBundles
--
--         , requestAttachLoadBalancerTLSCertificate $
--             attachLoadBalancerTLSCertificate
--
--         , requestAttachCertificateToDistribution $
--             attachCertificateToDistribution
--
--         , requestDeleteRelationalDatabase $
--             deleteRelationalDatabase
--
--         , requestGetInstance $
--             getInstance
--
--         , requestRebootRelationalDatabase $
--             rebootRelationalDatabase
--
--         , requestGetRelationalDatabaseEvents $
--             getRelationalDatabaseEvents
--
--         , requestCreateDomain $
--             createDomain
--
--         , requestGetStaticIPs $
--             getStaticIPs
--
--         , requestDeleteDisk $
--             deleteDisk
--
--         , requestGetRelationalDatabaseMetricData $
--             getRelationalDatabaseMetricData
--
--         , requestGetDiskSnapshots $
--             getDiskSnapshots
--
--         , requestDeleteKeyPair $
--             deleteKeyPair
--
--         , requestGetLoadBalancer $
--             getLoadBalancer
--
--         , requestGetBundles $
--             getBundles
--
--         , requestCreateCertificate $
--             createCertificate
--
--         , requestDetachInstancesFromLoadBalancer $
--             detachInstancesFromLoadBalancer
--
--         , requestGetLoadBalancerTLSCertificates $
--             getLoadBalancerTLSCertificates
--
--         , requestDeleteContainerImage $
--             deleteContainerImage
--
--         , requestGetOperationsForResource $
--             getOperationsForResource
--
--         , requestCreateDisk $
--             createDisk
--
--         , requestEnableAddOn $
--             enableAddOn
--
--         , requestDeleteDomain $
--             deleteDomain
--
--         , requestStartRelationalDatabase $
--             startRelationalDatabase
--
--         , requestCreateRelationalDatabaseSnapshot $
--             createRelationalDatabaseSnapshot
--
--         , requestGetAlarms $
--             getAlarms
--
--         , requestCreateDistribution $
--             createDistribution
--
--         , requestCreateInstances $
--             createInstances
--
--         , requestCreateContainerService $
--             createContainerService
--
--         , requestGetDistributionLatestCacheReset $
--             getDistributionLatestCacheReset
--
--         , requestStopRelationalDatabase $
--             stopRelationalDatabase
--
--         , requestDeleteKnownHostKeys $
--             deleteKnownHostKeys
--
--         , requestOpenInstancePublicPorts $
--             openInstancePublicPorts
--
--         , requestGetActiveNames $
--             getActiveNames
--
--         , requestGetAutoSnapshots $
--             getAutoSnapshots
--
--         , requestGetRelationalDatabaseLogStreams $
--             getRelationalDatabaseLogStreams
--
--         , requestGetDistributionBundles $
--             getDistributionBundles
--
--         , requestGetOperation $
--             getOperation
--
--         , requestDeleteRelationalDatabaseSnapshot $
--             deleteRelationalDatabaseSnapshot
--
--         , requestGetInstanceSnapshot $
--             getInstanceSnapshot
--
--         , requestDeleteContainerService $
--             deleteContainerService
--
--         , requestUpdateDistribution $
--             updateDistribution
--
--         , requestPutInstancePublicPorts $
--             putInstancePublicPorts
--
--         , requestResetDistributionCache $
--             resetDistributionCache
--
--         , requestCreateContactMethod $
--             createContactMethod
--
--         , requestDeleteDistribution $
--             deleteDistribution
--
--         , requestUpdateContainerService $
--             updateContainerService
--
--         , requestGetKeyPair $
--             getKeyPair
--
--         , requestCreateCloudFormationStack $
--             createCloudFormationStack
--
--         , requestCreateDomainEntry $
--             createDomainEntry
--
--         , requestGetInstanceState $
--             getInstanceState
--
--         , requestGetDistributionMetricData $
--             getDistributionMetricData
--
--         , requestGetDisks $
--             getDisks
--
--         , requestGetContainerServiceMetricData $
--             getContainerServiceMetricData
--
--         , requestCreateContainerServiceRegistryLogin $
--             createContainerServiceRegistryLogin
--
--         , requestImportKeyPair $
--             importKeyPair
--
--         , requestGetContainerServicePowers $
--             getContainerServicePowers
--
--         , requestDeleteDiskSnapshot $
--             deleteDiskSnapshot
--
--         , requestGetCertificates $
--             getCertificates
--
--         , requestReleaseStaticIP $
--             releaseStaticIP
--
--         , requestUpdateRelationalDatabaseParameters $
--             updateRelationalDatabaseParameters
--
--         , requestDeleteLoadBalancerTLSCertificate $
--             deleteLoadBalancerTLSCertificate
--
--         , requestUpdateDomainEntry $
--             updateDomainEntry
--
--         , requestGetContainerLog $
--             getContainerLog
--
--         , requestDeleteDomainEntry $
--             deleteDomainEntry
--
--         , requestGetContainerImages $
--             getContainerImages
--
--         , requestGetDomains $
--             getDomains
--
--         , requestPutAlarm $
--             putAlarm
--
--         , requestDeleteAutoSnapshot $
--             deleteAutoSnapshot
--
--         , requestGetContactMethods $
--             getContactMethods
--
--         , requestGetRelationalDatabaseParameters $
--             getRelationalDatabaseParameters
--
--         , requestCreateRelationalDatabase $
--             createRelationalDatabase
--
--           ]

--     , testGroup "response"
--         [ responseGetContainerServices $
--             getContainerServicesResponse
--
--         , responseGetStaticIP $
--             getStaticIPResponse
--
--         , responseGetRelationalDatabaseSnapshots $
--             getRelationalDatabaseSnapshotsResponse
--
--         , responseGetDistributions $
--             getDistributionsResponse
--
--         , responseGetDiskSnapshot $
--             getDiskSnapshotResponse
--
--         , responseCreateContainerServiceDeployment $
--             createContainerServiceDeploymentResponse
--
--         , responsePeerVPC $
--             peerVPCResponse
--
--         , responseUpdateLoadBalancerAttribute $
--             updateLoadBalancerAttributeResponse
--
--         , responseUpdateDistributionBundle $
--             updateDistributionBundleResponse
--
--         , responseAllocateStaticIP $
--             allocateStaticIPResponse
--
--         , responseCloseInstancePublicPorts $
--             closeInstancePublicPortsResponse
--
--         , responseDeleteCertificate $
--             deleteCertificateResponse
--
--         , responseDisableAddOn $
--             disableAddOnResponse
--
--         , responseGetCloudFormationStackRecords $
--             getCloudFormationStackRecordsResponse
--
--         , responseIsVPCPeered $
--             isVPCPeeredResponse
--
--         , responseGetRelationalDatabaseSnapshot $
--             getRelationalDatabaseSnapshotResponse
--
--         , responseGetRelationalDatabaseBlueprints $
--             getRelationalDatabaseBlueprintsResponse
--
--         , responseDeleteInstanceSnapshot $
--             deleteInstanceSnapshotResponse
--
--         , responseUnpeerVPC $
--             unpeerVPCResponse
--
--         , responseGetContainerAPIMetadata $
--             getContainerAPIMetadataResponse
--
--         , responseGetInstances $
--             getInstancesResponse
--
--         , responseCreateInstancesFromSnapshot $
--             createInstancesFromSnapshotResponse
--
--         , responseStartInstance $
--             startInstanceResponse
--
--         , responseCreateKeyPair $
--             createKeyPairResponse
--
--         , responseGetInstanceAccessDetails $
--             getInstanceAccessDetailsResponse
--
--         , responseCopySnapshot $
--             copySnapshotResponse
--
--         , responseCreateInstanceSnapshot $
--             createInstanceSnapshotResponse
--
--         , responseStopInstance $
--             stopInstanceResponse
--
--         , responseRegisterContainerImage $
--             registerContainerImageResponse
--
--         , responseDetachCertificateFromDistribution $
--             detachCertificateFromDistributionResponse
--
--         , responseCreateLoadBalancer $
--             createLoadBalancerResponse
--
--         , responseGetContainerServiceDeployments $
--             getContainerServiceDeploymentsResponse
--
--         , responseDeleteContactMethod $
--             deleteContactMethodResponse
--
--         , responseGetDomain $
--             getDomainResponse
--
--         , responseDetachStaticIP $
--             detachStaticIPResponse
--
--         , responseAttachDisk $
--             attachDiskResponse
--
--         , responseGetDisk $
--             getDiskResponse
--
--         , responseGetRelationalDatabaseLogEvents $
--             getRelationalDatabaseLogEventsResponse
--
--         , responseGetRelationalDatabases $
--             getRelationalDatabasesResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseCreateDiskFromSnapshot $
--             createDiskFromSnapshotResponse
--
--         , responseGetInstanceMetricData $
--             getInstanceMetricDataResponse
--
--         , responseDeleteLoadBalancer $
--             deleteLoadBalancerResponse
--
--         , responseExportSnapshot $
--             exportSnapshotResponse
--
--         , responseCreateRelationalDatabaseFromSnapshot $
--             createRelationalDatabaseFromSnapshotResponse
--
--         , responseGetOperations $
--             getOperationsResponse
--
--         , responseGetExportSnapshotRecords $
--             getExportSnapshotRecordsResponse
--
--         , responseGetLoadBalancerMetricData $
--             getLoadBalancerMetricDataResponse
--
--         , responseGetInstanceSnapshots $
--             getInstanceSnapshotsResponse
--
--         , responseDeleteInstance $
--             deleteInstanceResponse
--
--         , responseCreateLoadBalancerTLSCertificate $
--             createLoadBalancerTLSCertificateResponse
--
--         , responseRebootInstance $
--             rebootInstanceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetRelationalDatabase $
--             getRelationalDatabaseResponse
--
--         , responseGetKeyPairs $
--             getKeyPairsResponse
--
--         , responseAttachInstancesToLoadBalancer $
--             attachInstancesToLoadBalancerResponse
--
--         , responseGetRegions $
--             getRegionsResponse
--
--         , responseTestAlarm $
--             testAlarmResponse
--
--         , responseCreateDiskSnapshot $
--             createDiskSnapshotResponse
--
--         , responseSetIPAddressType $
--             setIPAddressTypeResponse
--
--         , responseDeleteAlarm $
--             deleteAlarmResponse
--
--         , responseSendContactMethodVerification $
--             sendContactMethodVerificationResponse
--
--         , responseGetRelationalDatabaseMasterUserPassword $
--             getRelationalDatabaseMasterUserPasswordResponse
--
--         , responseGetBlueprints $
--             getBlueprintsResponse
--
--         , responseDetachDisk $
--             detachDiskResponse
--
--         , responseGetInstancePortStates $
--             getInstancePortStatesResponse
--
--         , responseAttachStaticIP $
--             attachStaticIPResponse
--
--         , responseDownloadDefaultKeyPair $
--             downloadDefaultKeyPairResponse
--
--         , responseGetLoadBalancers $
--             getLoadBalancersResponse
--
--         , responseUpdateRelationalDatabase $
--             updateRelationalDatabaseResponse
--
--         , responseGetRelationalDatabaseBundles $
--             getRelationalDatabaseBundlesResponse
--
--         , responseAttachLoadBalancerTLSCertificate $
--             attachLoadBalancerTLSCertificateResponse
--
--         , responseAttachCertificateToDistribution $
--             attachCertificateToDistributionResponse
--
--         , responseDeleteRelationalDatabase $
--             deleteRelationalDatabaseResponse
--
--         , responseGetInstance $
--             getInstanceResponse
--
--         , responseRebootRelationalDatabase $
--             rebootRelationalDatabaseResponse
--
--         , responseGetRelationalDatabaseEvents $
--             getRelationalDatabaseEventsResponse
--
--         , responseCreateDomain $
--             createDomainResponse
--
--         , responseGetStaticIPs $
--             getStaticIPsResponse
--
--         , responseDeleteDisk $
--             deleteDiskResponse
--
--         , responseGetRelationalDatabaseMetricData $
--             getRelationalDatabaseMetricDataResponse
--
--         , responseGetDiskSnapshots $
--             getDiskSnapshotsResponse
--
--         , responseDeleteKeyPair $
--             deleteKeyPairResponse
--
--         , responseGetLoadBalancer $
--             getLoadBalancerResponse
--
--         , responseGetBundles $
--             getBundlesResponse
--
--         , responseCreateCertificate $
--             createCertificateResponse
--
--         , responseDetachInstancesFromLoadBalancer $
--             detachInstancesFromLoadBalancerResponse
--
--         , responseGetLoadBalancerTLSCertificates $
--             getLoadBalancerTLSCertificatesResponse
--
--         , responseDeleteContainerImage $
--             deleteContainerImageResponse
--
--         , responseGetOperationsForResource $
--             getOperationsForResourceResponse
--
--         , responseCreateDisk $
--             createDiskResponse
--
--         , responseEnableAddOn $
--             enableAddOnResponse
--
--         , responseDeleteDomain $
--             deleteDomainResponse
--
--         , responseStartRelationalDatabase $
--             startRelationalDatabaseResponse
--
--         , responseCreateRelationalDatabaseSnapshot $
--             createRelationalDatabaseSnapshotResponse
--
--         , responseGetAlarms $
--             getAlarmsResponse
--
--         , responseCreateDistribution $
--             createDistributionResponse
--
--         , responseCreateInstances $
--             createInstancesResponse
--
--         , responseCreateContainerService $
--             createContainerServiceResponse
--
--         , responseGetDistributionLatestCacheReset $
--             getDistributionLatestCacheResetResponse
--
--         , responseStopRelationalDatabase $
--             stopRelationalDatabaseResponse
--
--         , responseDeleteKnownHostKeys $
--             deleteKnownHostKeysResponse
--
--         , responseOpenInstancePublicPorts $
--             openInstancePublicPortsResponse
--
--         , responseGetActiveNames $
--             getActiveNamesResponse
--
--         , responseGetAutoSnapshots $
--             getAutoSnapshotsResponse
--
--         , responseGetRelationalDatabaseLogStreams $
--             getRelationalDatabaseLogStreamsResponse
--
--         , responseGetDistributionBundles $
--             getDistributionBundlesResponse
--
--         , responseGetOperation $
--             getOperationResponse
--
--         , responseDeleteRelationalDatabaseSnapshot $
--             deleteRelationalDatabaseSnapshotResponse
--
--         , responseGetInstanceSnapshot $
--             getInstanceSnapshotResponse
--
--         , responseDeleteContainerService $
--             deleteContainerServiceResponse
--
--         , responseUpdateDistribution $
--             updateDistributionResponse
--
--         , responsePutInstancePublicPorts $
--             putInstancePublicPortsResponse
--
--         , responseResetDistributionCache $
--             resetDistributionCacheResponse
--
--         , responseCreateContactMethod $
--             createContactMethodResponse
--
--         , responseDeleteDistribution $
--             deleteDistributionResponse
--
--         , responseUpdateContainerService $
--             updateContainerServiceResponse
--
--         , responseGetKeyPair $
--             getKeyPairResponse
--
--         , responseCreateCloudFormationStack $
--             createCloudFormationStackResponse
--
--         , responseCreateDomainEntry $
--             createDomainEntryResponse
--
--         , responseGetInstanceState $
--             getInstanceStateResponse
--
--         , responseGetDistributionMetricData $
--             getDistributionMetricDataResponse
--
--         , responseGetDisks $
--             getDisksResponse
--
--         , responseGetContainerServiceMetricData $
--             getContainerServiceMetricDataResponse
--
--         , responseCreateContainerServiceRegistryLogin $
--             createContainerServiceRegistryLoginResponse
--
--         , responseImportKeyPair $
--             importKeyPairResponse
--
--         , responseGetContainerServicePowers $
--             getContainerServicePowersResponse
--
--         , responseDeleteDiskSnapshot $
--             deleteDiskSnapshotResponse
--
--         , responseGetCertificates $
--             getCertificatesResponse
--
--         , responseReleaseStaticIP $
--             releaseStaticIPResponse
--
--         , responseUpdateRelationalDatabaseParameters $
--             updateRelationalDatabaseParametersResponse
--
--         , responseDeleteLoadBalancerTLSCertificate $
--             deleteLoadBalancerTLSCertificateResponse
--
--         , responseUpdateDomainEntry $
--             updateDomainEntryResponse
--
--         , responseGetContainerLog $
--             getContainerLogResponse
--
--         , responseDeleteDomainEntry $
--             deleteDomainEntryResponse
--
--         , responseGetContainerImages $
--             getContainerImagesResponse
--
--         , responseGetDomains $
--             getDomainsResponse
--
--         , responsePutAlarm $
--             putAlarmResponse
--
--         , responseDeleteAutoSnapshot $
--             deleteAutoSnapshotResponse
--
--         , responseGetContactMethods $
--             getContactMethodsResponse
--
--         , responseGetRelationalDatabaseParameters $
--             getRelationalDatabaseParametersResponse
--
--         , responseCreateRelationalDatabase $
--             createRelationalDatabaseResponse
--
--           ]
--     ]

-- Requests

requestGetContainerServices :: GetContainerServices -> TestTree
requestGetContainerServices =
  req
    "GetContainerServices"
    "fixture/GetContainerServices.yaml"

requestGetStaticIP :: GetStaticIP -> TestTree
requestGetStaticIP =
  req
    "GetStaticIP"
    "fixture/GetStaticIP.yaml"

requestGetRelationalDatabaseSnapshots :: GetRelationalDatabaseSnapshots -> TestTree
requestGetRelationalDatabaseSnapshots =
  req
    "GetRelationalDatabaseSnapshots"
    "fixture/GetRelationalDatabaseSnapshots.yaml"

requestGetDistributions :: GetDistributions -> TestTree
requestGetDistributions =
  req
    "GetDistributions"
    "fixture/GetDistributions.yaml"

requestGetDiskSnapshot :: GetDiskSnapshot -> TestTree
requestGetDiskSnapshot =
  req
    "GetDiskSnapshot"
    "fixture/GetDiskSnapshot.yaml"

requestCreateContainerServiceDeployment :: CreateContainerServiceDeployment -> TestTree
requestCreateContainerServiceDeployment =
  req
    "CreateContainerServiceDeployment"
    "fixture/CreateContainerServiceDeployment.yaml"

requestPeerVPC :: PeerVPC -> TestTree
requestPeerVPC =
  req
    "PeerVPC"
    "fixture/PeerVPC.yaml"

requestUpdateLoadBalancerAttribute :: UpdateLoadBalancerAttribute -> TestTree
requestUpdateLoadBalancerAttribute =
  req
    "UpdateLoadBalancerAttribute"
    "fixture/UpdateLoadBalancerAttribute.yaml"

requestUpdateDistributionBundle :: UpdateDistributionBundle -> TestTree
requestUpdateDistributionBundle =
  req
    "UpdateDistributionBundle"
    "fixture/UpdateDistributionBundle.yaml"

requestAllocateStaticIP :: AllocateStaticIP -> TestTree
requestAllocateStaticIP =
  req
    "AllocateStaticIP"
    "fixture/AllocateStaticIP.yaml"

requestCloseInstancePublicPorts :: CloseInstancePublicPorts -> TestTree
requestCloseInstancePublicPorts =
  req
    "CloseInstancePublicPorts"
    "fixture/CloseInstancePublicPorts.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate =
  req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestDisableAddOn :: DisableAddOn -> TestTree
requestDisableAddOn =
  req
    "DisableAddOn"
    "fixture/DisableAddOn.yaml"

requestGetCloudFormationStackRecords :: GetCloudFormationStackRecords -> TestTree
requestGetCloudFormationStackRecords =
  req
    "GetCloudFormationStackRecords"
    "fixture/GetCloudFormationStackRecords.yaml"

requestIsVPCPeered :: IsVPCPeered -> TestTree
requestIsVPCPeered =
  req
    "IsVPCPeered"
    "fixture/IsVPCPeered.yaml"

requestGetRelationalDatabaseSnapshot :: GetRelationalDatabaseSnapshot -> TestTree
requestGetRelationalDatabaseSnapshot =
  req
    "GetRelationalDatabaseSnapshot"
    "fixture/GetRelationalDatabaseSnapshot.yaml"

requestGetRelationalDatabaseBlueprints :: GetRelationalDatabaseBlueprints -> TestTree
requestGetRelationalDatabaseBlueprints =
  req
    "GetRelationalDatabaseBlueprints"
    "fixture/GetRelationalDatabaseBlueprints.yaml"

requestDeleteInstanceSnapshot :: DeleteInstanceSnapshot -> TestTree
requestDeleteInstanceSnapshot =
  req
    "DeleteInstanceSnapshot"
    "fixture/DeleteInstanceSnapshot.yaml"

requestUnpeerVPC :: UnpeerVPC -> TestTree
requestUnpeerVPC =
  req
    "UnpeerVPC"
    "fixture/UnpeerVPC.yaml"

requestGetContainerAPIMetadata :: GetContainerAPIMetadata -> TestTree
requestGetContainerAPIMetadata =
  req
    "GetContainerAPIMetadata"
    "fixture/GetContainerAPIMetadata.yaml"

requestGetInstances :: GetInstances -> TestTree
requestGetInstances =
  req
    "GetInstances"
    "fixture/GetInstances.yaml"

requestCreateInstancesFromSnapshot :: CreateInstancesFromSnapshot -> TestTree
requestCreateInstancesFromSnapshot =
  req
    "CreateInstancesFromSnapshot"
    "fixture/CreateInstancesFromSnapshot.yaml"

requestStartInstance :: StartInstance -> TestTree
requestStartInstance =
  req
    "StartInstance"
    "fixture/StartInstance.yaml"

requestCreateKeyPair :: CreateKeyPair -> TestTree
requestCreateKeyPair =
  req
    "CreateKeyPair"
    "fixture/CreateKeyPair.yaml"

requestGetInstanceAccessDetails :: GetInstanceAccessDetails -> TestTree
requestGetInstanceAccessDetails =
  req
    "GetInstanceAccessDetails"
    "fixture/GetInstanceAccessDetails.yaml"

requestCopySnapshot :: CopySnapshot -> TestTree
requestCopySnapshot =
  req
    "CopySnapshot"
    "fixture/CopySnapshot.yaml"

requestCreateInstanceSnapshot :: CreateInstanceSnapshot -> TestTree
requestCreateInstanceSnapshot =
  req
    "CreateInstanceSnapshot"
    "fixture/CreateInstanceSnapshot.yaml"

requestStopInstance :: StopInstance -> TestTree
requestStopInstance =
  req
    "StopInstance"
    "fixture/StopInstance.yaml"

requestRegisterContainerImage :: RegisterContainerImage -> TestTree
requestRegisterContainerImage =
  req
    "RegisterContainerImage"
    "fixture/RegisterContainerImage.yaml"

requestDetachCertificateFromDistribution :: DetachCertificateFromDistribution -> TestTree
requestDetachCertificateFromDistribution =
  req
    "DetachCertificateFromDistribution"
    "fixture/DetachCertificateFromDistribution.yaml"

requestCreateLoadBalancer :: CreateLoadBalancer -> TestTree
requestCreateLoadBalancer =
  req
    "CreateLoadBalancer"
    "fixture/CreateLoadBalancer.yaml"

requestGetContainerServiceDeployments :: GetContainerServiceDeployments -> TestTree
requestGetContainerServiceDeployments =
  req
    "GetContainerServiceDeployments"
    "fixture/GetContainerServiceDeployments.yaml"

requestDeleteContactMethod :: DeleteContactMethod -> TestTree
requestDeleteContactMethod =
  req
    "DeleteContactMethod"
    "fixture/DeleteContactMethod.yaml"

requestGetDomain :: GetDomain -> TestTree
requestGetDomain =
  req
    "GetDomain"
    "fixture/GetDomain.yaml"

requestDetachStaticIP :: DetachStaticIP -> TestTree
requestDetachStaticIP =
  req
    "DetachStaticIP"
    "fixture/DetachStaticIP.yaml"

requestAttachDisk :: AttachDisk -> TestTree
requestAttachDisk =
  req
    "AttachDisk"
    "fixture/AttachDisk.yaml"

requestGetDisk :: GetDisk -> TestTree
requestGetDisk =
  req
    "GetDisk"
    "fixture/GetDisk.yaml"

requestGetRelationalDatabaseLogEvents :: GetRelationalDatabaseLogEvents -> TestTree
requestGetRelationalDatabaseLogEvents =
  req
    "GetRelationalDatabaseLogEvents"
    "fixture/GetRelationalDatabaseLogEvents.yaml"

requestGetRelationalDatabases :: GetRelationalDatabases -> TestTree
requestGetRelationalDatabases =
  req
    "GetRelationalDatabases"
    "fixture/GetRelationalDatabases.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCreateDiskFromSnapshot :: CreateDiskFromSnapshot -> TestTree
requestCreateDiskFromSnapshot =
  req
    "CreateDiskFromSnapshot"
    "fixture/CreateDiskFromSnapshot.yaml"

requestGetInstanceMetricData :: GetInstanceMetricData -> TestTree
requestGetInstanceMetricData =
  req
    "GetInstanceMetricData"
    "fixture/GetInstanceMetricData.yaml"

requestDeleteLoadBalancer :: DeleteLoadBalancer -> TestTree
requestDeleteLoadBalancer =
  req
    "DeleteLoadBalancer"
    "fixture/DeleteLoadBalancer.yaml"

requestExportSnapshot :: ExportSnapshot -> TestTree
requestExportSnapshot =
  req
    "ExportSnapshot"
    "fixture/ExportSnapshot.yaml"

requestCreateRelationalDatabaseFromSnapshot :: CreateRelationalDatabaseFromSnapshot -> TestTree
requestCreateRelationalDatabaseFromSnapshot =
  req
    "CreateRelationalDatabaseFromSnapshot"
    "fixture/CreateRelationalDatabaseFromSnapshot.yaml"

requestGetOperations :: GetOperations -> TestTree
requestGetOperations =
  req
    "GetOperations"
    "fixture/GetOperations.yaml"

requestGetExportSnapshotRecords :: GetExportSnapshotRecords -> TestTree
requestGetExportSnapshotRecords =
  req
    "GetExportSnapshotRecords"
    "fixture/GetExportSnapshotRecords.yaml"

requestGetLoadBalancerMetricData :: GetLoadBalancerMetricData -> TestTree
requestGetLoadBalancerMetricData =
  req
    "GetLoadBalancerMetricData"
    "fixture/GetLoadBalancerMetricData.yaml"

requestGetInstanceSnapshots :: GetInstanceSnapshots -> TestTree
requestGetInstanceSnapshots =
  req
    "GetInstanceSnapshots"
    "fixture/GetInstanceSnapshots.yaml"

requestDeleteInstance :: DeleteInstance -> TestTree
requestDeleteInstance =
  req
    "DeleteInstance"
    "fixture/DeleteInstance.yaml"

requestCreateLoadBalancerTLSCertificate :: CreateLoadBalancerTLSCertificate -> TestTree
requestCreateLoadBalancerTLSCertificate =
  req
    "CreateLoadBalancerTLSCertificate"
    "fixture/CreateLoadBalancerTLSCertificate.yaml"

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

requestGetRelationalDatabase :: GetRelationalDatabase -> TestTree
requestGetRelationalDatabase =
  req
    "GetRelationalDatabase"
    "fixture/GetRelationalDatabase.yaml"

requestGetKeyPairs :: GetKeyPairs -> TestTree
requestGetKeyPairs =
  req
    "GetKeyPairs"
    "fixture/GetKeyPairs.yaml"

requestAttachInstancesToLoadBalancer :: AttachInstancesToLoadBalancer -> TestTree
requestAttachInstancesToLoadBalancer =
  req
    "AttachInstancesToLoadBalancer"
    "fixture/AttachInstancesToLoadBalancer.yaml"

requestGetRegions :: GetRegions -> TestTree
requestGetRegions =
  req
    "GetRegions"
    "fixture/GetRegions.yaml"

requestTestAlarm :: TestAlarm -> TestTree
requestTestAlarm =
  req
    "TestAlarm"
    "fixture/TestAlarm.yaml"

requestCreateDiskSnapshot :: CreateDiskSnapshot -> TestTree
requestCreateDiskSnapshot =
  req
    "CreateDiskSnapshot"
    "fixture/CreateDiskSnapshot.yaml"

requestSetIPAddressType :: SetIPAddressType -> TestTree
requestSetIPAddressType =
  req
    "SetIPAddressType"
    "fixture/SetIPAddressType.yaml"

requestDeleteAlarm :: DeleteAlarm -> TestTree
requestDeleteAlarm =
  req
    "DeleteAlarm"
    "fixture/DeleteAlarm.yaml"

requestSendContactMethodVerification :: SendContactMethodVerification -> TestTree
requestSendContactMethodVerification =
  req
    "SendContactMethodVerification"
    "fixture/SendContactMethodVerification.yaml"

requestGetRelationalDatabaseMasterUserPassword :: GetRelationalDatabaseMasterUserPassword -> TestTree
requestGetRelationalDatabaseMasterUserPassword =
  req
    "GetRelationalDatabaseMasterUserPassword"
    "fixture/GetRelationalDatabaseMasterUserPassword.yaml"

requestGetBlueprints :: GetBlueprints -> TestTree
requestGetBlueprints =
  req
    "GetBlueprints"
    "fixture/GetBlueprints.yaml"

requestDetachDisk :: DetachDisk -> TestTree
requestDetachDisk =
  req
    "DetachDisk"
    "fixture/DetachDisk.yaml"

requestGetInstancePortStates :: GetInstancePortStates -> TestTree
requestGetInstancePortStates =
  req
    "GetInstancePortStates"
    "fixture/GetInstancePortStates.yaml"

requestAttachStaticIP :: AttachStaticIP -> TestTree
requestAttachStaticIP =
  req
    "AttachStaticIP"
    "fixture/AttachStaticIP.yaml"

requestDownloadDefaultKeyPair :: DownloadDefaultKeyPair -> TestTree
requestDownloadDefaultKeyPair =
  req
    "DownloadDefaultKeyPair"
    "fixture/DownloadDefaultKeyPair.yaml"

requestGetLoadBalancers :: GetLoadBalancers -> TestTree
requestGetLoadBalancers =
  req
    "GetLoadBalancers"
    "fixture/GetLoadBalancers.yaml"

requestUpdateRelationalDatabase :: UpdateRelationalDatabase -> TestTree
requestUpdateRelationalDatabase =
  req
    "UpdateRelationalDatabase"
    "fixture/UpdateRelationalDatabase.yaml"

requestGetRelationalDatabaseBundles :: GetRelationalDatabaseBundles -> TestTree
requestGetRelationalDatabaseBundles =
  req
    "GetRelationalDatabaseBundles"
    "fixture/GetRelationalDatabaseBundles.yaml"

requestAttachLoadBalancerTLSCertificate :: AttachLoadBalancerTLSCertificate -> TestTree
requestAttachLoadBalancerTLSCertificate =
  req
    "AttachLoadBalancerTLSCertificate"
    "fixture/AttachLoadBalancerTLSCertificate.yaml"

requestAttachCertificateToDistribution :: AttachCertificateToDistribution -> TestTree
requestAttachCertificateToDistribution =
  req
    "AttachCertificateToDistribution"
    "fixture/AttachCertificateToDistribution.yaml"

requestDeleteRelationalDatabase :: DeleteRelationalDatabase -> TestTree
requestDeleteRelationalDatabase =
  req
    "DeleteRelationalDatabase"
    "fixture/DeleteRelationalDatabase.yaml"

requestGetInstance :: GetInstance -> TestTree
requestGetInstance =
  req
    "GetInstance"
    "fixture/GetInstance.yaml"

requestRebootRelationalDatabase :: RebootRelationalDatabase -> TestTree
requestRebootRelationalDatabase =
  req
    "RebootRelationalDatabase"
    "fixture/RebootRelationalDatabase.yaml"

requestGetRelationalDatabaseEvents :: GetRelationalDatabaseEvents -> TestTree
requestGetRelationalDatabaseEvents =
  req
    "GetRelationalDatabaseEvents"
    "fixture/GetRelationalDatabaseEvents.yaml"

requestCreateDomain :: CreateDomain -> TestTree
requestCreateDomain =
  req
    "CreateDomain"
    "fixture/CreateDomain.yaml"

requestGetStaticIPs :: GetStaticIPs -> TestTree
requestGetStaticIPs =
  req
    "GetStaticIPs"
    "fixture/GetStaticIPs.yaml"

requestDeleteDisk :: DeleteDisk -> TestTree
requestDeleteDisk =
  req
    "DeleteDisk"
    "fixture/DeleteDisk.yaml"

requestGetRelationalDatabaseMetricData :: GetRelationalDatabaseMetricData -> TestTree
requestGetRelationalDatabaseMetricData =
  req
    "GetRelationalDatabaseMetricData"
    "fixture/GetRelationalDatabaseMetricData.yaml"

requestGetDiskSnapshots :: GetDiskSnapshots -> TestTree
requestGetDiskSnapshots =
  req
    "GetDiskSnapshots"
    "fixture/GetDiskSnapshots.yaml"

requestDeleteKeyPair :: DeleteKeyPair -> TestTree
requestDeleteKeyPair =
  req
    "DeleteKeyPair"
    "fixture/DeleteKeyPair.yaml"

requestGetLoadBalancer :: GetLoadBalancer -> TestTree
requestGetLoadBalancer =
  req
    "GetLoadBalancer"
    "fixture/GetLoadBalancer.yaml"

requestGetBundles :: GetBundles -> TestTree
requestGetBundles =
  req
    "GetBundles"
    "fixture/GetBundles.yaml"

requestCreateCertificate :: CreateCertificate -> TestTree
requestCreateCertificate =
  req
    "CreateCertificate"
    "fixture/CreateCertificate.yaml"

requestDetachInstancesFromLoadBalancer :: DetachInstancesFromLoadBalancer -> TestTree
requestDetachInstancesFromLoadBalancer =
  req
    "DetachInstancesFromLoadBalancer"
    "fixture/DetachInstancesFromLoadBalancer.yaml"

requestGetLoadBalancerTLSCertificates :: GetLoadBalancerTLSCertificates -> TestTree
requestGetLoadBalancerTLSCertificates =
  req
    "GetLoadBalancerTLSCertificates"
    "fixture/GetLoadBalancerTLSCertificates.yaml"

requestDeleteContainerImage :: DeleteContainerImage -> TestTree
requestDeleteContainerImage =
  req
    "DeleteContainerImage"
    "fixture/DeleteContainerImage.yaml"

requestGetOperationsForResource :: GetOperationsForResource -> TestTree
requestGetOperationsForResource =
  req
    "GetOperationsForResource"
    "fixture/GetOperationsForResource.yaml"

requestCreateDisk :: CreateDisk -> TestTree
requestCreateDisk =
  req
    "CreateDisk"
    "fixture/CreateDisk.yaml"

requestEnableAddOn :: EnableAddOn -> TestTree
requestEnableAddOn =
  req
    "EnableAddOn"
    "fixture/EnableAddOn.yaml"

requestDeleteDomain :: DeleteDomain -> TestTree
requestDeleteDomain =
  req
    "DeleteDomain"
    "fixture/DeleteDomain.yaml"

requestStartRelationalDatabase :: StartRelationalDatabase -> TestTree
requestStartRelationalDatabase =
  req
    "StartRelationalDatabase"
    "fixture/StartRelationalDatabase.yaml"

requestCreateRelationalDatabaseSnapshot :: CreateRelationalDatabaseSnapshot -> TestTree
requestCreateRelationalDatabaseSnapshot =
  req
    "CreateRelationalDatabaseSnapshot"
    "fixture/CreateRelationalDatabaseSnapshot.yaml"

requestGetAlarms :: GetAlarms -> TestTree
requestGetAlarms =
  req
    "GetAlarms"
    "fixture/GetAlarms.yaml"

requestCreateDistribution :: CreateDistribution -> TestTree
requestCreateDistribution =
  req
    "CreateDistribution"
    "fixture/CreateDistribution.yaml"

requestCreateInstances :: CreateInstances -> TestTree
requestCreateInstances =
  req
    "CreateInstances"
    "fixture/CreateInstances.yaml"

requestCreateContainerService :: CreateContainerService -> TestTree
requestCreateContainerService =
  req
    "CreateContainerService"
    "fixture/CreateContainerService.yaml"

requestGetDistributionLatestCacheReset :: GetDistributionLatestCacheReset -> TestTree
requestGetDistributionLatestCacheReset =
  req
    "GetDistributionLatestCacheReset"
    "fixture/GetDistributionLatestCacheReset.yaml"

requestStopRelationalDatabase :: StopRelationalDatabase -> TestTree
requestStopRelationalDatabase =
  req
    "StopRelationalDatabase"
    "fixture/StopRelationalDatabase.yaml"

requestDeleteKnownHostKeys :: DeleteKnownHostKeys -> TestTree
requestDeleteKnownHostKeys =
  req
    "DeleteKnownHostKeys"
    "fixture/DeleteKnownHostKeys.yaml"

requestOpenInstancePublicPorts :: OpenInstancePublicPorts -> TestTree
requestOpenInstancePublicPorts =
  req
    "OpenInstancePublicPorts"
    "fixture/OpenInstancePublicPorts.yaml"

requestGetActiveNames :: GetActiveNames -> TestTree
requestGetActiveNames =
  req
    "GetActiveNames"
    "fixture/GetActiveNames.yaml"

requestGetAutoSnapshots :: GetAutoSnapshots -> TestTree
requestGetAutoSnapshots =
  req
    "GetAutoSnapshots"
    "fixture/GetAutoSnapshots.yaml"

requestGetRelationalDatabaseLogStreams :: GetRelationalDatabaseLogStreams -> TestTree
requestGetRelationalDatabaseLogStreams =
  req
    "GetRelationalDatabaseLogStreams"
    "fixture/GetRelationalDatabaseLogStreams.yaml"

requestGetDistributionBundles :: GetDistributionBundles -> TestTree
requestGetDistributionBundles =
  req
    "GetDistributionBundles"
    "fixture/GetDistributionBundles.yaml"

requestGetOperation :: GetOperation -> TestTree
requestGetOperation =
  req
    "GetOperation"
    "fixture/GetOperation.yaml"

requestDeleteRelationalDatabaseSnapshot :: DeleteRelationalDatabaseSnapshot -> TestTree
requestDeleteRelationalDatabaseSnapshot =
  req
    "DeleteRelationalDatabaseSnapshot"
    "fixture/DeleteRelationalDatabaseSnapshot.yaml"

requestGetInstanceSnapshot :: GetInstanceSnapshot -> TestTree
requestGetInstanceSnapshot =
  req
    "GetInstanceSnapshot"
    "fixture/GetInstanceSnapshot.yaml"

requestDeleteContainerService :: DeleteContainerService -> TestTree
requestDeleteContainerService =
  req
    "DeleteContainerService"
    "fixture/DeleteContainerService.yaml"

requestUpdateDistribution :: UpdateDistribution -> TestTree
requestUpdateDistribution =
  req
    "UpdateDistribution"
    "fixture/UpdateDistribution.yaml"

requestPutInstancePublicPorts :: PutInstancePublicPorts -> TestTree
requestPutInstancePublicPorts =
  req
    "PutInstancePublicPorts"
    "fixture/PutInstancePublicPorts.yaml"

requestResetDistributionCache :: ResetDistributionCache -> TestTree
requestResetDistributionCache =
  req
    "ResetDistributionCache"
    "fixture/ResetDistributionCache.yaml"

requestCreateContactMethod :: CreateContactMethod -> TestTree
requestCreateContactMethod =
  req
    "CreateContactMethod"
    "fixture/CreateContactMethod.yaml"

requestDeleteDistribution :: DeleteDistribution -> TestTree
requestDeleteDistribution =
  req
    "DeleteDistribution"
    "fixture/DeleteDistribution.yaml"

requestUpdateContainerService :: UpdateContainerService -> TestTree
requestUpdateContainerService =
  req
    "UpdateContainerService"
    "fixture/UpdateContainerService.yaml"

requestGetKeyPair :: GetKeyPair -> TestTree
requestGetKeyPair =
  req
    "GetKeyPair"
    "fixture/GetKeyPair.yaml"

requestCreateCloudFormationStack :: CreateCloudFormationStack -> TestTree
requestCreateCloudFormationStack =
  req
    "CreateCloudFormationStack"
    "fixture/CreateCloudFormationStack.yaml"

requestCreateDomainEntry :: CreateDomainEntry -> TestTree
requestCreateDomainEntry =
  req
    "CreateDomainEntry"
    "fixture/CreateDomainEntry.yaml"

requestGetInstanceState :: GetInstanceState -> TestTree
requestGetInstanceState =
  req
    "GetInstanceState"
    "fixture/GetInstanceState.yaml"

requestGetDistributionMetricData :: GetDistributionMetricData -> TestTree
requestGetDistributionMetricData =
  req
    "GetDistributionMetricData"
    "fixture/GetDistributionMetricData.yaml"

requestGetDisks :: GetDisks -> TestTree
requestGetDisks =
  req
    "GetDisks"
    "fixture/GetDisks.yaml"

requestGetContainerServiceMetricData :: GetContainerServiceMetricData -> TestTree
requestGetContainerServiceMetricData =
  req
    "GetContainerServiceMetricData"
    "fixture/GetContainerServiceMetricData.yaml"

requestCreateContainerServiceRegistryLogin :: CreateContainerServiceRegistryLogin -> TestTree
requestCreateContainerServiceRegistryLogin =
  req
    "CreateContainerServiceRegistryLogin"
    "fixture/CreateContainerServiceRegistryLogin.yaml"

requestImportKeyPair :: ImportKeyPair -> TestTree
requestImportKeyPair =
  req
    "ImportKeyPair"
    "fixture/ImportKeyPair.yaml"

requestGetContainerServicePowers :: GetContainerServicePowers -> TestTree
requestGetContainerServicePowers =
  req
    "GetContainerServicePowers"
    "fixture/GetContainerServicePowers.yaml"

requestDeleteDiskSnapshot :: DeleteDiskSnapshot -> TestTree
requestDeleteDiskSnapshot =
  req
    "DeleteDiskSnapshot"
    "fixture/DeleteDiskSnapshot.yaml"

requestGetCertificates :: GetCertificates -> TestTree
requestGetCertificates =
  req
    "GetCertificates"
    "fixture/GetCertificates.yaml"

requestReleaseStaticIP :: ReleaseStaticIP -> TestTree
requestReleaseStaticIP =
  req
    "ReleaseStaticIP"
    "fixture/ReleaseStaticIP.yaml"

requestUpdateRelationalDatabaseParameters :: UpdateRelationalDatabaseParameters -> TestTree
requestUpdateRelationalDatabaseParameters =
  req
    "UpdateRelationalDatabaseParameters"
    "fixture/UpdateRelationalDatabaseParameters.yaml"

requestDeleteLoadBalancerTLSCertificate :: DeleteLoadBalancerTLSCertificate -> TestTree
requestDeleteLoadBalancerTLSCertificate =
  req
    "DeleteLoadBalancerTLSCertificate"
    "fixture/DeleteLoadBalancerTLSCertificate.yaml"

requestUpdateDomainEntry :: UpdateDomainEntry -> TestTree
requestUpdateDomainEntry =
  req
    "UpdateDomainEntry"
    "fixture/UpdateDomainEntry.yaml"

requestGetContainerLog :: GetContainerLog -> TestTree
requestGetContainerLog =
  req
    "GetContainerLog"
    "fixture/GetContainerLog.yaml"

requestDeleteDomainEntry :: DeleteDomainEntry -> TestTree
requestDeleteDomainEntry =
  req
    "DeleteDomainEntry"
    "fixture/DeleteDomainEntry.yaml"

requestGetContainerImages :: GetContainerImages -> TestTree
requestGetContainerImages =
  req
    "GetContainerImages"
    "fixture/GetContainerImages.yaml"

requestGetDomains :: GetDomains -> TestTree
requestGetDomains =
  req
    "GetDomains"
    "fixture/GetDomains.yaml"

requestPutAlarm :: PutAlarm -> TestTree
requestPutAlarm =
  req
    "PutAlarm"
    "fixture/PutAlarm.yaml"

requestDeleteAutoSnapshot :: DeleteAutoSnapshot -> TestTree
requestDeleteAutoSnapshot =
  req
    "DeleteAutoSnapshot"
    "fixture/DeleteAutoSnapshot.yaml"

requestGetContactMethods :: GetContactMethods -> TestTree
requestGetContactMethods =
  req
    "GetContactMethods"
    "fixture/GetContactMethods.yaml"

requestGetRelationalDatabaseParameters :: GetRelationalDatabaseParameters -> TestTree
requestGetRelationalDatabaseParameters =
  req
    "GetRelationalDatabaseParameters"
    "fixture/GetRelationalDatabaseParameters.yaml"

requestCreateRelationalDatabase :: CreateRelationalDatabase -> TestTree
requestCreateRelationalDatabase =
  req
    "CreateRelationalDatabase"
    "fixture/CreateRelationalDatabase.yaml"

-- Responses

responseGetContainerServices :: GetContainerServicesResponse -> TestTree
responseGetContainerServices =
  res
    "GetContainerServicesResponse"
    "fixture/GetContainerServicesResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerServices)

responseGetStaticIP :: GetStaticIPResponse -> TestTree
responseGetStaticIP =
  res
    "GetStaticIPResponse"
    "fixture/GetStaticIPResponse.proto"
    lightsail
    (Proxy :: Proxy GetStaticIP)

responseGetRelationalDatabaseSnapshots :: GetRelationalDatabaseSnapshotsResponse -> TestTree
responseGetRelationalDatabaseSnapshots =
  res
    "GetRelationalDatabaseSnapshotsResponse"
    "fixture/GetRelationalDatabaseSnapshotsResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseSnapshots)

responseGetDistributions :: GetDistributionsResponse -> TestTree
responseGetDistributions =
  res
    "GetDistributionsResponse"
    "fixture/GetDistributionsResponse.proto"
    lightsail
    (Proxy :: Proxy GetDistributions)

responseGetDiskSnapshot :: GetDiskSnapshotResponse -> TestTree
responseGetDiskSnapshot =
  res
    "GetDiskSnapshotResponse"
    "fixture/GetDiskSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy GetDiskSnapshot)

responseCreateContainerServiceDeployment :: CreateContainerServiceDeploymentResponse -> TestTree
responseCreateContainerServiceDeployment =
  res
    "CreateContainerServiceDeploymentResponse"
    "fixture/CreateContainerServiceDeploymentResponse.proto"
    lightsail
    (Proxy :: Proxy CreateContainerServiceDeployment)

responsePeerVPC :: PeerVPCResponse -> TestTree
responsePeerVPC =
  res
    "PeerVPCResponse"
    "fixture/PeerVPCResponse.proto"
    lightsail
    (Proxy :: Proxy PeerVPC)

responseUpdateLoadBalancerAttribute :: UpdateLoadBalancerAttributeResponse -> TestTree
responseUpdateLoadBalancerAttribute =
  res
    "UpdateLoadBalancerAttributeResponse"
    "fixture/UpdateLoadBalancerAttributeResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateLoadBalancerAttribute)

responseUpdateDistributionBundle :: UpdateDistributionBundleResponse -> TestTree
responseUpdateDistributionBundle =
  res
    "UpdateDistributionBundleResponse"
    "fixture/UpdateDistributionBundleResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateDistributionBundle)

responseAllocateStaticIP :: AllocateStaticIPResponse -> TestTree
responseAllocateStaticIP =
  res
    "AllocateStaticIPResponse"
    "fixture/AllocateStaticIPResponse.proto"
    lightsail
    (Proxy :: Proxy AllocateStaticIP)

responseCloseInstancePublicPorts :: CloseInstancePublicPortsResponse -> TestTree
responseCloseInstancePublicPorts =
  res
    "CloseInstancePublicPortsResponse"
    "fixture/CloseInstancePublicPortsResponse.proto"
    lightsail
    (Proxy :: Proxy CloseInstancePublicPorts)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate =
  res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteCertificate)

responseDisableAddOn :: DisableAddOnResponse -> TestTree
responseDisableAddOn =
  res
    "DisableAddOnResponse"
    "fixture/DisableAddOnResponse.proto"
    lightsail
    (Proxy :: Proxy DisableAddOn)

responseGetCloudFormationStackRecords :: GetCloudFormationStackRecordsResponse -> TestTree
responseGetCloudFormationStackRecords =
  res
    "GetCloudFormationStackRecordsResponse"
    "fixture/GetCloudFormationStackRecordsResponse.proto"
    lightsail
    (Proxy :: Proxy GetCloudFormationStackRecords)

responseIsVPCPeered :: IsVPCPeeredResponse -> TestTree
responseIsVPCPeered =
  res
    "IsVPCPeeredResponse"
    "fixture/IsVPCPeeredResponse.proto"
    lightsail
    (Proxy :: Proxy IsVPCPeered)

responseGetRelationalDatabaseSnapshot :: GetRelationalDatabaseSnapshotResponse -> TestTree
responseGetRelationalDatabaseSnapshot =
  res
    "GetRelationalDatabaseSnapshotResponse"
    "fixture/GetRelationalDatabaseSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseSnapshot)

responseGetRelationalDatabaseBlueprints :: GetRelationalDatabaseBlueprintsResponse -> TestTree
responseGetRelationalDatabaseBlueprints =
  res
    "GetRelationalDatabaseBlueprintsResponse"
    "fixture/GetRelationalDatabaseBlueprintsResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseBlueprints)

responseDeleteInstanceSnapshot :: DeleteInstanceSnapshotResponse -> TestTree
responseDeleteInstanceSnapshot =
  res
    "DeleteInstanceSnapshotResponse"
    "fixture/DeleteInstanceSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteInstanceSnapshot)

responseUnpeerVPC :: UnpeerVPCResponse -> TestTree
responseUnpeerVPC =
  res
    "UnpeerVPCResponse"
    "fixture/UnpeerVPCResponse.proto"
    lightsail
    (Proxy :: Proxy UnpeerVPC)

responseGetContainerAPIMetadata :: GetContainerAPIMetadataResponse -> TestTree
responseGetContainerAPIMetadata =
  res
    "GetContainerAPIMetadataResponse"
    "fixture/GetContainerAPIMetadataResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerAPIMetadata)

responseGetInstances :: GetInstancesResponse -> TestTree
responseGetInstances =
  res
    "GetInstancesResponse"
    "fixture/GetInstancesResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstances)

responseCreateInstancesFromSnapshot :: CreateInstancesFromSnapshotResponse -> TestTree
responseCreateInstancesFromSnapshot =
  res
    "CreateInstancesFromSnapshotResponse"
    "fixture/CreateInstancesFromSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CreateInstancesFromSnapshot)

responseStartInstance :: StartInstanceResponse -> TestTree
responseStartInstance =
  res
    "StartInstanceResponse"
    "fixture/StartInstanceResponse.proto"
    lightsail
    (Proxy :: Proxy StartInstance)

responseCreateKeyPair :: CreateKeyPairResponse -> TestTree
responseCreateKeyPair =
  res
    "CreateKeyPairResponse"
    "fixture/CreateKeyPairResponse.proto"
    lightsail
    (Proxy :: Proxy CreateKeyPair)

responseGetInstanceAccessDetails :: GetInstanceAccessDetailsResponse -> TestTree
responseGetInstanceAccessDetails =
  res
    "GetInstanceAccessDetailsResponse"
    "fixture/GetInstanceAccessDetailsResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstanceAccessDetails)

responseCopySnapshot :: CopySnapshotResponse -> TestTree
responseCopySnapshot =
  res
    "CopySnapshotResponse"
    "fixture/CopySnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CopySnapshot)

responseCreateInstanceSnapshot :: CreateInstanceSnapshotResponse -> TestTree
responseCreateInstanceSnapshot =
  res
    "CreateInstanceSnapshotResponse"
    "fixture/CreateInstanceSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CreateInstanceSnapshot)

responseStopInstance :: StopInstanceResponse -> TestTree
responseStopInstance =
  res
    "StopInstanceResponse"
    "fixture/StopInstanceResponse.proto"
    lightsail
    (Proxy :: Proxy StopInstance)

responseRegisterContainerImage :: RegisterContainerImageResponse -> TestTree
responseRegisterContainerImage =
  res
    "RegisterContainerImageResponse"
    "fixture/RegisterContainerImageResponse.proto"
    lightsail
    (Proxy :: Proxy RegisterContainerImage)

responseDetachCertificateFromDistribution :: DetachCertificateFromDistributionResponse -> TestTree
responseDetachCertificateFromDistribution =
  res
    "DetachCertificateFromDistributionResponse"
    "fixture/DetachCertificateFromDistributionResponse.proto"
    lightsail
    (Proxy :: Proxy DetachCertificateFromDistribution)

responseCreateLoadBalancer :: CreateLoadBalancerResponse -> TestTree
responseCreateLoadBalancer =
  res
    "CreateLoadBalancerResponse"
    "fixture/CreateLoadBalancerResponse.proto"
    lightsail
    (Proxy :: Proxy CreateLoadBalancer)

responseGetContainerServiceDeployments :: GetContainerServiceDeploymentsResponse -> TestTree
responseGetContainerServiceDeployments =
  res
    "GetContainerServiceDeploymentsResponse"
    "fixture/GetContainerServiceDeploymentsResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerServiceDeployments)

responseDeleteContactMethod :: DeleteContactMethodResponse -> TestTree
responseDeleteContactMethod =
  res
    "DeleteContactMethodResponse"
    "fixture/DeleteContactMethodResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteContactMethod)

responseGetDomain :: GetDomainResponse -> TestTree
responseGetDomain =
  res
    "GetDomainResponse"
    "fixture/GetDomainResponse.proto"
    lightsail
    (Proxy :: Proxy GetDomain)

responseDetachStaticIP :: DetachStaticIPResponse -> TestTree
responseDetachStaticIP =
  res
    "DetachStaticIPResponse"
    "fixture/DetachStaticIPResponse.proto"
    lightsail
    (Proxy :: Proxy DetachStaticIP)

responseAttachDisk :: AttachDiskResponse -> TestTree
responseAttachDisk =
  res
    "AttachDiskResponse"
    "fixture/AttachDiskResponse.proto"
    lightsail
    (Proxy :: Proxy AttachDisk)

responseGetDisk :: GetDiskResponse -> TestTree
responseGetDisk =
  res
    "GetDiskResponse"
    "fixture/GetDiskResponse.proto"
    lightsail
    (Proxy :: Proxy GetDisk)

responseGetRelationalDatabaseLogEvents :: GetRelationalDatabaseLogEventsResponse -> TestTree
responseGetRelationalDatabaseLogEvents =
  res
    "GetRelationalDatabaseLogEventsResponse"
    "fixture/GetRelationalDatabaseLogEventsResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseLogEvents)

responseGetRelationalDatabases :: GetRelationalDatabasesResponse -> TestTree
responseGetRelationalDatabases =
  res
    "GetRelationalDatabasesResponse"
    "fixture/GetRelationalDatabasesResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabases)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    lightsail
    (Proxy :: Proxy UntagResource)

responseCreateDiskFromSnapshot :: CreateDiskFromSnapshotResponse -> TestTree
responseCreateDiskFromSnapshot =
  res
    "CreateDiskFromSnapshotResponse"
    "fixture/CreateDiskFromSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CreateDiskFromSnapshot)

responseGetInstanceMetricData :: GetInstanceMetricDataResponse -> TestTree
responseGetInstanceMetricData =
  res
    "GetInstanceMetricDataResponse"
    "fixture/GetInstanceMetricDataResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstanceMetricData)

responseDeleteLoadBalancer :: DeleteLoadBalancerResponse -> TestTree
responseDeleteLoadBalancer =
  res
    "DeleteLoadBalancerResponse"
    "fixture/DeleteLoadBalancerResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteLoadBalancer)

responseExportSnapshot :: ExportSnapshotResponse -> TestTree
responseExportSnapshot =
  res
    "ExportSnapshotResponse"
    "fixture/ExportSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy ExportSnapshot)

responseCreateRelationalDatabaseFromSnapshot :: CreateRelationalDatabaseFromSnapshotResponse -> TestTree
responseCreateRelationalDatabaseFromSnapshot =
  res
    "CreateRelationalDatabaseFromSnapshotResponse"
    "fixture/CreateRelationalDatabaseFromSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CreateRelationalDatabaseFromSnapshot)

responseGetOperations :: GetOperationsResponse -> TestTree
responseGetOperations =
  res
    "GetOperationsResponse"
    "fixture/GetOperationsResponse.proto"
    lightsail
    (Proxy :: Proxy GetOperations)

responseGetExportSnapshotRecords :: GetExportSnapshotRecordsResponse -> TestTree
responseGetExportSnapshotRecords =
  res
    "GetExportSnapshotRecordsResponse"
    "fixture/GetExportSnapshotRecordsResponse.proto"
    lightsail
    (Proxy :: Proxy GetExportSnapshotRecords)

responseGetLoadBalancerMetricData :: GetLoadBalancerMetricDataResponse -> TestTree
responseGetLoadBalancerMetricData =
  res
    "GetLoadBalancerMetricDataResponse"
    "fixture/GetLoadBalancerMetricDataResponse.proto"
    lightsail
    (Proxy :: Proxy GetLoadBalancerMetricData)

responseGetInstanceSnapshots :: GetInstanceSnapshotsResponse -> TestTree
responseGetInstanceSnapshots =
  res
    "GetInstanceSnapshotsResponse"
    "fixture/GetInstanceSnapshotsResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstanceSnapshots)

responseDeleteInstance :: DeleteInstanceResponse -> TestTree
responseDeleteInstance =
  res
    "DeleteInstanceResponse"
    "fixture/DeleteInstanceResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteInstance)

responseCreateLoadBalancerTLSCertificate :: CreateLoadBalancerTLSCertificateResponse -> TestTree
responseCreateLoadBalancerTLSCertificate =
  res
    "CreateLoadBalancerTLSCertificateResponse"
    "fixture/CreateLoadBalancerTLSCertificateResponse.proto"
    lightsail
    (Proxy :: Proxy CreateLoadBalancerTLSCertificate)

responseRebootInstance :: RebootInstanceResponse -> TestTree
responseRebootInstance =
  res
    "RebootInstanceResponse"
    "fixture/RebootInstanceResponse.proto"
    lightsail
    (Proxy :: Proxy RebootInstance)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    lightsail
    (Proxy :: Proxy TagResource)

responseGetRelationalDatabase :: GetRelationalDatabaseResponse -> TestTree
responseGetRelationalDatabase =
  res
    "GetRelationalDatabaseResponse"
    "fixture/GetRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabase)

responseGetKeyPairs :: GetKeyPairsResponse -> TestTree
responseGetKeyPairs =
  res
    "GetKeyPairsResponse"
    "fixture/GetKeyPairsResponse.proto"
    lightsail
    (Proxy :: Proxy GetKeyPairs)

responseAttachInstancesToLoadBalancer :: AttachInstancesToLoadBalancerResponse -> TestTree
responseAttachInstancesToLoadBalancer =
  res
    "AttachInstancesToLoadBalancerResponse"
    "fixture/AttachInstancesToLoadBalancerResponse.proto"
    lightsail
    (Proxy :: Proxy AttachInstancesToLoadBalancer)

responseGetRegions :: GetRegionsResponse -> TestTree
responseGetRegions =
  res
    "GetRegionsResponse"
    "fixture/GetRegionsResponse.proto"
    lightsail
    (Proxy :: Proxy GetRegions)

responseTestAlarm :: TestAlarmResponse -> TestTree
responseTestAlarm =
  res
    "TestAlarmResponse"
    "fixture/TestAlarmResponse.proto"
    lightsail
    (Proxy :: Proxy TestAlarm)

responseCreateDiskSnapshot :: CreateDiskSnapshotResponse -> TestTree
responseCreateDiskSnapshot =
  res
    "CreateDiskSnapshotResponse"
    "fixture/CreateDiskSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CreateDiskSnapshot)

responseSetIPAddressType :: SetIPAddressTypeResponse -> TestTree
responseSetIPAddressType =
  res
    "SetIPAddressTypeResponse"
    "fixture/SetIPAddressTypeResponse.proto"
    lightsail
    (Proxy :: Proxy SetIPAddressType)

responseDeleteAlarm :: DeleteAlarmResponse -> TestTree
responseDeleteAlarm =
  res
    "DeleteAlarmResponse"
    "fixture/DeleteAlarmResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteAlarm)

responseSendContactMethodVerification :: SendContactMethodVerificationResponse -> TestTree
responseSendContactMethodVerification =
  res
    "SendContactMethodVerificationResponse"
    "fixture/SendContactMethodVerificationResponse.proto"
    lightsail
    (Proxy :: Proxy SendContactMethodVerification)

responseGetRelationalDatabaseMasterUserPassword :: GetRelationalDatabaseMasterUserPasswordResponse -> TestTree
responseGetRelationalDatabaseMasterUserPassword =
  res
    "GetRelationalDatabaseMasterUserPasswordResponse"
    "fixture/GetRelationalDatabaseMasterUserPasswordResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseMasterUserPassword)

responseGetBlueprints :: GetBlueprintsResponse -> TestTree
responseGetBlueprints =
  res
    "GetBlueprintsResponse"
    "fixture/GetBlueprintsResponse.proto"
    lightsail
    (Proxy :: Proxy GetBlueprints)

responseDetachDisk :: DetachDiskResponse -> TestTree
responseDetachDisk =
  res
    "DetachDiskResponse"
    "fixture/DetachDiskResponse.proto"
    lightsail
    (Proxy :: Proxy DetachDisk)

responseGetInstancePortStates :: GetInstancePortStatesResponse -> TestTree
responseGetInstancePortStates =
  res
    "GetInstancePortStatesResponse"
    "fixture/GetInstancePortStatesResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstancePortStates)

responseAttachStaticIP :: AttachStaticIPResponse -> TestTree
responseAttachStaticIP =
  res
    "AttachStaticIPResponse"
    "fixture/AttachStaticIPResponse.proto"
    lightsail
    (Proxy :: Proxy AttachStaticIP)

responseDownloadDefaultKeyPair :: DownloadDefaultKeyPairResponse -> TestTree
responseDownloadDefaultKeyPair =
  res
    "DownloadDefaultKeyPairResponse"
    "fixture/DownloadDefaultKeyPairResponse.proto"
    lightsail
    (Proxy :: Proxy DownloadDefaultKeyPair)

responseGetLoadBalancers :: GetLoadBalancersResponse -> TestTree
responseGetLoadBalancers =
  res
    "GetLoadBalancersResponse"
    "fixture/GetLoadBalancersResponse.proto"
    lightsail
    (Proxy :: Proxy GetLoadBalancers)

responseUpdateRelationalDatabase :: UpdateRelationalDatabaseResponse -> TestTree
responseUpdateRelationalDatabase =
  res
    "UpdateRelationalDatabaseResponse"
    "fixture/UpdateRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateRelationalDatabase)

responseGetRelationalDatabaseBundles :: GetRelationalDatabaseBundlesResponse -> TestTree
responseGetRelationalDatabaseBundles =
  res
    "GetRelationalDatabaseBundlesResponse"
    "fixture/GetRelationalDatabaseBundlesResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseBundles)

responseAttachLoadBalancerTLSCertificate :: AttachLoadBalancerTLSCertificateResponse -> TestTree
responseAttachLoadBalancerTLSCertificate =
  res
    "AttachLoadBalancerTLSCertificateResponse"
    "fixture/AttachLoadBalancerTLSCertificateResponse.proto"
    lightsail
    (Proxy :: Proxy AttachLoadBalancerTLSCertificate)

responseAttachCertificateToDistribution :: AttachCertificateToDistributionResponse -> TestTree
responseAttachCertificateToDistribution =
  res
    "AttachCertificateToDistributionResponse"
    "fixture/AttachCertificateToDistributionResponse.proto"
    lightsail
    (Proxy :: Proxy AttachCertificateToDistribution)

responseDeleteRelationalDatabase :: DeleteRelationalDatabaseResponse -> TestTree
responseDeleteRelationalDatabase =
  res
    "DeleteRelationalDatabaseResponse"
    "fixture/DeleteRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteRelationalDatabase)

responseGetInstance :: GetInstanceResponse -> TestTree
responseGetInstance =
  res
    "GetInstanceResponse"
    "fixture/GetInstanceResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstance)

responseRebootRelationalDatabase :: RebootRelationalDatabaseResponse -> TestTree
responseRebootRelationalDatabase =
  res
    "RebootRelationalDatabaseResponse"
    "fixture/RebootRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy RebootRelationalDatabase)

responseGetRelationalDatabaseEvents :: GetRelationalDatabaseEventsResponse -> TestTree
responseGetRelationalDatabaseEvents =
  res
    "GetRelationalDatabaseEventsResponse"
    "fixture/GetRelationalDatabaseEventsResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseEvents)

responseCreateDomain :: CreateDomainResponse -> TestTree
responseCreateDomain =
  res
    "CreateDomainResponse"
    "fixture/CreateDomainResponse.proto"
    lightsail
    (Proxy :: Proxy CreateDomain)

responseGetStaticIPs :: GetStaticIPsResponse -> TestTree
responseGetStaticIPs =
  res
    "GetStaticIPsResponse"
    "fixture/GetStaticIPsResponse.proto"
    lightsail
    (Proxy :: Proxy GetStaticIPs)

responseDeleteDisk :: DeleteDiskResponse -> TestTree
responseDeleteDisk =
  res
    "DeleteDiskResponse"
    "fixture/DeleteDiskResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteDisk)

responseGetRelationalDatabaseMetricData :: GetRelationalDatabaseMetricDataResponse -> TestTree
responseGetRelationalDatabaseMetricData =
  res
    "GetRelationalDatabaseMetricDataResponse"
    "fixture/GetRelationalDatabaseMetricDataResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseMetricData)

responseGetDiskSnapshots :: GetDiskSnapshotsResponse -> TestTree
responseGetDiskSnapshots =
  res
    "GetDiskSnapshotsResponse"
    "fixture/GetDiskSnapshotsResponse.proto"
    lightsail
    (Proxy :: Proxy GetDiskSnapshots)

responseDeleteKeyPair :: DeleteKeyPairResponse -> TestTree
responseDeleteKeyPair =
  res
    "DeleteKeyPairResponse"
    "fixture/DeleteKeyPairResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteKeyPair)

responseGetLoadBalancer :: GetLoadBalancerResponse -> TestTree
responseGetLoadBalancer =
  res
    "GetLoadBalancerResponse"
    "fixture/GetLoadBalancerResponse.proto"
    lightsail
    (Proxy :: Proxy GetLoadBalancer)

responseGetBundles :: GetBundlesResponse -> TestTree
responseGetBundles =
  res
    "GetBundlesResponse"
    "fixture/GetBundlesResponse.proto"
    lightsail
    (Proxy :: Proxy GetBundles)

responseCreateCertificate :: CreateCertificateResponse -> TestTree
responseCreateCertificate =
  res
    "CreateCertificateResponse"
    "fixture/CreateCertificateResponse.proto"
    lightsail
    (Proxy :: Proxy CreateCertificate)

responseDetachInstancesFromLoadBalancer :: DetachInstancesFromLoadBalancerResponse -> TestTree
responseDetachInstancesFromLoadBalancer =
  res
    "DetachInstancesFromLoadBalancerResponse"
    "fixture/DetachInstancesFromLoadBalancerResponse.proto"
    lightsail
    (Proxy :: Proxy DetachInstancesFromLoadBalancer)

responseGetLoadBalancerTLSCertificates :: GetLoadBalancerTLSCertificatesResponse -> TestTree
responseGetLoadBalancerTLSCertificates =
  res
    "GetLoadBalancerTLSCertificatesResponse"
    "fixture/GetLoadBalancerTLSCertificatesResponse.proto"
    lightsail
    (Proxy :: Proxy GetLoadBalancerTLSCertificates)

responseDeleteContainerImage :: DeleteContainerImageResponse -> TestTree
responseDeleteContainerImage =
  res
    "DeleteContainerImageResponse"
    "fixture/DeleteContainerImageResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteContainerImage)

responseGetOperationsForResource :: GetOperationsForResourceResponse -> TestTree
responseGetOperationsForResource =
  res
    "GetOperationsForResourceResponse"
    "fixture/GetOperationsForResourceResponse.proto"
    lightsail
    (Proxy :: Proxy GetOperationsForResource)

responseCreateDisk :: CreateDiskResponse -> TestTree
responseCreateDisk =
  res
    "CreateDiskResponse"
    "fixture/CreateDiskResponse.proto"
    lightsail
    (Proxy :: Proxy CreateDisk)

responseEnableAddOn :: EnableAddOnResponse -> TestTree
responseEnableAddOn =
  res
    "EnableAddOnResponse"
    "fixture/EnableAddOnResponse.proto"
    lightsail
    (Proxy :: Proxy EnableAddOn)

responseDeleteDomain :: DeleteDomainResponse -> TestTree
responseDeleteDomain =
  res
    "DeleteDomainResponse"
    "fixture/DeleteDomainResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteDomain)

responseStartRelationalDatabase :: StartRelationalDatabaseResponse -> TestTree
responseStartRelationalDatabase =
  res
    "StartRelationalDatabaseResponse"
    "fixture/StartRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy StartRelationalDatabase)

responseCreateRelationalDatabaseSnapshot :: CreateRelationalDatabaseSnapshotResponse -> TestTree
responseCreateRelationalDatabaseSnapshot =
  res
    "CreateRelationalDatabaseSnapshotResponse"
    "fixture/CreateRelationalDatabaseSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy CreateRelationalDatabaseSnapshot)

responseGetAlarms :: GetAlarmsResponse -> TestTree
responseGetAlarms =
  res
    "GetAlarmsResponse"
    "fixture/GetAlarmsResponse.proto"
    lightsail
    (Proxy :: Proxy GetAlarms)

responseCreateDistribution :: CreateDistributionResponse -> TestTree
responseCreateDistribution =
  res
    "CreateDistributionResponse"
    "fixture/CreateDistributionResponse.proto"
    lightsail
    (Proxy :: Proxy CreateDistribution)

responseCreateInstances :: CreateInstancesResponse -> TestTree
responseCreateInstances =
  res
    "CreateInstancesResponse"
    "fixture/CreateInstancesResponse.proto"
    lightsail
    (Proxy :: Proxy CreateInstances)

responseCreateContainerService :: CreateContainerServiceResponse -> TestTree
responseCreateContainerService =
  res
    "CreateContainerServiceResponse"
    "fixture/CreateContainerServiceResponse.proto"
    lightsail
    (Proxy :: Proxy CreateContainerService)

responseGetDistributionLatestCacheReset :: GetDistributionLatestCacheResetResponse -> TestTree
responseGetDistributionLatestCacheReset =
  res
    "GetDistributionLatestCacheResetResponse"
    "fixture/GetDistributionLatestCacheResetResponse.proto"
    lightsail
    (Proxy :: Proxy GetDistributionLatestCacheReset)

responseStopRelationalDatabase :: StopRelationalDatabaseResponse -> TestTree
responseStopRelationalDatabase =
  res
    "StopRelationalDatabaseResponse"
    "fixture/StopRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy StopRelationalDatabase)

responseDeleteKnownHostKeys :: DeleteKnownHostKeysResponse -> TestTree
responseDeleteKnownHostKeys =
  res
    "DeleteKnownHostKeysResponse"
    "fixture/DeleteKnownHostKeysResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteKnownHostKeys)

responseOpenInstancePublicPorts :: OpenInstancePublicPortsResponse -> TestTree
responseOpenInstancePublicPorts =
  res
    "OpenInstancePublicPortsResponse"
    "fixture/OpenInstancePublicPortsResponse.proto"
    lightsail
    (Proxy :: Proxy OpenInstancePublicPorts)

responseGetActiveNames :: GetActiveNamesResponse -> TestTree
responseGetActiveNames =
  res
    "GetActiveNamesResponse"
    "fixture/GetActiveNamesResponse.proto"
    lightsail
    (Proxy :: Proxy GetActiveNames)

responseGetAutoSnapshots :: GetAutoSnapshotsResponse -> TestTree
responseGetAutoSnapshots =
  res
    "GetAutoSnapshotsResponse"
    "fixture/GetAutoSnapshotsResponse.proto"
    lightsail
    (Proxy :: Proxy GetAutoSnapshots)

responseGetRelationalDatabaseLogStreams :: GetRelationalDatabaseLogStreamsResponse -> TestTree
responseGetRelationalDatabaseLogStreams =
  res
    "GetRelationalDatabaseLogStreamsResponse"
    "fixture/GetRelationalDatabaseLogStreamsResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseLogStreams)

responseGetDistributionBundles :: GetDistributionBundlesResponse -> TestTree
responseGetDistributionBundles =
  res
    "GetDistributionBundlesResponse"
    "fixture/GetDistributionBundlesResponse.proto"
    lightsail
    (Proxy :: Proxy GetDistributionBundles)

responseGetOperation :: GetOperationResponse -> TestTree
responseGetOperation =
  res
    "GetOperationResponse"
    "fixture/GetOperationResponse.proto"
    lightsail
    (Proxy :: Proxy GetOperation)

responseDeleteRelationalDatabaseSnapshot :: DeleteRelationalDatabaseSnapshotResponse -> TestTree
responseDeleteRelationalDatabaseSnapshot =
  res
    "DeleteRelationalDatabaseSnapshotResponse"
    "fixture/DeleteRelationalDatabaseSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteRelationalDatabaseSnapshot)

responseGetInstanceSnapshot :: GetInstanceSnapshotResponse -> TestTree
responseGetInstanceSnapshot =
  res
    "GetInstanceSnapshotResponse"
    "fixture/GetInstanceSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstanceSnapshot)

responseDeleteContainerService :: DeleteContainerServiceResponse -> TestTree
responseDeleteContainerService =
  res
    "DeleteContainerServiceResponse"
    "fixture/DeleteContainerServiceResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteContainerService)

responseUpdateDistribution :: UpdateDistributionResponse -> TestTree
responseUpdateDistribution =
  res
    "UpdateDistributionResponse"
    "fixture/UpdateDistributionResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateDistribution)

responsePutInstancePublicPorts :: PutInstancePublicPortsResponse -> TestTree
responsePutInstancePublicPorts =
  res
    "PutInstancePublicPortsResponse"
    "fixture/PutInstancePublicPortsResponse.proto"
    lightsail
    (Proxy :: Proxy PutInstancePublicPorts)

responseResetDistributionCache :: ResetDistributionCacheResponse -> TestTree
responseResetDistributionCache =
  res
    "ResetDistributionCacheResponse"
    "fixture/ResetDistributionCacheResponse.proto"
    lightsail
    (Proxy :: Proxy ResetDistributionCache)

responseCreateContactMethod :: CreateContactMethodResponse -> TestTree
responseCreateContactMethod =
  res
    "CreateContactMethodResponse"
    "fixture/CreateContactMethodResponse.proto"
    lightsail
    (Proxy :: Proxy CreateContactMethod)

responseDeleteDistribution :: DeleteDistributionResponse -> TestTree
responseDeleteDistribution =
  res
    "DeleteDistributionResponse"
    "fixture/DeleteDistributionResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteDistribution)

responseUpdateContainerService :: UpdateContainerServiceResponse -> TestTree
responseUpdateContainerService =
  res
    "UpdateContainerServiceResponse"
    "fixture/UpdateContainerServiceResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateContainerService)

responseGetKeyPair :: GetKeyPairResponse -> TestTree
responseGetKeyPair =
  res
    "GetKeyPairResponse"
    "fixture/GetKeyPairResponse.proto"
    lightsail
    (Proxy :: Proxy GetKeyPair)

responseCreateCloudFormationStack :: CreateCloudFormationStackResponse -> TestTree
responseCreateCloudFormationStack =
  res
    "CreateCloudFormationStackResponse"
    "fixture/CreateCloudFormationStackResponse.proto"
    lightsail
    (Proxy :: Proxy CreateCloudFormationStack)

responseCreateDomainEntry :: CreateDomainEntryResponse -> TestTree
responseCreateDomainEntry =
  res
    "CreateDomainEntryResponse"
    "fixture/CreateDomainEntryResponse.proto"
    lightsail
    (Proxy :: Proxy CreateDomainEntry)

responseGetInstanceState :: GetInstanceStateResponse -> TestTree
responseGetInstanceState =
  res
    "GetInstanceStateResponse"
    "fixture/GetInstanceStateResponse.proto"
    lightsail
    (Proxy :: Proxy GetInstanceState)

responseGetDistributionMetricData :: GetDistributionMetricDataResponse -> TestTree
responseGetDistributionMetricData =
  res
    "GetDistributionMetricDataResponse"
    "fixture/GetDistributionMetricDataResponse.proto"
    lightsail
    (Proxy :: Proxy GetDistributionMetricData)

responseGetDisks :: GetDisksResponse -> TestTree
responseGetDisks =
  res
    "GetDisksResponse"
    "fixture/GetDisksResponse.proto"
    lightsail
    (Proxy :: Proxy GetDisks)

responseGetContainerServiceMetricData :: GetContainerServiceMetricDataResponse -> TestTree
responseGetContainerServiceMetricData =
  res
    "GetContainerServiceMetricDataResponse"
    "fixture/GetContainerServiceMetricDataResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerServiceMetricData)

responseCreateContainerServiceRegistryLogin :: CreateContainerServiceRegistryLoginResponse -> TestTree
responseCreateContainerServiceRegistryLogin =
  res
    "CreateContainerServiceRegistryLoginResponse"
    "fixture/CreateContainerServiceRegistryLoginResponse.proto"
    lightsail
    (Proxy :: Proxy CreateContainerServiceRegistryLogin)

responseImportKeyPair :: ImportKeyPairResponse -> TestTree
responseImportKeyPair =
  res
    "ImportKeyPairResponse"
    "fixture/ImportKeyPairResponse.proto"
    lightsail
    (Proxy :: Proxy ImportKeyPair)

responseGetContainerServicePowers :: GetContainerServicePowersResponse -> TestTree
responseGetContainerServicePowers =
  res
    "GetContainerServicePowersResponse"
    "fixture/GetContainerServicePowersResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerServicePowers)

responseDeleteDiskSnapshot :: DeleteDiskSnapshotResponse -> TestTree
responseDeleteDiskSnapshot =
  res
    "DeleteDiskSnapshotResponse"
    "fixture/DeleteDiskSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteDiskSnapshot)

responseGetCertificates :: GetCertificatesResponse -> TestTree
responseGetCertificates =
  res
    "GetCertificatesResponse"
    "fixture/GetCertificatesResponse.proto"
    lightsail
    (Proxy :: Proxy GetCertificates)

responseReleaseStaticIP :: ReleaseStaticIPResponse -> TestTree
responseReleaseStaticIP =
  res
    "ReleaseStaticIPResponse"
    "fixture/ReleaseStaticIPResponse.proto"
    lightsail
    (Proxy :: Proxy ReleaseStaticIP)

responseUpdateRelationalDatabaseParameters :: UpdateRelationalDatabaseParametersResponse -> TestTree
responseUpdateRelationalDatabaseParameters =
  res
    "UpdateRelationalDatabaseParametersResponse"
    "fixture/UpdateRelationalDatabaseParametersResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateRelationalDatabaseParameters)

responseDeleteLoadBalancerTLSCertificate :: DeleteLoadBalancerTLSCertificateResponse -> TestTree
responseDeleteLoadBalancerTLSCertificate =
  res
    "DeleteLoadBalancerTLSCertificateResponse"
    "fixture/DeleteLoadBalancerTLSCertificateResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteLoadBalancerTLSCertificate)

responseUpdateDomainEntry :: UpdateDomainEntryResponse -> TestTree
responseUpdateDomainEntry =
  res
    "UpdateDomainEntryResponse"
    "fixture/UpdateDomainEntryResponse.proto"
    lightsail
    (Proxy :: Proxy UpdateDomainEntry)

responseGetContainerLog :: GetContainerLogResponse -> TestTree
responseGetContainerLog =
  res
    "GetContainerLogResponse"
    "fixture/GetContainerLogResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerLog)

responseDeleteDomainEntry :: DeleteDomainEntryResponse -> TestTree
responseDeleteDomainEntry =
  res
    "DeleteDomainEntryResponse"
    "fixture/DeleteDomainEntryResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteDomainEntry)

responseGetContainerImages :: GetContainerImagesResponse -> TestTree
responseGetContainerImages =
  res
    "GetContainerImagesResponse"
    "fixture/GetContainerImagesResponse.proto"
    lightsail
    (Proxy :: Proxy GetContainerImages)

responseGetDomains :: GetDomainsResponse -> TestTree
responseGetDomains =
  res
    "GetDomainsResponse"
    "fixture/GetDomainsResponse.proto"
    lightsail
    (Proxy :: Proxy GetDomains)

responsePutAlarm :: PutAlarmResponse -> TestTree
responsePutAlarm =
  res
    "PutAlarmResponse"
    "fixture/PutAlarmResponse.proto"
    lightsail
    (Proxy :: Proxy PutAlarm)

responseDeleteAutoSnapshot :: DeleteAutoSnapshotResponse -> TestTree
responseDeleteAutoSnapshot =
  res
    "DeleteAutoSnapshotResponse"
    "fixture/DeleteAutoSnapshotResponse.proto"
    lightsail
    (Proxy :: Proxy DeleteAutoSnapshot)

responseGetContactMethods :: GetContactMethodsResponse -> TestTree
responseGetContactMethods =
  res
    "GetContactMethodsResponse"
    "fixture/GetContactMethodsResponse.proto"
    lightsail
    (Proxy :: Proxy GetContactMethods)

responseGetRelationalDatabaseParameters :: GetRelationalDatabaseParametersResponse -> TestTree
responseGetRelationalDatabaseParameters =
  res
    "GetRelationalDatabaseParametersResponse"
    "fixture/GetRelationalDatabaseParametersResponse.proto"
    lightsail
    (Proxy :: Proxy GetRelationalDatabaseParameters)

responseCreateRelationalDatabase :: CreateRelationalDatabaseResponse -> TestTree
responseCreateRelationalDatabase =
  res
    "CreateRelationalDatabaseResponse"
    "fixture/CreateRelationalDatabaseResponse.proto"
    lightsail
    (Proxy :: Proxy CreateRelationalDatabase)

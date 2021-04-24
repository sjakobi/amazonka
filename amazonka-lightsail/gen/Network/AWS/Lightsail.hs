{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Lightsail is the easiest way to get started with Amazon Web Services (AWS) for developers who need to build websites or web applications. It includes everything you need to launch your project quickly - instances (virtual private servers), container services, managed databases, SSD-based block storage, static IP addresses, load balancers, content delivery network (CDN) distributions, DNS management of registered domains, and resource snapshots (backups) - for a low, predictable monthly price.
--
--
-- You can manage your Lightsail resources using the Lightsail console, Lightsail API, AWS Command Line Interface (AWS CLI), or SDKs. For more information about Lightsail concepts and tasks, see the <http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli Lightsail Dev Guide> .
--
-- This API Reference provides detailed information about the actions, data types, parameters, and errors of the Lightsail service. For more information about the supported AWS Regions, endpoints, and service quotas of the Lightsail service, see <https://docs.aws.amazon.com/general/latest/gr/lightsail.html Amazon Lightsail Endpoints and Quotas> in the /AWS General Reference/ .
module Network.AWS.Lightsail
  ( -- * Service Configuration
    lightsail,

    -- * Errors
    -- $errors

    -- ** NotFoundException
    _NotFoundException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** UnauthenticatedException
    _UnauthenticatedException,

    -- ** OperationFailureException
    _OperationFailureException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** AccountSetupInProgressException
    _AccountSetupInProgressException,

    -- ** ServiceException
    _ServiceException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetContainerServices
    module Network.AWS.Lightsail.GetContainerServices,

    -- ** GetStaticIP
    module Network.AWS.Lightsail.GetStaticIP,

    -- ** GetRelationalDatabaseSnapshots (Paginated)
    module Network.AWS.Lightsail.GetRelationalDatabaseSnapshots,

    -- ** GetDistributions
    module Network.AWS.Lightsail.GetDistributions,

    -- ** GetDiskSnapshot
    module Network.AWS.Lightsail.GetDiskSnapshot,

    -- ** CreateContainerServiceDeployment
    module Network.AWS.Lightsail.CreateContainerServiceDeployment,

    -- ** PeerVPC
    module Network.AWS.Lightsail.PeerVPC,

    -- ** UpdateLoadBalancerAttribute
    module Network.AWS.Lightsail.UpdateLoadBalancerAttribute,

    -- ** UpdateDistributionBundle
    module Network.AWS.Lightsail.UpdateDistributionBundle,

    -- ** AllocateStaticIP
    module Network.AWS.Lightsail.AllocateStaticIP,

    -- ** CloseInstancePublicPorts
    module Network.AWS.Lightsail.CloseInstancePublicPorts,

    -- ** DeleteCertificate
    module Network.AWS.Lightsail.DeleteCertificate,

    -- ** DisableAddOn
    module Network.AWS.Lightsail.DisableAddOn,

    -- ** GetCloudFormationStackRecords (Paginated)
    module Network.AWS.Lightsail.GetCloudFormationStackRecords,

    -- ** IsVPCPeered
    module Network.AWS.Lightsail.IsVPCPeered,

    -- ** GetRelationalDatabaseSnapshot
    module Network.AWS.Lightsail.GetRelationalDatabaseSnapshot,

    -- ** GetRelationalDatabaseBlueprints (Paginated)
    module Network.AWS.Lightsail.GetRelationalDatabaseBlueprints,

    -- ** DeleteInstanceSnapshot
    module Network.AWS.Lightsail.DeleteInstanceSnapshot,

    -- ** UnpeerVPC
    module Network.AWS.Lightsail.UnpeerVPC,

    -- ** GetContainerAPIMetadata
    module Network.AWS.Lightsail.GetContainerAPIMetadata,

    -- ** GetInstances (Paginated)
    module Network.AWS.Lightsail.GetInstances,

    -- ** CreateInstancesFromSnapshot
    module Network.AWS.Lightsail.CreateInstancesFromSnapshot,

    -- ** StartInstance
    module Network.AWS.Lightsail.StartInstance,

    -- ** CreateKeyPair
    module Network.AWS.Lightsail.CreateKeyPair,

    -- ** GetInstanceAccessDetails
    module Network.AWS.Lightsail.GetInstanceAccessDetails,

    -- ** CopySnapshot
    module Network.AWS.Lightsail.CopySnapshot,

    -- ** CreateInstanceSnapshot
    module Network.AWS.Lightsail.CreateInstanceSnapshot,

    -- ** StopInstance
    module Network.AWS.Lightsail.StopInstance,

    -- ** RegisterContainerImage
    module Network.AWS.Lightsail.RegisterContainerImage,

    -- ** DetachCertificateFromDistribution
    module Network.AWS.Lightsail.DetachCertificateFromDistribution,

    -- ** CreateLoadBalancer
    module Network.AWS.Lightsail.CreateLoadBalancer,

    -- ** GetContainerServiceDeployments
    module Network.AWS.Lightsail.GetContainerServiceDeployments,

    -- ** DeleteContactMethod
    module Network.AWS.Lightsail.DeleteContactMethod,

    -- ** GetDomain
    module Network.AWS.Lightsail.GetDomain,

    -- ** DetachStaticIP
    module Network.AWS.Lightsail.DetachStaticIP,

    -- ** AttachDisk
    module Network.AWS.Lightsail.AttachDisk,

    -- ** GetDisk
    module Network.AWS.Lightsail.GetDisk,

    -- ** GetRelationalDatabaseLogEvents
    module Network.AWS.Lightsail.GetRelationalDatabaseLogEvents,

    -- ** GetRelationalDatabases (Paginated)
    module Network.AWS.Lightsail.GetRelationalDatabases,

    -- ** UntagResource
    module Network.AWS.Lightsail.UntagResource,

    -- ** CreateDiskFromSnapshot
    module Network.AWS.Lightsail.CreateDiskFromSnapshot,

    -- ** GetInstanceMetricData
    module Network.AWS.Lightsail.GetInstanceMetricData,

    -- ** DeleteLoadBalancer
    module Network.AWS.Lightsail.DeleteLoadBalancer,

    -- ** ExportSnapshot
    module Network.AWS.Lightsail.ExportSnapshot,

    -- ** CreateRelationalDatabaseFromSnapshot
    module Network.AWS.Lightsail.CreateRelationalDatabaseFromSnapshot,

    -- ** GetOperations (Paginated)
    module Network.AWS.Lightsail.GetOperations,

    -- ** GetExportSnapshotRecords (Paginated)
    module Network.AWS.Lightsail.GetExportSnapshotRecords,

    -- ** GetLoadBalancerMetricData
    module Network.AWS.Lightsail.GetLoadBalancerMetricData,

    -- ** GetInstanceSnapshots (Paginated)
    module Network.AWS.Lightsail.GetInstanceSnapshots,

    -- ** DeleteInstance
    module Network.AWS.Lightsail.DeleteInstance,

    -- ** CreateLoadBalancerTLSCertificate
    module Network.AWS.Lightsail.CreateLoadBalancerTLSCertificate,

    -- ** RebootInstance
    module Network.AWS.Lightsail.RebootInstance,

    -- ** TagResource
    module Network.AWS.Lightsail.TagResource,

    -- ** GetRelationalDatabase
    module Network.AWS.Lightsail.GetRelationalDatabase,

    -- ** GetKeyPairs (Paginated)
    module Network.AWS.Lightsail.GetKeyPairs,

    -- ** AttachInstancesToLoadBalancer
    module Network.AWS.Lightsail.AttachInstancesToLoadBalancer,

    -- ** GetRegions
    module Network.AWS.Lightsail.GetRegions,

    -- ** TestAlarm
    module Network.AWS.Lightsail.TestAlarm,

    -- ** CreateDiskSnapshot
    module Network.AWS.Lightsail.CreateDiskSnapshot,

    -- ** SetIPAddressType
    module Network.AWS.Lightsail.SetIPAddressType,

    -- ** DeleteAlarm
    module Network.AWS.Lightsail.DeleteAlarm,

    -- ** SendContactMethodVerification
    module Network.AWS.Lightsail.SendContactMethodVerification,

    -- ** GetRelationalDatabaseMasterUserPassword
    module Network.AWS.Lightsail.GetRelationalDatabaseMasterUserPassword,

    -- ** GetBlueprints (Paginated)
    module Network.AWS.Lightsail.GetBlueprints,

    -- ** DetachDisk
    module Network.AWS.Lightsail.DetachDisk,

    -- ** GetInstancePortStates
    module Network.AWS.Lightsail.GetInstancePortStates,

    -- ** AttachStaticIP
    module Network.AWS.Lightsail.AttachStaticIP,

    -- ** DownloadDefaultKeyPair
    module Network.AWS.Lightsail.DownloadDefaultKeyPair,

    -- ** GetLoadBalancers (Paginated)
    module Network.AWS.Lightsail.GetLoadBalancers,

    -- ** UpdateRelationalDatabase
    module Network.AWS.Lightsail.UpdateRelationalDatabase,

    -- ** GetRelationalDatabaseBundles (Paginated)
    module Network.AWS.Lightsail.GetRelationalDatabaseBundles,

    -- ** AttachLoadBalancerTLSCertificate
    module Network.AWS.Lightsail.AttachLoadBalancerTLSCertificate,

    -- ** AttachCertificateToDistribution
    module Network.AWS.Lightsail.AttachCertificateToDistribution,

    -- ** DeleteRelationalDatabase
    module Network.AWS.Lightsail.DeleteRelationalDatabase,

    -- ** GetInstance
    module Network.AWS.Lightsail.GetInstance,

    -- ** RebootRelationalDatabase
    module Network.AWS.Lightsail.RebootRelationalDatabase,

    -- ** GetRelationalDatabaseEvents (Paginated)
    module Network.AWS.Lightsail.GetRelationalDatabaseEvents,

    -- ** CreateDomain
    module Network.AWS.Lightsail.CreateDomain,

    -- ** GetStaticIPs (Paginated)
    module Network.AWS.Lightsail.GetStaticIPs,

    -- ** DeleteDisk
    module Network.AWS.Lightsail.DeleteDisk,

    -- ** GetRelationalDatabaseMetricData
    module Network.AWS.Lightsail.GetRelationalDatabaseMetricData,

    -- ** GetDiskSnapshots (Paginated)
    module Network.AWS.Lightsail.GetDiskSnapshots,

    -- ** DeleteKeyPair
    module Network.AWS.Lightsail.DeleteKeyPair,

    -- ** GetLoadBalancer
    module Network.AWS.Lightsail.GetLoadBalancer,

    -- ** GetBundles (Paginated)
    module Network.AWS.Lightsail.GetBundles,

    -- ** CreateCertificate
    module Network.AWS.Lightsail.CreateCertificate,

    -- ** DetachInstancesFromLoadBalancer
    module Network.AWS.Lightsail.DetachInstancesFromLoadBalancer,

    -- ** GetLoadBalancerTLSCertificates
    module Network.AWS.Lightsail.GetLoadBalancerTLSCertificates,

    -- ** DeleteContainerImage
    module Network.AWS.Lightsail.DeleteContainerImage,

    -- ** GetOperationsForResource
    module Network.AWS.Lightsail.GetOperationsForResource,

    -- ** CreateDisk
    module Network.AWS.Lightsail.CreateDisk,

    -- ** EnableAddOn
    module Network.AWS.Lightsail.EnableAddOn,

    -- ** DeleteDomain
    module Network.AWS.Lightsail.DeleteDomain,

    -- ** StartRelationalDatabase
    module Network.AWS.Lightsail.StartRelationalDatabase,

    -- ** CreateRelationalDatabaseSnapshot
    module Network.AWS.Lightsail.CreateRelationalDatabaseSnapshot,

    -- ** GetAlarms
    module Network.AWS.Lightsail.GetAlarms,

    -- ** CreateDistribution
    module Network.AWS.Lightsail.CreateDistribution,

    -- ** CreateInstances
    module Network.AWS.Lightsail.CreateInstances,

    -- ** CreateContainerService
    module Network.AWS.Lightsail.CreateContainerService,

    -- ** GetDistributionLatestCacheReset
    module Network.AWS.Lightsail.GetDistributionLatestCacheReset,

    -- ** StopRelationalDatabase
    module Network.AWS.Lightsail.StopRelationalDatabase,

    -- ** DeleteKnownHostKeys
    module Network.AWS.Lightsail.DeleteKnownHostKeys,

    -- ** OpenInstancePublicPorts
    module Network.AWS.Lightsail.OpenInstancePublicPorts,

    -- ** GetActiveNames (Paginated)
    module Network.AWS.Lightsail.GetActiveNames,

    -- ** GetAutoSnapshots
    module Network.AWS.Lightsail.GetAutoSnapshots,

    -- ** GetRelationalDatabaseLogStreams
    module Network.AWS.Lightsail.GetRelationalDatabaseLogStreams,

    -- ** GetDistributionBundles
    module Network.AWS.Lightsail.GetDistributionBundles,

    -- ** GetOperation
    module Network.AWS.Lightsail.GetOperation,

    -- ** DeleteRelationalDatabaseSnapshot
    module Network.AWS.Lightsail.DeleteRelationalDatabaseSnapshot,

    -- ** GetInstanceSnapshot
    module Network.AWS.Lightsail.GetInstanceSnapshot,

    -- ** DeleteContainerService
    module Network.AWS.Lightsail.DeleteContainerService,

    -- ** UpdateDistribution
    module Network.AWS.Lightsail.UpdateDistribution,

    -- ** PutInstancePublicPorts
    module Network.AWS.Lightsail.PutInstancePublicPorts,

    -- ** ResetDistributionCache
    module Network.AWS.Lightsail.ResetDistributionCache,

    -- ** CreateContactMethod
    module Network.AWS.Lightsail.CreateContactMethod,

    -- ** DeleteDistribution
    module Network.AWS.Lightsail.DeleteDistribution,

    -- ** UpdateContainerService
    module Network.AWS.Lightsail.UpdateContainerService,

    -- ** GetKeyPair
    module Network.AWS.Lightsail.GetKeyPair,

    -- ** CreateCloudFormationStack
    module Network.AWS.Lightsail.CreateCloudFormationStack,

    -- ** CreateDomainEntry
    module Network.AWS.Lightsail.CreateDomainEntry,

    -- ** GetInstanceState
    module Network.AWS.Lightsail.GetInstanceState,

    -- ** GetDistributionMetricData
    module Network.AWS.Lightsail.GetDistributionMetricData,

    -- ** GetDisks (Paginated)
    module Network.AWS.Lightsail.GetDisks,

    -- ** GetContainerServiceMetricData
    module Network.AWS.Lightsail.GetContainerServiceMetricData,

    -- ** CreateContainerServiceRegistryLogin
    module Network.AWS.Lightsail.CreateContainerServiceRegistryLogin,

    -- ** ImportKeyPair
    module Network.AWS.Lightsail.ImportKeyPair,

    -- ** GetContainerServicePowers
    module Network.AWS.Lightsail.GetContainerServicePowers,

    -- ** DeleteDiskSnapshot
    module Network.AWS.Lightsail.DeleteDiskSnapshot,

    -- ** GetCertificates
    module Network.AWS.Lightsail.GetCertificates,

    -- ** ReleaseStaticIP
    module Network.AWS.Lightsail.ReleaseStaticIP,

    -- ** UpdateRelationalDatabaseParameters
    module Network.AWS.Lightsail.UpdateRelationalDatabaseParameters,

    -- ** DeleteLoadBalancerTLSCertificate
    module Network.AWS.Lightsail.DeleteLoadBalancerTLSCertificate,

    -- ** UpdateDomainEntry
    module Network.AWS.Lightsail.UpdateDomainEntry,

    -- ** GetContainerLog
    module Network.AWS.Lightsail.GetContainerLog,

    -- ** DeleteDomainEntry
    module Network.AWS.Lightsail.DeleteDomainEntry,

    -- ** GetContainerImages
    module Network.AWS.Lightsail.GetContainerImages,

    -- ** GetDomains (Paginated)
    module Network.AWS.Lightsail.GetDomains,

    -- ** PutAlarm
    module Network.AWS.Lightsail.PutAlarm,

    -- ** DeleteAutoSnapshot
    module Network.AWS.Lightsail.DeleteAutoSnapshot,

    -- ** GetContactMethods
    module Network.AWS.Lightsail.GetContactMethods,

    -- ** GetRelationalDatabaseParameters (Paginated)
    module Network.AWS.Lightsail.GetRelationalDatabaseParameters,

    -- ** CreateRelationalDatabase
    module Network.AWS.Lightsail.CreateRelationalDatabase,

    -- * Types

    -- ** AccessDirection
    AccessDirection (..),

    -- ** AddOnType
    AddOnType (..),

    -- ** AlarmState
    AlarmState (..),

    -- ** AutoSnapshotStatus
    AutoSnapshotStatus (..),

    -- ** BehaviorEnum
    BehaviorEnum (..),

    -- ** BlueprintType
    BlueprintType (..),

    -- ** CertificateStatus
    CertificateStatus (..),

    -- ** CloudFormationStackRecordSourceType
    CloudFormationStackRecordSourceType (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** ContactMethodStatus
    ContactMethodStatus (..),

    -- ** ContactMethodVerificationProtocol
    ContactMethodVerificationProtocol (..),

    -- ** ContactProtocol
    ContactProtocol (..),

    -- ** ContainerServiceDeploymentState
    ContainerServiceDeploymentState (..),

    -- ** ContainerServiceMetricName
    ContainerServiceMetricName (..),

    -- ** ContainerServicePowerName
    ContainerServicePowerName (..),

    -- ** ContainerServiceProtocol
    ContainerServiceProtocol (..),

    -- ** ContainerServiceState
    ContainerServiceState (..),

    -- ** DiskSnapshotState
    DiskSnapshotState (..),

    -- ** DiskState
    DiskState (..),

    -- ** DistributionMetricName
    DistributionMetricName (..),

    -- ** ExportSnapshotRecordSourceType
    ExportSnapshotRecordSourceType (..),

    -- ** ForwardValues
    ForwardValues (..),

    -- ** HeaderEnum
    HeaderEnum (..),

    -- ** IPAddressType
    IPAddressType (..),

    -- ** InstanceAccessProtocol
    InstanceAccessProtocol (..),

    -- ** InstanceHealthReason
    InstanceHealthReason (..),

    -- ** InstanceHealthState
    InstanceHealthState (..),

    -- ** InstanceMetricName
    InstanceMetricName (..),

    -- ** InstancePlatform
    InstancePlatform (..),

    -- ** InstanceSnapshotState
    InstanceSnapshotState (..),

    -- ** LoadBalancerAttributeName
    LoadBalancerAttributeName (..),

    -- ** LoadBalancerMetricName
    LoadBalancerMetricName (..),

    -- ** LoadBalancerProtocol
    LoadBalancerProtocol (..),

    -- ** LoadBalancerState
    LoadBalancerState (..),

    -- ** LoadBalancerTLSCertificateDomainStatus
    LoadBalancerTLSCertificateDomainStatus (..),

    -- ** LoadBalancerTLSCertificateFailureReason
    LoadBalancerTLSCertificateFailureReason (..),

    -- ** LoadBalancerTLSCertificateRenewalStatus
    LoadBalancerTLSCertificateRenewalStatus (..),

    -- ** LoadBalancerTLSCertificateRevocationReason
    LoadBalancerTLSCertificateRevocationReason (..),

    -- ** LoadBalancerTLSCertificateStatus
    LoadBalancerTLSCertificateStatus (..),

    -- ** MetricName
    MetricName (..),

    -- ** MetricStatistic
    MetricStatistic (..),

    -- ** MetricUnit
    MetricUnit (..),

    -- ** NetworkProtocol
    NetworkProtocol (..),

    -- ** OperationStatus
    OperationStatus (..),

    -- ** OperationType
    OperationType (..),

    -- ** OriginProtocolPolicyEnum
    OriginProtocolPolicyEnum (..),

    -- ** PortAccessType
    PortAccessType (..),

    -- ** PortInfoSourceType
    PortInfoSourceType (..),

    -- ** PortState
    PortState (..),

    -- ** RecordState
    RecordState (..),

    -- ** RegionName
    RegionName (..),

    -- ** RelationalDatabaseEngine
    RelationalDatabaseEngine (..),

    -- ** RelationalDatabaseMetricName
    RelationalDatabaseMetricName (..),

    -- ** RelationalDatabasePasswordVersion
    RelationalDatabasePasswordVersion (..),

    -- ** RenewalStatus
    RenewalStatus (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** TreatMissingData
    TreatMissingData (..),

    -- ** AddOn
    AddOn,
    addOn,
    aoSnapshotTimeOfDay,
    aoStatus,
    aoName,
    aoNextSnapshotTimeOfDay,

    -- ** AddOnRequest
    AddOnRequest,
    addOnRequest,
    aorAutoSnapshotAddOnRequest,
    aorAddOnType,

    -- ** Alarm
    Alarm,
    alarm,
    aDatapointsToAlarm,
    aThreshold,
    aComparisonOperator,
    aMonitoredResourceInfo,
    aNotificationTriggers,
    aUnit,
    aMetricName,
    aNotificationEnabled,
    aCreatedAt,
    aArn,
    aTreatMissingData,
    aResourceType,
    aSupportCode,
    aState,
    aName,
    aStatistic,
    aEvaluationPeriods,
    aPeriod,
    aLocation,
    aContactProtocols,

    -- ** AttachedDisk
    AttachedDisk,
    attachedDisk,
    adSizeInGb,
    adPath,

    -- ** AutoSnapshotAddOnRequest
    AutoSnapshotAddOnRequest,
    autoSnapshotAddOnRequest,
    asaorSnapshotTimeOfDay,

    -- ** AutoSnapshotDetails
    AutoSnapshotDetails,
    autoSnapshotDetails,
    asdStatus,
    asdCreatedAt,
    asdDate,
    asdFromAttachedDisks,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azZoneName,
    azState,

    -- ** Blueprint
    Blueprint,
    blueprint,
    bPlatform,
    bIsActive,
    bLicenseURL,
    bProductURL,
    bVersion,
    bBlueprintId,
    bVersionCode,
    bName,
    bGroup,
    bDescription,
    bType,
    bMinPower,

    -- ** Bundle
    Bundle,
    bundle,
    bunPower,
    bunInstanceType,
    bunRamSizeInGb,
    bunBundleId,
    bunIsActive,
    bunName,
    bunTransferPerMonthInGb,
    bunCpuCount,
    bunPrice,
    bunSupportedPlatforms,
    bunDiskSizeInGb,

    -- ** CacheBehavior
    CacheBehavior,
    cacheBehavior,
    cbBehavior,

    -- ** CacheBehaviorPerPath
    CacheBehaviorPerPath,
    cacheBehaviorPerPath,
    cbppBehavior,
    cbppPath,

    -- ** CacheSettings
    CacheSettings,
    cacheSettings,
    csMaximumTTL,
    csForwardedHeaders,
    csDefaultTTL,
    csCachedHTTPMethods,
    csAllowedHTTPMethods,
    csForwardedQueryStrings,
    csForwardedCookies,
    csMinimumTTL,

    -- ** Certificate
    Certificate,
    certificate,
    cerStatus,
    cerNotBefore,
    cerInUseResourceCount,
    cerCreatedAt,
    cerArn,
    cerEligibleToRenew,
    cerSupportCode,
    cerSubjectAlternativeNames,
    cerName,
    cerDomainName,
    cerRevocationReason,
    cerRevokedAt,
    cerIssuerCA,
    cerNotAfter,
    cerTags,
    cerSerialNumber,
    cerIssuedAt,
    cerKeyAlgorithm,
    cerDomainValidationRecords,
    cerRequestFailureReason,
    cerRenewalSummary,

    -- ** CertificateSummary
    CertificateSummary,
    certificateSummary,
    cCertificateARN,
    cDomainName,
    cCertificateDetail,
    cTags,
    cCertificateName,

    -- ** CloudFormationStackRecord
    CloudFormationStackRecord,
    cloudFormationStackRecord,
    cfsrCreatedAt,
    cfsrArn,
    cfsrResourceType,
    cfsrState,
    cfsrName,
    cfsrSourceInfo,
    cfsrLocation,
    cfsrDestinationInfo,

    -- ** CloudFormationStackRecordSourceInfo
    CloudFormationStackRecordSourceInfo,
    cloudFormationStackRecordSourceInfo,
    cfsrsiArn,
    cfsrsiResourceType,
    cfsrsiName,

    -- ** ContactMethod
    ContactMethod,
    contactMethod,
    cmStatus,
    cmContactEndpoint,
    cmCreatedAt,
    cmArn,
    cmResourceType,
    cmSupportCode,
    cmName,
    cmProtocol,
    cmLocation,

    -- ** Container
    Container,
    container,
    cEnvironment,
    cPorts,
    cImage,
    cCommand,

    -- ** ContainerImage
    ContainerImage,
    containerImage,
    ciCreatedAt,
    ciImage,
    ciDigest,

    -- ** ContainerService
    ContainerService,
    containerService,
    csPower,
    csCurrentDeployment,
    csCreatedAt,
    csArn,
    csContainerServiceName,
    csPrivateDomainName,
    csResourceType,
    csState,
    csPrincipalARN,
    csTags,
    csNextDeployment,
    csUrl,
    csScale,
    csPublicDomainNames,
    csLocation,
    csPowerId,
    csIsDisabled,

    -- ** ContainerServiceDeployment
    ContainerServiceDeployment,
    containerServiceDeployment,
    csdCreatedAt,
    csdVersion,
    csdPublicEndpoint,
    csdState,
    csdContainers,

    -- ** ContainerServiceDeploymentRequest
    ContainerServiceDeploymentRequest,
    containerServiceDeploymentRequest,
    csdrPublicEndpoint,
    csdrContainers,

    -- ** ContainerServiceEndpoint
    ContainerServiceEndpoint,
    containerServiceEndpoint,
    cseContainerPort,
    cseContainerName,
    cseHealthCheck,

    -- ** ContainerServiceHealthCheckConfig
    ContainerServiceHealthCheckConfig,
    containerServiceHealthCheckConfig,
    cshccIntervalSeconds,
    cshccHealthyThreshold,
    cshccUnhealthyThreshold,
    cshccTimeoutSeconds,
    cshccPath,
    cshccSuccessCodes,

    -- ** ContainerServiceLogEvent
    ContainerServiceLogEvent,
    containerServiceLogEvent,
    csleMessage,
    csleCreatedAt,

    -- ** ContainerServicePower
    ContainerServicePower,
    containerServicePower,
    cspRamSizeInGb,
    cspIsActive,
    cspName,
    cspCpuCount,
    cspPrice,
    cspPowerId,

    -- ** ContainerServiceRegistryLogin
    ContainerServiceRegistryLogin,
    containerServiceRegistryLogin,
    csrlExpiresAt,
    csrlRegistry,
    csrlPassword,
    csrlUsername,

    -- ** CookieObject
    CookieObject,
    cookieObject,
    coCookiesAllowList,
    coOption,

    -- ** DestinationInfo
    DestinationInfo,
    destinationInfo,
    diId,
    diService,

    -- ** Disk
    Disk,
    disk,
    dGbInUse,
    dAttachmentState,
    dAddOns,
    dIsAttached,
    dCreatedAt,
    dArn,
    dResourceType,
    dSupportCode,
    dSizeInGb,
    dState,
    dName,
    dAttachedTo,
    dTags,
    dIops,
    dLocation,
    dPath,
    dIsSystemDisk,

    -- ** DiskInfo
    DiskInfo,
    diskInfo,
    diSizeInGb,
    diName,
    diPath,
    diIsSystemDisk,

    -- ** DiskMap
    DiskMap,
    diskMap,
    dmOriginalDiskPath,
    dmNewDiskName,

    -- ** DiskSnapshot
    DiskSnapshot,
    diskSnapshot,
    dsIsFromAutoSnapshot,
    dsFromDiskName,
    dsCreatedAt,
    dsArn,
    dsFromInstanceARN,
    dsResourceType,
    dsSupportCode,
    dsSizeInGb,
    dsState,
    dsName,
    dsTags,
    dsFromDiskARN,
    dsFromInstanceName,
    dsLocation,
    dsProgress,

    -- ** DiskSnapshotInfo
    DiskSnapshotInfo,
    diskSnapshotInfo,
    dsiSizeInGb,

    -- ** DistributionBundle
    DistributionBundle,
    distributionBundle,
    dbBundleId,
    dbIsActive,
    dbName,
    dbTransferPerMonthInGb,
    dbPrice,

    -- ** Domain
    Domain,
    domain,
    domCreatedAt,
    domArn,
    domResourceType,
    domSupportCode,
    domName,
    domTags,
    domLocation,
    domDomainEntries,

    -- ** DomainEntry
    DomainEntry,
    domainEntry,
    deOptions,
    deId,
    deName,
    deIsAlias,
    deTarget,
    deType,

    -- ** DomainValidationRecord
    DomainValidationRecord,
    domainValidationRecord,
    dvrResourceRecord,
    dvrDomainName,

    -- ** EndpointRequest
    EndpointRequest,
    endpointRequest,
    erHealthCheck,
    erContainerName,
    erContainerPort,

    -- ** ExportSnapshotRecord
    ExportSnapshotRecord,
    exportSnapshotRecord,
    esrCreatedAt,
    esrArn,
    esrResourceType,
    esrState,
    esrName,
    esrSourceInfo,
    esrLocation,
    esrDestinationInfo,

    -- ** ExportSnapshotRecordSourceInfo
    ExportSnapshotRecordSourceInfo,
    exportSnapshotRecordSourceInfo,
    esrsiDiskSnapshotInfo,
    esrsiCreatedAt,
    esrsiArn,
    esrsiResourceType,
    esrsiName,
    esrsiFromResourceARN,
    esrsiInstanceSnapshotInfo,
    esrsiFromResourceName,

    -- ** HeaderObject
    HeaderObject,
    headerObject,
    hoHeadersAllowList,
    hoOption,

    -- ** HostKeyAttributes
    HostKeyAttributes,
    hostKeyAttributes,
    hkaAlgorithm,
    hkaPublicKey,
    hkaFingerprintSHA256,
    hkaNotValidBefore,
    hkaNotValidAfter,
    hkaFingerprintSHA1,
    hkaWitnessedAt,

    -- ** InputOrigin
    InputOrigin,
    inputOrigin,
    ioRegionName,
    ioProtocolPolicy,
    ioName,

    -- ** Instance
    Instance,
    instance',
    iIpAddressType,
    iIpv6Addresses,
    iBundleId,
    iHardware,
    iAddOns,
    iBlueprintName,
    iSshKeyName,
    iCreatedAt,
    iArn,
    iBlueprintId,
    iResourceType,
    iSupportCode,
    iState,
    iName,
    iTags,
    iNetworking,
    iUsername,
    iPublicIPAddress,
    iIsStaticIP,
    iLocation,
    iPrivateIPAddress,

    -- ** InstanceAccessDetails
    InstanceAccessDetails,
    instanceAccessDetails,
    iadHostKeys,
    iadInstanceName,
    iadExpiresAt,
    iadPrivateKey,
    iadCertKey,
    iadPasswordData,
    iadIpAddress,
    iadPassword,
    iadUsername,
    iadProtocol,

    -- ** InstanceEntry
    InstanceEntry,
    instanceEntry,
    ieUserData,
    ieSourceName,
    ieInstanceType,
    iePortInfoSource,
    ieAvailabilityZone,

    -- ** InstanceHardware
    InstanceHardware,
    instanceHardware,
    ihRamSizeInGb,
    ihDisks,
    ihCpuCount,

    -- ** InstanceHealthSummary
    InstanceHealthSummary,
    instanceHealthSummary,
    ihsInstanceName,
    ihsInstanceHealthReason,
    ihsInstanceHealth,

    -- ** InstanceNetworking
    InstanceNetworking,
    instanceNetworking,
    inMonthlyTransfer,
    inPorts,

    -- ** InstancePortInfo
    InstancePortInfo,
    instancePortInfo,
    ipiFromPort,
    ipiCidrListAliases,
    ipiIpv6Cidrs,
    ipiCommonName,
    ipiCidrs,
    ipiAccessType,
    ipiAccessDirection,
    ipiProtocol,
    ipiToPort,
    ipiAccessFrom,

    -- ** InstancePortState
    InstancePortState,
    instancePortState,
    ipsFromPort,
    ipsCidrListAliases,
    ipsIpv6Cidrs,
    ipsState,
    ipsCidrs,
    ipsProtocol,
    ipsToPort,

    -- ** InstanceSnapshot
    InstanceSnapshot,
    instanceSnapshot,
    insIsFromAutoSnapshot,
    insCreatedAt,
    insArn,
    insFromInstanceARN,
    insResourceType,
    insSupportCode,
    insSizeInGb,
    insFromBundleId,
    insState,
    insName,
    insFromBlueprintId,
    insTags,
    insFromInstanceName,
    insLocation,
    insProgress,
    insFromAttachedDisks,

    -- ** InstanceSnapshotInfo
    InstanceSnapshotInfo,
    instanceSnapshotInfo,
    isiFromDiskInfo,
    isiFromBundleId,
    isiFromBlueprintId,

    -- ** InstanceState
    InstanceState,
    instanceState,
    isCode,
    isName,

    -- ** KeyPair
    KeyPair,
    keyPair,
    kpCreatedAt,
    kpArn,
    kpResourceType,
    kpSupportCode,
    kpName,
    kpTags,
    kpFingerprint,
    kpLocation,

    -- ** LightsailDistribution
    LightsailDistribution,
    lightsailDistribution,
    ldIsEnabled,
    ldIpAddressType,
    ldOrigin,
    ldStatus,
    ldOriginPublicDNS,
    ldBundleId,
    ldAlternativeDomainNames,
    ldCreatedAt,
    ldCacheBehaviorSettings,
    ldArn,
    ldResourceType,
    ldSupportCode,
    ldName,
    ldDomainName,
    ldAbleToUpdateBundle,
    ldTags,
    ldCacheBehaviors,
    ldDefaultCacheBehavior,
    ldLocation,
    ldCertificateName,

    -- ** LoadBalancer
    LoadBalancer,
    loadBalancer,
    lbIpAddressType,
    lbTlsCertificateSummaries,
    lbInstanceHealthSummary,
    lbPublicPorts,
    lbConfigurationOptions,
    lbInstancePort,
    lbCreatedAt,
    lbArn,
    lbResourceType,
    lbSupportCode,
    lbState,
    lbName,
    lbHealthCheckPath,
    lbTags,
    lbDnsName,
    lbProtocol,
    lbLocation,

    -- ** LoadBalancerTLSCertificate
    LoadBalancerTLSCertificate,
    loadBalancerTLSCertificate,
    lbtcStatus,
    lbtcNotBefore,
    lbtcSerial,
    lbtcIsAttached,
    lbtcCreatedAt,
    lbtcArn,
    lbtcResourceType,
    lbtcSupportCode,
    lbtcSubjectAlternativeNames,
    lbtcName,
    lbtcDomainName,
    lbtcSubject,
    lbtcFailureReason,
    lbtcRevocationReason,
    lbtcRevokedAt,
    lbtcNotAfter,
    lbtcTags,
    lbtcSignatureAlgorithm,
    lbtcIssuer,
    lbtcIssuedAt,
    lbtcKeyAlgorithm,
    lbtcDomainValidationRecords,
    lbtcLocation,
    lbtcLoadBalancerName,
    lbtcRenewalSummary,

    -- ** LoadBalancerTLSCertificateDomainValidationOption
    LoadBalancerTLSCertificateDomainValidationOption,
    loadBalancerTLSCertificateDomainValidationOption,
    lbtcdvoDomainName,
    lbtcdvoValidationStatus,

    -- ** LoadBalancerTLSCertificateDomainValidationRecord
    LoadBalancerTLSCertificateDomainValidationRecord,
    loadBalancerTLSCertificateDomainValidationRecord,
    lbtcdvrName,
    lbtcdvrDomainName,
    lbtcdvrValidationStatus,
    lbtcdvrValue,
    lbtcdvrType,

    -- ** LoadBalancerTLSCertificateRenewalSummary
    LoadBalancerTLSCertificateRenewalSummary,
    loadBalancerTLSCertificateRenewalSummary,
    lbtcrsDomainValidationOptions,
    lbtcrsRenewalStatus,

    -- ** LoadBalancerTLSCertificateSummary
    LoadBalancerTLSCertificateSummary,
    loadBalancerTLSCertificateSummary,
    lbtcsIsAttached,
    lbtcsName,

    -- ** LogEvent
    LogEvent,
    logEvent,
    leMessage,
    leCreatedAt,

    -- ** MetricDatapoint
    MetricDatapoint,
    metricDatapoint,
    mdMinimum,
    mdUnit,
    mdSum,
    mdSampleCount,
    mdTimestamp,
    mdAverage,
    mdMaximum,

    -- ** MonitoredResourceInfo
    MonitoredResourceInfo,
    monitoredResourceInfo,
    mriArn,
    mriResourceType,
    mriName,

    -- ** MonthlyTransfer
    MonthlyTransfer,
    monthlyTransfer,
    mtGbPerMonthAllocated,

    -- ** Operation
    Operation,
    operation,
    oOperationDetails,
    oStatus,
    oIsTerminal,
    oCreatedAt,
    oId,
    oResourceType,
    oStatusChangedAt,
    oLocation,
    oResourceName,
    oOperationType,
    oErrorCode,
    oErrorDetails,

    -- ** Origin
    Origin,
    origin,
    oriRegionName,
    oriProtocolPolicy,
    oriResourceType,
    oriName,

    -- ** PasswordData
    PasswordData,
    passwordData,
    pdKeyPairName,
    pdCiphertext,

    -- ** PendingMaintenanceAction
    PendingMaintenanceAction,
    pendingMaintenanceAction,
    pmaCurrentApplyDate,
    pmaAction,
    pmaDescription,

    -- ** PendingModifiedRelationalDatabaseValues
    PendingModifiedRelationalDatabaseValues,
    pendingModifiedRelationalDatabaseValues,
    pmrdvMasterUserPassword,
    pmrdvBackupRetentionEnabled,
    pmrdvEngineVersion,

    -- ** PortInfo
    PortInfo,
    portInfo,
    piFromPort,
    piCidrListAliases,
    piIpv6Cidrs,
    piCidrs,
    piProtocol,
    piToPort,

    -- ** QueryStringObject
    QueryStringObject,
    queryStringObject,
    qsoQueryStringsAllowList,
    qsoOption,

    -- ** RegionInfo
    RegionInfo,
    regionInfo,
    riAvailabilityZones,
    riContinentCode,
    riRelationalDatabaseAvailabilityZones,
    riName,
    riDescription,
    riDisplayName,

    -- ** RelationalDatabase
    RelationalDatabase,
    relationalDatabase,
    rdRelationalDatabaseBundleId,
    rdMasterEndpoint,
    rdPendingMaintenanceActions,
    rdPreferredBackupWindow,
    rdCaCertificateIdentifier,
    rdRelationalDatabaseBlueprintId,
    rdLatestRestorableTime,
    rdMasterDatabaseName,
    rdHardware,
    rdCreatedAt,
    rdArn,
    rdMasterUsername,
    rdResourceType,
    rdPubliclyAccessible,
    rdSupportCode,
    rdState,
    rdName,
    rdBackupRetentionEnabled,
    rdEngineVersion,
    rdPreferredMaintenanceWindow,
    rdTags,
    rdParameterApplyStatus,
    rdPendingModifiedValues,
    rdEngine,
    rdSecondaryAvailabilityZone,
    rdLocation,

    -- ** RelationalDatabaseBlueprint
    RelationalDatabaseBlueprint,
    relationalDatabaseBlueprint,
    rdbEngineDescription,
    rdbBlueprintId,
    rdbEngineVersionDescription,
    rdbIsEngineDefault,
    rdbEngineVersion,
    rdbEngine,

    -- ** RelationalDatabaseBundle
    RelationalDatabaseBundle,
    relationalDatabaseBundle,
    rdbRamSizeInGb,
    rdbBundleId,
    rdbIsActive,
    rdbName,
    rdbIsEncrypted,
    rdbTransferPerMonthInGb,
    rdbCpuCount,
    rdbPrice,
    rdbDiskSizeInGb,

    -- ** RelationalDatabaseEndpoint
    RelationalDatabaseEndpoint,
    relationalDatabaseEndpoint,
    rdeAddress,
    rdePort,

    -- ** RelationalDatabaseEvent
    RelationalDatabaseEvent,
    relationalDatabaseEvent,
    rdeMessage,
    rdeCreatedAt,
    rdeEventCategories,
    rdeResource,

    -- ** RelationalDatabaseHardware
    RelationalDatabaseHardware,
    relationalDatabaseHardware,
    rdhRamSizeInGb,
    rdhCpuCount,
    rdhDiskSizeInGb,

    -- ** RelationalDatabaseParameter
    RelationalDatabaseParameter,
    relationalDatabaseParameter,
    rdpAllowedValues,
    rdpParameterValue,
    rdpApplyType,
    rdpParameterName,
    rdpDescription,
    rdpApplyMethod,
    rdpIsModifiable,
    rdpDataType,

    -- ** RelationalDatabaseSnapshot
    RelationalDatabaseSnapshot,
    relationalDatabaseSnapshot,
    rdsFromRelationalDatabaseName,
    rdsCreatedAt,
    rdsArn,
    rdsResourceType,
    rdsSupportCode,
    rdsSizeInGb,
    rdsState,
    rdsName,
    rdsEngineVersion,
    rdsFromRelationalDatabaseBundleId,
    rdsTags,
    rdsEngine,
    rdsFromRelationalDatabaseARN,
    rdsLocation,
    rdsFromRelationalDatabaseBlueprintId,

    -- ** RenewalSummary
    RenewalSummary,
    renewalSummary,
    rsUpdatedAt,
    rsRenewalStatus,
    rsRenewalStatusReason,
    rsDomainValidationRecords,

    -- ** ResourceLocation
    ResourceLocation,
    resourceLocation,
    rlRegionName,
    rlAvailabilityZone,

    -- ** ResourceRecord
    ResourceRecord,
    resourceRecord,
    rrName,
    rrValue,
    rrType,

    -- ** StaticIP
    StaticIP,
    staticIP,
    siIsAttached,
    siCreatedAt,
    siArn,
    siResourceType,
    siSupportCode,
    siName,
    siIpAddress,
    siAttachedTo,
    siLocation,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Lightsail.AllocateStaticIP
import Network.AWS.Lightsail.AttachCertificateToDistribution
import Network.AWS.Lightsail.AttachDisk
import Network.AWS.Lightsail.AttachInstancesToLoadBalancer
import Network.AWS.Lightsail.AttachLoadBalancerTLSCertificate
import Network.AWS.Lightsail.AttachStaticIP
import Network.AWS.Lightsail.CloseInstancePublicPorts
import Network.AWS.Lightsail.CopySnapshot
import Network.AWS.Lightsail.CreateCertificate
import Network.AWS.Lightsail.CreateCloudFormationStack
import Network.AWS.Lightsail.CreateContactMethod
import Network.AWS.Lightsail.CreateContainerService
import Network.AWS.Lightsail.CreateContainerServiceDeployment
import Network.AWS.Lightsail.CreateContainerServiceRegistryLogin
import Network.AWS.Lightsail.CreateDisk
import Network.AWS.Lightsail.CreateDiskFromSnapshot
import Network.AWS.Lightsail.CreateDiskSnapshot
import Network.AWS.Lightsail.CreateDistribution
import Network.AWS.Lightsail.CreateDomain
import Network.AWS.Lightsail.CreateDomainEntry
import Network.AWS.Lightsail.CreateInstanceSnapshot
import Network.AWS.Lightsail.CreateInstances
import Network.AWS.Lightsail.CreateInstancesFromSnapshot
import Network.AWS.Lightsail.CreateKeyPair
import Network.AWS.Lightsail.CreateLoadBalancer
import Network.AWS.Lightsail.CreateLoadBalancerTLSCertificate
import Network.AWS.Lightsail.CreateRelationalDatabase
import Network.AWS.Lightsail.CreateRelationalDatabaseFromSnapshot
import Network.AWS.Lightsail.CreateRelationalDatabaseSnapshot
import Network.AWS.Lightsail.DeleteAlarm
import Network.AWS.Lightsail.DeleteAutoSnapshot
import Network.AWS.Lightsail.DeleteCertificate
import Network.AWS.Lightsail.DeleteContactMethod
import Network.AWS.Lightsail.DeleteContainerImage
import Network.AWS.Lightsail.DeleteContainerService
import Network.AWS.Lightsail.DeleteDisk
import Network.AWS.Lightsail.DeleteDiskSnapshot
import Network.AWS.Lightsail.DeleteDistribution
import Network.AWS.Lightsail.DeleteDomain
import Network.AWS.Lightsail.DeleteDomainEntry
import Network.AWS.Lightsail.DeleteInstance
import Network.AWS.Lightsail.DeleteInstanceSnapshot
import Network.AWS.Lightsail.DeleteKeyPair
import Network.AWS.Lightsail.DeleteKnownHostKeys
import Network.AWS.Lightsail.DeleteLoadBalancer
import Network.AWS.Lightsail.DeleteLoadBalancerTLSCertificate
import Network.AWS.Lightsail.DeleteRelationalDatabase
import Network.AWS.Lightsail.DeleteRelationalDatabaseSnapshot
import Network.AWS.Lightsail.DetachCertificateFromDistribution
import Network.AWS.Lightsail.DetachDisk
import Network.AWS.Lightsail.DetachInstancesFromLoadBalancer
import Network.AWS.Lightsail.DetachStaticIP
import Network.AWS.Lightsail.DisableAddOn
import Network.AWS.Lightsail.DownloadDefaultKeyPair
import Network.AWS.Lightsail.EnableAddOn
import Network.AWS.Lightsail.ExportSnapshot
import Network.AWS.Lightsail.GetActiveNames
import Network.AWS.Lightsail.GetAlarms
import Network.AWS.Lightsail.GetAutoSnapshots
import Network.AWS.Lightsail.GetBlueprints
import Network.AWS.Lightsail.GetBundles
import Network.AWS.Lightsail.GetCertificates
import Network.AWS.Lightsail.GetCloudFormationStackRecords
import Network.AWS.Lightsail.GetContactMethods
import Network.AWS.Lightsail.GetContainerAPIMetadata
import Network.AWS.Lightsail.GetContainerImages
import Network.AWS.Lightsail.GetContainerLog
import Network.AWS.Lightsail.GetContainerServiceDeployments
import Network.AWS.Lightsail.GetContainerServiceMetricData
import Network.AWS.Lightsail.GetContainerServicePowers
import Network.AWS.Lightsail.GetContainerServices
import Network.AWS.Lightsail.GetDisk
import Network.AWS.Lightsail.GetDiskSnapshot
import Network.AWS.Lightsail.GetDiskSnapshots
import Network.AWS.Lightsail.GetDisks
import Network.AWS.Lightsail.GetDistributionBundles
import Network.AWS.Lightsail.GetDistributionLatestCacheReset
import Network.AWS.Lightsail.GetDistributionMetricData
import Network.AWS.Lightsail.GetDistributions
import Network.AWS.Lightsail.GetDomain
import Network.AWS.Lightsail.GetDomains
import Network.AWS.Lightsail.GetExportSnapshotRecords
import Network.AWS.Lightsail.GetInstance
import Network.AWS.Lightsail.GetInstanceAccessDetails
import Network.AWS.Lightsail.GetInstanceMetricData
import Network.AWS.Lightsail.GetInstancePortStates
import Network.AWS.Lightsail.GetInstanceSnapshot
import Network.AWS.Lightsail.GetInstanceSnapshots
import Network.AWS.Lightsail.GetInstanceState
import Network.AWS.Lightsail.GetInstances
import Network.AWS.Lightsail.GetKeyPair
import Network.AWS.Lightsail.GetKeyPairs
import Network.AWS.Lightsail.GetLoadBalancer
import Network.AWS.Lightsail.GetLoadBalancerMetricData
import Network.AWS.Lightsail.GetLoadBalancerTLSCertificates
import Network.AWS.Lightsail.GetLoadBalancers
import Network.AWS.Lightsail.GetOperation
import Network.AWS.Lightsail.GetOperations
import Network.AWS.Lightsail.GetOperationsForResource
import Network.AWS.Lightsail.GetRegions
import Network.AWS.Lightsail.GetRelationalDatabase
import Network.AWS.Lightsail.GetRelationalDatabaseBlueprints
import Network.AWS.Lightsail.GetRelationalDatabaseBundles
import Network.AWS.Lightsail.GetRelationalDatabaseEvents
import Network.AWS.Lightsail.GetRelationalDatabaseLogEvents
import Network.AWS.Lightsail.GetRelationalDatabaseLogStreams
import Network.AWS.Lightsail.GetRelationalDatabaseMasterUserPassword
import Network.AWS.Lightsail.GetRelationalDatabaseMetricData
import Network.AWS.Lightsail.GetRelationalDatabaseParameters
import Network.AWS.Lightsail.GetRelationalDatabaseSnapshot
import Network.AWS.Lightsail.GetRelationalDatabaseSnapshots
import Network.AWS.Lightsail.GetRelationalDatabases
import Network.AWS.Lightsail.GetStaticIP
import Network.AWS.Lightsail.GetStaticIPs
import Network.AWS.Lightsail.ImportKeyPair
import Network.AWS.Lightsail.IsVPCPeered
import Network.AWS.Lightsail.OpenInstancePublicPorts
import Network.AWS.Lightsail.PeerVPC
import Network.AWS.Lightsail.PutAlarm
import Network.AWS.Lightsail.PutInstancePublicPorts
import Network.AWS.Lightsail.RebootInstance
import Network.AWS.Lightsail.RebootRelationalDatabase
import Network.AWS.Lightsail.RegisterContainerImage
import Network.AWS.Lightsail.ReleaseStaticIP
import Network.AWS.Lightsail.ResetDistributionCache
import Network.AWS.Lightsail.SendContactMethodVerification
import Network.AWS.Lightsail.SetIPAddressType
import Network.AWS.Lightsail.StartInstance
import Network.AWS.Lightsail.StartRelationalDatabase
import Network.AWS.Lightsail.StopInstance
import Network.AWS.Lightsail.StopRelationalDatabase
import Network.AWS.Lightsail.TagResource
import Network.AWS.Lightsail.TestAlarm
import Network.AWS.Lightsail.Types
import Network.AWS.Lightsail.UnpeerVPC
import Network.AWS.Lightsail.UntagResource
import Network.AWS.Lightsail.UpdateContainerService
import Network.AWS.Lightsail.UpdateDistribution
import Network.AWS.Lightsail.UpdateDistributionBundle
import Network.AWS.Lightsail.UpdateDomainEntry
import Network.AWS.Lightsail.UpdateLoadBalancerAttribute
import Network.AWS.Lightsail.UpdateRelationalDatabase
import Network.AWS.Lightsail.UpdateRelationalDatabaseParameters
import Network.AWS.Lightsail.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Lightsail'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.

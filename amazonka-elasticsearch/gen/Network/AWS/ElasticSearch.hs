{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Elasticsearch Configuration Service__
--
-- Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains.
--
-- For sample code that uses the Configuration API, see the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html Amazon Elasticsearch Service Developer Guide> . The guide also contains <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html sample code for sending signed HTTP requests to the Elasticsearch APIs> .
--
-- The endpoint for configuration service requests is region-specific: es./region/ .amazonaws.com. For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions Regions and Endpoints> .
module Network.AWS.ElasticSearch
  ( -- * Service Configuration
    elasticSearch,

    -- * Errors
    -- $errors

    -- ** InvalidPaginationTokenException
    _InvalidPaginationTokenException,

    -- ** InvalidTypeException
    _InvalidTypeException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InternalException
    _InternalException,

    -- ** BaseException
    _BaseException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ValidationException
    _ValidationException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ConflictException
    _ConflictException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** DisabledOperationException
    _DisabledOperationException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeInboundCrossClusterSearchConnections
    module Network.AWS.ElasticSearch.DescribeInboundCrossClusterSearchConnections,

    -- ** RemoveTags
    module Network.AWS.ElasticSearch.RemoveTags,

    -- ** CreateOutboundCrossClusterSearchConnection
    module Network.AWS.ElasticSearch.CreateOutboundCrossClusterSearchConnection,

    -- ** GetUpgradeHistory (Paginated)
    module Network.AWS.ElasticSearch.GetUpgradeHistory,

    -- ** DescribeElasticsearchDomainConfig
    module Network.AWS.ElasticSearch.DescribeElasticsearchDomainConfig,

    -- ** AcceptInboundCrossClusterSearchConnection
    module Network.AWS.ElasticSearch.AcceptInboundCrossClusterSearchConnection,

    -- ** DeleteOutboundCrossClusterSearchConnection
    module Network.AWS.ElasticSearch.DeleteOutboundCrossClusterSearchConnection,

    -- ** ListDomainNames
    module Network.AWS.ElasticSearch.ListDomainNames,

    -- ** CancelElasticsearchServiceSoftwareUpdate
    module Network.AWS.ElasticSearch.CancelElasticsearchServiceSoftwareUpdate,

    -- ** DescribeElasticsearchDomain
    module Network.AWS.ElasticSearch.DescribeElasticsearchDomain,

    -- ** DeleteElasticsearchServiceRole
    module Network.AWS.ElasticSearch.DeleteElasticsearchServiceRole,

    -- ** ListElasticsearchInstanceTypes (Paginated)
    module Network.AWS.ElasticSearch.ListElasticsearchInstanceTypes,

    -- ** UpdatePackage
    module Network.AWS.ElasticSearch.UpdatePackage,

    -- ** DeletePackage
    module Network.AWS.ElasticSearch.DeletePackage,

    -- ** AddTags
    module Network.AWS.ElasticSearch.AddTags,

    -- ** DeleteInboundCrossClusterSearchConnection
    module Network.AWS.ElasticSearch.DeleteInboundCrossClusterSearchConnection,

    -- ** UpdateElasticsearchDomainConfig
    module Network.AWS.ElasticSearch.UpdateElasticsearchDomainConfig,

    -- ** ListElasticsearchVersions (Paginated)
    module Network.AWS.ElasticSearch.ListElasticsearchVersions,

    -- ** DeleteElasticsearchDomain
    module Network.AWS.ElasticSearch.DeleteElasticsearchDomain,

    -- ** GetCompatibleElasticsearchVersions
    module Network.AWS.ElasticSearch.GetCompatibleElasticsearchVersions,

    -- ** DissociatePackage
    module Network.AWS.ElasticSearch.DissociatePackage,

    -- ** CreateElasticsearchDomain
    module Network.AWS.ElasticSearch.CreateElasticsearchDomain,

    -- ** DescribePackages
    module Network.AWS.ElasticSearch.DescribePackages,

    -- ** GetPackageVersionHistory
    module Network.AWS.ElasticSearch.GetPackageVersionHistory,

    -- ** DescribeElasticsearchInstanceTypeLimits
    module Network.AWS.ElasticSearch.DescribeElasticsearchInstanceTypeLimits,

    -- ** DescribeOutboundCrossClusterSearchConnections
    module Network.AWS.ElasticSearch.DescribeOutboundCrossClusterSearchConnections,

    -- ** AssociatePackage
    module Network.AWS.ElasticSearch.AssociatePackage,

    -- ** CreatePackage
    module Network.AWS.ElasticSearch.CreatePackage,

    -- ** RejectInboundCrossClusterSearchConnection
    module Network.AWS.ElasticSearch.RejectInboundCrossClusterSearchConnection,

    -- ** DescribeDomainAutoTunes
    module Network.AWS.ElasticSearch.DescribeDomainAutoTunes,

    -- ** ListTags
    module Network.AWS.ElasticSearch.ListTags,

    -- ** UpgradeElasticsearchDomain
    module Network.AWS.ElasticSearch.UpgradeElasticsearchDomain,

    -- ** ListPackagesForDomain
    module Network.AWS.ElasticSearch.ListPackagesForDomain,

    -- ** DescribeReservedElasticsearchInstances (Paginated)
    module Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstances,

    -- ** DescribeReservedElasticsearchInstanceOfferings (Paginated)
    module Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstanceOfferings,

    -- ** StartElasticsearchServiceSoftwareUpdate
    module Network.AWS.ElasticSearch.StartElasticsearchServiceSoftwareUpdate,

    -- ** ListDomainsForPackage
    module Network.AWS.ElasticSearch.ListDomainsForPackage,

    -- ** DescribeElasticsearchDomains
    module Network.AWS.ElasticSearch.DescribeElasticsearchDomains,

    -- ** PurchaseReservedElasticsearchInstanceOffering
    module Network.AWS.ElasticSearch.PurchaseReservedElasticsearchInstanceOffering,

    -- ** GetUpgradeStatus
    module Network.AWS.ElasticSearch.GetUpgradeStatus,

    -- * Types

    -- ** AutoTuneDesiredState
    AutoTuneDesiredState (..),

    -- ** AutoTuneState
    AutoTuneState (..),

    -- ** AutoTuneType
    AutoTuneType (..),

    -- ** DeploymentStatus
    DeploymentStatus (..),

    -- ** DescribePackagesFilterName
    DescribePackagesFilterName (..),

    -- ** DomainPackageStatus
    DomainPackageStatus (..),

    -- ** ESPartitionInstanceType
    ESPartitionInstanceType (..),

    -- ** ESWarmPartitionInstanceType
    ESWarmPartitionInstanceType (..),

    -- ** InboundCrossClusterSearchConnectionStatusCode
    InboundCrossClusterSearchConnectionStatusCode (..),

    -- ** LogType
    LogType (..),

    -- ** OptionState
    OptionState (..),

    -- ** OutboundCrossClusterSearchConnectionStatusCode
    OutboundCrossClusterSearchConnectionStatusCode (..),

    -- ** PackageStatus
    PackageStatus (..),

    -- ** PackageType
    PackageType (..),

    -- ** ReservedElasticsearchInstancePaymentOption
    ReservedElasticsearchInstancePaymentOption (..),

    -- ** RollbackOnDisable
    RollbackOnDisable (..),

    -- ** ScheduledAutoTuneActionType
    ScheduledAutoTuneActionType (..),

    -- ** ScheduledAutoTuneSeverityType
    ScheduledAutoTuneSeverityType (..),

    -- ** TLSSecurityPolicy
    TLSSecurityPolicy (..),

    -- ** TimeUnit
    TimeUnit (..),

    -- ** UpgradeStatus
    UpgradeStatus (..),

    -- ** UpgradeStep
    UpgradeStep (..),

    -- ** VolumeType
    VolumeType (..),

    -- ** AccessPoliciesStatus
    AccessPoliciesStatus,
    accessPoliciesStatus,
    apsOptions,
    apsStatus,

    -- ** AdditionalLimit
    AdditionalLimit,
    additionalLimit,
    alLimitValues,
    alLimitName,

    -- ** AdvancedOptionsStatus
    AdvancedOptionsStatus,
    advancedOptionsStatus,
    aosOptions,
    aosStatus,

    -- ** AdvancedSecurityOptions
    AdvancedSecurityOptions,
    advancedSecurityOptions,
    asoInternalUserDatabaseEnabled,
    asoSAMLOptions,
    asoEnabled,

    -- ** AdvancedSecurityOptionsInput
    AdvancedSecurityOptionsInput,
    advancedSecurityOptionsInput,
    asoiInternalUserDatabaseEnabled,
    asoiSAMLOptions,
    asoiEnabled,
    asoiMasterUserOptions,

    -- ** AdvancedSecurityOptionsStatus
    AdvancedSecurityOptionsStatus,
    advancedSecurityOptionsStatus,
    asosOptions,
    asosStatus,

    -- ** AutoTune
    AutoTune,
    autoTune,
    atAutoTuneType,
    atAutoTuneDetails,

    -- ** AutoTuneDetails
    AutoTuneDetails,
    autoTuneDetails,
    atdScheduledAutoTuneDetails,

    -- ** AutoTuneMaintenanceSchedule
    AutoTuneMaintenanceSchedule,
    autoTuneMaintenanceSchedule,
    atmsDuration,
    atmsStartAt,
    atmsCronExpressionForRecurrence,

    -- ** AutoTuneOptions
    AutoTuneOptions,
    autoTuneOptions,
    atoDesiredState,
    atoRollbackOnDisable,
    atoMaintenanceSchedules,

    -- ** AutoTuneOptionsInput
    AutoTuneOptionsInput,
    autoTuneOptionsInput,
    atoiDesiredState,
    atoiMaintenanceSchedules,

    -- ** AutoTuneOptionsOutput
    AutoTuneOptionsOutput,
    autoTuneOptionsOutput,
    atooState,
    atooErrorMessage,

    -- ** AutoTuneOptionsStatus
    AutoTuneOptionsStatus,
    autoTuneOptionsStatus,
    atosStatus,
    atosOptions,

    -- ** AutoTuneStatus
    AutoTuneStatus,
    autoTuneStatus,
    atsUpdateVersion,
    atsErrorMessage,
    atsPendingDeletion,
    atsCreationDate,
    atsUpdateDate,
    atsState,

    -- ** CognitoOptions
    CognitoOptions,
    cognitoOptions,
    coIdentityPoolId,
    coRoleARN,
    coUserPoolId,
    coEnabled,

    -- ** CognitoOptionsStatus
    CognitoOptionsStatus,
    cognitoOptionsStatus,
    cosOptions,
    cosStatus,

    -- ** CompatibleVersionsMap
    CompatibleVersionsMap,
    compatibleVersionsMap,
    cvmSourceVersion,
    cvmTargetVersions,

    -- ** DescribePackagesFilter
    DescribePackagesFilter,
    describePackagesFilter,
    dpfName,
    dpfValue,

    -- ** DomainEndpointOptions
    DomainEndpointOptions,
    domainEndpointOptions,
    deoCustomEndpointCertificateARN,
    deoCustomEndpoint,
    deoEnforceHTTPS,
    deoTLSSecurityPolicy,
    deoCustomEndpointEnabled,

    -- ** DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus,
    domainEndpointOptionsStatus,
    deosOptions,
    deosStatus,

    -- ** DomainInfo
    DomainInfo,
    domainInfo,
    dDomainName,

    -- ** DomainInformation
    DomainInformation,
    domainInformation,
    diOwnerId,
    diRegion,
    diDomainName,

    -- ** DomainPackageDetails
    DomainPackageDetails,
    domainPackageDetails,
    dpdDomainPackageStatus,
    dpdPackageVersion,
    dpdPackageName,
    dpdLastUpdated,
    dpdPackageId,
    dpdDomainName,
    dpdReferencePath,
    dpdPackageType,
    dpdErrorDetails,

    -- ** Duration
    Duration,
    duration,
    dUnit,
    dValue,

    -- ** EBSOptions
    EBSOptions,
    ebsOptions,
    eoEBSEnabled,
    eoVolumeType,
    eoVolumeSize,
    eoIOPS,

    -- ** EBSOptionsStatus
    EBSOptionsStatus,
    ebsOptionsStatus,
    eosOptions,
    eosStatus,

    -- ** ElasticsearchClusterConfig
    ElasticsearchClusterConfig,
    elasticsearchClusterConfig,
    eccZoneAwarenessConfig,
    eccDedicatedMasterCount,
    eccWarmEnabled,
    eccInstanceType,
    eccZoneAwarenessEnabled,
    eccDedicatedMasterEnabled,
    eccWarmCount,
    eccDedicatedMasterType,
    eccWarmType,
    eccInstanceCount,

    -- ** ElasticsearchClusterConfigStatus
    ElasticsearchClusterConfigStatus,
    elasticsearchClusterConfigStatus,
    eccsOptions,
    eccsStatus,

    -- ** ElasticsearchDomainConfig
    ElasticsearchDomainConfig,
    elasticsearchDomainConfig,
    edcEBSOptions,
    edcSnapshotOptions,
    edcElasticsearchClusterConfig,
    edcDomainEndpointOptions,
    edcVPCOptions,
    edcAutoTuneOptions,
    edcAccessPolicies,
    edcEncryptionAtRestOptions,
    edcCognitoOptions,
    edcNodeToNodeEncryptionOptions,
    edcElasticsearchVersion,
    edcAdvancedOptions,
    edcAdvancedSecurityOptions,
    edcLogPublishingOptions,

    -- ** ElasticsearchDomainStatus
    ElasticsearchDomainStatus,
    elasticsearchDomainStatus,
    edsEBSOptions,
    edsSnapshotOptions,
    edsDomainEndpointOptions,
    edsUpgradeProcessing,
    edsEndpoints,
    edsVPCOptions,
    edsAutoTuneOptions,
    edsAccessPolicies,
    edsEncryptionAtRestOptions,
    edsServiceSoftwareOptions,
    edsCognitoOptions,
    edsNodeToNodeEncryptionOptions,
    edsElasticsearchVersion,
    edsAdvancedOptions,
    edsProcessing,
    edsEndpoint,
    edsCreated,
    edsAdvancedSecurityOptions,
    edsLogPublishingOptions,
    edsDeleted,
    edsDomainId,
    edsDomainName,
    edsARN,
    edsElasticsearchClusterConfig,

    -- ** ElasticsearchVersionStatus
    ElasticsearchVersionStatus,
    elasticsearchVersionStatus,
    evsOptions,
    evsStatus,

    -- ** EncryptionAtRestOptions
    EncryptionAtRestOptions,
    encryptionAtRestOptions,
    earoEnabled,
    earoKMSKeyId,

    -- ** EncryptionAtRestOptionsStatus
    EncryptionAtRestOptionsStatus,
    encryptionAtRestOptionsStatus,
    earosOptions,
    earosStatus,

    -- ** ErrorDetails
    ErrorDetails,
    errorDetails,
    edErrorType,
    edErrorMessage,

    -- ** Filter
    Filter,
    filter',
    fValues,
    fName,

    -- ** InboundCrossClusterSearchConnection
    InboundCrossClusterSearchConnection,
    inboundCrossClusterSearchConnection,
    iccscCrossClusterSearchConnectionId,
    iccscSourceDomainInfo,
    iccscDestinationDomainInfo,
    iccscConnectionStatus,

    -- ** InboundCrossClusterSearchConnectionStatus
    InboundCrossClusterSearchConnectionStatus,
    inboundCrossClusterSearchConnectionStatus,
    iccscsMessage,
    iccscsStatusCode,

    -- ** InstanceCountLimits
    InstanceCountLimits,
    instanceCountLimits,
    iclMaximumInstanceCount,
    iclMinimumInstanceCount,

    -- ** InstanceLimits
    InstanceLimits,
    instanceLimits,
    ilInstanceCountLimits,

    -- ** Limits
    Limits,
    limits,
    lInstanceLimits,
    lAdditionalLimits,
    lStorageTypes,

    -- ** LogPublishingOption
    LogPublishingOption,
    logPublishingOption,
    lpoEnabled,
    lpoCloudWatchLogsLogGroupARN,

    -- ** LogPublishingOptionsStatus
    LogPublishingOptionsStatus,
    logPublishingOptionsStatus,
    lposStatus,
    lposOptions,

    -- ** MasterUserOptions
    MasterUserOptions,
    masterUserOptions,
    muoMasterUserPassword,
    muoMasterUserName,
    muoMasterUserARN,

    -- ** NodeToNodeEncryptionOptions
    NodeToNodeEncryptionOptions,
    nodeToNodeEncryptionOptions,
    ntneoEnabled,

    -- ** NodeToNodeEncryptionOptionsStatus
    NodeToNodeEncryptionOptionsStatus,
    nodeToNodeEncryptionOptionsStatus,
    ntneosOptions,
    ntneosStatus,

    -- ** OptionStatus
    OptionStatus,
    optionStatus,
    osUpdateVersion,
    osPendingDeletion,
    osCreationDate,
    osUpdateDate,
    osState,

    -- ** OutboundCrossClusterSearchConnection
    OutboundCrossClusterSearchConnection,
    outboundCrossClusterSearchConnection,
    occscCrossClusterSearchConnectionId,
    occscSourceDomainInfo,
    occscConnectionAlias,
    occscDestinationDomainInfo,
    occscConnectionStatus,

    -- ** OutboundCrossClusterSearchConnectionStatus
    OutboundCrossClusterSearchConnectionStatus,
    outboundCrossClusterSearchConnectionStatus,
    occscsMessage,
    occscsStatusCode,

    -- ** PackageDetails
    PackageDetails,
    packageDetails,
    pdAvailablePackageVersion,
    pdPackageStatus,
    pdPackageName,
    pdCreatedAt,
    pdPackageId,
    pdPackageDescription,
    pdLastUpdatedAt,
    pdPackageType,
    pdErrorDetails,

    -- ** PackageSource
    PackageSource,
    packageSource,
    psS3Key,
    psS3BucketName,

    -- ** PackageVersionHistory
    PackageVersionHistory,
    packageVersionHistory,
    pvhPackageVersion,
    pvhCreatedAt,
    pvhCommitMessage,

    -- ** RecurringCharge
    RecurringCharge,
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- ** ReservedElasticsearchInstance
    ReservedElasticsearchInstance,
    reservedElasticsearchInstance,
    reiReservationName,
    reiPaymentOption,
    reiElasticsearchInstanceCount,
    reiDuration,
    reiStartTime,
    reiCurrencyCode,
    reiElasticsearchInstanceType,
    reiState,
    reiFixedPrice,
    reiReservedElasticsearchInstanceId,
    reiReservedElasticsearchInstanceOfferingId,
    reiUsagePrice,
    reiRecurringCharges,

    -- ** ReservedElasticsearchInstanceOffering
    ReservedElasticsearchInstanceOffering,
    reservedElasticsearchInstanceOffering,
    reioPaymentOption,
    reioDuration,
    reioCurrencyCode,
    reioElasticsearchInstanceType,
    reioFixedPrice,
    reioReservedElasticsearchInstanceOfferingId,
    reioUsagePrice,
    reioRecurringCharges,

    -- ** SAMLIdp
    SAMLIdp,
    sAMLIdp,
    samliMetadataContent,
    samliEntityId,

    -- ** SAMLOptionsInput
    SAMLOptionsInput,
    sAMLOptionsInput,
    samloiMasterBackendRole,
    samloiRolesKey,
    samloiSessionTimeoutMinutes,
    samloiIdp,
    samloiEnabled,
    samloiMasterUserName,
    samloiSubjectKey,

    -- ** SAMLOptionsOutput
    SAMLOptionsOutput,
    sAMLOptionsOutput,
    samlooRolesKey,
    samlooSessionTimeoutMinutes,
    samlooIdp,
    samlooEnabled,
    samlooSubjectKey,

    -- ** ScheduledAutoTuneDetails
    ScheduledAutoTuneDetails,
    scheduledAutoTuneDetails,
    satdActionType,
    satdSeverity,
    satdDate,
    satdAction,

    -- ** ServiceSoftwareOptions
    ServiceSoftwareOptions,
    serviceSoftwareOptions,
    ssoNewVersion,
    ssoCurrentVersion,
    ssoUpdateAvailable,
    ssoCancellable,
    ssoUpdateStatus,
    ssoOptionalDeployment,
    ssoDescription,
    ssoAutomatedUpdateDate,

    -- ** SnapshotOptions
    SnapshotOptions,
    snapshotOptions,
    soAutomatedSnapshotStartHour,

    -- ** SnapshotOptionsStatus
    SnapshotOptionsStatus,
    snapshotOptionsStatus,
    sosOptions,
    sosStatus,

    -- ** StorageType
    StorageType,
    storageType,
    stStorageTypeLimits,
    stStorageTypeName,
    stStorageSubTypeName,

    -- ** StorageTypeLimit
    StorageTypeLimit,
    storageTypeLimit,
    stlLimitValues,
    stlLimitName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** UpgradeHistory
    UpgradeHistory,
    upgradeHistory,
    uhUpgradeName,
    uhStartTimestamp,
    uhUpgradeStatus,
    uhStepsList,

    -- ** UpgradeStepItem
    UpgradeStepItem,
    upgradeStepItem,
    usiUpgradeStepStatus,
    usiProgressPercent,
    usiUpgradeStep,
    usiIssues,

    -- ** VPCDerivedInfo
    VPCDerivedInfo,
    vpcDerivedInfo,
    vdiSecurityGroupIds,
    vdiAvailabilityZones,
    vdiSubnetIds,
    vdiVPCId,

    -- ** VPCDerivedInfoStatus
    VPCDerivedInfoStatus,
    vpcDerivedInfoStatus,
    vdisOptions,
    vdisStatus,

    -- ** VPCOptions
    VPCOptions,
    vpcOptions,
    voSecurityGroupIds,
    voSubnetIds,

    -- ** ZoneAwarenessConfig
    ZoneAwarenessConfig,
    zoneAwarenessConfig,
    zacAvailabilityZoneCount,
  )
where

import Network.AWS.ElasticSearch.AcceptInboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.AddTags
import Network.AWS.ElasticSearch.AssociatePackage
import Network.AWS.ElasticSearch.CancelElasticsearchServiceSoftwareUpdate
import Network.AWS.ElasticSearch.CreateElasticsearchDomain
import Network.AWS.ElasticSearch.CreateOutboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.CreatePackage
import Network.AWS.ElasticSearch.DeleteElasticsearchDomain
import Network.AWS.ElasticSearch.DeleteElasticsearchServiceRole
import Network.AWS.ElasticSearch.DeleteInboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.DeleteOutboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.DeletePackage
import Network.AWS.ElasticSearch.DescribeDomainAutoTunes
import Network.AWS.ElasticSearch.DescribeElasticsearchDomain
import Network.AWS.ElasticSearch.DescribeElasticsearchDomainConfig
import Network.AWS.ElasticSearch.DescribeElasticsearchDomains
import Network.AWS.ElasticSearch.DescribeElasticsearchInstanceTypeLimits
import Network.AWS.ElasticSearch.DescribeInboundCrossClusterSearchConnections
import Network.AWS.ElasticSearch.DescribeOutboundCrossClusterSearchConnections
import Network.AWS.ElasticSearch.DescribePackages
import Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstanceOfferings
import Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstances
import Network.AWS.ElasticSearch.DissociatePackage
import Network.AWS.ElasticSearch.GetCompatibleElasticsearchVersions
import Network.AWS.ElasticSearch.GetPackageVersionHistory
import Network.AWS.ElasticSearch.GetUpgradeHistory
import Network.AWS.ElasticSearch.GetUpgradeStatus
import Network.AWS.ElasticSearch.ListDomainNames
import Network.AWS.ElasticSearch.ListDomainsForPackage
import Network.AWS.ElasticSearch.ListElasticsearchInstanceTypes
import Network.AWS.ElasticSearch.ListElasticsearchVersions
import Network.AWS.ElasticSearch.ListPackagesForDomain
import Network.AWS.ElasticSearch.ListTags
import Network.AWS.ElasticSearch.PurchaseReservedElasticsearchInstanceOffering
import Network.AWS.ElasticSearch.RejectInboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.RemoveTags
import Network.AWS.ElasticSearch.StartElasticsearchServiceSoftwareUpdate
import Network.AWS.ElasticSearch.Types
import Network.AWS.ElasticSearch.UpdateElasticsearchDomainConfig
import Network.AWS.ElasticSearch.UpdatePackage
import Network.AWS.ElasticSearch.UpgradeElasticsearchDomain
import Network.AWS.ElasticSearch.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ElasticSearch'.

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

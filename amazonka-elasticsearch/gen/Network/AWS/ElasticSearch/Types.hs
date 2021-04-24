{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types
  ( -- * Service Configuration
    elasticSearch,

    -- * Errors
    _InvalidPaginationTokenException,
    _InvalidTypeException,
    _ResourceAlreadyExistsException,
    _InternalException,
    _BaseException,
    _AccessDeniedException,
    _ValidationException,
    _LimitExceededException,
    _ConflictException,
    _ResourceNotFoundException,
    _DisabledOperationException,

    -- * AutoTuneDesiredState
    AutoTuneDesiredState (..),

    -- * AutoTuneState
    AutoTuneState (..),

    -- * AutoTuneType
    AutoTuneType (..),

    -- * DeploymentStatus
    DeploymentStatus (..),

    -- * DescribePackagesFilterName
    DescribePackagesFilterName (..),

    -- * DomainPackageStatus
    DomainPackageStatus (..),

    -- * ESPartitionInstanceType
    ESPartitionInstanceType (..),

    -- * ESWarmPartitionInstanceType
    ESWarmPartitionInstanceType (..),

    -- * InboundCrossClusterSearchConnectionStatusCode
    InboundCrossClusterSearchConnectionStatusCode (..),

    -- * LogType
    LogType (..),

    -- * OptionState
    OptionState (..),

    -- * OutboundCrossClusterSearchConnectionStatusCode
    OutboundCrossClusterSearchConnectionStatusCode (..),

    -- * PackageStatus
    PackageStatus (..),

    -- * PackageType
    PackageType (..),

    -- * ReservedElasticsearchInstancePaymentOption
    ReservedElasticsearchInstancePaymentOption (..),

    -- * RollbackOnDisable
    RollbackOnDisable (..),

    -- * ScheduledAutoTuneActionType
    ScheduledAutoTuneActionType (..),

    -- * ScheduledAutoTuneSeverityType
    ScheduledAutoTuneSeverityType (..),

    -- * TLSSecurityPolicy
    TLSSecurityPolicy (..),

    -- * TimeUnit
    TimeUnit (..),

    -- * UpgradeStatus
    UpgradeStatus (..),

    -- * UpgradeStep
    UpgradeStep (..),

    -- * VolumeType
    VolumeType (..),

    -- * AccessPoliciesStatus
    AccessPoliciesStatus (..),
    accessPoliciesStatus,
    apsOptions,
    apsStatus,

    -- * AdditionalLimit
    AdditionalLimit (..),
    additionalLimit,
    alLimitValues,
    alLimitName,

    -- * AdvancedOptionsStatus
    AdvancedOptionsStatus (..),
    advancedOptionsStatus,
    aosOptions,
    aosStatus,

    -- * AdvancedSecurityOptions
    AdvancedSecurityOptions (..),
    advancedSecurityOptions,
    asoInternalUserDatabaseEnabled,
    asoSAMLOptions,
    asoEnabled,

    -- * AdvancedSecurityOptionsInput
    AdvancedSecurityOptionsInput (..),
    advancedSecurityOptionsInput,
    asoiInternalUserDatabaseEnabled,
    asoiSAMLOptions,
    asoiEnabled,
    asoiMasterUserOptions,

    -- * AdvancedSecurityOptionsStatus
    AdvancedSecurityOptionsStatus (..),
    advancedSecurityOptionsStatus,
    asosOptions,
    asosStatus,

    -- * AutoTune
    AutoTune (..),
    autoTune,
    atAutoTuneType,
    atAutoTuneDetails,

    -- * AutoTuneDetails
    AutoTuneDetails (..),
    autoTuneDetails,
    atdScheduledAutoTuneDetails,

    -- * AutoTuneMaintenanceSchedule
    AutoTuneMaintenanceSchedule (..),
    autoTuneMaintenanceSchedule,
    atmsDuration,
    atmsStartAt,
    atmsCronExpressionForRecurrence,

    -- * AutoTuneOptions
    AutoTuneOptions (..),
    autoTuneOptions,
    atoDesiredState,
    atoRollbackOnDisable,
    atoMaintenanceSchedules,

    -- * AutoTuneOptionsInput
    AutoTuneOptionsInput (..),
    autoTuneOptionsInput,
    atoiDesiredState,
    atoiMaintenanceSchedules,

    -- * AutoTuneOptionsOutput
    AutoTuneOptionsOutput (..),
    autoTuneOptionsOutput,
    atooState,
    atooErrorMessage,

    -- * AutoTuneOptionsStatus
    AutoTuneOptionsStatus (..),
    autoTuneOptionsStatus,
    atosStatus,
    atosOptions,

    -- * AutoTuneStatus
    AutoTuneStatus (..),
    autoTuneStatus,
    atsUpdateVersion,
    atsErrorMessage,
    atsPendingDeletion,
    atsCreationDate,
    atsUpdateDate,
    atsState,

    -- * CognitoOptions
    CognitoOptions (..),
    cognitoOptions,
    coIdentityPoolId,
    coRoleARN,
    coUserPoolId,
    coEnabled,

    -- * CognitoOptionsStatus
    CognitoOptionsStatus (..),
    cognitoOptionsStatus,
    cosOptions,
    cosStatus,

    -- * CompatibleVersionsMap
    CompatibleVersionsMap (..),
    compatibleVersionsMap,
    cvmSourceVersion,
    cvmTargetVersions,

    -- * DescribePackagesFilter
    DescribePackagesFilter (..),
    describePackagesFilter,
    dpfName,
    dpfValue,

    -- * DomainEndpointOptions
    DomainEndpointOptions (..),
    domainEndpointOptions,
    deoCustomEndpointCertificateARN,
    deoCustomEndpoint,
    deoEnforceHTTPS,
    deoTLSSecurityPolicy,
    deoCustomEndpointEnabled,

    -- * DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus (..),
    domainEndpointOptionsStatus,
    deosOptions,
    deosStatus,

    -- * DomainInfo
    DomainInfo (..),
    domainInfo,
    dDomainName,

    -- * DomainInformation
    DomainInformation (..),
    domainInformation,
    diOwnerId,
    diRegion,
    diDomainName,

    -- * DomainPackageDetails
    DomainPackageDetails (..),
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

    -- * Duration
    Duration (..),
    duration,
    dUnit,
    dValue,

    -- * EBSOptions
    EBSOptions (..),
    ebsOptions,
    eoEBSEnabled,
    eoVolumeType,
    eoVolumeSize,
    eoIOPS,

    -- * EBSOptionsStatus
    EBSOptionsStatus (..),
    ebsOptionsStatus,
    eosOptions,
    eosStatus,

    -- * ElasticsearchClusterConfig
    ElasticsearchClusterConfig (..),
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

    -- * ElasticsearchClusterConfigStatus
    ElasticsearchClusterConfigStatus (..),
    elasticsearchClusterConfigStatus,
    eccsOptions,
    eccsStatus,

    -- * ElasticsearchDomainConfig
    ElasticsearchDomainConfig (..),
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

    -- * ElasticsearchDomainStatus
    ElasticsearchDomainStatus (..),
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

    -- * ElasticsearchVersionStatus
    ElasticsearchVersionStatus (..),
    elasticsearchVersionStatus,
    evsOptions,
    evsStatus,

    -- * EncryptionAtRestOptions
    EncryptionAtRestOptions (..),
    encryptionAtRestOptions,
    earoEnabled,
    earoKMSKeyId,

    -- * EncryptionAtRestOptionsStatus
    EncryptionAtRestOptionsStatus (..),
    encryptionAtRestOptionsStatus,
    earosOptions,
    earosStatus,

    -- * ErrorDetails
    ErrorDetails (..),
    errorDetails,
    edErrorType,
    edErrorMessage,

    -- * Filter
    Filter (..),
    filter',
    fValues,
    fName,

    -- * InboundCrossClusterSearchConnection
    InboundCrossClusterSearchConnection (..),
    inboundCrossClusterSearchConnection,
    iccscCrossClusterSearchConnectionId,
    iccscSourceDomainInfo,
    iccscDestinationDomainInfo,
    iccscConnectionStatus,

    -- * InboundCrossClusterSearchConnectionStatus
    InboundCrossClusterSearchConnectionStatus (..),
    inboundCrossClusterSearchConnectionStatus,
    iccscsMessage,
    iccscsStatusCode,

    -- * InstanceCountLimits
    InstanceCountLimits (..),
    instanceCountLimits,
    iclMaximumInstanceCount,
    iclMinimumInstanceCount,

    -- * InstanceLimits
    InstanceLimits (..),
    instanceLimits,
    ilInstanceCountLimits,

    -- * Limits
    Limits (..),
    limits,
    lInstanceLimits,
    lAdditionalLimits,
    lStorageTypes,

    -- * LogPublishingOption
    LogPublishingOption (..),
    logPublishingOption,
    lpoEnabled,
    lpoCloudWatchLogsLogGroupARN,

    -- * LogPublishingOptionsStatus
    LogPublishingOptionsStatus (..),
    logPublishingOptionsStatus,
    lposStatus,
    lposOptions,

    -- * MasterUserOptions
    MasterUserOptions (..),
    masterUserOptions,
    muoMasterUserPassword,
    muoMasterUserName,
    muoMasterUserARN,

    -- * NodeToNodeEncryptionOptions
    NodeToNodeEncryptionOptions (..),
    nodeToNodeEncryptionOptions,
    ntneoEnabled,

    -- * NodeToNodeEncryptionOptionsStatus
    NodeToNodeEncryptionOptionsStatus (..),
    nodeToNodeEncryptionOptionsStatus,
    ntneosOptions,
    ntneosStatus,

    -- * OptionStatus
    OptionStatus (..),
    optionStatus,
    osUpdateVersion,
    osPendingDeletion,
    osCreationDate,
    osUpdateDate,
    osState,

    -- * OutboundCrossClusterSearchConnection
    OutboundCrossClusterSearchConnection (..),
    outboundCrossClusterSearchConnection,
    occscCrossClusterSearchConnectionId,
    occscSourceDomainInfo,
    occscConnectionAlias,
    occscDestinationDomainInfo,
    occscConnectionStatus,

    -- * OutboundCrossClusterSearchConnectionStatus
    OutboundCrossClusterSearchConnectionStatus (..),
    outboundCrossClusterSearchConnectionStatus,
    occscsMessage,
    occscsStatusCode,

    -- * PackageDetails
    PackageDetails (..),
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

    -- * PackageSource
    PackageSource (..),
    packageSource,
    psS3Key,
    psS3BucketName,

    -- * PackageVersionHistory
    PackageVersionHistory (..),
    packageVersionHistory,
    pvhPackageVersion,
    pvhCreatedAt,
    pvhCommitMessage,

    -- * RecurringCharge
    RecurringCharge (..),
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- * ReservedElasticsearchInstance
    ReservedElasticsearchInstance (..),
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

    -- * ReservedElasticsearchInstanceOffering
    ReservedElasticsearchInstanceOffering (..),
    reservedElasticsearchInstanceOffering,
    reioPaymentOption,
    reioDuration,
    reioCurrencyCode,
    reioElasticsearchInstanceType,
    reioFixedPrice,
    reioReservedElasticsearchInstanceOfferingId,
    reioUsagePrice,
    reioRecurringCharges,

    -- * SAMLIdp
    SAMLIdp (..),
    sAMLIdp,
    samliMetadataContent,
    samliEntityId,

    -- * SAMLOptionsInput
    SAMLOptionsInput (..),
    sAMLOptionsInput,
    samloiMasterBackendRole,
    samloiRolesKey,
    samloiSessionTimeoutMinutes,
    samloiIdp,
    samloiEnabled,
    samloiMasterUserName,
    samloiSubjectKey,

    -- * SAMLOptionsOutput
    SAMLOptionsOutput (..),
    sAMLOptionsOutput,
    samlooRolesKey,
    samlooSessionTimeoutMinutes,
    samlooIdp,
    samlooEnabled,
    samlooSubjectKey,

    -- * ScheduledAutoTuneDetails
    ScheduledAutoTuneDetails (..),
    scheduledAutoTuneDetails,
    satdActionType,
    satdSeverity,
    satdDate,
    satdAction,

    -- * ServiceSoftwareOptions
    ServiceSoftwareOptions (..),
    serviceSoftwareOptions,
    ssoNewVersion,
    ssoCurrentVersion,
    ssoUpdateAvailable,
    ssoCancellable,
    ssoUpdateStatus,
    ssoOptionalDeployment,
    ssoDescription,
    ssoAutomatedUpdateDate,

    -- * SnapshotOptions
    SnapshotOptions (..),
    snapshotOptions,
    soAutomatedSnapshotStartHour,

    -- * SnapshotOptionsStatus
    SnapshotOptionsStatus (..),
    snapshotOptionsStatus,
    sosOptions,
    sosStatus,

    -- * StorageType
    StorageType (..),
    storageType,
    stStorageTypeLimits,
    stStorageTypeName,
    stStorageSubTypeName,

    -- * StorageTypeLimit
    StorageTypeLimit (..),
    storageTypeLimit,
    stlLimitValues,
    stlLimitName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * UpgradeHistory
    UpgradeHistory (..),
    upgradeHistory,
    uhUpgradeName,
    uhStartTimestamp,
    uhUpgradeStatus,
    uhStepsList,

    -- * UpgradeStepItem
    UpgradeStepItem (..),
    upgradeStepItem,
    usiUpgradeStepStatus,
    usiProgressPercent,
    usiUpgradeStep,
    usiIssues,

    -- * VPCDerivedInfo
    VPCDerivedInfo (..),
    vpcDerivedInfo,
    vdiSecurityGroupIds,
    vdiAvailabilityZones,
    vdiSubnetIds,
    vdiVPCId,

    -- * VPCDerivedInfoStatus
    VPCDerivedInfoStatus (..),
    vpcDerivedInfoStatus,
    vdisOptions,
    vdisStatus,

    -- * VPCOptions
    VPCOptions (..),
    vpcOptions,
    voSecurityGroupIds,
    voSubnetIds,

    -- * ZoneAwarenessConfig
    ZoneAwarenessConfig (..),
    zoneAwarenessConfig,
    zacAvailabilityZoneCount,
  )
where

import Network.AWS.ElasticSearch.Types.AccessPoliciesStatus
import Network.AWS.ElasticSearch.Types.AdditionalLimit
import Network.AWS.ElasticSearch.Types.AdvancedOptionsStatus
import Network.AWS.ElasticSearch.Types.AdvancedSecurityOptions
import Network.AWS.ElasticSearch.Types.AdvancedSecurityOptionsInput
import Network.AWS.ElasticSearch.Types.AdvancedSecurityOptionsStatus
import Network.AWS.ElasticSearch.Types.AutoTune
import Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
import Network.AWS.ElasticSearch.Types.AutoTuneDetails
import Network.AWS.ElasticSearch.Types.AutoTuneMaintenanceSchedule
import Network.AWS.ElasticSearch.Types.AutoTuneOptions
import Network.AWS.ElasticSearch.Types.AutoTuneOptionsInput
import Network.AWS.ElasticSearch.Types.AutoTuneOptionsOutput
import Network.AWS.ElasticSearch.Types.AutoTuneOptionsStatus
import Network.AWS.ElasticSearch.Types.AutoTuneState
import Network.AWS.ElasticSearch.Types.AutoTuneStatus
import Network.AWS.ElasticSearch.Types.AutoTuneType
import Network.AWS.ElasticSearch.Types.CognitoOptions
import Network.AWS.ElasticSearch.Types.CognitoOptionsStatus
import Network.AWS.ElasticSearch.Types.CompatibleVersionsMap
import Network.AWS.ElasticSearch.Types.DeploymentStatus
import Network.AWS.ElasticSearch.Types.DescribePackagesFilter
import Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
import Network.AWS.ElasticSearch.Types.DomainEndpointOptions
import Network.AWS.ElasticSearch.Types.DomainEndpointOptionsStatus
import Network.AWS.ElasticSearch.Types.DomainInfo
import Network.AWS.ElasticSearch.Types.DomainInformation
import Network.AWS.ElasticSearch.Types.DomainPackageDetails
import Network.AWS.ElasticSearch.Types.DomainPackageStatus
import Network.AWS.ElasticSearch.Types.Duration
import Network.AWS.ElasticSearch.Types.EBSOptions
import Network.AWS.ElasticSearch.Types.EBSOptionsStatus
import Network.AWS.ElasticSearch.Types.ESPartitionInstanceType
import Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
import Network.AWS.ElasticSearch.Types.ElasticsearchClusterConfig
import Network.AWS.ElasticSearch.Types.ElasticsearchClusterConfigStatus
import Network.AWS.ElasticSearch.Types.ElasticsearchDomainConfig
import Network.AWS.ElasticSearch.Types.ElasticsearchDomainStatus
import Network.AWS.ElasticSearch.Types.ElasticsearchVersionStatus
import Network.AWS.ElasticSearch.Types.EncryptionAtRestOptions
import Network.AWS.ElasticSearch.Types.EncryptionAtRestOptionsStatus
import Network.AWS.ElasticSearch.Types.ErrorDetails
import Network.AWS.ElasticSearch.Types.Filter
import Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatus
import Network.AWS.ElasticSearch.Types.InboundCrossClusterSearchConnectionStatusCode
import Network.AWS.ElasticSearch.Types.InstanceCountLimits
import Network.AWS.ElasticSearch.Types.InstanceLimits
import Network.AWS.ElasticSearch.Types.Limits
import Network.AWS.ElasticSearch.Types.LogPublishingOption
import Network.AWS.ElasticSearch.Types.LogPublishingOptionsStatus
import Network.AWS.ElasticSearch.Types.LogType
import Network.AWS.ElasticSearch.Types.MasterUserOptions
import Network.AWS.ElasticSearch.Types.NodeToNodeEncryptionOptions
import Network.AWS.ElasticSearch.Types.NodeToNodeEncryptionOptionsStatus
import Network.AWS.ElasticSearch.Types.OptionState
import Network.AWS.ElasticSearch.Types.OptionStatus
import Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnection
import Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatus
import Network.AWS.ElasticSearch.Types.OutboundCrossClusterSearchConnectionStatusCode
import Network.AWS.ElasticSearch.Types.PackageDetails
import Network.AWS.ElasticSearch.Types.PackageSource
import Network.AWS.ElasticSearch.Types.PackageStatus
import Network.AWS.ElasticSearch.Types.PackageType
import Network.AWS.ElasticSearch.Types.PackageVersionHistory
import Network.AWS.ElasticSearch.Types.RecurringCharge
import Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstance
import Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstanceOffering
import Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
import Network.AWS.ElasticSearch.Types.RollbackOnDisable
import Network.AWS.ElasticSearch.Types.SAMLIdp
import Network.AWS.ElasticSearch.Types.SAMLOptionsInput
import Network.AWS.ElasticSearch.Types.SAMLOptionsOutput
import Network.AWS.ElasticSearch.Types.ScheduledAutoTuneActionType
import Network.AWS.ElasticSearch.Types.ScheduledAutoTuneDetails
import Network.AWS.ElasticSearch.Types.ScheduledAutoTuneSeverityType
import Network.AWS.ElasticSearch.Types.ServiceSoftwareOptions
import Network.AWS.ElasticSearch.Types.SnapshotOptions
import Network.AWS.ElasticSearch.Types.SnapshotOptionsStatus
import Network.AWS.ElasticSearch.Types.StorageType
import Network.AWS.ElasticSearch.Types.StorageTypeLimit
import Network.AWS.ElasticSearch.Types.TLSSecurityPolicy
import Network.AWS.ElasticSearch.Types.Tag
import Network.AWS.ElasticSearch.Types.TimeUnit
import Network.AWS.ElasticSearch.Types.UpgradeHistory
import Network.AWS.ElasticSearch.Types.UpgradeStatus
import Network.AWS.ElasticSearch.Types.UpgradeStep
import Network.AWS.ElasticSearch.Types.UpgradeStepItem
import Network.AWS.ElasticSearch.Types.VPCDerivedInfo
import Network.AWS.ElasticSearch.Types.VPCDerivedInfoStatus
import Network.AWS.ElasticSearch.Types.VPCOptions
import Network.AWS.ElasticSearch.Types.VolumeType
import Network.AWS.ElasticSearch.Types.ZoneAwarenessConfig
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-01-01@ of the Amazon Elasticsearch Service SDK configuration.
elasticSearch :: Service
elasticSearch =
  Service
    { _svcAbbrev = "ElasticSearch",
      _svcSigner = v4,
      _svcPrefix = "es",
      _svcVersion = "2015-01-01",
      _svcEndpoint = defaultEndpoint elasticSearch,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ElasticSearch",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The request processing has failed because of invalid pagination token provided by customer. Returns an HTTP status code of 400.
_InvalidPaginationTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPaginationTokenException =
  _MatchServiceError
    elasticSearch
    "InvalidPaginationTokenException"
    . hasStatus 400

-- | An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.
_InvalidTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTypeException =
  _MatchServiceError
    elasticSearch
    "InvalidTypeException"
    . hasStatus 409

-- | An exception for creating a resource that already exists. Gives http status code of 400.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    elasticSearch
    "ResourceAlreadyExistsException"
    . hasStatus 409

-- | The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.
_InternalException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalException =
  _MatchServiceError
    elasticSearch
    "InternalException"
    . hasStatus 500

-- | An error occurred while processing the request.
_BaseException :: AsError a => Getting (First ServiceError) a ServiceError
_BaseException =
  _MatchServiceError elasticSearch "BaseException"

-- | An error occurred because user does not have permissions to access the resource. Returns HTTP status code 403.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    elasticSearch
    "AccessDeniedException"
    . hasStatus 403

-- | An exception for missing / invalid input fields. Gives http status code of 400.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError
    elasticSearch
    "ValidationException"
    . hasStatus 400

-- | An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    elasticSearch
    "LimitExceededException"
    . hasStatus 409

-- | An error occurred because the client attempts to remove a resource that is currently in use. Returns HTTP status code 409.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError
    elasticSearch
    "ConflictException"
    . hasStatus 409

-- | An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    elasticSearch
    "ResourceNotFoundException"
    . hasStatus 409

-- | An error occured because the client wanted to access a not supported operation. Gives http status code of 409.
_DisabledOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_DisabledOperationException =
  _MatchServiceError
    elasticSearch
    "DisabledOperationException"
    . hasStatus 409

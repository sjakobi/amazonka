{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types
  ( -- * Service Configuration
    lightsail,

    -- * Errors
    _NotFoundException,
    _InvalidInputException,
    _UnauthenticatedException,
    _OperationFailureException,
    _AccessDeniedException,
    _AccountSetupInProgressException,
    _ServiceException,

    -- * AccessDirection
    AccessDirection (..),

    -- * AddOnType
    AddOnType (..),

    -- * AlarmState
    AlarmState (..),

    -- * AutoSnapshotStatus
    AutoSnapshotStatus (..),

    -- * BehaviorEnum
    BehaviorEnum (..),

    -- * BlueprintType
    BlueprintType (..),

    -- * CertificateStatus
    CertificateStatus (..),

    -- * CloudFormationStackRecordSourceType
    CloudFormationStackRecordSourceType (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ContactMethodStatus
    ContactMethodStatus (..),

    -- * ContactMethodVerificationProtocol
    ContactMethodVerificationProtocol (..),

    -- * ContactProtocol
    ContactProtocol (..),

    -- * ContainerServiceDeploymentState
    ContainerServiceDeploymentState (..),

    -- * ContainerServiceMetricName
    ContainerServiceMetricName (..),

    -- * ContainerServicePowerName
    ContainerServicePowerName (..),

    -- * ContainerServiceProtocol
    ContainerServiceProtocol (..),

    -- * ContainerServiceState
    ContainerServiceState (..),

    -- * DiskSnapshotState
    DiskSnapshotState (..),

    -- * DiskState
    DiskState (..),

    -- * DistributionMetricName
    DistributionMetricName (..),

    -- * ExportSnapshotRecordSourceType
    ExportSnapshotRecordSourceType (..),

    -- * ForwardValues
    ForwardValues (..),

    -- * HeaderEnum
    HeaderEnum (..),

    -- * IPAddressType
    IPAddressType (..),

    -- * InstanceAccessProtocol
    InstanceAccessProtocol (..),

    -- * InstanceHealthReason
    InstanceHealthReason (..),

    -- * InstanceHealthState
    InstanceHealthState (..),

    -- * InstanceMetricName
    InstanceMetricName (..),

    -- * InstancePlatform
    InstancePlatform (..),

    -- * InstanceSnapshotState
    InstanceSnapshotState (..),

    -- * LoadBalancerAttributeName
    LoadBalancerAttributeName (..),

    -- * LoadBalancerMetricName
    LoadBalancerMetricName (..),

    -- * LoadBalancerProtocol
    LoadBalancerProtocol (..),

    -- * LoadBalancerState
    LoadBalancerState (..),

    -- * LoadBalancerTLSCertificateDomainStatus
    LoadBalancerTLSCertificateDomainStatus (..),

    -- * LoadBalancerTLSCertificateFailureReason
    LoadBalancerTLSCertificateFailureReason (..),

    -- * LoadBalancerTLSCertificateRenewalStatus
    LoadBalancerTLSCertificateRenewalStatus (..),

    -- * LoadBalancerTLSCertificateRevocationReason
    LoadBalancerTLSCertificateRevocationReason (..),

    -- * LoadBalancerTLSCertificateStatus
    LoadBalancerTLSCertificateStatus (..),

    -- * MetricName
    MetricName (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * MetricUnit
    MetricUnit (..),

    -- * NetworkProtocol
    NetworkProtocol (..),

    -- * OperationStatus
    OperationStatus (..),

    -- * OperationType
    OperationType (..),

    -- * OriginProtocolPolicyEnum
    OriginProtocolPolicyEnum (..),

    -- * PortAccessType
    PortAccessType (..),

    -- * PortInfoSourceType
    PortInfoSourceType (..),

    -- * PortState
    PortState (..),

    -- * RecordState
    RecordState (..),

    -- * RegionName
    RegionName (..),

    -- * RelationalDatabaseEngine
    RelationalDatabaseEngine (..),

    -- * RelationalDatabaseMetricName
    RelationalDatabaseMetricName (..),

    -- * RelationalDatabasePasswordVersion
    RelationalDatabasePasswordVersion (..),

    -- * RenewalStatus
    RenewalStatus (..),

    -- * ResourceType
    ResourceType (..),

    -- * TreatMissingData
    TreatMissingData (..),

    -- * AddOn
    AddOn (..),
    addOn,
    aoSnapshotTimeOfDay,
    aoStatus,
    aoName,
    aoNextSnapshotTimeOfDay,

    -- * AddOnRequest
    AddOnRequest (..),
    addOnRequest,
    aorAutoSnapshotAddOnRequest,
    aorAddOnType,

    -- * Alarm
    Alarm (..),
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

    -- * AttachedDisk
    AttachedDisk (..),
    attachedDisk,
    adSizeInGb,
    adPath,

    -- * AutoSnapshotAddOnRequest
    AutoSnapshotAddOnRequest (..),
    autoSnapshotAddOnRequest,
    asaorSnapshotTimeOfDay,

    -- * AutoSnapshotDetails
    AutoSnapshotDetails (..),
    autoSnapshotDetails,
    asdStatus,
    asdCreatedAt,
    asdDate,
    asdFromAttachedDisks,

    -- * AvailabilityZone
    AvailabilityZone (..),
    availabilityZone,
    azZoneName,
    azState,

    -- * Blueprint
    Blueprint (..),
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

    -- * Bundle
    Bundle (..),
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

    -- * CacheBehavior
    CacheBehavior (..),
    cacheBehavior,
    cbBehavior,

    -- * CacheBehaviorPerPath
    CacheBehaviorPerPath (..),
    cacheBehaviorPerPath,
    cbppBehavior,
    cbppPath,

    -- * CacheSettings
    CacheSettings (..),
    cacheSettings,
    csMaximumTTL,
    csForwardedHeaders,
    csDefaultTTL,
    csCachedHTTPMethods,
    csAllowedHTTPMethods,
    csForwardedQueryStrings,
    csForwardedCookies,
    csMinimumTTL,

    -- * Certificate
    Certificate (..),
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

    -- * CertificateSummary
    CertificateSummary (..),
    certificateSummary,
    cCertificateARN,
    cDomainName,
    cCertificateDetail,
    cTags,
    cCertificateName,

    -- * CloudFormationStackRecord
    CloudFormationStackRecord (..),
    cloudFormationStackRecord,
    cfsrCreatedAt,
    cfsrArn,
    cfsrResourceType,
    cfsrState,
    cfsrName,
    cfsrSourceInfo,
    cfsrLocation,
    cfsrDestinationInfo,

    -- * CloudFormationStackRecordSourceInfo
    CloudFormationStackRecordSourceInfo (..),
    cloudFormationStackRecordSourceInfo,
    cfsrsiArn,
    cfsrsiResourceType,
    cfsrsiName,

    -- * ContactMethod
    ContactMethod (..),
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

    -- * Container
    Container (..),
    container,
    cEnvironment,
    cPorts,
    cImage,
    cCommand,

    -- * ContainerImage
    ContainerImage (..),
    containerImage,
    ciCreatedAt,
    ciImage,
    ciDigest,

    -- * ContainerService
    ContainerService (..),
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

    -- * ContainerServiceDeployment
    ContainerServiceDeployment (..),
    containerServiceDeployment,
    csdCreatedAt,
    csdVersion,
    csdPublicEndpoint,
    csdState,
    csdContainers,

    -- * ContainerServiceDeploymentRequest
    ContainerServiceDeploymentRequest (..),
    containerServiceDeploymentRequest,
    csdrPublicEndpoint,
    csdrContainers,

    -- * ContainerServiceEndpoint
    ContainerServiceEndpoint (..),
    containerServiceEndpoint,
    cseContainerPort,
    cseContainerName,
    cseHealthCheck,

    -- * ContainerServiceHealthCheckConfig
    ContainerServiceHealthCheckConfig (..),
    containerServiceHealthCheckConfig,
    cshccIntervalSeconds,
    cshccHealthyThreshold,
    cshccUnhealthyThreshold,
    cshccTimeoutSeconds,
    cshccPath,
    cshccSuccessCodes,

    -- * ContainerServiceLogEvent
    ContainerServiceLogEvent (..),
    containerServiceLogEvent,
    csleMessage,
    csleCreatedAt,

    -- * ContainerServicePower
    ContainerServicePower (..),
    containerServicePower,
    cspRamSizeInGb,
    cspIsActive,
    cspName,
    cspCpuCount,
    cspPrice,
    cspPowerId,

    -- * ContainerServiceRegistryLogin
    ContainerServiceRegistryLogin (..),
    containerServiceRegistryLogin,
    csrlExpiresAt,
    csrlRegistry,
    csrlPassword,
    csrlUsername,

    -- * CookieObject
    CookieObject (..),
    cookieObject,
    coCookiesAllowList,
    coOption,

    -- * DestinationInfo
    DestinationInfo (..),
    destinationInfo,
    diId,
    diService,

    -- * Disk
    Disk (..),
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

    -- * DiskInfo
    DiskInfo (..),
    diskInfo,
    diSizeInGb,
    diName,
    diPath,
    diIsSystemDisk,

    -- * DiskMap
    DiskMap (..),
    diskMap,
    dmOriginalDiskPath,
    dmNewDiskName,

    -- * DiskSnapshot
    DiskSnapshot (..),
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

    -- * DiskSnapshotInfo
    DiskSnapshotInfo (..),
    diskSnapshotInfo,
    dsiSizeInGb,

    -- * DistributionBundle
    DistributionBundle (..),
    distributionBundle,
    dbBundleId,
    dbIsActive,
    dbName,
    dbTransferPerMonthInGb,
    dbPrice,

    -- * Domain
    Domain (..),
    domain,
    domCreatedAt,
    domArn,
    domResourceType,
    domSupportCode,
    domName,
    domTags,
    domLocation,
    domDomainEntries,

    -- * DomainEntry
    DomainEntry (..),
    domainEntry,
    deOptions,
    deId,
    deName,
    deIsAlias,
    deTarget,
    deType,

    -- * DomainValidationRecord
    DomainValidationRecord (..),
    domainValidationRecord,
    dvrResourceRecord,
    dvrDomainName,

    -- * EndpointRequest
    EndpointRequest (..),
    endpointRequest,
    erHealthCheck,
    erContainerName,
    erContainerPort,

    -- * ExportSnapshotRecord
    ExportSnapshotRecord (..),
    exportSnapshotRecord,
    esrCreatedAt,
    esrArn,
    esrResourceType,
    esrState,
    esrName,
    esrSourceInfo,
    esrLocation,
    esrDestinationInfo,

    -- * ExportSnapshotRecordSourceInfo
    ExportSnapshotRecordSourceInfo (..),
    exportSnapshotRecordSourceInfo,
    esrsiDiskSnapshotInfo,
    esrsiCreatedAt,
    esrsiArn,
    esrsiResourceType,
    esrsiName,
    esrsiFromResourceARN,
    esrsiInstanceSnapshotInfo,
    esrsiFromResourceName,

    -- * HeaderObject
    HeaderObject (..),
    headerObject,
    hoHeadersAllowList,
    hoOption,

    -- * HostKeyAttributes
    HostKeyAttributes (..),
    hostKeyAttributes,
    hkaAlgorithm,
    hkaPublicKey,
    hkaFingerprintSHA256,
    hkaNotValidBefore,
    hkaNotValidAfter,
    hkaFingerprintSHA1,
    hkaWitnessedAt,

    -- * InputOrigin
    InputOrigin (..),
    inputOrigin,
    ioRegionName,
    ioProtocolPolicy,
    ioName,

    -- * Instance
    Instance (..),
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

    -- * InstanceAccessDetails
    InstanceAccessDetails (..),
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

    -- * InstanceEntry
    InstanceEntry (..),
    instanceEntry,
    ieUserData,
    ieSourceName,
    ieInstanceType,
    iePortInfoSource,
    ieAvailabilityZone,

    -- * InstanceHardware
    InstanceHardware (..),
    instanceHardware,
    ihRamSizeInGb,
    ihDisks,
    ihCpuCount,

    -- * InstanceHealthSummary
    InstanceHealthSummary (..),
    instanceHealthSummary,
    ihsInstanceName,
    ihsInstanceHealthReason,
    ihsInstanceHealth,

    -- * InstanceNetworking
    InstanceNetworking (..),
    instanceNetworking,
    inMonthlyTransfer,
    inPorts,

    -- * InstancePortInfo
    InstancePortInfo (..),
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

    -- * InstancePortState
    InstancePortState (..),
    instancePortState,
    ipsFromPort,
    ipsCidrListAliases,
    ipsIpv6Cidrs,
    ipsState,
    ipsCidrs,
    ipsProtocol,
    ipsToPort,

    -- * InstanceSnapshot
    InstanceSnapshot (..),
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

    -- * InstanceSnapshotInfo
    InstanceSnapshotInfo (..),
    instanceSnapshotInfo,
    isiFromDiskInfo,
    isiFromBundleId,
    isiFromBlueprintId,

    -- * InstanceState
    InstanceState (..),
    instanceState,
    isCode,
    isName,

    -- * KeyPair
    KeyPair (..),
    keyPair,
    kpCreatedAt,
    kpArn,
    kpResourceType,
    kpSupportCode,
    kpName,
    kpTags,
    kpFingerprint,
    kpLocation,

    -- * LightsailDistribution
    LightsailDistribution (..),
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

    -- * LoadBalancer
    LoadBalancer (..),
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

    -- * LoadBalancerTLSCertificate
    LoadBalancerTLSCertificate (..),
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

    -- * LoadBalancerTLSCertificateDomainValidationOption
    LoadBalancerTLSCertificateDomainValidationOption (..),
    loadBalancerTLSCertificateDomainValidationOption,
    lbtcdvoDomainName,
    lbtcdvoValidationStatus,

    -- * LoadBalancerTLSCertificateDomainValidationRecord
    LoadBalancerTLSCertificateDomainValidationRecord (..),
    loadBalancerTLSCertificateDomainValidationRecord,
    lbtcdvrName,
    lbtcdvrDomainName,
    lbtcdvrValidationStatus,
    lbtcdvrValue,
    lbtcdvrType,

    -- * LoadBalancerTLSCertificateRenewalSummary
    LoadBalancerTLSCertificateRenewalSummary (..),
    loadBalancerTLSCertificateRenewalSummary,
    lbtcrsDomainValidationOptions,
    lbtcrsRenewalStatus,

    -- * LoadBalancerTLSCertificateSummary
    LoadBalancerTLSCertificateSummary (..),
    loadBalancerTLSCertificateSummary,
    lbtcsIsAttached,
    lbtcsName,

    -- * LogEvent
    LogEvent (..),
    logEvent,
    leMessage,
    leCreatedAt,

    -- * MetricDatapoint
    MetricDatapoint (..),
    metricDatapoint,
    mdMinimum,
    mdUnit,
    mdSum,
    mdSampleCount,
    mdTimestamp,
    mdAverage,
    mdMaximum,

    -- * MonitoredResourceInfo
    MonitoredResourceInfo (..),
    monitoredResourceInfo,
    mriArn,
    mriResourceType,
    mriName,

    -- * MonthlyTransfer
    MonthlyTransfer (..),
    monthlyTransfer,
    mtGbPerMonthAllocated,

    -- * Operation
    Operation (..),
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

    -- * Origin
    Origin (..),
    origin,
    oriRegionName,
    oriProtocolPolicy,
    oriResourceType,
    oriName,

    -- * PasswordData
    PasswordData (..),
    passwordData,
    pdKeyPairName,
    pdCiphertext,

    -- * PendingMaintenanceAction
    PendingMaintenanceAction (..),
    pendingMaintenanceAction,
    pmaCurrentApplyDate,
    pmaAction,
    pmaDescription,

    -- * PendingModifiedRelationalDatabaseValues
    PendingModifiedRelationalDatabaseValues (..),
    pendingModifiedRelationalDatabaseValues,
    pmrdvMasterUserPassword,
    pmrdvBackupRetentionEnabled,
    pmrdvEngineVersion,

    -- * PortInfo
    PortInfo (..),
    portInfo,
    piFromPort,
    piCidrListAliases,
    piIpv6Cidrs,
    piCidrs,
    piProtocol,
    piToPort,

    -- * QueryStringObject
    QueryStringObject (..),
    queryStringObject,
    qsoQueryStringsAllowList,
    qsoOption,

    -- * RegionInfo
    RegionInfo (..),
    regionInfo,
    riAvailabilityZones,
    riContinentCode,
    riRelationalDatabaseAvailabilityZones,
    riName,
    riDescription,
    riDisplayName,

    -- * RelationalDatabase
    RelationalDatabase (..),
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

    -- * RelationalDatabaseBlueprint
    RelationalDatabaseBlueprint (..),
    relationalDatabaseBlueprint,
    rdbEngineDescription,
    rdbBlueprintId,
    rdbEngineVersionDescription,
    rdbIsEngineDefault,
    rdbEngineVersion,
    rdbEngine,

    -- * RelationalDatabaseBundle
    RelationalDatabaseBundle (..),
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

    -- * RelationalDatabaseEndpoint
    RelationalDatabaseEndpoint (..),
    relationalDatabaseEndpoint,
    rdeAddress,
    rdePort,

    -- * RelationalDatabaseEvent
    RelationalDatabaseEvent (..),
    relationalDatabaseEvent,
    rdeMessage,
    rdeCreatedAt,
    rdeEventCategories,
    rdeResource,

    -- * RelationalDatabaseHardware
    RelationalDatabaseHardware (..),
    relationalDatabaseHardware,
    rdhRamSizeInGb,
    rdhCpuCount,
    rdhDiskSizeInGb,

    -- * RelationalDatabaseParameter
    RelationalDatabaseParameter (..),
    relationalDatabaseParameter,
    rdpAllowedValues,
    rdpParameterValue,
    rdpApplyType,
    rdpParameterName,
    rdpDescription,
    rdpApplyMethod,
    rdpIsModifiable,
    rdpDataType,

    -- * RelationalDatabaseSnapshot
    RelationalDatabaseSnapshot (..),
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

    -- * RenewalSummary
    RenewalSummary (..),
    renewalSummary,
    rsUpdatedAt,
    rsRenewalStatus,
    rsRenewalStatusReason,
    rsDomainValidationRecords,

    -- * ResourceLocation
    ResourceLocation (..),
    resourceLocation,
    rlRegionName,
    rlAvailabilityZone,

    -- * ResourceRecord
    ResourceRecord (..),
    resourceRecord,
    rrName,
    rrValue,
    rrType,

    -- * StaticIP
    StaticIP (..),
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

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.AccessDirection
import Network.AWS.Lightsail.Types.AddOn
import Network.AWS.Lightsail.Types.AddOnRequest
import Network.AWS.Lightsail.Types.AddOnType
import Network.AWS.Lightsail.Types.Alarm
import Network.AWS.Lightsail.Types.AlarmState
import Network.AWS.Lightsail.Types.AttachedDisk
import Network.AWS.Lightsail.Types.AutoSnapshotAddOnRequest
import Network.AWS.Lightsail.Types.AutoSnapshotDetails
import Network.AWS.Lightsail.Types.AutoSnapshotStatus
import Network.AWS.Lightsail.Types.AvailabilityZone
import Network.AWS.Lightsail.Types.BehaviorEnum
import Network.AWS.Lightsail.Types.Blueprint
import Network.AWS.Lightsail.Types.BlueprintType
import Network.AWS.Lightsail.Types.Bundle
import Network.AWS.Lightsail.Types.CacheBehavior
import Network.AWS.Lightsail.Types.CacheBehaviorPerPath
import Network.AWS.Lightsail.Types.CacheSettings
import Network.AWS.Lightsail.Types.Certificate
import Network.AWS.Lightsail.Types.CertificateStatus
import Network.AWS.Lightsail.Types.CertificateSummary
import Network.AWS.Lightsail.Types.CloudFormationStackRecord
import Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceInfo
import Network.AWS.Lightsail.Types.CloudFormationStackRecordSourceType
import Network.AWS.Lightsail.Types.ComparisonOperator
import Network.AWS.Lightsail.Types.ContactMethod
import Network.AWS.Lightsail.Types.ContactMethodStatus
import Network.AWS.Lightsail.Types.ContactMethodVerificationProtocol
import Network.AWS.Lightsail.Types.ContactProtocol
import Network.AWS.Lightsail.Types.Container
import Network.AWS.Lightsail.Types.ContainerImage
import Network.AWS.Lightsail.Types.ContainerService
import Network.AWS.Lightsail.Types.ContainerServiceDeployment
import Network.AWS.Lightsail.Types.ContainerServiceDeploymentRequest
import Network.AWS.Lightsail.Types.ContainerServiceDeploymentState
import Network.AWS.Lightsail.Types.ContainerServiceEndpoint
import Network.AWS.Lightsail.Types.ContainerServiceHealthCheckConfig
import Network.AWS.Lightsail.Types.ContainerServiceLogEvent
import Network.AWS.Lightsail.Types.ContainerServiceMetricName
import Network.AWS.Lightsail.Types.ContainerServicePower
import Network.AWS.Lightsail.Types.ContainerServicePowerName
import Network.AWS.Lightsail.Types.ContainerServiceProtocol
import Network.AWS.Lightsail.Types.ContainerServiceRegistryLogin
import Network.AWS.Lightsail.Types.ContainerServiceState
import Network.AWS.Lightsail.Types.CookieObject
import Network.AWS.Lightsail.Types.DestinationInfo
import Network.AWS.Lightsail.Types.Disk
import Network.AWS.Lightsail.Types.DiskInfo
import Network.AWS.Lightsail.Types.DiskMap
import Network.AWS.Lightsail.Types.DiskSnapshot
import Network.AWS.Lightsail.Types.DiskSnapshotInfo
import Network.AWS.Lightsail.Types.DiskSnapshotState
import Network.AWS.Lightsail.Types.DiskState
import Network.AWS.Lightsail.Types.DistributionBundle
import Network.AWS.Lightsail.Types.DistributionMetricName
import Network.AWS.Lightsail.Types.Domain
import Network.AWS.Lightsail.Types.DomainEntry
import Network.AWS.Lightsail.Types.DomainValidationRecord
import Network.AWS.Lightsail.Types.EndpointRequest
import Network.AWS.Lightsail.Types.ExportSnapshotRecord
import Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceInfo
import Network.AWS.Lightsail.Types.ExportSnapshotRecordSourceType
import Network.AWS.Lightsail.Types.ForwardValues
import Network.AWS.Lightsail.Types.HeaderEnum
import Network.AWS.Lightsail.Types.HeaderObject
import Network.AWS.Lightsail.Types.HostKeyAttributes
import Network.AWS.Lightsail.Types.IPAddressType
import Network.AWS.Lightsail.Types.InputOrigin
import Network.AWS.Lightsail.Types.Instance
import Network.AWS.Lightsail.Types.InstanceAccessDetails
import Network.AWS.Lightsail.Types.InstanceAccessProtocol
import Network.AWS.Lightsail.Types.InstanceEntry
import Network.AWS.Lightsail.Types.InstanceHardware
import Network.AWS.Lightsail.Types.InstanceHealthReason
import Network.AWS.Lightsail.Types.InstanceHealthState
import Network.AWS.Lightsail.Types.InstanceHealthSummary
import Network.AWS.Lightsail.Types.InstanceMetricName
import Network.AWS.Lightsail.Types.InstanceNetworking
import Network.AWS.Lightsail.Types.InstancePlatform
import Network.AWS.Lightsail.Types.InstancePortInfo
import Network.AWS.Lightsail.Types.InstancePortState
import Network.AWS.Lightsail.Types.InstanceSnapshot
import Network.AWS.Lightsail.Types.InstanceSnapshotInfo
import Network.AWS.Lightsail.Types.InstanceSnapshotState
import Network.AWS.Lightsail.Types.InstanceState
import Network.AWS.Lightsail.Types.KeyPair
import Network.AWS.Lightsail.Types.LightsailDistribution
import Network.AWS.Lightsail.Types.LoadBalancer
import Network.AWS.Lightsail.Types.LoadBalancerAttributeName
import Network.AWS.Lightsail.Types.LoadBalancerMetricName
import Network.AWS.Lightsail.Types.LoadBalancerProtocol
import Network.AWS.Lightsail.Types.LoadBalancerState
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificate
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainStatus
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainValidationOption
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainValidationRecord
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateFailureReason
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateRenewalStatus
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateRenewalSummary
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateRevocationReason
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateStatus
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateSummary
import Network.AWS.Lightsail.Types.LogEvent
import Network.AWS.Lightsail.Types.MetricDatapoint
import Network.AWS.Lightsail.Types.MetricName
import Network.AWS.Lightsail.Types.MetricStatistic
import Network.AWS.Lightsail.Types.MetricUnit
import Network.AWS.Lightsail.Types.MonitoredResourceInfo
import Network.AWS.Lightsail.Types.MonthlyTransfer
import Network.AWS.Lightsail.Types.NetworkProtocol
import Network.AWS.Lightsail.Types.Operation
import Network.AWS.Lightsail.Types.OperationStatus
import Network.AWS.Lightsail.Types.OperationType
import Network.AWS.Lightsail.Types.Origin
import Network.AWS.Lightsail.Types.OriginProtocolPolicyEnum
import Network.AWS.Lightsail.Types.PasswordData
import Network.AWS.Lightsail.Types.PendingMaintenanceAction
import Network.AWS.Lightsail.Types.PendingModifiedRelationalDatabaseValues
import Network.AWS.Lightsail.Types.PortAccessType
import Network.AWS.Lightsail.Types.PortInfo
import Network.AWS.Lightsail.Types.PortInfoSourceType
import Network.AWS.Lightsail.Types.PortState
import Network.AWS.Lightsail.Types.QueryStringObject
import Network.AWS.Lightsail.Types.RecordState
import Network.AWS.Lightsail.Types.RegionInfo
import Network.AWS.Lightsail.Types.RegionName
import Network.AWS.Lightsail.Types.RelationalDatabase
import Network.AWS.Lightsail.Types.RelationalDatabaseBlueprint
import Network.AWS.Lightsail.Types.RelationalDatabaseBundle
import Network.AWS.Lightsail.Types.RelationalDatabaseEndpoint
import Network.AWS.Lightsail.Types.RelationalDatabaseEngine
import Network.AWS.Lightsail.Types.RelationalDatabaseEvent
import Network.AWS.Lightsail.Types.RelationalDatabaseHardware
import Network.AWS.Lightsail.Types.RelationalDatabaseMetricName
import Network.AWS.Lightsail.Types.RelationalDatabaseParameter
import Network.AWS.Lightsail.Types.RelationalDatabasePasswordVersion
import Network.AWS.Lightsail.Types.RelationalDatabaseSnapshot
import Network.AWS.Lightsail.Types.RenewalStatus
import Network.AWS.Lightsail.Types.RenewalSummary
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceRecord
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.StaticIP
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Lightsail.Types.TreatMissingData
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-11-28@ of the Amazon Lightsail SDK configuration.
lightsail :: Service
lightsail =
  Service
    { _svcAbbrev = "Lightsail",
      _svcSigner = v4,
      _svcPrefix = "lightsail",
      _svcVersion = "2016-11-28",
      _svcEndpoint = defaultEndpoint lightsail,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Lightsail",
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

-- | Lightsail throws this exception when it cannot find a resource.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError lightsail "NotFoundException"

-- | Lightsail throws this exception when user input does not conform to the validation rules of an input field.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError
    lightsail
    "InvalidInputException"

-- | Lightsail throws this exception when the user has not been authenticated.
_UnauthenticatedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthenticatedException =
  _MatchServiceError
    lightsail
    "UnauthenticatedException"

-- | Lightsail throws this exception when an operation fails to execute.
_OperationFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationFailureException =
  _MatchServiceError
    lightsail
    "OperationFailureException"

-- | Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    lightsail
    "AccessDeniedException"

-- | Lightsail throws this exception when an account is still in the setup in progress state.
_AccountSetupInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_AccountSetupInProgressException =
  _MatchServiceError
    lightsail
    "AccountSetupInProgressException"

-- | A general service exception.
_ServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceException =
  _MatchServiceError lightsail "ServiceException"

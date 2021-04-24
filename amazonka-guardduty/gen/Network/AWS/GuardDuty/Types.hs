{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types
  ( -- * Service Configuration
    guardDuty,

    -- * Errors
    _BadRequestException,
    _InternalServerErrorException,

    -- * AdminStatus
    AdminStatus (..),

    -- * DataSource
    DataSource (..),

    -- * DataSourceStatus
    DataSourceStatus (..),

    -- * DestinationType
    DestinationType (..),

    -- * DetectorStatus
    DetectorStatus (..),

    -- * Feedback
    Feedback (..),

    -- * FilterAction
    FilterAction (..),

    -- * FindingPublishingFrequency
    FindingPublishingFrequency (..),

    -- * FindingStatisticType
    FindingStatisticType (..),

    -- * IPSetFormat
    IPSetFormat (..),

    -- * IPSetStatus
    IPSetStatus (..),

    -- * OrderBy
    OrderBy (..),

    -- * PublishingStatus
    PublishingStatus (..),

    -- * ThreatIntelSetFormat
    ThreatIntelSetFormat (..),

    -- * ThreatIntelSetStatus
    ThreatIntelSetStatus (..),

    -- * UsageStatisticType
    UsageStatisticType (..),

    -- * AWSAPICallAction
    AWSAPICallAction (..),
    awsAPICallAction,
    aacaAPI,
    aacaServiceName,
    aacaDomainDetails,
    aacaRemoteIPDetails,
    aacaCallerType,
    aacaErrorCode,

    -- * AccessControlList
    AccessControlList (..),
    accessControlList,
    aclAllowsPublicReadAccess,
    aclAllowsPublicWriteAccess,

    -- * AccessKeyDetails
    AccessKeyDetails (..),
    accessKeyDetails,
    akdPrincipalId,
    akdUserType,
    akdAccessKeyId,
    akdUserName,

    -- * AccountDetail
    AccountDetail (..),
    accountDetail,
    adAccountId,
    adEmail,

    -- * AccountLevelPermissions
    AccountLevelPermissions (..),
    accountLevelPermissions,
    alpBlockPublicAccess,

    -- * Action
    Action (..),
    action,
    aActionType,
    aDNSRequestAction,
    aNetworkConnectionAction,
    aAWSAPICallAction,
    aPortProbeAction,

    -- * AdminAccount
    AdminAccount (..),
    adminAccount,
    aaAdminAccountId,
    aaAdminStatus,

    -- * BlockPublicAccess
    BlockPublicAccess (..),
    blockPublicAccess,
    bpaIgnorePublicACLs,
    bpaBlockPublicACLs,
    bpaRestrictPublicBuckets,
    bpaBlockPublicPolicy,

    -- * BucketLevelPermissions
    BucketLevelPermissions (..),
    bucketLevelPermissions,
    blpBlockPublicAccess,
    blpBucketPolicy,
    blpAccessControlList,

    -- * BucketPolicy
    BucketPolicy (..),
    bucketPolicy,
    bpAllowsPublicReadAccess,
    bpAllowsPublicWriteAccess,

    -- * City
    City (..),
    city,
    cCityName,

    -- * CloudTrailConfigurationResult
    CloudTrailConfigurationResult (..),
    cloudTrailConfigurationResult,
    ctcrStatus,

    -- * Condition
    Condition (..),
    condition,
    cEQ,
    cGreaterThan,
    cGT,
    cGreaterThanOrEqual,
    cLte,
    cNeq,
    cNotEquals,
    cLessThan,
    cEquals,
    cGte,
    cLessThanOrEqual,
    cLT,

    -- * Country
    Country (..),
    country,
    cCountryName,
    cCountryCode,

    -- * DNSLogsConfigurationResult
    DNSLogsConfigurationResult (..),
    dnsLogsConfigurationResult,
    dlcrStatus,

    -- * DNSRequestAction
    DNSRequestAction (..),
    dnsRequestAction,
    draDomain,

    -- * DataSourceConfigurations
    DataSourceConfigurations (..),
    dataSourceConfigurations,
    dscS3Logs,

    -- * DataSourceConfigurationsResult
    DataSourceConfigurationsResult (..),
    dataSourceConfigurationsResult,
    dscrCloudTrail,
    dscrDNSLogs,
    dscrFlowLogs,
    dscrS3Logs,

    -- * DefaultServerSideEncryption
    DefaultServerSideEncryption (..),
    defaultServerSideEncryption,
    dsseEncryptionType,
    dsseKMSMasterKeyARN,

    -- * Destination
    Destination (..),
    destination,
    desDestinationId,
    desDestinationType,
    desStatus,

    -- * DestinationProperties
    DestinationProperties (..),
    destinationProperties,
    dpDestinationARN,
    dpKMSKeyARN,

    -- * DomainDetails
    DomainDetails (..),
    domainDetails,
    ddDomain,

    -- * Evidence
    Evidence (..),
    evidence,
    eThreatIntelligenceDetails,

    -- * Finding
    Finding (..),
    finding,
    fTitle,
    fService,
    fPartition,
    fConfidence,
    fDescription,
    fAccountId,
    fARN,
    fCreatedAt,
    fId,
    fRegion,
    fResource,
    fSchemaVersion,
    fSeverity,
    fType,
    fUpdatedAt,

    -- * FindingCriteria
    FindingCriteria (..),
    findingCriteria,
    fcCriterion,

    -- * FindingStatistics
    FindingStatistics (..),
    findingStatistics,
    fsCountBySeverity,

    -- * FlowLogsConfigurationResult
    FlowLogsConfigurationResult (..),
    flowLogsConfigurationResult,
    flcrStatus,

    -- * GeoLocation
    GeoLocation (..),
    geoLocation,
    glLat,
    glLon,

    -- * IAMInstanceProfile
    IAMInstanceProfile (..),
    iamInstanceProfile,
    iapARN,
    iapId,

    -- * InstanceDetails
    InstanceDetails (..),
    instanceDetails,
    idPlatform,
    idInstanceId,
    idInstanceType,
    idOutpostARN,
    idLaunchTime,
    idProductCodes,
    idImageId,
    idIAMInstanceProfile,
    idAvailabilityZone,
    idTags,
    idImageDescription,
    idInstanceState,
    idNetworkInterfaces,

    -- * Invitation
    Invitation (..),
    invitation,
    iAccountId,
    iRelationshipStatus,
    iInvitationId,
    iInvitedAt,

    -- * LocalIPDetails
    LocalIPDetails (..),
    localIPDetails,
    lidIPAddressV4,

    -- * LocalPortDetails
    LocalPortDetails (..),
    localPortDetails,
    lpdPortName,
    lpdPort,

    -- * Master
    Master (..),
    master,
    mAccountId,
    mRelationshipStatus,
    mInvitationId,
    mInvitedAt,

    -- * Member
    Member (..),
    member,
    memDetectorId,
    memInvitedAt,
    memAccountId,
    memMasterId,
    memEmail,
    memRelationshipStatus,
    memUpdatedAt,

    -- * MemberDataSourceConfiguration
    MemberDataSourceConfiguration (..),
    memberDataSourceConfiguration,
    mdscAccountId,
    mdscDataSources,

    -- * NetworkConnectionAction
    NetworkConnectionAction (..),
    networkConnectionAction,
    ncaRemotePortDetails,
    ncaLocalPortDetails,
    ncaConnectionDirection,
    ncaBlocked,
    ncaRemoteIPDetails,
    ncaLocalIPDetails,
    ncaProtocol,

    -- * NetworkInterface
    NetworkInterface (..),
    networkInterface,
    niPrivateIPAddresses,
    niIPv6Addresses,
    niSecurityGroups,
    niPublicDNSName,
    niNetworkInterfaceId,
    niSubnetId,
    niPrivateDNSName,
    niPublicIP,
    niVPCId,
    niPrivateIPAddress,

    -- * Organization
    Organization (..),
    organization,
    oASN,
    oIsp,
    oASNOrg,
    oOrg,

    -- * OrganizationDataSourceConfigurations
    OrganizationDataSourceConfigurations (..),
    organizationDataSourceConfigurations,
    odscS3Logs,

    -- * OrganizationDataSourceConfigurationsResult
    OrganizationDataSourceConfigurationsResult (..),
    organizationDataSourceConfigurationsResult,
    odscrS3Logs,

    -- * OrganizationS3LogsConfiguration
    OrganizationS3LogsConfiguration (..),
    organizationS3LogsConfiguration,
    oslcAutoEnable,

    -- * OrganizationS3LogsConfigurationResult
    OrganizationS3LogsConfigurationResult (..),
    organizationS3LogsConfigurationResult,
    oslcrAutoEnable,

    -- * Owner
    Owner (..),
    owner,
    oId,

    -- * PermissionConfiguration
    PermissionConfiguration (..),
    permissionConfiguration,
    pcAccountLevelPermissions,
    pcBucketLevelPermissions,

    -- * PortProbeAction
    PortProbeAction (..),
    portProbeAction,
    ppaPortProbeDetails,
    ppaBlocked,

    -- * PortProbeDetail
    PortProbeDetail (..),
    portProbeDetail,
    ppdLocalPortDetails,
    ppdRemoteIPDetails,
    ppdLocalIPDetails,

    -- * PrivateIPAddressDetails
    PrivateIPAddressDetails (..),
    privateIPAddressDetails,
    piadPrivateDNSName,
    piadPrivateIPAddress,

    -- * ProductCode
    ProductCode (..),
    productCode,
    pcCode,
    pcProductType,

    -- * PublicAccess
    PublicAccess (..),
    publicAccess,
    paPermissionConfiguration,
    paEffectivePermission,

    -- * RemoteIPDetails
    RemoteIPDetails (..),
    remoteIPDetails,
    ridGeoLocation,
    ridCity,
    ridOrganization,
    ridCountry,
    ridIPAddressV4,

    -- * RemotePortDetails
    RemotePortDetails (..),
    remotePortDetails,
    rpdPortName,
    rpdPort,

    -- * Resource
    Resource (..),
    resource,
    rS3BucketDetails,
    rInstanceDetails,
    rResourceType,
    rAccessKeyDetails,

    -- * S3BucketDetail
    S3BucketDetail (..),
    s3BucketDetail,
    sbdARN,
    sbdPublicAccess,
    sbdCreatedAt,
    sbdDefaultServerSideEncryption,
    sbdName,
    sbdTags,
    sbdOwner,
    sbdType,

    -- * S3LogsConfiguration
    S3LogsConfiguration (..),
    s3LogsConfiguration,
    slcEnable,

    -- * S3LogsConfigurationResult
    S3LogsConfigurationResult (..),
    s3LogsConfigurationResult,
    slcrStatus,

    -- * SecurityGroup
    SecurityGroup (..),
    securityGroup,
    sgGroupName,
    sgGroupId,

    -- * ServiceInfo
    ServiceInfo (..),
    serviceInfo,
    siResourceRole,
    siArchived,
    siEventFirstSeen,
    siEventLastSeen,
    siServiceName,
    siDetectorId,
    siAction,
    siEvidence,
    siCount,
    siUserFeedback,

    -- * SortCriteria
    SortCriteria (..),
    sortCriteria,
    scAttributeName,
    scOrderBy,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * ThreatIntelligenceDetail
    ThreatIntelligenceDetail (..),
    threatIntelligenceDetail,
    tidThreatNames,
    tidThreatListName,

    -- * Total
    Total (..),
    total,
    tAmount,
    tUnit,

    -- * UnprocessedAccount
    UnprocessedAccount (..),
    unprocessedAccount,
    uaAccountId,
    uaResult,

    -- * UsageAccountResult
    UsageAccountResult (..),
    usageAccountResult,
    uarAccountId,
    uarTotal,

    -- * UsageCriteria
    UsageCriteria (..),
    usageCriteria,
    ucAccountIds,
    ucResources,
    ucDataSources,

    -- * UsageDataSourceResult
    UsageDataSourceResult (..),
    usageDataSourceResult,
    udsrDataSource,
    udsrTotal,

    -- * UsageResourceResult
    UsageResourceResult (..),
    usageResourceResult,
    urrTotal,
    urrResource,

    -- * UsageStatistics
    UsageStatistics (..),
    usageStatistics,
    usSumByDataSource,
    usTopResources,
    usSumByAccount,
    usSumByResource,
  )
where

import Network.AWS.GuardDuty.Types.AWSAPICallAction
import Network.AWS.GuardDuty.Types.AccessControlList
import Network.AWS.GuardDuty.Types.AccessKeyDetails
import Network.AWS.GuardDuty.Types.AccountDetail
import Network.AWS.GuardDuty.Types.AccountLevelPermissions
import Network.AWS.GuardDuty.Types.Action
import Network.AWS.GuardDuty.Types.AdminAccount
import Network.AWS.GuardDuty.Types.AdminStatus
import Network.AWS.GuardDuty.Types.BlockPublicAccess
import Network.AWS.GuardDuty.Types.BucketLevelPermissions
import Network.AWS.GuardDuty.Types.BucketPolicy
import Network.AWS.GuardDuty.Types.City
import Network.AWS.GuardDuty.Types.CloudTrailConfigurationResult
import Network.AWS.GuardDuty.Types.Condition
import Network.AWS.GuardDuty.Types.Country
import Network.AWS.GuardDuty.Types.DNSLogsConfigurationResult
import Network.AWS.GuardDuty.Types.DNSRequestAction
import Network.AWS.GuardDuty.Types.DataSource
import Network.AWS.GuardDuty.Types.DataSourceConfigurations
import Network.AWS.GuardDuty.Types.DataSourceConfigurationsResult
import Network.AWS.GuardDuty.Types.DataSourceStatus
import Network.AWS.GuardDuty.Types.DefaultServerSideEncryption
import Network.AWS.GuardDuty.Types.Destination
import Network.AWS.GuardDuty.Types.DestinationProperties
import Network.AWS.GuardDuty.Types.DestinationType
import Network.AWS.GuardDuty.Types.DetectorStatus
import Network.AWS.GuardDuty.Types.DomainDetails
import Network.AWS.GuardDuty.Types.Evidence
import Network.AWS.GuardDuty.Types.Feedback
import Network.AWS.GuardDuty.Types.FilterAction
import Network.AWS.GuardDuty.Types.Finding
import Network.AWS.GuardDuty.Types.FindingCriteria
import Network.AWS.GuardDuty.Types.FindingPublishingFrequency
import Network.AWS.GuardDuty.Types.FindingStatisticType
import Network.AWS.GuardDuty.Types.FindingStatistics
import Network.AWS.GuardDuty.Types.FlowLogsConfigurationResult
import Network.AWS.GuardDuty.Types.GeoLocation
import Network.AWS.GuardDuty.Types.IAMInstanceProfile
import Network.AWS.GuardDuty.Types.IPSetFormat
import Network.AWS.GuardDuty.Types.IPSetStatus
import Network.AWS.GuardDuty.Types.InstanceDetails
import Network.AWS.GuardDuty.Types.Invitation
import Network.AWS.GuardDuty.Types.LocalIPDetails
import Network.AWS.GuardDuty.Types.LocalPortDetails
import Network.AWS.GuardDuty.Types.Master
import Network.AWS.GuardDuty.Types.Member
import Network.AWS.GuardDuty.Types.MemberDataSourceConfiguration
import Network.AWS.GuardDuty.Types.NetworkConnectionAction
import Network.AWS.GuardDuty.Types.NetworkInterface
import Network.AWS.GuardDuty.Types.OrderBy
import Network.AWS.GuardDuty.Types.Organization
import Network.AWS.GuardDuty.Types.OrganizationDataSourceConfigurations
import Network.AWS.GuardDuty.Types.OrganizationDataSourceConfigurationsResult
import Network.AWS.GuardDuty.Types.OrganizationS3LogsConfiguration
import Network.AWS.GuardDuty.Types.OrganizationS3LogsConfigurationResult
import Network.AWS.GuardDuty.Types.Owner
import Network.AWS.GuardDuty.Types.PermissionConfiguration
import Network.AWS.GuardDuty.Types.PortProbeAction
import Network.AWS.GuardDuty.Types.PortProbeDetail
import Network.AWS.GuardDuty.Types.PrivateIPAddressDetails
import Network.AWS.GuardDuty.Types.ProductCode
import Network.AWS.GuardDuty.Types.PublicAccess
import Network.AWS.GuardDuty.Types.PublishingStatus
import Network.AWS.GuardDuty.Types.RemoteIPDetails
import Network.AWS.GuardDuty.Types.RemotePortDetails
import Network.AWS.GuardDuty.Types.Resource
import Network.AWS.GuardDuty.Types.S3BucketDetail
import Network.AWS.GuardDuty.Types.S3LogsConfiguration
import Network.AWS.GuardDuty.Types.S3LogsConfigurationResult
import Network.AWS.GuardDuty.Types.SecurityGroup
import Network.AWS.GuardDuty.Types.ServiceInfo
import Network.AWS.GuardDuty.Types.SortCriteria
import Network.AWS.GuardDuty.Types.Tag
import Network.AWS.GuardDuty.Types.ThreatIntelSetFormat
import Network.AWS.GuardDuty.Types.ThreatIntelSetStatus
import Network.AWS.GuardDuty.Types.ThreatIntelligenceDetail
import Network.AWS.GuardDuty.Types.Total
import Network.AWS.GuardDuty.Types.UnprocessedAccount
import Network.AWS.GuardDuty.Types.UsageAccountResult
import Network.AWS.GuardDuty.Types.UsageCriteria
import Network.AWS.GuardDuty.Types.UsageDataSourceResult
import Network.AWS.GuardDuty.Types.UsageResourceResult
import Network.AWS.GuardDuty.Types.UsageStatisticType
import Network.AWS.GuardDuty.Types.UsageStatistics
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-11-28@ of the Amazon GuardDuty SDK configuration.
guardDuty :: Service
guardDuty =
  Service
    { _svcAbbrev = "GuardDuty",
      _svcSigner = v4,
      _svcPrefix = "guardduty",
      _svcVersion = "2017-11-28",
      _svcEndpoint = defaultEndpoint guardDuty,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "GuardDuty",
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

-- | A bad request exception object.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError guardDuty "BadRequestException"
    . hasStatus 400

-- | An internal server error exception object.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    guardDuty
    "InternalServerErrorException"
    . hasStatus 500

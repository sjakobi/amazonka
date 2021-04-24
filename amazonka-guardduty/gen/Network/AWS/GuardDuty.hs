{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon GuardDuty is a continuous security monitoring service that analyzes and processes the following data sources: VPC Flow Logs, AWS CloudTrail event logs, and DNS logs. It uses threat intelligence feeds (such as lists of malicious IPs and domains) and machine learning to identify unexpected, potentially unauthorized, and malicious activity within your AWS environment. This can include issues like escalations of privileges, uses of exposed credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2 instances that serve malware or mine bitcoin.
--
--
-- GuardDuty also monitors AWS account access behavior for signs of compromise. Some examples of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region that has never been used, or unusual API calls like a password policy change to reduce password strength.
--
-- GuardDuty informs you of the status of your AWS environment by producing security findings that you can view in the GuardDuty console or through Amazon CloudWatch events. For more information, see the /<https:\/\/docs.aws.amazon.com\/guardduty\/latest\/ug\/what-is-guardduty.html Amazon GuardDuty User Guide> / .
module Network.AWS.GuardDuty
  ( -- * Service Configuration
    guardDuty,

    -- * Errors
    -- $errors

    -- ** BadRequestException
    _BadRequestException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateMembers
    module Network.AWS.GuardDuty.CreateMembers,

    -- ** UpdateThreatIntelSet
    module Network.AWS.GuardDuty.UpdateThreatIntelSet,

    -- ** DeleteThreatIntelSet
    module Network.AWS.GuardDuty.DeleteThreatIntelSet,

    -- ** GetInvitationsCount
    module Network.AWS.GuardDuty.GetInvitationsCount,

    -- ** UnarchiveFindings
    module Network.AWS.GuardDuty.UnarchiveFindings,

    -- ** EnableOrganizationAdminAccount
    module Network.AWS.GuardDuty.EnableOrganizationAdminAccount,

    -- ** DeletePublishingDestination
    module Network.AWS.GuardDuty.DeletePublishingDestination,

    -- ** UpdatePublishingDestination
    module Network.AWS.GuardDuty.UpdatePublishingDestination,

    -- ** ArchiveFindings
    module Network.AWS.GuardDuty.ArchiveFindings,

    -- ** CreateFilter
    module Network.AWS.GuardDuty.CreateFilter,

    -- ** GetDetector
    module Network.AWS.GuardDuty.GetDetector,

    -- ** ListFindings (Paginated)
    module Network.AWS.GuardDuty.ListFindings,

    -- ** UpdateFilter
    module Network.AWS.GuardDuty.UpdateFilter,

    -- ** DeleteFilter
    module Network.AWS.GuardDuty.DeleteFilter,

    -- ** DisableOrganizationAdminAccount
    module Network.AWS.GuardDuty.DisableOrganizationAdminAccount,

    -- ** AcceptInvitation
    module Network.AWS.GuardDuty.AcceptInvitation,

    -- ** UpdateFindingsFeedback
    module Network.AWS.GuardDuty.UpdateFindingsFeedback,

    -- ** DescribeOrganizationConfiguration
    module Network.AWS.GuardDuty.DescribeOrganizationConfiguration,

    -- ** GetMasterAccount
    module Network.AWS.GuardDuty.GetMasterAccount,

    -- ** UntagResource
    module Network.AWS.GuardDuty.UntagResource,

    -- ** ListDetectors (Paginated)
    module Network.AWS.GuardDuty.ListDetectors,

    -- ** DescribePublishingDestination
    module Network.AWS.GuardDuty.DescribePublishingDestination,

    -- ** GetFindings
    module Network.AWS.GuardDuty.GetFindings,

    -- ** TagResource
    module Network.AWS.GuardDuty.TagResource,

    -- ** GetFindingsStatistics
    module Network.AWS.GuardDuty.GetFindingsStatistics,

    -- ** GetMembers
    module Network.AWS.GuardDuty.GetMembers,

    -- ** DeleteIPSet
    module Network.AWS.GuardDuty.DeleteIPSet,

    -- ** UpdateIPSet
    module Network.AWS.GuardDuty.UpdateIPSet,

    -- ** CreateThreatIntelSet
    module Network.AWS.GuardDuty.CreateThreatIntelSet,

    -- ** UpdateOrganizationConfiguration
    module Network.AWS.GuardDuty.UpdateOrganizationConfiguration,

    -- ** InviteMembers
    module Network.AWS.GuardDuty.InviteMembers,

    -- ** StopMonitoringMembers
    module Network.AWS.GuardDuty.StopMonitoringMembers,

    -- ** ListThreatIntelSets (Paginated)
    module Network.AWS.GuardDuty.ListThreatIntelSets,

    -- ** GetMemberDetectors
    module Network.AWS.GuardDuty.GetMemberDetectors,

    -- ** StartMonitoringMembers
    module Network.AWS.GuardDuty.StartMonitoringMembers,

    -- ** CreateIPSet
    module Network.AWS.GuardDuty.CreateIPSet,

    -- ** ListOrganizationAdminAccounts (Paginated)
    module Network.AWS.GuardDuty.ListOrganizationAdminAccounts,

    -- ** ListPublishingDestinations
    module Network.AWS.GuardDuty.ListPublishingDestinations,

    -- ** CreateSampleFindings
    module Network.AWS.GuardDuty.CreateSampleFindings,

    -- ** DisassociateMembers
    module Network.AWS.GuardDuty.DisassociateMembers,

    -- ** CreatePublishingDestination
    module Network.AWS.GuardDuty.CreatePublishingDestination,

    -- ** ListFilters (Paginated)
    module Network.AWS.GuardDuty.ListFilters,

    -- ** DisassociateFromMasterAccount
    module Network.AWS.GuardDuty.DisassociateFromMasterAccount,

    -- ** ListMembers (Paginated)
    module Network.AWS.GuardDuty.ListMembers,

    -- ** DeclineInvitations
    module Network.AWS.GuardDuty.DeclineInvitations,

    -- ** CreateDetector
    module Network.AWS.GuardDuty.CreateDetector,

    -- ** GetUsageStatistics
    module Network.AWS.GuardDuty.GetUsageStatistics,

    -- ** GetFilter
    module Network.AWS.GuardDuty.GetFilter,

    -- ** DeleteInvitations
    module Network.AWS.GuardDuty.DeleteInvitations,

    -- ** UpdateDetector
    module Network.AWS.GuardDuty.UpdateDetector,

    -- ** DeleteDetector
    module Network.AWS.GuardDuty.DeleteDetector,

    -- ** ListInvitations (Paginated)
    module Network.AWS.GuardDuty.ListInvitations,

    -- ** GetThreatIntelSet
    module Network.AWS.GuardDuty.GetThreatIntelSet,

    -- ** UpdateMemberDetectors
    module Network.AWS.GuardDuty.UpdateMemberDetectors,

    -- ** GetIPSet
    module Network.AWS.GuardDuty.GetIPSet,

    -- ** ListTagsForResource
    module Network.AWS.GuardDuty.ListTagsForResource,

    -- ** DeleteMembers
    module Network.AWS.GuardDuty.DeleteMembers,

    -- ** ListIPSets (Paginated)
    module Network.AWS.GuardDuty.ListIPSets,

    -- * Types

    -- ** AdminStatus
    AdminStatus (..),

    -- ** DataSource
    DataSource (..),

    -- ** DataSourceStatus
    DataSourceStatus (..),

    -- ** DestinationType
    DestinationType (..),

    -- ** DetectorStatus
    DetectorStatus (..),

    -- ** Feedback
    Feedback (..),

    -- ** FilterAction
    FilterAction (..),

    -- ** FindingPublishingFrequency
    FindingPublishingFrequency (..),

    -- ** FindingStatisticType
    FindingStatisticType (..),

    -- ** IPSetFormat
    IPSetFormat (..),

    -- ** IPSetStatus
    IPSetStatus (..),

    -- ** OrderBy
    OrderBy (..),

    -- ** PublishingStatus
    PublishingStatus (..),

    -- ** ThreatIntelSetFormat
    ThreatIntelSetFormat (..),

    -- ** ThreatIntelSetStatus
    ThreatIntelSetStatus (..),

    -- ** UsageStatisticType
    UsageStatisticType (..),

    -- ** AWSAPICallAction
    AWSAPICallAction,
    awsAPICallAction,
    aacaAPI,
    aacaServiceName,
    aacaDomainDetails,
    aacaRemoteIPDetails,
    aacaCallerType,
    aacaErrorCode,

    -- ** AccessControlList
    AccessControlList,
    accessControlList,
    aclAllowsPublicReadAccess,
    aclAllowsPublicWriteAccess,

    -- ** AccessKeyDetails
    AccessKeyDetails,
    accessKeyDetails,
    akdPrincipalId,
    akdUserType,
    akdAccessKeyId,
    akdUserName,

    -- ** AccountDetail
    AccountDetail,
    accountDetail,
    adAccountId,
    adEmail,

    -- ** AccountLevelPermissions
    AccountLevelPermissions,
    accountLevelPermissions,
    alpBlockPublicAccess,

    -- ** Action
    Action,
    action,
    aActionType,
    aDNSRequestAction,
    aNetworkConnectionAction,
    aAWSAPICallAction,
    aPortProbeAction,

    -- ** AdminAccount
    AdminAccount,
    adminAccount,
    aaAdminAccountId,
    aaAdminStatus,

    -- ** BlockPublicAccess
    BlockPublicAccess,
    blockPublicAccess,
    bpaIgnorePublicACLs,
    bpaBlockPublicACLs,
    bpaRestrictPublicBuckets,
    bpaBlockPublicPolicy,

    -- ** BucketLevelPermissions
    BucketLevelPermissions,
    bucketLevelPermissions,
    blpBlockPublicAccess,
    blpBucketPolicy,
    blpAccessControlList,

    -- ** BucketPolicy
    BucketPolicy,
    bucketPolicy,
    bpAllowsPublicReadAccess,
    bpAllowsPublicWriteAccess,

    -- ** City
    City,
    city,
    cCityName,

    -- ** CloudTrailConfigurationResult
    CloudTrailConfigurationResult,
    cloudTrailConfigurationResult,
    ctcrStatus,

    -- ** Condition
    Condition,
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

    -- ** Country
    Country,
    country,
    cCountryName,
    cCountryCode,

    -- ** DNSLogsConfigurationResult
    DNSLogsConfigurationResult,
    dnsLogsConfigurationResult,
    dlcrStatus,

    -- ** DNSRequestAction
    DNSRequestAction,
    dnsRequestAction,
    draDomain,

    -- ** DataSourceConfigurations
    DataSourceConfigurations,
    dataSourceConfigurations,
    dscS3Logs,

    -- ** DataSourceConfigurationsResult
    DataSourceConfigurationsResult,
    dataSourceConfigurationsResult,
    dscrCloudTrail,
    dscrDNSLogs,
    dscrFlowLogs,
    dscrS3Logs,

    -- ** DefaultServerSideEncryption
    DefaultServerSideEncryption,
    defaultServerSideEncryption,
    dsseEncryptionType,
    dsseKMSMasterKeyARN,

    -- ** Destination
    Destination,
    destination,
    desDestinationId,
    desDestinationType,
    desStatus,

    -- ** DestinationProperties
    DestinationProperties,
    destinationProperties,
    dpDestinationARN,
    dpKMSKeyARN,

    -- ** DomainDetails
    DomainDetails,
    domainDetails,
    ddDomain,

    -- ** Evidence
    Evidence,
    evidence,
    eThreatIntelligenceDetails,

    -- ** Finding
    Finding,
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

    -- ** FindingCriteria
    FindingCriteria,
    findingCriteria,
    fcCriterion,

    -- ** FindingStatistics
    FindingStatistics,
    findingStatistics,
    fsCountBySeverity,

    -- ** FlowLogsConfigurationResult
    FlowLogsConfigurationResult,
    flowLogsConfigurationResult,
    flcrStatus,

    -- ** GeoLocation
    GeoLocation,
    geoLocation,
    glLat,
    glLon,

    -- ** IAMInstanceProfile
    IAMInstanceProfile,
    iamInstanceProfile,
    iapARN,
    iapId,

    -- ** InstanceDetails
    InstanceDetails,
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

    -- ** Invitation
    Invitation,
    invitation,
    iAccountId,
    iRelationshipStatus,
    iInvitationId,
    iInvitedAt,

    -- ** LocalIPDetails
    LocalIPDetails,
    localIPDetails,
    lidIPAddressV4,

    -- ** LocalPortDetails
    LocalPortDetails,
    localPortDetails,
    lpdPortName,
    lpdPort,

    -- ** Master
    Master,
    master,
    mAccountId,
    mRelationshipStatus,
    mInvitationId,
    mInvitedAt,

    -- ** Member
    Member,
    member,
    memDetectorId,
    memInvitedAt,
    memAccountId,
    memMasterId,
    memEmail,
    memRelationshipStatus,
    memUpdatedAt,

    -- ** MemberDataSourceConfiguration
    MemberDataSourceConfiguration,
    memberDataSourceConfiguration,
    mdscAccountId,
    mdscDataSources,

    -- ** NetworkConnectionAction
    NetworkConnectionAction,
    networkConnectionAction,
    ncaRemotePortDetails,
    ncaLocalPortDetails,
    ncaConnectionDirection,
    ncaBlocked,
    ncaRemoteIPDetails,
    ncaLocalIPDetails,
    ncaProtocol,

    -- ** NetworkInterface
    NetworkInterface,
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

    -- ** Organization
    Organization,
    organization,
    oASN,
    oIsp,
    oASNOrg,
    oOrg,

    -- ** OrganizationDataSourceConfigurations
    OrganizationDataSourceConfigurations,
    organizationDataSourceConfigurations,
    odscS3Logs,

    -- ** OrganizationDataSourceConfigurationsResult
    OrganizationDataSourceConfigurationsResult,
    organizationDataSourceConfigurationsResult,
    odscrS3Logs,

    -- ** OrganizationS3LogsConfiguration
    OrganizationS3LogsConfiguration,
    organizationS3LogsConfiguration,
    oslcAutoEnable,

    -- ** OrganizationS3LogsConfigurationResult
    OrganizationS3LogsConfigurationResult,
    organizationS3LogsConfigurationResult,
    oslcrAutoEnable,

    -- ** Owner
    Owner,
    owner,
    oId,

    -- ** PermissionConfiguration
    PermissionConfiguration,
    permissionConfiguration,
    pcAccountLevelPermissions,
    pcBucketLevelPermissions,

    -- ** PortProbeAction
    PortProbeAction,
    portProbeAction,
    ppaPortProbeDetails,
    ppaBlocked,

    -- ** PortProbeDetail
    PortProbeDetail,
    portProbeDetail,
    ppdLocalPortDetails,
    ppdRemoteIPDetails,
    ppdLocalIPDetails,

    -- ** PrivateIPAddressDetails
    PrivateIPAddressDetails,
    privateIPAddressDetails,
    piadPrivateDNSName,
    piadPrivateIPAddress,

    -- ** ProductCode
    ProductCode,
    productCode,
    pcCode,
    pcProductType,

    -- ** PublicAccess
    PublicAccess,
    publicAccess,
    paPermissionConfiguration,
    paEffectivePermission,

    -- ** RemoteIPDetails
    RemoteIPDetails,
    remoteIPDetails,
    ridGeoLocation,
    ridCity,
    ridOrganization,
    ridCountry,
    ridIPAddressV4,

    -- ** RemotePortDetails
    RemotePortDetails,
    remotePortDetails,
    rpdPortName,
    rpdPort,

    -- ** Resource
    Resource,
    resource,
    rS3BucketDetails,
    rInstanceDetails,
    rResourceType,
    rAccessKeyDetails,

    -- ** S3BucketDetail
    S3BucketDetail,
    s3BucketDetail,
    sbdARN,
    sbdPublicAccess,
    sbdCreatedAt,
    sbdDefaultServerSideEncryption,
    sbdName,
    sbdTags,
    sbdOwner,
    sbdType,

    -- ** S3LogsConfiguration
    S3LogsConfiguration,
    s3LogsConfiguration,
    slcEnable,

    -- ** S3LogsConfigurationResult
    S3LogsConfigurationResult,
    s3LogsConfigurationResult,
    slcrStatus,

    -- ** SecurityGroup
    SecurityGroup,
    securityGroup,
    sgGroupName,
    sgGroupId,

    -- ** ServiceInfo
    ServiceInfo,
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

    -- ** SortCriteria
    SortCriteria,
    sortCriteria,
    scAttributeName,
    scOrderBy,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** ThreatIntelligenceDetail
    ThreatIntelligenceDetail,
    threatIntelligenceDetail,
    tidThreatNames,
    tidThreatListName,

    -- ** Total
    Total,
    total,
    tAmount,
    tUnit,

    -- ** UnprocessedAccount
    UnprocessedAccount,
    unprocessedAccount,
    uaAccountId,
    uaResult,

    -- ** UsageAccountResult
    UsageAccountResult,
    usageAccountResult,
    uarAccountId,
    uarTotal,

    -- ** UsageCriteria
    UsageCriteria,
    usageCriteria,
    ucAccountIds,
    ucResources,
    ucDataSources,

    -- ** UsageDataSourceResult
    UsageDataSourceResult,
    usageDataSourceResult,
    udsrDataSource,
    udsrTotal,

    -- ** UsageResourceResult
    UsageResourceResult,
    usageResourceResult,
    urrTotal,
    urrResource,

    -- ** UsageStatistics
    UsageStatistics,
    usageStatistics,
    usSumByDataSource,
    usTopResources,
    usSumByAccount,
    usSumByResource,
  )
where

import Network.AWS.GuardDuty.AcceptInvitation
import Network.AWS.GuardDuty.ArchiveFindings
import Network.AWS.GuardDuty.CreateDetector
import Network.AWS.GuardDuty.CreateFilter
import Network.AWS.GuardDuty.CreateIPSet
import Network.AWS.GuardDuty.CreateMembers
import Network.AWS.GuardDuty.CreatePublishingDestination
import Network.AWS.GuardDuty.CreateSampleFindings
import Network.AWS.GuardDuty.CreateThreatIntelSet
import Network.AWS.GuardDuty.DeclineInvitations
import Network.AWS.GuardDuty.DeleteDetector
import Network.AWS.GuardDuty.DeleteFilter
import Network.AWS.GuardDuty.DeleteIPSet
import Network.AWS.GuardDuty.DeleteInvitations
import Network.AWS.GuardDuty.DeleteMembers
import Network.AWS.GuardDuty.DeletePublishingDestination
import Network.AWS.GuardDuty.DeleteThreatIntelSet
import Network.AWS.GuardDuty.DescribeOrganizationConfiguration
import Network.AWS.GuardDuty.DescribePublishingDestination
import Network.AWS.GuardDuty.DisableOrganizationAdminAccount
import Network.AWS.GuardDuty.DisassociateFromMasterAccount
import Network.AWS.GuardDuty.DisassociateMembers
import Network.AWS.GuardDuty.EnableOrganizationAdminAccount
import Network.AWS.GuardDuty.GetDetector
import Network.AWS.GuardDuty.GetFilter
import Network.AWS.GuardDuty.GetFindings
import Network.AWS.GuardDuty.GetFindingsStatistics
import Network.AWS.GuardDuty.GetIPSet
import Network.AWS.GuardDuty.GetInvitationsCount
import Network.AWS.GuardDuty.GetMasterAccount
import Network.AWS.GuardDuty.GetMemberDetectors
import Network.AWS.GuardDuty.GetMembers
import Network.AWS.GuardDuty.GetThreatIntelSet
import Network.AWS.GuardDuty.GetUsageStatistics
import Network.AWS.GuardDuty.InviteMembers
import Network.AWS.GuardDuty.ListDetectors
import Network.AWS.GuardDuty.ListFilters
import Network.AWS.GuardDuty.ListFindings
import Network.AWS.GuardDuty.ListIPSets
import Network.AWS.GuardDuty.ListInvitations
import Network.AWS.GuardDuty.ListMembers
import Network.AWS.GuardDuty.ListOrganizationAdminAccounts
import Network.AWS.GuardDuty.ListPublishingDestinations
import Network.AWS.GuardDuty.ListTagsForResource
import Network.AWS.GuardDuty.ListThreatIntelSets
import Network.AWS.GuardDuty.StartMonitoringMembers
import Network.AWS.GuardDuty.StopMonitoringMembers
import Network.AWS.GuardDuty.TagResource
import Network.AWS.GuardDuty.Types
import Network.AWS.GuardDuty.UnarchiveFindings
import Network.AWS.GuardDuty.UntagResource
import Network.AWS.GuardDuty.UpdateDetector
import Network.AWS.GuardDuty.UpdateFilter
import Network.AWS.GuardDuty.UpdateFindingsFeedback
import Network.AWS.GuardDuty.UpdateIPSet
import Network.AWS.GuardDuty.UpdateMemberDetectors
import Network.AWS.GuardDuty.UpdateOrganizationConfiguration
import Network.AWS.GuardDuty.UpdatePublishingDestination
import Network.AWS.GuardDuty.UpdateThreatIntelSet
import Network.AWS.GuardDuty.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'GuardDuty'.

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

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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

    -- * IpSetFormat
    IpSetFormat (..),

    -- * IpSetStatus
    IpSetStatus (..),

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

    -- * AccessControlList
    AccessControlList (..),
    newAccessControlList,

    -- * AccessKeyDetails
    AccessKeyDetails (..),
    newAccessKeyDetails,

    -- * AccountDetail
    AccountDetail (..),
    newAccountDetail,

    -- * AccountLevelPermissions
    AccountLevelPermissions (..),
    newAccountLevelPermissions,

    -- * Action
    Action (..),
    newAction,

    -- * AdminAccount
    AdminAccount (..),
    newAdminAccount,

    -- * AwsApiCallAction
    AwsApiCallAction (..),
    newAwsApiCallAction,

    -- * BlockPublicAccess
    BlockPublicAccess (..),
    newBlockPublicAccess,

    -- * BucketLevelPermissions
    BucketLevelPermissions (..),
    newBucketLevelPermissions,

    -- * BucketPolicy
    BucketPolicy (..),
    newBucketPolicy,

    -- * City
    City (..),
    newCity,

    -- * CloudTrailConfigurationResult
    CloudTrailConfigurationResult (..),
    newCloudTrailConfigurationResult,

    -- * Condition
    Condition (..),
    newCondition,

    -- * Country
    Country (..),
    newCountry,

    -- * DNSLogsConfigurationResult
    DNSLogsConfigurationResult (..),
    newDNSLogsConfigurationResult,

    -- * DataSourceConfigurations
    DataSourceConfigurations (..),
    newDataSourceConfigurations,

    -- * DataSourceConfigurationsResult
    DataSourceConfigurationsResult (..),
    newDataSourceConfigurationsResult,

    -- * DefaultServerSideEncryption
    DefaultServerSideEncryption (..),
    newDefaultServerSideEncryption,

    -- * Destination
    Destination (..),
    newDestination,

    -- * DestinationProperties
    DestinationProperties (..),
    newDestinationProperties,

    -- * DnsRequestAction
    DnsRequestAction (..),
    newDnsRequestAction,

    -- * DomainDetails
    DomainDetails (..),
    newDomainDetails,

    -- * Evidence
    Evidence (..),
    newEvidence,

    -- * Finding
    Finding (..),
    newFinding,

    -- * FindingCriteria
    FindingCriteria (..),
    newFindingCriteria,

    -- * FindingStatistics
    FindingStatistics (..),
    newFindingStatistics,

    -- * FlowLogsConfigurationResult
    FlowLogsConfigurationResult (..),
    newFlowLogsConfigurationResult,

    -- * GeoLocation
    GeoLocation (..),
    newGeoLocation,

    -- * IamInstanceProfile
    IamInstanceProfile (..),
    newIamInstanceProfile,

    -- * InstanceDetails
    InstanceDetails (..),
    newInstanceDetails,

    -- * Invitation
    Invitation (..),
    newInvitation,

    -- * LocalIpDetails
    LocalIpDetails (..),
    newLocalIpDetails,

    -- * LocalPortDetails
    LocalPortDetails (..),
    newLocalPortDetails,

    -- * Master
    Master (..),
    newMaster,

    -- * Member
    Member (..),
    newMember,

    -- * MemberDataSourceConfiguration
    MemberDataSourceConfiguration (..),
    newMemberDataSourceConfiguration,

    -- * NetworkConnectionAction
    NetworkConnectionAction (..),
    newNetworkConnectionAction,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * Organization
    Organization (..),
    newOrganization,

    -- * OrganizationDataSourceConfigurations
    OrganizationDataSourceConfigurations (..),
    newOrganizationDataSourceConfigurations,

    -- * OrganizationDataSourceConfigurationsResult
    OrganizationDataSourceConfigurationsResult (..),
    newOrganizationDataSourceConfigurationsResult,

    -- * OrganizationS3LogsConfiguration
    OrganizationS3LogsConfiguration (..),
    newOrganizationS3LogsConfiguration,

    -- * OrganizationS3LogsConfigurationResult
    OrganizationS3LogsConfigurationResult (..),
    newOrganizationS3LogsConfigurationResult,

    -- * Owner
    Owner (..),
    newOwner,

    -- * PermissionConfiguration
    PermissionConfiguration (..),
    newPermissionConfiguration,

    -- * PortProbeAction
    PortProbeAction (..),
    newPortProbeAction,

    -- * PortProbeDetail
    PortProbeDetail (..),
    newPortProbeDetail,

    -- * PrivateIpAddressDetails
    PrivateIpAddressDetails (..),
    newPrivateIpAddressDetails,

    -- * ProductCode
    ProductCode (..),
    newProductCode,

    -- * PublicAccess
    PublicAccess (..),
    newPublicAccess,

    -- * RemoteIpDetails
    RemoteIpDetails (..),
    newRemoteIpDetails,

    -- * RemotePortDetails
    RemotePortDetails (..),
    newRemotePortDetails,

    -- * Resource
    Resource (..),
    newResource,

    -- * S3BucketDetail
    S3BucketDetail (..),
    newS3BucketDetail,

    -- * S3LogsConfiguration
    S3LogsConfiguration (..),
    newS3LogsConfiguration,

    -- * S3LogsConfigurationResult
    S3LogsConfigurationResult (..),
    newS3LogsConfigurationResult,

    -- * SecurityGroup
    SecurityGroup (..),
    newSecurityGroup,

    -- * ServiceInfo
    ServiceInfo (..),
    newServiceInfo,

    -- * SortCriteria
    SortCriteria (..),
    newSortCriteria,

    -- * Tag
    Tag (..),
    newTag,

    -- * ThreatIntelligenceDetail
    ThreatIntelligenceDetail (..),
    newThreatIntelligenceDetail,

    -- * Total
    Total (..),
    newTotal,

    -- * UnprocessedAccount
    UnprocessedAccount (..),
    newUnprocessedAccount,

    -- * UsageAccountResult
    UsageAccountResult (..),
    newUsageAccountResult,

    -- * UsageCriteria
    UsageCriteria (..),
    newUsageCriteria,

    -- * UsageDataSourceResult
    UsageDataSourceResult (..),
    newUsageDataSourceResult,

    -- * UsageResourceResult
    UsageResourceResult (..),
    newUsageResourceResult,

    -- * UsageStatistics
    UsageStatistics (..),
    newUsageStatistics,
  )
where

import Network.AWS.GuardDuty.Types.AccessControlList
import Network.AWS.GuardDuty.Types.AccessKeyDetails
import Network.AWS.GuardDuty.Types.AccountDetail
import Network.AWS.GuardDuty.Types.AccountLevelPermissions
import Network.AWS.GuardDuty.Types.Action
import Network.AWS.GuardDuty.Types.AdminAccount
import Network.AWS.GuardDuty.Types.AdminStatus
import Network.AWS.GuardDuty.Types.AwsApiCallAction
import Network.AWS.GuardDuty.Types.BlockPublicAccess
import Network.AWS.GuardDuty.Types.BucketLevelPermissions
import Network.AWS.GuardDuty.Types.BucketPolicy
import Network.AWS.GuardDuty.Types.City
import Network.AWS.GuardDuty.Types.CloudTrailConfigurationResult
import Network.AWS.GuardDuty.Types.Condition
import Network.AWS.GuardDuty.Types.Country
import Network.AWS.GuardDuty.Types.DNSLogsConfigurationResult
import Network.AWS.GuardDuty.Types.DataSource
import Network.AWS.GuardDuty.Types.DataSourceConfigurations
import Network.AWS.GuardDuty.Types.DataSourceConfigurationsResult
import Network.AWS.GuardDuty.Types.DataSourceStatus
import Network.AWS.GuardDuty.Types.DefaultServerSideEncryption
import Network.AWS.GuardDuty.Types.Destination
import Network.AWS.GuardDuty.Types.DestinationProperties
import Network.AWS.GuardDuty.Types.DestinationType
import Network.AWS.GuardDuty.Types.DetectorStatus
import Network.AWS.GuardDuty.Types.DnsRequestAction
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
import Network.AWS.GuardDuty.Types.IamInstanceProfile
import Network.AWS.GuardDuty.Types.InstanceDetails
import Network.AWS.GuardDuty.Types.Invitation
import Network.AWS.GuardDuty.Types.IpSetFormat
import Network.AWS.GuardDuty.Types.IpSetStatus
import Network.AWS.GuardDuty.Types.LocalIpDetails
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
import Network.AWS.GuardDuty.Types.PrivateIpAddressDetails
import Network.AWS.GuardDuty.Types.ProductCode
import Network.AWS.GuardDuty.Types.PublicAccess
import Network.AWS.GuardDuty.Types.PublishingStatus
import Network.AWS.GuardDuty.Types.RemoteIpDetails
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-11-28@ of the Amazon GuardDuty SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "GuardDuty",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "guardduty",
      Prelude._svcVersion = "2017-11-28",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "GuardDuty",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | A bad request exception object.
_BadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BadRequestException =
  Prelude._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Prelude.hasStatus 400

-- | An internal server error exception object.
_InternalServerErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerErrorException =
  Prelude._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Prelude.hasStatus 500

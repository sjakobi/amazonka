{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Route 53 is a scalable Domain Name System (DNS) web service. It provides secure and reliable routing to your infrastructure that uses Amazon Web Services (AWS) products, such as Amazon Elastic Compute Cloud (Amazon EC2), Elastic Load Balancing, or Amazon Simple Storage Service (Amazon S3). You can also use Amazon Route 53 to route users to your infrastructure outside of AWS.
module Network.AWS.Route53
  ( -- * Service Configuration
    route53,

    -- * Errors
    -- $errors

    -- ** KeySigningKeyInUse
    _KeySigningKeyInUse,

    -- ** NoSuchKeySigningKey
    _NoSuchKeySigningKey,

    -- ** HostedZoneNotEmpty
    _HostedZoneNotEmpty,

    -- ** NoSuchQueryLoggingConfig
    _NoSuchQueryLoggingConfig,

    -- ** InvalidInput
    _InvalidInput,

    -- ** HostedZoneNotPrivate
    _HostedZoneNotPrivate,

    -- ** DNSSECNotFound
    _DNSSECNotFound,

    -- ** NoSuchDelegationSet
    _NoSuchDelegationSet,

    -- ** VPCAssociationAuthorizationNotFound
    _VPCAssociationAuthorizationNotFound,

    -- ** NoSuchGeoLocation
    _NoSuchGeoLocation,

    -- ** DelegationSetNotAvailable
    _DelegationSetNotAvailable,

    -- ** HealthCheckVersionMismatch
    _HealthCheckVersionMismatch,

    -- ** HostedZoneAlreadyExists
    _HostedZoneAlreadyExists,

    -- ** InvalidKMSARN
    _InvalidKMSARN,

    -- ** InvalidDomainName
    _InvalidDomainName,

    -- ** InvalidKeySigningKeyStatus
    _InvalidKeySigningKeyStatus,

    -- ** LastVPCAssociation
    _LastVPCAssociation,

    -- ** HealthCheckInUse
    _HealthCheckInUse,

    -- ** TrafficPolicyAlreadyExists
    _TrafficPolicyAlreadyExists,

    -- ** InvalidChangeBatch
    _InvalidChangeBatch,

    -- ** IncompatibleVersion
    _IncompatibleVersion,

    -- ** InvalidTrafficPolicyDocument
    _InvalidTrafficPolicyDocument,

    -- ** NoSuchCloudWatchLogsLogGroup
    _NoSuchCloudWatchLogsLogGroup,

    -- ** InsufficientCloudWatchLogsResourcePolicy
    _InsufficientCloudWatchLogsResourcePolicy,

    -- ** NoSuchTrafficPolicyInstance
    _NoSuchTrafficPolicyInstance,

    -- ** TooManyTrafficPolicyInstances
    _TooManyTrafficPolicyInstances,

    -- ** InvalidKeySigningKeyName
    _InvalidKeySigningKeyName,

    -- ** QueryLoggingConfigAlreadyExists
    _QueryLoggingConfigAlreadyExists,

    -- ** LimitsExceeded
    _LimitsExceeded,

    -- ** KeySigningKeyAlreadyExists
    _KeySigningKeyAlreadyExists,

    -- ** TrafficPolicyInstanceAlreadyExists
    _TrafficPolicyInstanceAlreadyExists,

    -- ** KeySigningKeyInParentDSRecord
    _KeySigningKeyInParentDSRecord,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** VPCAssociationNotFound
    _VPCAssociationNotFound,

    -- ** TooManyKeySigningKeys
    _TooManyKeySigningKeys,

    -- ** DelegationSetInUse
    _DelegationSetInUse,

    -- ** HealthCheckAlreadyExists
    _HealthCheckAlreadyExists,

    -- ** HostedZoneNotFound
    _HostedZoneNotFound,

    -- ** TooManyTrafficPolicies
    _TooManyTrafficPolicies,

    -- ** NoSuchTrafficPolicy
    _NoSuchTrafficPolicy,

    -- ** TooManyTrafficPolicyVersionsForCurrentPolicy
    _TooManyTrafficPolicyVersionsForCurrentPolicy,

    -- ** InvalidVPCId
    _InvalidVPCId,

    -- ** TrafficPolicyInUse
    _TrafficPolicyInUse,

    -- ** InvalidSigningStatus
    _InvalidSigningStatus,

    -- ** DelegationSetNotReusable
    _DelegationSetNotReusable,

    -- ** NoSuchHealthCheck
    _NoSuchHealthCheck,

    -- ** InvalidPaginationToken
    _InvalidPaginationToken,

    -- ** ConflictingDomainExists
    _ConflictingDomainExists,

    -- ** TooManyHealthChecks
    _TooManyHealthChecks,

    -- ** DelegationSetAlreadyCreated
    _DelegationSetAlreadyCreated,

    -- ** TooManyVPCAssociationAuthorizations
    _TooManyVPCAssociationAuthorizations,

    -- ** TooManyHostedZones
    _TooManyHostedZones,

    -- ** PriorRequestNotComplete
    _PriorRequestNotComplete,

    -- ** NoSuchHostedZone
    _NoSuchHostedZone,

    -- ** PublicZoneVPCAssociation
    _PublicZoneVPCAssociation,

    -- ** ConflictingTypes
    _ConflictingTypes,

    -- ** NotAuthorizedException
    _NotAuthorizedException,

    -- ** DelegationSetAlreadyReusable
    _DelegationSetAlreadyReusable,

    -- ** ConcurrentModification
    _ConcurrentModification,

    -- ** KeySigningKeyWithActiveStatusNotFound
    _KeySigningKeyWithActiveStatusNotFound,

    -- ** HostedZonePartiallyDelegated
    _HostedZonePartiallyDelegated,

    -- ** NoSuchChange
    _NoSuchChange,

    -- ** InvalidArgument
    _InvalidArgument,

    -- * Waiters
    -- $waiters

    -- ** ResourceRecordSetsChanged
    resourceRecordSetsChanged,

    -- * Operations
    -- $operations

    -- ** CreateReusableDelegationSet
    module Network.AWS.Route53.CreateReusableDelegationSet,

    -- ** GetHealthCheckCount
    module Network.AWS.Route53.GetHealthCheckCount,

    -- ** GetHostedZoneLimit
    module Network.AWS.Route53.GetHostedZoneLimit,

    -- ** AssociateVPCWithHostedZone
    module Network.AWS.Route53.AssociateVPCWithHostedZone,

    -- ** ListGeoLocations
    module Network.AWS.Route53.ListGeoLocations,

    -- ** ListTrafficPolicies
    module Network.AWS.Route53.ListTrafficPolicies,

    -- ** CreateTrafficPolicy
    module Network.AWS.Route53.CreateTrafficPolicy,

    -- ** DeleteHostedZone
    module Network.AWS.Route53.DeleteHostedZone,

    -- ** CreateHealthCheck
    module Network.AWS.Route53.CreateHealthCheck,

    -- ** DisassociateVPCFromHostedZone
    module Network.AWS.Route53.DisassociateVPCFromHostedZone,

    -- ** ChangeTagsForResource
    module Network.AWS.Route53.ChangeTagsForResource,

    -- ** GetGeoLocation
    module Network.AWS.Route53.GetGeoLocation,

    -- ** DeleteVPCAssociationAuthorization
    module Network.AWS.Route53.DeleteVPCAssociationAuthorization,

    -- ** ListHostedZones (Paginated)
    module Network.AWS.Route53.ListHostedZones,

    -- ** DeactivateKeySigningKey
    module Network.AWS.Route53.DeactivateKeySigningKey,

    -- ** TestDNSAnswer
    module Network.AWS.Route53.TestDNSAnswer,

    -- ** CreateHostedZone
    module Network.AWS.Route53.CreateHostedZone,

    -- ** GetReusableDelegationSetLimit
    module Network.AWS.Route53.GetReusableDelegationSetLimit,

    -- ** ChangeResourceRecordSets
    module Network.AWS.Route53.ChangeResourceRecordSets,

    -- ** GetReusableDelegationSet
    module Network.AWS.Route53.GetReusableDelegationSet,

    -- ** GetCheckerIPRanges
    module Network.AWS.Route53.GetCheckerIPRanges,

    -- ** GetDNSSEC
    module Network.AWS.Route53.GetDNSSEC,

    -- ** DeleteKeySigningKey
    module Network.AWS.Route53.DeleteKeySigningKey,

    -- ** GetTrafficPolicyInstance
    module Network.AWS.Route53.GetTrafficPolicyInstance,

    -- ** ListReusableDelegationSets
    module Network.AWS.Route53.ListReusableDelegationSets,

    -- ** GetAccountLimit
    module Network.AWS.Route53.GetAccountLimit,

    -- ** CreateQueryLoggingConfig
    module Network.AWS.Route53.CreateQueryLoggingConfig,

    -- ** UpdateTrafficPolicyComment
    module Network.AWS.Route53.UpdateTrafficPolicyComment,

    -- ** CreateKeySigningKey
    module Network.AWS.Route53.CreateKeySigningKey,

    -- ** DisableHostedZoneDNSSEC
    module Network.AWS.Route53.DisableHostedZoneDNSSEC,

    -- ** ListResourceRecordSets (Paginated)
    module Network.AWS.Route53.ListResourceRecordSets,

    -- ** DeleteTrafficPolicy
    module Network.AWS.Route53.DeleteTrafficPolicy,

    -- ** GetHealthCheck
    module Network.AWS.Route53.GetHealthCheck,

    -- ** ListTrafficPolicyInstancesByHostedZone
    module Network.AWS.Route53.ListTrafficPolicyInstancesByHostedZone,

    -- ** ListTagsForResources
    module Network.AWS.Route53.ListTagsForResources,

    -- ** GetTrafficPolicyInstanceCount
    module Network.AWS.Route53.GetTrafficPolicyInstanceCount,

    -- ** GetHostedZone
    module Network.AWS.Route53.GetHostedZone,

    -- ** ListVPCAssociationAuthorizations (Paginated)
    module Network.AWS.Route53.ListVPCAssociationAuthorizations,

    -- ** ListTrafficPolicyVersions
    module Network.AWS.Route53.ListTrafficPolicyVersions,

    -- ** ListTrafficPolicyInstancesByPolicy
    module Network.AWS.Route53.ListTrafficPolicyInstancesByPolicy,

    -- ** ListHealthChecks (Paginated)
    module Network.AWS.Route53.ListHealthChecks,

    -- ** DeleteHealthCheck
    module Network.AWS.Route53.DeleteHealthCheck,

    -- ** CreateTrafficPolicyVersion
    module Network.AWS.Route53.CreateTrafficPolicyVersion,

    -- ** GetTrafficPolicy
    module Network.AWS.Route53.GetTrafficPolicy,

    -- ** CreateVPCAssociationAuthorization
    module Network.AWS.Route53.CreateVPCAssociationAuthorization,

    -- ** UpdateHealthCheck
    module Network.AWS.Route53.UpdateHealthCheck,

    -- ** CreateTrafficPolicyInstance
    module Network.AWS.Route53.CreateTrafficPolicyInstance,

    -- ** ListHostedZonesByVPC
    module Network.AWS.Route53.ListHostedZonesByVPC,

    -- ** GetHealthCheckStatus
    module Network.AWS.Route53.GetHealthCheckStatus,

    -- ** GetChange
    module Network.AWS.Route53.GetChange,

    -- ** UpdateHostedZoneComment
    module Network.AWS.Route53.UpdateHostedZoneComment,

    -- ** ListTrafficPolicyInstances
    module Network.AWS.Route53.ListTrafficPolicyInstances,

    -- ** DeleteTrafficPolicyInstance
    module Network.AWS.Route53.DeleteTrafficPolicyInstance,

    -- ** UpdateTrafficPolicyInstance
    module Network.AWS.Route53.UpdateTrafficPolicyInstance,

    -- ** GetQueryLoggingConfig
    module Network.AWS.Route53.GetQueryLoggingConfig,

    -- ** DeleteReusableDelegationSet
    module Network.AWS.Route53.DeleteReusableDelegationSet,

    -- ** ListTagsForResource
    module Network.AWS.Route53.ListTagsForResource,

    -- ** DeleteQueryLoggingConfig
    module Network.AWS.Route53.DeleteQueryLoggingConfig,

    -- ** GetHealthCheckLastFailureReason
    module Network.AWS.Route53.GetHealthCheckLastFailureReason,

    -- ** EnableHostedZoneDNSSEC
    module Network.AWS.Route53.EnableHostedZoneDNSSEC,

    -- ** ListQueryLoggingConfigs (Paginated)
    module Network.AWS.Route53.ListQueryLoggingConfigs,

    -- ** ListHostedZonesByName
    module Network.AWS.Route53.ListHostedZonesByName,

    -- ** GetHostedZoneCount
    module Network.AWS.Route53.GetHostedZoneCount,

    -- ** ActivateKeySigningKey
    module Network.AWS.Route53.ActivateKeySigningKey,

    -- * Types

    -- ** Common
    module Network.AWS.Route53.Internal,

    -- ** AccountLimitType
    AccountLimitType (..),

    -- ** ChangeAction
    ChangeAction (..),

    -- ** ChangeStatus
    ChangeStatus (..),

    -- ** CloudWatchRegion
    CloudWatchRegion (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** Failover
    Failover (..),

    -- ** HealthCheckRegion
    HealthCheckRegion (..),

    -- ** HealthCheckType
    HealthCheckType (..),

    -- ** HostedZoneLimitType
    HostedZoneLimitType (..),

    -- ** InsufficientDataHealthStatus
    InsufficientDataHealthStatus (..),

    -- ** RecordType
    RecordType (..),

    -- ** ResettableElementName
    ResettableElementName (..),

    -- ** ReusableDelegationSetLimitType
    ReusableDelegationSetLimitType (..),

    -- ** Statistic
    Statistic (..),

    -- ** TagResourceType
    TagResourceType (..),

    -- ** VPCRegion
    VPCRegion (..),

    -- ** AccountLimit
    AccountLimit,
    accountLimit,
    alType,
    alValue,

    -- ** AlarmIdentifier
    AlarmIdentifier,
    alarmIdentifier,
    aiRegion,
    aiName,

    -- ** AliasTarget
    AliasTarget,
    aliasTarget,
    atHostedZoneId,
    atDNSName,
    atEvaluateTargetHealth,

    -- ** Change
    Change,
    change,
    cAction,
    cResourceRecordSet,

    -- ** ChangeBatch
    ChangeBatch,
    changeBatch,
    cbComment,
    cbChanges,

    -- ** ChangeInfo
    ChangeInfo,
    changeInfo,
    ciComment,
    ciId,
    ciStatus,
    ciSubmittedAt,

    -- ** CloudWatchAlarmConfiguration
    CloudWatchAlarmConfiguration,
    cloudWatchAlarmConfiguration,
    cwacDimensions,
    cwacEvaluationPeriods,
    cwacThreshold,
    cwacComparisonOperator,
    cwacPeriod,
    cwacMetricName,
    cwacNamespace,
    cwacStatistic,

    -- ** DNSSECStatus
    DNSSECStatus,
    dnsSECStatus,
    dsecsStatusMessage,
    dsecsServeSignature,

    -- ** DelegationSet
    DelegationSet,
    delegationSet,
    dsId,
    dsCallerReference,
    dsNameServers,

    -- ** Dimension
    Dimension,
    dimension,
    dName,
    dValue,

    -- ** GeoLocation
    GeoLocation,
    geoLocation,
    glContinentCode,
    glSubdivisionCode,
    glCountryCode,

    -- ** GeoLocationDetails
    GeoLocationDetails,
    geoLocationDetails,
    gldCountryName,
    gldContinentName,
    gldContinentCode,
    gldSubdivisionCode,
    gldCountryCode,
    gldSubdivisionName,

    -- ** HealthCheck
    HealthCheck,
    healthCheck,
    hcCloudWatchAlarmConfiguration,
    hcLinkedService,
    hcId,
    hcCallerReference,
    hcHealthCheckConfig,
    hcHealthCheckVersion,

    -- ** HealthCheckConfig
    HealthCheckConfig,
    healthCheckConfig,
    hccFailureThreshold,
    hccSearchString,
    hccChildHealthChecks,
    hccDisabled,
    hccAlarmIdentifier,
    hccEnableSNI,
    hccInsufficientDataHealthStatus,
    hccIPAddress,
    hccResourcePath,
    hccPort,
    hccRequestInterval,
    hccHealthThreshold,
    hccRegions,
    hccFullyQualifiedDomainName,
    hccInverted,
    hccMeasureLatency,
    hccType,

    -- ** HealthCheckObservation
    HealthCheckObservation,
    healthCheckObservation,
    hcoIPAddress,
    hcoRegion,
    hcoStatusReport,

    -- ** HostedZone
    HostedZone,
    hostedZone,
    hzResourceRecordSetCount,
    hzConfig,
    hzLinkedService,
    hzId,
    hzName,
    hzCallerReference,

    -- ** HostedZoneConfig
    HostedZoneConfig,
    hostedZoneConfig,
    hzcComment,
    hzcPrivateZone,

    -- ** HostedZoneLimit
    HostedZoneLimit,
    hostedZoneLimit,
    hzlType,
    hzlValue,

    -- ** HostedZoneOwner
    HostedZoneOwner,
    hostedZoneOwner,
    hzoOwningAccount,
    hzoOwningService,

    -- ** HostedZoneSummary
    HostedZoneSummary,
    hostedZoneSummary,
    hzsHostedZoneId,
    hzsName,
    hzsOwner,

    -- ** KeySigningKey
    KeySigningKey,
    keySigningKey,
    kskDigestAlgorithmType,
    kskLastModifiedDate,
    kskStatusMessage,
    kskStatus,
    kskCreatedDate,
    kskSigningAlgorithmMnemonic,
    kskPublicKey,
    kskDNSKEYRecord,
    kskDigestValue,
    kskDigestAlgorithmMnemonic,
    kskName,
    kskSigningAlgorithmType,
    kskFlag,
    kskKMSARN,
    kskKeyTag,
    kskDSRecord,

    -- ** LinkedService
    LinkedService,
    linkedService,
    lsServicePrincipal,
    lsDescription,

    -- ** QueryLoggingConfig
    QueryLoggingConfig,
    queryLoggingConfig,
    qlcId,
    qlcHostedZoneId,
    qlcCloudWatchLogsLogGroupARN,

    -- ** ResourceRecord
    ResourceRecord,
    resourceRecord,
    rrValue,

    -- ** ResourceRecordSet
    ResourceRecordSet,
    resourceRecordSet,
    rrsHealthCheckId,
    rrsMultiValueAnswer,
    rrsGeoLocation,
    rrsWeight,
    rrsAliasTarget,
    rrsResourceRecords,
    rrsFailover,
    rrsTTL,
    rrsTrafficPolicyInstanceId,
    rrsSetIdentifier,
    rrsRegion,
    rrsName,
    rrsType,

    -- ** ResourceTagSet
    ResourceTagSet,
    resourceTagSet,
    rtsResourceId,
    rtsResourceType,
    rtsTags,

    -- ** ReusableDelegationSetLimit
    ReusableDelegationSetLimit,
    reusableDelegationSetLimit,
    rdslType,
    rdslValue,

    -- ** StatusReport
    StatusReport,
    statusReport,
    srStatus,
    srCheckedTime,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TrafficPolicy
    TrafficPolicy,
    trafficPolicy,
    tpComment,
    tpId,
    tpVersion,
    tpName,
    tpType,
    tpDocument,

    -- ** TrafficPolicyInstance
    TrafficPolicyInstance,
    trafficPolicyInstance,
    tpiId,
    tpiHostedZoneId,
    tpiName,
    tpiTTL,
    tpiState,
    tpiMessage,
    tpiTrafficPolicyId,
    tpiTrafficPolicyVersion,
    tpiTrafficPolicyType,

    -- ** TrafficPolicySummary
    TrafficPolicySummary,
    trafficPolicySummary,
    tpsId,
    tpsName,
    tpsType,
    tpsLatestVersion,
    tpsTrafficPolicyCount,

    -- ** VPC
    VPC,
    vpc,
    vpcVPCRegion,
    vpcVPCId,
  )
where

import Network.AWS.Route53.ActivateKeySigningKey
import Network.AWS.Route53.AssociateVPCWithHostedZone
import Network.AWS.Route53.ChangeResourceRecordSets
import Network.AWS.Route53.ChangeTagsForResource
import Network.AWS.Route53.CreateHealthCheck
import Network.AWS.Route53.CreateHostedZone
import Network.AWS.Route53.CreateKeySigningKey
import Network.AWS.Route53.CreateQueryLoggingConfig
import Network.AWS.Route53.CreateReusableDelegationSet
import Network.AWS.Route53.CreateTrafficPolicy
import Network.AWS.Route53.CreateTrafficPolicyInstance
import Network.AWS.Route53.CreateTrafficPolicyVersion
import Network.AWS.Route53.CreateVPCAssociationAuthorization
import Network.AWS.Route53.DeactivateKeySigningKey
import Network.AWS.Route53.DeleteHealthCheck
import Network.AWS.Route53.DeleteHostedZone
import Network.AWS.Route53.DeleteKeySigningKey
import Network.AWS.Route53.DeleteQueryLoggingConfig
import Network.AWS.Route53.DeleteReusableDelegationSet
import Network.AWS.Route53.DeleteTrafficPolicy
import Network.AWS.Route53.DeleteTrafficPolicyInstance
import Network.AWS.Route53.DeleteVPCAssociationAuthorization
import Network.AWS.Route53.DisableHostedZoneDNSSEC
import Network.AWS.Route53.DisassociateVPCFromHostedZone
import Network.AWS.Route53.EnableHostedZoneDNSSEC
import Network.AWS.Route53.GetAccountLimit
import Network.AWS.Route53.GetChange
import Network.AWS.Route53.GetCheckerIPRanges
import Network.AWS.Route53.GetDNSSEC
import Network.AWS.Route53.GetGeoLocation
import Network.AWS.Route53.GetHealthCheck
import Network.AWS.Route53.GetHealthCheckCount
import Network.AWS.Route53.GetHealthCheckLastFailureReason
import Network.AWS.Route53.GetHealthCheckStatus
import Network.AWS.Route53.GetHostedZone
import Network.AWS.Route53.GetHostedZoneCount
import Network.AWS.Route53.GetHostedZoneLimit
import Network.AWS.Route53.GetQueryLoggingConfig
import Network.AWS.Route53.GetReusableDelegationSet
import Network.AWS.Route53.GetReusableDelegationSetLimit
import Network.AWS.Route53.GetTrafficPolicy
import Network.AWS.Route53.GetTrafficPolicyInstance
import Network.AWS.Route53.GetTrafficPolicyInstanceCount
import Network.AWS.Route53.Internal
import Network.AWS.Route53.ListGeoLocations
import Network.AWS.Route53.ListHealthChecks
import Network.AWS.Route53.ListHostedZones
import Network.AWS.Route53.ListHostedZonesByName
import Network.AWS.Route53.ListHostedZonesByVPC
import Network.AWS.Route53.ListQueryLoggingConfigs
import Network.AWS.Route53.ListResourceRecordSets
import Network.AWS.Route53.ListReusableDelegationSets
import Network.AWS.Route53.ListTagsForResource
import Network.AWS.Route53.ListTagsForResources
import Network.AWS.Route53.ListTrafficPolicies
import Network.AWS.Route53.ListTrafficPolicyInstances
import Network.AWS.Route53.ListTrafficPolicyInstancesByHostedZone
import Network.AWS.Route53.ListTrafficPolicyInstancesByPolicy
import Network.AWS.Route53.ListTrafficPolicyVersions
import Network.AWS.Route53.ListVPCAssociationAuthorizations
import Network.AWS.Route53.TestDNSAnswer
import Network.AWS.Route53.Types
import Network.AWS.Route53.UpdateHealthCheck
import Network.AWS.Route53.UpdateHostedZoneComment
import Network.AWS.Route53.UpdateTrafficPolicyComment
import Network.AWS.Route53.UpdateTrafficPolicyInstance
import Network.AWS.Route53.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Route53'.

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

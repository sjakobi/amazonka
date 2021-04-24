{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types
  ( -- * Service Configuration
    route53,

    -- * Errors
    _KeySigningKeyInUse,
    _NoSuchKeySigningKey,
    _HostedZoneNotEmpty,
    _NoSuchQueryLoggingConfig,
    _InvalidInput,
    _HostedZoneNotPrivate,
    _DNSSECNotFound,
    _NoSuchDelegationSet,
    _VPCAssociationAuthorizationNotFound,
    _NoSuchGeoLocation,
    _DelegationSetNotAvailable,
    _HealthCheckVersionMismatch,
    _HostedZoneAlreadyExists,
    _InvalidKMSARN,
    _InvalidDomainName,
    _InvalidKeySigningKeyStatus,
    _LastVPCAssociation,
    _HealthCheckInUse,
    _TrafficPolicyAlreadyExists,
    _InvalidChangeBatch,
    _IncompatibleVersion,
    _InvalidTrafficPolicyDocument,
    _NoSuchCloudWatchLogsLogGroup,
    _InsufficientCloudWatchLogsResourcePolicy,
    _NoSuchTrafficPolicyInstance,
    _TooManyTrafficPolicyInstances,
    _InvalidKeySigningKeyName,
    _QueryLoggingConfigAlreadyExists,
    _LimitsExceeded,
    _KeySigningKeyAlreadyExists,
    _TrafficPolicyInstanceAlreadyExists,
    _KeySigningKeyInParentDSRecord,
    _ThrottlingException,
    _VPCAssociationNotFound,
    _TooManyKeySigningKeys,
    _DelegationSetInUse,
    _HealthCheckAlreadyExists,
    _HostedZoneNotFound,
    _TooManyTrafficPolicies,
    _NoSuchTrafficPolicy,
    _TooManyTrafficPolicyVersionsForCurrentPolicy,
    _InvalidVPCId,
    _TrafficPolicyInUse,
    _InvalidSigningStatus,
    _DelegationSetNotReusable,
    _NoSuchHealthCheck,
    _InvalidPaginationToken,
    _ConflictingDomainExists,
    _TooManyHealthChecks,
    _DelegationSetAlreadyCreated,
    _TooManyVPCAssociationAuthorizations,
    _TooManyHostedZones,
    _PriorRequestNotComplete,
    _NoSuchHostedZone,
    _PublicZoneVPCAssociation,
    _ConflictingTypes,
    _NotAuthorizedException,
    _DelegationSetAlreadyReusable,
    _ConcurrentModification,
    _KeySigningKeyWithActiveStatusNotFound,
    _HostedZonePartiallyDelegated,
    _NoSuchChange,
    _InvalidArgument,

    -- * Re-exported Types
    module Network.AWS.Route53.Internal,

    -- * AccountLimitType
    AccountLimitType (..),

    -- * ChangeAction
    ChangeAction (..),

    -- * ChangeStatus
    ChangeStatus (..),

    -- * CloudWatchRegion
    CloudWatchRegion (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * Failover
    Failover (..),

    -- * HealthCheckRegion
    HealthCheckRegion (..),

    -- * HealthCheckType
    HealthCheckType (..),

    -- * HostedZoneLimitType
    HostedZoneLimitType (..),

    -- * InsufficientDataHealthStatus
    InsufficientDataHealthStatus (..),

    -- * RecordType
    RecordType (..),

    -- * ResettableElementName
    ResettableElementName (..),

    -- * ReusableDelegationSetLimitType
    ReusableDelegationSetLimitType (..),

    -- * Statistic
    Statistic (..),

    -- * TagResourceType
    TagResourceType (..),

    -- * VPCRegion
    VPCRegion (..),

    -- * AccountLimit
    AccountLimit (..),
    accountLimit,
    alType,
    alValue,

    -- * AlarmIdentifier
    AlarmIdentifier (..),
    alarmIdentifier,
    aiRegion,
    aiName,

    -- * AliasTarget
    AliasTarget (..),
    aliasTarget,
    atHostedZoneId,
    atDNSName,
    atEvaluateTargetHealth,

    -- * Change
    Change (..),
    change,
    cAction,
    cResourceRecordSet,

    -- * ChangeBatch
    ChangeBatch (..),
    changeBatch,
    cbComment,
    cbChanges,

    -- * ChangeInfo
    ChangeInfo (..),
    changeInfo,
    ciComment,
    ciId,
    ciStatus,
    ciSubmittedAt,

    -- * CloudWatchAlarmConfiguration
    CloudWatchAlarmConfiguration (..),
    cloudWatchAlarmConfiguration,
    cwacDimensions,
    cwacEvaluationPeriods,
    cwacThreshold,
    cwacComparisonOperator,
    cwacPeriod,
    cwacMetricName,
    cwacNamespace,
    cwacStatistic,

    -- * DNSSECStatus
    DNSSECStatus (..),
    dnsSECStatus,
    dsecsStatusMessage,
    dsecsServeSignature,

    -- * DelegationSet
    DelegationSet (..),
    delegationSet,
    dsId,
    dsCallerReference,
    dsNameServers,

    -- * Dimension
    Dimension (..),
    dimension,
    dName,
    dValue,

    -- * GeoLocation
    GeoLocation (..),
    geoLocation,
    glContinentCode,
    glSubdivisionCode,
    glCountryCode,

    -- * GeoLocationDetails
    GeoLocationDetails (..),
    geoLocationDetails,
    gldCountryName,
    gldContinentName,
    gldContinentCode,
    gldSubdivisionCode,
    gldCountryCode,
    gldSubdivisionName,

    -- * HealthCheck
    HealthCheck (..),
    healthCheck,
    hcCloudWatchAlarmConfiguration,
    hcLinkedService,
    hcId,
    hcCallerReference,
    hcHealthCheckConfig,
    hcHealthCheckVersion,

    -- * HealthCheckConfig
    HealthCheckConfig (..),
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

    -- * HealthCheckObservation
    HealthCheckObservation (..),
    healthCheckObservation,
    hcoIPAddress,
    hcoRegion,
    hcoStatusReport,

    -- * HostedZone
    HostedZone (..),
    hostedZone,
    hzResourceRecordSetCount,
    hzConfig,
    hzLinkedService,
    hzId,
    hzName,
    hzCallerReference,

    -- * HostedZoneConfig
    HostedZoneConfig (..),
    hostedZoneConfig,
    hzcComment,
    hzcPrivateZone,

    -- * HostedZoneLimit
    HostedZoneLimit (..),
    hostedZoneLimit,
    hzlType,
    hzlValue,

    -- * HostedZoneOwner
    HostedZoneOwner (..),
    hostedZoneOwner,
    hzoOwningAccount,
    hzoOwningService,

    -- * HostedZoneSummary
    HostedZoneSummary (..),
    hostedZoneSummary,
    hzsHostedZoneId,
    hzsName,
    hzsOwner,

    -- * KeySigningKey
    KeySigningKey (..),
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

    -- * LinkedService
    LinkedService (..),
    linkedService,
    lsServicePrincipal,
    lsDescription,

    -- * QueryLoggingConfig
    QueryLoggingConfig (..),
    queryLoggingConfig,
    qlcId,
    qlcHostedZoneId,
    qlcCloudWatchLogsLogGroupARN,

    -- * ResourceRecord
    ResourceRecord (..),
    resourceRecord,
    rrValue,

    -- * ResourceRecordSet
    ResourceRecordSet (..),
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

    -- * ResourceTagSet
    ResourceTagSet (..),
    resourceTagSet,
    rtsResourceId,
    rtsResourceType,
    rtsTags,

    -- * ReusableDelegationSetLimit
    ReusableDelegationSetLimit (..),
    reusableDelegationSetLimit,
    rdslType,
    rdslValue,

    -- * StatusReport
    StatusReport (..),
    statusReport,
    srStatus,
    srCheckedTime,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TrafficPolicy
    TrafficPolicy (..),
    trafficPolicy,
    tpComment,
    tpId,
    tpVersion,
    tpName,
    tpType,
    tpDocument,

    -- * TrafficPolicyInstance
    TrafficPolicyInstance (..),
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

    -- * TrafficPolicySummary
    TrafficPolicySummary (..),
    trafficPolicySummary,
    tpsId,
    tpsName,
    tpsType,
    tpsLatestVersion,
    tpsTrafficPolicyCount,

    -- * VPC
    VPC (..),
    vpc,
    vpcVPCRegion,
    vpcVPCId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53.Internal
import Network.AWS.Route53.Types.AccountLimit
import Network.AWS.Route53.Types.AccountLimitType
import Network.AWS.Route53.Types.AlarmIdentifier
import Network.AWS.Route53.Types.AliasTarget
import Network.AWS.Route53.Types.Change
import Network.AWS.Route53.Types.ChangeAction
import Network.AWS.Route53.Types.ChangeBatch
import Network.AWS.Route53.Types.ChangeInfo
import Network.AWS.Route53.Types.ChangeStatus
import Network.AWS.Route53.Types.CloudWatchAlarmConfiguration
import Network.AWS.Route53.Types.CloudWatchRegion
import Network.AWS.Route53.Types.ComparisonOperator
import Network.AWS.Route53.Types.DNSSECStatus
import Network.AWS.Route53.Types.DelegationSet
import Network.AWS.Route53.Types.Dimension
import Network.AWS.Route53.Types.Failover
import Network.AWS.Route53.Types.GeoLocation
import Network.AWS.Route53.Types.GeoLocationDetails
import Network.AWS.Route53.Types.HealthCheck
import Network.AWS.Route53.Types.HealthCheckConfig
import Network.AWS.Route53.Types.HealthCheckObservation
import Network.AWS.Route53.Types.HealthCheckRegion
import Network.AWS.Route53.Types.HealthCheckType
import Network.AWS.Route53.Types.HostedZone
import Network.AWS.Route53.Types.HostedZoneConfig
import Network.AWS.Route53.Types.HostedZoneLimit
import Network.AWS.Route53.Types.HostedZoneLimitType
import Network.AWS.Route53.Types.HostedZoneOwner
import Network.AWS.Route53.Types.HostedZoneSummary
import Network.AWS.Route53.Types.InsufficientDataHealthStatus
import Network.AWS.Route53.Types.KeySigningKey
import Network.AWS.Route53.Types.LinkedService
import Network.AWS.Route53.Types.QueryLoggingConfig
import Network.AWS.Route53.Types.RecordType
import Network.AWS.Route53.Types.ResettableElementName
import Network.AWS.Route53.Types.ResourceRecord
import Network.AWS.Route53.Types.ResourceRecordSet
import Network.AWS.Route53.Types.ResourceTagSet
import Network.AWS.Route53.Types.ReusableDelegationSetLimit
import Network.AWS.Route53.Types.ReusableDelegationSetLimitType
import Network.AWS.Route53.Types.Statistic
import Network.AWS.Route53.Types.StatusReport
import Network.AWS.Route53.Types.Tag
import Network.AWS.Route53.Types.TagResourceType
import Network.AWS.Route53.Types.TrafficPolicy
import Network.AWS.Route53.Types.TrafficPolicyInstance
import Network.AWS.Route53.Types.TrafficPolicySummary
import Network.AWS.Route53.Types.VPC
import Network.AWS.Route53.Types.VPCRegion
import Network.AWS.Sign.V4

-- | API version @2013-04-01@ of the Amazon Route 53 SDK configuration.
route53 :: Service
route53 =
  Service
    { _svcAbbrev = "Route53",
      _svcSigner = v4,
      _svcPrefix = "route53",
      _svcVersion = "2013-04-01",
      _svcEndpoint = defaultEndpoint route53,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "Route53",
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
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "request_limit_exceeded"
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
      | has
          (hasCode "PriorRequestNotComplete" . hasStatus 400)
          e =
        Just "still_processing"
      | otherwise = Nothing

-- | The key-signing key (KSK) that you specified can't be deactivated because it's the only KSK for a currently-enabled DNSSEC. Disable DNSSEC signing, or add or enable another KSK.
_KeySigningKeyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_KeySigningKeyInUse =
  _MatchServiceError route53 "KeySigningKeyInUse"

-- | The specified key-signing key (KSK) doesn't exist.
_NoSuchKeySigningKey :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchKeySigningKey =
  _MatchServiceError route53 "NoSuchKeySigningKey"
    . hasStatus 404

-- | The hosted zone contains resource records that are not SOA or NS records.
_HostedZoneNotEmpty :: AsError a => Getting (First ServiceError) a ServiceError
_HostedZoneNotEmpty =
  _MatchServiceError route53 "HostedZoneNotEmpty"
    . hasStatus 400

-- | There is no DNS query logging configuration with the specified ID.
_NoSuchQueryLoggingConfig :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchQueryLoggingConfig =
  _MatchServiceError
    route53
    "NoSuchQueryLoggingConfig"
    . hasStatus 404

-- | The input is not valid.
_InvalidInput :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInput =
  _MatchServiceError route53 "InvalidInput"
    . hasStatus 400

-- | The specified hosted zone is a public hosted zone, not a private hosted zone.
_HostedZoneNotPrivate :: AsError a => Getting (First ServiceError) a ServiceError
_HostedZoneNotPrivate =
  _MatchServiceError route53 "HostedZoneNotPrivate"

-- | The hosted zone doesn't have any DNSSEC resources.
_DNSSECNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_DNSSECNotFound =
  _MatchServiceError route53 "DNSSECNotFound"
    . hasStatus 400

-- | A reusable delegation set with the specified ID does not exist.
_NoSuchDelegationSet :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchDelegationSet =
  _MatchServiceError route53 "NoSuchDelegationSet"

-- | The VPC that you specified is not authorized to be associated with the hosted zone.
_VPCAssociationAuthorizationNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_VPCAssociationAuthorizationNotFound =
  _MatchServiceError
    route53
    "VPCAssociationAuthorizationNotFound"
    . hasStatus 404

-- | Amazon Route 53 doesn't support the specified geographic location. For a list of supported geolocation codes, see the <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html GeoLocation> data type.
_NoSuchGeoLocation :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchGeoLocation =
  _MatchServiceError route53 "NoSuchGeoLocation"
    . hasStatus 404

-- | You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Route 53 generates this error, contact Customer Support.
_DelegationSetNotAvailable :: AsError a => Getting (First ServiceError) a ServiceError
_DelegationSetNotAvailable =
  _MatchServiceError
    route53
    "DelegationSetNotAvailable"

-- | The value of @HealthCheckVersion@ in the request doesn't match the value of @HealthCheckVersion@ in the health check.
_HealthCheckVersionMismatch :: AsError a => Getting (First ServiceError) a ServiceError
_HealthCheckVersionMismatch =
  _MatchServiceError
    route53
    "HealthCheckVersionMismatch"
    . hasStatus 409

-- | The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified @CallerReference@ .
_HostedZoneAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_HostedZoneAlreadyExists =
  _MatchServiceError
    route53
    "HostedZoneAlreadyExists"
    . hasStatus 409

-- | The KeyManagementServiceArn that you specified isn't valid to use with DNSSEC signing.
_InvalidKMSARN :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKMSARN =
  _MatchServiceError route53 "InvalidKMSArn"

-- | The specified domain name is not valid.
_InvalidDomainName :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDomainName =
  _MatchServiceError route53 "InvalidDomainName"
    . hasStatus 400

-- | The key-signing key (KSK) status isn't valid or another KSK has the status @INTERNAL_FAILURE@ .
_InvalidKeySigningKeyStatus :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKeySigningKeyStatus =
  _MatchServiceError
    route53
    "InvalidKeySigningKeyStatus"
    . hasStatus 400

-- | The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.
_LastVPCAssociation :: AsError a => Getting (First ServiceError) a ServiceError
_LastVPCAssociation =
  _MatchServiceError route53 "LastVPCAssociation"
    . hasStatus 400

-- | This error code is not in use.
_HealthCheckInUse :: AsError a => Getting (First ServiceError) a ServiceError
_HealthCheckInUse =
  _MatchServiceError route53 "HealthCheckInUse"
    . hasStatus 400

-- | A traffic policy that has the same value for @Name@ already exists.
_TrafficPolicyAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_TrafficPolicyAlreadyExists =
  _MatchServiceError
    route53
    "TrafficPolicyAlreadyExists"
    . hasStatus 409

-- | This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.
_InvalidChangeBatch :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidChangeBatch =
  _MatchServiceError route53 "InvalidChangeBatch"

-- | The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.
_IncompatibleVersion :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatibleVersion =
  _MatchServiceError route53 "IncompatibleVersion"
    . hasStatus 400

-- | The format of the traffic policy document that you specified in the @Document@ element is not valid.
_InvalidTrafficPolicyDocument :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTrafficPolicyDocument =
  _MatchServiceError
    route53
    "InvalidTrafficPolicyDocument"
    . hasStatus 400

-- | There is no CloudWatch Logs log group with the specified ARN.
_NoSuchCloudWatchLogsLogGroup :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchCloudWatchLogsLogGroup =
  _MatchServiceError
    route53
    "NoSuchCloudWatchLogsLogGroup"
    . hasStatus 404

-- | Amazon Route 53 doesn't have the permissions required to create log streams and send query logs to log streams. Possible causes include the following:
--
--
--     * There is no resource policy that specifies the log group ARN in the value for @Resource@ .
--
--     * The resource policy that includes the log group ARN in the value for @Resource@ doesn't have the necessary permissions.
--
--     * The resource policy hasn't finished propagating yet.
_InsufficientCloudWatchLogsResourcePolicy :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientCloudWatchLogsResourcePolicy =
  _MatchServiceError
    route53
    "InsufficientCloudWatchLogsResourcePolicy"
    . hasStatus 400

-- | No traffic policy instance exists with the specified ID.
_NoSuchTrafficPolicyInstance :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchTrafficPolicyInstance =
  _MatchServiceError
    route53
    "NoSuchTrafficPolicyInstance"
    . hasStatus 404

-- | This traffic policy instance can't be created because the current account has reached the limit on the number of traffic policy instances.
--
--
-- For information about default limits, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ .
--
-- For information about how to get the current limit for an account, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit> .
--
-- To request a higher limit, <http://aws.amazon.com/route53-request create a case> with the AWS Support Center.
_TooManyTrafficPolicyInstances :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTrafficPolicyInstances =
  _MatchServiceError
    route53
    "TooManyTrafficPolicyInstances"
    . hasStatus 400

-- | The key-signing key (KSK) name that you specified isn't a valid name.
_InvalidKeySigningKeyName :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKeySigningKeyName =
  _MatchServiceError
    route53
    "InvalidKeySigningKeyName"
    . hasStatus 400

-- | You can create only one query logging configuration for a hosted zone, and a query logging configuration already exists for this hosted zone.
_QueryLoggingConfigAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_QueryLoggingConfigAlreadyExists =
  _MatchServiceError
    route53
    "QueryLoggingConfigAlreadyExists"
    . hasStatus 409

-- | This operation can't be completed either because the current account has reached the limit on reusable delegation sets that it can create or because you've reached the limit on the number of Amazon VPCs that you can associate with a private hosted zone. To get the current limit on the number of reusable delegation sets, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit> . To get the current limit on the number of Amazon VPCs that you can associate with a private hosted zone, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetHostedZoneLimit.html GetHostedZoneLimit> . To request a higher limit, <http://aws.amazon.com/route53-request create a case> with the AWS Support Center.
_LimitsExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_LimitsExceeded =
  _MatchServiceError route53 "LimitsExceeded"

-- | You've already created a key-signing key (KSK) with this name or with the same customer managed customer master key (CMK) ARN.
_KeySigningKeyAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_KeySigningKeyAlreadyExists =
  _MatchServiceError
    route53
    "KeySigningKeyAlreadyExists"
    . hasStatus 409

-- | There is already a traffic policy instance with the specified ID.
_TrafficPolicyInstanceAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_TrafficPolicyInstanceAlreadyExists =
  _MatchServiceError
    route53
    "TrafficPolicyInstanceAlreadyExists"
    . hasStatus 409

-- | The key-signing key (KSK) is specified in a parent DS record.
_KeySigningKeyInParentDSRecord :: AsError a => Getting (First ServiceError) a ServiceError
_KeySigningKeyInParentDSRecord =
  _MatchServiceError
    route53
    "KeySigningKeyInParentDSRecord"
    . hasStatus 400

-- | The limit on the number of requests per second was exceeded.
_ThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottlingException =
  _MatchServiceError route53 "ThrottlingException"
    . hasStatus 400

-- | The specified VPC and hosted zone are not currently associated.
_VPCAssociationNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_VPCAssociationNotFound =
  _MatchServiceError route53 "VPCAssociationNotFound"
    . hasStatus 404

-- | You've reached the limit for the number of key-signing keys (KSKs). Remove at least one KSK, and then try again.
_TooManyKeySigningKeys :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyKeySigningKeys =
  _MatchServiceError route53 "TooManyKeySigningKeys"

-- | The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.
_DelegationSetInUse :: AsError a => Getting (First ServiceError) a ServiceError
_DelegationSetInUse =
  _MatchServiceError route53 "DelegationSetInUse"

-- | The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that has the following values:
--
--
--     * The same value for @CallerReference@ as an existing health check, and one or more values that differ from the existing health check that has the same caller reference.
--
--     * The same value for @CallerReference@ as a health check that you created and later deleted, regardless of the other settings in the request.
_HealthCheckAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_HealthCheckAlreadyExists =
  _MatchServiceError
    route53
    "HealthCheckAlreadyExists"
    . hasStatus 409

-- | The specified HostedZone can't be found.
_HostedZoneNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_HostedZoneNotFound =
  _MatchServiceError route53 "HostedZoneNotFound"

-- | This traffic policy can't be created because the current account has reached the limit on the number of traffic policies.
--
--
-- For information about default limits, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ .
--
-- To get the current limit for an account, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit> .
--
-- To request a higher limit, <http://aws.amazon.com/route53-request create a case> with the AWS Support Center.
_TooManyTrafficPolicies :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTrafficPolicies =
  _MatchServiceError route53 "TooManyTrafficPolicies"
    . hasStatus 400

-- | No traffic policy exists with the specified ID.
_NoSuchTrafficPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchTrafficPolicy =
  _MatchServiceError route53 "NoSuchTrafficPolicy"
    . hasStatus 404

-- | This traffic policy version can't be created because you've reached the limit of 1000 on the number of versions that you can create for the current traffic policy.
--
--
-- To create more traffic policy versions, you can use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html GetTrafficPolicy> to get the traffic policy document for a specified traffic policy version, and then use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html CreateTrafficPolicy> to create a new traffic policy using the traffic policy document.
_TooManyTrafficPolicyVersionsForCurrentPolicy :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTrafficPolicyVersionsForCurrentPolicy =
  _MatchServiceError
    route53
    "TooManyTrafficPolicyVersionsForCurrentPolicy"
    . hasStatus 400

-- | The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.
_InvalidVPCId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidVPCId =
  _MatchServiceError route53 "InvalidVPCId"
    . hasStatus 400

-- | One or more traffic policy instances were created by using the specified traffic policy.
_TrafficPolicyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_TrafficPolicyInUse =
  _MatchServiceError route53 "TrafficPolicyInUse"
    . hasStatus 400

-- | Your hosted zone status isn't valid for this operation. In the hosted zone, change the status to enable @DNSSEC@ or disable @DNSSEC@ .
_InvalidSigningStatus :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSigningStatus =
  _MatchServiceError route53 "InvalidSigningStatus"

-- | A reusable delegation set with the specified ID does not exist.
_DelegationSetNotReusable :: AsError a => Getting (First ServiceError) a ServiceError
_DelegationSetNotReusable =
  _MatchServiceError
    route53
    "DelegationSetNotReusable"

-- | No health check exists with the specified ID.
_NoSuchHealthCheck :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchHealthCheck =
  _MatchServiceError route53 "NoSuchHealthCheck"
    . hasStatus 404

-- | The value that you specified to get the second or subsequent page of results is invalid.
_InvalidPaginationToken :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPaginationToken =
  _MatchServiceError route53 "InvalidPaginationToken"
    . hasStatus 400

-- | The cause of this error depends on the operation that you're performing:
--
--
--     * __Create a public hosted zone:__ Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. For more information, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html CreateReusableDelegationSet> .
--
--     * __Create a private hosted zone:__ A hosted zone with the specified name already exists and is already associated with the Amazon VPC that you specified.
--
--     * __Associate VPCs with a private hosted zone:__ The VPC that you specified is already associated with another hosted zone that has the same name.
_ConflictingDomainExists :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictingDomainExists =
  _MatchServiceError
    route53
    "ConflictingDomainExists"

-- | This health check can't be created because the current account has reached the limit on the number of active health checks.
--
--
-- For information about default limits, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ .
--
-- For information about how to get the current limit for an account, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit> . To request a higher limit, <http://aws.amazon.com/route53-request create a case> with the AWS Support Center.
--
-- You have reached the maximum number of active health checks for an AWS account. To request a higher limit, <http://aws.amazon.com/route53-request create a case> with the AWS Support Center.
_TooManyHealthChecks :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyHealthChecks =
  _MatchServiceError route53 "TooManyHealthChecks"

-- | A delegation set with the same owner and caller reference combination has already been created.
_DelegationSetAlreadyCreated :: AsError a => Getting (First ServiceError) a ServiceError
_DelegationSetAlreadyCreated =
  _MatchServiceError
    route53
    "DelegationSetAlreadyCreated"

-- | You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a @DeleteVPCAssociationAuthorization@ request to remove an existing authorization. To get a list of existing authorizations, submit a @ListVPCAssociationAuthorizations@ request.
_TooManyVPCAssociationAuthorizations :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyVPCAssociationAuthorizations =
  _MatchServiceError
    route53
    "TooManyVPCAssociationAuthorizations"
    . hasStatus 400

-- | This operation can't be completed either because the current account has reached the limit on the number of hosted zones or because you've reached the limit on the number of hosted zones that can be associated with a reusable delegation set.
--
--
-- For information about default limits, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits> in the /Amazon Route 53 Developer Guide/ .
--
-- To get the current limit on hosted zones that can be created by an account, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit> .
--
-- To get the current limit on hosted zones that can be associated with a reusable delegation set, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSetLimit.html GetReusableDelegationSetLimit> .
--
-- To request a higher limit, <http://aws.amazon.com/route53-request create a case> with the AWS Support Center.
_TooManyHostedZones :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyHostedZones =
  _MatchServiceError route53 "TooManyHostedZones"
    . hasStatus 400

-- | If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an @HTTP 400 error@ (@Bad request@ ). If Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.
_PriorRequestNotComplete :: AsError a => Getting (First ServiceError) a ServiceError
_PriorRequestNotComplete =
  _MatchServiceError
    route53
    "PriorRequestNotComplete"
    . hasStatus 400

-- | No hosted zone exists with the ID that you specified.
_NoSuchHostedZone :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchHostedZone =
  _MatchServiceError route53 "NoSuchHostedZone"
    . hasStatus 404

-- | You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.
_PublicZoneVPCAssociation :: AsError a => Getting (First ServiceError) a ServiceError
_PublicZoneVPCAssociation =
  _MatchServiceError
    route53
    "PublicZoneVPCAssociation"
    . hasStatus 400

-- | You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the @CreateTrafficPolicy@ or @CreateTrafficPolicyVersion@ request.
_ConflictingTypes :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictingTypes =
  _MatchServiceError route53 "ConflictingTypes"
    . hasStatus 400

-- | Associating the specified VPC with the specified hosted zone has not been authorized.
_NotAuthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_NotAuthorizedException =
  _MatchServiceError route53 "NotAuthorizedException"
    . hasStatus 401

-- | The specified delegation set has already been marked as reusable.
_DelegationSetAlreadyReusable :: AsError a => Getting (First ServiceError) a ServiceError
_DelegationSetAlreadyReusable =
  _MatchServiceError
    route53
    "DelegationSetAlreadyReusable"

-- | Another user submitted a request to create, update, or delete the object at the same time that you did. Retry the request.
_ConcurrentModification :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModification =
  _MatchServiceError route53 "ConcurrentModification"
    . hasStatus 400

-- | A key-signing key (KSK) with @ACTIVE@ status wasn't found.
_KeySigningKeyWithActiveStatusNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_KeySigningKeyWithActiveStatusNotFound =
  _MatchServiceError
    route53
    "KeySigningKeyWithActiveStatusNotFound"

-- | The hosted zone nameservers don't match the parent nameservers. The hosted zone and parent must have the same nameservers.
_HostedZonePartiallyDelegated :: AsError a => Getting (First ServiceError) a ServiceError
_HostedZonePartiallyDelegated =
  _MatchServiceError
    route53
    "HostedZonePartiallyDelegated"

-- | A change with the specified change ID does not exist.
_NoSuchChange :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchChange =
  _MatchServiceError route53 "NoSuchChange"
    . hasStatus 404

-- | Parameter name is not valid.
_InvalidArgument :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidArgument =
  _MatchServiceError route53 "InvalidArgument"

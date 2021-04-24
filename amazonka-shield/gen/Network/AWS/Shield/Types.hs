{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types
  ( -- * Service Configuration
    shield,

    -- * Errors
    _OptimisticLockException,
    _InvalidResourceException,
    _InvalidPaginationTokenException,
    _InvalidOperationException,
    _ResourceAlreadyExistsException,
    _InternalErrorException,
    _NoAssociatedRoleException,
    _InvalidParameterException,
    _AccessDeniedException,
    _LockedSubscriptionException,
    _ResourceNotFoundException,
    _AccessDeniedForDependencyException,
    _LimitsExceededException,

    -- * AttackLayer
    AttackLayer (..),

    -- * AttackPropertyIdentifier
    AttackPropertyIdentifier (..),

    -- * AutoRenew
    AutoRenew (..),

    -- * ProactiveEngagementStatus
    ProactiveEngagementStatus (..),

    -- * ProtectedResourceType
    ProtectedResourceType (..),

    -- * ProtectionGroupAggregation
    ProtectionGroupAggregation (..),

    -- * ProtectionGroupPattern
    ProtectionGroupPattern (..),

    -- * SubResourceType
    SubResourceType (..),

    -- * SubscriptionState
    SubscriptionState (..),

    -- * Unit
    Unit (..),

    -- * AttackDetail
    AttackDetail (..),
    attackDetail,
    adResourceARN,
    adAttackProperties,
    adStartTime,
    adEndTime,
    adAttackCounters,
    adMitigations,
    adAttackId,
    adSubResources,

    -- * AttackProperty
    AttackProperty (..),
    attackProperty,
    apUnit,
    apTotal,
    apAttackPropertyIdentifier,
    apAttackLayer,
    apTopContributors,

    -- * AttackStatisticsDataItem
    AttackStatisticsDataItem (..),
    attackStatisticsDataItem,
    asdiAttackVolume,
    asdiAttackCount,

    -- * AttackSummary
    AttackSummary (..),
    attackSummary,
    asResourceARN,
    asStartTime,
    asEndTime,
    asAttackId,
    asAttackVectors,

    -- * AttackVectorDescription
    AttackVectorDescription (..),
    attackVectorDescription,
    avdVectorType,

    -- * AttackVolume
    AttackVolume (..),
    attackVolume,
    avPacketsPerSecond,
    avBitsPerSecond,
    avRequestsPerSecond,

    -- * AttackVolumeStatistics
    AttackVolumeStatistics (..),
    attackVolumeStatistics,
    avsMax,

    -- * Contributor
    Contributor (..),
    contributor,
    cName,
    cValue,

    -- * EmergencyContact
    EmergencyContact (..),
    emergencyContact,
    ecPhoneNumber,
    ecContactNotes,
    ecEmailAddress,

    -- * Limit
    Limit (..),
    limit,
    lMax,
    lType,

    -- * Mitigation
    Mitigation (..),
    mitigation,
    mMitigationName,

    -- * Protection
    Protection (..),
    protection,
    pResourceARN,
    pId,
    pName,
    pHealthCheckIds,

    -- * ProtectionGroup
    ProtectionGroup (..),
    protectionGroup,
    pgResourceType,
    pgProtectionGroupId,
    pgAggregation,
    pgPattern,
    pgMembers,

    -- * ProtectionGroupArbitraryPatternLimits
    ProtectionGroupArbitraryPatternLimits (..),
    protectionGroupArbitraryPatternLimits,
    pgaplMaxMembers,

    -- * ProtectionGroupLimits
    ProtectionGroupLimits (..),
    protectionGroupLimits,
    pglMaxProtectionGroups,
    pglPatternTypeLimits,

    -- * ProtectionGroupPatternTypeLimits
    ProtectionGroupPatternTypeLimits (..),
    protectionGroupPatternTypeLimits,
    pgptlArbitraryPatternLimits,

    -- * ProtectionLimits
    ProtectionLimits (..),
    protectionLimits,
    plProtectedResourceTypeLimits,

    -- * SubResourceSummary
    SubResourceSummary (..),
    subResourceSummary,
    srsCounters,
    srsId,
    srsType,
    srsAttackVectors,

    -- * Subscription
    Subscription (..),
    subscription,
    sAutoRenew,
    sProactiveEngagementStatus,
    sStartTime,
    sEndTime,
    sLimits,
    sTimeCommitmentInSeconds,
    sSubscriptionLimits,

    -- * SubscriptionLimits
    SubscriptionLimits (..),
    subscriptionLimits,
    slProtectionLimits,
    slProtectionGroupLimits,

    -- * SummarizedAttackVector
    SummarizedAttackVector (..),
    summarizedAttackVector,
    savVectorCounters,
    savVectorType,

    -- * SummarizedCounter
    SummarizedCounter (..),
    summarizedCounter,
    scUnit,
    scN,
    scSum,
    scName,
    scMax,
    scAverage,

    -- * TimeRange
    TimeRange (..),
    timeRange,
    trFromInclusive,
    trToExclusive,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Shield.Types.AttackDetail
import Network.AWS.Shield.Types.AttackLayer
import Network.AWS.Shield.Types.AttackProperty
import Network.AWS.Shield.Types.AttackPropertyIdentifier
import Network.AWS.Shield.Types.AttackStatisticsDataItem
import Network.AWS.Shield.Types.AttackSummary
import Network.AWS.Shield.Types.AttackVectorDescription
import Network.AWS.Shield.Types.AttackVolume
import Network.AWS.Shield.Types.AttackVolumeStatistics
import Network.AWS.Shield.Types.AutoRenew
import Network.AWS.Shield.Types.Contributor
import Network.AWS.Shield.Types.EmergencyContact
import Network.AWS.Shield.Types.Limit
import Network.AWS.Shield.Types.Mitigation
import Network.AWS.Shield.Types.ProactiveEngagementStatus
import Network.AWS.Shield.Types.ProtectedResourceType
import Network.AWS.Shield.Types.Protection
import Network.AWS.Shield.Types.ProtectionGroup
import Network.AWS.Shield.Types.ProtectionGroupAggregation
import Network.AWS.Shield.Types.ProtectionGroupArbitraryPatternLimits
import Network.AWS.Shield.Types.ProtectionGroupLimits
import Network.AWS.Shield.Types.ProtectionGroupPattern
import Network.AWS.Shield.Types.ProtectionGroupPatternTypeLimits
import Network.AWS.Shield.Types.ProtectionLimits
import Network.AWS.Shield.Types.SubResourceSummary
import Network.AWS.Shield.Types.SubResourceType
import Network.AWS.Shield.Types.Subscription
import Network.AWS.Shield.Types.SubscriptionLimits
import Network.AWS.Shield.Types.SubscriptionState
import Network.AWS.Shield.Types.SummarizedAttackVector
import Network.AWS.Shield.Types.SummarizedCounter
import Network.AWS.Shield.Types.TimeRange
import Network.AWS.Shield.Types.Unit
import Network.AWS.Sign.V4

-- | API version @2016-06-02@ of the Amazon Shield SDK configuration.
shield :: Service
shield =
  Service
    { _svcAbbrev = "Shield",
      _svcSigner = v4,
      _svcPrefix = "shield",
      _svcVersion = "2016-06-02",
      _svcEndpoint = defaultEndpoint shield,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Shield",
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

-- | Exception that indicates that the resource state has been modified by another client. Retrieve the resource and then retry your request.
_OptimisticLockException :: AsError a => Getting (First ServiceError) a ServiceError
_OptimisticLockException =
  _MatchServiceError shield "OptimisticLockException"

-- | Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.
_InvalidResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceException =
  _MatchServiceError
    shield
    "InvalidResourceException"

-- | Exception that indicates that the NextToken specified in the request is invalid. Submit the request using the NextToken value that was returned in the response.
_InvalidPaginationTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPaginationTokenException =
  _MatchServiceError
    shield
    "InvalidPaginationTokenException"

-- | Exception that indicates that the operation would not cause any change to occur.
_InvalidOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOperationException =
  _MatchServiceError
    shield
    "InvalidOperationException"

-- | Exception indicating the specified resource already exists. If available, this exception includes details in additional properties.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    shield
    "ResourceAlreadyExistsException"

-- | Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.
_InternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalErrorException =
  _MatchServiceError shield "InternalErrorException"

-- | The ARN of the role that you specifed does not exist.
_NoAssociatedRoleException :: AsError a => Getting (First ServiceError) a ServiceError
_NoAssociatedRoleException =
  _MatchServiceError
    shield
    "NoAssociatedRoleException"

-- | Exception that indicates that the parameters passed to the API are invalid. If available, this exception includes details in additional properties.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    shield
    "InvalidParameterException"

-- | Exception that indicates the specified @AttackId@ does not exist, or the requester does not have the appropriate permissions to access the @AttackId@ .
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError shield "AccessDeniedException"

-- | You are trying to update a subscription that has not yet completed the 1-year commitment. You can change the @AutoRenew@ parameter during the last 30 days of your subscription. This exception indicates that you are attempting to change @AutoRenew@ prior to that period.
_LockedSubscriptionException :: AsError a => Getting (First ServiceError) a ServiceError
_LockedSubscriptionException =
  _MatchServiceError
    shield
    "LockedSubscriptionException"

-- | Exception indicating the specified resource does not exist. If available, this exception includes details in additional properties.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    shield
    "ResourceNotFoundException"

-- | In order to grant the necessary access to the DDoS Response Team (DRT), the user submitting the request must have the @iam:PassRole@ permission. This error indicates the user did not have the appropriate permissions. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html Granting a User Permissions to Pass a Role to an AWS Service> .
_AccessDeniedForDependencyException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedForDependencyException =
  _MatchServiceError
    shield
    "AccessDeniedForDependencyException"

-- | Exception that indicates that the operation would exceed a limit.
--
--
-- @Type@ is the type of limit that would be exceeded.
--
-- @Limit@ is the threshold that would be exceeded.
_LimitsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitsExceededException =
  _MatchServiceError shield "LimitsExceededException"

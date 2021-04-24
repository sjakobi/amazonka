{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Shield Advanced__
--
-- This is the /AWS Shield Advanced API Reference/ . This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF and AWS Shield Developer Guide> .
module Network.AWS.Shield
  ( -- * Service Configuration
    shield,

    -- * Errors
    -- $errors

    -- ** OptimisticLockException
    _OptimisticLockException,

    -- ** InvalidResourceException
    _InvalidResourceException,

    -- ** InvalidPaginationTokenException
    _InvalidPaginationTokenException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InternalErrorException
    _InternalErrorException,

    -- ** NoAssociatedRoleException
    _NoAssociatedRoleException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** LockedSubscriptionException
    _LockedSubscriptionException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** AccessDeniedForDependencyException
    _AccessDeniedForDependencyException,

    -- ** LimitsExceededException
    _LimitsExceededException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateSubscription
    module Network.AWS.Shield.CreateSubscription,

    -- ** DescribeEmergencyContactSettings
    module Network.AWS.Shield.DescribeEmergencyContactSettings,

    -- ** DescribeProtectionGroup
    module Network.AWS.Shield.DescribeProtectionGroup,

    -- ** DescribeSubscription
    module Network.AWS.Shield.DescribeSubscription,

    -- ** AssociateHealthCheck
    module Network.AWS.Shield.AssociateHealthCheck,

    -- ** DescribeDRTAccess
    module Network.AWS.Shield.DescribeDRTAccess,

    -- ** ListResourcesInProtectionGroup
    module Network.AWS.Shield.ListResourcesInProtectionGroup,

    -- ** DisableProactiveEngagement
    module Network.AWS.Shield.DisableProactiveEngagement,

    -- ** EnableProactiveEngagement
    module Network.AWS.Shield.EnableProactiveEngagement,

    -- ** DisassociateDRTLogBucket
    module Network.AWS.Shield.DisassociateDRTLogBucket,

    -- ** UpdateSubscription
    module Network.AWS.Shield.UpdateSubscription,

    -- ** AssociateDRTRole
    module Network.AWS.Shield.AssociateDRTRole,

    -- ** CreateProtection
    module Network.AWS.Shield.CreateProtection,

    -- ** AssociateDRTLogBucket
    module Network.AWS.Shield.AssociateDRTLogBucket,

    -- ** DisassociateDRTRole
    module Network.AWS.Shield.DisassociateDRTRole,

    -- ** ListAttacks (Paginated)
    module Network.AWS.Shield.ListAttacks,

    -- ** DescribeProtection
    module Network.AWS.Shield.DescribeProtection,

    -- ** DescribeAttackStatistics
    module Network.AWS.Shield.DescribeAttackStatistics,

    -- ** DisassociateHealthCheck
    module Network.AWS.Shield.DisassociateHealthCheck,

    -- ** CreateProtectionGroup
    module Network.AWS.Shield.CreateProtectionGroup,

    -- ** ListProtectionGroups
    module Network.AWS.Shield.ListProtectionGroups,

    -- ** DescribeAttack
    module Network.AWS.Shield.DescribeAttack,

    -- ** UpdateEmergencyContactSettings
    module Network.AWS.Shield.UpdateEmergencyContactSettings,

    -- ** DeleteProtectionGroup
    module Network.AWS.Shield.DeleteProtectionGroup,

    -- ** UpdateProtectionGroup
    module Network.AWS.Shield.UpdateProtectionGroup,

    -- ** ListProtections (Paginated)
    module Network.AWS.Shield.ListProtections,

    -- ** DeleteProtection
    module Network.AWS.Shield.DeleteProtection,

    -- ** AssociateProactiveEngagementDetails
    module Network.AWS.Shield.AssociateProactiveEngagementDetails,

    -- ** GetSubscriptionState
    module Network.AWS.Shield.GetSubscriptionState,

    -- * Types

    -- ** AttackLayer
    AttackLayer (..),

    -- ** AttackPropertyIdentifier
    AttackPropertyIdentifier (..),

    -- ** AutoRenew
    AutoRenew (..),

    -- ** ProactiveEngagementStatus
    ProactiveEngagementStatus (..),

    -- ** ProtectedResourceType
    ProtectedResourceType (..),

    -- ** ProtectionGroupAggregation
    ProtectionGroupAggregation (..),

    -- ** ProtectionGroupPattern
    ProtectionGroupPattern (..),

    -- ** SubResourceType
    SubResourceType (..),

    -- ** SubscriptionState
    SubscriptionState (..),

    -- ** Unit
    Unit (..),

    -- ** AttackDetail
    AttackDetail,
    attackDetail,
    adResourceARN,
    adAttackProperties,
    adStartTime,
    adEndTime,
    adAttackCounters,
    adMitigations,
    adAttackId,
    adSubResources,

    -- ** AttackProperty
    AttackProperty,
    attackProperty,
    apUnit,
    apTotal,
    apAttackPropertyIdentifier,
    apAttackLayer,
    apTopContributors,

    -- ** AttackStatisticsDataItem
    AttackStatisticsDataItem,
    attackStatisticsDataItem,
    asdiAttackVolume,
    asdiAttackCount,

    -- ** AttackSummary
    AttackSummary,
    attackSummary,
    asResourceARN,
    asStartTime,
    asEndTime,
    asAttackId,
    asAttackVectors,

    -- ** AttackVectorDescription
    AttackVectorDescription,
    attackVectorDescription,
    avdVectorType,

    -- ** AttackVolume
    AttackVolume,
    attackVolume,
    avPacketsPerSecond,
    avBitsPerSecond,
    avRequestsPerSecond,

    -- ** AttackVolumeStatistics
    AttackVolumeStatistics,
    attackVolumeStatistics,
    avsMax,

    -- ** Contributor
    Contributor,
    contributor,
    cName,
    cValue,

    -- ** EmergencyContact
    EmergencyContact,
    emergencyContact,
    ecPhoneNumber,
    ecContactNotes,
    ecEmailAddress,

    -- ** Limit
    Limit,
    limit,
    lMax,
    lType,

    -- ** Mitigation
    Mitigation,
    mitigation,
    mMitigationName,

    -- ** Protection
    Protection,
    protection,
    pResourceARN,
    pId,
    pName,
    pHealthCheckIds,

    -- ** ProtectionGroup
    ProtectionGroup,
    protectionGroup,
    pgResourceType,
    pgProtectionGroupId,
    pgAggregation,
    pgPattern,
    pgMembers,

    -- ** ProtectionGroupArbitraryPatternLimits
    ProtectionGroupArbitraryPatternLimits,
    protectionGroupArbitraryPatternLimits,
    pgaplMaxMembers,

    -- ** ProtectionGroupLimits
    ProtectionGroupLimits,
    protectionGroupLimits,
    pglMaxProtectionGroups,
    pglPatternTypeLimits,

    -- ** ProtectionGroupPatternTypeLimits
    ProtectionGroupPatternTypeLimits,
    protectionGroupPatternTypeLimits,
    pgptlArbitraryPatternLimits,

    -- ** ProtectionLimits
    ProtectionLimits,
    protectionLimits,
    plProtectedResourceTypeLimits,

    -- ** SubResourceSummary
    SubResourceSummary,
    subResourceSummary,
    srsCounters,
    srsId,
    srsType,
    srsAttackVectors,

    -- ** Subscription
    Subscription,
    subscription,
    sAutoRenew,
    sProactiveEngagementStatus,
    sStartTime,
    sEndTime,
    sLimits,
    sTimeCommitmentInSeconds,
    sSubscriptionLimits,

    -- ** SubscriptionLimits
    SubscriptionLimits,
    subscriptionLimits,
    slProtectionLimits,
    slProtectionGroupLimits,

    -- ** SummarizedAttackVector
    SummarizedAttackVector,
    summarizedAttackVector,
    savVectorCounters,
    savVectorType,

    -- ** SummarizedCounter
    SummarizedCounter,
    summarizedCounter,
    scUnit,
    scN,
    scSum,
    scName,
    scMax,
    scAverage,

    -- ** TimeRange
    TimeRange,
    timeRange,
    trFromInclusive,
    trToExclusive,
  )
where

import Network.AWS.Shield.AssociateDRTLogBucket
import Network.AWS.Shield.AssociateDRTRole
import Network.AWS.Shield.AssociateHealthCheck
import Network.AWS.Shield.AssociateProactiveEngagementDetails
import Network.AWS.Shield.CreateProtection
import Network.AWS.Shield.CreateProtectionGroup
import Network.AWS.Shield.CreateSubscription
import Network.AWS.Shield.DeleteProtection
import Network.AWS.Shield.DeleteProtectionGroup
import Network.AWS.Shield.DescribeAttack
import Network.AWS.Shield.DescribeAttackStatistics
import Network.AWS.Shield.DescribeDRTAccess
import Network.AWS.Shield.DescribeEmergencyContactSettings
import Network.AWS.Shield.DescribeProtection
import Network.AWS.Shield.DescribeProtectionGroup
import Network.AWS.Shield.DescribeSubscription
import Network.AWS.Shield.DisableProactiveEngagement
import Network.AWS.Shield.DisassociateDRTLogBucket
import Network.AWS.Shield.DisassociateDRTRole
import Network.AWS.Shield.DisassociateHealthCheck
import Network.AWS.Shield.EnableProactiveEngagement
import Network.AWS.Shield.GetSubscriptionState
import Network.AWS.Shield.ListAttacks
import Network.AWS.Shield.ListProtectionGroups
import Network.AWS.Shield.ListProtections
import Network.AWS.Shield.ListResourcesInProtectionGroup
import Network.AWS.Shield.Types
import Network.AWS.Shield.UpdateEmergencyContactSettings
import Network.AWS.Shield.UpdateProtectionGroup
import Network.AWS.Shield.UpdateSubscription
import Network.AWS.Shield.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Shield'.

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

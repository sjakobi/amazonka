{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types
  ( -- * Service Configuration
    awsHealth,

    -- * Errors
    _ConcurrentModificationException,
    _InvalidPaginationToken,
    _UnsupportedLocale,

    -- * EntityStatusCode
    EntityStatusCode (..),

    -- * EventAggregateField
    EventAggregateField (..),

    -- * EventScopeCode
    EventScopeCode (..),

    -- * EventStatusCode
    EventStatusCode (..),

    -- * EventTypeCategory
    EventTypeCategory (..),

    -- * AffectedEntity
    AffectedEntity (..),
    affectedEntity,
    aeEventARN,
    aeAwsAccountId,
    aeStatusCode,
    aeTags,
    aeEntityARN,
    aeEntityValue,
    aeEntityURL,
    aeLastUpdatedTime,

    -- * DateTimeRange
    DateTimeRange (..),
    dateTimeRange,
    dtrTo,
    dtrFrom,

    -- * EntityAggregate
    EntityAggregate (..),
    entityAggregate,
    eaEventARN,
    eaCount,

    -- * EntityFilter
    EntityFilter (..),
    entityFilter,
    eEntityARNs,
    eStatusCodes,
    eLastUpdatedTimes,
    eTags,
    eEntityValues,
    eEventARNs,

    -- * Event
    Event (..),
    event,
    eEventTypeCategory,
    eEventScopeCode,
    eStartTime,
    eService,
    eArn,
    eEndTime,
    eAvailabilityZone,
    eStatusCode,
    eEventTypeCode,
    eRegion,
    eLastUpdatedTime,

    -- * EventAccountFilter
    EventAccountFilter (..),
    eventAccountFilter,
    eafAwsAccountId,
    eafEventARN,

    -- * EventAggregate
    EventAggregate (..),
    eventAggregate,
    eCount,
    eAggregateValue,

    -- * EventDescription
    EventDescription (..),
    eventDescription,
    edLatestDescription,

    -- * EventDetails
    EventDetails (..),
    eventDetails,
    edEventMetadata,
    edEventDescription,
    edEvent,

    -- * EventDetailsErrorItem
    EventDetailsErrorItem (..),
    eventDetailsErrorItem,
    edeiErrorName,
    edeiEventARN,
    edeiErrorMessage,

    -- * EventFilter
    EventFilter (..),
    eventFilter,
    efAvailabilityZones,
    efEndTimes,
    efStartTimes,
    efServices,
    efEntityARNs,
    efEventTypeCodes,
    efLastUpdatedTimes,
    efTags,
    efEventStatusCodes,
    efEntityValues,
    efRegions,
    efEventARNs,
    efEventTypeCategories,

    -- * EventType
    EventType (..),
    eventType,
    etCategory,
    etCode,
    etService,

    -- * EventTypeFilter
    EventTypeFilter (..),
    eventTypeFilter,
    etfServices,
    etfEventTypeCodes,
    etfEventTypeCategories,

    -- * OrganizationAffectedEntitiesErrorItem
    OrganizationAffectedEntitiesErrorItem (..),
    organizationAffectedEntitiesErrorItem,
    oaeeiErrorName,
    oaeeiEventARN,
    oaeeiAwsAccountId,
    oaeeiErrorMessage,

    -- * OrganizationEvent
    OrganizationEvent (..),
    organizationEvent,
    oeEventTypeCategory,
    oeEventScopeCode,
    oeStartTime,
    oeService,
    oeArn,
    oeEndTime,
    oeStatusCode,
    oeEventTypeCode,
    oeRegion,
    oeLastUpdatedTime,

    -- * OrganizationEventDetails
    OrganizationEventDetails (..),
    organizationEventDetails,
    oedAwsAccountId,
    oedEventMetadata,
    oedEventDescription,
    oedEvent,

    -- * OrganizationEventDetailsErrorItem
    OrganizationEventDetailsErrorItem (..),
    organizationEventDetailsErrorItem,
    oedeiErrorName,
    oedeiEventARN,
    oedeiAwsAccountId,
    oedeiErrorMessage,

    -- * OrganizationEventFilter
    OrganizationEventFilter (..),
    organizationEventFilter,
    oefServices,
    oefStartTime,
    oefEntityARNs,
    oefEventTypeCodes,
    oefEndTime,
    oefEventStatusCodes,
    oefEntityValues,
    oefRegions,
    oefEventTypeCategories,
    oefAwsAccountIds,
    oefLastUpdatedTime,
  )
where

import Network.AWS.AWSHealth.Types.AffectedEntity
import Network.AWS.AWSHealth.Types.DateTimeRange
import Network.AWS.AWSHealth.Types.EntityAggregate
import Network.AWS.AWSHealth.Types.EntityFilter
import Network.AWS.AWSHealth.Types.EntityStatusCode
import Network.AWS.AWSHealth.Types.Event
import Network.AWS.AWSHealth.Types.EventAccountFilter
import Network.AWS.AWSHealth.Types.EventAggregate
import Network.AWS.AWSHealth.Types.EventAggregateField
import Network.AWS.AWSHealth.Types.EventDescription
import Network.AWS.AWSHealth.Types.EventDetails
import Network.AWS.AWSHealth.Types.EventDetailsErrorItem
import Network.AWS.AWSHealth.Types.EventFilter
import Network.AWS.AWSHealth.Types.EventScopeCode
import Network.AWS.AWSHealth.Types.EventStatusCode
import Network.AWS.AWSHealth.Types.EventType
import Network.AWS.AWSHealth.Types.EventTypeCategory
import Network.AWS.AWSHealth.Types.EventTypeFilter
import Network.AWS.AWSHealth.Types.OrganizationAffectedEntitiesErrorItem
import Network.AWS.AWSHealth.Types.OrganizationEvent
import Network.AWS.AWSHealth.Types.OrganizationEventDetails
import Network.AWS.AWSHealth.Types.OrganizationEventDetailsErrorItem
import Network.AWS.AWSHealth.Types.OrganizationEventFilter
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-08-04@ of the Amazon Health APIs and Notifications SDK configuration.
awsHealth :: Service
awsHealth =
  Service
    { _svcAbbrev = "AWSHealth",
      _svcSigner = v4,
      _svcPrefix = "health",
      _svcVersion = "2016-08-04",
      _svcEndpoint = defaultEndpoint awsHealth,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "AWSHealth",
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

-- | <https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html EnableHealthServiceAccessForOrganization> is already in progress. Wait for the action to complete before trying again. To get the current status, use the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeHealthServiceStatusForOrganization.html DescribeHealthServiceStatusForOrganization> operation.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    awsHealth
    "ConcurrentModificationException"

-- | The specified pagination token (@nextToken@ ) is not valid.
_InvalidPaginationToken :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPaginationToken =
  _MatchServiceError
    awsHealth
    "InvalidPaginationToken"

-- | The specified locale is not supported.
_UnsupportedLocale :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedLocale =
  _MatchServiceError awsHealth "UnsupportedLocale"

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Health__
--
-- The AWS Health API provides programmatic access to the AWS Health information that appears in the <https://phd.aws.amazon.com/phd/home#/ AWS Personal Health Dashboard> . You can use the API operations to get information about AWS Health events that affect your AWS services and resources.
--
-- AWS Health has a single endpoint: health.us-east-1.amazonaws.com (HTTPS). Use this endpoint to call the AWS Health API operations.
--
-- For authentication of requests, AWS Health uses the <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process> .
--
-- If your AWS account is part of AWS Organizations, you can use the AWS Health organizational view feature. This feature provides a centralized view of AWS Health events across all accounts in your organization. You can aggregate AWS Health events in real time to identify accounts in your organization that are affected by an operational event or get notified of security vulnerabilities. Use the organizational view API operations to enable this feature and return event information. For more information, see <https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html Aggregating AWS Health events> in the /AWS Health User Guide/ .
module Network.AWS.AWSHealth
  ( -- * Service Configuration
    awsHealth,

    -- * Errors
    -- $errors

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidPaginationToken
    _InvalidPaginationToken,

    -- ** UnsupportedLocale
    _UnsupportedLocale,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** EnableHealthServiceAccessForOrganization
    module Network.AWS.AWSHealth.EnableHealthServiceAccessForOrganization,

    -- ** DescribeEntityAggregates
    module Network.AWS.AWSHealth.DescribeEntityAggregates,

    -- ** DisableHealthServiceAccessForOrganization
    module Network.AWS.AWSHealth.DisableHealthServiceAccessForOrganization,

    -- ** DescribeEventDetailsForOrganization
    module Network.AWS.AWSHealth.DescribeEventDetailsForOrganization,

    -- ** DescribeEventDetails
    module Network.AWS.AWSHealth.DescribeEventDetails,

    -- ** DescribeAffectedAccountsForOrganization (Paginated)
    module Network.AWS.AWSHealth.DescribeAffectedAccountsForOrganization,

    -- ** DescribeAffectedEntitiesForOrganization (Paginated)
    module Network.AWS.AWSHealth.DescribeAffectedEntitiesForOrganization,

    -- ** DescribeEvents (Paginated)
    module Network.AWS.AWSHealth.DescribeEvents,

    -- ** DescribeEventAggregates (Paginated)
    module Network.AWS.AWSHealth.DescribeEventAggregates,

    -- ** DescribeHealthServiceStatusForOrganization
    module Network.AWS.AWSHealth.DescribeHealthServiceStatusForOrganization,

    -- ** DescribeEventTypes (Paginated)
    module Network.AWS.AWSHealth.DescribeEventTypes,

    -- ** DescribeAffectedEntities (Paginated)
    module Network.AWS.AWSHealth.DescribeAffectedEntities,

    -- ** DescribeEventsForOrganization (Paginated)
    module Network.AWS.AWSHealth.DescribeEventsForOrganization,

    -- * Types

    -- ** EntityStatusCode
    EntityStatusCode (..),

    -- ** EventAggregateField
    EventAggregateField (..),

    -- ** EventScopeCode
    EventScopeCode (..),

    -- ** EventStatusCode
    EventStatusCode (..),

    -- ** EventTypeCategory
    EventTypeCategory (..),

    -- ** AffectedEntity
    AffectedEntity,
    affectedEntity,
    aeEventARN,
    aeAwsAccountId,
    aeStatusCode,
    aeTags,
    aeEntityARN,
    aeEntityValue,
    aeEntityURL,
    aeLastUpdatedTime,

    -- ** DateTimeRange
    DateTimeRange,
    dateTimeRange,
    dtrTo,
    dtrFrom,

    -- ** EntityAggregate
    EntityAggregate,
    entityAggregate,
    eaEventARN,
    eaCount,

    -- ** EntityFilter
    EntityFilter,
    entityFilter,
    eEntityARNs,
    eStatusCodes,
    eLastUpdatedTimes,
    eTags,
    eEntityValues,
    eEventARNs,

    -- ** Event
    Event,
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

    -- ** EventAccountFilter
    EventAccountFilter,
    eventAccountFilter,
    eafAwsAccountId,
    eafEventARN,

    -- ** EventAggregate
    EventAggregate,
    eventAggregate,
    eCount,
    eAggregateValue,

    -- ** EventDescription
    EventDescription,
    eventDescription,
    edLatestDescription,

    -- ** EventDetails
    EventDetails,
    eventDetails,
    edEventMetadata,
    edEventDescription,
    edEvent,

    -- ** EventDetailsErrorItem
    EventDetailsErrorItem,
    eventDetailsErrorItem,
    edeiErrorName,
    edeiEventARN,
    edeiErrorMessage,

    -- ** EventFilter
    EventFilter,
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

    -- ** EventType
    EventType,
    eventType,
    etCategory,
    etCode,
    etService,

    -- ** EventTypeFilter
    EventTypeFilter,
    eventTypeFilter,
    etfServices,
    etfEventTypeCodes,
    etfEventTypeCategories,

    -- ** OrganizationAffectedEntitiesErrorItem
    OrganizationAffectedEntitiesErrorItem,
    organizationAffectedEntitiesErrorItem,
    oaeeiErrorName,
    oaeeiEventARN,
    oaeeiAwsAccountId,
    oaeeiErrorMessage,

    -- ** OrganizationEvent
    OrganizationEvent,
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

    -- ** OrganizationEventDetails
    OrganizationEventDetails,
    organizationEventDetails,
    oedAwsAccountId,
    oedEventMetadata,
    oedEventDescription,
    oedEvent,

    -- ** OrganizationEventDetailsErrorItem
    OrganizationEventDetailsErrorItem,
    organizationEventDetailsErrorItem,
    oedeiErrorName,
    oedeiEventARN,
    oedeiAwsAccountId,
    oedeiErrorMessage,

    -- ** OrganizationEventFilter
    OrganizationEventFilter,
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

import Network.AWS.AWSHealth.DescribeAffectedAccountsForOrganization
import Network.AWS.AWSHealth.DescribeAffectedEntities
import Network.AWS.AWSHealth.DescribeAffectedEntitiesForOrganization
import Network.AWS.AWSHealth.DescribeEntityAggregates
import Network.AWS.AWSHealth.DescribeEventAggregates
import Network.AWS.AWSHealth.DescribeEventDetails
import Network.AWS.AWSHealth.DescribeEventDetailsForOrganization
import Network.AWS.AWSHealth.DescribeEventTypes
import Network.AWS.AWSHealth.DescribeEvents
import Network.AWS.AWSHealth.DescribeEventsForOrganization
import Network.AWS.AWSHealth.DescribeHealthServiceStatusForOrganization
import Network.AWS.AWSHealth.DisableHealthServiceAccessForOrganization
import Network.AWS.AWSHealth.EnableHealthServiceAccessForOrganization
import Network.AWS.AWSHealth.Types
import Network.AWS.AWSHealth.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AWSHealth'.

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

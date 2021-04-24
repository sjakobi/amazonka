{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS CloudTrail__
--
-- This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.
--
-- CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.
--
-- See the <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html AWS CloudTrail User Guide> for information about the data that is included with each AWS API call listed in the log files.
module Network.AWS.CloudTrail
  ( -- * Service Configuration
    cloudTrail,

    -- * Errors
    -- $errors

    -- ** InsufficientDependencyServiceAccessPermissionException
    _InsufficientDependencyServiceAccessPermissionException,

    -- ** InvalidCloudWatchLogsLogGroupARNException
    _InvalidCloudWatchLogsLogGroupARNException,

    -- ** TrailNotProvidedException
    _TrailNotProvidedException,

    -- ** MaximumNumberOfTrailsExceededException
    _MaximumNumberOfTrailsExceededException,

    -- ** NotOrganizationMasterAccountException
    _NotOrganizationMasterAccountException,

    -- ** InsightNotEnabledException
    _InsightNotEnabledException,

    -- ** KMSKeyNotFoundException
    _KMSKeyNotFoundException,

    -- ** ResourceTypeNotSupportedException
    _ResourceTypeNotSupportedException,

    -- ** InvalidS3PrefixException
    _InvalidS3PrefixException,

    -- ** InvalidParameterCombinationException
    _InvalidParameterCombinationException,

    -- ** InvalidInsightSelectorsException
    _InvalidInsightSelectorsException,

    -- ** InvalidLookupAttributesException
    _InvalidLookupAttributesException,

    -- ** OrganizationNotInAllFeaturesModeException
    _OrganizationNotInAllFeaturesModeException,

    -- ** TrailAlreadyExistsException
    _TrailAlreadyExistsException,

    -- ** TagsLimitExceededException
    _TagsLimitExceededException,

    -- ** KMSKeyDisabledException
    _KMSKeyDisabledException,

    -- ** OperationNotPermittedException
    _OperationNotPermittedException,

    -- ** InvalidTagParameterException
    _InvalidTagParameterException,

    -- ** InsufficientEncryptionPolicyException
    _InsufficientEncryptionPolicyException,

    -- ** InsufficientSNSTopicPolicyException
    _InsufficientSNSTopicPolicyException,

    -- ** S3BucketDoesNotExistException
    _S3BucketDoesNotExistException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** CloudTrailInvalidClientTokenIdException
    _CloudTrailInvalidClientTokenIdException,

    -- ** InvalidS3BucketNameException
    _InvalidS3BucketNameException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** InvalidTimeRangeException
    _InvalidTimeRangeException,

    -- ** InsufficientS3BucketPolicyException
    _InsufficientS3BucketPolicyException,

    -- ** InvalidEventSelectorsException
    _InvalidEventSelectorsException,

    -- ** ConflictException
    _ConflictException,

    -- ** InvalidKMSKeyIdException
    _InvalidKMSKeyIdException,

    -- ** InvalidHomeRegionException
    _InvalidHomeRegionException,

    -- ** TrailNotFoundException
    _TrailNotFoundException,

    -- ** CloudWatchLogsDeliveryUnavailableException
    _CloudWatchLogsDeliveryUnavailableException,

    -- ** OrganizationsNotInUseException
    _OrganizationsNotInUseException,

    -- ** InvalidSNSTopicNameException
    _InvalidSNSTopicNameException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidTrailNameException
    _InvalidTrailNameException,

    -- ** InvalidMaxResultsException
    _InvalidMaxResultsException,

    -- ** CloudTrailAccessNotEnabledException
    _CloudTrailAccessNotEnabledException,

    -- ** InvalidCloudWatchLogsRoleARNException
    _InvalidCloudWatchLogsRoleARNException,

    -- ** CloudTrailARNInvalidException
    _CloudTrailARNInvalidException,

    -- ** InvalidTokenException
    _InvalidTokenException,

    -- ** InvalidEventCategoryException
    _InvalidEventCategoryException,

    -- ** KMSException
    _KMSException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** RemoveTags
    module Network.AWS.CloudTrail.RemoveTags,

    -- ** ListPublicKeys (Paginated)
    module Network.AWS.CloudTrail.ListPublicKeys,

    -- ** GetEventSelectors
    module Network.AWS.CloudTrail.GetEventSelectors,

    -- ** DescribeTrails
    module Network.AWS.CloudTrail.DescribeTrails,

    -- ** CreateTrail
    module Network.AWS.CloudTrail.CreateTrail,

    -- ** PutEventSelectors
    module Network.AWS.CloudTrail.PutEventSelectors,

    -- ** AddTags
    module Network.AWS.CloudTrail.AddTags,

    -- ** GetTrail
    module Network.AWS.CloudTrail.GetTrail,

    -- ** PutInsightSelectors
    module Network.AWS.CloudTrail.PutInsightSelectors,

    -- ** GetInsightSelectors
    module Network.AWS.CloudTrail.GetInsightSelectors,

    -- ** StopLogging
    module Network.AWS.CloudTrail.StopLogging,

    -- ** DeleteTrail
    module Network.AWS.CloudTrail.DeleteTrail,

    -- ** StartLogging
    module Network.AWS.CloudTrail.StartLogging,

    -- ** UpdateTrail
    module Network.AWS.CloudTrail.UpdateTrail,

    -- ** ListTags (Paginated)
    module Network.AWS.CloudTrail.ListTags,

    -- ** ListTrails (Paginated)
    module Network.AWS.CloudTrail.ListTrails,

    -- ** GetTrailStatus
    module Network.AWS.CloudTrail.GetTrailStatus,

    -- ** LookupEvents (Paginated)
    module Network.AWS.CloudTrail.LookupEvents,

    -- * Types

    -- ** EventCategory
    EventCategory (..),

    -- ** InsightType
    InsightType (..),

    -- ** LookupAttributeKey
    LookupAttributeKey (..),

    -- ** ReadWriteType
    ReadWriteType (..),

    -- ** AdvancedEventSelector
    AdvancedEventSelector,
    advancedEventSelector,
    aesName,
    aesFieldSelectors,

    -- ** AdvancedFieldSelector
    AdvancedFieldSelector,
    advancedFieldSelector,
    afsNotStartsWith,
    afsNotEndsWith,
    afsNotEquals,
    afsEquals,
    afsStartsWith,
    afsEndsWith,
    afsField,

    -- ** DataResource
    DataResource,
    dataResource,
    drValues,
    drType,

    -- ** Event
    Event,
    event,
    eCloudTrailEvent,
    eEventId,
    eEventSource,
    eReadOnly,
    eEventName,
    eResources,
    eEventTime,
    eAccessKeyId,
    eUsername,

    -- ** EventSelector
    EventSelector,
    eventSelector,
    esReadWriteType,
    esExcludeManagementEventSources,
    esIncludeManagementEvents,
    esDataResources,

    -- ** InsightSelector
    InsightSelector,
    insightSelector,
    isInsightType,

    -- ** LookupAttribute
    LookupAttribute,
    lookupAttribute,
    laAttributeKey,
    laAttributeValue,

    -- ** PublicKey
    PublicKey,
    publicKey,
    pkValidityStartTime,
    pkValue,
    pkValidityEndTime,
    pkFingerprint,

    -- ** Resource
    Resource,
    resource,
    rResourceType,
    rResourceName,

    -- ** ResourceTag
    ResourceTag,
    resourceTag,
    rResourceId,
    rTagsList,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** Trail
    Trail,
    trail,
    tTrailARN,
    tLogFileValidationEnabled,
    tIsOrganizationTrail,
    tHasCustomEventSelectors,
    tSNSTopicName,
    tIncludeGlobalServiceEvents,
    tHomeRegion,
    tKMSKeyId,
    tS3KeyPrefix,
    tName,
    tCloudWatchLogsLogGroupARN,
    tIsMultiRegionTrail,
    tS3BucketName,
    tCloudWatchLogsRoleARN,
    tSNSTopicARN,
    tHasInsightSelectors,

    -- ** TrailInfo
    TrailInfo,
    trailInfo,
    tiTrailARN,
    tiHomeRegion,
    tiName,
  )
where

import Network.AWS.CloudTrail.AddTags
import Network.AWS.CloudTrail.CreateTrail
import Network.AWS.CloudTrail.DeleteTrail
import Network.AWS.CloudTrail.DescribeTrails
import Network.AWS.CloudTrail.GetEventSelectors
import Network.AWS.CloudTrail.GetInsightSelectors
import Network.AWS.CloudTrail.GetTrail
import Network.AWS.CloudTrail.GetTrailStatus
import Network.AWS.CloudTrail.ListPublicKeys
import Network.AWS.CloudTrail.ListTags
import Network.AWS.CloudTrail.ListTrails
import Network.AWS.CloudTrail.LookupEvents
import Network.AWS.CloudTrail.PutEventSelectors
import Network.AWS.CloudTrail.PutInsightSelectors
import Network.AWS.CloudTrail.RemoveTags
import Network.AWS.CloudTrail.StartLogging
import Network.AWS.CloudTrail.StopLogging
import Network.AWS.CloudTrail.Types
import Network.AWS.CloudTrail.UpdateTrail
import Network.AWS.CloudTrail.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudTrail'.

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

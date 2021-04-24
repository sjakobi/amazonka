{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaStore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An AWS Elemental MediaStore container is a namespace that holds folders and objects. You use a container endpoint to create, read, and delete objects.
module Network.AWS.MediaStore
  ( -- * Service Configuration
    mediaStore,

    -- * Errors
    -- $errors

    -- ** ContainerInUseException
    _ContainerInUseException,

    -- ** InternalServerError
    _InternalServerError,

    -- ** PolicyNotFoundException
    _PolicyNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** CORSPolicyNotFoundException
    _CORSPolicyNotFoundException,

    -- ** ContainerNotFoundException
    _ContainerNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** PutLifecyclePolicy
    module Network.AWS.MediaStore.PutLifecyclePolicy,

    -- ** PutCORSPolicy
    module Network.AWS.MediaStore.PutCORSPolicy,

    -- ** PutContainerPolicy
    module Network.AWS.MediaStore.PutContainerPolicy,

    -- ** DeleteContainer
    module Network.AWS.MediaStore.DeleteContainer,

    -- ** GetCORSPolicy
    module Network.AWS.MediaStore.GetCORSPolicy,

    -- ** UntagResource
    module Network.AWS.MediaStore.UntagResource,

    -- ** TagResource
    module Network.AWS.MediaStore.TagResource,

    -- ** DeleteMetricPolicy
    module Network.AWS.MediaStore.DeleteMetricPolicy,

    -- ** DescribeContainer
    module Network.AWS.MediaStore.DescribeContainer,

    -- ** GetMetricPolicy
    module Network.AWS.MediaStore.GetMetricPolicy,

    -- ** StartAccessLogging
    module Network.AWS.MediaStore.StartAccessLogging,

    -- ** DeleteLifecyclePolicy
    module Network.AWS.MediaStore.DeleteLifecyclePolicy,

    -- ** StopAccessLogging
    module Network.AWS.MediaStore.StopAccessLogging,

    -- ** DeleteCORSPolicy
    module Network.AWS.MediaStore.DeleteCORSPolicy,

    -- ** GetContainerPolicy
    module Network.AWS.MediaStore.GetContainerPolicy,

    -- ** DeleteContainerPolicy
    module Network.AWS.MediaStore.DeleteContainerPolicy,

    -- ** ListContainers (Paginated)
    module Network.AWS.MediaStore.ListContainers,

    -- ** CreateContainer
    module Network.AWS.MediaStore.CreateContainer,

    -- ** GetLifecyclePolicy
    module Network.AWS.MediaStore.GetLifecyclePolicy,

    -- ** PutMetricPolicy
    module Network.AWS.MediaStore.PutMetricPolicy,

    -- ** ListTagsForResource
    module Network.AWS.MediaStore.ListTagsForResource,

    -- * Types

    -- ** ContainerLevelMetrics
    ContainerLevelMetrics (..),

    -- ** ContainerStatus
    ContainerStatus (..),

    -- ** MethodName
    MethodName (..),

    -- ** CORSRule
    CORSRule,
    corsRule,
    crAllowedMethods,
    crMaxAgeSeconds,
    crExposeHeaders,
    crAllowedOrigins,
    crAllowedHeaders,

    -- ** Container
    Container,
    container,
    cStatus,
    cCreationTime,
    cARN,
    cAccessLoggingEnabled,
    cName,
    cEndpoint,

    -- ** MetricPolicy
    MetricPolicy,
    metricPolicy,
    mpMetricPolicyRules,
    mpContainerLevelMetrics,

    -- ** MetricPolicyRule
    MetricPolicyRule,
    metricPolicyRule,
    mprObjectGroup,
    mprObjectGroupName,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,
  )
where

import Network.AWS.MediaStore.CreateContainer
import Network.AWS.MediaStore.DeleteCORSPolicy
import Network.AWS.MediaStore.DeleteContainer
import Network.AWS.MediaStore.DeleteContainerPolicy
import Network.AWS.MediaStore.DeleteLifecyclePolicy
import Network.AWS.MediaStore.DeleteMetricPolicy
import Network.AWS.MediaStore.DescribeContainer
import Network.AWS.MediaStore.GetCORSPolicy
import Network.AWS.MediaStore.GetContainerPolicy
import Network.AWS.MediaStore.GetLifecyclePolicy
import Network.AWS.MediaStore.GetMetricPolicy
import Network.AWS.MediaStore.ListContainers
import Network.AWS.MediaStore.ListTagsForResource
import Network.AWS.MediaStore.PutCORSPolicy
import Network.AWS.MediaStore.PutContainerPolicy
import Network.AWS.MediaStore.PutLifecyclePolicy
import Network.AWS.MediaStore.PutMetricPolicy
import Network.AWS.MediaStore.StartAccessLogging
import Network.AWS.MediaStore.StopAccessLogging
import Network.AWS.MediaStore.TagResource
import Network.AWS.MediaStore.Types
import Network.AWS.MediaStore.UntagResource
import Network.AWS.MediaStore.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MediaStore'.

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

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Resource Groups Tagging API__
module Network.AWS.ResourceGroupsTagging
  ( -- * Service Configuration
    resourceGroupsTagging,

    -- * Errors
    -- $errors

    -- ** PaginationTokenExpiredException
    _PaginationTokenExpiredException,

    -- ** ThrottledException
    _ThrottledException,

    -- ** ConstraintViolationException
    _ConstraintViolationException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidParameterException
    _InvalidParameterException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetComplianceSummary (Paginated)
    module Network.AWS.ResourceGroupsTagging.GetComplianceSummary,

    -- ** StartReportCreation
    module Network.AWS.ResourceGroupsTagging.StartReportCreation,

    -- ** TagResources
    module Network.AWS.ResourceGroupsTagging.TagResources,

    -- ** GetTagKeys (Paginated)
    module Network.AWS.ResourceGroupsTagging.GetTagKeys,

    -- ** DescribeReportCreation
    module Network.AWS.ResourceGroupsTagging.DescribeReportCreation,

    -- ** GetResources (Paginated)
    module Network.AWS.ResourceGroupsTagging.GetResources,

    -- ** GetTagValues (Paginated)
    module Network.AWS.ResourceGroupsTagging.GetTagValues,

    -- ** UntagResources
    module Network.AWS.ResourceGroupsTagging.UntagResources,

    -- * Types

    -- ** GroupByAttribute
    GroupByAttribute (..),

    -- ** ResourceErrorCode
    ResourceErrorCode (..),

    -- ** TargetIdType
    TargetIdType (..),

    -- ** ComplianceDetails
    ComplianceDetails,
    complianceDetails,
    cdComplianceStatus,
    cdNoncompliantKeys,
    cdKeysWithNoncompliantValues,

    -- ** FailureInfo
    FailureInfo,
    failureInfo,
    fiStatusCode,
    fiErrorMessage,
    fiErrorCode,

    -- ** ResourceTagMapping
    ResourceTagMapping,
    resourceTagMapping,
    rtmResourceARN,
    rtmComplianceDetails,
    rtmTags,

    -- ** Summary
    Summary,
    summary,
    sTargetId,
    sResourceType,
    sLastUpdated,
    sTargetIdType,
    sNonCompliantResources,
    sRegion,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TagFilter
    TagFilter,
    tagFilter,
    tfKey,
    tfValues,
  )
where

import Network.AWS.ResourceGroupsTagging.DescribeReportCreation
import Network.AWS.ResourceGroupsTagging.GetComplianceSummary
import Network.AWS.ResourceGroupsTagging.GetResources
import Network.AWS.ResourceGroupsTagging.GetTagKeys
import Network.AWS.ResourceGroupsTagging.GetTagValues
import Network.AWS.ResourceGroupsTagging.StartReportCreation
import Network.AWS.ResourceGroupsTagging.TagResources
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.ResourceGroupsTagging.UntagResources
import Network.AWS.ResourceGroupsTagging.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ResourceGroupsTagging'.

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

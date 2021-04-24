{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types
  ( -- * Service Configuration
    resourceGroupsTagging,

    -- * Errors
    _PaginationTokenExpiredException,
    _ThrottledException,
    _ConstraintViolationException,
    _InternalServiceException,
    _ConcurrentModificationException,
    _InvalidParameterException,

    -- * GroupByAttribute
    GroupByAttribute (..),

    -- * ResourceErrorCode
    ResourceErrorCode (..),

    -- * TargetIdType
    TargetIdType (..),

    -- * ComplianceDetails
    ComplianceDetails (..),
    complianceDetails,
    cdComplianceStatus,
    cdNoncompliantKeys,
    cdKeysWithNoncompliantValues,

    -- * FailureInfo
    FailureInfo (..),
    failureInfo,
    fiStatusCode,
    fiErrorMessage,
    fiErrorCode,

    -- * ResourceTagMapping
    ResourceTagMapping (..),
    resourceTagMapping,
    rtmResourceARN,
    rtmComplianceDetails,
    rtmTags,

    -- * Summary
    Summary (..),
    summary,
    sTargetId,
    sResourceType,
    sLastUpdated,
    sTargetIdType,
    sNonCompliantResources,
    sRegion,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TagFilter
    TagFilter (..),
    tagFilter,
    tfKey,
    tfValues,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroupsTagging.Types.ComplianceDetails
import Network.AWS.ResourceGroupsTagging.Types.FailureInfo
import Network.AWS.ResourceGroupsTagging.Types.GroupByAttribute
import Network.AWS.ResourceGroupsTagging.Types.ResourceErrorCode
import Network.AWS.ResourceGroupsTagging.Types.ResourceTagMapping
import Network.AWS.ResourceGroupsTagging.Types.Summary
import Network.AWS.ResourceGroupsTagging.Types.Tag
import Network.AWS.ResourceGroupsTagging.Types.TagFilter
import Network.AWS.ResourceGroupsTagging.Types.TargetIdType
import Network.AWS.Sign.V4

-- | API version @2017-01-26@ of the Amazon Resource Groups Tagging API SDK configuration.
resourceGroupsTagging :: Service
resourceGroupsTagging =
  Service
    { _svcAbbrev = "ResourceGroupsTagging",
      _svcSigner = v4,
      _svcPrefix = "tagging",
      _svcVersion = "2017-01-26",
      _svcEndpoint = defaultEndpoint resourceGroupsTagging,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ResourceGroupsTagging",
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

-- | A @PaginationToken@ is valid for a maximum of 15 minutes. Your request was denied because the specified @PaginationToken@ has expired.
_PaginationTokenExpiredException :: AsError a => Getting (First ServiceError) a ServiceError
_PaginationTokenExpiredException =
  _MatchServiceError
    resourceGroupsTagging
    "PaginationTokenExpiredException"

-- | The request was denied to limit the frequency of submitted requests.
_ThrottledException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottledException =
  _MatchServiceError
    resourceGroupsTagging
    "ThrottledException"

-- | The request was denied because performing this operation violates a constraint.
--
--
-- Some of the reasons in the following list might not apply to this specific operation.
--
--     * You must meet the prerequisites for using tag policies. For information, see <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html Prerequisites and Permissions for Using Tag Policies> in the /AWS Organizations User Guide./
--
--     * You must enable the tag policies service principal (@tagpolicies.tag.amazonaws.com@ ) to integrate with AWS Organizations For information, see <http://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html EnableAWSServiceAccess> .
--
--     * You must have a tag policy attached to the organization root, an OU, or an account.
_ConstraintViolationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConstraintViolationException =
  _MatchServiceError
    resourceGroupsTagging
    "ConstraintViolationException"

-- | The request processing failed because of an unknown error, exception, or failure. You can retry the request.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    resourceGroupsTagging
    "InternalServiceException"

-- | The target of the operation is currently being modified by a different request. Try again later.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    resourceGroupsTagging
    "ConcurrentModificationException"

-- | This error indicates one of the following:
--
--
--     * A parameter is missing.
--
--     * A malformed string was supplied for the request parameter.
--
--     * An out-of-range value was supplied for the request parameter.
--
--     * The target ID is invalid, unsupported, or doesn't exist.
--
--     * You can't access the Amazon S3 bucket for report storage. For more information, see <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report Additional Requirements for Organization-wide Tag Compliance Reports> in the /AWS Organizations User Guide./
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError
    resourceGroupsTagging
    "InvalidParameterException"

{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types
  ( -- * Service Configuration
    resourceGroups,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _UnauthorizedException,
    _InternalServerErrorException,
    _ForbiddenException,
    _MethodNotAllowedException,
    _TooManyRequestsException,

    -- * GroupConfigurationStatus
    GroupConfigurationStatus (..),

    -- * GroupFilterName
    GroupFilterName (..),

    -- * QueryErrorCode
    QueryErrorCode (..),

    -- * QueryType
    QueryType (..),

    -- * ResourceFilterName
    ResourceFilterName (..),

    -- * ResourceStatusValue
    ResourceStatusValue (..),

    -- * FailedResource
    FailedResource (..),
    failedResource,
    frResourceARN,
    frErrorMessage,
    frErrorCode,

    -- * Group
    Group (..),
    group',
    gDescription,
    gGroupARN,
    gName,

    -- * GroupConfiguration
    GroupConfiguration (..),
    groupConfiguration,
    gcStatus,
    gcConfiguration,
    gcFailureReason,
    gcProposedConfiguration,

    -- * GroupConfigurationItem
    GroupConfigurationItem (..),
    groupConfigurationItem,
    gciParameters,
    gciType,

    -- * GroupConfigurationParameter
    GroupConfigurationParameter (..),
    groupConfigurationParameter,
    gcpValues,
    gcpName,

    -- * GroupFilter
    GroupFilter (..),
    groupFilter,
    gfName,
    gfValues,

    -- * GroupIdentifier
    GroupIdentifier (..),
    groupIdentifier,
    giGroupName,
    giGroupARN,

    -- * GroupQuery
    GroupQuery (..),
    groupQuery,
    gqGroupName,
    gqResourceQuery,

    -- * ListGroupResourcesItem
    ListGroupResourcesItem (..),
    listGroupResourcesItem,
    lgriStatus,
    lgriIdentifier,

    -- * PendingResource
    PendingResource (..),
    pendingResource,
    prResourceARN,

    -- * QueryError
    QueryError (..),
    queryError,
    qeMessage,
    qeErrorCode,

    -- * ResourceFilter
    ResourceFilter (..),
    resourceFilter,
    rfName,
    rfValues,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    resourceIdentifier,
    riResourceARN,
    riResourceType,

    -- * ResourceQuery
    ResourceQuery (..),
    resourceQuery,
    rqType,
    rqSearchQuery,

    -- * ResourceStatus
    ResourceStatus (..),
    resourceStatus,
    rsName,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroups.Types.FailedResource
import Network.AWS.ResourceGroups.Types.Group
import Network.AWS.ResourceGroups.Types.GroupConfiguration
import Network.AWS.ResourceGroups.Types.GroupConfigurationItem
import Network.AWS.ResourceGroups.Types.GroupConfigurationParameter
import Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
import Network.AWS.ResourceGroups.Types.GroupFilter
import Network.AWS.ResourceGroups.Types.GroupFilterName
import Network.AWS.ResourceGroups.Types.GroupIdentifier
import Network.AWS.ResourceGroups.Types.GroupQuery
import Network.AWS.ResourceGroups.Types.ListGroupResourcesItem
import Network.AWS.ResourceGroups.Types.PendingResource
import Network.AWS.ResourceGroups.Types.QueryError
import Network.AWS.ResourceGroups.Types.QueryErrorCode
import Network.AWS.ResourceGroups.Types.QueryType
import Network.AWS.ResourceGroups.Types.ResourceFilter
import Network.AWS.ResourceGroups.Types.ResourceFilterName
import Network.AWS.ResourceGroups.Types.ResourceIdentifier
import Network.AWS.ResourceGroups.Types.ResourceQuery
import Network.AWS.ResourceGroups.Types.ResourceStatus
import Network.AWS.ResourceGroups.Types.ResourceStatusValue
import Network.AWS.Sign.V4

-- | API version @2017-11-27@ of the Amazon Resource Groups SDK configuration.
resourceGroups :: Service
resourceGroups =
  Service
    { _svcAbbrev = "ResourceGroups",
      _svcSigner = v4,
      _svcPrefix = "resource-groups",
      _svcVersion = "2017-11-27",
      _svcEndpoint = defaultEndpoint resourceGroups,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "ResourceGroups",
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

-- | One or more of the specified resources don't exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError
    resourceGroups
    "NotFoundException"
    . hasStatus 404

-- | The request includes one or more parameters that violate validation rules.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError
    resourceGroups
    "BadRequestException"
    . hasStatus 400

-- | The request was rejected because it doesn't have valid credentials for the target resource.
_UnauthorizedException :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedException =
  _MatchServiceError
    resourceGroups
    "UnauthorizedException"
    . hasStatus 401

-- | An internal error occurred while processing the request. Try again later.
_InternalServerErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerErrorException =
  _MatchServiceError
    resourceGroups
    "InternalServerErrorException"
    . hasStatus 500

-- | The caller isn't authorized to make the request. Check permissions.
_ForbiddenException :: AsError a => Getting (First ServiceError) a ServiceError
_ForbiddenException =
  _MatchServiceError
    resourceGroups
    "ForbiddenException"
    . hasStatus 403

-- | The request uses an HTTP method that isn't allowed for the specified resource.
_MethodNotAllowedException :: AsError a => Getting (First ServiceError) a ServiceError
_MethodNotAllowedException =
  _MatchServiceError
    resourceGroups
    "MethodNotAllowedException"
    . hasStatus 405

-- | You've exceeded throttling limits by making too many requests in a period of time.
_TooManyRequestsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyRequestsException =
  _MatchServiceError
    resourceGroups
    "TooManyRequestsException"
    . hasStatus 429

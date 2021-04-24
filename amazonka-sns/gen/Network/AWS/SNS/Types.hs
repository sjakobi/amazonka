{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SNS.Types
  ( -- * Service Configuration
    sns,

    -- * Errors
    _KMSThrottlingException,
    _NotFoundException,
    _KMSInvalidStateException,
    _KMSNotFoundException,
    _ThrottledException,
    _TagLimitExceededException,
    _InternalErrorException,
    _TopicLimitExceededException,
    _KMSOptInRequired,
    _ConcurrentAccessException,
    _TagPolicyException,
    _PlatformApplicationDisabledException,
    _SubscriptionLimitExceededException,
    _StaleTagException,
    _InvalidParameterException,
    _EndpointDisabledException,
    _InvalidParameterValueException,
    _AuthorizationErrorException,
    _FilterPolicyLimitExceededException,
    _KMSAccessDeniedException,
    _ResourceNotFoundException,
    _InvalidSecurityException,
    _KMSDisabledException,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    eAttributes,
    eEndpointARN,

    -- * MessageAttributeValue
    MessageAttributeValue (..),
    messageAttributeValue,
    mavStringValue,
    mavBinaryValue,
    mavDataType,

    -- * PlatformApplication
    PlatformApplication (..),
    platformApplication,
    paPlatformApplicationARN,
    paAttributes,

    -- * Subscription
    Subscription (..),
    subscription,
    sTopicARN,
    sOwner,
    sSubscriptionARN,
    sProtocol,
    sEndpoint,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Topic
    Topic (..),
    topic,
    tTopicARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SNS.Types.Endpoint
import Network.AWS.SNS.Types.MessageAttributeValue
import Network.AWS.SNS.Types.PlatformApplication
import Network.AWS.SNS.Types.Subscription
import Network.AWS.SNS.Types.Tag
import Network.AWS.SNS.Types.Topic
import Network.AWS.Sign.V4

-- | API version @2010-03-31@ of the Amazon Simple Notification Service SDK configuration.
sns :: Service
sns =
  Service
    { _svcAbbrev = "SNS",
      _svcSigner = v4,
      _svcPrefix = "sns",
      _svcVersion = "2010-03-31",
      _svcEndpoint = defaultEndpoint sns,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "SNS",
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

-- | The request was denied due to request throttling. For more information about throttling, see <https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second Limits> in the /AWS Key Management Service Developer Guide./
_KMSThrottlingException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSThrottlingException =
  _MatchServiceError sns "KMSThrottling"
    . hasStatus 400

-- | Indicates that the requested resource does not exist.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError sns "NotFound" . hasStatus 404

-- | The request was rejected because the state of the specified resource isn't valid for this request. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
_KMSInvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSInvalidStateException =
  _MatchServiceError sns "KMSInvalidState"
    . hasStatus 400

-- | The request was rejected because the specified entity or resource can't be found.
_KMSNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSNotFoundException =
  _MatchServiceError sns "KMSNotFound"
    . hasStatus 400

-- | Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.
_ThrottledException :: AsError a => Getting (First ServiceError) a ServiceError
_ThrottledException =
  _MatchServiceError sns "Throttled" . hasStatus 429

-- | Can't add more than 50 tags to a topic.
_TagLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TagLimitExceededException =
  _MatchServiceError sns "TagLimitExceeded"
    . hasStatus 400

-- | Indicates an internal service error.
_InternalErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalErrorException =
  _MatchServiceError sns "InternalError"
    . hasStatus 500

-- | Indicates that the customer already owns the maximum allowed number of topics.
_TopicLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TopicLimitExceededException =
  _MatchServiceError sns "TopicLimitExceeded"
    . hasStatus 403

-- | The AWS access key ID needs a subscription for the service.
_KMSOptInRequired :: AsError a => Getting (First ServiceError) a ServiceError
_KMSOptInRequired =
  _MatchServiceError sns "KMSOptInRequired"
    . hasStatus 403

-- | Can't perform multiple operations on a tag simultaneously. Perform the operations sequentially.
_ConcurrentAccessException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentAccessException =
  _MatchServiceError sns "ConcurrentAccess"
    . hasStatus 400

-- | The request doesn't comply with the IAM tag policy. Correct your request and then retry it.
_TagPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_TagPolicyException =
  _MatchServiceError sns "TagPolicy" . hasStatus 400

-- | Exception error indicating platform application disabled.
_PlatformApplicationDisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_PlatformApplicationDisabledException =
  _MatchServiceError
    sns
    "PlatformApplicationDisabled"
    . hasStatus 400

-- | Indicates that the customer already owns the maximum allowed number of subscriptions.
_SubscriptionLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionLimitExceededException =
  _MatchServiceError sns "SubscriptionLimitExceeded"
    . hasStatus 403

-- | A tag has been added to a resource with the same ARN as a deleted resource. Wait a short while and then retry the operation.
_StaleTagException :: AsError a => Getting (First ServiceError) a ServiceError
_StaleTagException =
  _MatchServiceError sns "StaleTag" . hasStatus 400

-- | Indicates that a request parameter does not comply with the associated constraints.
_InvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterException =
  _MatchServiceError sns "InvalidParameter"
    . hasStatus 400

-- | Exception error indicating endpoint disabled.
_EndpointDisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_EndpointDisabledException =
  _MatchServiceError sns "EndpointDisabled"
    . hasStatus 400

-- | Indicates that a request parameter does not comply with the associated constraints.
_InvalidParameterValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterValueException =
  _MatchServiceError sns "ParameterValueInvalid"
    . hasStatus 400

-- | Indicates that the user has been denied access to the requested resource.
_AuthorizationErrorException :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationErrorException =
  _MatchServiceError sns "AuthorizationError"
    . hasStatus 403

-- | Indicates that the number of filter polices in your AWS account exceeds the limit. To add more filter polices, submit an SNS Limit Increase case in the AWS Support Center.
_FilterPolicyLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_FilterPolicyLimitExceededException =
  _MatchServiceError sns "FilterPolicyLimitExceeded"
    . hasStatus 403

-- | The ciphertext references a key that doesn't exist or that you don't have access to.
_KMSAccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSAccessDeniedException =
  _MatchServiceError sns "KMSAccessDenied"
    . hasStatus 400

-- | Can't tag resource. Verify that the topic exists.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError sns "ResourceNotFound"
    . hasStatus 404

-- | The credential signature isn't valid. You must use an HTTPS endpoint and sign your request using Signature Version 4.
_InvalidSecurityException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSecurityException =
  _MatchServiceError sns "InvalidSecurity"
    . hasStatus 403

-- | The request was rejected because the specified customer master key (CMK) isn't enabled.
_KMSDisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSDisabledException =
  _MatchServiceError sns "KMSDisabled"
    . hasStatus 400

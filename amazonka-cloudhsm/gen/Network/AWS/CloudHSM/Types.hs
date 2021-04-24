{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types
  ( -- * Service Configuration
    cloudHSM,

    -- * Errors
    _CloudHSMInternalException,
    _InvalidRequestException,
    _CloudHSMServiceException,

    -- * ClientVersion
    ClientVersion (..),

    -- * CloudHSMObjectState
    CloudHSMObjectState (..),

    -- * HSMStatus
    HSMStatus (..),

    -- * SubscriptionType
    SubscriptionType (..),

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.CloudHSM.Types.ClientVersion
import Network.AWS.CloudHSM.Types.CloudHSMObjectState
import Network.AWS.CloudHSM.Types.HSMStatus
import Network.AWS.CloudHSM.Types.SubscriptionType
import Network.AWS.CloudHSM.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-05-30@ of the Amazon CloudHSM SDK configuration.
cloudHSM :: Service
cloudHSM =
  Service
    { _svcAbbrev = "CloudHSM",
      _svcSigner = v4,
      _svcPrefix = "cloudhsm",
      _svcVersion = "2014-05-30",
      _svcEndpoint = defaultEndpoint cloudHSM,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CloudHSM",
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

-- | Indicates that an internal error occurred.
_CloudHSMInternalException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMInternalException =
  _MatchServiceError
    cloudHSM
    "CloudHsmInternalException"

-- | Indicates that one or more of the request parameters are not valid.
_InvalidRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRequestException =
  _MatchServiceError
    cloudHSM
    "InvalidRequestException"

-- | Indicates that an exception occurred in the AWS CloudHSM service.
_CloudHSMServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMServiceException =
  _MatchServiceError
    cloudHSM
    "CloudHsmServiceException"

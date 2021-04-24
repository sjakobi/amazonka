{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types
  ( -- * Service Configuration
    lexRuntime,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _UnsupportedMediaTypeException,
    _BadGatewayException,
    _NotAcceptableException,
    _LimitExceededException,
    _ConflictException,
    _DependencyFailedException,
    _InternalFailureException,
    _LoopDetectedException,
    _RequestTimeoutException,

    -- * ConfirmationStatus
    ConfirmationStatus (..),

    -- * ContentType
    ContentType (..),

    -- * DialogActionType
    DialogActionType (..),

    -- * DialogState
    DialogState (..),

    -- * FulfillmentState
    FulfillmentState (..),

    -- * MessageFormatType
    MessageFormatType (..),

    -- * ActiveContext
    ActiveContext (..),
    activeContext,
    acName,
    acTimeToLive,
    acParameters,

    -- * ActiveContextTimeToLive
    ActiveContextTimeToLive (..),
    activeContextTimeToLive,
    acttlTimeToLiveInSeconds,
    acttlTurnsToLive,

    -- * Button
    Button (..),
    button,
    bText,
    bValue,

    -- * DialogAction
    DialogAction (..),
    dialogAction,
    daMessage,
    daIntentName,
    daMessageFormat,
    daFulfillmentState,
    daSlots,
    daSlotToElicit,
    daType,

    -- * GenericAttachment
    GenericAttachment (..),
    genericAttachment,
    gaTitle,
    gaButtons,
    gaAttachmentLinkURL,
    gaImageURL,
    gaSubTitle,

    -- * IntentConfidence
    IntentConfidence (..),
    intentConfidence,
    icScore,

    -- * IntentSummary
    IntentSummary (..),
    intentSummary,
    isIntentName,
    isFulfillmentState,
    isSlots,
    isCheckpointLabel,
    isSlotToElicit,
    isConfirmationStatus,
    isDialogActionType,

    -- * PredictedIntent
    PredictedIntent (..),
    predictedIntent,
    piIntentName,
    piSlots,
    piNluIntentConfidence,

    -- * ResponseCard
    ResponseCard (..),
    responseCard,
    rcContentType,
    rcGenericAttachments,
    rcVersion,

    -- * SentimentResponse
    SentimentResponse (..),
    sentimentResponse,
    srSentimentScore,
    srSentimentLabel,
  )
where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types.ActiveContext
import Network.AWS.LexRuntime.Types.ActiveContextTimeToLive
import Network.AWS.LexRuntime.Types.Button
import Network.AWS.LexRuntime.Types.ConfirmationStatus
import Network.AWS.LexRuntime.Types.ContentType
import Network.AWS.LexRuntime.Types.DialogAction
import Network.AWS.LexRuntime.Types.DialogActionType
import Network.AWS.LexRuntime.Types.DialogState
import Network.AWS.LexRuntime.Types.FulfillmentState
import Network.AWS.LexRuntime.Types.GenericAttachment
import Network.AWS.LexRuntime.Types.IntentConfidence
import Network.AWS.LexRuntime.Types.IntentSummary
import Network.AWS.LexRuntime.Types.MessageFormatType
import Network.AWS.LexRuntime.Types.PredictedIntent
import Network.AWS.LexRuntime.Types.ResponseCard
import Network.AWS.LexRuntime.Types.SentimentResponse
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-11-28@ of the Amazon Lex Runtime Service SDK configuration.
lexRuntime :: Service
lexRuntime =
  Service
    { _svcAbbrev = "LexRuntime",
      _svcSigner = v4,
      _svcPrefix = "runtime.lex",
      _svcVersion = "2016-11-28",
      _svcEndpoint = defaultEndpoint lexRuntime,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "LexRuntime",
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

-- | The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError lexRuntime "NotFoundException"
    . hasStatus 404

-- | Request validation failed, there is no usable message in the context, or the bot build failed, is still in progress, or contains unbuilt changes.
_BadRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_BadRequestException =
  _MatchServiceError lexRuntime "BadRequestException"
    . hasStatus 400

-- | The Content-Type header (@PostContent@ API) has an invalid value.
_UnsupportedMediaTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedMediaTypeException =
  _MatchServiceError
    lexRuntime
    "UnsupportedMediaTypeException"
    . hasStatus 415

-- | Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.
_BadGatewayException :: AsError a => Getting (First ServiceError) a ServiceError
_BadGatewayException =
  _MatchServiceError lexRuntime "BadGatewayException"
    . hasStatus 502

-- | The accept header in the request does not have a valid value.
_NotAcceptableException :: AsError a => Getting (First ServiceError) a ServiceError
_NotAcceptableException =
  _MatchServiceError
    lexRuntime
    "NotAcceptableException"
    . hasStatus 406

-- | Exceeded a limit.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    lexRuntime
    "LimitExceededException"
    . hasStatus 429

-- | Two clients are using the same AWS account, Amazon Lex bot, and user ID.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError lexRuntime "ConflictException"
    . hasStatus 409

-- | One of the dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example,
--
--
--     * If Amazon Lex does not have sufficient permissions to call a Lambda function.
--
--     * If a Lambda function takes longer than 30 seconds to execute.
--
--     * If a fulfillment Lambda function returns a @Delegate@ dialog action without removing any slot values.
_DependencyFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_DependencyFailedException =
  _MatchServiceError
    lexRuntime
    "DependencyFailedException"
    . hasStatus 424

-- | Internal service error. Retry the call.
_InternalFailureException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalFailureException =
  _MatchServiceError
    lexRuntime
    "InternalFailureException"
    . hasStatus 500

-- | This exception is not used.
_LoopDetectedException :: AsError a => Getting (First ServiceError) a ServiceError
_LoopDetectedException =
  _MatchServiceError
    lexRuntime
    "LoopDetectedException"
    . hasStatus 508

-- | The input speech is too long.
_RequestTimeoutException :: AsError a => Getting (First ServiceError) a ServiceError
_RequestTimeoutException =
  _MatchServiceError
    lexRuntime
    "RequestTimeoutException"
    . hasStatus 408

{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types
  ( -- * Service Configuration
    mechanicalTurk,

    -- * Errors
    _ServiceFault,
    _RequestError,

    -- * AssignmentStatus
    AssignmentStatus (..),

    -- * Comparator
    Comparator (..),

    -- * EventType
    EventType (..),

    -- * HITAccessActions
    HITAccessActions (..),

    -- * HITReviewStatus
    HITReviewStatus (..),

    -- * HITStatus
    HITStatus (..),

    -- * NotificationTransport
    NotificationTransport (..),

    -- * NotifyWorkersFailureCode
    NotifyWorkersFailureCode (..),

    -- * QualificationStatus
    QualificationStatus (..),

    -- * QualificationTypeStatus
    QualificationTypeStatus (..),

    -- * ReviewActionStatus
    ReviewActionStatus (..),

    -- * ReviewPolicyLevel
    ReviewPolicyLevel (..),

    -- * ReviewableHITStatus
    ReviewableHITStatus (..),

    -- * Assignment
    Assignment (..),
    assignment,
    aRequesterFeedback,
    aAssignmentId,
    aHITId,
    aAutoApprovalTime,
    aRejectionTime,
    aAssignmentStatus,
    aAnswer,
    aSubmitTime,
    aWorkerId,
    aAcceptTime,
    aApprovalTime,
    aDeadline,

    -- * BonusPayment
    BonusPayment (..),
    bonusPayment,
    bpBonusAmount,
    bpAssignmentId,
    bpGrantTime,
    bpReason,
    bpWorkerId,

    -- * HIT
    HIT (..),
    hIT,
    hitHITGroupId,
    hitCreationTime,
    hitAssignmentDurationInSeconds,
    hitAutoApprovalDelayInSeconds,
    hitQuestion,
    hitExpiration,
    hitHITReviewStatus,
    hitTitle,
    hitHITId,
    hitHITLayoutId,
    hitNumberOfAssignmentsCompleted,
    hitReward,
    hitMaxAssignments,
    hitHITStatus,
    hitRequesterAnnotation,
    hitDescription,
    hitNumberOfAssignmentsAvailable,
    hitHITTypeId,
    hitQualificationRequirements,
    hitNumberOfAssignmentsPending,
    hitKeywords,

    -- * HITLayoutParameter
    HITLayoutParameter (..),
    hITLayoutParameter,
    hitlpName,
    hitlpValue,

    -- * Locale
    Locale (..),
    locale,
    lSubdivision,
    lCountry,

    -- * NotificationSpecification
    NotificationSpecification (..),
    notificationSpecification,
    nsDestination,
    nsTransport,
    nsVersion,
    nsEventTypes,

    -- * NotifyWorkersFailureStatus
    NotifyWorkersFailureStatus (..),
    notifyWorkersFailureStatus,
    nwfsWorkerId,
    nwfsNotifyWorkersFailureCode,
    nwfsNotifyWorkersFailureMessage,

    -- * ParameterMapEntry
    ParameterMapEntry (..),
    parameterMapEntry,
    pmeKey,
    pmeValues,

    -- * PolicyParameter
    PolicyParameter (..),
    policyParameter,
    ppKey,
    ppValues,
    ppMapEntries,

    -- * Qualification
    Qualification (..),
    qualification,
    qQualificationTypeId,
    qStatus,
    qGrantTime,
    qWorkerId,
    qLocaleValue,
    qIntegerValue,

    -- * QualificationRequest
    QualificationRequest (..),
    qualificationRequest,
    quaQualificationTypeId,
    quaAnswer,
    quaSubmitTime,
    quaTest,
    quaWorkerId,
    quaQualificationRequestId,

    -- * QualificationRequirement
    QualificationRequirement (..),
    qualificationRequirement,
    qrActionsGuarded,
    qrLocaleValues,
    qrRequiredToPreview,
    qrIntegerValues,
    qrQualificationTypeId,
    qrComparator,

    -- * QualificationType
    QualificationType (..),
    qualificationType,
    qtQualificationTypeId,
    qtCreationTime,
    qtIsRequestable,
    qtRetryDelayInSeconds,
    qtAutoGranted,
    qtQualificationTypeStatus,
    qtName,
    qtTestDurationInSeconds,
    qtDescription,
    qtTest,
    qtAnswerKey,
    qtAutoGrantedValue,
    qtKeywords,

    -- * ReviewActionDetail
    ReviewActionDetail (..),
    reviewActionDetail,
    radStatus,
    radTargetId,
    radActionName,
    radTargetType,
    radResult,
    radActionId,
    radCompleteTime,
    radErrorCode,

    -- * ReviewPolicy
    ReviewPolicy (..),
    reviewPolicy,
    rpParameters,
    rpPolicyName,

    -- * ReviewReport
    ReviewReport (..),
    reviewReport,
    rrReviewActions,
    rrReviewResults,

    -- * ReviewResultDetail
    ReviewResultDetail (..),
    reviewResultDetail,
    rrdKey,
    rrdSubjectType,
    rrdSubjectId,
    rrdActionId,
    rrdValue,
    rrdQuestionId,

    -- * WorkerBlock
    WorkerBlock (..),
    workerBlock,
    wbReason,
    wbWorkerId,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types.Assignment
import Network.AWS.MechanicalTurk.Types.AssignmentStatus
import Network.AWS.MechanicalTurk.Types.BonusPayment
import Network.AWS.MechanicalTurk.Types.Comparator
import Network.AWS.MechanicalTurk.Types.EventType
import Network.AWS.MechanicalTurk.Types.HIT
import Network.AWS.MechanicalTurk.Types.HITAccessActions
import Network.AWS.MechanicalTurk.Types.HITLayoutParameter
import Network.AWS.MechanicalTurk.Types.HITReviewStatus
import Network.AWS.MechanicalTurk.Types.HITStatus
import Network.AWS.MechanicalTurk.Types.Locale
import Network.AWS.MechanicalTurk.Types.NotificationSpecification
import Network.AWS.MechanicalTurk.Types.NotificationTransport
import Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureCode
import Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureStatus
import Network.AWS.MechanicalTurk.Types.ParameterMapEntry
import Network.AWS.MechanicalTurk.Types.PolicyParameter
import Network.AWS.MechanicalTurk.Types.Qualification
import Network.AWS.MechanicalTurk.Types.QualificationRequest
import Network.AWS.MechanicalTurk.Types.QualificationRequirement
import Network.AWS.MechanicalTurk.Types.QualificationStatus
import Network.AWS.MechanicalTurk.Types.QualificationType
import Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
import Network.AWS.MechanicalTurk.Types.ReviewActionDetail
import Network.AWS.MechanicalTurk.Types.ReviewActionStatus
import Network.AWS.MechanicalTurk.Types.ReviewPolicy
import Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
import Network.AWS.MechanicalTurk.Types.ReviewReport
import Network.AWS.MechanicalTurk.Types.ReviewResultDetail
import Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
import Network.AWS.MechanicalTurk.Types.WorkerBlock
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2017-01-17@ of the Amazon Mechanical Turk SDK configuration.
mechanicalTurk :: Service
mechanicalTurk =
  Service
    { _svcAbbrev = "MechanicalTurk",
      _svcSigner = v4,
      _svcPrefix = "mturk-requester",
      _svcVersion = "2017-01-17",
      _svcEndpoint = defaultEndpoint mechanicalTurk,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "MechanicalTurk",
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

-- | Amazon Mechanical Turk is temporarily unable to process your request. Try your call again.
_ServiceFault :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceFault =
  _MatchServiceError mechanicalTurk "ServiceFault"

-- | Your request is invalid.
_RequestError :: AsError a => Getting (First ServiceError) a ServiceError
_RequestError =
  _MatchServiceError mechanicalTurk "RequestError"

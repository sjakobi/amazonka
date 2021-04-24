{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Mechanical Turk API Reference__
module Network.AWS.MechanicalTurk
  ( -- * Service Configuration
    mechanicalTurk,

    -- * Errors
    -- $errors

    -- ** ServiceFault
    _ServiceFault,

    -- ** RequestError
    _RequestError,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetQualificationScore
    module Network.AWS.MechanicalTurk.GetQualificationScore,

    -- ** ListReviewableHITs (Paginated)
    module Network.AWS.MechanicalTurk.ListReviewableHITs,

    -- ** ListHITs (Paginated)
    module Network.AWS.MechanicalTurk.ListHITs,

    -- ** ListAssignmentsForHIT (Paginated)
    module Network.AWS.MechanicalTurk.ListAssignmentsForHIT,

    -- ** ListWorkersWithQualificationType (Paginated)
    module Network.AWS.MechanicalTurk.ListWorkersWithQualificationType,

    -- ** GetAccountBalance
    module Network.AWS.MechanicalTurk.GetAccountBalance,

    -- ** CreateHIT
    module Network.AWS.MechanicalTurk.CreateHIT,

    -- ** NotifyWorkers
    module Network.AWS.MechanicalTurk.NotifyWorkers,

    -- ** ListWorkerBlocks (Paginated)
    module Network.AWS.MechanicalTurk.ListWorkerBlocks,

    -- ** ListHITsForQualificationType (Paginated)
    module Network.AWS.MechanicalTurk.ListHITsForQualificationType,

    -- ** CreateWorkerBlock
    module Network.AWS.MechanicalTurk.CreateWorkerBlock,

    -- ** CreateAdditionalAssignmentsForHIT
    module Network.AWS.MechanicalTurk.CreateAdditionalAssignmentsForHIT,

    -- ** ListQualificationTypes (Paginated)
    module Network.AWS.MechanicalTurk.ListQualificationTypes,

    -- ** UpdateHITTypeOfHIT
    module Network.AWS.MechanicalTurk.UpdateHITTypeOfHIT,

    -- ** GetAssignment
    module Network.AWS.MechanicalTurk.GetAssignment,

    -- ** UpdateHITReviewStatus
    module Network.AWS.MechanicalTurk.UpdateHITReviewStatus,

    -- ** RejectQualificationRequest
    module Network.AWS.MechanicalTurk.RejectQualificationRequest,

    -- ** GetQualificationType
    module Network.AWS.MechanicalTurk.GetQualificationType,

    -- ** RejectAssignment
    module Network.AWS.MechanicalTurk.RejectAssignment,

    -- ** UpdateExpirationForHIT
    module Network.AWS.MechanicalTurk.UpdateExpirationForHIT,

    -- ** ApproveAssignment
    module Network.AWS.MechanicalTurk.ApproveAssignment,

    -- ** DeleteHIT
    module Network.AWS.MechanicalTurk.DeleteHIT,

    -- ** ListReviewPolicyResultsForHIT
    module Network.AWS.MechanicalTurk.ListReviewPolicyResultsForHIT,

    -- ** CreateHITType
    module Network.AWS.MechanicalTurk.CreateHITType,

    -- ** UpdateNotificationSettings
    module Network.AWS.MechanicalTurk.UpdateNotificationSettings,

    -- ** SendBonus
    module Network.AWS.MechanicalTurk.SendBonus,

    -- ** ListQualificationRequests (Paginated)
    module Network.AWS.MechanicalTurk.ListQualificationRequests,

    -- ** AssociateQualificationWithWorker
    module Network.AWS.MechanicalTurk.AssociateQualificationWithWorker,

    -- ** CreateHITWithHITType
    module Network.AWS.MechanicalTurk.CreateHITWithHITType,

    -- ** DeleteWorkerBlock
    module Network.AWS.MechanicalTurk.DeleteWorkerBlock,

    -- ** ListBonusPayments (Paginated)
    module Network.AWS.MechanicalTurk.ListBonusPayments,

    -- ** DisassociateQualificationFromWorker
    module Network.AWS.MechanicalTurk.DisassociateQualificationFromWorker,

    -- ** SendTestEventNotification
    module Network.AWS.MechanicalTurk.SendTestEventNotification,

    -- ** GetHIT
    module Network.AWS.MechanicalTurk.GetHIT,

    -- ** UpdateQualificationType
    module Network.AWS.MechanicalTurk.UpdateQualificationType,

    -- ** AcceptQualificationRequest
    module Network.AWS.MechanicalTurk.AcceptQualificationRequest,

    -- ** DeleteQualificationType
    module Network.AWS.MechanicalTurk.DeleteQualificationType,

    -- ** GetFileUploadURL
    module Network.AWS.MechanicalTurk.GetFileUploadURL,

    -- ** CreateQualificationType
    module Network.AWS.MechanicalTurk.CreateQualificationType,

    -- * Types

    -- ** AssignmentStatus
    AssignmentStatus (..),

    -- ** Comparator
    Comparator (..),

    -- ** EventType
    EventType (..),

    -- ** HITAccessActions
    HITAccessActions (..),

    -- ** HITReviewStatus
    HITReviewStatus (..),

    -- ** HITStatus
    HITStatus (..),

    -- ** NotificationTransport
    NotificationTransport (..),

    -- ** NotifyWorkersFailureCode
    NotifyWorkersFailureCode (..),

    -- ** QualificationStatus
    QualificationStatus (..),

    -- ** QualificationTypeStatus
    QualificationTypeStatus (..),

    -- ** ReviewActionStatus
    ReviewActionStatus (..),

    -- ** ReviewPolicyLevel
    ReviewPolicyLevel (..),

    -- ** ReviewableHITStatus
    ReviewableHITStatus (..),

    -- ** Assignment
    Assignment,
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

    -- ** BonusPayment
    BonusPayment,
    bonusPayment,
    bpBonusAmount,
    bpAssignmentId,
    bpGrantTime,
    bpReason,
    bpWorkerId,

    -- ** HIT
    HIT,
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

    -- ** HITLayoutParameter
    HITLayoutParameter,
    hITLayoutParameter,
    hitlpName,
    hitlpValue,

    -- ** Locale
    Locale,
    locale,
    lSubdivision,
    lCountry,

    -- ** NotificationSpecification
    NotificationSpecification,
    notificationSpecification,
    nsDestination,
    nsTransport,
    nsVersion,
    nsEventTypes,

    -- ** NotifyWorkersFailureStatus
    NotifyWorkersFailureStatus,
    notifyWorkersFailureStatus,
    nwfsWorkerId,
    nwfsNotifyWorkersFailureCode,
    nwfsNotifyWorkersFailureMessage,

    -- ** ParameterMapEntry
    ParameterMapEntry,
    parameterMapEntry,
    pmeKey,
    pmeValues,

    -- ** PolicyParameter
    PolicyParameter,
    policyParameter,
    ppKey,
    ppValues,
    ppMapEntries,

    -- ** Qualification
    Qualification,
    qualification,
    qQualificationTypeId,
    qStatus,
    qGrantTime,
    qWorkerId,
    qLocaleValue,
    qIntegerValue,

    -- ** QualificationRequest
    QualificationRequest,
    qualificationRequest,
    quaQualificationTypeId,
    quaAnswer,
    quaSubmitTime,
    quaTest,
    quaWorkerId,
    quaQualificationRequestId,

    -- ** QualificationRequirement
    QualificationRequirement,
    qualificationRequirement,
    qrActionsGuarded,
    qrLocaleValues,
    qrRequiredToPreview,
    qrIntegerValues,
    qrQualificationTypeId,
    qrComparator,

    -- ** QualificationType
    QualificationType,
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

    -- ** ReviewActionDetail
    ReviewActionDetail,
    reviewActionDetail,
    radStatus,
    radTargetId,
    radActionName,
    radTargetType,
    radResult,
    radActionId,
    radCompleteTime,
    radErrorCode,

    -- ** ReviewPolicy
    ReviewPolicy,
    reviewPolicy,
    rpParameters,
    rpPolicyName,

    -- ** ReviewReport
    ReviewReport,
    reviewReport,
    rrReviewActions,
    rrReviewResults,

    -- ** ReviewResultDetail
    ReviewResultDetail,
    reviewResultDetail,
    rrdKey,
    rrdSubjectType,
    rrdSubjectId,
    rrdActionId,
    rrdValue,
    rrdQuestionId,

    -- ** WorkerBlock
    WorkerBlock,
    workerBlock,
    wbReason,
    wbWorkerId,
  )
where

import Network.AWS.MechanicalTurk.AcceptQualificationRequest
import Network.AWS.MechanicalTurk.ApproveAssignment
import Network.AWS.MechanicalTurk.AssociateQualificationWithWorker
import Network.AWS.MechanicalTurk.CreateAdditionalAssignmentsForHIT
import Network.AWS.MechanicalTurk.CreateHIT
import Network.AWS.MechanicalTurk.CreateHITType
import Network.AWS.MechanicalTurk.CreateHITWithHITType
import Network.AWS.MechanicalTurk.CreateQualificationType
import Network.AWS.MechanicalTurk.CreateWorkerBlock
import Network.AWS.MechanicalTurk.DeleteHIT
import Network.AWS.MechanicalTurk.DeleteQualificationType
import Network.AWS.MechanicalTurk.DeleteWorkerBlock
import Network.AWS.MechanicalTurk.DisassociateQualificationFromWorker
import Network.AWS.MechanicalTurk.GetAccountBalance
import Network.AWS.MechanicalTurk.GetAssignment
import Network.AWS.MechanicalTurk.GetFileUploadURL
import Network.AWS.MechanicalTurk.GetHIT
import Network.AWS.MechanicalTurk.GetQualificationScore
import Network.AWS.MechanicalTurk.GetQualificationType
import Network.AWS.MechanicalTurk.ListAssignmentsForHIT
import Network.AWS.MechanicalTurk.ListBonusPayments
import Network.AWS.MechanicalTurk.ListHITs
import Network.AWS.MechanicalTurk.ListHITsForQualificationType
import Network.AWS.MechanicalTurk.ListQualificationRequests
import Network.AWS.MechanicalTurk.ListQualificationTypes
import Network.AWS.MechanicalTurk.ListReviewPolicyResultsForHIT
import Network.AWS.MechanicalTurk.ListReviewableHITs
import Network.AWS.MechanicalTurk.ListWorkerBlocks
import Network.AWS.MechanicalTurk.ListWorkersWithQualificationType
import Network.AWS.MechanicalTurk.NotifyWorkers
import Network.AWS.MechanicalTurk.RejectAssignment
import Network.AWS.MechanicalTurk.RejectQualificationRequest
import Network.AWS.MechanicalTurk.SendBonus
import Network.AWS.MechanicalTurk.SendTestEventNotification
import Network.AWS.MechanicalTurk.Types
import Network.AWS.MechanicalTurk.UpdateExpirationForHIT
import Network.AWS.MechanicalTurk.UpdateHITReviewStatus
import Network.AWS.MechanicalTurk.UpdateHITTypeOfHIT
import Network.AWS.MechanicalTurk.UpdateNotificationSettings
import Network.AWS.MechanicalTurk.UpdateQualificationType
import Network.AWS.MechanicalTurk.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MechanicalTurk'.

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

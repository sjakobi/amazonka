{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidWebhookAuthenticationParametersException,
    _TooManyTagsException,
    _NotLatestPipelineExecutionException,
    _PipelineNameInUseException,
    _ApprovalAlreadyCompletedException,
    _OutputVariablesSizeExceededException,
    _InvalidArnException,
    _InvalidStructureException,
    _InvalidBlockerDeclarationException,
    _PipelineExecutionNotStoppableException,
    _InvalidActionDeclarationException,
    _InvalidWebhookFilterPatternException,
    _DuplicatedStopRequestException,
    _ConcurrentModificationException,
    _ActionTypeNotFoundException,
    _InvalidNextTokenException,
    _InvalidTagsException,
    _InvalidNonceException,
    _ActionTypeAlreadyExistsException,
    _WebhookNotFoundException,
    _PipelineVersionNotFoundException,
    _ValidationException,
    _StageNotRetryableException,
    _InvalidClientTokenException,
    _PipelineExecutionNotFoundException,
    _LimitExceededException,
    _ConflictException,
    _InvalidJobException,
    _InvalidJobStateException,
    _ResourceNotFoundException,
    _PipelineNotFoundException,
    _JobNotFoundException,
    _StageNotFoundException,
    _RequestFailedException,
    _ActionNotFoundException,
    _InvalidStageDeclarationException,
    _InvalidApprovalTokenException,

    -- * ActionCategory
    ActionCategory (..),

    -- * ActionConfigurationPropertyType
    ActionConfigurationPropertyType (..),

    -- * ActionExecutionStatus
    ActionExecutionStatus (..),

    -- * ActionOwner
    ActionOwner (..),

    -- * ApprovalStatus
    ApprovalStatus (..),

    -- * ArtifactLocationType
    ArtifactLocationType (..),

    -- * ArtifactStoreType
    ArtifactStoreType (..),

    -- * BlockerType
    BlockerType (..),

    -- * EncryptionKeyType
    EncryptionKeyType (..),

    -- * ExecutorType
    ExecutorType (..),

    -- * FailureType
    FailureType (..),

    -- * JobStatus
    JobStatus (..),

    -- * PipelineExecutionStatus
    PipelineExecutionStatus (..),

    -- * StageExecutionStatus
    StageExecutionStatus (..),

    -- * StageRetryMode
    StageRetryMode (..),

    -- * StageTransitionType
    StageTransitionType (..),

    -- * TriggerType
    TriggerType (..),

    -- * WebhookAuthenticationType
    WebhookAuthenticationType (..),

    -- * AWSSessionCredentials
    AWSSessionCredentials (..),
    newAWSSessionCredentials,

    -- * ActionConfiguration
    ActionConfiguration (..),
    newActionConfiguration,

    -- * ActionConfigurationProperty
    ActionConfigurationProperty (..),
    newActionConfigurationProperty,

    -- * ActionContext
    ActionContext (..),
    newActionContext,

    -- * ActionDeclaration
    ActionDeclaration (..),
    newActionDeclaration,

    -- * ActionExecution
    ActionExecution (..),
    newActionExecution,

    -- * ActionExecutionDetail
    ActionExecutionDetail (..),
    newActionExecutionDetail,

    -- * ActionExecutionFilter
    ActionExecutionFilter (..),
    newActionExecutionFilter,

    -- * ActionExecutionInput
    ActionExecutionInput (..),
    newActionExecutionInput,

    -- * ActionExecutionOutput
    ActionExecutionOutput (..),
    newActionExecutionOutput,

    -- * ActionExecutionResult
    ActionExecutionResult (..),
    newActionExecutionResult,

    -- * ActionRevision
    ActionRevision (..),
    newActionRevision,

    -- * ActionState
    ActionState (..),
    newActionState,

    -- * ActionType
    ActionType (..),
    newActionType,

    -- * ActionTypeArtifactDetails
    ActionTypeArtifactDetails (..),
    newActionTypeArtifactDetails,

    -- * ActionTypeDeclaration
    ActionTypeDeclaration (..),
    newActionTypeDeclaration,

    -- * ActionTypeExecutor
    ActionTypeExecutor (..),
    newActionTypeExecutor,

    -- * ActionTypeId
    ActionTypeId (..),
    newActionTypeId,

    -- * ActionTypeIdentifier
    ActionTypeIdentifier (..),
    newActionTypeIdentifier,

    -- * ActionTypePermissions
    ActionTypePermissions (..),
    newActionTypePermissions,

    -- * ActionTypeProperty
    ActionTypeProperty (..),
    newActionTypeProperty,

    -- * ActionTypeSettings
    ActionTypeSettings (..),
    newActionTypeSettings,

    -- * ActionTypeUrls
    ActionTypeUrls (..),
    newActionTypeUrls,

    -- * ApprovalResult
    ApprovalResult (..),
    newApprovalResult,

    -- * Artifact
    Artifact (..),
    newArtifact,

    -- * ArtifactDetail
    ArtifactDetail (..),
    newArtifactDetail,

    -- * ArtifactDetails
    ArtifactDetails (..),
    newArtifactDetails,

    -- * ArtifactLocation
    ArtifactLocation (..),
    newArtifactLocation,

    -- * ArtifactRevision
    ArtifactRevision (..),
    newArtifactRevision,

    -- * ArtifactStore
    ArtifactStore (..),
    newArtifactStore,

    -- * BlockerDeclaration
    BlockerDeclaration (..),
    newBlockerDeclaration,

    -- * CurrentRevision
    CurrentRevision (..),
    newCurrentRevision,

    -- * EncryptionKey
    EncryptionKey (..),
    newEncryptionKey,

    -- * ErrorDetails
    ErrorDetails (..),
    newErrorDetails,

    -- * ExecutionDetails
    ExecutionDetails (..),
    newExecutionDetails,

    -- * ExecutionTrigger
    ExecutionTrigger (..),
    newExecutionTrigger,

    -- * ExecutorConfiguration
    ExecutorConfiguration (..),
    newExecutorConfiguration,

    -- * FailureDetails
    FailureDetails (..),
    newFailureDetails,

    -- * InputArtifact
    InputArtifact (..),
    newInputArtifact,

    -- * Job
    Job (..),
    newJob,

    -- * JobData
    JobData (..),
    newJobData,

    -- * JobDetails
    JobDetails (..),
    newJobDetails,

    -- * JobWorkerExecutorConfiguration
    JobWorkerExecutorConfiguration (..),
    newJobWorkerExecutorConfiguration,

    -- * LambdaExecutorConfiguration
    LambdaExecutorConfiguration (..),
    newLambdaExecutorConfiguration,

    -- * ListWebhookItem
    ListWebhookItem (..),
    newListWebhookItem,

    -- * OutputArtifact
    OutputArtifact (..),
    newOutputArtifact,

    -- * PipelineContext
    PipelineContext (..),
    newPipelineContext,

    -- * PipelineDeclaration
    PipelineDeclaration (..),
    newPipelineDeclaration,

    -- * PipelineExecution
    PipelineExecution (..),
    newPipelineExecution,

    -- * PipelineExecutionSummary
    PipelineExecutionSummary (..),
    newPipelineExecutionSummary,

    -- * PipelineMetadata
    PipelineMetadata (..),
    newPipelineMetadata,

    -- * PipelineSummary
    PipelineSummary (..),
    newPipelineSummary,

    -- * S3ArtifactLocation
    S3ArtifactLocation (..),
    newS3ArtifactLocation,

    -- * S3Location
    S3Location (..),
    newS3Location,

    -- * SourceRevision
    SourceRevision (..),
    newSourceRevision,

    -- * StageContext
    StageContext (..),
    newStageContext,

    -- * StageDeclaration
    StageDeclaration (..),
    newStageDeclaration,

    -- * StageExecution
    StageExecution (..),
    newStageExecution,

    -- * StageState
    StageState (..),
    newStageState,

    -- * StopExecutionTrigger
    StopExecutionTrigger (..),
    newStopExecutionTrigger,

    -- * Tag
    Tag (..),
    newTag,

    -- * ThirdPartyJob
    ThirdPartyJob (..),
    newThirdPartyJob,

    -- * ThirdPartyJobData
    ThirdPartyJobData (..),
    newThirdPartyJobData,

    -- * ThirdPartyJobDetails
    ThirdPartyJobDetails (..),
    newThirdPartyJobDetails,

    -- * TransitionState
    TransitionState (..),
    newTransitionState,

    -- * WebhookAuthConfiguration
    WebhookAuthConfiguration (..),
    newWebhookAuthConfiguration,

    -- * WebhookDefinition
    WebhookDefinition (..),
    newWebhookDefinition,

    -- * WebhookFilterRule
    WebhookFilterRule (..),
    newWebhookFilterRule,
  )
where

import Network.AWS.CodePipeline.Types.AWSSessionCredentials
import Network.AWS.CodePipeline.Types.ActionCategory
import Network.AWS.CodePipeline.Types.ActionConfiguration
import Network.AWS.CodePipeline.Types.ActionConfigurationProperty
import Network.AWS.CodePipeline.Types.ActionConfigurationPropertyType
import Network.AWS.CodePipeline.Types.ActionContext
import Network.AWS.CodePipeline.Types.ActionDeclaration
import Network.AWS.CodePipeline.Types.ActionExecution
import Network.AWS.CodePipeline.Types.ActionExecutionDetail
import Network.AWS.CodePipeline.Types.ActionExecutionFilter
import Network.AWS.CodePipeline.Types.ActionExecutionInput
import Network.AWS.CodePipeline.Types.ActionExecutionOutput
import Network.AWS.CodePipeline.Types.ActionExecutionResult
import Network.AWS.CodePipeline.Types.ActionExecutionStatus
import Network.AWS.CodePipeline.Types.ActionOwner
import Network.AWS.CodePipeline.Types.ActionRevision
import Network.AWS.CodePipeline.Types.ActionState
import Network.AWS.CodePipeline.Types.ActionType
import Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails
import Network.AWS.CodePipeline.Types.ActionTypeDeclaration
import Network.AWS.CodePipeline.Types.ActionTypeExecutor
import Network.AWS.CodePipeline.Types.ActionTypeId
import Network.AWS.CodePipeline.Types.ActionTypeIdentifier
import Network.AWS.CodePipeline.Types.ActionTypePermissions
import Network.AWS.CodePipeline.Types.ActionTypeProperty
import Network.AWS.CodePipeline.Types.ActionTypeSettings
import Network.AWS.CodePipeline.Types.ActionTypeUrls
import Network.AWS.CodePipeline.Types.ApprovalResult
import Network.AWS.CodePipeline.Types.ApprovalStatus
import Network.AWS.CodePipeline.Types.Artifact
import Network.AWS.CodePipeline.Types.ArtifactDetail
import Network.AWS.CodePipeline.Types.ArtifactDetails
import Network.AWS.CodePipeline.Types.ArtifactLocation
import Network.AWS.CodePipeline.Types.ArtifactLocationType
import Network.AWS.CodePipeline.Types.ArtifactRevision
import Network.AWS.CodePipeline.Types.ArtifactStore
import Network.AWS.CodePipeline.Types.ArtifactStoreType
import Network.AWS.CodePipeline.Types.BlockerDeclaration
import Network.AWS.CodePipeline.Types.BlockerType
import Network.AWS.CodePipeline.Types.CurrentRevision
import Network.AWS.CodePipeline.Types.EncryptionKey
import Network.AWS.CodePipeline.Types.EncryptionKeyType
import Network.AWS.CodePipeline.Types.ErrorDetails
import Network.AWS.CodePipeline.Types.ExecutionDetails
import Network.AWS.CodePipeline.Types.ExecutionTrigger
import Network.AWS.CodePipeline.Types.ExecutorConfiguration
import Network.AWS.CodePipeline.Types.ExecutorType
import Network.AWS.CodePipeline.Types.FailureDetails
import Network.AWS.CodePipeline.Types.FailureType
import Network.AWS.CodePipeline.Types.InputArtifact
import Network.AWS.CodePipeline.Types.Job
import Network.AWS.CodePipeline.Types.JobData
import Network.AWS.CodePipeline.Types.JobDetails
import Network.AWS.CodePipeline.Types.JobStatus
import Network.AWS.CodePipeline.Types.JobWorkerExecutorConfiguration
import Network.AWS.CodePipeline.Types.LambdaExecutorConfiguration
import Network.AWS.CodePipeline.Types.ListWebhookItem
import Network.AWS.CodePipeline.Types.OutputArtifact
import Network.AWS.CodePipeline.Types.PipelineContext
import Network.AWS.CodePipeline.Types.PipelineDeclaration
import Network.AWS.CodePipeline.Types.PipelineExecution
import Network.AWS.CodePipeline.Types.PipelineExecutionStatus
import Network.AWS.CodePipeline.Types.PipelineExecutionSummary
import Network.AWS.CodePipeline.Types.PipelineMetadata
import Network.AWS.CodePipeline.Types.PipelineSummary
import Network.AWS.CodePipeline.Types.S3ArtifactLocation
import Network.AWS.CodePipeline.Types.S3Location
import Network.AWS.CodePipeline.Types.SourceRevision
import Network.AWS.CodePipeline.Types.StageContext
import Network.AWS.CodePipeline.Types.StageDeclaration
import Network.AWS.CodePipeline.Types.StageExecution
import Network.AWS.CodePipeline.Types.StageExecutionStatus
import Network.AWS.CodePipeline.Types.StageRetryMode
import Network.AWS.CodePipeline.Types.StageState
import Network.AWS.CodePipeline.Types.StageTransitionType
import Network.AWS.CodePipeline.Types.StopExecutionTrigger
import Network.AWS.CodePipeline.Types.Tag
import Network.AWS.CodePipeline.Types.ThirdPartyJob
import Network.AWS.CodePipeline.Types.ThirdPartyJobData
import Network.AWS.CodePipeline.Types.ThirdPartyJobDetails
import Network.AWS.CodePipeline.Types.TransitionState
import Network.AWS.CodePipeline.Types.TriggerType
import Network.AWS.CodePipeline.Types.WebhookAuthConfiguration
import Network.AWS.CodePipeline.Types.WebhookAuthenticationType
import Network.AWS.CodePipeline.Types.WebhookDefinition
import Network.AWS.CodePipeline.Types.WebhookFilterRule
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-07-09@ of the Amazon CodePipeline SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "CodePipeline",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "codepipeline",
      Prelude._svcVersion = "2015-07-09",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "CodePipeline",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The specified authentication type is in an invalid format.
_InvalidWebhookAuthenticationParametersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidWebhookAuthenticationParametersException =
  Prelude._MatchServiceError
    defaultService
    "InvalidWebhookAuthenticationParametersException"

-- | The tags limit for a resource has been exceeded.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | The stage has failed in a later run of the pipeline and the
-- pipelineExecutionId associated with the request is out of date.
_NotLatestPipelineExecutionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotLatestPipelineExecutionException =
  Prelude._MatchServiceError
    defaultService
    "NotLatestPipelineExecutionException"

-- | The specified pipeline name is already in use.
_PipelineNameInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineNameInUseException =
  Prelude._MatchServiceError
    defaultService
    "PipelineNameInUseException"

-- | The approval action has already been approved or rejected.
_ApprovalAlreadyCompletedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ApprovalAlreadyCompletedException =
  Prelude._MatchServiceError
    defaultService
    "ApprovalAlreadyCompletedException"

-- | Exceeded the total size limit for all variables in the pipeline.
_OutputVariablesSizeExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OutputVariablesSizeExceededException =
  Prelude._MatchServiceError
    defaultService
    "OutputVariablesSizeExceededException"

-- | The specified resource ARN is invalid.
_InvalidArnException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArnException =
  Prelude._MatchServiceError
    defaultService
    "InvalidArnException"

-- | The structure was specified in an invalid format.
_InvalidStructureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStructureException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStructureException"

-- | Reserved for future use.
_InvalidBlockerDeclarationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidBlockerDeclarationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidBlockerDeclarationException"

-- | Unable to stop the pipeline execution. The execution might already be in
-- a @Stopped@ state, or it might no longer be in progress.
_PipelineExecutionNotStoppableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineExecutionNotStoppableException =
  Prelude._MatchServiceError
    defaultService
    "PipelineExecutionNotStoppableException"

-- | The action declaration was specified in an invalid format.
_InvalidActionDeclarationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidActionDeclarationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidActionDeclarationException"

-- | The specified event filter rule is in an invalid format.
_InvalidWebhookFilterPatternException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidWebhookFilterPatternException =
  Prelude._MatchServiceError
    defaultService
    "InvalidWebhookFilterPatternException"

-- | The pipeline execution is already in a @Stopping@ state. If you already
-- chose to stop and wait, you cannot make that request again. You can
-- choose to stop and abandon now, but be aware that this option can lead
-- to failed tasks or out of sequence tasks. If you already chose to stop
-- and abandon, you cannot make that request again.
_DuplicatedStopRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicatedStopRequestException =
  Prelude._MatchServiceError
    defaultService
    "DuplicatedStopRequestException"

-- | Unable to modify the tag due to a simultaneous update request.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The specified action type cannot be found.
_ActionTypeNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ActionTypeNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ActionTypeNotFoundException"

-- | The next token was specified in an invalid format. Make sure that the
-- next token you provide is the token returned by a previous call.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | The specified resource tags are invalid.
_InvalidTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTagsException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTagsException"

-- | The nonce was specified in an invalid format.
_InvalidNonceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNonceException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNonceException"

-- | The specified action type already exists with a different definition.
_ActionTypeAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ActionTypeAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ActionTypeAlreadyExistsException"

-- | The specified webhook was entered in an invalid format or cannot be
-- found.
_WebhookNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WebhookNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "WebhookNotFoundException"

-- | The pipeline version was specified in an invalid format or cannot be
-- found.
_PipelineVersionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineVersionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "PipelineVersionNotFoundException"

-- | The validation was specified in an invalid format.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | Unable to retry. The pipeline structure or stage state might have
-- changed while actions awaited retry, or the stage contains no failed
-- actions.
_StageNotRetryableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StageNotRetryableException =
  Prelude._MatchServiceError
    defaultService
    "StageNotRetryableException"

-- | The client token was specified in an invalid format
_InvalidClientTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidClientTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidClientTokenException"

-- | The pipeline execution was specified in an invalid format or cannot be
-- found, or an execution ID does not belong to the specified pipeline.
_PipelineExecutionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineExecutionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "PipelineExecutionNotFoundException"

-- | The number of pipelines associated with the AWS account has exceeded the
-- limit allowed for the account.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Your request cannot be handled because the pipeline is busy handling
-- ongoing activities. Try again later.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"

-- | The job was specified in an invalid format or cannot be found.
_InvalidJobException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidJobException =
  Prelude._MatchServiceError
    defaultService
    "InvalidJobException"

-- | The job state was specified in an invalid format.
_InvalidJobStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidJobStateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidJobStateException"

-- | The resource was specified in an invalid format.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The pipeline was specified in an invalid format or cannot be found.
_PipelineNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "PipelineNotFoundException"

-- | The job was specified in an invalid format or cannot be found.
_JobNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_JobNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "JobNotFoundException"

-- | The stage was specified in an invalid format or cannot be found.
_StageNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StageNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "StageNotFoundException"

-- | The request failed because of an unknown error, exception, or failure.
_RequestFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestFailedException =
  Prelude._MatchServiceError
    defaultService
    "RequestFailedException"

-- | The specified action cannot be found.
_ActionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ActionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ActionNotFoundException"

-- | The stage declaration was specified in an invalid format.
_InvalidStageDeclarationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStageDeclarationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStageDeclarationException"

-- | The approval request already received a response or has expired.
_InvalidApprovalTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidApprovalTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidApprovalTokenException"

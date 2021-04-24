{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS CodePipeline__
--
-- __Overview__
--
-- This is the AWS CodePipeline API Reference. This guide provides descriptions of the actions and data types for AWS CodePipeline. Some functionality for your pipeline can only be configured through the API. For more information, see the <https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html AWS CodePipeline User Guide> .
--
-- You can use the AWS CodePipeline API to work with pipelines, stages, actions, and transitions.
--
-- /Pipelines/ are models of automated release processes. Each pipeline is uniquely named, and consists of stages, actions, and transitions.
--
-- You can work with pipelines by calling:
--
--     * 'CreatePipeline' , which creates a uniquely named pipeline.
--
--     * 'DeletePipeline' , which deletes the specified pipeline.
--
--     * 'GetPipeline' , which returns information about the pipeline structure and pipeline metadata, including the pipeline Amazon Resource Name (ARN).
--
--     * 'GetPipelineExecution' , which returns information about a specific execution of a pipeline.
--
--     * 'GetPipelineState' , which returns information about the current state of the stages and actions of a pipeline.
--
--     * 'ListActionExecutions' , which returns action-level details for past executions. The details include full stage and action-level details, including individual action duration, status, any errors that occurred during the execution, and input and output artifact location details.
--
--     * 'ListPipelines' , which gets a summary of all of the pipelines associated with your account.
--
--     * 'ListPipelineExecutions' , which gets a summary of the most recent executions for a pipeline.
--
--     * 'StartPipelineExecution' , which runs the most recent revision of an artifact through the pipeline.
--
--     * 'StopPipelineExecution' , which stops the specified pipeline execution from continuing through the pipeline.
--
--     * 'UpdatePipeline' , which updates a pipeline with edits or changes to the structure of the pipeline.
--
--
--
-- Pipelines include /stages/ . Each stage contains one or more actions that must complete before the next stage begins. A stage results in success or failure. If a stage fails, the pipeline stops at that stage and remains stopped until either a new version of an artifact appears in the source location, or a user takes action to rerun the most recent artifact through the pipeline. You can call 'GetPipelineState' , which displays the status of a pipeline, including the status of stages in the pipeline, or 'GetPipeline' , which returns the entire structure of the pipeline, including the stages of that pipeline. For more information about the structure of stages and actions, see <https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html AWS CodePipeline Pipeline Structure Reference> .
--
-- Pipeline stages include /actions/ that are categorized into categories such as source or build actions performed in a stage of a pipeline. For example, you can use a source action to import artifacts into a pipeline from a source such as Amazon S3. Like stages, you do not work with actions directly in most cases, but you do define and interact with actions when working with pipeline operations such as 'CreatePipeline' and 'GetPipelineState' . Valid action categories are:
--
--     * Source
--
--     * Build
--
--     * Test
--
--     * Deploy
--
--     * Approval
--
--     * Invoke
--
--
--
-- Pipelines also include /transitions/ , which allow the transition of artifacts from one stage to the next in a pipeline after the actions in one stage complete.
--
-- You can work with transitions by calling:
--
--     * 'DisableStageTransition' , which prevents artifacts from transitioning to the next stage in a pipeline.
--
--     * 'EnableStageTransition' , which enables transition of artifacts between stages in a pipeline.
--
--
--
-- __Using the API to integrate with AWS CodePipeline__
--
-- For third-party integrators or developers who want to create their own integrations with AWS CodePipeline, the expected sequence varies from the standard API user. To integrate with AWS CodePipeline, developers need to work with the following items:
--
-- __Jobs__ , which are instances of an action. For example, a job for a source action might import a revision of an artifact from a source.
--
-- You can work with jobs by calling:
--
--     * 'AcknowledgeJob' , which confirms whether a job worker has received the specified job.
--
--     * 'GetJobDetails' , which returns the details of a job.
--
--     * 'PollForJobs' , which determines whether there are any jobs to act on.
--
--     * 'PutJobFailureResult' , which provides details of a job failure.
--
--     * 'PutJobSuccessResult' , which provides details of a job success.
--
--
--
-- __Third party jobs__ , which are instances of an action created by a partner action and integrated into AWS CodePipeline. Partner actions are created by members of the AWS Partner Network.
--
-- You can work with third party jobs by calling:
--
--     * 'AcknowledgeThirdPartyJob' , which confirms whether a job worker has received the specified job.
--
--     * 'GetThirdPartyJobDetails' , which requests the details of a job for a partner action.
--
--     * 'PollForThirdPartyJobs' , which determines whether there are any jobs to act on.
--
--     * 'PutThirdPartyJobFailureResult' , which provides details of a job failure.
--
--     * 'PutThirdPartyJobSuccessResult' , which provides details of a job success.
module Network.AWS.CodePipeline
  ( -- * Service Configuration
    codePipeline,

    -- * Errors
    -- $errors

    -- ** InvalidWebhookAuthenticationParametersException
    _InvalidWebhookAuthenticationParametersException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** NotLatestPipelineExecutionException
    _NotLatestPipelineExecutionException,

    -- ** PipelineNameInUseException
    _PipelineNameInUseException,

    -- ** ApprovalAlreadyCompletedException
    _ApprovalAlreadyCompletedException,

    -- ** OutputVariablesSizeExceededException
    _OutputVariablesSizeExceededException,

    -- ** InvalidARNException
    _InvalidARNException,

    -- ** InvalidStructureException
    _InvalidStructureException,

    -- ** InvalidBlockerDeclarationException
    _InvalidBlockerDeclarationException,

    -- ** PipelineExecutionNotStoppableException
    _PipelineExecutionNotStoppableException,

    -- ** InvalidActionDeclarationException
    _InvalidActionDeclarationException,

    -- ** InvalidWebhookFilterPatternException
    _InvalidWebhookFilterPatternException,

    -- ** DuplicatedStopRequestException
    _DuplicatedStopRequestException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** ActionTypeNotFoundException
    _ActionTypeNotFoundException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** InvalidTagsException
    _InvalidTagsException,

    -- ** InvalidNonceException
    _InvalidNonceException,

    -- ** ActionTypeAlreadyExistsException
    _ActionTypeAlreadyExistsException,

    -- ** WebhookNotFoundException
    _WebhookNotFoundException,

    -- ** PipelineVersionNotFoundException
    _PipelineVersionNotFoundException,

    -- ** ValidationException
    _ValidationException,

    -- ** StageNotRetryableException
    _StageNotRetryableException,

    -- ** InvalidClientTokenException
    _InvalidClientTokenException,

    -- ** PipelineExecutionNotFoundException
    _PipelineExecutionNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ConflictException
    _ConflictException,

    -- ** InvalidJobException
    _InvalidJobException,

    -- ** InvalidJobStateException
    _InvalidJobStateException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** PipelineNotFoundException
    _PipelineNotFoundException,

    -- ** JobNotFoundException
    _JobNotFoundException,

    -- ** StageNotFoundException
    _StageNotFoundException,

    -- ** RequestFailedException
    _RequestFailedException,

    -- ** ActionNotFoundException
    _ActionNotFoundException,

    -- ** InvalidStageDeclarationException
    _InvalidStageDeclarationException,

    -- ** InvalidApprovalTokenException
    _InvalidApprovalTokenException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListActionTypes (Paginated)
    module Network.AWS.CodePipeline.ListActionTypes,

    -- ** DeregisterWebhookWithThirdParty
    module Network.AWS.CodePipeline.DeregisterWebhookWithThirdParty,

    -- ** PutActionRevision
    module Network.AWS.CodePipeline.PutActionRevision,

    -- ** PutJobSuccessResult
    module Network.AWS.CodePipeline.PutJobSuccessResult,

    -- ** PutThirdPartyJobSuccessResult
    module Network.AWS.CodePipeline.PutThirdPartyJobSuccessResult,

    -- ** CreatePipeline
    module Network.AWS.CodePipeline.CreatePipeline,

    -- ** RetryStageExecution
    module Network.AWS.CodePipeline.RetryStageExecution,

    -- ** UpdatePipeline
    module Network.AWS.CodePipeline.UpdatePipeline,

    -- ** GetPipelineState
    module Network.AWS.CodePipeline.GetPipelineState,

    -- ** UntagResource
    module Network.AWS.CodePipeline.UntagResource,

    -- ** DeletePipeline
    module Network.AWS.CodePipeline.DeletePipeline,

    -- ** StartPipelineExecution
    module Network.AWS.CodePipeline.StartPipelineExecution,

    -- ** GetActionType
    module Network.AWS.CodePipeline.GetActionType,

    -- ** TagResource
    module Network.AWS.CodePipeline.TagResource,

    -- ** StopPipelineExecution
    module Network.AWS.CodePipeline.StopPipelineExecution,

    -- ** RegisterWebhookWithThirdParty
    module Network.AWS.CodePipeline.RegisterWebhookWithThirdParty,

    -- ** ListActionExecutions (Paginated)
    module Network.AWS.CodePipeline.ListActionExecutions,

    -- ** PollForThirdPartyJobs
    module Network.AWS.CodePipeline.PollForThirdPartyJobs,

    -- ** EnableStageTransition
    module Network.AWS.CodePipeline.EnableStageTransition,

    -- ** DeleteWebhook
    module Network.AWS.CodePipeline.DeleteWebhook,

    -- ** AcknowledgeThirdPartyJob
    module Network.AWS.CodePipeline.AcknowledgeThirdPartyJob,

    -- ** AcknowledgeJob
    module Network.AWS.CodePipeline.AcknowledgeJob,

    -- ** DisableStageTransition
    module Network.AWS.CodePipeline.DisableStageTransition,

    -- ** UpdateActionType
    module Network.AWS.CodePipeline.UpdateActionType,

    -- ** PutApprovalResult
    module Network.AWS.CodePipeline.PutApprovalResult,

    -- ** PutJobFailureResult
    module Network.AWS.CodePipeline.PutJobFailureResult,

    -- ** DeleteCustomActionType
    module Network.AWS.CodePipeline.DeleteCustomActionType,

    -- ** GetPipeline
    module Network.AWS.CodePipeline.GetPipeline,

    -- ** CreateCustomActionType
    module Network.AWS.CodePipeline.CreateCustomActionType,

    -- ** ListPipelineExecutions (Paginated)
    module Network.AWS.CodePipeline.ListPipelineExecutions,

    -- ** GetThirdPartyJobDetails
    module Network.AWS.CodePipeline.GetThirdPartyJobDetails,

    -- ** GetPipelineExecution
    module Network.AWS.CodePipeline.GetPipelineExecution,

    -- ** GetJobDetails
    module Network.AWS.CodePipeline.GetJobDetails,

    -- ** ListPipelines (Paginated)
    module Network.AWS.CodePipeline.ListPipelines,

    -- ** PollForJobs
    module Network.AWS.CodePipeline.PollForJobs,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.CodePipeline.ListTagsForResource,

    -- ** PutWebhook
    module Network.AWS.CodePipeline.PutWebhook,

    -- ** PutThirdPartyJobFailureResult
    module Network.AWS.CodePipeline.PutThirdPartyJobFailureResult,

    -- ** ListWebhooks (Paginated)
    module Network.AWS.CodePipeline.ListWebhooks,

    -- * Types

    -- ** ActionCategory
    ActionCategory (..),

    -- ** ActionConfigurationPropertyType
    ActionConfigurationPropertyType (..),

    -- ** ActionExecutionStatus
    ActionExecutionStatus (..),

    -- ** ActionOwner
    ActionOwner (..),

    -- ** ApprovalStatus
    ApprovalStatus (..),

    -- ** ArtifactLocationType
    ArtifactLocationType (..),

    -- ** ArtifactStoreType
    ArtifactStoreType (..),

    -- ** BlockerType
    BlockerType (..),

    -- ** EncryptionKeyType
    EncryptionKeyType (..),

    -- ** ExecutorType
    ExecutorType (..),

    -- ** FailureType
    FailureType (..),

    -- ** JobStatus
    JobStatus (..),

    -- ** PipelineExecutionStatus
    PipelineExecutionStatus (..),

    -- ** StageExecutionStatus
    StageExecutionStatus (..),

    -- ** StageRetryMode
    StageRetryMode (..),

    -- ** StageTransitionType
    StageTransitionType (..),

    -- ** TriggerType
    TriggerType (..),

    -- ** WebhookAuthenticationType
    WebhookAuthenticationType (..),

    -- ** AWSSessionCredentials
    AWSSessionCredentials,
    awsSessionCredentials,
    ascAccessKeyId,
    ascSecretAccessKey,
    ascSessionToken,

    -- ** ActionConfiguration
    ActionConfiguration,
    actionConfiguration,
    acConfiguration,

    -- ** ActionConfigurationProperty
    ActionConfigurationProperty,
    actionConfigurationProperty,
    acpDescription,
    acpType,
    acpQueryable,
    acpName,
    acpRequired,
    acpKey,
    acpSecret,

    -- ** ActionContext
    ActionContext,
    actionContext,
    acActionExecutionId,
    acName,

    -- ** ActionDeclaration
    ActionDeclaration,
    actionDeclaration,
    actRoleARN,
    actConfiguration,
    actRunOrder,
    actNamespace,
    actInputArtifacts,
    actRegion,
    actOutputArtifacts,
    actName,
    actActionTypeId,

    -- ** ActionExecution
    ActionExecution,
    actionExecution,
    aeStatus,
    aeActionExecutionId,
    aeLastStatusChange,
    aePercentComplete,
    aeExternalExecutionId,
    aeExternalExecutionURL,
    aeLastUpdatedBy,
    aeSummary,
    aeToken,
    aeErrorDetails,

    -- ** ActionExecutionDetail
    ActionExecutionDetail,
    actionExecutionDetail,
    aedStatus,
    aedActionName,
    aedActionExecutionId,
    aedInput,
    aedLastUpdateTime,
    aedStageName,
    aedStartTime,
    aedOutput,
    aedPipelineVersion,
    aedPipelineExecutionId,

    -- ** ActionExecutionFilter
    ActionExecutionFilter,
    actionExecutionFilter,
    aefPipelineExecutionId,

    -- ** ActionExecutionInput
    ActionExecutionInput,
    actionExecutionInput,
    aeiRoleARN,
    aeiConfiguration,
    aeiResolvedConfiguration,
    aeiNamespace,
    aeiActionTypeId,
    aeiInputArtifacts,
    aeiRegion,

    -- ** ActionExecutionOutput
    ActionExecutionOutput,
    actionExecutionOutput,
    aeoExecutionResult,
    aeoOutputVariables,
    aeoOutputArtifacts,

    -- ** ActionExecutionResult
    ActionExecutionResult,
    actionExecutionResult,
    aerExternalExecutionId,
    aerExternalExecutionURL,
    aerExternalExecutionSummary,

    -- ** ActionRevision
    ActionRevision,
    actionRevision,
    aRevisionId,
    aRevisionChangeId,
    aCreated,

    -- ** ActionState
    ActionState,
    actionState,
    asActionName,
    asLatestExecution,
    asCurrentRevision,
    asEntityURL,
    asRevisionURL,

    -- ** ActionType
    ActionType,
    actionType,
    atActionConfigurationProperties,
    atSettings,
    atId,
    atInputArtifactDetails,
    atOutputArtifactDetails,

    -- ** ActionTypeArtifactDetails
    ActionTypeArtifactDetails,
    actionTypeArtifactDetails,
    atadMinimumCount,
    atadMaximumCount,

    -- ** ActionTypeDeclaration
    ActionTypeDeclaration,
    actionTypeDeclaration,
    atdPermissions,
    atdUrls,
    atdProperties,
    atdDescription,
    atdExecutor,
    atdId,
    atdInputArtifactDetails,
    atdOutputArtifactDetails,

    -- ** ActionTypeExecutor
    ActionTypeExecutor,
    actionTypeExecutor,
    atePolicyStatementsTemplate,
    ateJobTimeout,
    ateConfiguration,
    ateType,

    -- ** ActionTypeId
    ActionTypeId,
    actionTypeId,
    atiCategory,
    atiOwner,
    atiProvider,
    atiVersion,

    -- ** ActionTypeIdentifier
    ActionTypeIdentifier,
    actionTypeIdentifier,
    aCategory,
    aOwner,
    aProvider,
    aVersion,

    -- ** ActionTypePermissions
    ActionTypePermissions,
    actionTypePermissions,
    atpAllowedAccounts,

    -- ** ActionTypeProperty
    ActionTypeProperty,
    actionTypeProperty,
    atpDescription,
    atpQueryable,
    atpName,
    atpOptional,
    atpKey,
    atpNoEcho,

    -- ** ActionTypeSettings
    ActionTypeSettings,
    actionTypeSettings,
    atsExecutionURLTemplate,
    atsEntityURLTemplate,
    atsRevisionURLTemplate,
    atsThirdPartyConfigurationURL,

    -- ** ActionTypeURLs
    ActionTypeURLs,
    actionTypeURLs,
    atuExecutionURLTemplate,
    atuEntityURLTemplate,
    atuRevisionURLTemplate,
    atuConfigurationURL,

    -- ** ApprovalResult
    ApprovalResult,
    approvalResult,
    arSummary,
    arStatus,

    -- ** Artifact
    Artifact,
    artifact,
    aName,
    aRevision,
    aLocation,

    -- ** ArtifactDetail
    ArtifactDetail,
    artifactDetail,
    adS3location,
    adName,

    -- ** ArtifactDetails
    ArtifactDetails,
    artifactDetails,
    adMinimumCount,
    adMaximumCount,

    -- ** ArtifactLocation
    ArtifactLocation,
    artifactLocation,
    alS3Location,
    alType,

    -- ** ArtifactRevision
    ArtifactRevision,
    artifactRevision,
    arRevisionId,
    arRevisionChangeIdentifier,
    arName,
    arRevisionSummary,
    arCreated,
    arRevisionURL,

    -- ** ArtifactStore
    ArtifactStore,
    artifactStore,
    asEncryptionKey,
    asType,
    asLocation,

    -- ** BlockerDeclaration
    BlockerDeclaration,
    blockerDeclaration,
    bdName,
    bdType,

    -- ** CurrentRevision
    CurrentRevision,
    currentRevision,
    crRevisionSummary,
    crCreated,
    crRevision,
    crChangeIdentifier,

    -- ** EncryptionKey
    EncryptionKey,
    encryptionKey,
    ekId,
    ekType,

    -- ** ErrorDetails
    ErrorDetails,
    errorDetails,
    edMessage,
    edCode,

    -- ** ExecutionDetails
    ExecutionDetails,
    executionDetails,
    edPercentComplete,
    edExternalExecutionId,
    edSummary,

    -- ** ExecutionTrigger
    ExecutionTrigger,
    executionTrigger,
    etTriggerDetail,
    etTriggerType,

    -- ** ExecutorConfiguration
    ExecutorConfiguration,
    executorConfiguration,
    ecJobWorkerExecutorConfiguration,
    ecLambdaExecutorConfiguration,

    -- ** FailureDetails
    FailureDetails,
    failureDetails,
    fdExternalExecutionId,
    fdType,
    fdMessage,

    -- ** InputArtifact
    InputArtifact,
    inputArtifact,
    iaName,

    -- ** Job
    Job,
    job,
    jAccountId,
    jNonce,
    jData,
    jId,

    -- ** JobData
    JobData,
    jobData,
    jdArtifactCredentials,
    jdEncryptionKey,
    jdActionConfiguration,
    jdActionTypeId,
    jdInputArtifacts,
    jdPipelineContext,
    jdContinuationToken,
    jdOutputArtifacts,

    -- ** JobDetails
    JobDetails,
    jobDetails,
    jdAccountId,
    jdData,
    jdId,

    -- ** JobWorkerExecutorConfiguration
    JobWorkerExecutorConfiguration,
    jobWorkerExecutorConfiguration,
    jwecPollingAccounts,
    jwecPollingServicePrincipals,

    -- ** LambdaExecutorConfiguration
    LambdaExecutorConfiguration,
    lambdaExecutorConfiguration,
    lecLambdaFunctionARN,

    -- ** ListWebhookItem
    ListWebhookItem,
    listWebhookItem,
    lwiLastTriggered,
    lwiArn,
    lwiTags,
    lwiErrorMessage,
    lwiErrorCode,
    lwiDefinition,
    lwiUrl,

    -- ** OutputArtifact
    OutputArtifact,
    outputArtifact,
    oaName,

    -- ** PipelineContext
    PipelineContext,
    pipelineContext,
    pcPipelineARN,
    pcStage,
    pcAction,
    pcPipelineName,
    pcPipelineExecutionId,

    -- ** PipelineDeclaration
    PipelineDeclaration,
    pipelineDeclaration,
    pdVersion,
    pdArtifactStores,
    pdArtifactStore,
    pdName,
    pdRoleARN,
    pdStages,

    -- ** PipelineExecution
    PipelineExecution,
    pipelineExecution,
    peStatus,
    peArtifactRevisions,
    pePipelineVersion,
    peStatusSummary,
    pePipelineName,
    pePipelineExecutionId,

    -- ** PipelineExecutionSummary
    PipelineExecutionSummary,
    pipelineExecutionSummary,
    pesStatus,
    pesLastUpdateTime,
    pesTrigger,
    pesStartTime,
    pesStopTrigger,
    pesSourceRevisions,
    pesPipelineExecutionId,

    -- ** PipelineMetadata
    PipelineMetadata,
    pipelineMetadata,
    pmPipelineARN,
    pmCreated,
    pmUpdated,

    -- ** PipelineSummary
    PipelineSummary,
    pipelineSummary,
    psVersion,
    psName,
    psCreated,
    psUpdated,

    -- ** S3ArtifactLocation
    S3ArtifactLocation,
    s3ArtifactLocation,
    salBucketName,
    salObjectKey,

    -- ** S3Location
    S3Location,
    s3Location,
    slKey,
    slBucket,

    -- ** SourceRevision
    SourceRevision,
    sourceRevision,
    srRevisionId,
    srRevisionSummary,
    srRevisionURL,
    srActionName,

    -- ** StageContext
    StageContext,
    stageContext,
    scName,

    -- ** StageDeclaration
    StageDeclaration,
    stageDeclaration,
    sdBlockers,
    sdName,
    sdActions,

    -- ** StageExecution
    StageExecution,
    stageExecution,
    sePipelineExecutionId,
    seStatus,

    -- ** StageState
    StageState,
    stageState,
    ssInboundExecution,
    ssLatestExecution,
    ssStageName,
    ssInboundTransitionState,
    ssActionStates,

    -- ** StopExecutionTrigger
    StopExecutionTrigger,
    stopExecutionTrigger,
    setReason,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** ThirdPartyJob
    ThirdPartyJob,
    thirdPartyJob,
    tpjClientId,
    tpjJobId,

    -- ** ThirdPartyJobData
    ThirdPartyJobData,
    thirdPartyJobData,
    tpjdArtifactCredentials,
    tpjdEncryptionKey,
    tpjdActionConfiguration,
    tpjdActionTypeId,
    tpjdInputArtifacts,
    tpjdPipelineContext,
    tpjdContinuationToken,
    tpjdOutputArtifacts,

    -- ** ThirdPartyJobDetails
    ThirdPartyJobDetails,
    thirdPartyJobDetails,
    tpjdNonce,
    tpjdData,
    tpjdId,

    -- ** TransitionState
    TransitionState,
    transitionState,
    tsLastChangedBy,
    tsEnabled,
    tsDisabledReason,
    tsLastChangedAt,

    -- ** WebhookAuthConfiguration
    WebhookAuthConfiguration,
    webhookAuthConfiguration,
    wacAllowedIPRange,
    wacSecretToken,

    -- ** WebhookDefinition
    WebhookDefinition,
    webhookDefinition,
    wdName,
    wdTargetPipeline,
    wdTargetAction,
    wdFilters,
    wdAuthentication,
    wdAuthenticationConfiguration,

    -- ** WebhookFilterRule
    WebhookFilterRule,
    webhookFilterRule,
    wfrMatchEquals,
    wfrJsonPath,
  )
where

import Network.AWS.CodePipeline.AcknowledgeJob
import Network.AWS.CodePipeline.AcknowledgeThirdPartyJob
import Network.AWS.CodePipeline.CreateCustomActionType
import Network.AWS.CodePipeline.CreatePipeline
import Network.AWS.CodePipeline.DeleteCustomActionType
import Network.AWS.CodePipeline.DeletePipeline
import Network.AWS.CodePipeline.DeleteWebhook
import Network.AWS.CodePipeline.DeregisterWebhookWithThirdParty
import Network.AWS.CodePipeline.DisableStageTransition
import Network.AWS.CodePipeline.EnableStageTransition
import Network.AWS.CodePipeline.GetActionType
import Network.AWS.CodePipeline.GetJobDetails
import Network.AWS.CodePipeline.GetPipeline
import Network.AWS.CodePipeline.GetPipelineExecution
import Network.AWS.CodePipeline.GetPipelineState
import Network.AWS.CodePipeline.GetThirdPartyJobDetails
import Network.AWS.CodePipeline.ListActionExecutions
import Network.AWS.CodePipeline.ListActionTypes
import Network.AWS.CodePipeline.ListPipelineExecutions
import Network.AWS.CodePipeline.ListPipelines
import Network.AWS.CodePipeline.ListTagsForResource
import Network.AWS.CodePipeline.ListWebhooks
import Network.AWS.CodePipeline.PollForJobs
import Network.AWS.CodePipeline.PollForThirdPartyJobs
import Network.AWS.CodePipeline.PutActionRevision
import Network.AWS.CodePipeline.PutApprovalResult
import Network.AWS.CodePipeline.PutJobFailureResult
import Network.AWS.CodePipeline.PutJobSuccessResult
import Network.AWS.CodePipeline.PutThirdPartyJobFailureResult
import Network.AWS.CodePipeline.PutThirdPartyJobSuccessResult
import Network.AWS.CodePipeline.PutWebhook
import Network.AWS.CodePipeline.RegisterWebhookWithThirdParty
import Network.AWS.CodePipeline.RetryStageExecution
import Network.AWS.CodePipeline.StartPipelineExecution
import Network.AWS.CodePipeline.StopPipelineExecution
import Network.AWS.CodePipeline.TagResource
import Network.AWS.CodePipeline.Types
import Network.AWS.CodePipeline.UntagResource
import Network.AWS.CodePipeline.UpdateActionType
import Network.AWS.CodePipeline.UpdatePipeline
import Network.AWS.CodePipeline.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CodePipeline'.

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

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Simple Workflow Service__
--
-- The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to coordinate work across distributed components. In Amazon SWF, a /task/ represents a logical unit of work that is performed by a component of your workflow. Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application.
--
-- Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state.
--
-- This documentation serves as reference only. For a broader overview of the Amazon SWF programming model, see the /<https:\/\/docs.aws.amazon.com\/amazonswf\/latest\/developerguide\/ Amazon SWF Developer Guide> / .
module Network.AWS.SWF
  ( -- * Service Configuration
    swf,

    -- * Errors
    -- $errors

    -- ** LimitExceededFault
    _LimitExceededFault,

    -- ** DomainAlreadyExistsFault
    _DomainAlreadyExistsFault,

    -- ** WorkflowExecutionAlreadyStartedFault
    _WorkflowExecutionAlreadyStartedFault,

    -- ** DomainDeprecatedFault
    _DomainDeprecatedFault,

    -- ** UnknownResourceFault
    _UnknownResourceFault,

    -- ** OperationNotPermittedFault
    _OperationNotPermittedFault,

    -- ** TypeAlreadyExistsFault
    _TypeAlreadyExistsFault,

    -- ** TooManyTagsFault
    _TooManyTagsFault,

    -- ** TypeDeprecatedFault
    _TypeDeprecatedFault,

    -- ** DefaultUndefinedFault
    _DefaultUndefinedFault,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** SignalWorkflowExecution
    module Network.AWS.SWF.SignalWorkflowExecution,

    -- ** DescribeWorkflowExecution
    module Network.AWS.SWF.DescribeWorkflowExecution,

    -- ** PollForActivityTask
    module Network.AWS.SWF.PollForActivityTask,

    -- ** RegisterActivityType
    module Network.AWS.SWF.RegisterActivityType,

    -- ** ListOpenWorkflowExecutions (Paginated)
    module Network.AWS.SWF.ListOpenWorkflowExecutions,

    -- ** RegisterDomain
    module Network.AWS.SWF.RegisterDomain,

    -- ** ListDomains (Paginated)
    module Network.AWS.SWF.ListDomains,

    -- ** RespondDecisionTaskCompleted
    module Network.AWS.SWF.RespondDecisionTaskCompleted,

    -- ** PollForDecisionTask (Paginated)
    module Network.AWS.SWF.PollForDecisionTask,

    -- ** DeprecateWorkflowType
    module Network.AWS.SWF.DeprecateWorkflowType,

    -- ** UndeprecateDomain
    module Network.AWS.SWF.UndeprecateDomain,

    -- ** UndeprecateActivityType
    module Network.AWS.SWF.UndeprecateActivityType,

    -- ** CountClosedWorkflowExecutions
    module Network.AWS.SWF.CountClosedWorkflowExecutions,

    -- ** UntagResource
    module Network.AWS.SWF.UntagResource,

    -- ** DeprecateActivityType
    module Network.AWS.SWF.DeprecateActivityType,

    -- ** TagResource
    module Network.AWS.SWF.TagResource,

    -- ** DescribeDomain
    module Network.AWS.SWF.DescribeDomain,

    -- ** CountOpenWorkflowExecutions
    module Network.AWS.SWF.CountOpenWorkflowExecutions,

    -- ** CountPendingDecisionTasks
    module Network.AWS.SWF.CountPendingDecisionTasks,

    -- ** RegisterWorkflowType
    module Network.AWS.SWF.RegisterWorkflowType,

    -- ** CountPendingActivityTasks
    module Network.AWS.SWF.CountPendingActivityTasks,

    -- ** RespondActivityTaskCompleted
    module Network.AWS.SWF.RespondActivityTaskCompleted,

    -- ** ListActivityTypes (Paginated)
    module Network.AWS.SWF.ListActivityTypes,

    -- ** StartWorkflowExecution
    module Network.AWS.SWF.StartWorkflowExecution,

    -- ** DescribeWorkflowType
    module Network.AWS.SWF.DescribeWorkflowType,

    -- ** RespondActivityTaskCanceled
    module Network.AWS.SWF.RespondActivityTaskCanceled,

    -- ** RequestCancelWorkflowExecution
    module Network.AWS.SWF.RequestCancelWorkflowExecution,

    -- ** DescribeActivityType
    module Network.AWS.SWF.DescribeActivityType,

    -- ** TerminateWorkflowExecution
    module Network.AWS.SWF.TerminateWorkflowExecution,

    -- ** RecordActivityTaskHeartbeat
    module Network.AWS.SWF.RecordActivityTaskHeartbeat,

    -- ** GetWorkflowExecutionHistory (Paginated)
    module Network.AWS.SWF.GetWorkflowExecutionHistory,

    -- ** DeprecateDomain
    module Network.AWS.SWF.DeprecateDomain,

    -- ** UndeprecateWorkflowType
    module Network.AWS.SWF.UndeprecateWorkflowType,

    -- ** RespondActivityTaskFailed
    module Network.AWS.SWF.RespondActivityTaskFailed,

    -- ** ListTagsForResource
    module Network.AWS.SWF.ListTagsForResource,

    -- ** ListWorkflowTypes (Paginated)
    module Network.AWS.SWF.ListWorkflowTypes,

    -- ** ListClosedWorkflowExecutions (Paginated)
    module Network.AWS.SWF.ListClosedWorkflowExecutions,

    -- * Types

    -- ** ActivityTaskTimeoutType
    ActivityTaskTimeoutType (..),

    -- ** CancelTimerFailedCause
    CancelTimerFailedCause (..),

    -- ** CancelWorkflowExecutionFailedCause
    CancelWorkflowExecutionFailedCause (..),

    -- ** ChildPolicy
    ChildPolicy (..),

    -- ** CloseStatus
    CloseStatus (..),

    -- ** CompleteWorkflowExecutionFailedCause
    CompleteWorkflowExecutionFailedCause (..),

    -- ** ContinueAsNewWorkflowExecutionFailedCause
    ContinueAsNewWorkflowExecutionFailedCause (..),

    -- ** DecisionTaskTimeoutType
    DecisionTaskTimeoutType (..),

    -- ** DecisionType
    DecisionType (..),

    -- ** EventType
    EventType (..),

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** FailWorkflowExecutionFailedCause
    FailWorkflowExecutionFailedCause (..),

    -- ** LambdaFunctionTimeoutType
    LambdaFunctionTimeoutType (..),

    -- ** RecordMarkerFailedCause
    RecordMarkerFailedCause (..),

    -- ** RegistrationStatus
    RegistrationStatus (..),

    -- ** RequestCancelActivityTaskFailedCause
    RequestCancelActivityTaskFailedCause (..),

    -- ** RequestCancelExternalWorkflowExecutionFailedCause
    RequestCancelExternalWorkflowExecutionFailedCause (..),

    -- ** ScheduleActivityTaskFailedCause
    ScheduleActivityTaskFailedCause (..),

    -- ** ScheduleLambdaFunctionFailedCause
    ScheduleLambdaFunctionFailedCause (..),

    -- ** SignalExternalWorkflowExecutionFailedCause
    SignalExternalWorkflowExecutionFailedCause (..),

    -- ** StartChildWorkflowExecutionFailedCause
    StartChildWorkflowExecutionFailedCause (..),

    -- ** StartLambdaFunctionFailedCause
    StartLambdaFunctionFailedCause (..),

    -- ** StartTimerFailedCause
    StartTimerFailedCause (..),

    -- ** WorkflowExecutionCancelRequestedCause
    WorkflowExecutionCancelRequestedCause (..),

    -- ** WorkflowExecutionTerminatedCause
    WorkflowExecutionTerminatedCause (..),

    -- ** WorkflowExecutionTimeoutType
    WorkflowExecutionTimeoutType (..),

    -- ** ActivityTaskCancelRequestedEventAttributes
    ActivityTaskCancelRequestedEventAttributes,
    activityTaskCancelRequestedEventAttributes,
    atcreaDecisionTaskCompletedEventId,
    atcreaActivityId,

    -- ** ActivityTaskCanceledEventAttributes
    ActivityTaskCanceledEventAttributes,
    activityTaskCanceledEventAttributes,
    atceaLatestCancelRequestedEventId,
    atceaDetails,
    atceaScheduledEventId,
    atceaStartedEventId,

    -- ** ActivityTaskCompletedEventAttributes
    ActivityTaskCompletedEventAttributes,
    activityTaskCompletedEventAttributes,
    aResult,
    aScheduledEventId,
    aStartedEventId,

    -- ** ActivityTaskFailedEventAttributes
    ActivityTaskFailedEventAttributes,
    activityTaskFailedEventAttributes,
    atfeaDetails,
    atfeaReason,
    atfeaScheduledEventId,
    atfeaStartedEventId,

    -- ** ActivityTaskScheduledEventAttributes
    ActivityTaskScheduledEventAttributes,
    activityTaskScheduledEventAttributes,
    atseaInput,
    atseaHeartbeatTimeout,
    atseaScheduleToCloseTimeout,
    atseaScheduleToStartTimeout,
    atseaTaskPriority,
    atseaControl,
    atseaStartToCloseTimeout,
    atseaActivityType,
    atseaActivityId,
    atseaTaskList,
    atseaDecisionTaskCompletedEventId,

    -- ** ActivityTaskStartedEventAttributes
    ActivityTaskStartedEventAttributes,
    activityTaskStartedEventAttributes,
    atseaIdentity,
    atseaScheduledEventId,

    -- ** ActivityTaskTimedOutEventAttributes
    ActivityTaskTimedOutEventAttributes,
    activityTaskTimedOutEventAttributes,
    attoeaDetails,
    attoeaTimeoutType,
    attoeaScheduledEventId,
    attoeaStartedEventId,

    -- ** ActivityType
    ActivityType,
    activityType,
    atName,
    atVersion,

    -- ** ActivityTypeConfiguration
    ActivityTypeConfiguration,
    activityTypeConfiguration,
    atcDefaultTaskPriority,
    atcDefaultTaskList,
    atcDefaultTaskScheduleToStartTimeout,
    atcDefaultTaskStartToCloseTimeout,
    atcDefaultTaskHeartbeatTimeout,
    atcDefaultTaskScheduleToCloseTimeout,

    -- ** ActivityTypeInfo
    ActivityTypeInfo,
    activityTypeInfo,
    atiDeprecationDate,
    atiDescription,
    atiActivityType,
    atiStatus,
    atiCreationDate,

    -- ** CancelTimerDecisionAttributes
    CancelTimerDecisionAttributes,
    cancelTimerDecisionAttributes,
    ctdaTimerId,

    -- ** CancelTimerFailedEventAttributes
    CancelTimerFailedEventAttributes,
    cancelTimerFailedEventAttributes,
    ctfeaTimerId,
    ctfeaCause,
    ctfeaDecisionTaskCompletedEventId,

    -- ** CancelWorkflowExecutionDecisionAttributes
    CancelWorkflowExecutionDecisionAttributes,
    cancelWorkflowExecutionDecisionAttributes,
    cwedaDetails,

    -- ** CancelWorkflowExecutionFailedEventAttributes
    CancelWorkflowExecutionFailedEventAttributes,
    cancelWorkflowExecutionFailedEventAttributes,
    cCause,
    cDecisionTaskCompletedEventId,

    -- ** ChildWorkflowExecutionCanceledEventAttributes
    ChildWorkflowExecutionCanceledEventAttributes,
    childWorkflowExecutionCanceledEventAttributes,
    cweceaDetails,
    cweceaWorkflowExecution,
    cweceaWorkflowType,
    cweceaInitiatedEventId,
    cweceaStartedEventId,

    -- ** ChildWorkflowExecutionCompletedEventAttributes
    ChildWorkflowExecutionCompletedEventAttributes,
    childWorkflowExecutionCompletedEventAttributes,
    cResult,
    cWorkflowExecution,
    cWorkflowType,
    cInitiatedEventId,
    cStartedEventId,

    -- ** ChildWorkflowExecutionFailedEventAttributes
    ChildWorkflowExecutionFailedEventAttributes,
    childWorkflowExecutionFailedEventAttributes,
    cwefeaDetails,
    cwefeaReason,
    cwefeaWorkflowExecution,
    cwefeaWorkflowType,
    cwefeaInitiatedEventId,
    cwefeaStartedEventId,

    -- ** ChildWorkflowExecutionStartedEventAttributes
    ChildWorkflowExecutionStartedEventAttributes,
    childWorkflowExecutionStartedEventAttributes,
    cweseaWorkflowExecution,
    cweseaWorkflowType,
    cweseaInitiatedEventId,

    -- ** ChildWorkflowExecutionTerminatedEventAttributes
    ChildWorkflowExecutionTerminatedEventAttributes,
    childWorkflowExecutionTerminatedEventAttributes,
    cweteaWorkflowExecution,
    cweteaWorkflowType,
    cweteaInitiatedEventId,
    cweteaStartedEventId,

    -- ** ChildWorkflowExecutionTimedOutEventAttributes
    ChildWorkflowExecutionTimedOutEventAttributes,
    childWorkflowExecutionTimedOutEventAttributes,
    cwetoeaWorkflowExecution,
    cwetoeaWorkflowType,
    cwetoeaTimeoutType,
    cwetoeaInitiatedEventId,
    cwetoeaStartedEventId,

    -- ** CloseStatusFilter
    CloseStatusFilter,
    closeStatusFilter,
    csfStatus,

    -- ** CompleteWorkflowExecutionDecisionAttributes
    CompleteWorkflowExecutionDecisionAttributes,
    completeWorkflowExecutionDecisionAttributes,
    cwedaResult,

    -- ** CompleteWorkflowExecutionFailedEventAttributes
    CompleteWorkflowExecutionFailedEventAttributes,
    completeWorkflowExecutionFailedEventAttributes,
    cwefeaCause,
    cwefeaDecisionTaskCompletedEventId,

    -- ** ContinueAsNewWorkflowExecutionDecisionAttributes
    ContinueAsNewWorkflowExecutionDecisionAttributes,
    continueAsNewWorkflowExecutionDecisionAttributes,
    canwedaInput,
    canwedaLambdaRole,
    canwedaChildPolicy,
    canwedaTaskList,
    canwedaTaskPriority,
    canwedaExecutionStartToCloseTimeout,
    canwedaWorkflowTypeVersion,
    canwedaTaskStartToCloseTimeout,
    canwedaTagList,

    -- ** ContinueAsNewWorkflowExecutionFailedEventAttributes
    ContinueAsNewWorkflowExecutionFailedEventAttributes,
    continueAsNewWorkflowExecutionFailedEventAttributes,
    canwefeaCause,
    canwefeaDecisionTaskCompletedEventId,

    -- ** Decision
    Decision,
    decision,
    dCompleteWorkflowExecutionDecisionAttributes,
    dStartChildWorkflowExecutionDecisionAttributes,
    dRequestCancelExternalWorkflowExecutionDecisionAttributes,
    dFailWorkflowExecutionDecisionAttributes,
    dCancelWorkflowExecutionDecisionAttributes,
    dStartTimerDecisionAttributes,
    dRequestCancelActivityTaskDecisionAttributes,
    dRecordMarkerDecisionAttributes,
    dSignalExternalWorkflowExecutionDecisionAttributes,
    dScheduleActivityTaskDecisionAttributes,
    dScheduleLambdaFunctionDecisionAttributes,
    dContinueAsNewWorkflowExecutionDecisionAttributes,
    dCancelTimerDecisionAttributes,
    dDecisionType,

    -- ** DecisionTaskCompletedEventAttributes
    DecisionTaskCompletedEventAttributes,
    decisionTaskCompletedEventAttributes,
    dtceaExecutionContext,
    dtceaScheduledEventId,
    dtceaStartedEventId,

    -- ** DecisionTaskScheduledEventAttributes
    DecisionTaskScheduledEventAttributes,
    decisionTaskScheduledEventAttributes,
    dtseaTaskPriority,
    dtseaStartToCloseTimeout,
    dtseaTaskList,

    -- ** DecisionTaskStartedEventAttributes
    DecisionTaskStartedEventAttributes,
    decisionTaskStartedEventAttributes,
    dtseaIdentity,
    dtseaScheduledEventId,

    -- ** DecisionTaskTimedOutEventAttributes
    DecisionTaskTimedOutEventAttributes,
    decisionTaskTimedOutEventAttributes,
    dttoeaTimeoutType,
    dttoeaScheduledEventId,
    dttoeaStartedEventId,

    -- ** DomainConfiguration
    DomainConfiguration,
    domainConfiguration,
    dcWorkflowExecutionRetentionPeriodInDays,

    -- ** DomainInfo
    DomainInfo,
    domainInfo,
    diArn,
    diDescription,
    diName,
    diStatus,

    -- ** ExecutionTimeFilter
    ExecutionTimeFilter,
    executionTimeFilter,
    etfLatestDate,
    etfOldestDate,

    -- ** ExternalWorkflowExecutionCancelRequestedEventAttributes
    ExternalWorkflowExecutionCancelRequestedEventAttributes,
    externalWorkflowExecutionCancelRequestedEventAttributes,
    ewecreaWorkflowExecution,
    ewecreaInitiatedEventId,

    -- ** ExternalWorkflowExecutionSignaledEventAttributes
    ExternalWorkflowExecutionSignaledEventAttributes,
    externalWorkflowExecutionSignaledEventAttributes,
    eweseaWorkflowExecution,
    eweseaInitiatedEventId,

    -- ** FailWorkflowExecutionDecisionAttributes
    FailWorkflowExecutionDecisionAttributes,
    failWorkflowExecutionDecisionAttributes,
    fwedaDetails,
    fwedaReason,

    -- ** FailWorkflowExecutionFailedEventAttributes
    FailWorkflowExecutionFailedEventAttributes,
    failWorkflowExecutionFailedEventAttributes,
    fwefeaCause,
    fwefeaDecisionTaskCompletedEventId,

    -- ** HistoryEvent
    HistoryEvent,
    historyEvent,
    heChildWorkflowExecutionTimedOutEventAttributes,
    heRequestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    heLambdaFunctionStartedEventAttributes,
    heStartChildWorkflowExecutionInitiatedEventAttributes,
    heDecisionTaskScheduledEventAttributes,
    heChildWorkflowExecutionCanceledEventAttributes,
    heActivityTaskCanceledEventAttributes,
    heActivityTaskTimedOutEventAttributes,
    heExternalWorkflowExecutionCancelRequestedEventAttributes,
    heCancelTimerFailedEventAttributes,
    heChildWorkflowExecutionStartedEventAttributes,
    heLambdaFunctionTimedOutEventAttributes,
    heChildWorkflowExecutionFailedEventAttributes,
    heTimerCanceledEventAttributes,
    heLambdaFunctionCompletedEventAttributes,
    heCompleteWorkflowExecutionFailedEventAttributes,
    heActivityTaskFailedEventAttributes,
    heTimerFiredEventAttributes,
    heWorkflowExecutionSignaledEventAttributes,
    heActivityTaskCancelRequestedEventAttributes,
    heWorkflowExecutionCanceledEventAttributes,
    heStartLambdaFunctionFailedEventAttributes,
    heScheduleActivityTaskFailedEventAttributes,
    heWorkflowExecutionTimedOutEventAttributes,
    heMarkerRecordedEventAttributes,
    heActivityTaskScheduledEventAttributes,
    heStartTimerFailedEventAttributes,
    heWorkflowExecutionTerminatedEventAttributes,
    heWorkflowExecutionCompletedEventAttributes,
    heRequestCancelActivityTaskFailedEventAttributes,
    heRecordMarkerFailedEventAttributes,
    heCancelWorkflowExecutionFailedEventAttributes,
    heLambdaFunctionScheduledEventAttributes,
    heDecisionTaskStartedEventAttributes,
    heWorkflowExecutionCancelRequestedEventAttributes,
    heWorkflowExecutionContinuedAsNewEventAttributes,
    heDecisionTaskTimedOutEventAttributes,
    heWorkflowExecutionFailedEventAttributes,
    heActivityTaskCompletedEventAttributes,
    heSignalExternalWorkflowExecutionInitiatedEventAttributes,
    heContinueAsNewWorkflowExecutionFailedEventAttributes,
    heDecisionTaskCompletedEventAttributes,
    heRequestCancelExternalWorkflowExecutionFailedEventAttributes,
    heFailWorkflowExecutionFailedEventAttributes,
    heWorkflowExecutionStartedEventAttributes,
    heStartChildWorkflowExecutionFailedEventAttributes,
    heExternalWorkflowExecutionSignaledEventAttributes,
    heScheduleLambdaFunctionFailedEventAttributes,
    heChildWorkflowExecutionCompletedEventAttributes,
    heLambdaFunctionFailedEventAttributes,
    heChildWorkflowExecutionTerminatedEventAttributes,
    heTimerStartedEventAttributes,
    heActivityTaskStartedEventAttributes,
    heSignalExternalWorkflowExecutionFailedEventAttributes,
    heEventTimestamp,
    heEventType,
    heEventId,

    -- ** LambdaFunctionCompletedEventAttributes
    LambdaFunctionCompletedEventAttributes,
    lambdaFunctionCompletedEventAttributes,
    lfceaResult,
    lfceaScheduledEventId,
    lfceaStartedEventId,

    -- ** LambdaFunctionFailedEventAttributes
    LambdaFunctionFailedEventAttributes,
    lambdaFunctionFailedEventAttributes,
    lffeaDetails,
    lffeaReason,
    lffeaScheduledEventId,
    lffeaStartedEventId,

    -- ** LambdaFunctionScheduledEventAttributes
    LambdaFunctionScheduledEventAttributes,
    lambdaFunctionScheduledEventAttributes,
    lfseaInput,
    lfseaControl,
    lfseaStartToCloseTimeout,
    lfseaId,
    lfseaName,
    lfseaDecisionTaskCompletedEventId,

    -- ** LambdaFunctionStartedEventAttributes
    LambdaFunctionStartedEventAttributes,
    lambdaFunctionStartedEventAttributes,
    lfseaScheduledEventId,

    -- ** LambdaFunctionTimedOutEventAttributes
    LambdaFunctionTimedOutEventAttributes,
    lambdaFunctionTimedOutEventAttributes,
    lftoeaTimeoutType,
    lftoeaScheduledEventId,
    lftoeaStartedEventId,

    -- ** MarkerRecordedEventAttributes
    MarkerRecordedEventAttributes,
    markerRecordedEventAttributes,
    mreaDetails,
    mreaMarkerName,
    mreaDecisionTaskCompletedEventId,

    -- ** PendingTaskCount
    PendingTaskCount,
    pendingTaskCount,
    ptcTruncated,
    ptcCount,

    -- ** RecordMarkerDecisionAttributes
    RecordMarkerDecisionAttributes,
    recordMarkerDecisionAttributes,
    rmdaDetails,
    rmdaMarkerName,

    -- ** RecordMarkerFailedEventAttributes
    RecordMarkerFailedEventAttributes,
    recordMarkerFailedEventAttributes,
    rmfeaMarkerName,
    rmfeaCause,
    rmfeaDecisionTaskCompletedEventId,

    -- ** RequestCancelActivityTaskDecisionAttributes
    RequestCancelActivityTaskDecisionAttributes,
    requestCancelActivityTaskDecisionAttributes,
    rcatdaActivityId,

    -- ** RequestCancelActivityTaskFailedEventAttributes
    RequestCancelActivityTaskFailedEventAttributes,
    requestCancelActivityTaskFailedEventAttributes,
    rcatfeaActivityId,
    rcatfeaCause,
    rcatfeaDecisionTaskCompletedEventId,

    -- ** RequestCancelExternalWorkflowExecutionDecisionAttributes
    RequestCancelExternalWorkflowExecutionDecisionAttributes,
    requestCancelExternalWorkflowExecutionDecisionAttributes,
    rcewedaRunId,
    rcewedaControl,
    rcewedaWorkflowId,

    -- ** RequestCancelExternalWorkflowExecutionFailedEventAttributes
    RequestCancelExternalWorkflowExecutionFailedEventAttributes,
    requestCancelExternalWorkflowExecutionFailedEventAttributes,
    rcewefeaRunId,
    rcewefeaControl,
    rcewefeaWorkflowId,
    rcewefeaCause,
    rcewefeaInitiatedEventId,
    rcewefeaDecisionTaskCompletedEventId,

    -- ** RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    rceweieaRunId,
    rceweieaControl,
    rceweieaWorkflowId,
    rceweieaDecisionTaskCompletedEventId,

    -- ** ResourceTag
    ResourceTag,
    resourceTag,
    rtValue,
    rtKey,

    -- ** ScheduleActivityTaskDecisionAttributes
    ScheduleActivityTaskDecisionAttributes,
    scheduleActivityTaskDecisionAttributes,
    satdaInput,
    satdaHeartbeatTimeout,
    satdaScheduleToCloseTimeout,
    satdaScheduleToStartTimeout,
    satdaTaskList,
    satdaTaskPriority,
    satdaControl,
    satdaStartToCloseTimeout,
    satdaActivityType,
    satdaActivityId,

    -- ** ScheduleActivityTaskFailedEventAttributes
    ScheduleActivityTaskFailedEventAttributes,
    scheduleActivityTaskFailedEventAttributes,
    satfeaActivityType,
    satfeaActivityId,
    satfeaCause,
    satfeaDecisionTaskCompletedEventId,

    -- ** ScheduleLambdaFunctionDecisionAttributes
    ScheduleLambdaFunctionDecisionAttributes,
    scheduleLambdaFunctionDecisionAttributes,
    slfdaInput,
    slfdaControl,
    slfdaStartToCloseTimeout,
    slfdaId,
    slfdaName,

    -- ** ScheduleLambdaFunctionFailedEventAttributes
    ScheduleLambdaFunctionFailedEventAttributes,
    scheduleLambdaFunctionFailedEventAttributes,
    sId,
    sName,
    sCause,
    sDecisionTaskCompletedEventId,

    -- ** SignalExternalWorkflowExecutionDecisionAttributes
    SignalExternalWorkflowExecutionDecisionAttributes,
    signalExternalWorkflowExecutionDecisionAttributes,
    sewedaRunId,
    sewedaInput,
    sewedaControl,
    sewedaWorkflowId,
    sewedaSignalName,

    -- ** SignalExternalWorkflowExecutionFailedEventAttributes
    SignalExternalWorkflowExecutionFailedEventAttributes,
    signalExternalWorkflowExecutionFailedEventAttributes,
    sewefeaRunId,
    sewefeaControl,
    sewefeaWorkflowId,
    sewefeaCause,
    sewefeaInitiatedEventId,
    sewefeaDecisionTaskCompletedEventId,

    -- ** SignalExternalWorkflowExecutionInitiatedEventAttributes
    SignalExternalWorkflowExecutionInitiatedEventAttributes,
    signalExternalWorkflowExecutionInitiatedEventAttributes,
    seweieaRunId,
    seweieaInput,
    seweieaControl,
    seweieaWorkflowId,
    seweieaSignalName,
    seweieaDecisionTaskCompletedEventId,

    -- ** StartChildWorkflowExecutionDecisionAttributes
    StartChildWorkflowExecutionDecisionAttributes,
    startChildWorkflowExecutionDecisionAttributes,
    scwedaInput,
    scwedaLambdaRole,
    scwedaChildPolicy,
    scwedaTaskList,
    scwedaTaskPriority,
    scwedaControl,
    scwedaExecutionStartToCloseTimeout,
    scwedaTaskStartToCloseTimeout,
    scwedaTagList,
    scwedaWorkflowType,
    scwedaWorkflowId,

    -- ** StartChildWorkflowExecutionFailedEventAttributes
    StartChildWorkflowExecutionFailedEventAttributes,
    startChildWorkflowExecutionFailedEventAttributes,
    scwefeaControl,
    scwefeaWorkflowType,
    scwefeaCause,
    scwefeaWorkflowId,
    scwefeaInitiatedEventId,
    scwefeaDecisionTaskCompletedEventId,

    -- ** StartChildWorkflowExecutionInitiatedEventAttributes
    StartChildWorkflowExecutionInitiatedEventAttributes,
    startChildWorkflowExecutionInitiatedEventAttributes,
    scweieaInput,
    scweieaLambdaRole,
    scweieaTaskPriority,
    scweieaControl,
    scweieaExecutionStartToCloseTimeout,
    scweieaTaskStartToCloseTimeout,
    scweieaTagList,
    scweieaWorkflowId,
    scweieaWorkflowType,
    scweieaTaskList,
    scweieaDecisionTaskCompletedEventId,
    scweieaChildPolicy,

    -- ** StartLambdaFunctionFailedEventAttributes
    StartLambdaFunctionFailedEventAttributes,
    startLambdaFunctionFailedEventAttributes,
    slffeaMessage,
    slffeaScheduledEventId,
    slffeaCause,

    -- ** StartTimerDecisionAttributes
    StartTimerDecisionAttributes,
    startTimerDecisionAttributes,
    stdaControl,
    stdaTimerId,
    stdaStartToFireTimeout,

    -- ** StartTimerFailedEventAttributes
    StartTimerFailedEventAttributes,
    startTimerFailedEventAttributes,
    stfeaTimerId,
    stfeaCause,
    stfeaDecisionTaskCompletedEventId,

    -- ** TagFilter
    TagFilter,
    tagFilter,
    tfTag,

    -- ** TaskList
    TaskList,
    taskList,
    tlName,

    -- ** TimerCanceledEventAttributes
    TimerCanceledEventAttributes,
    timerCanceledEventAttributes,
    tceaTimerId,
    tceaStartedEventId,
    tceaDecisionTaskCompletedEventId,

    -- ** TimerFiredEventAttributes
    TimerFiredEventAttributes,
    timerFiredEventAttributes,
    tfeaTimerId,
    tfeaStartedEventId,

    -- ** TimerStartedEventAttributes
    TimerStartedEventAttributes,
    timerStartedEventAttributes,
    tseaControl,
    tseaTimerId,
    tseaStartToFireTimeout,
    tseaDecisionTaskCompletedEventId,

    -- ** WorkflowExecution
    WorkflowExecution,
    workflowExecution,
    weWorkflowId,
    weRunId,

    -- ** WorkflowExecutionCancelRequestedEventAttributes
    WorkflowExecutionCancelRequestedEventAttributes,
    workflowExecutionCancelRequestedEventAttributes,
    wecreaExternalInitiatedEventId,
    wecreaExternalWorkflowExecution,
    wecreaCause,

    -- ** WorkflowExecutionCanceledEventAttributes
    WorkflowExecutionCanceledEventAttributes,
    workflowExecutionCanceledEventAttributes,
    weceaDetails,
    weceaDecisionTaskCompletedEventId,

    -- ** WorkflowExecutionCompletedEventAttributes
    WorkflowExecutionCompletedEventAttributes,
    workflowExecutionCompletedEventAttributes,
    wResult,
    wDecisionTaskCompletedEventId,

    -- ** WorkflowExecutionConfiguration
    WorkflowExecutionConfiguration,
    workflowExecutionConfiguration,
    wecLambdaRole,
    wecTaskPriority,
    wecTaskStartToCloseTimeout,
    wecExecutionStartToCloseTimeout,
    wecTaskList,
    wecChildPolicy,

    -- ** WorkflowExecutionContinuedAsNewEventAttributes
    WorkflowExecutionContinuedAsNewEventAttributes,
    workflowExecutionContinuedAsNewEventAttributes,
    wecaneaInput,
    wecaneaLambdaRole,
    wecaneaTaskPriority,
    wecaneaExecutionStartToCloseTimeout,
    wecaneaTaskStartToCloseTimeout,
    wecaneaTagList,
    wecaneaDecisionTaskCompletedEventId,
    wecaneaNewExecutionRunId,
    wecaneaTaskList,
    wecaneaChildPolicy,
    wecaneaWorkflowType,

    -- ** WorkflowExecutionCount
    WorkflowExecutionCount,
    workflowExecutionCount,
    wecTruncated,
    wecCount,

    -- ** WorkflowExecutionFailedEventAttributes
    WorkflowExecutionFailedEventAttributes,
    workflowExecutionFailedEventAttributes,
    wefeaDetails,
    wefeaReason,
    wefeaDecisionTaskCompletedEventId,

    -- ** WorkflowExecutionFilter
    WorkflowExecutionFilter,
    workflowExecutionFilter,
    wefWorkflowId,

    -- ** WorkflowExecutionInfo
    WorkflowExecutionInfo,
    workflowExecutionInfo,
    weiParent,
    weiCloseStatus,
    weiCancelRequested,
    weiCloseTimestamp,
    weiTagList,
    weiExecution,
    weiWorkflowType,
    weiStartTimestamp,
    weiExecutionStatus,

    -- ** WorkflowExecutionInfos
    WorkflowExecutionInfos,
    workflowExecutionInfos,
    weiNextPageToken,
    weiExecutionInfos,

    -- ** WorkflowExecutionOpenCounts
    WorkflowExecutionOpenCounts,
    workflowExecutionOpenCounts,
    weocOpenLambdaFunctions,
    weocOpenActivityTasks,
    weocOpenDecisionTasks,
    weocOpenTimers,
    weocOpenChildWorkflowExecutions,

    -- ** WorkflowExecutionSignaledEventAttributes
    WorkflowExecutionSignaledEventAttributes,
    workflowExecutionSignaledEventAttributes,
    weseaInput,
    weseaExternalInitiatedEventId,
    weseaExternalWorkflowExecution,
    weseaSignalName,

    -- ** WorkflowExecutionStartedEventAttributes
    WorkflowExecutionStartedEventAttributes,
    workflowExecutionStartedEventAttributes,
    wInput,
    wContinuedExecutionRunId,
    wLambdaRole,
    wParentInitiatedEventId,
    wTaskPriority,
    wExecutionStartToCloseTimeout,
    wTaskStartToCloseTimeout,
    wTagList,
    wParentWorkflowExecution,
    wChildPolicy,
    wTaskList,
    wWorkflowType,

    -- ** WorkflowExecutionTerminatedEventAttributes
    WorkflowExecutionTerminatedEventAttributes,
    workflowExecutionTerminatedEventAttributes,
    weteaDetails,
    weteaReason,
    weteaCause,
    weteaChildPolicy,

    -- ** WorkflowExecutionTimedOutEventAttributes
    WorkflowExecutionTimedOutEventAttributes,
    workflowExecutionTimedOutEventAttributes,
    wetoeaTimeoutType,
    wetoeaChildPolicy,

    -- ** WorkflowType
    WorkflowType,
    workflowType,
    wtName,
    wtVersion,

    -- ** WorkflowTypeConfiguration
    WorkflowTypeConfiguration,
    workflowTypeConfiguration,
    wtcDefaultExecutionStartToCloseTimeout,
    wtcDefaultTaskPriority,
    wtcDefaultTaskList,
    wtcDefaultChildPolicy,
    wtcDefaultLambdaRole,
    wtcDefaultTaskStartToCloseTimeout,

    -- ** WorkflowTypeFilter
    WorkflowTypeFilter,
    workflowTypeFilter,
    wtfVersion,
    wtfName,

    -- ** WorkflowTypeInfo
    WorkflowTypeInfo,
    workflowTypeInfo,
    wtiDeprecationDate,
    wtiDescription,
    wtiWorkflowType,
    wtiStatus,
    wtiCreationDate,
  )
where

import Network.AWS.SWF.CountClosedWorkflowExecutions
import Network.AWS.SWF.CountOpenWorkflowExecutions
import Network.AWS.SWF.CountPendingActivityTasks
import Network.AWS.SWF.CountPendingDecisionTasks
import Network.AWS.SWF.DeprecateActivityType
import Network.AWS.SWF.DeprecateDomain
import Network.AWS.SWF.DeprecateWorkflowType
import Network.AWS.SWF.DescribeActivityType
import Network.AWS.SWF.DescribeDomain
import Network.AWS.SWF.DescribeWorkflowExecution
import Network.AWS.SWF.DescribeWorkflowType
import Network.AWS.SWF.GetWorkflowExecutionHistory
import Network.AWS.SWF.ListActivityTypes
import Network.AWS.SWF.ListClosedWorkflowExecutions
import Network.AWS.SWF.ListDomains
import Network.AWS.SWF.ListOpenWorkflowExecutions
import Network.AWS.SWF.ListTagsForResource
import Network.AWS.SWF.ListWorkflowTypes
import Network.AWS.SWF.PollForActivityTask
import Network.AWS.SWF.PollForDecisionTask
import Network.AWS.SWF.RecordActivityTaskHeartbeat
import Network.AWS.SWF.RegisterActivityType
import Network.AWS.SWF.RegisterDomain
import Network.AWS.SWF.RegisterWorkflowType
import Network.AWS.SWF.RequestCancelWorkflowExecution
import Network.AWS.SWF.RespondActivityTaskCanceled
import Network.AWS.SWF.RespondActivityTaskCompleted
import Network.AWS.SWF.RespondActivityTaskFailed
import Network.AWS.SWF.RespondDecisionTaskCompleted
import Network.AWS.SWF.SignalWorkflowExecution
import Network.AWS.SWF.StartWorkflowExecution
import Network.AWS.SWF.TagResource
import Network.AWS.SWF.TerminateWorkflowExecution
import Network.AWS.SWF.Types
import Network.AWS.SWF.UndeprecateActivityType
import Network.AWS.SWF.UndeprecateDomain
import Network.AWS.SWF.UndeprecateWorkflowType
import Network.AWS.SWF.UntagResource
import Network.AWS.SWF.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SWF'.

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

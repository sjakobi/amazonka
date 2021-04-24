{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types
  ( -- * Service Configuration
    swf,

    -- * Errors
    _LimitExceededFault,
    _DomainAlreadyExistsFault,
    _WorkflowExecutionAlreadyStartedFault,
    _DomainDeprecatedFault,
    _UnknownResourceFault,
    _OperationNotPermittedFault,
    _TypeAlreadyExistsFault,
    _TooManyTagsFault,
    _TypeDeprecatedFault,
    _DefaultUndefinedFault,

    -- * ActivityTaskTimeoutType
    ActivityTaskTimeoutType (..),

    -- * CancelTimerFailedCause
    CancelTimerFailedCause (..),

    -- * CancelWorkflowExecutionFailedCause
    CancelWorkflowExecutionFailedCause (..),

    -- * ChildPolicy
    ChildPolicy (..),

    -- * CloseStatus
    CloseStatus (..),

    -- * CompleteWorkflowExecutionFailedCause
    CompleteWorkflowExecutionFailedCause (..),

    -- * ContinueAsNewWorkflowExecutionFailedCause
    ContinueAsNewWorkflowExecutionFailedCause (..),

    -- * DecisionTaskTimeoutType
    DecisionTaskTimeoutType (..),

    -- * DecisionType
    DecisionType (..),

    -- * EventType
    EventType (..),

    -- * ExecutionStatus
    ExecutionStatus (..),

    -- * FailWorkflowExecutionFailedCause
    FailWorkflowExecutionFailedCause (..),

    -- * LambdaFunctionTimeoutType
    LambdaFunctionTimeoutType (..),

    -- * RecordMarkerFailedCause
    RecordMarkerFailedCause (..),

    -- * RegistrationStatus
    RegistrationStatus (..),

    -- * RequestCancelActivityTaskFailedCause
    RequestCancelActivityTaskFailedCause (..),

    -- * RequestCancelExternalWorkflowExecutionFailedCause
    RequestCancelExternalWorkflowExecutionFailedCause (..),

    -- * ScheduleActivityTaskFailedCause
    ScheduleActivityTaskFailedCause (..),

    -- * ScheduleLambdaFunctionFailedCause
    ScheduleLambdaFunctionFailedCause (..),

    -- * SignalExternalWorkflowExecutionFailedCause
    SignalExternalWorkflowExecutionFailedCause (..),

    -- * StartChildWorkflowExecutionFailedCause
    StartChildWorkflowExecutionFailedCause (..),

    -- * StartLambdaFunctionFailedCause
    StartLambdaFunctionFailedCause (..),

    -- * StartTimerFailedCause
    StartTimerFailedCause (..),

    -- * WorkflowExecutionCancelRequestedCause
    WorkflowExecutionCancelRequestedCause (..),

    -- * WorkflowExecutionTerminatedCause
    WorkflowExecutionTerminatedCause (..),

    -- * WorkflowExecutionTimeoutType
    WorkflowExecutionTimeoutType (..),

    -- * ActivityTaskCancelRequestedEventAttributes
    ActivityTaskCancelRequestedEventAttributes (..),
    activityTaskCancelRequestedEventAttributes,
    atcreaDecisionTaskCompletedEventId,
    atcreaActivityId,

    -- * ActivityTaskCanceledEventAttributes
    ActivityTaskCanceledEventAttributes (..),
    activityTaskCanceledEventAttributes,
    atceaLatestCancelRequestedEventId,
    atceaDetails,
    atceaScheduledEventId,
    atceaStartedEventId,

    -- * ActivityTaskCompletedEventAttributes
    ActivityTaskCompletedEventAttributes (..),
    activityTaskCompletedEventAttributes,
    aResult,
    aScheduledEventId,
    aStartedEventId,

    -- * ActivityTaskFailedEventAttributes
    ActivityTaskFailedEventAttributes (..),
    activityTaskFailedEventAttributes,
    atfeaDetails,
    atfeaReason,
    atfeaScheduledEventId,
    atfeaStartedEventId,

    -- * ActivityTaskScheduledEventAttributes
    ActivityTaskScheduledEventAttributes (..),
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

    -- * ActivityTaskStartedEventAttributes
    ActivityTaskStartedEventAttributes (..),
    activityTaskStartedEventAttributes,
    atseaIdentity,
    atseaScheduledEventId,

    -- * ActivityTaskTimedOutEventAttributes
    ActivityTaskTimedOutEventAttributes (..),
    activityTaskTimedOutEventAttributes,
    attoeaDetails,
    attoeaTimeoutType,
    attoeaScheduledEventId,
    attoeaStartedEventId,

    -- * ActivityType
    ActivityType (..),
    activityType,
    atName,
    atVersion,

    -- * ActivityTypeConfiguration
    ActivityTypeConfiguration (..),
    activityTypeConfiguration,
    atcDefaultTaskPriority,
    atcDefaultTaskList,
    atcDefaultTaskScheduleToStartTimeout,
    atcDefaultTaskStartToCloseTimeout,
    atcDefaultTaskHeartbeatTimeout,
    atcDefaultTaskScheduleToCloseTimeout,

    -- * ActivityTypeInfo
    ActivityTypeInfo (..),
    activityTypeInfo,
    atiDeprecationDate,
    atiDescription,
    atiActivityType,
    atiStatus,
    atiCreationDate,

    -- * CancelTimerDecisionAttributes
    CancelTimerDecisionAttributes (..),
    cancelTimerDecisionAttributes,
    ctdaTimerId,

    -- * CancelTimerFailedEventAttributes
    CancelTimerFailedEventAttributes (..),
    cancelTimerFailedEventAttributes,
    ctfeaTimerId,
    ctfeaCause,
    ctfeaDecisionTaskCompletedEventId,

    -- * CancelWorkflowExecutionDecisionAttributes
    CancelWorkflowExecutionDecisionAttributes (..),
    cancelWorkflowExecutionDecisionAttributes,
    cwedaDetails,

    -- * CancelWorkflowExecutionFailedEventAttributes
    CancelWorkflowExecutionFailedEventAttributes (..),
    cancelWorkflowExecutionFailedEventAttributes,
    cCause,
    cDecisionTaskCompletedEventId,

    -- * ChildWorkflowExecutionCanceledEventAttributes
    ChildWorkflowExecutionCanceledEventAttributes (..),
    childWorkflowExecutionCanceledEventAttributes,
    cweceaDetails,
    cweceaWorkflowExecution,
    cweceaWorkflowType,
    cweceaInitiatedEventId,
    cweceaStartedEventId,

    -- * ChildWorkflowExecutionCompletedEventAttributes
    ChildWorkflowExecutionCompletedEventAttributes (..),
    childWorkflowExecutionCompletedEventAttributes,
    cResult,
    cWorkflowExecution,
    cWorkflowType,
    cInitiatedEventId,
    cStartedEventId,

    -- * ChildWorkflowExecutionFailedEventAttributes
    ChildWorkflowExecutionFailedEventAttributes (..),
    childWorkflowExecutionFailedEventAttributes,
    cwefeaDetails,
    cwefeaReason,
    cwefeaWorkflowExecution,
    cwefeaWorkflowType,
    cwefeaInitiatedEventId,
    cwefeaStartedEventId,

    -- * ChildWorkflowExecutionStartedEventAttributes
    ChildWorkflowExecutionStartedEventAttributes (..),
    childWorkflowExecutionStartedEventAttributes,
    cweseaWorkflowExecution,
    cweseaWorkflowType,
    cweseaInitiatedEventId,

    -- * ChildWorkflowExecutionTerminatedEventAttributes
    ChildWorkflowExecutionTerminatedEventAttributes (..),
    childWorkflowExecutionTerminatedEventAttributes,
    cweteaWorkflowExecution,
    cweteaWorkflowType,
    cweteaInitiatedEventId,
    cweteaStartedEventId,

    -- * ChildWorkflowExecutionTimedOutEventAttributes
    ChildWorkflowExecutionTimedOutEventAttributes (..),
    childWorkflowExecutionTimedOutEventAttributes,
    cwetoeaWorkflowExecution,
    cwetoeaWorkflowType,
    cwetoeaTimeoutType,
    cwetoeaInitiatedEventId,
    cwetoeaStartedEventId,

    -- * CloseStatusFilter
    CloseStatusFilter (..),
    closeStatusFilter,
    csfStatus,

    -- * CompleteWorkflowExecutionDecisionAttributes
    CompleteWorkflowExecutionDecisionAttributes (..),
    completeWorkflowExecutionDecisionAttributes,
    cwedaResult,

    -- * CompleteWorkflowExecutionFailedEventAttributes
    CompleteWorkflowExecutionFailedEventAttributes (..),
    completeWorkflowExecutionFailedEventAttributes,
    cwefeaCause,
    cwefeaDecisionTaskCompletedEventId,

    -- * ContinueAsNewWorkflowExecutionDecisionAttributes
    ContinueAsNewWorkflowExecutionDecisionAttributes (..),
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

    -- * ContinueAsNewWorkflowExecutionFailedEventAttributes
    ContinueAsNewWorkflowExecutionFailedEventAttributes (..),
    continueAsNewWorkflowExecutionFailedEventAttributes,
    canwefeaCause,
    canwefeaDecisionTaskCompletedEventId,

    -- * Decision
    Decision (..),
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

    -- * DecisionTaskCompletedEventAttributes
    DecisionTaskCompletedEventAttributes (..),
    decisionTaskCompletedEventAttributes,
    dtceaExecutionContext,
    dtceaScheduledEventId,
    dtceaStartedEventId,

    -- * DecisionTaskScheduledEventAttributes
    DecisionTaskScheduledEventAttributes (..),
    decisionTaskScheduledEventAttributes,
    dtseaTaskPriority,
    dtseaStartToCloseTimeout,
    dtseaTaskList,

    -- * DecisionTaskStartedEventAttributes
    DecisionTaskStartedEventAttributes (..),
    decisionTaskStartedEventAttributes,
    dtseaIdentity,
    dtseaScheduledEventId,

    -- * DecisionTaskTimedOutEventAttributes
    DecisionTaskTimedOutEventAttributes (..),
    decisionTaskTimedOutEventAttributes,
    dttoeaTimeoutType,
    dttoeaScheduledEventId,
    dttoeaStartedEventId,

    -- * DomainConfiguration
    DomainConfiguration (..),
    domainConfiguration,
    dcWorkflowExecutionRetentionPeriodInDays,

    -- * DomainInfo
    DomainInfo (..),
    domainInfo,
    diArn,
    diDescription,
    diName,
    diStatus,

    -- * ExecutionTimeFilter
    ExecutionTimeFilter (..),
    executionTimeFilter,
    etfLatestDate,
    etfOldestDate,

    -- * ExternalWorkflowExecutionCancelRequestedEventAttributes
    ExternalWorkflowExecutionCancelRequestedEventAttributes (..),
    externalWorkflowExecutionCancelRequestedEventAttributes,
    ewecreaWorkflowExecution,
    ewecreaInitiatedEventId,

    -- * ExternalWorkflowExecutionSignaledEventAttributes
    ExternalWorkflowExecutionSignaledEventAttributes (..),
    externalWorkflowExecutionSignaledEventAttributes,
    eweseaWorkflowExecution,
    eweseaInitiatedEventId,

    -- * FailWorkflowExecutionDecisionAttributes
    FailWorkflowExecutionDecisionAttributes (..),
    failWorkflowExecutionDecisionAttributes,
    fwedaDetails,
    fwedaReason,

    -- * FailWorkflowExecutionFailedEventAttributes
    FailWorkflowExecutionFailedEventAttributes (..),
    failWorkflowExecutionFailedEventAttributes,
    fwefeaCause,
    fwefeaDecisionTaskCompletedEventId,

    -- * HistoryEvent
    HistoryEvent (..),
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

    -- * LambdaFunctionCompletedEventAttributes
    LambdaFunctionCompletedEventAttributes (..),
    lambdaFunctionCompletedEventAttributes,
    lfceaResult,
    lfceaScheduledEventId,
    lfceaStartedEventId,

    -- * LambdaFunctionFailedEventAttributes
    LambdaFunctionFailedEventAttributes (..),
    lambdaFunctionFailedEventAttributes,
    lffeaDetails,
    lffeaReason,
    lffeaScheduledEventId,
    lffeaStartedEventId,

    -- * LambdaFunctionScheduledEventAttributes
    LambdaFunctionScheduledEventAttributes (..),
    lambdaFunctionScheduledEventAttributes,
    lfseaInput,
    lfseaControl,
    lfseaStartToCloseTimeout,
    lfseaId,
    lfseaName,
    lfseaDecisionTaskCompletedEventId,

    -- * LambdaFunctionStartedEventAttributes
    LambdaFunctionStartedEventAttributes (..),
    lambdaFunctionStartedEventAttributes,
    lfseaScheduledEventId,

    -- * LambdaFunctionTimedOutEventAttributes
    LambdaFunctionTimedOutEventAttributes (..),
    lambdaFunctionTimedOutEventAttributes,
    lftoeaTimeoutType,
    lftoeaScheduledEventId,
    lftoeaStartedEventId,

    -- * MarkerRecordedEventAttributes
    MarkerRecordedEventAttributes (..),
    markerRecordedEventAttributes,
    mreaDetails,
    mreaMarkerName,
    mreaDecisionTaskCompletedEventId,

    -- * PendingTaskCount
    PendingTaskCount (..),
    pendingTaskCount,
    ptcTruncated,
    ptcCount,

    -- * RecordMarkerDecisionAttributes
    RecordMarkerDecisionAttributes (..),
    recordMarkerDecisionAttributes,
    rmdaDetails,
    rmdaMarkerName,

    -- * RecordMarkerFailedEventAttributes
    RecordMarkerFailedEventAttributes (..),
    recordMarkerFailedEventAttributes,
    rmfeaMarkerName,
    rmfeaCause,
    rmfeaDecisionTaskCompletedEventId,

    -- * RequestCancelActivityTaskDecisionAttributes
    RequestCancelActivityTaskDecisionAttributes (..),
    requestCancelActivityTaskDecisionAttributes,
    rcatdaActivityId,

    -- * RequestCancelActivityTaskFailedEventAttributes
    RequestCancelActivityTaskFailedEventAttributes (..),
    requestCancelActivityTaskFailedEventAttributes,
    rcatfeaActivityId,
    rcatfeaCause,
    rcatfeaDecisionTaskCompletedEventId,

    -- * RequestCancelExternalWorkflowExecutionDecisionAttributes
    RequestCancelExternalWorkflowExecutionDecisionAttributes (..),
    requestCancelExternalWorkflowExecutionDecisionAttributes,
    rcewedaRunId,
    rcewedaControl,
    rcewedaWorkflowId,

    -- * RequestCancelExternalWorkflowExecutionFailedEventAttributes
    RequestCancelExternalWorkflowExecutionFailedEventAttributes (..),
    requestCancelExternalWorkflowExecutionFailedEventAttributes,
    rcewefeaRunId,
    rcewefeaControl,
    rcewefeaWorkflowId,
    rcewefeaCause,
    rcewefeaInitiatedEventId,
    rcewefeaDecisionTaskCompletedEventId,

    -- * RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes (..),
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    rceweieaRunId,
    rceweieaControl,
    rceweieaWorkflowId,
    rceweieaDecisionTaskCompletedEventId,

    -- * ResourceTag
    ResourceTag (..),
    resourceTag,
    rtValue,
    rtKey,

    -- * ScheduleActivityTaskDecisionAttributes
    ScheduleActivityTaskDecisionAttributes (..),
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

    -- * ScheduleActivityTaskFailedEventAttributes
    ScheduleActivityTaskFailedEventAttributes (..),
    scheduleActivityTaskFailedEventAttributes,
    satfeaActivityType,
    satfeaActivityId,
    satfeaCause,
    satfeaDecisionTaskCompletedEventId,

    -- * ScheduleLambdaFunctionDecisionAttributes
    ScheduleLambdaFunctionDecisionAttributes (..),
    scheduleLambdaFunctionDecisionAttributes,
    slfdaInput,
    slfdaControl,
    slfdaStartToCloseTimeout,
    slfdaId,
    slfdaName,

    -- * ScheduleLambdaFunctionFailedEventAttributes
    ScheduleLambdaFunctionFailedEventAttributes (..),
    scheduleLambdaFunctionFailedEventAttributes,
    sId,
    sName,
    sCause,
    sDecisionTaskCompletedEventId,

    -- * SignalExternalWorkflowExecutionDecisionAttributes
    SignalExternalWorkflowExecutionDecisionAttributes (..),
    signalExternalWorkflowExecutionDecisionAttributes,
    sewedaRunId,
    sewedaInput,
    sewedaControl,
    sewedaWorkflowId,
    sewedaSignalName,

    -- * SignalExternalWorkflowExecutionFailedEventAttributes
    SignalExternalWorkflowExecutionFailedEventAttributes (..),
    signalExternalWorkflowExecutionFailedEventAttributes,
    sewefeaRunId,
    sewefeaControl,
    sewefeaWorkflowId,
    sewefeaCause,
    sewefeaInitiatedEventId,
    sewefeaDecisionTaskCompletedEventId,

    -- * SignalExternalWorkflowExecutionInitiatedEventAttributes
    SignalExternalWorkflowExecutionInitiatedEventAttributes (..),
    signalExternalWorkflowExecutionInitiatedEventAttributes,
    seweieaRunId,
    seweieaInput,
    seweieaControl,
    seweieaWorkflowId,
    seweieaSignalName,
    seweieaDecisionTaskCompletedEventId,

    -- * StartChildWorkflowExecutionDecisionAttributes
    StartChildWorkflowExecutionDecisionAttributes (..),
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

    -- * StartChildWorkflowExecutionFailedEventAttributes
    StartChildWorkflowExecutionFailedEventAttributes (..),
    startChildWorkflowExecutionFailedEventAttributes,
    scwefeaControl,
    scwefeaWorkflowType,
    scwefeaCause,
    scwefeaWorkflowId,
    scwefeaInitiatedEventId,
    scwefeaDecisionTaskCompletedEventId,

    -- * StartChildWorkflowExecutionInitiatedEventAttributes
    StartChildWorkflowExecutionInitiatedEventAttributes (..),
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

    -- * StartLambdaFunctionFailedEventAttributes
    StartLambdaFunctionFailedEventAttributes (..),
    startLambdaFunctionFailedEventAttributes,
    slffeaMessage,
    slffeaScheduledEventId,
    slffeaCause,

    -- * StartTimerDecisionAttributes
    StartTimerDecisionAttributes (..),
    startTimerDecisionAttributes,
    stdaControl,
    stdaTimerId,
    stdaStartToFireTimeout,

    -- * StartTimerFailedEventAttributes
    StartTimerFailedEventAttributes (..),
    startTimerFailedEventAttributes,
    stfeaTimerId,
    stfeaCause,
    stfeaDecisionTaskCompletedEventId,

    -- * TagFilter
    TagFilter (..),
    tagFilter,
    tfTag,

    -- * TaskList
    TaskList (..),
    taskList,
    tlName,

    -- * TimerCanceledEventAttributes
    TimerCanceledEventAttributes (..),
    timerCanceledEventAttributes,
    tceaTimerId,
    tceaStartedEventId,
    tceaDecisionTaskCompletedEventId,

    -- * TimerFiredEventAttributes
    TimerFiredEventAttributes (..),
    timerFiredEventAttributes,
    tfeaTimerId,
    tfeaStartedEventId,

    -- * TimerStartedEventAttributes
    TimerStartedEventAttributes (..),
    timerStartedEventAttributes,
    tseaControl,
    tseaTimerId,
    tseaStartToFireTimeout,
    tseaDecisionTaskCompletedEventId,

    -- * WorkflowExecution
    WorkflowExecution (..),
    workflowExecution,
    weWorkflowId,
    weRunId,

    -- * WorkflowExecutionCancelRequestedEventAttributes
    WorkflowExecutionCancelRequestedEventAttributes (..),
    workflowExecutionCancelRequestedEventAttributes,
    wecreaExternalInitiatedEventId,
    wecreaExternalWorkflowExecution,
    wecreaCause,

    -- * WorkflowExecutionCanceledEventAttributes
    WorkflowExecutionCanceledEventAttributes (..),
    workflowExecutionCanceledEventAttributes,
    weceaDetails,
    weceaDecisionTaskCompletedEventId,

    -- * WorkflowExecutionCompletedEventAttributes
    WorkflowExecutionCompletedEventAttributes (..),
    workflowExecutionCompletedEventAttributes,
    wResult,
    wDecisionTaskCompletedEventId,

    -- * WorkflowExecutionConfiguration
    WorkflowExecutionConfiguration (..),
    workflowExecutionConfiguration,
    wecLambdaRole,
    wecTaskPriority,
    wecTaskStartToCloseTimeout,
    wecExecutionStartToCloseTimeout,
    wecTaskList,
    wecChildPolicy,

    -- * WorkflowExecutionContinuedAsNewEventAttributes
    WorkflowExecutionContinuedAsNewEventAttributes (..),
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

    -- * WorkflowExecutionCount
    WorkflowExecutionCount (..),
    workflowExecutionCount,
    wecTruncated,
    wecCount,

    -- * WorkflowExecutionFailedEventAttributes
    WorkflowExecutionFailedEventAttributes (..),
    workflowExecutionFailedEventAttributes,
    wefeaDetails,
    wefeaReason,
    wefeaDecisionTaskCompletedEventId,

    -- * WorkflowExecutionFilter
    WorkflowExecutionFilter (..),
    workflowExecutionFilter,
    wefWorkflowId,

    -- * WorkflowExecutionInfo
    WorkflowExecutionInfo (..),
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

    -- * WorkflowExecutionInfos
    WorkflowExecutionInfos (..),
    workflowExecutionInfos,
    weiNextPageToken,
    weiExecutionInfos,

    -- * WorkflowExecutionOpenCounts
    WorkflowExecutionOpenCounts (..),
    workflowExecutionOpenCounts,
    weocOpenLambdaFunctions,
    weocOpenActivityTasks,
    weocOpenDecisionTasks,
    weocOpenTimers,
    weocOpenChildWorkflowExecutions,

    -- * WorkflowExecutionSignaledEventAttributes
    WorkflowExecutionSignaledEventAttributes (..),
    workflowExecutionSignaledEventAttributes,
    weseaInput,
    weseaExternalInitiatedEventId,
    weseaExternalWorkflowExecution,
    weseaSignalName,

    -- * WorkflowExecutionStartedEventAttributes
    WorkflowExecutionStartedEventAttributes (..),
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

    -- * WorkflowExecutionTerminatedEventAttributes
    WorkflowExecutionTerminatedEventAttributes (..),
    workflowExecutionTerminatedEventAttributes,
    weteaDetails,
    weteaReason,
    weteaCause,
    weteaChildPolicy,

    -- * WorkflowExecutionTimedOutEventAttributes
    WorkflowExecutionTimedOutEventAttributes (..),
    workflowExecutionTimedOutEventAttributes,
    wetoeaTimeoutType,
    wetoeaChildPolicy,

    -- * WorkflowType
    WorkflowType (..),
    workflowType,
    wtName,
    wtVersion,

    -- * WorkflowTypeConfiguration
    WorkflowTypeConfiguration (..),
    workflowTypeConfiguration,
    wtcDefaultExecutionStartToCloseTimeout,
    wtcDefaultTaskPriority,
    wtcDefaultTaskList,
    wtcDefaultChildPolicy,
    wtcDefaultLambdaRole,
    wtcDefaultTaskStartToCloseTimeout,

    -- * WorkflowTypeFilter
    WorkflowTypeFilter (..),
    workflowTypeFilter,
    wtfVersion,
    wtfName,

    -- * WorkflowTypeInfo
    WorkflowTypeInfo (..),
    workflowTypeInfo,
    wtiDeprecationDate,
    wtiDescription,
    wtiWorkflowType,
    wtiStatus,
    wtiCreationDate,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SWF.Types.ActivityTaskCancelRequestedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskCanceledEventAttributes
import Network.AWS.SWF.Types.ActivityTaskCompletedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskScheduledEventAttributes
import Network.AWS.SWF.Types.ActivityTaskStartedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskTimedOutEventAttributes
import Network.AWS.SWF.Types.ActivityTaskTimeoutType
import Network.AWS.SWF.Types.ActivityType
import Network.AWS.SWF.Types.ActivityTypeConfiguration
import Network.AWS.SWF.Types.ActivityTypeInfo
import Network.AWS.SWF.Types.CancelTimerDecisionAttributes
import Network.AWS.SWF.Types.CancelTimerFailedCause
import Network.AWS.SWF.Types.CancelTimerFailedEventAttributes
import Network.AWS.SWF.Types.CancelWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.CancelWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ChildPolicy
import Network.AWS.SWF.Types.ChildWorkflowExecutionCanceledEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionCompletedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionStartedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionTerminatedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionTimedOutEventAttributes
import Network.AWS.SWF.Types.CloseStatus
import Network.AWS.SWF.Types.CloseStatusFilter
import Network.AWS.SWF.Types.CompleteWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.Decision
import Network.AWS.SWF.Types.DecisionTaskCompletedEventAttributes
import Network.AWS.SWF.Types.DecisionTaskScheduledEventAttributes
import Network.AWS.SWF.Types.DecisionTaskStartedEventAttributes
import Network.AWS.SWF.Types.DecisionTaskTimedOutEventAttributes
import Network.AWS.SWF.Types.DecisionTaskTimeoutType
import Network.AWS.SWF.Types.DecisionType
import Network.AWS.SWF.Types.DomainConfiguration
import Network.AWS.SWF.Types.DomainInfo
import Network.AWS.SWF.Types.EventType
import Network.AWS.SWF.Types.ExecutionStatus
import Network.AWS.SWF.Types.ExecutionTimeFilter
import Network.AWS.SWF.Types.ExternalWorkflowExecutionCancelRequestedEventAttributes
import Network.AWS.SWF.Types.ExternalWorkflowExecutionSignaledEventAttributes
import Network.AWS.SWF.Types.FailWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.FailWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.HistoryEvent
import Network.AWS.SWF.Types.LambdaFunctionCompletedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionScheduledEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionStartedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionTimedOutEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionTimeoutType
import Network.AWS.SWF.Types.MarkerRecordedEventAttributes
import Network.AWS.SWF.Types.PendingTaskCount
import Network.AWS.SWF.Types.RecordMarkerDecisionAttributes
import Network.AWS.SWF.Types.RecordMarkerFailedCause
import Network.AWS.SWF.Types.RecordMarkerFailedEventAttributes
import Network.AWS.SWF.Types.RegistrationStatus
import Network.AWS.SWF.Types.RequestCancelActivityTaskDecisionAttributes
import Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause
import Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.ResourceTag
import Network.AWS.SWF.Types.ScheduleActivityTaskDecisionAttributes
import Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause
import Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.ScheduleLambdaFunctionDecisionAttributes
import Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedCause
import Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedCause
import Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.StartLambdaFunctionFailedCause
import Network.AWS.SWF.Types.StartLambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.StartTimerDecisionAttributes
import Network.AWS.SWF.Types.StartTimerFailedCause
import Network.AWS.SWF.Types.StartTimerFailedEventAttributes
import Network.AWS.SWF.Types.TagFilter
import Network.AWS.SWF.Types.TaskList
import Network.AWS.SWF.Types.TimerCanceledEventAttributes
import Network.AWS.SWF.Types.TimerFiredEventAttributes
import Network.AWS.SWF.Types.TimerStartedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause
import Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCanceledEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCompletedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionConfiguration
import Network.AWS.SWF.Types.WorkflowExecutionContinuedAsNewEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCount
import Network.AWS.SWF.Types.WorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionFilter
import Network.AWS.SWF.Types.WorkflowExecutionInfo
import Network.AWS.SWF.Types.WorkflowExecutionInfos
import Network.AWS.SWF.Types.WorkflowExecutionOpenCounts
import Network.AWS.SWF.Types.WorkflowExecutionSignaledEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionStartedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTerminatedCause
import Network.AWS.SWF.Types.WorkflowExecutionTerminatedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTimedOutEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTimeoutType
import Network.AWS.SWF.Types.WorkflowType
import Network.AWS.SWF.Types.WorkflowTypeConfiguration
import Network.AWS.SWF.Types.WorkflowTypeFilter
import Network.AWS.SWF.Types.WorkflowTypeInfo
import Network.AWS.Sign.V4

-- | API version @2012-01-25@ of the Amazon Simple Workflow Service SDK configuration.
swf :: Service
swf =
  Service
    { _svcAbbrev = "SWF",
      _svcSigner = v4,
      _svcPrefix = "swf",
      _svcVersion = "2012-01-25",
      _svcEndpoint = defaultEndpoint swf,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "SWF",
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

-- | Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.
_LimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededFault =
  _MatchServiceError swf "LimitExceededFault"

-- | Returned if the domain already exists. You may get this fault if you are registering a domain that is either already registered or deprecated, or if you undeprecate a domain that is currently registered.
_DomainAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_DomainAlreadyExistsFault =
  _MatchServiceError swf "DomainAlreadyExistsFault"

-- | Returned by 'StartWorkflowExecution' when an open execution with the same workflowId is already running in the specified domain.
_WorkflowExecutionAlreadyStartedFault :: AsError a => Getting (First ServiceError) a ServiceError
_WorkflowExecutionAlreadyStartedFault =
  _MatchServiceError
    swf
    "WorkflowExecutionAlreadyStartedFault"

-- | Returned when the specified domain has been deprecated.
_DomainDeprecatedFault :: AsError a => Getting (First ServiceError) a ServiceError
_DomainDeprecatedFault =
  _MatchServiceError swf "DomainDeprecatedFault"

-- | Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.
_UnknownResourceFault :: AsError a => Getting (First ServiceError) a ServiceError
_UnknownResourceFault =
  _MatchServiceError swf "UnknownResourceFault"

-- | Returned when the caller doesn't have sufficient permissions to invoke the action.
_OperationNotPermittedFault :: AsError a => Getting (First ServiceError) a ServiceError
_OperationNotPermittedFault =
  _MatchServiceError swf "OperationNotPermittedFault"

-- | Returned if the type already exists in the specified domain. You may get this fault if you are registering a type that is either already registered or deprecated, or if you undeprecate a type that is currently registered.
_TypeAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_TypeAlreadyExistsFault =
  _MatchServiceError swf "TypeAlreadyExistsFault"

-- | You've exceeded the number of tags allowed for a domain.
_TooManyTagsFault :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsFault =
  _MatchServiceError swf "TooManyTagsFault"

-- | Returned when the specified activity or workflow type was already deprecated.
_TypeDeprecatedFault :: AsError a => Getting (First ServiceError) a ServiceError
_TypeDeprecatedFault =
  _MatchServiceError swf "TypeDeprecatedFault"

-- | The @StartWorkflowExecution@ API action was called without the required parameters set.
--
--
-- Some workflow execution parameters, such as the decision @taskList@ , must be set to start the execution. However, these parameters might have been set as defaults when the workflow type was registered. In this case, you can omit these parameters from the @StartWorkflowExecution@ call and Amazon SWF uses the values defined in the workflow type.
_DefaultUndefinedFault :: AsError a => Getting (First ServiceError) a ServiceError
_DefaultUndefinedFault =
  _MatchServiceError swf "DefaultUndefinedFault"

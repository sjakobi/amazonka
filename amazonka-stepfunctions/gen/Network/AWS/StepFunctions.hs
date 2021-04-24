{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Step Functions__
--
-- AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows.
--
-- You can use Step Functions to build applications from individual components, each of which performs a discrete function, or /task/ , allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues.
--
-- Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the /<https:\/\/docs.aws.amazon.com\/step-functions\/latest\/dg\/welcome.html AWS Step Functions Developer Guide> / .
module Network.AWS.StepFunctions
  ( -- * Service Configuration
    stepFunctions,

    -- * Errors
    -- $errors

    -- ** ExecutionLimitExceeded
    _ExecutionLimitExceeded,

    -- ** ExecutionAlreadyExists
    _ExecutionAlreadyExists,

    -- ** StateMachineTypeNotSupported
    _StateMachineTypeNotSupported,

    -- ** ExecutionDoesNotExist
    _ExecutionDoesNotExist,

    -- ** InvalidName
    _InvalidName,

    -- ** InvalidOutput
    _InvalidOutput,

    -- ** ActivityLimitExceeded
    _ActivityLimitExceeded,

    -- ** InvalidExecutionInput
    _InvalidExecutionInput,

    -- ** InvalidLoggingConfiguration
    _InvalidLoggingConfiguration,

    -- ** TaskTimedOut
    _TaskTimedOut,

    -- ** StateMachineLimitExceeded
    _StateMachineLimitExceeded,

    -- ** InvalidARN
    _InvalidARN,

    -- ** InvalidDefinition
    _InvalidDefinition,

    -- ** MissingRequiredParameter
    _MissingRequiredParameter,

    -- ** StateMachineAlreadyExists
    _StateMachineAlreadyExists,

    -- ** ResourceNotFound
    _ResourceNotFound,

    -- ** StateMachineDoesNotExist
    _StateMachineDoesNotExist,

    -- ** TaskDoesNotExist
    _TaskDoesNotExist,

    -- ** StateMachineDeleting
    _StateMachineDeleting,

    -- ** ActivityDoesNotExist
    _ActivityDoesNotExist,

    -- ** TooManyTags
    _TooManyTags,

    -- ** ActivityWorkerLimitExceeded
    _ActivityWorkerLimitExceeded,

    -- ** InvalidTracingConfiguration
    _InvalidTracingConfiguration,

    -- ** InvalidToken
    _InvalidToken,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeExecution
    module Network.AWS.StepFunctions.DescribeExecution,

    -- ** DescribeStateMachine
    module Network.AWS.StepFunctions.DescribeStateMachine,

    -- ** DeleteActivity
    module Network.AWS.StepFunctions.DeleteActivity,

    -- ** CreateActivity
    module Network.AWS.StepFunctions.CreateActivity,

    -- ** ListActivities (Paginated)
    module Network.AWS.StepFunctions.ListActivities,

    -- ** CreateStateMachine
    module Network.AWS.StepFunctions.CreateStateMachine,

    -- ** GetActivityTask
    module Network.AWS.StepFunctions.GetActivityTask,

    -- ** UpdateStateMachine
    module Network.AWS.StepFunctions.UpdateStateMachine,

    -- ** ListExecutions (Paginated)
    module Network.AWS.StepFunctions.ListExecutions,

    -- ** DeleteStateMachine
    module Network.AWS.StepFunctions.DeleteStateMachine,

    -- ** UntagResource
    module Network.AWS.StepFunctions.UntagResource,

    -- ** DescribeActivity
    module Network.AWS.StepFunctions.DescribeActivity,

    -- ** TagResource
    module Network.AWS.StepFunctions.TagResource,

    -- ** StartSyncExecution
    module Network.AWS.StepFunctions.StartSyncExecution,

    -- ** SendTaskSuccess
    module Network.AWS.StepFunctions.SendTaskSuccess,

    -- ** SendTaskHeartbeat
    module Network.AWS.StepFunctions.SendTaskHeartbeat,

    -- ** SendTaskFailure
    module Network.AWS.StepFunctions.SendTaskFailure,

    -- ** DescribeStateMachineForExecution
    module Network.AWS.StepFunctions.DescribeStateMachineForExecution,

    -- ** GetExecutionHistory (Paginated)
    module Network.AWS.StepFunctions.GetExecutionHistory,

    -- ** ListStateMachines (Paginated)
    module Network.AWS.StepFunctions.ListStateMachines,

    -- ** ListTagsForResource
    module Network.AWS.StepFunctions.ListTagsForResource,

    -- ** StopExecution
    module Network.AWS.StepFunctions.StopExecution,

    -- ** StartExecution
    module Network.AWS.StepFunctions.StartExecution,

    -- * Types

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** HistoryEventType
    HistoryEventType (..),

    -- ** LogLevel
    LogLevel (..),

    -- ** StateMachineStatus
    StateMachineStatus (..),

    -- ** StateMachineType
    StateMachineType (..),

    -- ** SyncExecutionStatus
    SyncExecutionStatus (..),

    -- ** ActivityFailedEventDetails
    ActivityFailedEventDetails,
    activityFailedEventDetails,
    afedCause,
    afedError,

    -- ** ActivityListItem
    ActivityListItem,
    activityListItem,
    aliActivityARN,
    aliName,
    aliCreationDate,

    -- ** ActivityScheduleFailedEventDetails
    ActivityScheduleFailedEventDetails,
    activityScheduleFailedEventDetails,
    asfedCause,
    asfedError,

    -- ** ActivityScheduledEventDetails
    ActivityScheduledEventDetails,
    activityScheduledEventDetails,
    asedHeartbeatInSeconds,
    asedInputDetails,
    asedInput,
    asedTimeoutInSeconds,
    asedResource,

    -- ** ActivityStartedEventDetails
    ActivityStartedEventDetails,
    activityStartedEventDetails,
    asedWorkerName,

    -- ** ActivitySucceededEventDetails
    ActivitySucceededEventDetails,
    activitySucceededEventDetails,
    asedOutput,
    asedOutputDetails,

    -- ** ActivityTimedOutEventDetails
    ActivityTimedOutEventDetails,
    activityTimedOutEventDetails,
    atoedCause,
    atoedError,

    -- ** BillingDetails
    BillingDetails,
    billingDetails,
    bdBilledMemoryUsedInMB,
    bdBilledDurationInMilliseconds,

    -- ** CloudWatchEventsExecutionDataDetails
    CloudWatchEventsExecutionDataDetails,
    cloudWatchEventsExecutionDataDetails,
    cweeddIncluded,

    -- ** CloudWatchLogsLogGroup
    CloudWatchLogsLogGroup,
    cloudWatchLogsLogGroup,
    cwllgLogGroupARN,

    -- ** ExecutionAbortedEventDetails
    ExecutionAbortedEventDetails,
    executionAbortedEventDetails,
    eaedCause,
    eaedError,

    -- ** ExecutionFailedEventDetails
    ExecutionFailedEventDetails,
    executionFailedEventDetails,
    efedCause,
    efedError,

    -- ** ExecutionListItem
    ExecutionListItem,
    executionListItem,
    eliStopDate,
    eliExecutionARN,
    eliStateMachineARN,
    eliName,
    eliStatus,
    eliStartDate,

    -- ** ExecutionStartedEventDetails
    ExecutionStartedEventDetails,
    executionStartedEventDetails,
    esedInputDetails,
    esedRoleARN,
    esedInput,

    -- ** ExecutionSucceededEventDetails
    ExecutionSucceededEventDetails,
    executionSucceededEventDetails,
    esedOutput,
    esedOutputDetails,

    -- ** ExecutionTimedOutEventDetails
    ExecutionTimedOutEventDetails,
    executionTimedOutEventDetails,
    etoedCause,
    etoedError,

    -- ** HistoryEvent
    HistoryEvent,
    historyEvent,
    heExecutionFailedEventDetails,
    heMapIterationStartedEventDetails,
    heTaskSubmitFailedEventDetails,
    heMapIterationAbortedEventDetails,
    heMapIterationSucceededEventDetails,
    heMapIterationFailedEventDetails,
    heExecutionTimedOutEventDetails,
    hePreviousEventId,
    heExecutionStartedEventDetails,
    heLambdaFunctionScheduleFailedEventDetails,
    heActivityScheduleFailedEventDetails,
    heTaskScheduledEventDetails,
    heActivityScheduledEventDetails,
    heLambdaFunctionScheduledEventDetails,
    heExecutionSucceededEventDetails,
    heExecutionAbortedEventDetails,
    heMapStateStartedEventDetails,
    heLambdaFunctionTimedOutEventDetails,
    heActivityTimedOutEventDetails,
    heTaskTimedOutEventDetails,
    heLambdaFunctionStartFailedEventDetails,
    heTaskStartFailedEventDetails,
    heTaskFailedEventDetails,
    heTaskSucceededEventDetails,
    heStateExitedEventDetails,
    heStateEnteredEventDetails,
    heLambdaFunctionFailedEventDetails,
    heActivityFailedEventDetails,
    heActivitySucceededEventDetails,
    heLambdaFunctionSucceededEventDetails,
    heTaskSubmittedEventDetails,
    heActivityStartedEventDetails,
    heTaskStartedEventDetails,
    heTimestamp,
    heType,
    heId,

    -- ** HistoryEventExecutionDataDetails
    HistoryEventExecutionDataDetails,
    historyEventExecutionDataDetails,
    heeddTruncated,

    -- ** LambdaFunctionFailedEventDetails
    LambdaFunctionFailedEventDetails,
    lambdaFunctionFailedEventDetails,
    lffedCause,
    lffedError,

    -- ** LambdaFunctionScheduleFailedEventDetails
    LambdaFunctionScheduleFailedEventDetails,
    lambdaFunctionScheduleFailedEventDetails,
    lfsfedCause,
    lfsfedError,

    -- ** LambdaFunctionScheduledEventDetails
    LambdaFunctionScheduledEventDetails,
    lambdaFunctionScheduledEventDetails,
    lfsedInputDetails,
    lfsedInput,
    lfsedTimeoutInSeconds,
    lfsedResource,

    -- ** LambdaFunctionStartFailedEventDetails
    LambdaFunctionStartFailedEventDetails,
    lambdaFunctionStartFailedEventDetails,
    lCause,
    lError,

    -- ** LambdaFunctionSucceededEventDetails
    LambdaFunctionSucceededEventDetails,
    lambdaFunctionSucceededEventDetails,
    lfsedOutput,
    lfsedOutputDetails,

    -- ** LambdaFunctionTimedOutEventDetails
    LambdaFunctionTimedOutEventDetails,
    lambdaFunctionTimedOutEventDetails,
    lftoedCause,
    lftoedError,

    -- ** LogDestination
    LogDestination,
    logDestination,
    ldCloudWatchLogsLogGroup,

    -- ** LoggingConfiguration
    LoggingConfiguration,
    loggingConfiguration,
    lcDestinations,
    lcLevel,
    lcIncludeExecutionData,

    -- ** MapIterationEventDetails
    MapIterationEventDetails,
    mapIterationEventDetails,
    miedName,
    miedIndex,

    -- ** MapStateStartedEventDetails
    MapStateStartedEventDetails,
    mapStateStartedEventDetails,
    mssedLength,

    -- ** StateEnteredEventDetails
    StateEnteredEventDetails,
    stateEnteredEventDetails,
    sInputDetails,
    sInput,
    sName,

    -- ** StateExitedEventDetails
    StateExitedEventDetails,
    stateExitedEventDetails,
    seedOutput,
    seedOutputDetails,
    seedName,

    -- ** StateMachineListItem
    StateMachineListItem,
    stateMachineListItem,
    smliStateMachineARN,
    smliName,
    smliType,
    smliCreationDate,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TaskFailedEventDetails
    TaskFailedEventDetails,
    taskFailedEventDetails,
    tfedCause,
    tfedError,
    tfedResourceType,
    tfedResource,

    -- ** TaskScheduledEventDetails
    TaskScheduledEventDetails,
    taskScheduledEventDetails,
    tsedHeartbeatInSeconds,
    tsedTimeoutInSeconds,
    tsedResourceType,
    tsedResource,
    tsedRegion,
    tsedParameters,

    -- ** TaskStartFailedEventDetails
    TaskStartFailedEventDetails,
    taskStartFailedEventDetails,
    tCause,
    tError,
    tResourceType,
    tResource,

    -- ** TaskStartedEventDetails
    TaskStartedEventDetails,
    taskStartedEventDetails,
    ttResourceType,
    ttResource,

    -- ** TaskSubmitFailedEventDetails
    TaskSubmitFailedEventDetails,
    taskSubmitFailedEventDetails,
    tsfedCause,
    tsfedError,
    tsfedResourceType,
    tsfedResource,

    -- ** TaskSubmittedEventDetails
    TaskSubmittedEventDetails,
    taskSubmittedEventDetails,
    tasOutput,
    tasOutputDetails,
    tasResourceType,
    tasResource,

    -- ** TaskSucceededEventDetails
    TaskSucceededEventDetails,
    taskSucceededEventDetails,
    tsedsOutput,
    tsedsOutputDetails,
    tsedsResourceType,
    tsedsResource,

    -- ** TaskTimedOutEventDetails
    TaskTimedOutEventDetails,
    taskTimedOutEventDetails,
    ttoedCause,
    ttoedError,
    ttoedResourceType,
    ttoedResource,

    -- ** TracingConfiguration
    TracingConfiguration,
    tracingConfiguration,
    tcEnabled,
  )
where

import Network.AWS.StepFunctions.CreateActivity
import Network.AWS.StepFunctions.CreateStateMachine
import Network.AWS.StepFunctions.DeleteActivity
import Network.AWS.StepFunctions.DeleteStateMachine
import Network.AWS.StepFunctions.DescribeActivity
import Network.AWS.StepFunctions.DescribeExecution
import Network.AWS.StepFunctions.DescribeStateMachine
import Network.AWS.StepFunctions.DescribeStateMachineForExecution
import Network.AWS.StepFunctions.GetActivityTask
import Network.AWS.StepFunctions.GetExecutionHistory
import Network.AWS.StepFunctions.ListActivities
import Network.AWS.StepFunctions.ListExecutions
import Network.AWS.StepFunctions.ListStateMachines
import Network.AWS.StepFunctions.ListTagsForResource
import Network.AWS.StepFunctions.SendTaskFailure
import Network.AWS.StepFunctions.SendTaskHeartbeat
import Network.AWS.StepFunctions.SendTaskSuccess
import Network.AWS.StepFunctions.StartExecution
import Network.AWS.StepFunctions.StartSyncExecution
import Network.AWS.StepFunctions.StopExecution
import Network.AWS.StepFunctions.TagResource
import Network.AWS.StepFunctions.Types
import Network.AWS.StepFunctions.UntagResource
import Network.AWS.StepFunctions.UpdateStateMachine
import Network.AWS.StepFunctions.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'StepFunctions'.

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

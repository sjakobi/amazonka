{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon EventBridge helps you to respond to state changes in your AWS resources. When your resources change state, they automatically send events into an event stream. You can create rules that match selected events in the stream and route them to targets to take action. You can also use rules to take action on a predetermined schedule. For example, you can configure rules to:
--
--
--     * Automatically invoke an AWS Lambda function to update DNS entries when an event notifies you that Amazon EC2 instance enters the running state.
--
--     * Direct specific API records from AWS CloudTrail to an Amazon Kinesis data stream for detailed analysis of potential security or availability risks.
--
--     * Periodically invoke a built-in target to create a snapshot of an Amazon EBS volume.
--
--
--
-- For more information about the features of Amazon EventBridge, see the <https://docs.aws.amazon.com/eventbridge/latest/userguide Amazon EventBridge User Guide> .
module Network.AWS.CloudWatchEvents
  ( -- * Service Configuration
    cloudWatchEvents,

    -- * Errors
    -- $errors

    -- ** ManagedRuleException
    _ManagedRuleException,

    -- ** InvalidStateException
    _InvalidStateException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InternalException
    _InternalException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** PolicyLengthExceededException
    _PolicyLengthExceededException,

    -- ** IllegalStatusException
    _IllegalStatusException,

    -- ** OperationDisabledException
    _OperationDisabledException,

    -- ** InvalidEventPatternException
    _InvalidEventPatternException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListPartnerEventSourceAccounts
    module Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts,

    -- ** DeleteConnection
    module Network.AWS.CloudWatchEvents.DeleteConnection,

    -- ** UpdateConnection
    module Network.AWS.CloudWatchEvents.UpdateConnection,

    -- ** DeleteRule
    module Network.AWS.CloudWatchEvents.DeleteRule,

    -- ** DescribeArchive
    module Network.AWS.CloudWatchEvents.DescribeArchive,

    -- ** DescribeEventSource
    module Network.AWS.CloudWatchEvents.DescribeEventSource,

    -- ** DescribeAPIdestination
    module Network.AWS.CloudWatchEvents.DescribeAPIdestination,

    -- ** DeactivateEventSource
    module Network.AWS.CloudWatchEvents.DeactivateEventSource,

    -- ** UpdateArchive
    module Network.AWS.CloudWatchEvents.UpdateArchive,

    -- ** DescribeConnection
    module Network.AWS.CloudWatchEvents.DescribeConnection,

    -- ** DeleteArchive
    module Network.AWS.CloudWatchEvents.DeleteArchive,

    -- ** UntagResource
    module Network.AWS.CloudWatchEvents.UntagResource,

    -- ** DescribeRule
    module Network.AWS.CloudWatchEvents.DescribeRule,

    -- ** ListArchives
    module Network.AWS.CloudWatchEvents.ListArchives,

    -- ** PutPartnerEvents
    module Network.AWS.CloudWatchEvents.PutPartnerEvents,

    -- ** CreateAPIdestination
    module Network.AWS.CloudWatchEvents.CreateAPIdestination,

    -- ** TagResource
    module Network.AWS.CloudWatchEvents.TagResource,

    -- ** ListAPIdestinations
    module Network.AWS.CloudWatchEvents.ListAPIdestinations,

    -- ** DescribeEventBus
    module Network.AWS.CloudWatchEvents.DescribeEventBus,

    -- ** ListTargetsByRule (Paginated)
    module Network.AWS.CloudWatchEvents.ListTargetsByRule,

    -- ** CreateConnection
    module Network.AWS.CloudWatchEvents.CreateConnection,

    -- ** ListRuleNamesByTarget (Paginated)
    module Network.AWS.CloudWatchEvents.ListRuleNamesByTarget,

    -- ** ListRules (Paginated)
    module Network.AWS.CloudWatchEvents.ListRules,

    -- ** PutRule
    module Network.AWS.CloudWatchEvents.PutRule,

    -- ** EnableRule
    module Network.AWS.CloudWatchEvents.EnableRule,

    -- ** ListConnections
    module Network.AWS.CloudWatchEvents.ListConnections,

    -- ** DeauthorizeConnection
    module Network.AWS.CloudWatchEvents.DeauthorizeConnection,

    -- ** CreateEventBus
    module Network.AWS.CloudWatchEvents.CreateEventBus,

    -- ** RemoveTargets
    module Network.AWS.CloudWatchEvents.RemoveTargets,

    -- ** ListEventBuses
    module Network.AWS.CloudWatchEvents.ListEventBuses,

    -- ** DeleteEventBus
    module Network.AWS.CloudWatchEvents.DeleteEventBus,

    -- ** PutEvents
    module Network.AWS.CloudWatchEvents.PutEvents,

    -- ** CreateArchive
    module Network.AWS.CloudWatchEvents.CreateArchive,

    -- ** ListPartnerEventSources
    module Network.AWS.CloudWatchEvents.ListPartnerEventSources,

    -- ** DescribeReplay
    module Network.AWS.CloudWatchEvents.DescribeReplay,

    -- ** DeletePartnerEventSource
    module Network.AWS.CloudWatchEvents.DeletePartnerEventSource,

    -- ** CreatePartnerEventSource
    module Network.AWS.CloudWatchEvents.CreatePartnerEventSource,

    -- ** StartReplay
    module Network.AWS.CloudWatchEvents.StartReplay,

    -- ** PutTargets
    module Network.AWS.CloudWatchEvents.PutTargets,

    -- ** ListEventSources
    module Network.AWS.CloudWatchEvents.ListEventSources,

    -- ** ActivateEventSource
    module Network.AWS.CloudWatchEvents.ActivateEventSource,

    -- ** DeleteAPIdestination
    module Network.AWS.CloudWatchEvents.DeleteAPIdestination,

    -- ** CancelReplay
    module Network.AWS.CloudWatchEvents.CancelReplay,

    -- ** UpdateAPIdestination
    module Network.AWS.CloudWatchEvents.UpdateAPIdestination,

    -- ** RemovePermission
    module Network.AWS.CloudWatchEvents.RemovePermission,

    -- ** TestEventPattern
    module Network.AWS.CloudWatchEvents.TestEventPattern,

    -- ** ListTagsForResource
    module Network.AWS.CloudWatchEvents.ListTagsForResource,

    -- ** DisableRule
    module Network.AWS.CloudWatchEvents.DisableRule,

    -- ** ListReplays
    module Network.AWS.CloudWatchEvents.ListReplays,

    -- ** DescribePartnerEventSource
    module Network.AWS.CloudWatchEvents.DescribePartnerEventSource,

    -- ** PutPermission
    module Network.AWS.CloudWatchEvents.PutPermission,

    -- * Types

    -- ** APIdestinationHTTPMethod
    APIdestinationHTTPMethod (..),

    -- ** APIdestinationState
    APIdestinationState (..),

    -- ** ArchiveState
    ArchiveState (..),

    -- ** AssignPublicIP
    AssignPublicIP (..),

    -- ** ConnectionAuthorizationType
    ConnectionAuthorizationType (..),

    -- ** ConnectionOAuthHTTPMethod
    ConnectionOAuthHTTPMethod (..),

    -- ** ConnectionState
    ConnectionState (..),

    -- ** EventSourceState
    EventSourceState (..),

    -- ** LaunchType
    LaunchType (..),

    -- ** ReplayState
    ReplayState (..),

    -- ** RuleState
    RuleState (..),

    -- ** APIdestination
    APIdestination,
    apidestination,
    apiHTTPMethod,
    apiCreationTime,
    apiAPIdestinationARN,
    apiInvocationEndpoint,
    apiAPIdestinationState,
    apiConnectionARN,
    apiName,
    apiLastModifiedTime,
    apiInvocationRateLimitPerSecond,

    -- ** AWSVPCConfiguration
    AWSVPCConfiguration,
    awsVPCConfiguration,
    avcAssignPublicIP,
    avcSecurityGroups,
    avcSubnets,

    -- ** Archive
    Archive,
    archive,
    aEventCount,
    aEventSourceARN,
    aCreationTime,
    aStateReason,
    aArchiveName,
    aState,
    aSizeBytes,
    aRetentionDays,

    -- ** BatchArrayProperties
    BatchArrayProperties,
    batchArrayProperties,
    bapSize,

    -- ** BatchParameters
    BatchParameters,
    batchParameters,
    bpArrayProperties,
    bpRetryStrategy,
    bpJobDefinition,
    bpJobName,

    -- ** BatchRetryStrategy
    BatchRetryStrategy,
    batchRetryStrategy,
    brsAttempts,

    -- ** Condition
    Condition,
    condition,
    cType,
    cKey,
    cValue,

    -- ** Connection
    Connection,
    connection,
    cCreationTime,
    cConnectionState,
    cStateReason,
    cAuthorizationType,
    cConnectionARN,
    cName,
    cLastModifiedTime,
    cLastAuthorizedTime,

    -- ** ConnectionAPIKeyAuthResponseParameters
    ConnectionAPIKeyAuthResponseParameters,
    connectionAPIKeyAuthResponseParameters,
    cakarpAPIKeyName,

    -- ** ConnectionAuthResponseParameters
    ConnectionAuthResponseParameters,
    connectionAuthResponseParameters,
    carpBasicAuthParameters,
    carpOAuthParameters,
    carpAPIKeyAuthParameters,
    carpInvocationHTTPParameters,

    -- ** ConnectionBasicAuthResponseParameters
    ConnectionBasicAuthResponseParameters,
    connectionBasicAuthResponseParameters,
    cbarpUsername,

    -- ** ConnectionBodyParameter
    ConnectionBodyParameter,
    connectionBodyParameter,
    cbpKey,
    cbpIsValueSecret,
    cbpValue,

    -- ** ConnectionHTTPParameters
    ConnectionHTTPParameters,
    connectionHTTPParameters,
    chttppQueryStringParameters,
    chttppHeaderParameters,
    chttppBodyParameters,

    -- ** ConnectionHeaderParameter
    ConnectionHeaderParameter,
    connectionHeaderParameter,
    chpKey,
    chpIsValueSecret,
    chpValue,

    -- ** ConnectionOAuthClientResponseParameters
    ConnectionOAuthClientResponseParameters,
    connectionOAuthClientResponseParameters,
    coacrpClientId,

    -- ** ConnectionOAuthResponseParameters
    ConnectionOAuthResponseParameters,
    connectionOAuthResponseParameters,
    coarpHTTPMethod,
    coarpClientParameters,
    coarpAuthorizationEndpoint,
    coarpOAuthHTTPParameters,

    -- ** ConnectionQueryStringParameter
    ConnectionQueryStringParameter,
    connectionQueryStringParameter,
    cqspKey,
    cqspIsValueSecret,
    cqspValue,

    -- ** CreateConnectionAPIKeyAuthRequestParameters
    CreateConnectionAPIKeyAuthRequestParameters,
    createConnectionAPIKeyAuthRequestParameters,
    ccakarpAPIKeyName,
    ccakarpAPIKeyValue,

    -- ** CreateConnectionAuthRequestParameters
    CreateConnectionAuthRequestParameters,
    createConnectionAuthRequestParameters,
    ccarpBasicAuthParameters,
    ccarpOAuthParameters,
    ccarpAPIKeyAuthParameters,
    ccarpInvocationHTTPParameters,

    -- ** CreateConnectionBasicAuthRequestParameters
    CreateConnectionBasicAuthRequestParameters,
    createConnectionBasicAuthRequestParameters,
    ccbarpUsername,
    ccbarpPassword,

    -- ** CreateConnectionOAuthClientRequestParameters
    CreateConnectionOAuthClientRequestParameters,
    createConnectionOAuthClientRequestParameters,
    ccoacrpClientId,
    ccoacrpClientSecret,

    -- ** CreateConnectionOAuthRequestParameters
    CreateConnectionOAuthRequestParameters,
    createConnectionOAuthRequestParameters,
    ccoarpOAuthHTTPParameters,
    ccoarpClientParameters,
    ccoarpAuthorizationEndpoint,
    ccoarpHTTPMethod,

    -- ** DeadLetterConfig
    DeadLetterConfig,
    deadLetterConfig,
    dlcARN,

    -- ** EcsParameters
    EcsParameters,
    ecsParameters,
    epNetworkConfiguration,
    epPlatformVersion,
    epLaunchType,
    epGroup,
    epTaskCount,
    epTaskDefinitionARN,

    -- ** EventBus
    EventBus,
    eventBus,
    ebARN,
    ebName,
    ebPolicy,

    -- ** EventSource
    EventSource,
    eventSource,
    esCreationTime,
    esExpirationTime,
    esARN,
    esState,
    esName,
    esCreatedBy,

    -- ** HTTPParameters
    HTTPParameters,
    hTTPParameters,
    httppQueryStringParameters,
    httppPathParameterValues,
    httppHeaderParameters,

    -- ** InputTransformer
    InputTransformer,
    inputTransformer,
    itInputPathsMap,
    itInputTemplate,

    -- ** KinesisParameters
    KinesisParameters,
    kinesisParameters,
    kpPartitionKeyPath,

    -- ** NetworkConfiguration
    NetworkConfiguration,
    networkConfiguration,
    ncAwsvpcConfiguration,

    -- ** PartnerEventSource
    PartnerEventSource,
    partnerEventSource,
    pesARN,
    pesName,

    -- ** PartnerEventSourceAccount
    PartnerEventSourceAccount,
    partnerEventSourceAccount,
    pesaCreationTime,
    pesaExpirationTime,
    pesaState,
    pesaAccount,

    -- ** PutEventsRequestEntry
    PutEventsRequestEntry,
    putEventsRequestEntry,
    pereDetailType,
    pereSource,
    pereEventBusName,
    pereDetail,
    pereResources,
    pereTraceHeader,
    pereTime,

    -- ** PutEventsResultEntry
    PutEventsResultEntry,
    putEventsResultEntry,
    pereEventId,
    pereErrorMessage,
    pereErrorCode,

    -- ** PutPartnerEventsRequestEntry
    PutPartnerEventsRequestEntry,
    putPartnerEventsRequestEntry,
    ppereDetailType,
    ppereSource,
    ppereDetail,
    ppereResources,
    ppereTime,

    -- ** PutPartnerEventsResultEntry
    PutPartnerEventsResultEntry,
    putPartnerEventsResultEntry,
    ppereEventId,
    ppereErrorMessage,
    ppereErrorCode,

    -- ** PutTargetsResultEntry
    PutTargetsResultEntry,
    putTargetsResultEntry,
    ptreTargetId,
    ptreErrorMessage,
    ptreErrorCode,

    -- ** RedshiftDataParameters
    RedshiftDataParameters,
    redshiftDataParameters,
    rdpDBUser,
    rdpSecretManagerARN,
    rdpStatementName,
    rdpWithEvent,
    rdpDatabase,
    rdpSql,

    -- ** RemoveTargetsResultEntry
    RemoveTargetsResultEntry,
    removeTargetsResultEntry,
    rtreTargetId,
    rtreErrorMessage,
    rtreErrorCode,

    -- ** Replay
    Replay,
    replay,
    rEventSourceARN,
    rEventStartTime,
    rReplayStartTime,
    rStateReason,
    rState,
    rReplayName,
    rEventLastReplayedTime,
    rReplayEndTime,
    rEventEndTime,

    -- ** ReplayDestination
    ReplayDestination,
    replayDestination,
    rdFilterARNs,
    rdARN,

    -- ** RetryPolicy
    RetryPolicy,
    retryPolicy,
    rpMaximumEventAgeInSeconds,
    rpMaximumRetryAttempts,

    -- ** Rule
    Rule,
    rule,
    rulEventPattern,
    rulRoleARN,
    rulARN,
    rulEventBusName,
    rulState,
    rulScheduleExpression,
    rulName,
    rulManagedBy,
    rulDescription,

    -- ** RunCommandParameters
    RunCommandParameters,
    runCommandParameters,
    rcpRunCommandTargets,

    -- ** RunCommandTarget
    RunCommandTarget,
    runCommandTarget,
    rctKey,
    rctValues,

    -- ** SqsParameters
    SqsParameters,
    sqsParameters,
    spMessageGroupId,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Target
    Target,
    target,
    tEcsParameters,
    tRunCommandParameters,
    tRoleARN,
    tRedshiftDataParameters,
    tBatchParameters,
    tInput,
    tInputPath,
    tDeadLetterConfig,
    tRetryPolicy,
    tHTTPParameters,
    tSqsParameters,
    tInputTransformer,
    tKinesisParameters,
    tId,
    tARN,

    -- ** UpdateConnectionAPIKeyAuthRequestParameters
    UpdateConnectionAPIKeyAuthRequestParameters,
    updateConnectionAPIKeyAuthRequestParameters,
    ucakarpAPIKeyValue,
    ucakarpAPIKeyName,

    -- ** UpdateConnectionAuthRequestParameters
    UpdateConnectionAuthRequestParameters,
    updateConnectionAuthRequestParameters,
    ucarpBasicAuthParameters,
    ucarpOAuthParameters,
    ucarpAPIKeyAuthParameters,
    ucarpInvocationHTTPParameters,

    -- ** UpdateConnectionBasicAuthRequestParameters
    UpdateConnectionBasicAuthRequestParameters,
    updateConnectionBasicAuthRequestParameters,
    ucbarpPassword,
    ucbarpUsername,

    -- ** UpdateConnectionOAuthClientRequestParameters
    UpdateConnectionOAuthClientRequestParameters,
    updateConnectionOAuthClientRequestParameters,
    ucoacrpClientSecret,
    ucoacrpClientId,

    -- ** UpdateConnectionOAuthRequestParameters
    UpdateConnectionOAuthRequestParameters,
    updateConnectionOAuthRequestParameters,
    ucoarpHTTPMethod,
    ucoarpClientParameters,
    ucoarpAuthorizationEndpoint,
    ucoarpOAuthHTTPParameters,
  )
where

import Network.AWS.CloudWatchEvents.ActivateEventSource
import Network.AWS.CloudWatchEvents.CancelReplay
import Network.AWS.CloudWatchEvents.CreateAPIdestination
import Network.AWS.CloudWatchEvents.CreateArchive
import Network.AWS.CloudWatchEvents.CreateConnection
import Network.AWS.CloudWatchEvents.CreateEventBus
import Network.AWS.CloudWatchEvents.CreatePartnerEventSource
import Network.AWS.CloudWatchEvents.DeactivateEventSource
import Network.AWS.CloudWatchEvents.DeauthorizeConnection
import Network.AWS.CloudWatchEvents.DeleteAPIdestination
import Network.AWS.CloudWatchEvents.DeleteArchive
import Network.AWS.CloudWatchEvents.DeleteConnection
import Network.AWS.CloudWatchEvents.DeleteEventBus
import Network.AWS.CloudWatchEvents.DeletePartnerEventSource
import Network.AWS.CloudWatchEvents.DeleteRule
import Network.AWS.CloudWatchEvents.DescribeAPIdestination
import Network.AWS.CloudWatchEvents.DescribeArchive
import Network.AWS.CloudWatchEvents.DescribeConnection
import Network.AWS.CloudWatchEvents.DescribeEventBus
import Network.AWS.CloudWatchEvents.DescribeEventSource
import Network.AWS.CloudWatchEvents.DescribePartnerEventSource
import Network.AWS.CloudWatchEvents.DescribeReplay
import Network.AWS.CloudWatchEvents.DescribeRule
import Network.AWS.CloudWatchEvents.DisableRule
import Network.AWS.CloudWatchEvents.EnableRule
import Network.AWS.CloudWatchEvents.ListAPIdestinations
import Network.AWS.CloudWatchEvents.ListArchives
import Network.AWS.CloudWatchEvents.ListConnections
import Network.AWS.CloudWatchEvents.ListEventBuses
import Network.AWS.CloudWatchEvents.ListEventSources
import Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts
import Network.AWS.CloudWatchEvents.ListPartnerEventSources
import Network.AWS.CloudWatchEvents.ListReplays
import Network.AWS.CloudWatchEvents.ListRuleNamesByTarget
import Network.AWS.CloudWatchEvents.ListRules
import Network.AWS.CloudWatchEvents.ListTagsForResource
import Network.AWS.CloudWatchEvents.ListTargetsByRule
import Network.AWS.CloudWatchEvents.PutEvents
import Network.AWS.CloudWatchEvents.PutPartnerEvents
import Network.AWS.CloudWatchEvents.PutPermission
import Network.AWS.CloudWatchEvents.PutRule
import Network.AWS.CloudWatchEvents.PutTargets
import Network.AWS.CloudWatchEvents.RemovePermission
import Network.AWS.CloudWatchEvents.RemoveTargets
import Network.AWS.CloudWatchEvents.StartReplay
import Network.AWS.CloudWatchEvents.TagResource
import Network.AWS.CloudWatchEvents.TestEventPattern
import Network.AWS.CloudWatchEvents.Types
import Network.AWS.CloudWatchEvents.UntagResource
import Network.AWS.CloudWatchEvents.UpdateAPIdestination
import Network.AWS.CloudWatchEvents.UpdateArchive
import Network.AWS.CloudWatchEvents.UpdateConnection
import Network.AWS.CloudWatchEvents.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudWatchEvents'.

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

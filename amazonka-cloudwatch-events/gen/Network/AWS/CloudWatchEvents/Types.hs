{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types
  ( -- * Service Configuration
    cloudWatchEvents,

    -- * Errors
    _ManagedRuleException,
    _InvalidStateException,
    _ResourceAlreadyExistsException,
    _InternalException,
    _ConcurrentModificationException,
    _LimitExceededException,
    _ResourceNotFoundException,
    _PolicyLengthExceededException,
    _IllegalStatusException,
    _OperationDisabledException,
    _InvalidEventPatternException,

    -- * APIdestinationHTTPMethod
    APIdestinationHTTPMethod (..),

    -- * APIdestinationState
    APIdestinationState (..),

    -- * ArchiveState
    ArchiveState (..),

    -- * AssignPublicIP
    AssignPublicIP (..),

    -- * ConnectionAuthorizationType
    ConnectionAuthorizationType (..),

    -- * ConnectionOAuthHTTPMethod
    ConnectionOAuthHTTPMethod (..),

    -- * ConnectionState
    ConnectionState (..),

    -- * EventSourceState
    EventSourceState (..),

    -- * LaunchType
    LaunchType (..),

    -- * ReplayState
    ReplayState (..),

    -- * RuleState
    RuleState (..),

    -- * APIdestination
    APIdestination (..),
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

    -- * AWSVPCConfiguration
    AWSVPCConfiguration (..),
    awsVPCConfiguration,
    avcAssignPublicIP,
    avcSecurityGroups,
    avcSubnets,

    -- * Archive
    Archive (..),
    archive,
    aEventCount,
    aEventSourceARN,
    aCreationTime,
    aStateReason,
    aArchiveName,
    aState,
    aSizeBytes,
    aRetentionDays,

    -- * BatchArrayProperties
    BatchArrayProperties (..),
    batchArrayProperties,
    bapSize,

    -- * BatchParameters
    BatchParameters (..),
    batchParameters,
    bpArrayProperties,
    bpRetryStrategy,
    bpJobDefinition,
    bpJobName,

    -- * BatchRetryStrategy
    BatchRetryStrategy (..),
    batchRetryStrategy,
    brsAttempts,

    -- * Condition
    Condition (..),
    condition,
    cType,
    cKey,
    cValue,

    -- * Connection
    Connection (..),
    connection,
    cCreationTime,
    cConnectionState,
    cStateReason,
    cAuthorizationType,
    cConnectionARN,
    cName,
    cLastModifiedTime,
    cLastAuthorizedTime,

    -- * ConnectionAPIKeyAuthResponseParameters
    ConnectionAPIKeyAuthResponseParameters (..),
    connectionAPIKeyAuthResponseParameters,
    cakarpAPIKeyName,

    -- * ConnectionAuthResponseParameters
    ConnectionAuthResponseParameters (..),
    connectionAuthResponseParameters,
    carpBasicAuthParameters,
    carpOAuthParameters,
    carpAPIKeyAuthParameters,
    carpInvocationHTTPParameters,

    -- * ConnectionBasicAuthResponseParameters
    ConnectionBasicAuthResponseParameters (..),
    connectionBasicAuthResponseParameters,
    cbarpUsername,

    -- * ConnectionBodyParameter
    ConnectionBodyParameter (..),
    connectionBodyParameter,
    cbpKey,
    cbpIsValueSecret,
    cbpValue,

    -- * ConnectionHTTPParameters
    ConnectionHTTPParameters (..),
    connectionHTTPParameters,
    chttppQueryStringParameters,
    chttppHeaderParameters,
    chttppBodyParameters,

    -- * ConnectionHeaderParameter
    ConnectionHeaderParameter (..),
    connectionHeaderParameter,
    chpKey,
    chpIsValueSecret,
    chpValue,

    -- * ConnectionOAuthClientResponseParameters
    ConnectionOAuthClientResponseParameters (..),
    connectionOAuthClientResponseParameters,
    coacrpClientId,

    -- * ConnectionOAuthResponseParameters
    ConnectionOAuthResponseParameters (..),
    connectionOAuthResponseParameters,
    coarpHTTPMethod,
    coarpClientParameters,
    coarpAuthorizationEndpoint,
    coarpOAuthHTTPParameters,

    -- * ConnectionQueryStringParameter
    ConnectionQueryStringParameter (..),
    connectionQueryStringParameter,
    cqspKey,
    cqspIsValueSecret,
    cqspValue,

    -- * CreateConnectionAPIKeyAuthRequestParameters
    CreateConnectionAPIKeyAuthRequestParameters (..),
    createConnectionAPIKeyAuthRequestParameters,
    ccakarpAPIKeyName,
    ccakarpAPIKeyValue,

    -- * CreateConnectionAuthRequestParameters
    CreateConnectionAuthRequestParameters (..),
    createConnectionAuthRequestParameters,
    ccarpBasicAuthParameters,
    ccarpOAuthParameters,
    ccarpAPIKeyAuthParameters,
    ccarpInvocationHTTPParameters,

    -- * CreateConnectionBasicAuthRequestParameters
    CreateConnectionBasicAuthRequestParameters (..),
    createConnectionBasicAuthRequestParameters,
    ccbarpUsername,
    ccbarpPassword,

    -- * CreateConnectionOAuthClientRequestParameters
    CreateConnectionOAuthClientRequestParameters (..),
    createConnectionOAuthClientRequestParameters,
    ccoacrpClientId,
    ccoacrpClientSecret,

    -- * CreateConnectionOAuthRequestParameters
    CreateConnectionOAuthRequestParameters (..),
    createConnectionOAuthRequestParameters,
    ccoarpOAuthHTTPParameters,
    ccoarpClientParameters,
    ccoarpAuthorizationEndpoint,
    ccoarpHTTPMethod,

    -- * DeadLetterConfig
    DeadLetterConfig (..),
    deadLetterConfig,
    dlcARN,

    -- * EcsParameters
    EcsParameters (..),
    ecsParameters,
    epNetworkConfiguration,
    epPlatformVersion,
    epLaunchType,
    epGroup,
    epTaskCount,
    epTaskDefinitionARN,

    -- * EventBus
    EventBus (..),
    eventBus,
    ebARN,
    ebName,
    ebPolicy,

    -- * EventSource
    EventSource (..),
    eventSource,
    esCreationTime,
    esExpirationTime,
    esARN,
    esState,
    esName,
    esCreatedBy,

    -- * HTTPParameters
    HTTPParameters (..),
    hTTPParameters,
    httppQueryStringParameters,
    httppPathParameterValues,
    httppHeaderParameters,

    -- * InputTransformer
    InputTransformer (..),
    inputTransformer,
    itInputPathsMap,
    itInputTemplate,

    -- * KinesisParameters
    KinesisParameters (..),
    kinesisParameters,
    kpPartitionKeyPath,

    -- * NetworkConfiguration
    NetworkConfiguration (..),
    networkConfiguration,
    ncAwsvpcConfiguration,

    -- * PartnerEventSource
    PartnerEventSource (..),
    partnerEventSource,
    pesARN,
    pesName,

    -- * PartnerEventSourceAccount
    PartnerEventSourceAccount (..),
    partnerEventSourceAccount,
    pesaCreationTime,
    pesaExpirationTime,
    pesaState,
    pesaAccount,

    -- * PutEventsRequestEntry
    PutEventsRequestEntry (..),
    putEventsRequestEntry,
    pereDetailType,
    pereSource,
    pereEventBusName,
    pereDetail,
    pereResources,
    pereTraceHeader,
    pereTime,

    -- * PutEventsResultEntry
    PutEventsResultEntry (..),
    putEventsResultEntry,
    pereEventId,
    pereErrorMessage,
    pereErrorCode,

    -- * PutPartnerEventsRequestEntry
    PutPartnerEventsRequestEntry (..),
    putPartnerEventsRequestEntry,
    ppereDetailType,
    ppereSource,
    ppereDetail,
    ppereResources,
    ppereTime,

    -- * PutPartnerEventsResultEntry
    PutPartnerEventsResultEntry (..),
    putPartnerEventsResultEntry,
    ppereEventId,
    ppereErrorMessage,
    ppereErrorCode,

    -- * PutTargetsResultEntry
    PutTargetsResultEntry (..),
    putTargetsResultEntry,
    ptreTargetId,
    ptreErrorMessage,
    ptreErrorCode,

    -- * RedshiftDataParameters
    RedshiftDataParameters (..),
    redshiftDataParameters,
    rdpDBUser,
    rdpSecretManagerARN,
    rdpStatementName,
    rdpWithEvent,
    rdpDatabase,
    rdpSql,

    -- * RemoveTargetsResultEntry
    RemoveTargetsResultEntry (..),
    removeTargetsResultEntry,
    rtreTargetId,
    rtreErrorMessage,
    rtreErrorCode,

    -- * Replay
    Replay (..),
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

    -- * ReplayDestination
    ReplayDestination (..),
    replayDestination,
    rdFilterARNs,
    rdARN,

    -- * RetryPolicy
    RetryPolicy (..),
    retryPolicy,
    rpMaximumEventAgeInSeconds,
    rpMaximumRetryAttempts,

    -- * Rule
    Rule (..),
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

    -- * RunCommandParameters
    RunCommandParameters (..),
    runCommandParameters,
    rcpRunCommandTargets,

    -- * RunCommandTarget
    RunCommandTarget (..),
    runCommandTarget,
    rctKey,
    rctValues,

    -- * SqsParameters
    SqsParameters (..),
    sqsParameters,
    spMessageGroupId,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Target
    Target (..),
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

    -- * UpdateConnectionAPIKeyAuthRequestParameters
    UpdateConnectionAPIKeyAuthRequestParameters (..),
    updateConnectionAPIKeyAuthRequestParameters,
    ucakarpAPIKeyValue,
    ucakarpAPIKeyName,

    -- * UpdateConnectionAuthRequestParameters
    UpdateConnectionAuthRequestParameters (..),
    updateConnectionAuthRequestParameters,
    ucarpBasicAuthParameters,
    ucarpOAuthParameters,
    ucarpAPIKeyAuthParameters,
    ucarpInvocationHTTPParameters,

    -- * UpdateConnectionBasicAuthRequestParameters
    UpdateConnectionBasicAuthRequestParameters (..),
    updateConnectionBasicAuthRequestParameters,
    ucbarpPassword,
    ucbarpUsername,

    -- * UpdateConnectionOAuthClientRequestParameters
    UpdateConnectionOAuthClientRequestParameters (..),
    updateConnectionOAuthClientRequestParameters,
    ucoacrpClientSecret,
    ucoacrpClientId,

    -- * UpdateConnectionOAuthRequestParameters
    UpdateConnectionOAuthRequestParameters (..),
    updateConnectionOAuthRequestParameters,
    ucoarpHTTPMethod,
    ucoarpClientParameters,
    ucoarpAuthorizationEndpoint,
    ucoarpOAuthHTTPParameters,
  )
where

import Network.AWS.CloudWatchEvents.Types.APIdestination
import Network.AWS.CloudWatchEvents.Types.APIdestinationHTTPMethod
import Network.AWS.CloudWatchEvents.Types.APIdestinationState
import Network.AWS.CloudWatchEvents.Types.AWSVPCConfiguration
import Network.AWS.CloudWatchEvents.Types.Archive
import Network.AWS.CloudWatchEvents.Types.ArchiveState
import Network.AWS.CloudWatchEvents.Types.AssignPublicIP
import Network.AWS.CloudWatchEvents.Types.BatchArrayProperties
import Network.AWS.CloudWatchEvents.Types.BatchParameters
import Network.AWS.CloudWatchEvents.Types.BatchRetryStrategy
import Network.AWS.CloudWatchEvents.Types.Condition
import Network.AWS.CloudWatchEvents.Types.Connection
import Network.AWS.CloudWatchEvents.Types.ConnectionAPIKeyAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionAuthorizationType
import Network.AWS.CloudWatchEvents.Types.ConnectionBasicAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionBodyParameter
import Network.AWS.CloudWatchEvents.Types.ConnectionHTTPParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionHeaderParameter
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthClientResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHTTPMethod
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionQueryStringParameter
import Network.AWS.CloudWatchEvents.Types.ConnectionState
import Network.AWS.CloudWatchEvents.Types.CreateConnectionAPIKeyAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionBasicAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthClientRequestParameters
import Network.AWS.CloudWatchEvents.Types.CreateConnectionOAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.DeadLetterConfig
import Network.AWS.CloudWatchEvents.Types.EcsParameters
import Network.AWS.CloudWatchEvents.Types.EventBus
import Network.AWS.CloudWatchEvents.Types.EventSource
import Network.AWS.CloudWatchEvents.Types.EventSourceState
import Network.AWS.CloudWatchEvents.Types.HTTPParameters
import Network.AWS.CloudWatchEvents.Types.InputTransformer
import Network.AWS.CloudWatchEvents.Types.KinesisParameters
import Network.AWS.CloudWatchEvents.Types.LaunchType
import Network.AWS.CloudWatchEvents.Types.NetworkConfiguration
import Network.AWS.CloudWatchEvents.Types.PartnerEventSource
import Network.AWS.CloudWatchEvents.Types.PartnerEventSourceAccount
import Network.AWS.CloudWatchEvents.Types.PutEventsRequestEntry
import Network.AWS.CloudWatchEvents.Types.PutEventsResultEntry
import Network.AWS.CloudWatchEvents.Types.PutPartnerEventsRequestEntry
import Network.AWS.CloudWatchEvents.Types.PutPartnerEventsResultEntry
import Network.AWS.CloudWatchEvents.Types.PutTargetsResultEntry
import Network.AWS.CloudWatchEvents.Types.RedshiftDataParameters
import Network.AWS.CloudWatchEvents.Types.RemoveTargetsResultEntry
import Network.AWS.CloudWatchEvents.Types.Replay
import Network.AWS.CloudWatchEvents.Types.ReplayDestination
import Network.AWS.CloudWatchEvents.Types.ReplayState
import Network.AWS.CloudWatchEvents.Types.RetryPolicy
import Network.AWS.CloudWatchEvents.Types.Rule
import Network.AWS.CloudWatchEvents.Types.RuleState
import Network.AWS.CloudWatchEvents.Types.RunCommandParameters
import Network.AWS.CloudWatchEvents.Types.RunCommandTarget
import Network.AWS.CloudWatchEvents.Types.SqsParameters
import Network.AWS.CloudWatchEvents.Types.Tag
import Network.AWS.CloudWatchEvents.Types.Target
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionAPIKeyAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionBasicAuthRequestParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthClientRequestParameters
import Network.AWS.CloudWatchEvents.Types.UpdateConnectionOAuthRequestParameters
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-10-07@ of the Amazon EventBridge SDK configuration.
cloudWatchEvents :: Service
cloudWatchEvents =
  Service
    { _svcAbbrev = "CloudWatchEvents",
      _svcSigner = v4,
      _svcPrefix = "events",
      _svcVersion = "2015-10-07",
      _svcEndpoint = defaultEndpoint cloudWatchEvents,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "CloudWatchEvents",
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

-- | This rule was created by an AWS service on behalf of your account. It is managed by that service. If you see this error in response to @DeleteRule@ or @RemoveTargets@ , you can use the @Force@ parameter in those calls to delete the rule or remove targets from the rule. You cannot modify these managed rules by using @DisableRule@ , @EnableRule@ , @PutTargets@ , @PutRule@ , @TagResource@ , or @UntagResource@ .
_ManagedRuleException :: AsError a => Getting (First ServiceError) a ServiceError
_ManagedRuleException =
  _MatchServiceError
    cloudWatchEvents
    "ManagedRuleException"

-- | The specified state is not a valid state for an event source.
_InvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidStateException =
  _MatchServiceError
    cloudWatchEvents
    "InvalidStateException"

-- | The resource you are trying to create already exists.
_ResourceAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceAlreadyExistsException =
  _MatchServiceError
    cloudWatchEvents
    "ResourceAlreadyExistsException"

-- | This exception occurs due to unexpected causes.
_InternalException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalException =
  _MatchServiceError
    cloudWatchEvents
    "InternalException"

-- | There is concurrent modification on a rule, target, archive, or replay.
_ConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConcurrentModificationException =
  _MatchServiceError
    cloudWatchEvents
    "ConcurrentModificationException"

-- | The request failed because it attempted to create resource beyond the allowed service quota.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    cloudWatchEvents
    "LimitExceededException"

-- | An entity that you specified does not exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    cloudWatchEvents
    "ResourceNotFoundException"

-- | The event bus policy is too long. For more information, see the limits.
_PolicyLengthExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_PolicyLengthExceededException =
  _MatchServiceError
    cloudWatchEvents
    "PolicyLengthExceededException"

-- | An error occurred because a replay can be canceled only when the state is Running or Starting.
_IllegalStatusException :: AsError a => Getting (First ServiceError) a ServiceError
_IllegalStatusException =
  _MatchServiceError
    cloudWatchEvents
    "IllegalStatusException"

-- | The operation you are attempting is not available in this region.
_OperationDisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_OperationDisabledException =
  _MatchServiceError
    cloudWatchEvents
    "OperationDisabledException"

-- | The event pattern is not valid.
_InvalidEventPatternException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidEventPatternException =
  _MatchServiceError
    cloudWatchEvents
    "InvalidEventPatternException"

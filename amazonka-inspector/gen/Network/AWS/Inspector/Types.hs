{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types
  ( -- * Service Configuration
    inspector,

    -- * Errors
    _PreviewGenerationInProgressException,
    _ServiceTemporarilyUnavailableException,
    _UnsupportedFeatureException,
    _InternalException,
    _InvalidInputException,
    _InvalidCrossAccountRoleException,
    _AssessmentRunInProgressException,
    _AgentsAlreadyRunningAssessmentException,
    _AccessDeniedException,
    _LimitExceededException,
    _NoSuchEntityException,

    -- * AgentHealth
    AgentHealth (..),

    -- * AgentHealthCode
    AgentHealthCode (..),

    -- * AssessmentRunNotificationSNSStatusCode
    AssessmentRunNotificationSNSStatusCode (..),

    -- * AssessmentRunState
    AssessmentRunState (..),

    -- * AssetType
    AssetType (..),

    -- * FailedItemErrorCode
    FailedItemErrorCode (..),

    -- * InspectorEvent
    InspectorEvent (..),

    -- * Locale
    Locale (..),

    -- * PreviewStatus
    PreviewStatus (..),

    -- * ReportFileFormat
    ReportFileFormat (..),

    -- * ReportStatus
    ReportStatus (..),

    -- * ReportType
    ReportType (..),

    -- * ScopeType
    ScopeType (..),

    -- * Severity
    Severity (..),

    -- * StopAction
    StopAction (..),

    -- * AgentFilter
    AgentFilter (..),
    agentFilter,
    afAgentHealths,
    afAgentHealthCodes,

    -- * AgentPreview
    AgentPreview (..),
    agentPreview,
    apHostname,
    apAgentVersion,
    apKernelVersion,
    apOperatingSystem,
    apAgentHealth,
    apAutoScalingGroup,
    apIpv4Address,
    apAgentId,

    -- * AssessmentRun
    AssessmentRun (..),
    assessmentRun,
    arStartedAt,
    arCompletedAt,
    arArn,
    arName,
    arAssessmentTemplateARN,
    arState,
    arDurationInSeconds,
    arRulesPackageARNs,
    arUserAttributesForFindings,
    arCreatedAt,
    arStateChangedAt,
    arDataCollected,
    arStateChanges,
    arNotifications,
    arFindingCounts,

    -- * AssessmentRunAgent
    AssessmentRunAgent (..),
    assessmentRunAgent,
    araAgentHealthDetails,
    araAutoScalingGroup,
    araAgentId,
    araAssessmentRunARN,
    araAgentHealth,
    araAgentHealthCode,
    araTelemetryMetadata,

    -- * AssessmentRunFilter
    AssessmentRunFilter (..),
    assessmentRunFilter,
    arfStates,
    arfRulesPackageARNs,
    arfDurationRange,
    arfStateChangeTimeRange,
    arfStartTimeRange,
    arfNamePattern,
    arfCompletionTimeRange,

    -- * AssessmentRunNotification
    AssessmentRunNotification (..),
    assessmentRunNotification,
    arnMessage,
    arnSnsPublishStatusCode,
    arnSnsTopicARN,
    arnDate,
    arnEvent,
    arnError,

    -- * AssessmentRunStateChange
    AssessmentRunStateChange (..),
    assessmentRunStateChange,
    arscStateChangedAt,
    arscState,

    -- * AssessmentTarget
    AssessmentTarget (..),
    assessmentTarget,
    atResourceGroupARN,
    atArn,
    atName,
    atCreatedAt,
    atUpdatedAt,

    -- * AssessmentTargetFilter
    AssessmentTargetFilter (..),
    assessmentTargetFilter,
    atfAssessmentTargetNamePattern,

    -- * AssessmentTemplate
    AssessmentTemplate (..),
    assessmentTemplate,
    aLastAssessmentRunARN,
    aArn,
    aName,
    aAssessmentTargetARN,
    aDurationInSeconds,
    aRulesPackageARNs,
    aUserAttributesForFindings,
    aAssessmentRunCount,
    aCreatedAt,

    -- * AssessmentTemplateFilter
    AssessmentTemplateFilter (..),
    assessmentTemplateFilter,
    atfRulesPackageARNs,
    atfDurationRange,
    atfNamePattern,

    -- * AssetAttributes
    AssetAttributes (..),
    assetAttributes,
    aaHostname,
    aaAgentId,
    aaAmiId,
    aaTags,
    aaIpv4Addresses,
    aaNetworkInterfaces,
    aaAutoScalingGroup,
    aaSchemaVersion,

    -- * Attribute
    Attribute (..),
    attribute,
    aValue,
    aKey,

    -- * DurationRange
    DurationRange (..),
    durationRange,
    drMinSeconds,
    drMaxSeconds,

    -- * EventSubscription
    EventSubscription (..),
    eventSubscription,
    esEvent,
    esSubscribedAt,

    -- * Exclusion
    Exclusion (..),
    exclusion,
    eAttributes,
    eArn,
    eTitle,
    eDescription,
    eRecommendation,
    eScopes,

    -- * ExclusionPreview
    ExclusionPreview (..),
    exclusionPreview,
    epAttributes,
    epTitle,
    epDescription,
    epRecommendation,
    epScopes,

    -- * FailedItemDetails
    FailedItemDetails (..),
    failedItemDetails,
    fidFailureCode,
    fidRetryable,

    -- * Finding
    Finding (..),
    finding,
    fAssetAttributes,
    fSeverity,
    fTitle,
    fAssetType,
    fNumericSeverity,
    fId,
    fService,
    fServiceAttributes,
    fConfidence,
    fRecommendation,
    fIndicatorOfCompromise,
    fDescription,
    fSchemaVersion,
    fArn,
    fAttributes,
    fUserAttributes,
    fCreatedAt,
    fUpdatedAt,

    -- * FindingFilter
    FindingFilter (..),
    findingFilter,
    ffAgentIds,
    ffRulesPackageARNs,
    ffCreationTimeRange,
    ffSeverities,
    ffAttributes,
    ffUserAttributes,
    ffAutoScalingGroups,
    ffRuleNames,

    -- * InspectorServiceAttributes
    InspectorServiceAttributes (..),
    inspectorServiceAttributes,
    isaRulesPackageARN,
    isaAssessmentRunARN,
    isaSchemaVersion,

    -- * NetworkInterface
    NetworkInterface (..),
    networkInterface,
    niPrivateIPAddresses,
    niIpv6Addresses,
    niSecurityGroups,
    niPublicDNSName,
    niSubnetId,
    niNetworkInterfaceId,
    niPrivateDNSName,
    niVpcId,
    niPublicIP,
    niPrivateIPAddress,

    -- * PrivateIP
    PrivateIP (..),
    privateIP,
    piPrivateDNSName,
    piPrivateIPAddress,

    -- * ResourceGroup
    ResourceGroup (..),
    resourceGroup,
    rgArn,
    rgTags,
    rgCreatedAt,

    -- * ResourceGroupTag
    ResourceGroupTag (..),
    resourceGroupTag,
    rgtValue,
    rgtKey,

    -- * RulesPackage
    RulesPackage (..),
    rulesPackage,
    rpDescription,
    rpArn,
    rpName,
    rpVersion,
    rpProvider,

    -- * Scope
    Scope (..),
    scope,
    sKey,
    sValue,

    -- * SecurityGroup
    SecurityGroup (..),
    securityGroup,
    sgGroupName,
    sgGroupId,

    -- * Subscription
    Subscription (..),
    subscription,
    sResourceARN,
    sTopicARN,
    sEventSubscriptions,

    -- * Tag
    Tag (..),
    tag,
    tagValue,
    tagKey,

    -- * TelemetryMetadata
    TelemetryMetadata (..),
    telemetryMetadata,
    tmDataSize,
    tmMessageType,
    tmCount,

    -- * TimestampRange
    TimestampRange (..),
    timestampRange,
    trBeginDate,
    trEndDate,
  )
where

import Network.AWS.Inspector.Types.AgentFilter
import Network.AWS.Inspector.Types.AgentHealth
import Network.AWS.Inspector.Types.AgentHealthCode
import Network.AWS.Inspector.Types.AgentPreview
import Network.AWS.Inspector.Types.AssessmentRun
import Network.AWS.Inspector.Types.AssessmentRunAgent
import Network.AWS.Inspector.Types.AssessmentRunFilter
import Network.AWS.Inspector.Types.AssessmentRunNotification
import Network.AWS.Inspector.Types.AssessmentRunNotificationSNSStatusCode
import Network.AWS.Inspector.Types.AssessmentRunState
import Network.AWS.Inspector.Types.AssessmentRunStateChange
import Network.AWS.Inspector.Types.AssessmentTarget
import Network.AWS.Inspector.Types.AssessmentTargetFilter
import Network.AWS.Inspector.Types.AssessmentTemplate
import Network.AWS.Inspector.Types.AssessmentTemplateFilter
import Network.AWS.Inspector.Types.AssetAttributes
import Network.AWS.Inspector.Types.AssetType
import Network.AWS.Inspector.Types.Attribute
import Network.AWS.Inspector.Types.DurationRange
import Network.AWS.Inspector.Types.EventSubscription
import Network.AWS.Inspector.Types.Exclusion
import Network.AWS.Inspector.Types.ExclusionPreview
import Network.AWS.Inspector.Types.FailedItemDetails
import Network.AWS.Inspector.Types.FailedItemErrorCode
import Network.AWS.Inspector.Types.Finding
import Network.AWS.Inspector.Types.FindingFilter
import Network.AWS.Inspector.Types.InspectorEvent
import Network.AWS.Inspector.Types.InspectorServiceAttributes
import Network.AWS.Inspector.Types.Locale
import Network.AWS.Inspector.Types.NetworkInterface
import Network.AWS.Inspector.Types.PreviewStatus
import Network.AWS.Inspector.Types.PrivateIP
import Network.AWS.Inspector.Types.ReportFileFormat
import Network.AWS.Inspector.Types.ReportStatus
import Network.AWS.Inspector.Types.ReportType
import Network.AWS.Inspector.Types.ResourceGroup
import Network.AWS.Inspector.Types.ResourceGroupTag
import Network.AWS.Inspector.Types.RulesPackage
import Network.AWS.Inspector.Types.Scope
import Network.AWS.Inspector.Types.ScopeType
import Network.AWS.Inspector.Types.SecurityGroup
import Network.AWS.Inspector.Types.Severity
import Network.AWS.Inspector.Types.StopAction
import Network.AWS.Inspector.Types.Subscription
import Network.AWS.Inspector.Types.Tag
import Network.AWS.Inspector.Types.TelemetryMetadata
import Network.AWS.Inspector.Types.TimestampRange
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2016-02-16@ of the Amazon Inspector SDK configuration.
inspector :: Service
inspector =
  Service
    { _svcAbbrev = "Inspector",
      _svcSigner = v4,
      _svcPrefix = "inspector",
      _svcVersion = "2016-02-16",
      _svcEndpoint = defaultEndpoint inspector,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Inspector",
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

-- | The request is rejected. The specified assessment template is currently generating an exclusions preview.
_PreviewGenerationInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_PreviewGenerationInProgressException =
  _MatchServiceError
    inspector
    "PreviewGenerationInProgressException"

-- | The serice is temporary unavailable.
_ServiceTemporarilyUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceTemporarilyUnavailableException =
  _MatchServiceError
    inspector
    "ServiceTemporarilyUnavailableException"

-- | Used by the 'GetAssessmentReport' API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.
_UnsupportedFeatureException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedFeatureException =
  _MatchServiceError
    inspector
    "UnsupportedFeatureException"

-- | Internal server error.
_InternalException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalException =
  _MatchServiceError inspector "InternalException"

-- | The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
_InvalidInputException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputException =
  _MatchServiceError
    inspector
    "InvalidInputException"

-- | Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.
_InvalidCrossAccountRoleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCrossAccountRoleException =
  _MatchServiceError
    inspector
    "InvalidCrossAccountRoleException"

-- | You cannot perform a specified action if an assessment run is currently in progress.
_AssessmentRunInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_AssessmentRunInProgressException =
  _MatchServiceError
    inspector
    "AssessmentRunInProgressException"

-- | You started an assessment run, but one of the instances is already participating in another assessment run.
_AgentsAlreadyRunningAssessmentException :: AsError a => Getting (First ServiceError) a ServiceError
_AgentsAlreadyRunningAssessmentException =
  _MatchServiceError
    inspector
    "AgentsAlreadyRunningAssessmentException"

-- | You do not have required permissions to access the requested resource.
_AccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_AccessDeniedException =
  _MatchServiceError
    inspector
    "AccessDeniedException"

-- | The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    inspector
    "LimitExceededException"

-- | The request was rejected because it referenced an entity that does not exist. The error code describes the entity.
_NoSuchEntityException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchEntityException =
  _MatchServiceError
    inspector
    "NoSuchEntityException"

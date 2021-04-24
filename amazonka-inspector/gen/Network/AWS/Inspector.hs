{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Inspector__
--
-- Amazon Inspector enables you to analyze the behavior of your AWS resources and to identify potential security issues. For more information, see <https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html Amazon Inspector User Guide> .
module Network.AWS.Inspector
  ( -- * Service Configuration
    inspector,

    -- * Errors
    -- $errors

    -- ** PreviewGenerationInProgressException
    _PreviewGenerationInProgressException,

    -- ** ServiceTemporarilyUnavailableException
    _ServiceTemporarilyUnavailableException,

    -- ** UnsupportedFeatureException
    _UnsupportedFeatureException,

    -- ** InternalException
    _InternalException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** InvalidCrossAccountRoleException
    _InvalidCrossAccountRoleException,

    -- ** AssessmentRunInProgressException
    _AssessmentRunInProgressException,

    -- ** AgentsAlreadyRunningAssessmentException
    _AgentsAlreadyRunningAssessmentException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** NoSuchEntityException
    _NoSuchEntityException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** StartAssessmentRun
    module Network.AWS.Inspector.StartAssessmentRun,

    -- ** DeleteAssessmentTemplate
    module Network.AWS.Inspector.DeleteAssessmentTemplate,

    -- ** SubscribeToEvent
    module Network.AWS.Inspector.SubscribeToEvent,

    -- ** StopAssessmentRun
    module Network.AWS.Inspector.StopAssessmentRun,

    -- ** GetTelemetryMetadata
    module Network.AWS.Inspector.GetTelemetryMetadata,

    -- ** ListFindings (Paginated)
    module Network.AWS.Inspector.ListFindings,

    -- ** DescribeAssessmentTargets
    module Network.AWS.Inspector.DescribeAssessmentTargets,

    -- ** UpdateAssessmentTarget
    module Network.AWS.Inspector.UpdateAssessmentTarget,

    -- ** ListAssessmentTargets (Paginated)
    module Network.AWS.Inspector.ListAssessmentTargets,

    -- ** ListAssessmentRuns (Paginated)
    module Network.AWS.Inspector.ListAssessmentRuns,

    -- ** DeleteAssessmentTarget
    module Network.AWS.Inspector.DeleteAssessmentTarget,

    -- ** AddAttributesToFindings
    module Network.AWS.Inspector.AddAttributesToFindings,

    -- ** CreateAssessmentTarget
    module Network.AWS.Inspector.CreateAssessmentTarget,

    -- ** GetExclusionsPreview
    module Network.AWS.Inspector.GetExclusionsPreview,

    -- ** DescribeResourceGroups
    module Network.AWS.Inspector.DescribeResourceGroups,

    -- ** PreviewAgents (Paginated)
    module Network.AWS.Inspector.PreviewAgents,

    -- ** ListExclusions (Paginated)
    module Network.AWS.Inspector.ListExclusions,

    -- ** CreateAssessmentTemplate
    module Network.AWS.Inspector.CreateAssessmentTemplate,

    -- ** DescribeCrossAccountAccessRole
    module Network.AWS.Inspector.DescribeCrossAccountAccessRole,

    -- ** SetTagsForResource
    module Network.AWS.Inspector.SetTagsForResource,

    -- ** DescribeExclusions
    module Network.AWS.Inspector.DescribeExclusions,

    -- ** ListAssessmentTemplates (Paginated)
    module Network.AWS.Inspector.ListAssessmentTemplates,

    -- ** ListAssessmentRunAgents (Paginated)
    module Network.AWS.Inspector.ListAssessmentRunAgents,

    -- ** DescribeAssessmentRuns
    module Network.AWS.Inspector.DescribeAssessmentRuns,

    -- ** DescribeRulesPackages
    module Network.AWS.Inspector.DescribeRulesPackages,

    -- ** CreateExclusionsPreview
    module Network.AWS.Inspector.CreateExclusionsPreview,

    -- ** CreateResourceGroup
    module Network.AWS.Inspector.CreateResourceGroup,

    -- ** UnsubscribeFromEvent
    module Network.AWS.Inspector.UnsubscribeFromEvent,

    -- ** RemoveAttributesFromFindings
    module Network.AWS.Inspector.RemoveAttributesFromFindings,

    -- ** DeleteAssessmentRun
    module Network.AWS.Inspector.DeleteAssessmentRun,

    -- ** RegisterCrossAccountAccessRole
    module Network.AWS.Inspector.RegisterCrossAccountAccessRole,

    -- ** ListEventSubscriptions (Paginated)
    module Network.AWS.Inspector.ListEventSubscriptions,

    -- ** GetAssessmentReport
    module Network.AWS.Inspector.GetAssessmentReport,

    -- ** ListRulesPackages (Paginated)
    module Network.AWS.Inspector.ListRulesPackages,

    -- ** DescribeFindings
    module Network.AWS.Inspector.DescribeFindings,

    -- ** DescribeAssessmentTemplates
    module Network.AWS.Inspector.DescribeAssessmentTemplates,

    -- ** ListTagsForResource
    module Network.AWS.Inspector.ListTagsForResource,

    -- * Types

    -- ** AgentHealth
    AgentHealth (..),

    -- ** AgentHealthCode
    AgentHealthCode (..),

    -- ** AssessmentRunNotificationSNSStatusCode
    AssessmentRunNotificationSNSStatusCode (..),

    -- ** AssessmentRunState
    AssessmentRunState (..),

    -- ** AssetType
    AssetType (..),

    -- ** FailedItemErrorCode
    FailedItemErrorCode (..),

    -- ** InspectorEvent
    InspectorEvent (..),

    -- ** Locale
    Locale (..),

    -- ** PreviewStatus
    PreviewStatus (..),

    -- ** ReportFileFormat
    ReportFileFormat (..),

    -- ** ReportStatus
    ReportStatus (..),

    -- ** ReportType
    ReportType (..),

    -- ** ScopeType
    ScopeType (..),

    -- ** Severity
    Severity (..),

    -- ** StopAction
    StopAction (..),

    -- ** AgentFilter
    AgentFilter,
    agentFilter,
    afAgentHealths,
    afAgentHealthCodes,

    -- ** AgentPreview
    AgentPreview,
    agentPreview,
    apHostname,
    apAgentVersion,
    apKernelVersion,
    apOperatingSystem,
    apAgentHealth,
    apAutoScalingGroup,
    apIpv4Address,
    apAgentId,

    -- ** AssessmentRun
    AssessmentRun,
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

    -- ** AssessmentRunAgent
    AssessmentRunAgent,
    assessmentRunAgent,
    araAgentHealthDetails,
    araAutoScalingGroup,
    araAgentId,
    araAssessmentRunARN,
    araAgentHealth,
    araAgentHealthCode,
    araTelemetryMetadata,

    -- ** AssessmentRunFilter
    AssessmentRunFilter,
    assessmentRunFilter,
    arfStates,
    arfRulesPackageARNs,
    arfDurationRange,
    arfStateChangeTimeRange,
    arfStartTimeRange,
    arfNamePattern,
    arfCompletionTimeRange,

    -- ** AssessmentRunNotification
    AssessmentRunNotification,
    assessmentRunNotification,
    arnMessage,
    arnSnsPublishStatusCode,
    arnSnsTopicARN,
    arnDate,
    arnEvent,
    arnError,

    -- ** AssessmentRunStateChange
    AssessmentRunStateChange,
    assessmentRunStateChange,
    arscStateChangedAt,
    arscState,

    -- ** AssessmentTarget
    AssessmentTarget,
    assessmentTarget,
    atResourceGroupARN,
    atArn,
    atName,
    atCreatedAt,
    atUpdatedAt,

    -- ** AssessmentTargetFilter
    AssessmentTargetFilter,
    assessmentTargetFilter,
    atfAssessmentTargetNamePattern,

    -- ** AssessmentTemplate
    AssessmentTemplate,
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

    -- ** AssessmentTemplateFilter
    AssessmentTemplateFilter,
    assessmentTemplateFilter,
    atfRulesPackageARNs,
    atfDurationRange,
    atfNamePattern,

    -- ** AssetAttributes
    AssetAttributes,
    assetAttributes,
    aaHostname,
    aaAgentId,
    aaAmiId,
    aaTags,
    aaIpv4Addresses,
    aaNetworkInterfaces,
    aaAutoScalingGroup,
    aaSchemaVersion,

    -- ** Attribute
    Attribute,
    attribute,
    aValue,
    aKey,

    -- ** DurationRange
    DurationRange,
    durationRange,
    drMinSeconds,
    drMaxSeconds,

    -- ** EventSubscription
    EventSubscription,
    eventSubscription,
    esEvent,
    esSubscribedAt,

    -- ** Exclusion
    Exclusion,
    exclusion,
    eAttributes,
    eArn,
    eTitle,
    eDescription,
    eRecommendation,
    eScopes,

    -- ** ExclusionPreview
    ExclusionPreview,
    exclusionPreview,
    epAttributes,
    epTitle,
    epDescription,
    epRecommendation,
    epScopes,

    -- ** FailedItemDetails
    FailedItemDetails,
    failedItemDetails,
    fidFailureCode,
    fidRetryable,

    -- ** Finding
    Finding,
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

    -- ** FindingFilter
    FindingFilter,
    findingFilter,
    ffAgentIds,
    ffRulesPackageARNs,
    ffCreationTimeRange,
    ffSeverities,
    ffAttributes,
    ffUserAttributes,
    ffAutoScalingGroups,
    ffRuleNames,

    -- ** InspectorServiceAttributes
    InspectorServiceAttributes,
    inspectorServiceAttributes,
    isaRulesPackageARN,
    isaAssessmentRunARN,
    isaSchemaVersion,

    -- ** NetworkInterface
    NetworkInterface,
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

    -- ** PrivateIP
    PrivateIP,
    privateIP,
    piPrivateDNSName,
    piPrivateIPAddress,

    -- ** ResourceGroup
    ResourceGroup,
    resourceGroup,
    rgArn,
    rgTags,
    rgCreatedAt,

    -- ** ResourceGroupTag
    ResourceGroupTag,
    resourceGroupTag,
    rgtValue,
    rgtKey,

    -- ** RulesPackage
    RulesPackage,
    rulesPackage,
    rpDescription,
    rpArn,
    rpName,
    rpVersion,
    rpProvider,

    -- ** Scope
    Scope,
    scope,
    sKey,
    sValue,

    -- ** SecurityGroup
    SecurityGroup,
    securityGroup,
    sgGroupName,
    sgGroupId,

    -- ** Subscription
    Subscription,
    subscription,
    sResourceARN,
    sTopicARN,
    sEventSubscriptions,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** TelemetryMetadata
    TelemetryMetadata,
    telemetryMetadata,
    tmDataSize,
    tmMessageType,
    tmCount,

    -- ** TimestampRange
    TimestampRange,
    timestampRange,
    trBeginDate,
    trEndDate,
  )
where

import Network.AWS.Inspector.AddAttributesToFindings
import Network.AWS.Inspector.CreateAssessmentTarget
import Network.AWS.Inspector.CreateAssessmentTemplate
import Network.AWS.Inspector.CreateExclusionsPreview
import Network.AWS.Inspector.CreateResourceGroup
import Network.AWS.Inspector.DeleteAssessmentRun
import Network.AWS.Inspector.DeleteAssessmentTarget
import Network.AWS.Inspector.DeleteAssessmentTemplate
import Network.AWS.Inspector.DescribeAssessmentRuns
import Network.AWS.Inspector.DescribeAssessmentTargets
import Network.AWS.Inspector.DescribeAssessmentTemplates
import Network.AWS.Inspector.DescribeCrossAccountAccessRole
import Network.AWS.Inspector.DescribeExclusions
import Network.AWS.Inspector.DescribeFindings
import Network.AWS.Inspector.DescribeResourceGroups
import Network.AWS.Inspector.DescribeRulesPackages
import Network.AWS.Inspector.GetAssessmentReport
import Network.AWS.Inspector.GetExclusionsPreview
import Network.AWS.Inspector.GetTelemetryMetadata
import Network.AWS.Inspector.ListAssessmentRunAgents
import Network.AWS.Inspector.ListAssessmentRuns
import Network.AWS.Inspector.ListAssessmentTargets
import Network.AWS.Inspector.ListAssessmentTemplates
import Network.AWS.Inspector.ListEventSubscriptions
import Network.AWS.Inspector.ListExclusions
import Network.AWS.Inspector.ListFindings
import Network.AWS.Inspector.ListRulesPackages
import Network.AWS.Inspector.ListTagsForResource
import Network.AWS.Inspector.PreviewAgents
import Network.AWS.Inspector.RegisterCrossAccountAccessRole
import Network.AWS.Inspector.RemoveAttributesFromFindings
import Network.AWS.Inspector.SetTagsForResource
import Network.AWS.Inspector.StartAssessmentRun
import Network.AWS.Inspector.StopAssessmentRun
import Network.AWS.Inspector.SubscribeToEvent
import Network.AWS.Inspector.Types
import Network.AWS.Inspector.UnsubscribeFromEvent
import Network.AWS.Inspector.UpdateAssessmentTarget
import Network.AWS.Inspector.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Inspector'.

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

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _IndexNotReadyException,
    _TransferAlreadyCompletedException,
    _InvalidQueryException,
    _CertificateConflictException,
    _TaskAlreadyExistsException,
    _CertificateValidationException,
    _UnauthorizedException,
    _ResourceAlreadyExistsException,
    _InternalException,
    _MalformedPolicyException,
    _ServiceUnavailableException,
    _CertificateStateException,
    _InvalidAggregationException,
    _ThrottlingException,
    _InvalidRequestException,
    _ResourceRegistrationFailureException,
    _SqlParseException,
    _LimitExceededException,
    _InvalidStateTransitionException,
    _NotConfiguredException,
    _ResourceNotFoundException,
    _VersionConflictException,
    _RegistrationCodeValidationException,
    _VersionsLimitExceededException,
    _InternalFailureException,
    _DeleteConflictException,
    _InvalidResponseException,
    _TransferConflictException,
    _ConflictingResourceUpdateException,

    -- * AbortAction
    AbortAction (..),

    -- * ActionType
    ActionType (..),

    -- * AlertTargetType
    AlertTargetType (..),

    -- * AuditCheckRunStatus
    AuditCheckRunStatus (..),

    -- * AuditFindingSeverity
    AuditFindingSeverity (..),

    -- * AuditFrequency
    AuditFrequency (..),

    -- * AuditMitigationActionsExecutionStatus
    AuditMitigationActionsExecutionStatus (..),

    -- * AuditMitigationActionsTaskStatus
    AuditMitigationActionsTaskStatus (..),

    -- * AuditNotificationType
    AuditNotificationType (..),

    -- * AuditTaskStatus
    AuditTaskStatus (..),

    -- * AuditTaskType
    AuditTaskType (..),

    -- * AuthDecision
    AuthDecision (..),

    -- * AuthorizerStatus
    AuthorizerStatus (..),

    -- * AutoRegistrationStatus
    AutoRegistrationStatus (..),

    -- * AwsJobAbortCriteriaAbortAction
    AwsJobAbortCriteriaAbortAction (..),

    -- * AwsJobAbortCriteriaFailureType
    AwsJobAbortCriteriaFailureType (..),

    -- * BehaviorCriteriaType
    BehaviorCriteriaType (..),

    -- * CACertificateStatus
    CACertificateStatus (..),

    -- * CACertificateUpdateAction
    CACertificateUpdateAction (..),

    -- * CannedAccessControlList
    CannedAccessControlList (..),

    -- * CertificateMode
    CertificateMode (..),

    -- * CertificateStatus
    CertificateStatus (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * ConfidenceLevel
    ConfidenceLevel (..),

    -- * CustomMetricType
    CustomMetricType (..),

    -- * DayOfWeek
    DayOfWeek (..),

    -- * DetectMitigationActionExecutionStatus
    DetectMitigationActionExecutionStatus (..),

    -- * DetectMitigationActionsTaskStatus
    DetectMitigationActionsTaskStatus (..),

    -- * DeviceCertificateUpdateAction
    DeviceCertificateUpdateAction (..),

    -- * DimensionType
    DimensionType (..),

    -- * DimensionValueOperator
    DimensionValueOperator (..),

    -- * DomainConfigurationStatus
    DomainConfigurationStatus (..),

    -- * DomainType
    DomainType (..),

    -- * DynamicGroupStatus
    DynamicGroupStatus (..),

    -- * DynamoKeyType
    DynamoKeyType (..),

    -- * EventType
    EventType (..),

    -- * FieldType
    FieldType (..),

    -- * IndexStatus
    IndexStatus (..),

    -- * JobExecutionFailureType
    JobExecutionFailureType (..),

    -- * JobExecutionStatus
    JobExecutionStatus (..),

    -- * JobStatus
    JobStatus (..),

    -- * LogLevel
    LogLevel (..),

    -- * LogTargetType
    LogTargetType (..),

    -- * MessageFormat
    MessageFormat (..),

    -- * MitigationActionType
    MitigationActionType (..),

    -- * ModelStatus
    ModelStatus (..),

    -- * OTAUpdateStatus
    OTAUpdateStatus (..),

    -- * PolicyTemplateName
    PolicyTemplateName (..),

    -- * Protocol
    Protocol (..),

    -- * ReportType
    ReportType (..),

    -- * ResourceType
    ResourceType (..),

    -- * ServerCertificateStatus
    ServerCertificateStatus (..),

    -- * ServiceType
    ServiceType (..),

    -- * TargetSelection
    TargetSelection (..),

    -- * TaskStatus
    TaskStatus (..),

    -- * ThingConnectivityIndexingMode
    ThingConnectivityIndexingMode (..),

    -- * ThingGroupIndexingMode
    ThingGroupIndexingMode (..),

    -- * ThingIndexingMode
    ThingIndexingMode (..),

    -- * TopicRuleDestinationStatus
    TopicRuleDestinationStatus (..),

    -- * ViolationEventType
    ViolationEventType (..),

    -- * AbortConfig
    AbortConfig (..),
    newAbortConfig,

    -- * AbortCriteria
    AbortCriteria (..),
    newAbortCriteria,

    -- * Action
    Action (..),
    newAction,

    -- * ActiveViolation
    ActiveViolation (..),
    newActiveViolation,

    -- * AddThingsToThingGroupParams
    AddThingsToThingGroupParams (..),
    newAddThingsToThingGroupParams,

    -- * AlertTarget
    AlertTarget (..),
    newAlertTarget,

    -- * Allowed
    Allowed (..),
    newAllowed,

    -- * AssetPropertyTimestamp
    AssetPropertyTimestamp (..),
    newAssetPropertyTimestamp,

    -- * AssetPropertyValue
    AssetPropertyValue (..),
    newAssetPropertyValue,

    -- * AssetPropertyVariant
    AssetPropertyVariant (..),
    newAssetPropertyVariant,

    -- * AttributePayload
    AttributePayload (..),
    newAttributePayload,

    -- * AuditCheckConfiguration
    AuditCheckConfiguration (..),
    newAuditCheckConfiguration,

    -- * AuditCheckDetails
    AuditCheckDetails (..),
    newAuditCheckDetails,

    -- * AuditFinding
    AuditFinding (..),
    newAuditFinding,

    -- * AuditMitigationActionExecutionMetadata
    AuditMitigationActionExecutionMetadata (..),
    newAuditMitigationActionExecutionMetadata,

    -- * AuditMitigationActionsTaskMetadata
    AuditMitigationActionsTaskMetadata (..),
    newAuditMitigationActionsTaskMetadata,

    -- * AuditMitigationActionsTaskTarget
    AuditMitigationActionsTaskTarget (..),
    newAuditMitigationActionsTaskTarget,

    -- * AuditNotificationTarget
    AuditNotificationTarget (..),
    newAuditNotificationTarget,

    -- * AuditSuppression
    AuditSuppression (..),
    newAuditSuppression,

    -- * AuditTaskMetadata
    AuditTaskMetadata (..),
    newAuditTaskMetadata,

    -- * AuthInfo
    AuthInfo (..),
    newAuthInfo,

    -- * AuthResult
    AuthResult (..),
    newAuthResult,

    -- * AuthorizerConfig
    AuthorizerConfig (..),
    newAuthorizerConfig,

    -- * AuthorizerDescription
    AuthorizerDescription (..),
    newAuthorizerDescription,

    -- * AuthorizerSummary
    AuthorizerSummary (..),
    newAuthorizerSummary,

    -- * AwsJobAbortConfig
    AwsJobAbortConfig (..),
    newAwsJobAbortConfig,

    -- * AwsJobAbortCriteria
    AwsJobAbortCriteria (..),
    newAwsJobAbortCriteria,

    -- * AwsJobExecutionsRolloutConfig
    AwsJobExecutionsRolloutConfig (..),
    newAwsJobExecutionsRolloutConfig,

    -- * AwsJobExponentialRolloutRate
    AwsJobExponentialRolloutRate (..),
    newAwsJobExponentialRolloutRate,

    -- * AwsJobPresignedUrlConfig
    AwsJobPresignedUrlConfig (..),
    newAwsJobPresignedUrlConfig,

    -- * AwsJobRateIncreaseCriteria
    AwsJobRateIncreaseCriteria (..),
    newAwsJobRateIncreaseCriteria,

    -- * AwsJobTimeoutConfig
    AwsJobTimeoutConfig (..),
    newAwsJobTimeoutConfig,

    -- * Behavior
    Behavior (..),
    newBehavior,

    -- * BehaviorCriteria
    BehaviorCriteria (..),
    newBehaviorCriteria,

    -- * BehaviorModelTrainingSummary
    BehaviorModelTrainingSummary (..),
    newBehaviorModelTrainingSummary,

    -- * BillingGroupMetadata
    BillingGroupMetadata (..),
    newBillingGroupMetadata,

    -- * BillingGroupProperties
    BillingGroupProperties (..),
    newBillingGroupProperties,

    -- * CACertificate
    CACertificate (..),
    newCACertificate,

    -- * CACertificateDescription
    CACertificateDescription (..),
    newCACertificateDescription,

    -- * Certificate
    Certificate (..),
    newCertificate,

    -- * CertificateDescription
    CertificateDescription (..),
    newCertificateDescription,

    -- * CertificateValidity
    CertificateValidity (..),
    newCertificateValidity,

    -- * CloudwatchAlarmAction
    CloudwatchAlarmAction (..),
    newCloudwatchAlarmAction,

    -- * CloudwatchLogsAction
    CloudwatchLogsAction (..),
    newCloudwatchLogsAction,

    -- * CloudwatchMetricAction
    CloudwatchMetricAction (..),
    newCloudwatchMetricAction,

    -- * CodeSigning
    CodeSigning (..),
    newCodeSigning,

    -- * CodeSigningCertificateChain
    CodeSigningCertificateChain (..),
    newCodeSigningCertificateChain,

    -- * CodeSigningSignature
    CodeSigningSignature (..),
    newCodeSigningSignature,

    -- * Configuration
    Configuration (..),
    newConfiguration,

    -- * CustomCodeSigning
    CustomCodeSigning (..),
    newCustomCodeSigning,

    -- * Denied
    Denied (..),
    newDenied,

    -- * Destination
    Destination (..),
    newDestination,

    -- * DetectMitigationActionExecution
    DetectMitigationActionExecution (..),
    newDetectMitigationActionExecution,

    -- * DetectMitigationActionsTaskStatistics
    DetectMitigationActionsTaskStatistics (..),
    newDetectMitigationActionsTaskStatistics,

    -- * DetectMitigationActionsTaskSummary
    DetectMitigationActionsTaskSummary (..),
    newDetectMitigationActionsTaskSummary,

    -- * DetectMitigationActionsTaskTarget
    DetectMitigationActionsTaskTarget (..),
    newDetectMitigationActionsTaskTarget,

    -- * DomainConfigurationSummary
    DomainConfigurationSummary (..),
    newDomainConfigurationSummary,

    -- * DynamoDBAction
    DynamoDBAction (..),
    newDynamoDBAction,

    -- * DynamoDBv2Action
    DynamoDBv2Action (..),
    newDynamoDBv2Action,

    -- * EffectivePolicy
    EffectivePolicy (..),
    newEffectivePolicy,

    -- * ElasticsearchAction
    ElasticsearchAction (..),
    newElasticsearchAction,

    -- * EnableIoTLoggingParams
    EnableIoTLoggingParams (..),
    newEnableIoTLoggingParams,

    -- * ErrorInfo
    ErrorInfo (..),
    newErrorInfo,

    -- * ExplicitDeny
    ExplicitDeny (..),
    newExplicitDeny,

    -- * ExponentialRolloutRate
    ExponentialRolloutRate (..),
    newExponentialRolloutRate,

    -- * Field
    Field (..),
    newField,

    -- * FileLocation
    FileLocation (..),
    newFileLocation,

    -- * FirehoseAction
    FirehoseAction (..),
    newFirehoseAction,

    -- * GroupNameAndArn
    GroupNameAndArn (..),
    newGroupNameAndArn,

    -- * HttpAction
    HttpAction (..),
    newHttpAction,

    -- * HttpActionHeader
    HttpActionHeader (..),
    newHttpActionHeader,

    -- * HttpAuthorization
    HttpAuthorization (..),
    newHttpAuthorization,

    -- * HttpContext
    HttpContext (..),
    newHttpContext,

    -- * HttpUrlDestinationConfiguration
    HttpUrlDestinationConfiguration (..),
    newHttpUrlDestinationConfiguration,

    -- * HttpUrlDestinationProperties
    HttpUrlDestinationProperties (..),
    newHttpUrlDestinationProperties,

    -- * HttpUrlDestinationSummary
    HttpUrlDestinationSummary (..),
    newHttpUrlDestinationSummary,

    -- * ImplicitDeny
    ImplicitDeny (..),
    newImplicitDeny,

    -- * IotAnalyticsAction
    IotAnalyticsAction (..),
    newIotAnalyticsAction,

    -- * IotEventsAction
    IotEventsAction (..),
    newIotEventsAction,

    -- * IotSiteWiseAction
    IotSiteWiseAction (..),
    newIotSiteWiseAction,

    -- * Job
    Job (..),
    newJob,

    -- * JobExecution
    JobExecution (..),
    newJobExecution,

    -- * JobExecutionStatusDetails
    JobExecutionStatusDetails (..),
    newJobExecutionStatusDetails,

    -- * JobExecutionSummary
    JobExecutionSummary (..),
    newJobExecutionSummary,

    -- * JobExecutionSummaryForJob
    JobExecutionSummaryForJob (..),
    newJobExecutionSummaryForJob,

    -- * JobExecutionSummaryForThing
    JobExecutionSummaryForThing (..),
    newJobExecutionSummaryForThing,

    -- * JobExecutionsRolloutConfig
    JobExecutionsRolloutConfig (..),
    newJobExecutionsRolloutConfig,

    -- * JobProcessDetails
    JobProcessDetails (..),
    newJobProcessDetails,

    -- * JobSummary
    JobSummary (..),
    newJobSummary,

    -- * KafkaAction
    KafkaAction (..),
    newKafkaAction,

    -- * KeyPair
    KeyPair (..),
    newKeyPair,

    -- * KinesisAction
    KinesisAction (..),
    newKinesisAction,

    -- * LambdaAction
    LambdaAction (..),
    newLambdaAction,

    -- * LogTarget
    LogTarget (..),
    newLogTarget,

    -- * LogTargetConfiguration
    LogTargetConfiguration (..),
    newLogTargetConfiguration,

    -- * LoggingOptionsPayload
    LoggingOptionsPayload (..),
    newLoggingOptionsPayload,

    -- * MachineLearningDetectionConfig
    MachineLearningDetectionConfig (..),
    newMachineLearningDetectionConfig,

    -- * MetricDimension
    MetricDimension (..),
    newMetricDimension,

    -- * MetricToRetain
    MetricToRetain (..),
    newMetricToRetain,

    -- * MetricValue
    MetricValue (..),
    newMetricValue,

    -- * MitigationAction
    MitigationAction (..),
    newMitigationAction,

    -- * MitigationActionIdentifier
    MitigationActionIdentifier (..),
    newMitigationActionIdentifier,

    -- * MitigationActionParams
    MitigationActionParams (..),
    newMitigationActionParams,

    -- * MqttContext
    MqttContext (..),
    newMqttContext,

    -- * NonCompliantResource
    NonCompliantResource (..),
    newNonCompliantResource,

    -- * OTAUpdateFile
    OTAUpdateFile (..),
    newOTAUpdateFile,

    -- * OTAUpdateInfo
    OTAUpdateInfo (..),
    newOTAUpdateInfo,

    -- * OTAUpdateSummary
    OTAUpdateSummary (..),
    newOTAUpdateSummary,

    -- * OutgoingCertificate
    OutgoingCertificate (..),
    newOutgoingCertificate,

    -- * PercentPair
    PercentPair (..),
    newPercentPair,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PolicyVersion
    PolicyVersion (..),
    newPolicyVersion,

    -- * PolicyVersionIdentifier
    PolicyVersionIdentifier (..),
    newPolicyVersionIdentifier,

    -- * PresignedUrlConfig
    PresignedUrlConfig (..),
    newPresignedUrlConfig,

    -- * ProvisioningHook
    ProvisioningHook (..),
    newProvisioningHook,

    -- * ProvisioningTemplateSummary
    ProvisioningTemplateSummary (..),
    newProvisioningTemplateSummary,

    -- * ProvisioningTemplateVersionSummary
    ProvisioningTemplateVersionSummary (..),
    newProvisioningTemplateVersionSummary,

    -- * PublishFindingToSnsParams
    PublishFindingToSnsParams (..),
    newPublishFindingToSnsParams,

    -- * PutAssetPropertyValueEntry
    PutAssetPropertyValueEntry (..),
    newPutAssetPropertyValueEntry,

    -- * PutItemInput
    PutItemInput (..),
    newPutItemInput,

    -- * RateIncreaseCriteria
    RateIncreaseCriteria (..),
    newRateIncreaseCriteria,

    -- * RegistrationConfig
    RegistrationConfig (..),
    newRegistrationConfig,

    -- * RelatedResource
    RelatedResource (..),
    newRelatedResource,

    -- * ReplaceDefaultPolicyVersionParams
    ReplaceDefaultPolicyVersionParams (..),
    newReplaceDefaultPolicyVersionParams,

    -- * RepublishAction
    RepublishAction (..),
    newRepublishAction,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    newResourceIdentifier,

    -- * RoleAliasDescription
    RoleAliasDescription (..),
    newRoleAliasDescription,

    -- * S3Action
    S3Action (..),
    newS3Action,

    -- * S3Destination
    S3Destination (..),
    newS3Destination,

    -- * S3Location
    S3Location (..),
    newS3Location,

    -- * SalesforceAction
    SalesforceAction (..),
    newSalesforceAction,

    -- * ScheduledAuditMetadata
    ScheduledAuditMetadata (..),
    newScheduledAuditMetadata,

    -- * SecurityProfileIdentifier
    SecurityProfileIdentifier (..),
    newSecurityProfileIdentifier,

    -- * SecurityProfileTarget
    SecurityProfileTarget (..),
    newSecurityProfileTarget,

    -- * SecurityProfileTargetMapping
    SecurityProfileTargetMapping (..),
    newSecurityProfileTargetMapping,

    -- * ServerCertificateSummary
    ServerCertificateSummary (..),
    newServerCertificateSummary,

    -- * SigV4Authorization
    SigV4Authorization (..),
    newSigV4Authorization,

    -- * SigningProfileParameter
    SigningProfileParameter (..),
    newSigningProfileParameter,

    -- * SnsAction
    SnsAction (..),
    newSnsAction,

    -- * SqsAction
    SqsAction (..),
    newSqsAction,

    -- * StartSigningJobParameter
    StartSigningJobParameter (..),
    newStartSigningJobParameter,

    -- * StatisticalThreshold
    StatisticalThreshold (..),
    newStatisticalThreshold,

    -- * Statistics
    Statistics (..),
    newStatistics,

    -- * StepFunctionsAction
    StepFunctionsAction (..),
    newStepFunctionsAction,

    -- * Stream
    Stream (..),
    newStream,

    -- * StreamFile
    StreamFile (..),
    newStreamFile,

    -- * StreamInfo
    StreamInfo (..),
    newStreamInfo,

    -- * StreamSummary
    StreamSummary (..),
    newStreamSummary,

    -- * Tag
    Tag (..),
    newTag,

    -- * TaskStatistics
    TaskStatistics (..),
    newTaskStatistics,

    -- * TaskStatisticsForAuditCheck
    TaskStatisticsForAuditCheck (..),
    newTaskStatisticsForAuditCheck,

    -- * ThingAttribute
    ThingAttribute (..),
    newThingAttribute,

    -- * ThingConnectivity
    ThingConnectivity (..),
    newThingConnectivity,

    -- * ThingDocument
    ThingDocument (..),
    newThingDocument,

    -- * ThingGroupDocument
    ThingGroupDocument (..),
    newThingGroupDocument,

    -- * ThingGroupIndexingConfiguration
    ThingGroupIndexingConfiguration (..),
    newThingGroupIndexingConfiguration,

    -- * ThingGroupMetadata
    ThingGroupMetadata (..),
    newThingGroupMetadata,

    -- * ThingGroupProperties
    ThingGroupProperties (..),
    newThingGroupProperties,

    -- * ThingIndexingConfiguration
    ThingIndexingConfiguration (..),
    newThingIndexingConfiguration,

    -- * ThingTypeDefinition
    ThingTypeDefinition (..),
    newThingTypeDefinition,

    -- * ThingTypeMetadata
    ThingTypeMetadata (..),
    newThingTypeMetadata,

    -- * ThingTypeProperties
    ThingTypeProperties (..),
    newThingTypeProperties,

    -- * TimeoutConfig
    TimeoutConfig (..),
    newTimeoutConfig,

    -- * TimestreamAction
    TimestreamAction (..),
    newTimestreamAction,

    -- * TimestreamDimension
    TimestreamDimension (..),
    newTimestreamDimension,

    -- * TimestreamTimestamp
    TimestreamTimestamp (..),
    newTimestreamTimestamp,

    -- * TlsContext
    TlsContext (..),
    newTlsContext,

    -- * TopicRule
    TopicRule (..),
    newTopicRule,

    -- * TopicRuleDestination
    TopicRuleDestination (..),
    newTopicRuleDestination,

    -- * TopicRuleDestinationConfiguration
    TopicRuleDestinationConfiguration (..),
    newTopicRuleDestinationConfiguration,

    -- * TopicRuleDestinationSummary
    TopicRuleDestinationSummary (..),
    newTopicRuleDestinationSummary,

    -- * TopicRuleListItem
    TopicRuleListItem (..),
    newTopicRuleListItem,

    -- * TopicRulePayload
    TopicRulePayload (..),
    newTopicRulePayload,

    -- * TransferData
    TransferData (..),
    newTransferData,

    -- * UpdateCACertificateParams
    UpdateCACertificateParams (..),
    newUpdateCACertificateParams,

    -- * UpdateDeviceCertificateParams
    UpdateDeviceCertificateParams (..),
    newUpdateDeviceCertificateParams,

    -- * ValidationError
    ValidationError (..),
    newValidationError,

    -- * ViolationEvent
    ViolationEvent (..),
    newViolationEvent,

    -- * ViolationEventAdditionalInfo
    ViolationEventAdditionalInfo (..),
    newViolationEventAdditionalInfo,

    -- * ViolationEventOccurrenceRange
    ViolationEventOccurrenceRange (..),
    newViolationEventOccurrenceRange,

    -- * VpcDestinationConfiguration
    VpcDestinationConfiguration (..),
    newVpcDestinationConfiguration,

    -- * VpcDestinationProperties
    VpcDestinationProperties (..),
    newVpcDestinationProperties,

    -- * VpcDestinationSummary
    VpcDestinationSummary (..),
    newVpcDestinationSummary,
  )
where

import Network.AWS.IoT.Types.AbortAction
import Network.AWS.IoT.Types.AbortConfig
import Network.AWS.IoT.Types.AbortCriteria
import Network.AWS.IoT.Types.Action
import Network.AWS.IoT.Types.ActionType
import Network.AWS.IoT.Types.ActiveViolation
import Network.AWS.IoT.Types.AddThingsToThingGroupParams
import Network.AWS.IoT.Types.AlertTarget
import Network.AWS.IoT.Types.AlertTargetType
import Network.AWS.IoT.Types.Allowed
import Network.AWS.IoT.Types.AssetPropertyTimestamp
import Network.AWS.IoT.Types.AssetPropertyValue
import Network.AWS.IoT.Types.AssetPropertyVariant
import Network.AWS.IoT.Types.AttributePayload
import Network.AWS.IoT.Types.AuditCheckConfiguration
import Network.AWS.IoT.Types.AuditCheckDetails
import Network.AWS.IoT.Types.AuditCheckRunStatus
import Network.AWS.IoT.Types.AuditFinding
import Network.AWS.IoT.Types.AuditFindingSeverity
import Network.AWS.IoT.Types.AuditFrequency
import Network.AWS.IoT.Types.AuditMitigationActionExecutionMetadata
import Network.AWS.IoT.Types.AuditMitigationActionsExecutionStatus
import Network.AWS.IoT.Types.AuditMitigationActionsTaskMetadata
import Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
import Network.AWS.IoT.Types.AuditMitigationActionsTaskTarget
import Network.AWS.IoT.Types.AuditNotificationTarget
import Network.AWS.IoT.Types.AuditNotificationType
import Network.AWS.IoT.Types.AuditSuppression
import Network.AWS.IoT.Types.AuditTaskMetadata
import Network.AWS.IoT.Types.AuditTaskStatus
import Network.AWS.IoT.Types.AuditTaskType
import Network.AWS.IoT.Types.AuthDecision
import Network.AWS.IoT.Types.AuthInfo
import Network.AWS.IoT.Types.AuthResult
import Network.AWS.IoT.Types.AuthorizerConfig
import Network.AWS.IoT.Types.AuthorizerDescription
import Network.AWS.IoT.Types.AuthorizerStatus
import Network.AWS.IoT.Types.AuthorizerSummary
import Network.AWS.IoT.Types.AutoRegistrationStatus
import Network.AWS.IoT.Types.AwsJobAbortConfig
import Network.AWS.IoT.Types.AwsJobAbortCriteria
import Network.AWS.IoT.Types.AwsJobAbortCriteriaAbortAction
import Network.AWS.IoT.Types.AwsJobAbortCriteriaFailureType
import Network.AWS.IoT.Types.AwsJobExecutionsRolloutConfig
import Network.AWS.IoT.Types.AwsJobExponentialRolloutRate
import Network.AWS.IoT.Types.AwsJobPresignedUrlConfig
import Network.AWS.IoT.Types.AwsJobRateIncreaseCriteria
import Network.AWS.IoT.Types.AwsJobTimeoutConfig
import Network.AWS.IoT.Types.Behavior
import Network.AWS.IoT.Types.BehaviorCriteria
import Network.AWS.IoT.Types.BehaviorCriteriaType
import Network.AWS.IoT.Types.BehaviorModelTrainingSummary
import Network.AWS.IoT.Types.BillingGroupMetadata
import Network.AWS.IoT.Types.BillingGroupProperties
import Network.AWS.IoT.Types.CACertificate
import Network.AWS.IoT.Types.CACertificateDescription
import Network.AWS.IoT.Types.CACertificateStatus
import Network.AWS.IoT.Types.CACertificateUpdateAction
import Network.AWS.IoT.Types.CannedAccessControlList
import Network.AWS.IoT.Types.Certificate
import Network.AWS.IoT.Types.CertificateDescription
import Network.AWS.IoT.Types.CertificateMode
import Network.AWS.IoT.Types.CertificateStatus
import Network.AWS.IoT.Types.CertificateValidity
import Network.AWS.IoT.Types.CloudwatchAlarmAction
import Network.AWS.IoT.Types.CloudwatchLogsAction
import Network.AWS.IoT.Types.CloudwatchMetricAction
import Network.AWS.IoT.Types.CodeSigning
import Network.AWS.IoT.Types.CodeSigningCertificateChain
import Network.AWS.IoT.Types.CodeSigningSignature
import Network.AWS.IoT.Types.ComparisonOperator
import Network.AWS.IoT.Types.ConfidenceLevel
import Network.AWS.IoT.Types.Configuration
import Network.AWS.IoT.Types.CustomCodeSigning
import Network.AWS.IoT.Types.CustomMetricType
import Network.AWS.IoT.Types.DayOfWeek
import Network.AWS.IoT.Types.Denied
import Network.AWS.IoT.Types.Destination
import Network.AWS.IoT.Types.DetectMitigationActionExecution
import Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
import Network.AWS.IoT.Types.DetectMitigationActionsTaskStatistics
import Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
import Network.AWS.IoT.Types.DetectMitigationActionsTaskSummary
import Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget
import Network.AWS.IoT.Types.DeviceCertificateUpdateAction
import Network.AWS.IoT.Types.DimensionType
import Network.AWS.IoT.Types.DimensionValueOperator
import Network.AWS.IoT.Types.DomainConfigurationStatus
import Network.AWS.IoT.Types.DomainConfigurationSummary
import Network.AWS.IoT.Types.DomainType
import Network.AWS.IoT.Types.DynamicGroupStatus
import Network.AWS.IoT.Types.DynamoDBAction
import Network.AWS.IoT.Types.DynamoDBv2Action
import Network.AWS.IoT.Types.DynamoKeyType
import Network.AWS.IoT.Types.EffectivePolicy
import Network.AWS.IoT.Types.ElasticsearchAction
import Network.AWS.IoT.Types.EnableIoTLoggingParams
import Network.AWS.IoT.Types.ErrorInfo
import Network.AWS.IoT.Types.EventType
import Network.AWS.IoT.Types.ExplicitDeny
import Network.AWS.IoT.Types.ExponentialRolloutRate
import Network.AWS.IoT.Types.Field
import Network.AWS.IoT.Types.FieldType
import Network.AWS.IoT.Types.FileLocation
import Network.AWS.IoT.Types.FirehoseAction
import Network.AWS.IoT.Types.GroupNameAndArn
import Network.AWS.IoT.Types.HttpAction
import Network.AWS.IoT.Types.HttpActionHeader
import Network.AWS.IoT.Types.HttpAuthorization
import Network.AWS.IoT.Types.HttpContext
import Network.AWS.IoT.Types.HttpUrlDestinationConfiguration
import Network.AWS.IoT.Types.HttpUrlDestinationProperties
import Network.AWS.IoT.Types.HttpUrlDestinationSummary
import Network.AWS.IoT.Types.ImplicitDeny
import Network.AWS.IoT.Types.IndexStatus
import Network.AWS.IoT.Types.IotAnalyticsAction
import Network.AWS.IoT.Types.IotEventsAction
import Network.AWS.IoT.Types.IotSiteWiseAction
import Network.AWS.IoT.Types.Job
import Network.AWS.IoT.Types.JobExecution
import Network.AWS.IoT.Types.JobExecutionFailureType
import Network.AWS.IoT.Types.JobExecutionStatus
import Network.AWS.IoT.Types.JobExecutionStatusDetails
import Network.AWS.IoT.Types.JobExecutionSummary
import Network.AWS.IoT.Types.JobExecutionSummaryForJob
import Network.AWS.IoT.Types.JobExecutionSummaryForThing
import Network.AWS.IoT.Types.JobExecutionsRolloutConfig
import Network.AWS.IoT.Types.JobProcessDetails
import Network.AWS.IoT.Types.JobStatus
import Network.AWS.IoT.Types.JobSummary
import Network.AWS.IoT.Types.KafkaAction
import Network.AWS.IoT.Types.KeyPair
import Network.AWS.IoT.Types.KinesisAction
import Network.AWS.IoT.Types.LambdaAction
import Network.AWS.IoT.Types.LogLevel
import Network.AWS.IoT.Types.LogTarget
import Network.AWS.IoT.Types.LogTargetConfiguration
import Network.AWS.IoT.Types.LogTargetType
import Network.AWS.IoT.Types.LoggingOptionsPayload
import Network.AWS.IoT.Types.MachineLearningDetectionConfig
import Network.AWS.IoT.Types.MessageFormat
import Network.AWS.IoT.Types.MetricDimension
import Network.AWS.IoT.Types.MetricToRetain
import Network.AWS.IoT.Types.MetricValue
import Network.AWS.IoT.Types.MitigationAction
import Network.AWS.IoT.Types.MitigationActionIdentifier
import Network.AWS.IoT.Types.MitigationActionParams
import Network.AWS.IoT.Types.MitigationActionType
import Network.AWS.IoT.Types.ModelStatus
import Network.AWS.IoT.Types.MqttContext
import Network.AWS.IoT.Types.NonCompliantResource
import Network.AWS.IoT.Types.OTAUpdateFile
import Network.AWS.IoT.Types.OTAUpdateInfo
import Network.AWS.IoT.Types.OTAUpdateStatus
import Network.AWS.IoT.Types.OTAUpdateSummary
import Network.AWS.IoT.Types.OutgoingCertificate
import Network.AWS.IoT.Types.PercentPair
import Network.AWS.IoT.Types.Policy
import Network.AWS.IoT.Types.PolicyTemplateName
import Network.AWS.IoT.Types.PolicyVersion
import Network.AWS.IoT.Types.PolicyVersionIdentifier
import Network.AWS.IoT.Types.PresignedUrlConfig
import Network.AWS.IoT.Types.Protocol
import Network.AWS.IoT.Types.ProvisioningHook
import Network.AWS.IoT.Types.ProvisioningTemplateSummary
import Network.AWS.IoT.Types.ProvisioningTemplateVersionSummary
import Network.AWS.IoT.Types.PublishFindingToSnsParams
import Network.AWS.IoT.Types.PutAssetPropertyValueEntry
import Network.AWS.IoT.Types.PutItemInput
import Network.AWS.IoT.Types.RateIncreaseCriteria
import Network.AWS.IoT.Types.RegistrationConfig
import Network.AWS.IoT.Types.RelatedResource
import Network.AWS.IoT.Types.ReplaceDefaultPolicyVersionParams
import Network.AWS.IoT.Types.ReportType
import Network.AWS.IoT.Types.RepublishAction
import Network.AWS.IoT.Types.ResourceIdentifier
import Network.AWS.IoT.Types.ResourceType
import Network.AWS.IoT.Types.RoleAliasDescription
import Network.AWS.IoT.Types.S3Action
import Network.AWS.IoT.Types.S3Destination
import Network.AWS.IoT.Types.S3Location
import Network.AWS.IoT.Types.SalesforceAction
import Network.AWS.IoT.Types.ScheduledAuditMetadata
import Network.AWS.IoT.Types.SecurityProfileIdentifier
import Network.AWS.IoT.Types.SecurityProfileTarget
import Network.AWS.IoT.Types.SecurityProfileTargetMapping
import Network.AWS.IoT.Types.ServerCertificateStatus
import Network.AWS.IoT.Types.ServerCertificateSummary
import Network.AWS.IoT.Types.ServiceType
import Network.AWS.IoT.Types.SigV4Authorization
import Network.AWS.IoT.Types.SigningProfileParameter
import Network.AWS.IoT.Types.SnsAction
import Network.AWS.IoT.Types.SqsAction
import Network.AWS.IoT.Types.StartSigningJobParameter
import Network.AWS.IoT.Types.StatisticalThreshold
import Network.AWS.IoT.Types.Statistics
import Network.AWS.IoT.Types.StepFunctionsAction
import Network.AWS.IoT.Types.Stream
import Network.AWS.IoT.Types.StreamFile
import Network.AWS.IoT.Types.StreamInfo
import Network.AWS.IoT.Types.StreamSummary
import Network.AWS.IoT.Types.Tag
import Network.AWS.IoT.Types.TargetSelection
import Network.AWS.IoT.Types.TaskStatistics
import Network.AWS.IoT.Types.TaskStatisticsForAuditCheck
import Network.AWS.IoT.Types.TaskStatus
import Network.AWS.IoT.Types.ThingAttribute
import Network.AWS.IoT.Types.ThingConnectivity
import Network.AWS.IoT.Types.ThingConnectivityIndexingMode
import Network.AWS.IoT.Types.ThingDocument
import Network.AWS.IoT.Types.ThingGroupDocument
import Network.AWS.IoT.Types.ThingGroupIndexingConfiguration
import Network.AWS.IoT.Types.ThingGroupIndexingMode
import Network.AWS.IoT.Types.ThingGroupMetadata
import Network.AWS.IoT.Types.ThingGroupProperties
import Network.AWS.IoT.Types.ThingIndexingConfiguration
import Network.AWS.IoT.Types.ThingIndexingMode
import Network.AWS.IoT.Types.ThingTypeDefinition
import Network.AWS.IoT.Types.ThingTypeMetadata
import Network.AWS.IoT.Types.ThingTypeProperties
import Network.AWS.IoT.Types.TimeoutConfig
import Network.AWS.IoT.Types.TimestreamAction
import Network.AWS.IoT.Types.TimestreamDimension
import Network.AWS.IoT.Types.TimestreamTimestamp
import Network.AWS.IoT.Types.TlsContext
import Network.AWS.IoT.Types.TopicRule
import Network.AWS.IoT.Types.TopicRuleDestination
import Network.AWS.IoT.Types.TopicRuleDestinationConfiguration
import Network.AWS.IoT.Types.TopicRuleDestinationStatus
import Network.AWS.IoT.Types.TopicRuleDestinationSummary
import Network.AWS.IoT.Types.TopicRuleListItem
import Network.AWS.IoT.Types.TopicRulePayload
import Network.AWS.IoT.Types.TransferData
import Network.AWS.IoT.Types.UpdateCACertificateParams
import Network.AWS.IoT.Types.UpdateDeviceCertificateParams
import Network.AWS.IoT.Types.ValidationError
import Network.AWS.IoT.Types.ViolationEvent
import Network.AWS.IoT.Types.ViolationEventAdditionalInfo
import Network.AWS.IoT.Types.ViolationEventOccurrenceRange
import Network.AWS.IoT.Types.ViolationEventType
import Network.AWS.IoT.Types.VpcDestinationConfiguration
import Network.AWS.IoT.Types.VpcDestinationProperties
import Network.AWS.IoT.Types.VpcDestinationSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-05-28@ of the Amazon IoT SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "IoT",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "iot",
      Prelude._svcVersion = "2015-05-28",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "IoT",
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

-- | The index is not ready.
_IndexNotReadyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IndexNotReadyException =
  Prelude._MatchServiceError
    defaultService
    "IndexNotReadyException"
    Prelude.. Prelude.hasStatus 400

-- | You can\'t revert the certificate transfer because the transfer is
-- already complete.
_TransferAlreadyCompletedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TransferAlreadyCompletedException =
  Prelude._MatchServiceError
    defaultService
    "TransferAlreadyCompletedException"
    Prelude.. Prelude.hasStatus 410

-- | The query is invalid.
_InvalidQueryException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidQueryException =
  Prelude._MatchServiceError
    defaultService
    "InvalidQueryException"
    Prelude.. Prelude.hasStatus 400

-- | Unable to verify the CA certificate used to sign the device certificate
-- you are attempting to register. This is happens when you have registered
-- more than one CA certificate that has the same subject field and public
-- key.
_CertificateConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CertificateConflictException =
  Prelude._MatchServiceError
    defaultService
    "CertificateConflictException"
    Prelude.. Prelude.hasStatus 409

-- | This exception occurs if you attempt to start a task with the same
-- task-id as an existing task but with a different clientRequestToken.
_TaskAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TaskAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "TaskAlreadyExistsException"
    Prelude.. Prelude.hasStatus 400

-- | The certificate is invalid.
_CertificateValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CertificateValidationException =
  Prelude._MatchServiceError
    defaultService
    "CertificateValidationException"
    Prelude.. Prelude.hasStatus 400

-- | You are not authorized to perform this operation.
_UnauthorizedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnauthorizedException =
  Prelude._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Prelude.hasStatus 401

-- | The resource already exists.
_ResourceAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"
    Prelude.. Prelude.hasStatus 409

-- | An unexpected error has occurred.
_InternalException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalException =
  Prelude._MatchServiceError
    defaultService
    "InternalException"
    Prelude.. Prelude.hasStatus 500

-- | The policy documentation is not valid.
_MalformedPolicyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MalformedPolicyException =
  Prelude._MatchServiceError
    defaultService
    "MalformedPolicyException"
    Prelude.. Prelude.hasStatus 400

-- | The service is temporarily unavailable.
_ServiceUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Prelude.hasStatus 503

-- | The certificate operation is not allowed.
_CertificateStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CertificateStateException =
  Prelude._MatchServiceError
    defaultService
    "CertificateStateException"
    Prelude.. Prelude.hasStatus 406

-- | The aggregation is invalid.
_InvalidAggregationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAggregationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAggregationException"
    Prelude.. Prelude.hasStatus 400

-- | The rate exceeds the limit.
_ThrottlingException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ThrottlingException =
  Prelude._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Prelude.hasStatus 400

-- | The request is not valid.
_InvalidRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Prelude.hasStatus 400

-- | The resource registration failed.
_ResourceRegistrationFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceRegistrationFailureException =
  Prelude._MatchServiceError
    defaultService
    "ResourceRegistrationFailureException"
    Prelude.. Prelude.hasStatus 400

-- | The Rule-SQL expression can\'t be parsed correctly.
_SqlParseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SqlParseException =
  Prelude._MatchServiceError
    defaultService
    "SqlParseException"
    Prelude.. Prelude.hasStatus 400

-- | A limit has been exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 410

-- | An attempt was made to change to an invalid state, for example by
-- deleting a job or a job execution which is \"IN_PROGRESS\" without
-- setting the @force@ parameter.
_InvalidStateTransitionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStateTransitionException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStateTransitionException"
    Prelude.. Prelude.hasStatus 409

-- | The resource is not configured.
_NotConfiguredException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotConfiguredException =
  Prelude._MatchServiceError
    defaultService
    "NotConfiguredException"
    Prelude.. Prelude.hasStatus 404

-- | The specified resource does not exist.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | An exception thrown when the version of an entity specified with the
-- @expectedVersion@ parameter does not match the latest version in the
-- system.
_VersionConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_VersionConflictException =
  Prelude._MatchServiceError
    defaultService
    "VersionConflictException"
    Prelude.. Prelude.hasStatus 409

-- | The registration code is invalid.
_RegistrationCodeValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RegistrationCodeValidationException =
  Prelude._MatchServiceError
    defaultService
    "RegistrationCodeValidationException"
    Prelude.. Prelude.hasStatus 400

-- | The number of policy versions exceeds the limit.
_VersionsLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_VersionsLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "VersionsLimitExceededException"
    Prelude.. Prelude.hasStatus 409

-- | An unexpected error has occurred.
_InternalFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalFailureException =
  Prelude._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Prelude.hasStatus 500

-- | You can\'t delete the resource because it is attached to one or more
-- resources.
_DeleteConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DeleteConflictException =
  Prelude._MatchServiceError
    defaultService
    "DeleteConflictException"
    Prelude.. Prelude.hasStatus 409

-- | The response is invalid.
_InvalidResponseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResponseException =
  Prelude._MatchServiceError
    defaultService
    "InvalidResponseException"
    Prelude.. Prelude.hasStatus 400

-- | You can\'t transfer the certificate because authorization policies are
-- still attached.
_TransferConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TransferConflictException =
  Prelude._MatchServiceError
    defaultService
    "TransferConflictException"
    Prelude.. Prelude.hasStatus 409

-- | A conflicting resource update exception. This exception is thrown when
-- two pending updates cause a conflict.
_ConflictingResourceUpdateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictingResourceUpdateException =
  Prelude._MatchServiceError
    defaultService
    "ConflictingResourceUpdateException"
    Prelude.. Prelude.hasStatus 409

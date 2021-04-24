{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types
  ( -- * Service Configuration
    config,

    -- * Errors
    _NoSuchRetentionConfigurationException,
    _NoSuchConfigRuleException,
    _NoAvailableOrganizationException,
    _NoSuchOrganizationConformancePackException,
    _NoSuchOrganizationConfigRuleException,
    _InvalidResultTokenException,
    _InvalidRecordingGroupException,
    _InvalidExpressionException,
    _TooManyTagsException,
    _InvalidS3KeyPrefixException,
    _MaxNumberOfDeliveryChannelsExceededException,
    _InvalidDeliveryChannelNameException,
    _InvalidConfigurationRecorderNameException,
    _NoRunningConfigurationRecorderException,
    _NoAvailableDeliveryChannelException,
    _LastDeliveryChannelDeleteFailedException,
    _ConformancePackTemplateValidationException,
    _OversizedConfigurationItemException,
    _MaxNumberOfConformancePacksExceededException,
    _InvalidRoleException,
    _InvalidNextTokenException,
    _NoSuchConfigurationAggregatorException,
    _NoSuchConformancePackException,
    _OrganizationAccessDeniedException,
    _InvalidParameterValueException,
    _NoSuchRemediationConfigurationException,
    _InvalidTimeRangeException,
    _NoSuchConfigRuleInConformancePackException,
    _ValidationException,
    _InvalidSNSTopicARNException,
    _NoSuchDeliveryChannelException,
    _ResourceInUseException,
    _LimitExceededException,
    _InvalidS3KMSKeyARNException,
    _NoSuchConfigurationRecorderException,
    _InsufficientDeliveryPolicyException,
    _MaxNumberOfOrganizationConfigRulesExceededException,
    _MaxNumberOfOrganizationConformancePacksExceededException,
    _ResourceNotFoundException,
    _InvalidLimitException,
    _OrganizationConformancePackTemplateValidationException,
    _MaxNumberOfConfigurationRecordersExceededException,
    _NoSuchRemediationExceptionException,
    _ResourceConcurrentModificationException,
    _MaxNumberOfConfigRulesExceededException,
    _NoAvailableConfigurationRecorderException,
    _NoSuchBucketException,
    _MaxActiveResourcesExceededException,
    _MaxNumberOfRetentionConfigurationsExceededException,
    _OrganizationAllFeaturesNotEnabledException,
    _InsufficientPermissionsException,
    _RemediationInProgressException,
    _ResourceNotDiscoveredException,

    -- * AggregatedSourceStatusType
    AggregatedSourceStatusType (..),

    -- * AggregatedSourceType
    AggregatedSourceType (..),

    -- * ChronologicalOrder
    ChronologicalOrder (..),

    -- * ComplianceType
    ComplianceType (..),

    -- * ConfigRuleComplianceSummaryGroupKey
    ConfigRuleComplianceSummaryGroupKey (..),

    -- * ConfigRuleState
    ConfigRuleState (..),

    -- * ConfigurationItemStatus
    ConfigurationItemStatus (..),

    -- * ConformancePackComplianceType
    ConformancePackComplianceType (..),

    -- * ConformancePackState
    ConformancePackState (..),

    -- * DeliveryStatus
    DeliveryStatus (..),

    -- * EventSource
    EventSource (..),

    -- * MaximumExecutionFrequency
    MaximumExecutionFrequency (..),

    -- * MemberAccountRuleStatus
    MemberAccountRuleStatus (..),

    -- * MessageType
    MessageType (..),

    -- * OrganizationConfigRuleTriggerType
    OrganizationConfigRuleTriggerType (..),

    -- * OrganizationResourceDetailedStatus
    OrganizationResourceDetailedStatus (..),

    -- * OrganizationResourceStatus
    OrganizationResourceStatus (..),

    -- * OrganizationRuleStatus
    OrganizationRuleStatus (..),

    -- * Owner
    Owner (..),

    -- * RecorderStatus
    RecorderStatus (..),

    -- * RemediationExecutionState
    RemediationExecutionState (..),

    -- * RemediationExecutionStepState
    RemediationExecutionStepState (..),

    -- * RemediationTargetType
    RemediationTargetType (..),

    -- * ResourceCountGroupKey
    ResourceCountGroupKey (..),

    -- * ResourceType
    ResourceType (..),

    -- * ResourceValueType
    ResourceValueType (..),

    -- * AccountAggregationSource
    AccountAggregationSource (..),
    accountAggregationSource,
    aasAllAWSRegions,
    aasAWSRegions,
    aasAccountIds,

    -- * AggregateComplianceByConfigRule
    AggregateComplianceByConfigRule (..),
    aggregateComplianceByConfigRule,
    acbcrAccountId,
    acbcrConfigRuleName,
    acbcrCompliance,
    acbcrAWSRegion,

    -- * AggregateComplianceCount
    AggregateComplianceCount (..),
    aggregateComplianceCount,
    accComplianceSummary,
    accGroupName,

    -- * AggregateEvaluationResult
    AggregateEvaluationResult (..),
    aggregateEvaluationResult,
    aerAnnotation,
    aerEvaluationResultIdentifier,
    aerAccountId,
    aerResultRecordedTime,
    aerComplianceType,
    aerConfigRuleInvokedTime,
    aerAWSRegion,

    -- * AggregateResourceIdentifier
    AggregateResourceIdentifier (..),
    aggregateResourceIdentifier,
    ariResourceName,
    ariSourceAccountId,
    ariSourceRegion,
    ariResourceId,
    ariResourceType,

    -- * AggregatedSourceStatus
    AggregatedSourceStatus (..),
    aggregatedSourceStatus,
    assLastUpdateStatus,
    assLastErrorMessage,
    assLastUpdateTime,
    assSourceId,
    assLastErrorCode,
    assAWSRegion,
    assSourceType,

    -- * AggregationAuthorization
    AggregationAuthorization (..),
    aggregationAuthorization,
    aaCreationTime,
    aaAuthorizedAccountId,
    aaAuthorizedAWSRegion,
    aaAggregationAuthorizationARN,

    -- * BaseConfigurationItem
    BaseConfigurationItem (..),
    baseConfigurationItem,
    bciResourceId,
    bciAccountId,
    bciConfiguration,
    bciArn,
    bciVersion,
    bciConfigurationStateId,
    bciResourceType,
    bciSupplementaryConfiguration,
    bciAvailabilityZone,
    bciConfigurationItemCaptureTime,
    bciConfigurationItemStatus,
    bciResourceCreationTime,
    bciAwsRegion,
    bciResourceName,

    -- * Compliance
    Compliance (..),
    compliance,
    cComplianceType,
    cComplianceContributorCount,

    -- * ComplianceByConfigRule
    ComplianceByConfigRule (..),
    complianceByConfigRule,
    cbcrConfigRuleName,
    cbcrCompliance,

    -- * ComplianceByResource
    ComplianceByResource (..),
    complianceByResource,
    cbrResourceId,
    cbrResourceType,
    cbrCompliance,

    -- * ComplianceContributorCount
    ComplianceContributorCount (..),
    complianceContributorCount,
    cccCapExceeded,
    cccCappedCount,

    -- * ComplianceSummary
    ComplianceSummary (..),
    complianceSummary,
    csComplianceSummaryTimestamp,
    csNonCompliantResourceCount,
    csCompliantResourceCount,

    -- * ComplianceSummaryByResourceType
    ComplianceSummaryByResourceType (..),
    complianceSummaryByResourceType,
    csbrtComplianceSummary,
    csbrtResourceType,

    -- * ConfigExportDeliveryInfo
    ConfigExportDeliveryInfo (..),
    configExportDeliveryInfo,
    cediLastErrorMessage,
    cediNextDeliveryTime,
    cediLastSuccessfulTime,
    cediLastErrorCode,
    cediLastStatus,
    cediLastAttemptTime,

    -- * ConfigRule
    ConfigRule (..),
    configRule,
    crConfigRuleId,
    crConfigRuleARN,
    crMaximumExecutionFrequency,
    crConfigRuleName,
    crConfigRuleState,
    crScope,
    crInputParameters,
    crDescription,
    crCreatedBy,
    crSource,

    -- * ConfigRuleComplianceFilters
    ConfigRuleComplianceFilters (..),
    configRuleComplianceFilters,
    crcfAccountId,
    crcfConfigRuleName,
    crcfComplianceType,
    crcfAWSRegion,

    -- * ConfigRuleComplianceSummaryFilters
    ConfigRuleComplianceSummaryFilters (..),
    configRuleComplianceSummaryFilters,
    crcsfAccountId,
    crcsfAWSRegion,

    -- * ConfigRuleEvaluationStatus
    ConfigRuleEvaluationStatus (..),
    configRuleEvaluationStatus,
    cresLastErrorMessage,
    cresConfigRuleId,
    cresConfigRuleARN,
    cresConfigRuleName,
    cresFirstEvaluationStarted,
    cresLastFailedEvaluationTime,
    cresFirstActivatedTime,
    cresLastErrorCode,
    cresLastFailedInvocationTime,
    cresLastSuccessfulInvocationTime,
    cresLastDeactivatedTime,
    cresLastSuccessfulEvaluationTime,

    -- * ConfigSnapshotDeliveryProperties
    ConfigSnapshotDeliveryProperties (..),
    configSnapshotDeliveryProperties,
    csdpDeliveryFrequency,

    -- * ConfigStreamDeliveryInfo
    ConfigStreamDeliveryInfo (..),
    configStreamDeliveryInfo,
    csdiLastErrorMessage,
    csdiLastErrorCode,
    csdiLastStatus,
    csdiLastStatusChangeTime,

    -- * ConfigurationAggregator
    ConfigurationAggregator (..),
    configurationAggregator,
    caCreationTime,
    caConfigurationAggregatorARN,
    caConfigurationAggregatorName,
    caAccountAggregationSources,
    caCreatedBy,
    caLastUpdatedTime,
    caOrganizationAggregationSource,

    -- * ConfigurationItem
    ConfigurationItem (..),
    configurationItem,
    ciRelationships,
    ciResourceId,
    ciAccountId,
    ciRelatedEvents,
    ciConfiguration,
    ciArn,
    ciVersion,
    ciConfigurationStateId,
    ciResourceType,
    ciSupplementaryConfiguration,
    ciAvailabilityZone,
    ciConfigurationItemCaptureTime,
    ciConfigurationItemStatus,
    ciTags,
    ciResourceCreationTime,
    ciConfigurationItemMD5Hash,
    ciAwsRegion,
    ciResourceName,

    -- * ConfigurationRecorder
    ConfigurationRecorder (..),
    configurationRecorder,
    crRoleARN,
    crName,
    crRecordingGroup,

    -- * ConfigurationRecorderStatus
    ConfigurationRecorderStatus (..),
    configurationRecorderStatus,
    crsLastStopTime,
    crsLastStartTime,
    crsLastErrorMessage,
    crsRecording,
    crsName,
    crsLastErrorCode,
    crsLastStatus,
    crsLastStatusChangeTime,

    -- * ConformancePackComplianceFilters
    ConformancePackComplianceFilters (..),
    conformancePackComplianceFilters,
    cpcfComplianceType,
    cpcfConfigRuleNames,

    -- * ConformancePackComplianceSummary
    ConformancePackComplianceSummary (..),
    conformancePackComplianceSummary,
    cpcsConformancePackName,
    cpcsConformancePackComplianceStatus,

    -- * ConformancePackDetail
    ConformancePackDetail (..),
    conformancePackDetail,
    cpdLastUpdateRequestedTime,
    cpdDeliveryS3Bucket,
    cpdDeliveryS3KeyPrefix,
    cpdCreatedBy,
    cpdConformancePackInputParameters,
    cpdConformancePackName,
    cpdConformancePackARN,
    cpdConformancePackId,

    -- * ConformancePackEvaluationFilters
    ConformancePackEvaluationFilters (..),
    conformancePackEvaluationFilters,
    cpefComplianceType,
    cpefResourceType,
    cpefResourceIds,
    cpefConfigRuleNames,

    -- * ConformancePackEvaluationResult
    ConformancePackEvaluationResult (..),
    conformancePackEvaluationResult,
    cperAnnotation,
    cperComplianceType,
    cperEvaluationResultIdentifier,
    cperConfigRuleInvokedTime,
    cperResultRecordedTime,

    -- * ConformancePackInputParameter
    ConformancePackInputParameter (..),
    conformancePackInputParameter,
    cpipParameterName,
    cpipParameterValue,

    -- * ConformancePackRuleCompliance
    ConformancePackRuleCompliance (..),
    conformancePackRuleCompliance,
    cprcConfigRuleName,
    cprcComplianceType,

    -- * ConformancePackStatusDetail
    ConformancePackStatusDetail (..),
    conformancePackStatusDetail,
    cpsdConformancePackStatusReason,
    cpsdLastUpdateCompletedTime,
    cpsdConformancePackName,
    cpsdConformancePackId,
    cpsdConformancePackARN,
    cpsdConformancePackState,
    cpsdStackARN,
    cpsdLastUpdateRequestedTime,

    -- * DeliveryChannel
    DeliveryChannel (..),
    deliveryChannel,
    dcS3KMSKeyARN,
    dcName,
    dcS3KeyPrefix,
    dcS3BucketName,
    dcConfigSnapshotDeliveryProperties,
    dcSnsTopicARN,

    -- * DeliveryChannelStatus
    DeliveryChannelStatus (..),
    deliveryChannelStatus,
    dcsConfigSnapshotDeliveryInfo,
    dcsConfigStreamDeliveryInfo,
    dcsName,
    dcsConfigHistoryDeliveryInfo,

    -- * Evaluation
    Evaluation (..),
    evaluation,
    eAnnotation,
    eComplianceResourceType,
    eComplianceResourceId,
    eComplianceType,
    eOrderingTimestamp,

    -- * EvaluationResult
    EvaluationResult (..),
    evaluationResult,
    erAnnotation,
    erEvaluationResultIdentifier,
    erResultRecordedTime,
    erComplianceType,
    erConfigRuleInvokedTime,
    erResultToken,

    -- * EvaluationResultIdentifier
    EvaluationResultIdentifier (..),
    evaluationResultIdentifier,
    eriEvaluationResultQualifier,
    eriOrderingTimestamp,

    -- * EvaluationResultQualifier
    EvaluationResultQualifier (..),
    evaluationResultQualifier,
    erqResourceId,
    erqConfigRuleName,
    erqResourceType,

    -- * ExecutionControls
    ExecutionControls (..),
    executionControls,
    ecSsmControls,

    -- * ExternalEvaluation
    ExternalEvaluation (..),
    externalEvaluation,
    eeAnnotation,
    eeComplianceResourceType,
    eeComplianceResourceId,
    eeComplianceType,
    eeOrderingTimestamp,

    -- * FailedDeleteRemediationExceptionsBatch
    FailedDeleteRemediationExceptionsBatch (..),
    failedDeleteRemediationExceptionsBatch,
    fdrebFailureMessage,
    fdrebFailedItems,

    -- * FailedRemediationBatch
    FailedRemediationBatch (..),
    failedRemediationBatch,
    frbFailureMessage,
    frbFailedItems,

    -- * FailedRemediationExceptionBatch
    FailedRemediationExceptionBatch (..),
    failedRemediationExceptionBatch,
    frebFailureMessage,
    frebFailedItems,

    -- * FieldInfo
    FieldInfo (..),
    fieldInfo,
    fiName,

    -- * GroupedResourceCount
    GroupedResourceCount (..),
    groupedResourceCount,
    grcGroupName,
    grcResourceCount,

    -- * MemberAccountStatus
    MemberAccountStatus (..),
    memberAccountStatus,
    masLastUpdateTime,
    masErrorMessage,
    masErrorCode,
    masAccountId,
    masConfigRuleName,
    masMemberAccountRuleStatus,

    -- * OrganizationAggregationSource
    OrganizationAggregationSource (..),
    organizationAggregationSource,
    oasAllAWSRegions,
    oasAWSRegions,
    oasRoleARN,

    -- * OrganizationConfigRule
    OrganizationConfigRule (..),
    organizationConfigRule,
    ocrLastUpdateTime,
    ocrOrganizationManagedRuleMetadata,
    ocrOrganizationCustomRuleMetadata,
    ocrExcludedAccounts,
    ocrOrganizationConfigRuleName,
    ocrOrganizationConfigRuleARN,

    -- * OrganizationConfigRuleStatus
    OrganizationConfigRuleStatus (..),
    organizationConfigRuleStatus,
    ocrsLastUpdateTime,
    ocrsErrorMessage,
    ocrsErrorCode,
    ocrsOrganizationConfigRuleName,
    ocrsOrganizationRuleStatus,

    -- * OrganizationConformancePack
    OrganizationConformancePack (..),
    organizationConformancePack,
    ocpDeliveryS3Bucket,
    ocpDeliveryS3KeyPrefix,
    ocpExcludedAccounts,
    ocpConformancePackInputParameters,
    ocpOrganizationConformancePackName,
    ocpOrganizationConformancePackARN,
    ocpLastUpdateTime,

    -- * OrganizationConformancePackDetailedStatus
    OrganizationConformancePackDetailedStatus (..),
    organizationConformancePackDetailedStatus,
    ocpdsLastUpdateTime,
    ocpdsErrorMessage,
    ocpdsErrorCode,
    ocpdsAccountId,
    ocpdsConformancePackName,
    ocpdsStatus,

    -- * OrganizationConformancePackStatus
    OrganizationConformancePackStatus (..),
    organizationConformancePackStatus,
    ocpsLastUpdateTime,
    ocpsErrorMessage,
    ocpsErrorCode,
    ocpsOrganizationConformancePackName,
    ocpsStatus,

    -- * OrganizationCustomRuleMetadata
    OrganizationCustomRuleMetadata (..),
    organizationCustomRuleMetadata,
    ocrmTagKeyScope,
    ocrmMaximumExecutionFrequency,
    ocrmResourceIdScope,
    ocrmInputParameters,
    ocrmDescription,
    ocrmResourceTypesScope,
    ocrmTagValueScope,
    ocrmLambdaFunctionARN,
    ocrmOrganizationConfigRuleTriggerTypes,

    -- * OrganizationManagedRuleMetadata
    OrganizationManagedRuleMetadata (..),
    organizationManagedRuleMetadata,
    omrmTagKeyScope,
    omrmMaximumExecutionFrequency,
    omrmResourceIdScope,
    omrmInputParameters,
    omrmDescription,
    omrmResourceTypesScope,
    omrmTagValueScope,
    omrmRuleIdentifier,

    -- * OrganizationResourceDetailedStatusFilters
    OrganizationResourceDetailedStatusFilters (..),
    organizationResourceDetailedStatusFilters,
    ordsfStatus,
    ordsfAccountId,

    -- * PendingAggregationRequest
    PendingAggregationRequest (..),
    pendingAggregationRequest,
    parRequesterAWSRegion,
    parRequesterAccountId,

    -- * QueryInfo
    QueryInfo (..),
    queryInfo,
    qiSelectFields,

    -- * RecordingGroup
    RecordingGroup (..),
    recordingGroup,
    rgAllSupported,
    rgResourceTypes,
    rgIncludeGlobalResourceTypes,

    -- * Relationship
    Relationship (..),
    relationship,
    rResourceId,
    rResourceType,
    rRelationshipName,
    rResourceName,

    -- * RemediationConfiguration
    RemediationConfiguration (..),
    remediationConfiguration,
    rcRetryAttemptSeconds,
    rcExecutionControls,
    rcTargetVersion,
    rcARN,
    rcAutomatic,
    rcResourceType,
    rcCreatedByService,
    rcMaximumAutomaticAttempts,
    rcParameters,
    rcConfigRuleName,
    rcTargetType,
    rcTargetId,

    -- * RemediationException
    RemediationException (..),
    remediationException,
    reExpirationTime,
    reMessage,
    reConfigRuleName,
    reResourceType,
    reResourceId,

    -- * RemediationExceptionResourceKey
    RemediationExceptionResourceKey (..),
    remediationExceptionResourceKey,
    rerkResourceId,
    rerkResourceType,

    -- * RemediationExecutionStatus
    RemediationExecutionStatus (..),
    remediationExecutionStatus,
    resInvocationTime,
    resResourceKey,
    resState,
    resStepDetails,
    resLastUpdatedTime,

    -- * RemediationExecutionStep
    RemediationExecutionStep (..),
    remediationExecutionStep,
    rStartTime,
    rStopTime,
    rState,
    rName,
    rErrorMessage,

    -- * RemediationParameterValue
    RemediationParameterValue (..),
    remediationParameterValue,
    rpvResourceValue,
    rpvStaticValue,

    -- * ResourceCount
    ResourceCount (..),
    resourceCount,
    resResourceType,
    resCount,

    -- * ResourceCountFilters
    ResourceCountFilters (..),
    resourceCountFilters,
    rcfAccountId,
    rcfResourceType,
    rcfRegion,

    -- * ResourceFilters
    ResourceFilters (..),
    resourceFilters,
    rfResourceId,
    rfAccountId,
    rfRegion,
    rfResourceName,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    resourceIdentifier,
    riResourceId,
    riResourceType,
    riResourceDeletionTime,
    riResourceName,

    -- * ResourceKey
    ResourceKey (..),
    resourceKey,
    rkResourceType,
    rkResourceId,

    -- * ResourceValue
    ResourceValue (..),
    resourceValue,
    rvValue,

    -- * RetentionConfiguration
    RetentionConfiguration (..),
    retentionConfiguration,
    rcName,
    rcRetentionPeriodInDays,

    -- * Scope
    Scope (..),
    scope,
    sTagValue,
    sTagKey,
    sComplianceResourceId,
    sComplianceResourceTypes,

    -- * Source
    Source (..),
    source,
    sSourceDetails,
    sOwner,
    sSourceIdentifier,

    -- * SourceDetail
    SourceDetail (..),
    sourceDetail,
    sdEventSource,
    sdMaximumExecutionFrequency,
    sdMessageType,

    -- * SsmControls
    SsmControls (..),
    ssmControls,
    scErrorPercentage,
    scConcurrentExecutionRatePercentage,

    -- * StaticValue
    StaticValue (..),
    staticValue,
    svValues,

    -- * StatusDetailFilters
    StatusDetailFilters (..),
    statusDetailFilters,
    sdfAccountId,
    sdfMemberAccountRuleStatus,

    -- * StoredQuery
    StoredQuery (..),
    storedQuery,
    sqQueryARN,
    sqQueryId,
    sqDescription,
    sqExpression,
    sqQueryName,

    -- * StoredQueryMetadata
    StoredQueryMetadata (..),
    storedQueryMetadata,
    sqmDescription,
    sqmQueryId,
    sqmQueryARN,
    sqmQueryName,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Config.Types.AccountAggregationSource
import Network.AWS.Config.Types.AggregateComplianceByConfigRule
import Network.AWS.Config.Types.AggregateComplianceCount
import Network.AWS.Config.Types.AggregateEvaluationResult
import Network.AWS.Config.Types.AggregateResourceIdentifier
import Network.AWS.Config.Types.AggregatedSourceStatus
import Network.AWS.Config.Types.AggregatedSourceStatusType
import Network.AWS.Config.Types.AggregatedSourceType
import Network.AWS.Config.Types.AggregationAuthorization
import Network.AWS.Config.Types.BaseConfigurationItem
import Network.AWS.Config.Types.ChronologicalOrder
import Network.AWS.Config.Types.Compliance
import Network.AWS.Config.Types.ComplianceByConfigRule
import Network.AWS.Config.Types.ComplianceByResource
import Network.AWS.Config.Types.ComplianceContributorCount
import Network.AWS.Config.Types.ComplianceSummary
import Network.AWS.Config.Types.ComplianceSummaryByResourceType
import Network.AWS.Config.Types.ComplianceType
import Network.AWS.Config.Types.ConfigExportDeliveryInfo
import Network.AWS.Config.Types.ConfigRule
import Network.AWS.Config.Types.ConfigRuleComplianceFilters
import Network.AWS.Config.Types.ConfigRuleComplianceSummaryFilters
import Network.AWS.Config.Types.ConfigRuleComplianceSummaryGroupKey
import Network.AWS.Config.Types.ConfigRuleEvaluationStatus
import Network.AWS.Config.Types.ConfigRuleState
import Network.AWS.Config.Types.ConfigSnapshotDeliveryProperties
import Network.AWS.Config.Types.ConfigStreamDeliveryInfo
import Network.AWS.Config.Types.ConfigurationAggregator
import Network.AWS.Config.Types.ConfigurationItem
import Network.AWS.Config.Types.ConfigurationItemStatus
import Network.AWS.Config.Types.ConfigurationRecorder
import Network.AWS.Config.Types.ConfigurationRecorderStatus
import Network.AWS.Config.Types.ConformancePackComplianceFilters
import Network.AWS.Config.Types.ConformancePackComplianceSummary
import Network.AWS.Config.Types.ConformancePackComplianceType
import Network.AWS.Config.Types.ConformancePackDetail
import Network.AWS.Config.Types.ConformancePackEvaluationFilters
import Network.AWS.Config.Types.ConformancePackEvaluationResult
import Network.AWS.Config.Types.ConformancePackInputParameter
import Network.AWS.Config.Types.ConformancePackRuleCompliance
import Network.AWS.Config.Types.ConformancePackState
import Network.AWS.Config.Types.ConformancePackStatusDetail
import Network.AWS.Config.Types.DeliveryChannel
import Network.AWS.Config.Types.DeliveryChannelStatus
import Network.AWS.Config.Types.DeliveryStatus
import Network.AWS.Config.Types.Evaluation
import Network.AWS.Config.Types.EvaluationResult
import Network.AWS.Config.Types.EvaluationResultIdentifier
import Network.AWS.Config.Types.EvaluationResultQualifier
import Network.AWS.Config.Types.EventSource
import Network.AWS.Config.Types.ExecutionControls
import Network.AWS.Config.Types.ExternalEvaluation
import Network.AWS.Config.Types.FailedDeleteRemediationExceptionsBatch
import Network.AWS.Config.Types.FailedRemediationBatch
import Network.AWS.Config.Types.FailedRemediationExceptionBatch
import Network.AWS.Config.Types.FieldInfo
import Network.AWS.Config.Types.GroupedResourceCount
import Network.AWS.Config.Types.MaximumExecutionFrequency
import Network.AWS.Config.Types.MemberAccountRuleStatus
import Network.AWS.Config.Types.MemberAccountStatus
import Network.AWS.Config.Types.MessageType
import Network.AWS.Config.Types.OrganizationAggregationSource
import Network.AWS.Config.Types.OrganizationConfigRule
import Network.AWS.Config.Types.OrganizationConfigRuleStatus
import Network.AWS.Config.Types.OrganizationConfigRuleTriggerType
import Network.AWS.Config.Types.OrganizationConformancePack
import Network.AWS.Config.Types.OrganizationConformancePackDetailedStatus
import Network.AWS.Config.Types.OrganizationConformancePackStatus
import Network.AWS.Config.Types.OrganizationCustomRuleMetadata
import Network.AWS.Config.Types.OrganizationManagedRuleMetadata
import Network.AWS.Config.Types.OrganizationResourceDetailedStatus
import Network.AWS.Config.Types.OrganizationResourceDetailedStatusFilters
import Network.AWS.Config.Types.OrganizationResourceStatus
import Network.AWS.Config.Types.OrganizationRuleStatus
import Network.AWS.Config.Types.Owner
import Network.AWS.Config.Types.PendingAggregationRequest
import Network.AWS.Config.Types.QueryInfo
import Network.AWS.Config.Types.RecorderStatus
import Network.AWS.Config.Types.RecordingGroup
import Network.AWS.Config.Types.Relationship
import Network.AWS.Config.Types.RemediationConfiguration
import Network.AWS.Config.Types.RemediationException
import Network.AWS.Config.Types.RemediationExceptionResourceKey
import Network.AWS.Config.Types.RemediationExecutionState
import Network.AWS.Config.Types.RemediationExecutionStatus
import Network.AWS.Config.Types.RemediationExecutionStep
import Network.AWS.Config.Types.RemediationExecutionStepState
import Network.AWS.Config.Types.RemediationParameterValue
import Network.AWS.Config.Types.RemediationTargetType
import Network.AWS.Config.Types.ResourceCount
import Network.AWS.Config.Types.ResourceCountFilters
import Network.AWS.Config.Types.ResourceCountGroupKey
import Network.AWS.Config.Types.ResourceFilters
import Network.AWS.Config.Types.ResourceIdentifier
import Network.AWS.Config.Types.ResourceKey
import Network.AWS.Config.Types.ResourceType
import Network.AWS.Config.Types.ResourceValue
import Network.AWS.Config.Types.ResourceValueType
import Network.AWS.Config.Types.RetentionConfiguration
import Network.AWS.Config.Types.Scope
import Network.AWS.Config.Types.Source
import Network.AWS.Config.Types.SourceDetail
import Network.AWS.Config.Types.SsmControls
import Network.AWS.Config.Types.StaticValue
import Network.AWS.Config.Types.StatusDetailFilters
import Network.AWS.Config.Types.StoredQuery
import Network.AWS.Config.Types.StoredQueryMetadata
import Network.AWS.Config.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-11-12@ of the Amazon Config SDK configuration.
config :: Service
config =
  Service
    { _svcAbbrev = "Config",
      _svcSigner = v4,
      _svcPrefix = "config",
      _svcVersion = "2014-11-12",
      _svcEndpoint = defaultEndpoint config,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Config",
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

-- | You have specified a retention configuration that does not exist.
_NoSuchRetentionConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchRetentionConfigurationException =
  _MatchServiceError
    config
    "NoSuchRetentionConfigurationException"

-- | One or more AWS Config rules in the request are invalid. Verify that the rule names are correct and try again.
_NoSuchConfigRuleException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchConfigRuleException =
  _MatchServiceError
    config
    "NoSuchConfigRuleException"

-- | Organization is no longer available.
_NoAvailableOrganizationException :: AsError a => Getting (First ServiceError) a ServiceError
_NoAvailableOrganizationException =
  _MatchServiceError
    config
    "NoAvailableOrganizationException"

-- | AWS Config organization conformance pack that you passed in the filter does not exist.
--
--
-- For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.
_NoSuchOrganizationConformancePackException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchOrganizationConformancePackException =
  _MatchServiceError
    config
    "NoSuchOrganizationConformancePackException"

-- | You specified one or more organization config rules that do not exist.
_NoSuchOrganizationConfigRuleException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchOrganizationConfigRuleException =
  _MatchServiceError
    config
    "NoSuchOrganizationConfigRuleException"

-- | The specified @ResultToken@ is invalid.
_InvalidResultTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResultTokenException =
  _MatchServiceError
    config
    "InvalidResultTokenException"

-- | AWS Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values might also be incorrectly formatted.
_InvalidRecordingGroupException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRecordingGroupException =
  _MatchServiceError
    config
    "InvalidRecordingGroupException"

-- | The syntax of the query is incorrect.
_InvalidExpressionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidExpressionException =
  _MatchServiceError
    config
    "InvalidExpressionException"

-- | You have reached the limit of the number of tags you can use. You have more than 50 tags.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError config "TooManyTagsException"

-- | The specified Amazon S3 key prefix is not valid.
_InvalidS3KeyPrefixException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidS3KeyPrefixException =
  _MatchServiceError
    config
    "InvalidS3KeyPrefixException"

-- | You have reached the limit of the number of delivery channels you can create.
_MaxNumberOfDeliveryChannelsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfDeliveryChannelsExceededException =
  _MatchServiceError
    config
    "MaxNumberOfDeliveryChannelsExceededException"

-- | The specified delivery channel name is not valid.
_InvalidDeliveryChannelNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeliveryChannelNameException =
  _MatchServiceError
    config
    "InvalidDeliveryChannelNameException"

-- | You have provided a configuration recorder name that is not valid.
_InvalidConfigurationRecorderNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidConfigurationRecorderNameException =
  _MatchServiceError
    config
    "InvalidConfigurationRecorderNameException"

-- | There is no configuration recorder running.
_NoRunningConfigurationRecorderException :: AsError a => Getting (First ServiceError) a ServiceError
_NoRunningConfigurationRecorderException =
  _MatchServiceError
    config
    "NoRunningConfigurationRecorderException"

-- | There is no delivery channel available to record configurations.
_NoAvailableDeliveryChannelException :: AsError a => Getting (First ServiceError) a ServiceError
_NoAvailableDeliveryChannelException =
  _MatchServiceError
    config
    "NoAvailableDeliveryChannelException"

-- | You cannot delete the delivery channel you specified because the configuration recorder is running.
_LastDeliveryChannelDeleteFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_LastDeliveryChannelDeleteFailedException =
  _MatchServiceError
    config
    "LastDeliveryChannelDeleteFailedException"

-- | You have specified a template that is not valid or supported.
_ConformancePackTemplateValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ConformancePackTemplateValidationException =
  _MatchServiceError
    config
    "ConformancePackTemplateValidationException"

-- | The configuration item size is outside the allowable range.
_OversizedConfigurationItemException :: AsError a => Getting (First ServiceError) a ServiceError
_OversizedConfigurationItemException =
  _MatchServiceError
    config
    "OversizedConfigurationItemException"

-- | You have reached the limit (6) of the number of conformance packs in an account (6 conformance pack with 25 AWS Config rules per pack).
_MaxNumberOfConformancePacksExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfConformancePacksExceededException =
  _MatchServiceError
    config
    "MaxNumberOfConformancePacksExceededException"

-- | You have provided a null or empty role ARN.
_InvalidRoleException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRoleException =
  _MatchServiceError config "InvalidRoleException"

-- | The specified next token is invalid. Specify the @nextToken@ string that was returned in the previous response to get the next page of results.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    config
    "InvalidNextTokenException"

-- | You have specified a configuration aggregator that does not exist.
_NoSuchConfigurationAggregatorException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchConfigurationAggregatorException =
  _MatchServiceError
    config
    "NoSuchConfigurationAggregatorException"

-- | You specified one or more conformance packs that do not exist.
_NoSuchConformancePackException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchConformancePackException =
  _MatchServiceError
    config
    "NoSuchConformancePackException"

-- | For @PutConfigurationAggregator@ API, you can see this exception for the following reasons:
--
--
--     * No permission to call @EnableAWSServiceAccess@ API
--
--     * The configuration aggregator cannot be updated because your AWS Organization management account or the delegated administrator role changed. Delete this aggregator and create a new one with the current AWS Organization.
--
--     * The configuration aggregator is associated with a previous AWS Organization and AWS Config cannot aggregate data with current AWS Organization. Delete this aggregator and create a new one with the current AWS Organization.
--
--     * You are not a registered delegated administrator for AWS Config with permissions to call @ListDelegatedAdministrators@ API. Ensure that the management account registers delagated administrator for AWS Config service principle name before the delegated administrator creates an aggregator.
--
--
--
-- For all @OrganizationConfigRule@ and @OrganizationConformancePack@ APIs, AWS Config throws an exception if APIs are called from member accounts. All APIs must be called from organization master account.
_OrganizationAccessDeniedException :: AsError a => Getting (First ServiceError) a ServiceError
_OrganizationAccessDeniedException =
  _MatchServiceError
    config
    "OrganizationAccessDeniedException"

-- | One or more of the specified parameters are invalid. Verify that your parameters are valid and try again.
_InvalidParameterValueException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameterValueException =
  _MatchServiceError
    config
    "InvalidParameterValueException"

-- | You specified an AWS Config rule without a remediation configuration.
_NoSuchRemediationConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchRemediationConfigurationException =
  _MatchServiceError
    config
    "NoSuchRemediationConfigurationException"

-- | The specified time range is not valid. The earlier time is not chronologically before the later time.
_InvalidTimeRangeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTimeRangeException =
  _MatchServiceError
    config
    "InvalidTimeRangeException"

-- | AWS Config rule that you passed in the filter does not exist.
_NoSuchConfigRuleInConformancePackException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchConfigRuleInConformancePackException =
  _MatchServiceError
    config
    "NoSuchConfigRuleInConformancePackException"

-- | The requested action is not valid.
--
--
-- For PutStoredQuery, you will see this exception if there are missing required fields or if the input value fails the validation, or if you are trying to create more than 300 queries.
--
-- For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see this exception if there are missing required fields or if the input value fails the validation.
_ValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_ValidationException =
  _MatchServiceError config "ValidationException"

-- | The specified Amazon SNS topic does not exist.
_InvalidSNSTopicARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSNSTopicARNException =
  _MatchServiceError
    config
    "InvalidSNSTopicARNException"

-- | You have specified a delivery channel that does not exist.
_NoSuchDeliveryChannelException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchDeliveryChannelException =
  _MatchServiceError
    config
    "NoSuchDeliveryChannelException"

-- | You see this exception in the following cases:
--
--
--     * For DeleteConfigRule, AWS Config is deleting this rule. Try your request again later.
--
--     * For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.
--
--     * For DeleteConfigRule, a remediation action is associated with the rule and AWS Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.
--
--     * For PutConfigOrganizationRule, organization config rule deletion is in progress. Try your request again later.
--
--     * For DeleteOrganizationConfigRule, organization config rule creation is in progress. Try your request again later.
--
--     * For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
--
--     * For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError config "ResourceInUseException"

-- | For @StartConfigRulesEvaluation@ API, this exception is thrown if an evaluation is in progress or if you call the 'StartConfigRulesEvaluation' API more than once per minute.
--
--
-- For @PutConfigurationAggregator@ API, this exception is thrown if the number of accounts and aggregators exceeds the limit.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError config "LimitExceededException"

-- | The specified Amazon KMS Key ARN is not valid.
_InvalidS3KMSKeyARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidS3KMSKeyARNException =
  _MatchServiceError
    config
    "InvalidS3KmsKeyArnException"

-- | You have specified a configuration recorder that does not exist.
_NoSuchConfigurationRecorderException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchConfigurationRecorderException =
  _MatchServiceError
    config
    "NoSuchConfigurationRecorderException"

-- | Your Amazon S3 bucket policy does not permit AWS Config to write to it.
_InsufficientDeliveryPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientDeliveryPolicyException =
  _MatchServiceError
    config
    "InsufficientDeliveryPolicyException"

-- | You have reached the limit of the number of organization config rules you can create.
_MaxNumberOfOrganizationConfigRulesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfOrganizationConfigRulesExceededException =
  _MatchServiceError
    config
    "MaxNumberOfOrganizationConfigRulesExceededException"

-- | You have reached the limit (6) of the number of organization conformance packs in an account (6 conformance pack with 25 AWS Config rules per pack per account).
_MaxNumberOfOrganizationConformancePacksExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfOrganizationConformancePacksExceededException =
  _MatchServiceError
    config
    "MaxNumberOfOrganizationConformancePacksExceededException"

-- | You have specified a resource that does not exist.
_ResourceNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundException =
  _MatchServiceError
    config
    "ResourceNotFoundException"

-- | The specified limit is outside the allowable range.
_InvalidLimitException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidLimitException =
  _MatchServiceError config "InvalidLimitException"

-- | You have specified a template that is not valid or supported.
_OrganizationConformancePackTemplateValidationException :: AsError a => Getting (First ServiceError) a ServiceError
_OrganizationConformancePackTemplateValidationException =
  _MatchServiceError
    config
    "OrganizationConformancePackTemplateValidationException"

-- | You have reached the limit of the number of recorders you can create.
_MaxNumberOfConfigurationRecordersExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfConfigurationRecordersExceededException =
  _MatchServiceError
    config
    "MaxNumberOfConfigurationRecordersExceededException"

-- | You tried to delete a remediation exception that does not exist.
_NoSuchRemediationExceptionException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchRemediationExceptionException =
  _MatchServiceError
    config
    "NoSuchRemediationExceptionException"

-- | Two users are trying to modify the same query at the same time. Wait for a moment and try again.
_ResourceConcurrentModificationException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceConcurrentModificationException =
  _MatchServiceError
    config
    "ResourceConcurrentModificationException"

-- | Failed to add the AWS Config rule because the account already contains the maximum number of 150 rules. Consider deleting any deactivated rules before you add new rules.
_MaxNumberOfConfigRulesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfConfigRulesExceededException =
  _MatchServiceError
    config
    "MaxNumberOfConfigRulesExceededException"

-- | There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.
_NoAvailableConfigurationRecorderException :: AsError a => Getting (First ServiceError) a ServiceError
_NoAvailableConfigurationRecorderException =
  _MatchServiceError
    config
    "NoAvailableConfigurationRecorderException"

-- | The specified Amazon S3 bucket does not exist.
_NoSuchBucketException :: AsError a => Getting (First ServiceError) a ServiceError
_NoSuchBucketException =
  _MatchServiceError config "NoSuchBucketException"

-- | You have reached the limit (100,000) of active custom resource types in your account. Delete unused resources using @DeleteResourceConfig@ .
_MaxActiveResourcesExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxActiveResourcesExceededException =
  _MatchServiceError
    config
    "MaxActiveResourcesExceededException"

-- | Failed to add the retention configuration because a retention configuration with that name already exists.
_MaxNumberOfRetentionConfigurationsExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_MaxNumberOfRetentionConfigurationsExceededException =
  _MatchServiceError
    config
    "MaxNumberOfRetentionConfigurationsExceededException"

-- | AWS Config resource cannot be created because your organization does not have all features enabled.
_OrganizationAllFeaturesNotEnabledException :: AsError a => Getting (First ServiceError) a ServiceError
_OrganizationAllFeaturesNotEnabledException =
  _MatchServiceError
    config
    "OrganizationAllFeaturesNotEnabledException"

-- | Indicates one of the following errors:
--
--
--     * For PutConfigRule, the rule cannot be created because the IAM role assigned to AWS Config lacks permissions to perform the config:Put* action.
--
--     * For PutConfigRule, the AWS Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.
--
--     * For PutOrganizationConfigRule, organization config rule cannot be created because you do not have permissions to call IAM @GetRole@ action or create a service linked role.
--
--     * For PutConformancePack and PutOrganizationConformancePack, a conformance pack cannot be created because you do not have permissions:
--
--     * To call IAM @GetRole@ action or create a service linked role.
--
--     * To read Amazon S3 bucket.
_InsufficientPermissionsException :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientPermissionsException =
  _MatchServiceError
    config
    "InsufficientPermissionsException"

-- | Remediation action is in progress. You can either cancel execution in AWS Systems Manager or wait and try again later.
_RemediationInProgressException :: AsError a => Getting (First ServiceError) a ServiceError
_RemediationInProgressException =
  _MatchServiceError
    config
    "RemediationInProgressException"

-- | You have specified a resource that is either unknown or has not been discovered.
_ResourceNotDiscoveredException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotDiscoveredException =
  _MatchServiceError
    config
    "ResourceNotDiscoveredException"

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Config__
--
-- AWS Config provides a way to keep track of the configurations of all the AWS resources associated with your AWS account. You can use AWS Config to get the current and historical configurations of each AWS resource and also to get information about the relationship between the resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by AWS Config, see <https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources Supported AWS Resources> .
--
-- You can access and manage AWS Config through the AWS Management Console, the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS Config. This reference guide contains documentation for the AWS Config API and the AWS CLI commands that you can use to manage AWS Config. The AWS Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process> . For detailed information about AWS Config features and their associated actions or commands, as well as how to work with AWS Management Console, see <https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html What Is AWS Config> in the /AWS Config Developer Guide/ .
module Network.AWS.Config
  ( -- * Service Configuration
    config,

    -- * Errors
    -- $errors

    -- ** NoSuchRetentionConfigurationException
    _NoSuchRetentionConfigurationException,

    -- ** NoSuchConfigRuleException
    _NoSuchConfigRuleException,

    -- ** NoAvailableOrganizationException
    _NoAvailableOrganizationException,

    -- ** NoSuchOrganizationConformancePackException
    _NoSuchOrganizationConformancePackException,

    -- ** NoSuchOrganizationConfigRuleException
    _NoSuchOrganizationConfigRuleException,

    -- ** InvalidResultTokenException
    _InvalidResultTokenException,

    -- ** InvalidRecordingGroupException
    _InvalidRecordingGroupException,

    -- ** InvalidExpressionException
    _InvalidExpressionException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** InvalidS3KeyPrefixException
    _InvalidS3KeyPrefixException,

    -- ** MaxNumberOfDeliveryChannelsExceededException
    _MaxNumberOfDeliveryChannelsExceededException,

    -- ** InvalidDeliveryChannelNameException
    _InvalidDeliveryChannelNameException,

    -- ** InvalidConfigurationRecorderNameException
    _InvalidConfigurationRecorderNameException,

    -- ** NoRunningConfigurationRecorderException
    _NoRunningConfigurationRecorderException,

    -- ** NoAvailableDeliveryChannelException
    _NoAvailableDeliveryChannelException,

    -- ** LastDeliveryChannelDeleteFailedException
    _LastDeliveryChannelDeleteFailedException,

    -- ** ConformancePackTemplateValidationException
    _ConformancePackTemplateValidationException,

    -- ** OversizedConfigurationItemException
    _OversizedConfigurationItemException,

    -- ** MaxNumberOfConformancePacksExceededException
    _MaxNumberOfConformancePacksExceededException,

    -- ** InvalidRoleException
    _InvalidRoleException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** NoSuchConfigurationAggregatorException
    _NoSuchConfigurationAggregatorException,

    -- ** NoSuchConformancePackException
    _NoSuchConformancePackException,

    -- ** OrganizationAccessDeniedException
    _OrganizationAccessDeniedException,

    -- ** InvalidParameterValueException
    _InvalidParameterValueException,

    -- ** NoSuchRemediationConfigurationException
    _NoSuchRemediationConfigurationException,

    -- ** InvalidTimeRangeException
    _InvalidTimeRangeException,

    -- ** NoSuchConfigRuleInConformancePackException
    _NoSuchConfigRuleInConformancePackException,

    -- ** ValidationException
    _ValidationException,

    -- ** InvalidSNSTopicARNException
    _InvalidSNSTopicARNException,

    -- ** NoSuchDeliveryChannelException
    _NoSuchDeliveryChannelException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidS3KMSKeyARNException
    _InvalidS3KMSKeyARNException,

    -- ** NoSuchConfigurationRecorderException
    _NoSuchConfigurationRecorderException,

    -- ** InsufficientDeliveryPolicyException
    _InsufficientDeliveryPolicyException,

    -- ** MaxNumberOfOrganizationConfigRulesExceededException
    _MaxNumberOfOrganizationConfigRulesExceededException,

    -- ** MaxNumberOfOrganizationConformancePacksExceededException
    _MaxNumberOfOrganizationConformancePacksExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidLimitException
    _InvalidLimitException,

    -- ** OrganizationConformancePackTemplateValidationException
    _OrganizationConformancePackTemplateValidationException,

    -- ** MaxNumberOfConfigurationRecordersExceededException
    _MaxNumberOfConfigurationRecordersExceededException,

    -- ** NoSuchRemediationExceptionException
    _NoSuchRemediationExceptionException,

    -- ** ResourceConcurrentModificationException
    _ResourceConcurrentModificationException,

    -- ** MaxNumberOfConfigRulesExceededException
    _MaxNumberOfConfigRulesExceededException,

    -- ** NoAvailableConfigurationRecorderException
    _NoAvailableConfigurationRecorderException,

    -- ** NoSuchBucketException
    _NoSuchBucketException,

    -- ** MaxActiveResourcesExceededException
    _MaxActiveResourcesExceededException,

    -- ** MaxNumberOfRetentionConfigurationsExceededException
    _MaxNumberOfRetentionConfigurationsExceededException,

    -- ** OrganizationAllFeaturesNotEnabledException
    _OrganizationAllFeaturesNotEnabledException,

    -- ** InsufficientPermissionsException
    _InsufficientPermissionsException,

    -- ** RemediationInProgressException
    _RemediationInProgressException,

    -- ** ResourceNotDiscoveredException
    _ResourceNotDiscoveredException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeComplianceByConfigRule (Paginated)
    module Network.AWS.Config.DescribeComplianceByConfigRule,

    -- ** GetAggregateComplianceDetailsByConfigRule (Paginated)
    module Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule,

    -- ** GetStoredQuery
    module Network.AWS.Config.GetStoredQuery,

    -- ** GetAggregateResourceConfig
    module Network.AWS.Config.GetAggregateResourceConfig,

    -- ** DescribeConfigurationAggregators (Paginated)
    module Network.AWS.Config.DescribeConfigurationAggregators,

    -- ** DescribePendingAggregationRequests (Paginated)
    module Network.AWS.Config.DescribePendingAggregationRequests,

    -- ** DescribeRemediationExecutionStatus (Paginated)
    module Network.AWS.Config.DescribeRemediationExecutionStatus,

    -- ** GetResourceConfigHistory (Paginated)
    module Network.AWS.Config.GetResourceConfigHistory,

    -- ** DescribeConformancePackCompliance
    module Network.AWS.Config.DescribeConformancePackCompliance,

    -- ** DescribeOrganizationConformancePacks
    module Network.AWS.Config.DescribeOrganizationConformancePacks,

    -- ** ListDiscoveredResources (Paginated)
    module Network.AWS.Config.ListDiscoveredResources,

    -- ** DescribeAggregationAuthorizations (Paginated)
    module Network.AWS.Config.DescribeAggregationAuthorizations,

    -- ** DescribeRemediationConfigurations
    module Network.AWS.Config.DescribeRemediationConfigurations,

    -- ** DeleteResourceConfig
    module Network.AWS.Config.DeleteResourceConfig,

    -- ** DescribeComplianceByResource (Paginated)
    module Network.AWS.Config.DescribeComplianceByResource,

    -- ** StartConfigRulesEvaluation
    module Network.AWS.Config.StartConfigRulesEvaluation,

    -- ** DescribeRemediationExceptions
    module Network.AWS.Config.DescribeRemediationExceptions,

    -- ** DeleteOrganizationConformancePack
    module Network.AWS.Config.DeleteOrganizationConformancePack,

    -- ** GetComplianceDetailsByConfigRule (Paginated)
    module Network.AWS.Config.GetComplianceDetailsByConfigRule,

    -- ** PutOrganizationConfigRule
    module Network.AWS.Config.PutOrganizationConfigRule,

    -- ** GetDiscoveredResourceCounts
    module Network.AWS.Config.GetDiscoveredResourceCounts,

    -- ** GetComplianceSummaryByResourceType
    module Network.AWS.Config.GetComplianceSummaryByResourceType,

    -- ** PutDeliveryChannel
    module Network.AWS.Config.PutDeliveryChannel,

    -- ** DescribeConfigurationAggregatorSourcesStatus (Paginated)
    module Network.AWS.Config.DescribeConfigurationAggregatorSourcesStatus,

    -- ** DeleteRemediationConfiguration
    module Network.AWS.Config.DeleteRemediationConfiguration,

    -- ** DeleteAggregationAuthorization
    module Network.AWS.Config.DeleteAggregationAuthorization,

    -- ** DescribeConfigurationRecorderStatus
    module Network.AWS.Config.DescribeConfigurationRecorderStatus,

    -- ** DeleteConfigurationRecorder
    module Network.AWS.Config.DeleteConfigurationRecorder,

    -- ** GetConformancePackComplianceSummary
    module Network.AWS.Config.GetConformancePackComplianceSummary,

    -- ** UntagResource
    module Network.AWS.Config.UntagResource,

    -- ** DescribeConfigRuleEvaluationStatus (Paginated)
    module Network.AWS.Config.DescribeConfigRuleEvaluationStatus,

    -- ** DeleteConfigurationAggregator
    module Network.AWS.Config.DeleteConfigurationAggregator,

    -- ** DeleteStoredQuery
    module Network.AWS.Config.DeleteStoredQuery,

    -- ** DescribeOrganizationConfigRuleStatuses
    module Network.AWS.Config.DescribeOrganizationConfigRuleStatuses,

    -- ** GetComplianceDetailsByResource (Paginated)
    module Network.AWS.Config.GetComplianceDetailsByResource,

    -- ** ListAggregateDiscoveredResources (Paginated)
    module Network.AWS.Config.ListAggregateDiscoveredResources,

    -- ** SelectResourceConfig
    module Network.AWS.Config.SelectResourceConfig,

    -- ** TagResource
    module Network.AWS.Config.TagResource,

    -- ** PutRetentionConfiguration
    module Network.AWS.Config.PutRetentionConfiguration,

    -- ** GetConformancePackComplianceDetails
    module Network.AWS.Config.GetConformancePackComplianceDetails,

    -- ** DeleteEvaluationResults
    module Network.AWS.Config.DeleteEvaluationResults,

    -- ** PutRemediationConfigurations
    module Network.AWS.Config.PutRemediationConfigurations,

    -- ** PutConfigRule
    module Network.AWS.Config.PutConfigRule,

    -- ** PutConformancePack
    module Network.AWS.Config.PutConformancePack,

    -- ** ListStoredQueries
    module Network.AWS.Config.ListStoredQueries,

    -- ** DeleteRemediationExceptions
    module Network.AWS.Config.DeleteRemediationExceptions,

    -- ** PutExternalEvaluation
    module Network.AWS.Config.PutExternalEvaluation,

    -- ** BatchGetResourceConfig
    module Network.AWS.Config.BatchGetResourceConfig,

    -- ** GetAggregateDiscoveredResourceCounts
    module Network.AWS.Config.GetAggregateDiscoveredResourceCounts,

    -- ** PutEvaluations
    module Network.AWS.Config.PutEvaluations,

    -- ** DescribeConfigurationRecorders
    module Network.AWS.Config.DescribeConfigurationRecorders,

    -- ** DescribeOrganizationConfigRules
    module Network.AWS.Config.DescribeOrganizationConfigRules,

    -- ** SelectAggregateResourceConfig
    module Network.AWS.Config.SelectAggregateResourceConfig,

    -- ** PutResourceConfig
    module Network.AWS.Config.PutResourceConfig,

    -- ** DescribeDeliveryChannels
    module Network.AWS.Config.DescribeDeliveryChannels,

    -- ** DeleteDeliveryChannel
    module Network.AWS.Config.DeleteDeliveryChannel,

    -- ** DescribeDeliveryChannelStatus
    module Network.AWS.Config.DescribeDeliveryChannelStatus,

    -- ** DeleteOrganizationConfigRule
    module Network.AWS.Config.DeleteOrganizationConfigRule,

    -- ** PutAggregationAuthorization
    module Network.AWS.Config.PutAggregationAuthorization,

    -- ** PutOrganizationConformancePack
    module Network.AWS.Config.PutOrganizationConformancePack,

    -- ** PutConfigurationRecorder
    module Network.AWS.Config.PutConfigurationRecorder,

    -- ** DeletePendingAggregationRequest
    module Network.AWS.Config.DeletePendingAggregationRequest,

    -- ** DeliverConfigSnapshot
    module Network.AWS.Config.DeliverConfigSnapshot,

    -- ** BatchGetAggregateResourceConfig
    module Network.AWS.Config.BatchGetAggregateResourceConfig,

    -- ** GetComplianceSummaryByConfigRule
    module Network.AWS.Config.GetComplianceSummaryByConfigRule,

    -- ** DescribeOrganizationConformancePackStatuses
    module Network.AWS.Config.DescribeOrganizationConformancePackStatuses,

    -- ** PutStoredQuery
    module Network.AWS.Config.PutStoredQuery,

    -- ** PutConfigurationAggregator
    module Network.AWS.Config.PutConfigurationAggregator,

    -- ** GetOrganizationConfigRuleDetailedStatus
    module Network.AWS.Config.GetOrganizationConfigRuleDetailedStatus,

    -- ** StartRemediationExecution
    module Network.AWS.Config.StartRemediationExecution,

    -- ** DescribeConformancePackStatus
    module Network.AWS.Config.DescribeConformancePackStatus,

    -- ** DeleteConfigRule
    module Network.AWS.Config.DeleteConfigRule,

    -- ** DeleteRetentionConfiguration
    module Network.AWS.Config.DeleteRetentionConfiguration,

    -- ** DeleteConformancePack
    module Network.AWS.Config.DeleteConformancePack,

    -- ** GetOrganizationConformancePackDetailedStatus
    module Network.AWS.Config.GetOrganizationConformancePackDetailedStatus,

    -- ** DescribeAggregateComplianceByConfigRules (Paginated)
    module Network.AWS.Config.DescribeAggregateComplianceByConfigRules,

    -- ** StartConfigurationRecorder
    module Network.AWS.Config.StartConfigurationRecorder,

    -- ** ListTagsForResource
    module Network.AWS.Config.ListTagsForResource,

    -- ** GetAggregateConfigRuleComplianceSummary
    module Network.AWS.Config.GetAggregateConfigRuleComplianceSummary,

    -- ** PutRemediationExceptions
    module Network.AWS.Config.PutRemediationExceptions,

    -- ** DescribeConfigRules (Paginated)
    module Network.AWS.Config.DescribeConfigRules,

    -- ** StopConfigurationRecorder
    module Network.AWS.Config.StopConfigurationRecorder,

    -- ** DescribeConformancePacks
    module Network.AWS.Config.DescribeConformancePacks,

    -- ** DescribeRetentionConfigurations (Paginated)
    module Network.AWS.Config.DescribeRetentionConfigurations,

    -- * Types

    -- ** AggregatedSourceStatusType
    AggregatedSourceStatusType (..),

    -- ** AggregatedSourceType
    AggregatedSourceType (..),

    -- ** ChronologicalOrder
    ChronologicalOrder (..),

    -- ** ComplianceType
    ComplianceType (..),

    -- ** ConfigRuleComplianceSummaryGroupKey
    ConfigRuleComplianceSummaryGroupKey (..),

    -- ** ConfigRuleState
    ConfigRuleState (..),

    -- ** ConfigurationItemStatus
    ConfigurationItemStatus (..),

    -- ** ConformancePackComplianceType
    ConformancePackComplianceType (..),

    -- ** ConformancePackState
    ConformancePackState (..),

    -- ** DeliveryStatus
    DeliveryStatus (..),

    -- ** EventSource
    EventSource (..),

    -- ** MaximumExecutionFrequency
    MaximumExecutionFrequency (..),

    -- ** MemberAccountRuleStatus
    MemberAccountRuleStatus (..),

    -- ** MessageType
    MessageType (..),

    -- ** OrganizationConfigRuleTriggerType
    OrganizationConfigRuleTriggerType (..),

    -- ** OrganizationResourceDetailedStatus
    OrganizationResourceDetailedStatus (..),

    -- ** OrganizationResourceStatus
    OrganizationResourceStatus (..),

    -- ** OrganizationRuleStatus
    OrganizationRuleStatus (..),

    -- ** Owner
    Owner (..),

    -- ** RecorderStatus
    RecorderStatus (..),

    -- ** RemediationExecutionState
    RemediationExecutionState (..),

    -- ** RemediationExecutionStepState
    RemediationExecutionStepState (..),

    -- ** RemediationTargetType
    RemediationTargetType (..),

    -- ** ResourceCountGroupKey
    ResourceCountGroupKey (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** ResourceValueType
    ResourceValueType (..),

    -- ** AccountAggregationSource
    AccountAggregationSource,
    accountAggregationSource,
    aasAllAWSRegions,
    aasAWSRegions,
    aasAccountIds,

    -- ** AggregateComplianceByConfigRule
    AggregateComplianceByConfigRule,
    aggregateComplianceByConfigRule,
    acbcrAccountId,
    acbcrConfigRuleName,
    acbcrCompliance,
    acbcrAWSRegion,

    -- ** AggregateComplianceCount
    AggregateComplianceCount,
    aggregateComplianceCount,
    accComplianceSummary,
    accGroupName,

    -- ** AggregateEvaluationResult
    AggregateEvaluationResult,
    aggregateEvaluationResult,
    aerAnnotation,
    aerEvaluationResultIdentifier,
    aerAccountId,
    aerResultRecordedTime,
    aerComplianceType,
    aerConfigRuleInvokedTime,
    aerAWSRegion,

    -- ** AggregateResourceIdentifier
    AggregateResourceIdentifier,
    aggregateResourceIdentifier,
    ariResourceName,
    ariSourceAccountId,
    ariSourceRegion,
    ariResourceId,
    ariResourceType,

    -- ** AggregatedSourceStatus
    AggregatedSourceStatus,
    aggregatedSourceStatus,
    assLastUpdateStatus,
    assLastErrorMessage,
    assLastUpdateTime,
    assSourceId,
    assLastErrorCode,
    assAWSRegion,
    assSourceType,

    -- ** AggregationAuthorization
    AggregationAuthorization,
    aggregationAuthorization,
    aaCreationTime,
    aaAuthorizedAccountId,
    aaAuthorizedAWSRegion,
    aaAggregationAuthorizationARN,

    -- ** BaseConfigurationItem
    BaseConfigurationItem,
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

    -- ** Compliance
    Compliance,
    compliance,
    cComplianceType,
    cComplianceContributorCount,

    -- ** ComplianceByConfigRule
    ComplianceByConfigRule,
    complianceByConfigRule,
    cbcrConfigRuleName,
    cbcrCompliance,

    -- ** ComplianceByResource
    ComplianceByResource,
    complianceByResource,
    cbrResourceId,
    cbrResourceType,
    cbrCompliance,

    -- ** ComplianceContributorCount
    ComplianceContributorCount,
    complianceContributorCount,
    cccCapExceeded,
    cccCappedCount,

    -- ** ComplianceSummary
    ComplianceSummary,
    complianceSummary,
    csComplianceSummaryTimestamp,
    csNonCompliantResourceCount,
    csCompliantResourceCount,

    -- ** ComplianceSummaryByResourceType
    ComplianceSummaryByResourceType,
    complianceSummaryByResourceType,
    csbrtComplianceSummary,
    csbrtResourceType,

    -- ** ConfigExportDeliveryInfo
    ConfigExportDeliveryInfo,
    configExportDeliveryInfo,
    cediLastErrorMessage,
    cediNextDeliveryTime,
    cediLastSuccessfulTime,
    cediLastErrorCode,
    cediLastStatus,
    cediLastAttemptTime,

    -- ** ConfigRule
    ConfigRule,
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

    -- ** ConfigRuleComplianceFilters
    ConfigRuleComplianceFilters,
    configRuleComplianceFilters,
    crcfAccountId,
    crcfConfigRuleName,
    crcfComplianceType,
    crcfAWSRegion,

    -- ** ConfigRuleComplianceSummaryFilters
    ConfigRuleComplianceSummaryFilters,
    configRuleComplianceSummaryFilters,
    crcsfAccountId,
    crcsfAWSRegion,

    -- ** ConfigRuleEvaluationStatus
    ConfigRuleEvaluationStatus,
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

    -- ** ConfigSnapshotDeliveryProperties
    ConfigSnapshotDeliveryProperties,
    configSnapshotDeliveryProperties,
    csdpDeliveryFrequency,

    -- ** ConfigStreamDeliveryInfo
    ConfigStreamDeliveryInfo,
    configStreamDeliveryInfo,
    csdiLastErrorMessage,
    csdiLastErrorCode,
    csdiLastStatus,
    csdiLastStatusChangeTime,

    -- ** ConfigurationAggregator
    ConfigurationAggregator,
    configurationAggregator,
    caCreationTime,
    caConfigurationAggregatorARN,
    caConfigurationAggregatorName,
    caAccountAggregationSources,
    caCreatedBy,
    caLastUpdatedTime,
    caOrganizationAggregationSource,

    -- ** ConfigurationItem
    ConfigurationItem,
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

    -- ** ConfigurationRecorder
    ConfigurationRecorder,
    configurationRecorder,
    crRoleARN,
    crName,
    crRecordingGroup,

    -- ** ConfigurationRecorderStatus
    ConfigurationRecorderStatus,
    configurationRecorderStatus,
    crsLastStopTime,
    crsLastStartTime,
    crsLastErrorMessage,
    crsRecording,
    crsName,
    crsLastErrorCode,
    crsLastStatus,
    crsLastStatusChangeTime,

    -- ** ConformancePackComplianceFilters
    ConformancePackComplianceFilters,
    conformancePackComplianceFilters,
    cpcfComplianceType,
    cpcfConfigRuleNames,

    -- ** ConformancePackComplianceSummary
    ConformancePackComplianceSummary,
    conformancePackComplianceSummary,
    cpcsConformancePackName,
    cpcsConformancePackComplianceStatus,

    -- ** ConformancePackDetail
    ConformancePackDetail,
    conformancePackDetail,
    cpdLastUpdateRequestedTime,
    cpdDeliveryS3Bucket,
    cpdDeliveryS3KeyPrefix,
    cpdCreatedBy,
    cpdConformancePackInputParameters,
    cpdConformancePackName,
    cpdConformancePackARN,
    cpdConformancePackId,

    -- ** ConformancePackEvaluationFilters
    ConformancePackEvaluationFilters,
    conformancePackEvaluationFilters,
    cpefComplianceType,
    cpefResourceType,
    cpefResourceIds,
    cpefConfigRuleNames,

    -- ** ConformancePackEvaluationResult
    ConformancePackEvaluationResult,
    conformancePackEvaluationResult,
    cperAnnotation,
    cperComplianceType,
    cperEvaluationResultIdentifier,
    cperConfigRuleInvokedTime,
    cperResultRecordedTime,

    -- ** ConformancePackInputParameter
    ConformancePackInputParameter,
    conformancePackInputParameter,
    cpipParameterName,
    cpipParameterValue,

    -- ** ConformancePackRuleCompliance
    ConformancePackRuleCompliance,
    conformancePackRuleCompliance,
    cprcConfigRuleName,
    cprcComplianceType,

    -- ** ConformancePackStatusDetail
    ConformancePackStatusDetail,
    conformancePackStatusDetail,
    cpsdConformancePackStatusReason,
    cpsdLastUpdateCompletedTime,
    cpsdConformancePackName,
    cpsdConformancePackId,
    cpsdConformancePackARN,
    cpsdConformancePackState,
    cpsdStackARN,
    cpsdLastUpdateRequestedTime,

    -- ** DeliveryChannel
    DeliveryChannel,
    deliveryChannel,
    dcS3KMSKeyARN,
    dcName,
    dcS3KeyPrefix,
    dcS3BucketName,
    dcConfigSnapshotDeliveryProperties,
    dcSnsTopicARN,

    -- ** DeliveryChannelStatus
    DeliveryChannelStatus,
    deliveryChannelStatus,
    dcsConfigSnapshotDeliveryInfo,
    dcsConfigStreamDeliveryInfo,
    dcsName,
    dcsConfigHistoryDeliveryInfo,

    -- ** Evaluation
    Evaluation,
    evaluation,
    eAnnotation,
    eComplianceResourceType,
    eComplianceResourceId,
    eComplianceType,
    eOrderingTimestamp,

    -- ** EvaluationResult
    EvaluationResult,
    evaluationResult,
    erAnnotation,
    erEvaluationResultIdentifier,
    erResultRecordedTime,
    erComplianceType,
    erConfigRuleInvokedTime,
    erResultToken,

    -- ** EvaluationResultIdentifier
    EvaluationResultIdentifier,
    evaluationResultIdentifier,
    eriEvaluationResultQualifier,
    eriOrderingTimestamp,

    -- ** EvaluationResultQualifier
    EvaluationResultQualifier,
    evaluationResultQualifier,
    erqResourceId,
    erqConfigRuleName,
    erqResourceType,

    -- ** ExecutionControls
    ExecutionControls,
    executionControls,
    ecSsmControls,

    -- ** ExternalEvaluation
    ExternalEvaluation,
    externalEvaluation,
    eeAnnotation,
    eeComplianceResourceType,
    eeComplianceResourceId,
    eeComplianceType,
    eeOrderingTimestamp,

    -- ** FailedDeleteRemediationExceptionsBatch
    FailedDeleteRemediationExceptionsBatch,
    failedDeleteRemediationExceptionsBatch,
    fdrebFailureMessage,
    fdrebFailedItems,

    -- ** FailedRemediationBatch
    FailedRemediationBatch,
    failedRemediationBatch,
    frbFailureMessage,
    frbFailedItems,

    -- ** FailedRemediationExceptionBatch
    FailedRemediationExceptionBatch,
    failedRemediationExceptionBatch,
    frebFailureMessage,
    frebFailedItems,

    -- ** FieldInfo
    FieldInfo,
    fieldInfo,
    fiName,

    -- ** GroupedResourceCount
    GroupedResourceCount,
    groupedResourceCount,
    grcGroupName,
    grcResourceCount,

    -- ** MemberAccountStatus
    MemberAccountStatus,
    memberAccountStatus,
    masLastUpdateTime,
    masErrorMessage,
    masErrorCode,
    masAccountId,
    masConfigRuleName,
    masMemberAccountRuleStatus,

    -- ** OrganizationAggregationSource
    OrganizationAggregationSource,
    organizationAggregationSource,
    oasAllAWSRegions,
    oasAWSRegions,
    oasRoleARN,

    -- ** OrganizationConfigRule
    OrganizationConfigRule,
    organizationConfigRule,
    ocrLastUpdateTime,
    ocrOrganizationManagedRuleMetadata,
    ocrOrganizationCustomRuleMetadata,
    ocrExcludedAccounts,
    ocrOrganizationConfigRuleName,
    ocrOrganizationConfigRuleARN,

    -- ** OrganizationConfigRuleStatus
    OrganizationConfigRuleStatus,
    organizationConfigRuleStatus,
    ocrsLastUpdateTime,
    ocrsErrorMessage,
    ocrsErrorCode,
    ocrsOrganizationConfigRuleName,
    ocrsOrganizationRuleStatus,

    -- ** OrganizationConformancePack
    OrganizationConformancePack,
    organizationConformancePack,
    ocpDeliveryS3Bucket,
    ocpDeliveryS3KeyPrefix,
    ocpExcludedAccounts,
    ocpConformancePackInputParameters,
    ocpOrganizationConformancePackName,
    ocpOrganizationConformancePackARN,
    ocpLastUpdateTime,

    -- ** OrganizationConformancePackDetailedStatus
    OrganizationConformancePackDetailedStatus,
    organizationConformancePackDetailedStatus,
    ocpdsLastUpdateTime,
    ocpdsErrorMessage,
    ocpdsErrorCode,
    ocpdsAccountId,
    ocpdsConformancePackName,
    ocpdsStatus,

    -- ** OrganizationConformancePackStatus
    OrganizationConformancePackStatus,
    organizationConformancePackStatus,
    ocpsLastUpdateTime,
    ocpsErrorMessage,
    ocpsErrorCode,
    ocpsOrganizationConformancePackName,
    ocpsStatus,

    -- ** OrganizationCustomRuleMetadata
    OrganizationCustomRuleMetadata,
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

    -- ** OrganizationManagedRuleMetadata
    OrganizationManagedRuleMetadata,
    organizationManagedRuleMetadata,
    omrmTagKeyScope,
    omrmMaximumExecutionFrequency,
    omrmResourceIdScope,
    omrmInputParameters,
    omrmDescription,
    omrmResourceTypesScope,
    omrmTagValueScope,
    omrmRuleIdentifier,

    -- ** OrganizationResourceDetailedStatusFilters
    OrganizationResourceDetailedStatusFilters,
    organizationResourceDetailedStatusFilters,
    ordsfStatus,
    ordsfAccountId,

    -- ** PendingAggregationRequest
    PendingAggregationRequest,
    pendingAggregationRequest,
    parRequesterAWSRegion,
    parRequesterAccountId,

    -- ** QueryInfo
    QueryInfo,
    queryInfo,
    qiSelectFields,

    -- ** RecordingGroup
    RecordingGroup,
    recordingGroup,
    rgAllSupported,
    rgResourceTypes,
    rgIncludeGlobalResourceTypes,

    -- ** Relationship
    Relationship,
    relationship,
    rResourceId,
    rResourceType,
    rRelationshipName,
    rResourceName,

    -- ** RemediationConfiguration
    RemediationConfiguration,
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

    -- ** RemediationException
    RemediationException,
    remediationException,
    reExpirationTime,
    reMessage,
    reConfigRuleName,
    reResourceType,
    reResourceId,

    -- ** RemediationExceptionResourceKey
    RemediationExceptionResourceKey,
    remediationExceptionResourceKey,
    rerkResourceId,
    rerkResourceType,

    -- ** RemediationExecutionStatus
    RemediationExecutionStatus,
    remediationExecutionStatus,
    resInvocationTime,
    resResourceKey,
    resState,
    resStepDetails,
    resLastUpdatedTime,

    -- ** RemediationExecutionStep
    RemediationExecutionStep,
    remediationExecutionStep,
    rStartTime,
    rStopTime,
    rState,
    rName,
    rErrorMessage,

    -- ** RemediationParameterValue
    RemediationParameterValue,
    remediationParameterValue,
    rpvResourceValue,
    rpvStaticValue,

    -- ** ResourceCount
    ResourceCount,
    resourceCount,
    resResourceType,
    resCount,

    -- ** ResourceCountFilters
    ResourceCountFilters,
    resourceCountFilters,
    rcfAccountId,
    rcfResourceType,
    rcfRegion,

    -- ** ResourceFilters
    ResourceFilters,
    resourceFilters,
    rfResourceId,
    rfAccountId,
    rfRegion,
    rfResourceName,

    -- ** ResourceIdentifier
    ResourceIdentifier,
    resourceIdentifier,
    riResourceId,
    riResourceType,
    riResourceDeletionTime,
    riResourceName,

    -- ** ResourceKey
    ResourceKey,
    resourceKey,
    rkResourceType,
    rkResourceId,

    -- ** ResourceValue
    ResourceValue,
    resourceValue,
    rvValue,

    -- ** RetentionConfiguration
    RetentionConfiguration,
    retentionConfiguration,
    rcName,
    rcRetentionPeriodInDays,

    -- ** Scope
    Scope,
    scope,
    sTagValue,
    sTagKey,
    sComplianceResourceId,
    sComplianceResourceTypes,

    -- ** Source
    Source,
    source,
    sSourceDetails,
    sOwner,
    sSourceIdentifier,

    -- ** SourceDetail
    SourceDetail,
    sourceDetail,
    sdEventSource,
    sdMaximumExecutionFrequency,
    sdMessageType,

    -- ** SsmControls
    SsmControls,
    ssmControls,
    scErrorPercentage,
    scConcurrentExecutionRatePercentage,

    -- ** StaticValue
    StaticValue,
    staticValue,
    svValues,

    -- ** StatusDetailFilters
    StatusDetailFilters,
    statusDetailFilters,
    sdfAccountId,
    sdfMemberAccountRuleStatus,

    -- ** StoredQuery
    StoredQuery,
    storedQuery,
    sqQueryARN,
    sqQueryId,
    sqDescription,
    sqExpression,
    sqQueryName,

    -- ** StoredQueryMetadata
    StoredQueryMetadata,
    storedQueryMetadata,
    sqmDescription,
    sqmQueryId,
    sqmQueryARN,
    sqmQueryName,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Config.BatchGetAggregateResourceConfig
import Network.AWS.Config.BatchGetResourceConfig
import Network.AWS.Config.DeleteAggregationAuthorization
import Network.AWS.Config.DeleteConfigRule
import Network.AWS.Config.DeleteConfigurationAggregator
import Network.AWS.Config.DeleteConfigurationRecorder
import Network.AWS.Config.DeleteConformancePack
import Network.AWS.Config.DeleteDeliveryChannel
import Network.AWS.Config.DeleteEvaluationResults
import Network.AWS.Config.DeleteOrganizationConfigRule
import Network.AWS.Config.DeleteOrganizationConformancePack
import Network.AWS.Config.DeletePendingAggregationRequest
import Network.AWS.Config.DeleteRemediationConfiguration
import Network.AWS.Config.DeleteRemediationExceptions
import Network.AWS.Config.DeleteResourceConfig
import Network.AWS.Config.DeleteRetentionConfiguration
import Network.AWS.Config.DeleteStoredQuery
import Network.AWS.Config.DeliverConfigSnapshot
import Network.AWS.Config.DescribeAggregateComplianceByConfigRules
import Network.AWS.Config.DescribeAggregationAuthorizations
import Network.AWS.Config.DescribeComplianceByConfigRule
import Network.AWS.Config.DescribeComplianceByResource
import Network.AWS.Config.DescribeConfigRuleEvaluationStatus
import Network.AWS.Config.DescribeConfigRules
import Network.AWS.Config.DescribeConfigurationAggregatorSourcesStatus
import Network.AWS.Config.DescribeConfigurationAggregators
import Network.AWS.Config.DescribeConfigurationRecorderStatus
import Network.AWS.Config.DescribeConfigurationRecorders
import Network.AWS.Config.DescribeConformancePackCompliance
import Network.AWS.Config.DescribeConformancePackStatus
import Network.AWS.Config.DescribeConformancePacks
import Network.AWS.Config.DescribeDeliveryChannelStatus
import Network.AWS.Config.DescribeDeliveryChannels
import Network.AWS.Config.DescribeOrganizationConfigRuleStatuses
import Network.AWS.Config.DescribeOrganizationConfigRules
import Network.AWS.Config.DescribeOrganizationConformancePackStatuses
import Network.AWS.Config.DescribeOrganizationConformancePacks
import Network.AWS.Config.DescribePendingAggregationRequests
import Network.AWS.Config.DescribeRemediationConfigurations
import Network.AWS.Config.DescribeRemediationExceptions
import Network.AWS.Config.DescribeRemediationExecutionStatus
import Network.AWS.Config.DescribeRetentionConfigurations
import Network.AWS.Config.GetAggregateComplianceDetailsByConfigRule
import Network.AWS.Config.GetAggregateConfigRuleComplianceSummary
import Network.AWS.Config.GetAggregateDiscoveredResourceCounts
import Network.AWS.Config.GetAggregateResourceConfig
import Network.AWS.Config.GetComplianceDetailsByConfigRule
import Network.AWS.Config.GetComplianceDetailsByResource
import Network.AWS.Config.GetComplianceSummaryByConfigRule
import Network.AWS.Config.GetComplianceSummaryByResourceType
import Network.AWS.Config.GetConformancePackComplianceDetails
import Network.AWS.Config.GetConformancePackComplianceSummary
import Network.AWS.Config.GetDiscoveredResourceCounts
import Network.AWS.Config.GetOrganizationConfigRuleDetailedStatus
import Network.AWS.Config.GetOrganizationConformancePackDetailedStatus
import Network.AWS.Config.GetResourceConfigHistory
import Network.AWS.Config.GetStoredQuery
import Network.AWS.Config.ListAggregateDiscoveredResources
import Network.AWS.Config.ListDiscoveredResources
import Network.AWS.Config.ListStoredQueries
import Network.AWS.Config.ListTagsForResource
import Network.AWS.Config.PutAggregationAuthorization
import Network.AWS.Config.PutConfigRule
import Network.AWS.Config.PutConfigurationAggregator
import Network.AWS.Config.PutConfigurationRecorder
import Network.AWS.Config.PutConformancePack
import Network.AWS.Config.PutDeliveryChannel
import Network.AWS.Config.PutEvaluations
import Network.AWS.Config.PutExternalEvaluation
import Network.AWS.Config.PutOrganizationConfigRule
import Network.AWS.Config.PutOrganizationConformancePack
import Network.AWS.Config.PutRemediationConfigurations
import Network.AWS.Config.PutRemediationExceptions
import Network.AWS.Config.PutResourceConfig
import Network.AWS.Config.PutRetentionConfiguration
import Network.AWS.Config.PutStoredQuery
import Network.AWS.Config.SelectAggregateResourceConfig
import Network.AWS.Config.SelectResourceConfig
import Network.AWS.Config.StartConfigRulesEvaluation
import Network.AWS.Config.StartConfigurationRecorder
import Network.AWS.Config.StartRemediationExecution
import Network.AWS.Config.StopConfigurationRecorder
import Network.AWS.Config.TagResource
import Network.AWS.Config.Types
import Network.AWS.Config.UntagResource
import Network.AWS.Config.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Config'.

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

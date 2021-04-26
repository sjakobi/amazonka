{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

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
    defaultService,

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
    _InvalidS3KmsKeyArnException,
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
    newAccountAggregationSource,

    -- * AggregateComplianceByConfigRule
    AggregateComplianceByConfigRule (..),
    newAggregateComplianceByConfigRule,

    -- * AggregateComplianceCount
    AggregateComplianceCount (..),
    newAggregateComplianceCount,

    -- * AggregateEvaluationResult
    AggregateEvaluationResult (..),
    newAggregateEvaluationResult,

    -- * AggregateResourceIdentifier
    AggregateResourceIdentifier (..),
    newAggregateResourceIdentifier,

    -- * AggregatedSourceStatus
    AggregatedSourceStatus (..),
    newAggregatedSourceStatus,

    -- * AggregationAuthorization
    AggregationAuthorization (..),
    newAggregationAuthorization,

    -- * BaseConfigurationItem
    BaseConfigurationItem (..),
    newBaseConfigurationItem,

    -- * Compliance
    Compliance (..),
    newCompliance,

    -- * ComplianceByConfigRule
    ComplianceByConfigRule (..),
    newComplianceByConfigRule,

    -- * ComplianceByResource
    ComplianceByResource (..),
    newComplianceByResource,

    -- * ComplianceContributorCount
    ComplianceContributorCount (..),
    newComplianceContributorCount,

    -- * ComplianceSummary
    ComplianceSummary (..),
    newComplianceSummary,

    -- * ComplianceSummaryByResourceType
    ComplianceSummaryByResourceType (..),
    newComplianceSummaryByResourceType,

    -- * ConfigExportDeliveryInfo
    ConfigExportDeliveryInfo (..),
    newConfigExportDeliveryInfo,

    -- * ConfigRule
    ConfigRule (..),
    newConfigRule,

    -- * ConfigRuleComplianceFilters
    ConfigRuleComplianceFilters (..),
    newConfigRuleComplianceFilters,

    -- * ConfigRuleComplianceSummaryFilters
    ConfigRuleComplianceSummaryFilters (..),
    newConfigRuleComplianceSummaryFilters,

    -- * ConfigRuleEvaluationStatus
    ConfigRuleEvaluationStatus (..),
    newConfigRuleEvaluationStatus,

    -- * ConfigSnapshotDeliveryProperties
    ConfigSnapshotDeliveryProperties (..),
    newConfigSnapshotDeliveryProperties,

    -- * ConfigStreamDeliveryInfo
    ConfigStreamDeliveryInfo (..),
    newConfigStreamDeliveryInfo,

    -- * ConfigurationAggregator
    ConfigurationAggregator (..),
    newConfigurationAggregator,

    -- * ConfigurationItem
    ConfigurationItem (..),
    newConfigurationItem,

    -- * ConfigurationRecorder
    ConfigurationRecorder (..),
    newConfigurationRecorder,

    -- * ConfigurationRecorderStatus
    ConfigurationRecorderStatus (..),
    newConfigurationRecorderStatus,

    -- * ConformancePackComplianceFilters
    ConformancePackComplianceFilters (..),
    newConformancePackComplianceFilters,

    -- * ConformancePackComplianceSummary
    ConformancePackComplianceSummary (..),
    newConformancePackComplianceSummary,

    -- * ConformancePackDetail
    ConformancePackDetail (..),
    newConformancePackDetail,

    -- * ConformancePackEvaluationFilters
    ConformancePackEvaluationFilters (..),
    newConformancePackEvaluationFilters,

    -- * ConformancePackEvaluationResult
    ConformancePackEvaluationResult (..),
    newConformancePackEvaluationResult,

    -- * ConformancePackInputParameter
    ConformancePackInputParameter (..),
    newConformancePackInputParameter,

    -- * ConformancePackRuleCompliance
    ConformancePackRuleCompliance (..),
    newConformancePackRuleCompliance,

    -- * ConformancePackStatusDetail
    ConformancePackStatusDetail (..),
    newConformancePackStatusDetail,

    -- * DeliveryChannel
    DeliveryChannel (..),
    newDeliveryChannel,

    -- * DeliveryChannelStatus
    DeliveryChannelStatus (..),
    newDeliveryChannelStatus,

    -- * Evaluation
    Evaluation (..),
    newEvaluation,

    -- * EvaluationResult
    EvaluationResult (..),
    newEvaluationResult,

    -- * EvaluationResultIdentifier
    EvaluationResultIdentifier (..),
    newEvaluationResultIdentifier,

    -- * EvaluationResultQualifier
    EvaluationResultQualifier (..),
    newEvaluationResultQualifier,

    -- * ExecutionControls
    ExecutionControls (..),
    newExecutionControls,

    -- * ExternalEvaluation
    ExternalEvaluation (..),
    newExternalEvaluation,

    -- * FailedDeleteRemediationExceptionsBatch
    FailedDeleteRemediationExceptionsBatch (..),
    newFailedDeleteRemediationExceptionsBatch,

    -- * FailedRemediationBatch
    FailedRemediationBatch (..),
    newFailedRemediationBatch,

    -- * FailedRemediationExceptionBatch
    FailedRemediationExceptionBatch (..),
    newFailedRemediationExceptionBatch,

    -- * FieldInfo
    FieldInfo (..),
    newFieldInfo,

    -- * GroupedResourceCount
    GroupedResourceCount (..),
    newGroupedResourceCount,

    -- * MemberAccountStatus
    MemberAccountStatus (..),
    newMemberAccountStatus,

    -- * OrganizationAggregationSource
    OrganizationAggregationSource (..),
    newOrganizationAggregationSource,

    -- * OrganizationConfigRule
    OrganizationConfigRule (..),
    newOrganizationConfigRule,

    -- * OrganizationConfigRuleStatus
    OrganizationConfigRuleStatus (..),
    newOrganizationConfigRuleStatus,

    -- * OrganizationConformancePack
    OrganizationConformancePack (..),
    newOrganizationConformancePack,

    -- * OrganizationConformancePackDetailedStatus
    OrganizationConformancePackDetailedStatus (..),
    newOrganizationConformancePackDetailedStatus,

    -- * OrganizationConformancePackStatus
    OrganizationConformancePackStatus (..),
    newOrganizationConformancePackStatus,

    -- * OrganizationCustomRuleMetadata
    OrganizationCustomRuleMetadata (..),
    newOrganizationCustomRuleMetadata,

    -- * OrganizationManagedRuleMetadata
    OrganizationManagedRuleMetadata (..),
    newOrganizationManagedRuleMetadata,

    -- * OrganizationResourceDetailedStatusFilters
    OrganizationResourceDetailedStatusFilters (..),
    newOrganizationResourceDetailedStatusFilters,

    -- * PendingAggregationRequest
    PendingAggregationRequest (..),
    newPendingAggregationRequest,

    -- * QueryInfo
    QueryInfo (..),
    newQueryInfo,

    -- * RecordingGroup
    RecordingGroup (..),
    newRecordingGroup,

    -- * Relationship
    Relationship (..),
    newRelationship,

    -- * RemediationConfiguration
    RemediationConfiguration (..),
    newRemediationConfiguration,

    -- * RemediationException
    RemediationException (..),
    newRemediationException,

    -- * RemediationExceptionResourceKey
    RemediationExceptionResourceKey (..),
    newRemediationExceptionResourceKey,

    -- * RemediationExecutionStatus
    RemediationExecutionStatus (..),
    newRemediationExecutionStatus,

    -- * RemediationExecutionStep
    RemediationExecutionStep (..),
    newRemediationExecutionStep,

    -- * RemediationParameterValue
    RemediationParameterValue (..),
    newRemediationParameterValue,

    -- * ResourceCount
    ResourceCount (..),
    newResourceCount,

    -- * ResourceCountFilters
    ResourceCountFilters (..),
    newResourceCountFilters,

    -- * ResourceFilters
    ResourceFilters (..),
    newResourceFilters,

    -- * ResourceIdentifier
    ResourceIdentifier (..),
    newResourceIdentifier,

    -- * ResourceKey
    ResourceKey (..),
    newResourceKey,

    -- * ResourceValue
    ResourceValue (..),
    newResourceValue,

    -- * RetentionConfiguration
    RetentionConfiguration (..),
    newRetentionConfiguration,

    -- * Scope
    Scope (..),
    newScope,

    -- * Source
    Source (..),
    newSource,

    -- * SourceDetail
    SourceDetail (..),
    newSourceDetail,

    -- * SsmControls
    SsmControls (..),
    newSsmControls,

    -- * StaticValue
    StaticValue (..),
    newStaticValue,

    -- * StatusDetailFilters
    StatusDetailFilters (..),
    newStatusDetailFilters,

    -- * StoredQuery
    StoredQuery (..),
    newStoredQuery,

    -- * StoredQueryMetadata
    StoredQueryMetadata (..),
    newStoredQueryMetadata,

    -- * Tag
    Tag (..),
    newTag,
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
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-11-12@ of the Amazon Config SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Config",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "config",
      Prelude._svcVersion = "2014-11-12",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "Config",
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

-- | You have specified a retention configuration that does not exist.
_NoSuchRetentionConfigurationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchRetentionConfigurationException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchRetentionConfigurationException"

-- | One or more AWS Config rules in the request are invalid. Verify that the
-- rule names are correct and try again.
_NoSuchConfigRuleException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchConfigRuleException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchConfigRuleException"

-- | Organization is no longer available.
_NoAvailableOrganizationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoAvailableOrganizationException =
  Prelude._MatchServiceError
    defaultService
    "NoAvailableOrganizationException"

-- | AWS Config organization conformance pack that you passed in the filter
-- does not exist.
--
-- For DeleteOrganizationConformancePack, you tried to delete an
-- organization conformance pack that does not exist.
_NoSuchOrganizationConformancePackException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchOrganizationConformancePackException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchOrganizationConformancePackException"

-- | You specified one or more organization config rules that do not exist.
_NoSuchOrganizationConfigRuleException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchOrganizationConfigRuleException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchOrganizationConfigRuleException"

-- | The specified @ResultToken@ is invalid.
_InvalidResultTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResultTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidResultTokenException"

-- | AWS Config throws an exception if the recording group does not contain a
-- valid list of resource types. Invalid values might also be incorrectly
-- formatted.
_InvalidRecordingGroupException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRecordingGroupException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRecordingGroupException"

-- | The syntax of the query is incorrect.
_InvalidExpressionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidExpressionException =
  Prelude._MatchServiceError
    defaultService
    "InvalidExpressionException"

-- | You have reached the limit of the number of tags you can use. You have
-- more than 50 tags.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | The specified Amazon S3 key prefix is not valid.
_InvalidS3KeyPrefixException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidS3KeyPrefixException =
  Prelude._MatchServiceError
    defaultService
    "InvalidS3KeyPrefixException"

-- | You have reached the limit of the number of delivery channels you can
-- create.
_MaxNumberOfDeliveryChannelsExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfDeliveryChannelsExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfDeliveryChannelsExceededException"

-- | The specified delivery channel name is not valid.
_InvalidDeliveryChannelNameException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDeliveryChannelNameException =
  Prelude._MatchServiceError
    defaultService
    "InvalidDeliveryChannelNameException"

-- | You have provided a configuration recorder name that is not valid.
_InvalidConfigurationRecorderNameException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidConfigurationRecorderNameException =
  Prelude._MatchServiceError
    defaultService
    "InvalidConfigurationRecorderNameException"

-- | There is no configuration recorder running.
_NoRunningConfigurationRecorderException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoRunningConfigurationRecorderException =
  Prelude._MatchServiceError
    defaultService
    "NoRunningConfigurationRecorderException"

-- | There is no delivery channel available to record configurations.
_NoAvailableDeliveryChannelException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoAvailableDeliveryChannelException =
  Prelude._MatchServiceError
    defaultService
    "NoAvailableDeliveryChannelException"

-- | You cannot delete the delivery channel you specified because the
-- configuration recorder is running.
_LastDeliveryChannelDeleteFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LastDeliveryChannelDeleteFailedException =
  Prelude._MatchServiceError
    defaultService
    "LastDeliveryChannelDeleteFailedException"

-- | You have specified a template that is not valid or supported.
_ConformancePackTemplateValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConformancePackTemplateValidationException =
  Prelude._MatchServiceError
    defaultService
    "ConformancePackTemplateValidationException"

-- | The configuration item size is outside the allowable range.
_OversizedConfigurationItemException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OversizedConfigurationItemException =
  Prelude._MatchServiceError
    defaultService
    "OversizedConfigurationItemException"

-- | You have reached the limit (6) of the number of conformance packs in an
-- account (6 conformance pack with 25 AWS Config rules per pack).
_MaxNumberOfConformancePacksExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfConformancePacksExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfConformancePacksExceededException"

-- | You have provided a null or empty role ARN.
_InvalidRoleException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRoleException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRoleException"

-- | The specified next token is invalid. Specify the @nextToken@ string that
-- was returned in the previous response to get the next page of results.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | You have specified a configuration aggregator that does not exist.
_NoSuchConfigurationAggregatorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchConfigurationAggregatorException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchConfigurationAggregatorException"

-- | You specified one or more conformance packs that do not exist.
_NoSuchConformancePackException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchConformancePackException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchConformancePackException"

-- | For @PutConfigurationAggregator@ API, you can see this exception for the
-- following reasons:
--
-- -   No permission to call @EnableAWSServiceAccess@ API
--
-- -   The configuration aggregator cannot be updated because your AWS
--     Organization management account or the delegated administrator role
--     changed. Delete this aggregator and create a new one with the
--     current AWS Organization.
--
-- -   The configuration aggregator is associated with a previous AWS
--     Organization and AWS Config cannot aggregate data with current AWS
--     Organization. Delete this aggregator and create a new one with the
--     current AWS Organization.
--
-- -   You are not a registered delegated administrator for AWS Config with
--     permissions to call @ListDelegatedAdministrators@ API. Ensure that
--     the management account registers delagated administrator for AWS
--     Config service principle name before the delegated administrator
--     creates an aggregator.
--
-- For all @OrganizationConfigRule@ and @OrganizationConformancePack@ APIs,
-- AWS Config throws an exception if APIs are called from member accounts.
-- All APIs must be called from organization master account.
_OrganizationAccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OrganizationAccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "OrganizationAccessDeniedException"

-- | One or more of the specified parameters are invalid. Verify that your
-- parameters are valid and try again.
_InvalidParameterValueException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterValueException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterValueException"

-- | You specified an AWS Config rule without a remediation configuration.
_NoSuchRemediationConfigurationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchRemediationConfigurationException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchRemediationConfigurationException"

-- | The specified time range is not valid. The earlier time is not
-- chronologically before the later time.
_InvalidTimeRangeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTimeRangeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTimeRangeException"

-- | AWS Config rule that you passed in the filter does not exist.
_NoSuchConfigRuleInConformancePackException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchConfigRuleInConformancePackException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchConfigRuleInConformancePackException"

-- | The requested action is not valid.
--
-- For PutStoredQuery, you will see this exception if there are missing
-- required fields or if the input value fails the validation, or if you
-- are trying to create more than 300 queries.
--
-- For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see
-- this exception if there are missing required fields or if the input
-- value fails the validation.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | The specified Amazon SNS topic does not exist.
_InvalidSNSTopicARNException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSNSTopicARNException =
  Prelude._MatchServiceError
    defaultService
    "InvalidSNSTopicARNException"

-- | You have specified a delivery channel that does not exist.
_NoSuchDeliveryChannelException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchDeliveryChannelException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchDeliveryChannelException"

-- | You see this exception in the following cases:
--
-- -   For DeleteConfigRule, AWS Config is deleting this rule. Try your
--     request again later.
--
-- -   For DeleteConfigRule, the rule is deleting your evaluation results.
--     Try your request again later.
--
-- -   For DeleteConfigRule, a remediation action is associated with the
--     rule and AWS Config cannot delete this rule. Delete the remediation
--     action associated with the rule before deleting the rule and try
--     your request again later.
--
-- -   For PutConfigOrganizationRule, organization config rule deletion is
--     in progress. Try your request again later.
--
-- -   For DeleteOrganizationConfigRule, organization config rule creation
--     is in progress. Try your request again later.
--
-- -   For PutConformancePack and PutOrganizationConformancePack, a
--     conformance pack creation, update, and deletion is in progress. Try
--     your request again later.
--
-- -   For DeleteConformancePack, a conformance pack creation, update, and
--     deletion is in progress. Try your request again later.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | For @StartConfigRulesEvaluation@ API, this exception is thrown if an
-- evaluation is in progress or if you call the StartConfigRulesEvaluation
-- API more than once per minute.
--
-- For @PutConfigurationAggregator@ API, this exception is thrown if the
-- number of accounts and aggregators exceeds the limit.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The specified Amazon KMS Key ARN is not valid.
_InvalidS3KmsKeyArnException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidS3KmsKeyArnException =
  Prelude._MatchServiceError
    defaultService
    "InvalidS3KmsKeyArnException"

-- | You have specified a configuration recorder that does not exist.
_NoSuchConfigurationRecorderException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchConfigurationRecorderException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchConfigurationRecorderException"

-- | Your Amazon S3 bucket policy does not permit AWS Config to write to it.
_InsufficientDeliveryPolicyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientDeliveryPolicyException =
  Prelude._MatchServiceError
    defaultService
    "InsufficientDeliveryPolicyException"

-- | You have reached the limit of the number of organization config rules
-- you can create.
_MaxNumberOfOrganizationConfigRulesExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfOrganizationConfigRulesExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfOrganizationConfigRulesExceededException"

-- | You have reached the limit (6) of the number of organization conformance
-- packs in an account (6 conformance pack with 25 AWS Config rules per
-- pack per account).
_MaxNumberOfOrganizationConformancePacksExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfOrganizationConformancePacksExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfOrganizationConformancePacksExceededException"

-- | You have specified a resource that does not exist.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The specified limit is outside the allowable range.
_InvalidLimitException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidLimitException =
  Prelude._MatchServiceError
    defaultService
    "InvalidLimitException"

-- | You have specified a template that is not valid or supported.
_OrganizationConformancePackTemplateValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OrganizationConformancePackTemplateValidationException =
  Prelude._MatchServiceError
    defaultService
    "OrganizationConformancePackTemplateValidationException"

-- | You have reached the limit of the number of recorders you can create.
_MaxNumberOfConfigurationRecordersExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfConfigurationRecordersExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfConfigurationRecordersExceededException"

-- | You tried to delete a remediation exception that does not exist.
_NoSuchRemediationExceptionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchRemediationExceptionException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchRemediationExceptionException"

-- | Two users are trying to modify the same query at the same time. Wait for
-- a moment and try again.
_ResourceConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ResourceConcurrentModificationException"

-- | Failed to add the AWS Config rule because the account already contains
-- the maximum number of 150 rules. Consider deleting any deactivated rules
-- before you add new rules.
_MaxNumberOfConfigRulesExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfConfigRulesExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfConfigRulesExceededException"

-- | There are no configuration recorders available to provide the role
-- needed to describe your resources. Create a configuration recorder.
_NoAvailableConfigurationRecorderException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoAvailableConfigurationRecorderException =
  Prelude._MatchServiceError
    defaultService
    "NoAvailableConfigurationRecorderException"

-- | The specified Amazon S3 bucket does not exist.
_NoSuchBucketException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchBucketException =
  Prelude._MatchServiceError
    defaultService
    "NoSuchBucketException"

-- | You have reached the limit (100,000) of active custom resource types in
-- your account. Delete unused resources using @DeleteResourceConfig@.
_MaxActiveResourcesExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxActiveResourcesExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxActiveResourcesExceededException"

-- | Failed to add the retention configuration because a retention
-- configuration with that name already exists.
_MaxNumberOfRetentionConfigurationsExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxNumberOfRetentionConfigurationsExceededException =
  Prelude._MatchServiceError
    defaultService
    "MaxNumberOfRetentionConfigurationsExceededException"

-- | AWS Config resource cannot be created because your organization does not
-- have all features enabled.
_OrganizationAllFeaturesNotEnabledException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OrganizationAllFeaturesNotEnabledException =
  Prelude._MatchServiceError
    defaultService
    "OrganizationAllFeaturesNotEnabledException"

-- | Indicates one of the following errors:
--
-- -   For PutConfigRule, the rule cannot be created because the IAM role
--     assigned to AWS Config lacks permissions to perform the config:Put*
--     action.
--
-- -   For PutConfigRule, the AWS Lambda function cannot be invoked. Check
--     the function ARN, and check the function\'s permissions.
--
-- -   For PutOrganizationConfigRule, organization config rule cannot be
--     created because you do not have permissions to call IAM @GetRole@
--     action or create a service linked role.
--
-- -   For PutConformancePack and PutOrganizationConformancePack, a
--     conformance pack cannot be created because you do not have
--     permissions:
--
--     -   To call IAM @GetRole@ action or create a service linked role.
--
--     -   To read Amazon S3 bucket.
_InsufficientPermissionsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientPermissionsException =
  Prelude._MatchServiceError
    defaultService
    "InsufficientPermissionsException"

-- | Remediation action is in progress. You can either cancel execution in
-- AWS Systems Manager or wait and try again later.
_RemediationInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RemediationInProgressException =
  Prelude._MatchServiceError
    defaultService
    "RemediationInProgressException"

-- | You have specified a resource that is either unknown or has not been
-- discovered.
_ResourceNotDiscoveredException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotDiscoveredException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotDiscoveredException"

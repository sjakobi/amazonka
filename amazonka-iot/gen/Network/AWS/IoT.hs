{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS IoT__
--
-- AWS IoT provides secure, bi-directional communication between Internet-connected devices (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. You can discover your custom IoT-Data endpoint to communicate with, configure rules for data processing and integration with other services, organize resources associated with each device (Registry), configure logging, and create and manage policies and credentials to authenticate devices.
--
-- The service endpoints that expose this API are listed in <https://docs.aws.amazon.com/general/latest/gr/iot-core.html AWS IoT Core Endpoints and Quotas> . You must use the endpoint for the region that has the resources you want to access.
--
-- The service name used by <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html AWS Signature Version 4> to sign the request is: /execute-api/ .
--
-- For more information about how AWS IoT works, see the <https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html Developer Guide> .
--
-- For information about how to use the credentials provider for AWS IoT, see <https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html Authorizing Direct Calls to AWS Services> .
module Network.AWS.IoT
  ( -- * Service Configuration
    ioT,

    -- * Errors
    -- $errors

    -- ** IndexNotReadyException
    _IndexNotReadyException,

    -- ** TransferAlreadyCompletedException
    _TransferAlreadyCompletedException,

    -- ** InvalidQueryException
    _InvalidQueryException,

    -- ** CertificateConflictException
    _CertificateConflictException,

    -- ** TaskAlreadyExistsException
    _TaskAlreadyExistsException,

    -- ** CertificateValidationException
    _CertificateValidationException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InternalException
    _InternalException,

    -- ** MalformedPolicyException
    _MalformedPolicyException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** CertificateStateException
    _CertificateStateException,

    -- ** InvalidAggregationException
    _InvalidAggregationException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ResourceRegistrationFailureException
    _ResourceRegistrationFailureException,

    -- ** SqlParseException
    _SqlParseException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** InvalidStateTransitionException
    _InvalidStateTransitionException,

    -- ** NotConfiguredException
    _NotConfiguredException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** VersionConflictException
    _VersionConflictException,

    -- ** RegistrationCodeValidationException
    _RegistrationCodeValidationException,

    -- ** VersionsLimitExceededException
    _VersionsLimitExceededException,

    -- ** InternalFailureException
    _InternalFailureException,

    -- ** DeleteConflictException
    _DeleteConflictException,

    -- ** InvalidResponseException
    _InvalidResponseException,

    -- ** TransferConflictException
    _TransferConflictException,

    -- ** ConflictingResourceUpdateException
    _ConflictingResourceUpdateException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListThingRegistrationTaskReports (Paginated)
    module Network.AWS.IoT.ListThingRegistrationTaskReports,

    -- ** CreateProvisioningClaim
    module Network.AWS.IoT.CreateProvisioningClaim,

    -- ** UpdateIndexingConfiguration
    module Network.AWS.IoT.UpdateIndexingConfiguration,

    -- ** CreatePolicy
    module Network.AWS.IoT.CreatePolicy,

    -- ** DeleteCertificate
    module Network.AWS.IoT.DeleteCertificate,

    -- ** ListSecurityProfiles (Paginated)
    module Network.AWS.IoT.ListSecurityProfiles,

    -- ** DeleteJobExecution
    module Network.AWS.IoT.DeleteJobExecution,

    -- ** ListMitigationActions (Paginated)
    module Network.AWS.IoT.ListMitigationActions,

    -- ** StartDetectMitigationActionsTask
    module Network.AWS.IoT.StartDetectMitigationActionsTask,

    -- ** GetCardinality
    module Network.AWS.IoT.GetCardinality,

    -- ** ListViolationEvents (Paginated)
    module Network.AWS.IoT.ListViolationEvents,

    -- ** UpdateCertificate
    module Network.AWS.IoT.UpdateCertificate,

    -- ** DeleteMitigationAction
    module Network.AWS.IoT.DeleteMitigationAction,

    -- ** UpdateMitigationAction
    module Network.AWS.IoT.UpdateMitigationAction,

    -- ** DescribeProvisioningTemplate
    module Network.AWS.IoT.DescribeProvisioningTemplate,

    -- ** ListPolicies (Paginated)
    module Network.AWS.IoT.ListPolicies,

    -- ** CreateDimension
    module Network.AWS.IoT.CreateDimension,

    -- ** UpdateDomainConfiguration
    module Network.AWS.IoT.UpdateDomainConfiguration,

    -- ** CancelJob
    module Network.AWS.IoT.CancelJob,

    -- ** ListAuditTasks (Paginated)
    module Network.AWS.IoT.ListAuditTasks,

    -- ** RejectCertificateTransfer
    module Network.AWS.IoT.RejectCertificateTransfer,

    -- ** DeletePolicy
    module Network.AWS.IoT.DeletePolicy,

    -- ** SetLoggingOptions
    module Network.AWS.IoT.SetLoggingOptions,

    -- ** CreateMitigationAction
    module Network.AWS.IoT.CreateMitigationAction,

    -- ** GetTopicRule
    module Network.AWS.IoT.GetTopicRule,

    -- ** DescribeThingType
    module Network.AWS.IoT.DescribeThingType,

    -- ** ListThingsInThingGroup (Paginated)
    module Network.AWS.IoT.ListThingsInThingGroup,

    -- ** DescribeScheduledAudit
    module Network.AWS.IoT.DescribeScheduledAudit,

    -- ** ListDomainConfigurations (Paginated)
    module Network.AWS.IoT.ListDomainConfigurations,

    -- ** DeleteDomainConfiguration
    module Network.AWS.IoT.DeleteDomainConfiguration,

    -- ** GetV2LoggingOptions
    module Network.AWS.IoT.GetV2LoggingOptions,

    -- ** CreateSecurityProfile
    module Network.AWS.IoT.CreateSecurityProfile,

    -- ** DeleteTopicRule
    module Network.AWS.IoT.DeleteTopicRule,

    -- ** DeleteCACertificate
    module Network.AWS.IoT.DeleteCACertificate,

    -- ** DeleteCustomMetric
    module Network.AWS.IoT.DeleteCustomMetric,

    -- ** UpdateCustomMetric
    module Network.AWS.IoT.UpdateCustomMetric,

    -- ** CancelAuditTask
    module Network.AWS.IoT.CancelAuditTask,

    -- ** ListRoleAliases (Paginated)
    module Network.AWS.IoT.ListRoleAliases,

    -- ** StartAuditMitigationActionsTask
    module Network.AWS.IoT.StartAuditMitigationActionsTask,

    -- ** AttachSecurityProfile
    module Network.AWS.IoT.AttachSecurityProfile,

    -- ** DeleteJob
    module Network.AWS.IoT.DeleteJob,

    -- ** TransferCertificate
    module Network.AWS.IoT.TransferCertificate,

    -- ** CreateKeysAndCertificate
    module Network.AWS.IoT.CreateKeysAndCertificate,

    -- ** UpdateCACertificate
    module Network.AWS.IoT.UpdateCACertificate,

    -- ** UpdateJob
    module Network.AWS.IoT.UpdateJob,

    -- ** CreateRoleAlias
    module Network.AWS.IoT.CreateRoleAlias,

    -- ** ListThingsInBillingGroup (Paginated)
    module Network.AWS.IoT.ListThingsInBillingGroup,

    -- ** ListTargetsForSecurityProfile (Paginated)
    module Network.AWS.IoT.ListTargetsForSecurityProfile,

    -- ** ListCustomMetrics (Paginated)
    module Network.AWS.IoT.ListCustomMetrics,

    -- ** DescribeProvisioningTemplateVersion
    module Network.AWS.IoT.DescribeProvisioningTemplateVersion,

    -- ** GetPercentiles
    module Network.AWS.IoT.GetPercentiles,

    -- ** CreatePolicyVersion
    module Network.AWS.IoT.CreatePolicyVersion,

    -- ** DescribeEndpoint
    module Network.AWS.IoT.DescribeEndpoint,

    -- ** SetDefaultPolicyVersion
    module Network.AWS.IoT.SetDefaultPolicyVersion,

    -- ** CreateCustomMetric
    module Network.AWS.IoT.CreateCustomMetric,

    -- ** DisableTopicRule
    module Network.AWS.IoT.DisableTopicRule,

    -- ** UntagResource
    module Network.AWS.IoT.UntagResource,

    -- ** DescribeAuditMitigationActionsTask
    module Network.AWS.IoT.DescribeAuditMitigationActionsTask,

    -- ** SetV2LoggingLevel
    module Network.AWS.IoT.SetV2LoggingLevel,

    -- ** ListJobExecutionsForThing (Paginated)
    module Network.AWS.IoT.ListJobExecutionsForThing,

    -- ** CreateThing
    module Network.AWS.IoT.CreateThing,

    -- ** DescribeCertificate
    module Network.AWS.IoT.DescribeCertificate,

    -- ** UpdateProvisioningTemplate
    module Network.AWS.IoT.UpdateProvisioningTemplate,

    -- ** StartThingRegistrationTask
    module Network.AWS.IoT.StartThingRegistrationTask,

    -- ** SetDefaultAuthorizer
    module Network.AWS.IoT.SetDefaultAuthorizer,

    -- ** DeleteProvisioningTemplate
    module Network.AWS.IoT.DeleteProvisioningTemplate,

    -- ** DescribeMitigationAction
    module Network.AWS.IoT.DescribeMitigationAction,

    -- ** DeleteV2LoggingLevel
    module Network.AWS.IoT.DeleteV2LoggingLevel,

    -- ** DescribeJobExecution
    module Network.AWS.IoT.DescribeJobExecution,

    -- ** StopThingRegistrationTask
    module Network.AWS.IoT.StopThingRegistrationTask,

    -- ** CreateScheduledAudit
    module Network.AWS.IoT.CreateScheduledAudit,

    -- ** GetIndexingConfiguration
    module Network.AWS.IoT.GetIndexingConfiguration,

    -- ** TagResource
    module Network.AWS.IoT.TagResource,

    -- ** ListV2LoggingLevels (Paginated)
    module Network.AWS.IoT.ListV2LoggingLevels,

    -- ** ListProvisioningTemplates (Paginated)
    module Network.AWS.IoT.ListProvisioningTemplates,

    -- ** ListAuditMitigationActionsExecutions (Paginated)
    module Network.AWS.IoT.ListAuditMitigationActionsExecutions,

    -- ** DeleteAuditSuppression
    module Network.AWS.IoT.DeleteAuditSuppression,

    -- ** ListDetectMitigationActionsTasks (Paginated)
    module Network.AWS.IoT.ListDetectMitigationActionsTasks,

    -- ** UpdateStream
    module Network.AWS.IoT.UpdateStream,

    -- ** DeleteRegistrationCode
    module Network.AWS.IoT.DeleteRegistrationCode,

    -- ** CreateAuthorizer
    module Network.AWS.IoT.CreateAuthorizer,

    -- ** DescribeDimension
    module Network.AWS.IoT.DescribeDimension,

    -- ** DeleteStream
    module Network.AWS.IoT.DeleteStream,

    -- ** DeleteAccountAuditConfiguration
    module Network.AWS.IoT.DeleteAccountAuditConfiguration,

    -- ** ListThings (Paginated)
    module Network.AWS.IoT.ListThings,

    -- ** SetV2LoggingOptions
    module Network.AWS.IoT.SetV2LoggingOptions,

    -- ** UpdateThing
    module Network.AWS.IoT.UpdateThing,

    -- ** AddThingToThingGroup
    module Network.AWS.IoT.AddThingToThingGroup,

    -- ** GetLoggingOptions
    module Network.AWS.IoT.GetLoggingOptions,

    -- ** UpdateAuditSuppression
    module Network.AWS.IoT.UpdateAuditSuppression,

    -- ** ListScheduledAudits (Paginated)
    module Network.AWS.IoT.ListScheduledAudits,

    -- ** AttachThingPrincipal
    module Network.AWS.IoT.AttachThingPrincipal,

    -- ** DeleteThing
    module Network.AWS.IoT.DeleteThing,

    -- ** ListCertificatesByCA (Paginated)
    module Network.AWS.IoT.ListCertificatesByCA,

    -- ** ListThingGroupsForThing (Paginated)
    module Network.AWS.IoT.ListThingGroupsForThing,

    -- ** UpdateBillingGroup
    module Network.AWS.IoT.UpdateBillingGroup,

    -- ** DeleteBillingGroup
    module Network.AWS.IoT.DeleteBillingGroup,

    -- ** UpdateAccountAuditConfiguration
    module Network.AWS.IoT.UpdateAccountAuditConfiguration,

    -- ** DescribeThingRegistrationTask
    module Network.AWS.IoT.DescribeThingRegistrationTask,

    -- ** DescribeCustomMetric
    module Network.AWS.IoT.DescribeCustomMetric,

    -- ** DescribeCACertificate
    module Network.AWS.IoT.DescribeCACertificate,

    -- ** DeleteProvisioningTemplateVersion
    module Network.AWS.IoT.DeleteProvisioningTemplateVersion,

    -- ** DeleteOTAUpdate
    module Network.AWS.IoT.DeleteOTAUpdate,

    -- ** RegisterCertificateWithoutCA
    module Network.AWS.IoT.RegisterCertificateWithoutCA,

    -- ** ListDetectMitigationActionsExecutions (Paginated)
    module Network.AWS.IoT.ListDetectMitigationActionsExecutions,

    -- ** CreateDynamicThingGroup
    module Network.AWS.IoT.CreateDynamicThingGroup,

    -- ** GetRegistrationCode
    module Network.AWS.IoT.GetRegistrationCode,

    -- ** DescribeJob
    module Network.AWS.IoT.DescribeJob,

    -- ** DetachSecurityProfile
    module Network.AWS.IoT.DetachSecurityProfile,

    -- ** TestInvokeAuthorizer
    module Network.AWS.IoT.TestInvokeAuthorizer,

    -- ** RemoveThingFromThingGroup
    module Network.AWS.IoT.RemoveThingFromThingGroup,

    -- ** GetBehaviorModelTrainingSummaries (Paginated)
    module Network.AWS.IoT.GetBehaviorModelTrainingSummaries,

    -- ** CreateProvisioningTemplateVersion
    module Network.AWS.IoT.CreateProvisioningTemplateVersion,

    -- ** ListPrincipalThings (Paginated)
    module Network.AWS.IoT.ListPrincipalThings,

    -- ** ListAuditMitigationActionsTasks (Paginated)
    module Network.AWS.IoT.ListAuditMitigationActionsTasks,

    -- ** DescribeRoleAlias
    module Network.AWS.IoT.DescribeRoleAlias,

    -- ** CreateTopicRuleDestination
    module Network.AWS.IoT.CreateTopicRuleDestination,

    -- ** CreateOTAUpdate
    module Network.AWS.IoT.CreateOTAUpdate,

    -- ** DeleteDynamicThingGroup
    module Network.AWS.IoT.DeleteDynamicThingGroup,

    -- ** UpdateDynamicThingGroup
    module Network.AWS.IoT.UpdateDynamicThingGroup,

    -- ** DetachPolicy
    module Network.AWS.IoT.DetachPolicy,

    -- ** ListThingPrincipals (Paginated)
    module Network.AWS.IoT.ListThingPrincipals,

    -- ** DescribeDefaultAuthorizer
    module Network.AWS.IoT.DescribeDefaultAuthorizer,

    -- ** CreateThingGroup
    module Network.AWS.IoT.CreateThingGroup,

    -- ** RegisterCertificate
    module Network.AWS.IoT.RegisterCertificate,

    -- ** DeleteSecurityProfile
    module Network.AWS.IoT.DeleteSecurityProfile,

    -- ** ValidateSecurityProfileBehaviors
    module Network.AWS.IoT.ValidateSecurityProfileBehaviors,

    -- ** CreateDomainConfiguration
    module Network.AWS.IoT.CreateDomainConfiguration,

    -- ** GetPolicyVersion
    module Network.AWS.IoT.GetPolicyVersion,

    -- ** ListCertificates (Paginated)
    module Network.AWS.IoT.ListCertificates,

    -- ** UpdateSecurityProfile
    module Network.AWS.IoT.UpdateSecurityProfile,

    -- ** ListActiveViolations (Paginated)
    module Network.AWS.IoT.ListActiveViolations,

    -- ** DescribeAuthorizer
    module Network.AWS.IoT.DescribeAuthorizer,

    -- ** DescribeAccountAuditConfiguration
    module Network.AWS.IoT.DescribeAccountAuditConfiguration,

    -- ** DeprecateThingType
    module Network.AWS.IoT.DeprecateThingType,

    -- ** DeleteDimension
    module Network.AWS.IoT.DeleteDimension,

    -- ** DescribeBillingGroup
    module Network.AWS.IoT.DescribeBillingGroup,

    -- ** UpdateDimension
    module Network.AWS.IoT.UpdateDimension,

    -- ** ConfirmTopicRuleDestination
    module Network.AWS.IoT.ConfirmTopicRuleDestination,

    -- ** DescribeDetectMitigationActionsTask
    module Network.AWS.IoT.DescribeDetectMitigationActionsTask,

    -- ** ListThingRegistrationTasks (Paginated)
    module Network.AWS.IoT.ListThingRegistrationTasks,

    -- ** ListDimensions (Paginated)
    module Network.AWS.IoT.ListDimensions,

    -- ** DescribeAuditSuppression
    module Network.AWS.IoT.DescribeAuditSuppression,

    -- ** ListAuditFindings (Paginated)
    module Network.AWS.IoT.ListAuditFindings,

    -- ** DescribeThing
    module Network.AWS.IoT.DescribeThing,

    -- ** DescribeStream
    module Network.AWS.IoT.DescribeStream,

    -- ** DetachThingPrincipal
    module Network.AWS.IoT.DetachThingPrincipal,

    -- ** StartOnDemandAuditTask
    module Network.AWS.IoT.StartOnDemandAuditTask,

    -- ** ListAttachedPolicies (Paginated)
    module Network.AWS.IoT.ListAttachedPolicies,

    -- ** GetPolicy
    module Network.AWS.IoT.GetPolicy,

    -- ** ListCACertificates (Paginated)
    module Network.AWS.IoT.ListCACertificates,

    -- ** EnableTopicRule
    module Network.AWS.IoT.EnableTopicRule,

    -- ** ListJobs (Paginated)
    module Network.AWS.IoT.ListJobs,

    -- ** RegisterCACertificate
    module Network.AWS.IoT.RegisterCACertificate,

    -- ** ListSecurityProfilesForTarget (Paginated)
    module Network.AWS.IoT.ListSecurityProfilesForTarget,

    -- ** UpdateEventConfigurations
    module Network.AWS.IoT.UpdateEventConfigurations,

    -- ** GetJobDocument
    module Network.AWS.IoT.GetJobDocument,

    -- ** ListTopicRules (Paginated)
    module Network.AWS.IoT.ListTopicRules,

    -- ** DescribeThingGroup
    module Network.AWS.IoT.DescribeThingGroup,

    -- ** AcceptCertificateTransfer
    module Network.AWS.IoT.AcceptCertificateTransfer,

    -- ** UpdateThingGroupsForThing
    module Network.AWS.IoT.UpdateThingGroupsForThing,

    -- ** ListTargetsForPolicy (Paginated)
    module Network.AWS.IoT.ListTargetsForPolicy,

    -- ** ReplaceTopicRule
    module Network.AWS.IoT.ReplaceTopicRule,

    -- ** DescribeIndex
    module Network.AWS.IoT.DescribeIndex,

    -- ** DeletePolicyVersion
    module Network.AWS.IoT.DeletePolicyVersion,

    -- ** AttachPolicy
    module Network.AWS.IoT.AttachPolicy,

    -- ** ClearDefaultAuthorizer
    module Network.AWS.IoT.ClearDefaultAuthorizer,

    -- ** CreateTopicRule
    module Network.AWS.IoT.CreateTopicRule,

    -- ** CreateJob
    module Network.AWS.IoT.CreateJob,

    -- ** UpdateRoleAlias
    module Network.AWS.IoT.UpdateRoleAlias,

    -- ** DeleteRoleAlias
    module Network.AWS.IoT.DeleteRoleAlias,

    -- ** GetStatistics
    module Network.AWS.IoT.GetStatistics,

    -- ** AssociateTargetsWithJob
    module Network.AWS.IoT.AssociateTargetsWithJob,

    -- ** ListPolicyVersions
    module Network.AWS.IoT.ListPolicyVersions,

    -- ** CancelJobExecution
    module Network.AWS.IoT.CancelJobExecution,

    -- ** CancelCertificateTransfer
    module Network.AWS.IoT.CancelCertificateTransfer,

    -- ** CreateThingType
    module Network.AWS.IoT.CreateThingType,

    -- ** UpdateAuthorizer
    module Network.AWS.IoT.UpdateAuthorizer,

    -- ** SearchIndex
    module Network.AWS.IoT.SearchIndex,

    -- ** DescribeSecurityProfile
    module Network.AWS.IoT.DescribeSecurityProfile,

    -- ** ListJobExecutionsForJob (Paginated)
    module Network.AWS.IoT.ListJobExecutionsForJob,

    -- ** CreateBillingGroup
    module Network.AWS.IoT.CreateBillingGroup,

    -- ** CancelAuditMitigationActionsTask
    module Network.AWS.IoT.CancelAuditMitigationActionsTask,

    -- ** CreateStream
    module Network.AWS.IoT.CreateStream,

    -- ** RemoveThingFromBillingGroup
    module Network.AWS.IoT.RemoveThingFromBillingGroup,

    -- ** ListAuthorizers (Paginated)
    module Network.AWS.IoT.ListAuthorizers,

    -- ** DeleteAuthorizer
    module Network.AWS.IoT.DeleteAuthorizer,

    -- ** CreateAuditSuppression
    module Network.AWS.IoT.CreateAuditSuppression,

    -- ** CreateProvisioningTemplate
    module Network.AWS.IoT.CreateProvisioningTemplate,

    -- ** GetTopicRuleDestination
    module Network.AWS.IoT.GetTopicRuleDestination,

    -- ** DescribeAuditTask
    module Network.AWS.IoT.DescribeAuditTask,

    -- ** DescribeDomainConfiguration
    module Network.AWS.IoT.DescribeDomainConfiguration,

    -- ** ListStreams (Paginated)
    module Network.AWS.IoT.ListStreams,

    -- ** ListAuditSuppressions (Paginated)
    module Network.AWS.IoT.ListAuditSuppressions,

    -- ** CreateCertificateFromCSR
    module Network.AWS.IoT.CreateCertificateFromCSR,

    -- ** GetOTAUpdate
    module Network.AWS.IoT.GetOTAUpdate,

    -- ** GetEffectivePolicies
    module Network.AWS.IoT.GetEffectivePolicies,

    -- ** UpdateScheduledAudit
    module Network.AWS.IoT.UpdateScheduledAudit,

    -- ** DescribeAuditFinding
    module Network.AWS.IoT.DescribeAuditFinding,

    -- ** DeleteScheduledAudit
    module Network.AWS.IoT.DeleteScheduledAudit,

    -- ** ListBillingGroups (Paginated)
    module Network.AWS.IoT.ListBillingGroups,

    -- ** TestAuthorization
    module Network.AWS.IoT.TestAuthorization,

    -- ** ListThingTypes (Paginated)
    module Network.AWS.IoT.ListThingTypes,

    -- ** ListIndices (Paginated)
    module Network.AWS.IoT.ListIndices,

    -- ** DeleteThingType
    module Network.AWS.IoT.DeleteThingType,

    -- ** RegisterThing
    module Network.AWS.IoT.RegisterThing,

    -- ** ListOutgoingCertificates (Paginated)
    module Network.AWS.IoT.ListOutgoingCertificates,

    -- ** DeleteTopicRuleDestination
    module Network.AWS.IoT.DeleteTopicRuleDestination,

    -- ** ListTagsForResource (Paginated)
    module Network.AWS.IoT.ListTagsForResource,

    -- ** ListTopicRuleDestinations (Paginated)
    module Network.AWS.IoT.ListTopicRuleDestinations,

    -- ** CancelDetectMitigationActionsTask
    module Network.AWS.IoT.CancelDetectMitigationActionsTask,

    -- ** AddThingToBillingGroup
    module Network.AWS.IoT.AddThingToBillingGroup,

    -- ** DeleteThingGroup
    module Network.AWS.IoT.DeleteThingGroup,

    -- ** DescribeEventConfigurations
    module Network.AWS.IoT.DescribeEventConfigurations,

    -- ** UpdateTopicRuleDestination
    module Network.AWS.IoT.UpdateTopicRuleDestination,

    -- ** ListOTAUpdates (Paginated)
    module Network.AWS.IoT.ListOTAUpdates,

    -- ** ListThingGroups (Paginated)
    module Network.AWS.IoT.ListThingGroups,

    -- ** ListProvisioningTemplateVersions (Paginated)
    module Network.AWS.IoT.ListProvisioningTemplateVersions,

    -- ** UpdateThingGroup
    module Network.AWS.IoT.UpdateThingGroup,

    -- * Types

    -- ** AWSJobAbortCriteriaAbortAction
    AWSJobAbortCriteriaAbortAction (..),

    -- ** AWSJobAbortCriteriaFailureType
    AWSJobAbortCriteriaFailureType (..),

    -- ** AbortAction
    AbortAction (..),

    -- ** ActionType
    ActionType (..),

    -- ** AlertTargetType
    AlertTargetType (..),

    -- ** AuditCheckRunStatus
    AuditCheckRunStatus (..),

    -- ** AuditFindingSeverity
    AuditFindingSeverity (..),

    -- ** AuditFrequency
    AuditFrequency (..),

    -- ** AuditMitigationActionsExecutionStatus
    AuditMitigationActionsExecutionStatus (..),

    -- ** AuditMitigationActionsTaskStatus
    AuditMitigationActionsTaskStatus (..),

    -- ** AuditNotificationType
    AuditNotificationType (..),

    -- ** AuditTaskStatus
    AuditTaskStatus (..),

    -- ** AuditTaskType
    AuditTaskType (..),

    -- ** AuthDecision
    AuthDecision (..),

    -- ** AuthorizerStatus
    AuthorizerStatus (..),

    -- ** AutoRegistrationStatus
    AutoRegistrationStatus (..),

    -- ** BehaviorCriteriaType
    BehaviorCriteriaType (..),

    -- ** CACertificateStatus
    CACertificateStatus (..),

    -- ** CACertificateUpdateAction
    CACertificateUpdateAction (..),

    -- ** CannedAccessControlList
    CannedAccessControlList (..),

    -- ** CertificateMode
    CertificateMode (..),

    -- ** CertificateStatus
    CertificateStatus (..),

    -- ** ComparisonOperator
    ComparisonOperator (..),

    -- ** ConfidenceLevel
    ConfidenceLevel (..),

    -- ** CustomMetricType
    CustomMetricType (..),

    -- ** DayOfWeek
    DayOfWeek (..),

    -- ** DetectMitigationActionExecutionStatus
    DetectMitigationActionExecutionStatus (..),

    -- ** DetectMitigationActionsTaskStatus
    DetectMitigationActionsTaskStatus (..),

    -- ** DeviceCertificateUpdateAction
    DeviceCertificateUpdateAction (..),

    -- ** DimensionType
    DimensionType (..),

    -- ** DimensionValueOperator
    DimensionValueOperator (..),

    -- ** DomainConfigurationStatus
    DomainConfigurationStatus (..),

    -- ** DomainType
    DomainType (..),

    -- ** DynamicGroupStatus
    DynamicGroupStatus (..),

    -- ** DynamoKeyType
    DynamoKeyType (..),

    -- ** EventType
    EventType (..),

    -- ** FieldType
    FieldType (..),

    -- ** IndexStatus
    IndexStatus (..),

    -- ** JobExecutionFailureType
    JobExecutionFailureType (..),

    -- ** JobExecutionStatus
    JobExecutionStatus (..),

    -- ** JobStatus
    JobStatus (..),

    -- ** LogLevel
    LogLevel (..),

    -- ** LogTargetType
    LogTargetType (..),

    -- ** MessageFormat
    MessageFormat (..),

    -- ** MitigationActionType
    MitigationActionType (..),

    -- ** ModelStatus
    ModelStatus (..),

    -- ** OTAUpdateStatus
    OTAUpdateStatus (..),

    -- ** PolicyTemplateName
    PolicyTemplateName (..),

    -- ** Protocol
    Protocol (..),

    -- ** ReportType
    ReportType (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** ServerCertificateStatus
    ServerCertificateStatus (..),

    -- ** ServiceType
    ServiceType (..),

    -- ** TargetSelection
    TargetSelection (..),

    -- ** TaskStatus
    TaskStatus (..),

    -- ** ThingConnectivityIndexingMode
    ThingConnectivityIndexingMode (..),

    -- ** ThingGroupIndexingMode
    ThingGroupIndexingMode (..),

    -- ** ThingIndexingMode
    ThingIndexingMode (..),

    -- ** TopicRuleDestinationStatus
    TopicRuleDestinationStatus (..),

    -- ** ViolationEventType
    ViolationEventType (..),

    -- ** AWSJobAbortConfig
    AWSJobAbortConfig,
    awsJobAbortConfig,
    ajacAbortCriteriaList,

    -- ** AWSJobAbortCriteria
    AWSJobAbortCriteria,
    awsJobAbortCriteria,
    ajacFailureType,
    ajacAction,
    ajacThresholdPercentage,
    ajacMinNumberOfExecutedThings,

    -- ** AWSJobExecutionsRolloutConfig
    AWSJobExecutionsRolloutConfig,
    awsJobExecutionsRolloutConfig,
    ajercExponentialRate,
    ajercMaximumPerMinute,

    -- ** AWSJobExponentialRolloutRate
    AWSJobExponentialRolloutRate,
    awsJobExponentialRolloutRate,
    ajerrBaseRatePerMinute,
    ajerrIncrementFactor,
    ajerrRateIncreaseCriteria,

    -- ** AWSJobPresignedURLConfig
    AWSJobPresignedURLConfig,
    awsJobPresignedURLConfig,
    ajpucExpiresInSec,

    -- ** AWSJobRateIncreaseCriteria
    AWSJobRateIncreaseCriteria,
    awsJobRateIncreaseCriteria,
    ajricNumberOfNotifiedThings,
    ajricNumberOfSucceededThings,

    -- ** AWSJobTimeoutConfig
    AWSJobTimeoutConfig,
    awsJobTimeoutConfig,
    ajtcInProgressTimeoutInMinutes,

    -- ** AbortConfig
    AbortConfig,
    abortConfig,
    acCriteriaList,

    -- ** AbortCriteria
    AbortCriteria,
    abortCriteria,
    acFailureType,
    acAction,
    acThresholdPercentage,
    acMinNumberOfExecutedThings,

    -- ** Action
    Action,
    action,
    aCloudwatchLogs,
    aCloudwatchMetric,
    aSqs,
    aTimestream,
    aFirehose,
    aSns,
    aElasticsearch,
    aKinesis,
    aSalesforce,
    aDynamoDBv2,
    aLambda,
    aIotAnalytics,
    aIotSiteWise,
    aRepublish,
    aKafka,
    aDynamoDB,
    aStepFunctions,
    aCloudwatchAlarm,
    aHttp,
    aS3,
    aIotEvents,

    -- ** ActiveViolation
    ActiveViolation,
    activeViolation,
    avViolationId,
    avLastViolationTime,
    avThingName,
    avLastViolationValue,
    avSecurityProfileName,
    avBehavior,
    avViolationStartTime,
    avViolationEventAdditionalInfo,

    -- ** AddThingsToThingGroupParams
    AddThingsToThingGroupParams,
    addThingsToThingGroupParams,
    atttgpOverrideDynamicGroups,
    atttgpThingGroupNames,

    -- ** AlertTarget
    AlertTarget,
    alertTarget,
    atAlertTargetARN,
    atRoleARN,

    -- ** Allowed
    Allowed,
    allowed,
    aPolicies,

    -- ** AssetPropertyTimestamp
    AssetPropertyTimestamp,
    assetPropertyTimestamp,
    aptOffsetInNanos,
    aptTimeInSeconds,

    -- ** AssetPropertyValue
    AssetPropertyValue,
    assetPropertyValue,
    apvQuality,
    apvValue,
    apvTimestamp,

    -- ** AssetPropertyVariant
    AssetPropertyVariant,
    assetPropertyVariant,
    apvDoubleValue,
    apvStringValue,
    apvBooleanValue,
    apvIntegerValue,

    -- ** AttributePayload
    AttributePayload,
    attributePayload,
    apMerge,
    apAttributes,

    -- ** AuditCheckConfiguration
    AuditCheckConfiguration,
    auditCheckConfiguration,
    accEnabled,

    -- ** AuditCheckDetails
    AuditCheckDetails,
    auditCheckDetails,
    acdCheckCompliant,
    acdMessage,
    acdSuppressedNonCompliantResourcesCount,
    acdCheckRunStatus,
    acdTotalResourcesCount,
    acdErrorCode,
    acdNonCompliantResourcesCount,

    -- ** AuditFinding
    AuditFinding,
    auditFinding,
    afSeverity,
    afFindingId,
    afTaskId,
    afReasonForNonComplianceCode,
    afReasonForNonCompliance,
    afIsSuppressed,
    afCheckName,
    afRelatedResources,
    afFindingTime,
    afTaskStartTime,
    afNonCompliantResource,

    -- ** AuditMitigationActionExecutionMetadata
    AuditMitigationActionExecutionMetadata,
    auditMitigationActionExecutionMetadata,
    amaemStatus,
    amaemActionName,
    amaemMessage,
    amaemActionId,
    amaemFindingId,
    amaemTaskId,
    amaemStartTime,
    amaemEndTime,
    amaemErrorCode,

    -- ** AuditMitigationActionsTaskMetadata
    AuditMitigationActionsTaskMetadata,
    auditMitigationActionsTaskMetadata,
    amatmTaskId,
    amatmStartTime,
    amatmTaskStatus,

    -- ** AuditMitigationActionsTaskTarget
    AuditMitigationActionsTaskTarget,
    auditMitigationActionsTaskTarget,
    amattFindingIds,
    amattAuditTaskId,
    amattAuditCheckToReasonCodeFilter,

    -- ** AuditNotificationTarget
    AuditNotificationTarget,
    auditNotificationTarget,
    antRoleARN,
    antEnabled,
    antTargetARN,

    -- ** AuditSuppression
    AuditSuppression,
    auditSuppression,
    asExpirationDate,
    asDescription,
    asSuppressIndefinitely,
    asCheckName,
    asResourceIdentifier,

    -- ** AuditTaskMetadata
    AuditTaskMetadata,
    auditTaskMetadata,
    atmTaskId,
    atmTaskStatus,
    atmTaskType,

    -- ** AuthInfo
    AuthInfo,
    authInfo,
    aiActionType,
    aiResources,

    -- ** AuthResult
    AuthResult,
    authResult,
    arAuthInfo,
    arAllowed,
    arDenied,
    arMissingContextValues,
    arAuthDecision,

    -- ** AuthorizerConfig
    AuthorizerConfig,
    authorizerConfig,
    acAllowAuthorizerOverride,
    acDefaultAuthorizerName,

    -- ** AuthorizerDescription
    AuthorizerDescription,
    authorizerDescription,
    adLastModifiedDate,
    adStatus,
    adAuthorizerARN,
    adAuthorizerFunctionARN,
    adCreationDate,
    adTokenSigningPublicKeys,
    adAuthorizerName,
    adSigningDisabled,
    adTokenKeyName,

    -- ** AuthorizerSummary
    AuthorizerSummary,
    authorizerSummary,
    asAuthorizerARN,
    asAuthorizerName,

    -- ** Behavior
    Behavior,
    behavior,
    bMetricDimension,
    bSuppressAlerts,
    bMetric,
    bCriteria,
    bName,

    -- ** BehaviorCriteria
    BehaviorCriteria,
    behaviorCriteria,
    bcComparisonOperator,
    bcConsecutiveDatapointsToAlarm,
    bcStatisticalThreshold,
    bcMlDetectionConfig,
    bcConsecutiveDatapointsToClear,
    bcValue,
    bcDurationSeconds,

    -- ** BehaviorModelTrainingSummary
    BehaviorModelTrainingSummary,
    behaviorModelTrainingSummary,
    bmtsLastModelRefreshDate,
    bmtsDatapointsCollectionPercentage,
    bmtsModelStatus,
    bmtsBehaviorName,
    bmtsTrainingDataCollectionStartDate,
    bmtsSecurityProfileName,

    -- ** BillingGroupMetadata
    BillingGroupMetadata,
    billingGroupMetadata,
    bgmCreationDate,

    -- ** BillingGroupProperties
    BillingGroupProperties,
    billingGroupProperties,
    bgpBillingGroupDescription,

    -- ** CACertificate
    CACertificate,
    cACertificate,
    cacStatus,
    cacCertificateARN,
    cacCreationDate,
    cacCertificateId,

    -- ** CACertificateDescription
    CACertificateDescription,
    cACertificateDescription,
    cacdLastModifiedDate,
    cacdStatus,
    cacdCertificateARN,
    cacdCreationDate,
    cacdOwnedBy,
    cacdCustomerVersion,
    cacdGenerationId,
    cacdCertificateId,
    cacdCertificatePem,
    cacdValidity,
    cacdAutoRegistrationStatus,

    -- ** Certificate
    Certificate,
    certificate,
    cStatus,
    cCertificateMode,
    cCertificateARN,
    cCreationDate,
    cCertificateId,

    -- ** CertificateDescription
    CertificateDescription,
    certificateDescription,
    cdLastModifiedDate,
    cdStatus,
    cdCertificateMode,
    cdCertificateARN,
    cdPreviousOwnedBy,
    cdCreationDate,
    cdOwnedBy,
    cdCustomerVersion,
    cdGenerationId,
    cdTransferData,
    cdCertificateId,
    cdCertificatePem,
    cdValidity,
    cdCaCertificateId,

    -- ** CertificateValidity
    CertificateValidity,
    certificateValidity,
    cvNotBefore,
    cvNotAfter,

    -- ** CloudwatchAlarmAction
    CloudwatchAlarmAction,
    cloudwatchAlarmAction,
    caaRoleARN,
    caaAlarmName,
    caaStateReason,
    caaStateValue,

    -- ** CloudwatchLogsAction
    CloudwatchLogsAction,
    cloudwatchLogsAction,
    claRoleARN,
    claLogGroupName,

    -- ** CloudwatchMetricAction
    CloudwatchMetricAction,
    cloudwatchMetricAction,
    cmaMetricTimestamp,
    cmaRoleARN,
    cmaMetricNamespace,
    cmaMetricName,
    cmaMetricValue,
    cmaMetricUnit,

    -- ** CodeSigning
    CodeSigning,
    codeSigning,
    csStartSigningJobParameter,
    csAwsSignerJobId,
    csCustomCodeSigning,

    -- ** CodeSigningCertificateChain
    CodeSigningCertificateChain,
    codeSigningCertificateChain,
    csccInlineDocument,
    csccCertificateName,

    -- ** CodeSigningSignature
    CodeSigningSignature,
    codeSigningSignature,
    cssInlineDocument,

    -- ** Configuration
    Configuration,
    configuration,
    cEnabled,

    -- ** CustomCodeSigning
    CustomCodeSigning,
    customCodeSigning,
    ccsSignature,
    ccsSignatureAlgorithm,
    ccsCertificateChain,
    ccsHashAlgorithm,

    -- ** Denied
    Denied,
    denied,
    dImplicitDeny,
    dExplicitDeny,

    -- ** Destination
    Destination,
    destination,
    dS3Destination,

    -- ** DetectMitigationActionExecution
    DetectMitigationActionExecution,
    detectMitigationActionExecution,
    dmaeViolationId,
    dmaeStatus,
    dmaeActionName,
    dmaeExecutionStartDate,
    dmaeMessage,
    dmaeThingName,
    dmaeTaskId,
    dmaeExecutionEndDate,
    dmaeErrorCode,

    -- ** DetectMitigationActionsTaskStatistics
    DetectMitigationActionsTaskStatistics,
    detectMitigationActionsTaskStatistics,
    dmatsActionsFailed,
    dmatsActionsSkipped,
    dmatsActionsExecuted,

    -- ** DetectMitigationActionsTaskSummary
    DetectMitigationActionsTaskSummary,
    detectMitigationActionsTaskSummary,
    dmatsTaskEndTime,
    dmatsTaskStatistics,
    dmatsTaskId,
    dmatsViolationEventOccurrenceRange,
    dmatsOnlyActiveViolationsIncluded,
    dmatsTarget,
    dmatsTaskStatus,
    dmatsActionsDefinition,
    dmatsTaskStartTime,
    dmatsSuppressedAlertsIncluded,

    -- ** DetectMitigationActionsTaskTarget
    DetectMitigationActionsTaskTarget,
    detectMitigationActionsTaskTarget,
    dmattViolationIds,
    dmattBehaviorName,
    dmattSecurityProfileName,

    -- ** DomainConfigurationSummary
    DomainConfigurationSummary,
    domainConfigurationSummary,
    dcsDomainConfigurationARN,
    dcsDomainConfigurationName,
    dcsServiceType,

    -- ** DynamoDBAction
    DynamoDBAction,
    dynamoDBAction,
    ddbaRangeKeyValue,
    ddbaRangeKeyType,
    ddbaOperation,
    ddbaHashKeyType,
    ddbaRangeKeyField,
    ddbaPayloadField,
    ddbaTableName,
    ddbaRoleARN,
    ddbaHashKeyField,
    ddbaHashKeyValue,

    -- ** DynamoDBv2Action
    DynamoDBv2Action,
    dynamoDBv2Action,
    ddaRoleARN,
    ddaPutItem,

    -- ** EffectivePolicy
    EffectivePolicy,
    effectivePolicy,
    epPolicyName,
    epPolicyDocument,
    epPolicyARN,

    -- ** ElasticsearchAction
    ElasticsearchAction,
    elasticsearchAction,
    eaRoleARN,
    eaEndpoint,
    eaIndex,
    eaType,
    eaId,

    -- ** EnableIOTLoggingParams
    EnableIOTLoggingParams,
    enableIOTLoggingParams,
    eiotlpRoleARNForLogging,
    eiotlpLogLevel,

    -- ** ErrorInfo
    ErrorInfo,
    errorInfo,
    eiMessage,
    eiCode,

    -- ** ExplicitDeny
    ExplicitDeny,
    explicitDeny,
    edPolicies,

    -- ** ExponentialRolloutRate
    ExponentialRolloutRate,
    exponentialRolloutRate,
    errBaseRatePerMinute,
    errIncrementFactor,
    errRateIncreaseCriteria,

    -- ** Field
    Field,
    field,
    fName,
    fType,

    -- ** FileLocation
    FileLocation,
    fileLocation,
    flStream,
    flS3Location,

    -- ** FirehoseAction
    FirehoseAction,
    firehoseAction,
    faSeparator,
    faBatchMode,
    faRoleARN,
    faDeliveryStreamName,

    -- ** GroupNameAndARN
    GroupNameAndARN,
    groupNameAndARN,
    gnaaGroupName,
    gnaaGroupARN,

    -- ** HTTPAction
    HTTPAction,
    hTTPAction,
    httpaHeaders,
    httpaAuth,
    httpaConfirmationURL,
    httpaUrl,

    -- ** HTTPActionHeader
    HTTPActionHeader,
    hTTPActionHeader,
    httpahKey,
    httpahValue,

    -- ** HTTPAuthorization
    HTTPAuthorization,
    hTTPAuthorization,
    httpaSigv4,

    -- ** HTTPContext
    HTTPContext,
    hTTPContext,
    httpcQueryString,
    httpcHeaders,

    -- ** HTTPURLDestinationConfiguration
    HTTPURLDestinationConfiguration,
    hTTPURLDestinationConfiguration,
    httpudcConfirmationURL,

    -- ** HTTPURLDestinationProperties
    HTTPURLDestinationProperties,
    hTTPURLDestinationProperties,
    httpudpConfirmationURL,

    -- ** HTTPURLDestinationSummary
    HTTPURLDestinationSummary,
    hTTPURLDestinationSummary,
    httpudsConfirmationURL,

    -- ** ImplicitDeny
    ImplicitDeny,
    implicitDeny,
    idPolicies,

    -- ** IotAnalyticsAction
    IotAnalyticsAction,
    iotAnalyticsAction,
    iaaChannelName,
    iaaRoleARN,
    iaaBatchMode,
    iaaChannelARN,

    -- ** IotEventsAction
    IotEventsAction,
    iotEventsAction,
    ieaBatchMode,
    ieaMessageId,
    ieaInputName,
    ieaRoleARN,

    -- ** IotSiteWiseAction
    IotSiteWiseAction,
    iotSiteWiseAction,
    iswaPutAssetPropertyValueEntries,
    iswaRoleARN,

    -- ** Job
    Job,
    job,
    jobJobExecutionsRolloutConfig,
    jobStatus,
    jobTargetSelection,
    jobTimeoutConfig,
    jobReasonCode,
    jobNamespaceId,
    jobJobProcessDetails,
    jobComment,
    jobCompletedAt,
    jobCreatedAt,
    jobJobARN,
    jobTargets,
    jobForceCanceled,
    jobPresignedURLConfig,
    jobDescription,
    jobAbortConfig,
    jobLastUpdatedAt,
    jobJobId,

    -- ** JobExecution
    JobExecution,
    jobExecution,
    jeStartedAt,
    jeStatus,
    jeThingARN,
    jeStatusDetails,
    jeQueuedAt,
    jeForceCanceled,
    jeVersionNumber,
    jeExecutionNumber,
    jeApproximateSecondsBeforeTimedOut,
    jeLastUpdatedAt,
    jeJobId,

    -- ** JobExecutionStatusDetails
    JobExecutionStatusDetails,
    jobExecutionStatusDetails,
    jesdDetailsMap,

    -- ** JobExecutionSummary
    JobExecutionSummary,
    jobExecutionSummary,
    jesStartedAt,
    jesStatus,
    jesQueuedAt,
    jesExecutionNumber,
    jesLastUpdatedAt,

    -- ** JobExecutionSummaryForJob
    JobExecutionSummaryForJob,
    jobExecutionSummaryForJob,
    jesfjThingARN,
    jesfjJobExecutionSummary,

    -- ** JobExecutionSummaryForThing
    JobExecutionSummaryForThing,
    jobExecutionSummaryForThing,
    jesftJobExecutionSummary,
    jesftJobId,

    -- ** JobExecutionsRolloutConfig
    JobExecutionsRolloutConfig,
    jobExecutionsRolloutConfig,
    jercExponentialRate,
    jercMaximumPerMinute,

    -- ** JobProcessDetails
    JobProcessDetails,
    jobProcessDetails,
    jpdProcessingTargets,
    jpdNumberOfSucceededThings,
    jpdNumberOfQueuedThings,
    jpdNumberOfRemovedThings,
    jpdNumberOfInProgressThings,
    jpdNumberOfFailedThings,
    jpdNumberOfRejectedThings,
    jpdNumberOfCanceledThings,
    jpdNumberOfTimedOutThings,

    -- ** JobSummary
    JobSummary,
    jobSummary,
    jsStatus,
    jsTargetSelection,
    jsCompletedAt,
    jsCreatedAt,
    jsJobARN,
    jsThingGroupId,
    jsLastUpdatedAt,
    jsJobId,

    -- ** KafkaAction
    KafkaAction,
    kafkaAction,
    kaKey,
    kaPartition,
    kaDestinationARN,
    kaTopic,
    kaClientProperties,

    -- ** KeyPair
    KeyPair,
    keyPair,
    kpPublicKey,
    kpPrivateKey,

    -- ** KinesisAction
    KinesisAction,
    kinesisAction,
    kaPartitionKey,
    kaRoleARN,
    kaStreamName,

    -- ** LambdaAction
    LambdaAction,
    lambdaAction,
    laFunctionARN,

    -- ** LogTarget
    LogTarget,
    logTarget,
    ltTargetName,
    ltTargetType,

    -- ** LogTargetConfiguration
    LogTargetConfiguration,
    logTargetConfiguration,
    ltcLogLevel,
    ltcLogTarget,

    -- ** LoggingOptionsPayload
    LoggingOptionsPayload,
    loggingOptionsPayload,
    lopLogLevel,
    lopRoleARN,

    -- ** MachineLearningDetectionConfig
    MachineLearningDetectionConfig,
    machineLearningDetectionConfig,
    mldcConfidenceLevel,

    -- ** MetricDimension
    MetricDimension,
    metricDimension,
    mdOperator,
    mdDimensionName,

    -- ** MetricToRetain
    MetricToRetain,
    metricToRetain,
    mtrMetricDimension,
    mtrMetric,

    -- ** MetricValue
    MetricValue,
    metricValue,
    mvNumbers,
    mvPorts,
    mvCidrs,
    mvStrings,
    mvCount,
    mvNumber,

    -- ** MitigationAction
    MitigationAction,
    mitigationAction,
    maRoleARN,
    maId,
    maActionParams,
    maName,

    -- ** MitigationActionIdentifier
    MitigationActionIdentifier,
    mitigationActionIdentifier,
    maiActionName,
    maiActionARN,
    maiCreationDate,

    -- ** MitigationActionParams
    MitigationActionParams,
    mitigationActionParams,
    mapEnableIOTLoggingParams,
    mapReplaceDefaultPolicyVersionParams,
    mapUpdateDeviceCertificateParams,
    mapPublishFindingToSNSParams,
    mapAddThingsToThingGroupParams,
    mapUpdateCACertificateParams,

    -- ** MqttContext
    MqttContext,
    mqttContext,
    mcClientId,
    mcPassword,
    mcUsername,

    -- ** NonCompliantResource
    NonCompliantResource,
    nonCompliantResource,
    ncrAdditionalInfo,
    ncrResourceType,
    ncrResourceIdentifier,

    -- ** OTAUpdateFile
    OTAUpdateFile,
    oTAUpdateFile,
    otaufFileVersion,
    otaufFileLocation,
    otaufAttributes,
    otaufFileName,
    otaufFileType,
    otaufCodeSigning,

    -- ** OTAUpdateInfo
    OTAUpdateInfo,
    oTAUpdateInfo,
    otauiOtaUpdateStatus,
    otauiLastModifiedDate,
    otauiTargetSelection,
    otauiOtaUpdateARN,
    otauiAwsIotJobId,
    otauiCreationDate,
    otauiAwsIotJobARN,
    otauiProtocols,
    otauiTargets,
    otauiAwsJobPresignedURLConfig,
    otauiErrorInfo,
    otauiDescription,
    otauiOtaUpdateFiles,
    otauiOtaUpdateId,
    otauiAdditionalParameters,
    otauiAwsJobExecutionsRolloutConfig,

    -- ** OTAUpdateSummary
    OTAUpdateSummary,
    oTAUpdateSummary,
    otausOtaUpdateARN,
    otausCreationDate,
    otausOtaUpdateId,

    -- ** OutgoingCertificate
    OutgoingCertificate,
    outgoingCertificate,
    ocTransferDate,
    ocCertificateARN,
    ocTransferMessage,
    ocCreationDate,
    ocTransferredTo,
    ocCertificateId,

    -- ** PercentPair
    PercentPair,
    percentPair,
    ppPercent,
    ppValue,

    -- ** Policy
    Policy,
    policy,
    pPolicyName,
    pPolicyARN,

    -- ** PolicyVersion
    PolicyVersion,
    policyVersion,
    pvCreateDate,
    pvVersionId,
    pvIsDefaultVersion,

    -- ** PolicyVersionIdentifier
    PolicyVersionIdentifier,
    policyVersionIdentifier,
    pviPolicyVersionId,
    pviPolicyName,

    -- ** PresignedURLConfig
    PresignedURLConfig,
    presignedURLConfig,
    pucRoleARN,
    pucExpiresInSec,

    -- ** ProvisioningHook
    ProvisioningHook,
    provisioningHook,
    phPayloadVersion,
    phTargetARN,

    -- ** ProvisioningTemplateSummary
    ProvisioningTemplateSummary,
    provisioningTemplateSummary,
    ptsTemplateName,
    ptsLastModifiedDate,
    ptsEnabled,
    ptsCreationDate,
    ptsDescription,
    ptsTemplateARN,

    -- ** ProvisioningTemplateVersionSummary
    ProvisioningTemplateVersionSummary,
    provisioningTemplateVersionSummary,
    ptvsCreationDate,
    ptvsVersionId,
    ptvsIsDefaultVersion,

    -- ** PublishFindingToSNSParams
    PublishFindingToSNSParams,
    publishFindingToSNSParams,
    pftspTopicARN,

    -- ** PutAssetPropertyValueEntry
    PutAssetPropertyValueEntry,
    putAssetPropertyValueEntry,
    papveEntryId,
    papvePropertyAlias,
    papveAssetId,
    papvePropertyId,
    papvePropertyValues,

    -- ** PutItemInput
    PutItemInput,
    putItemInput,
    piiTableName,

    -- ** RateIncreaseCriteria
    RateIncreaseCriteria,
    rateIncreaseCriteria,
    ricNumberOfNotifiedThings,
    ricNumberOfSucceededThings,

    -- ** RegistrationConfig
    RegistrationConfig,
    registrationConfig,
    rcRoleARN,
    rcTemplateBody,

    -- ** RelatedResource
    RelatedResource,
    relatedResource,
    rrAdditionalInfo,
    rrResourceType,
    rrResourceIdentifier,

    -- ** ReplaceDefaultPolicyVersionParams
    ReplaceDefaultPolicyVersionParams,
    replaceDefaultPolicyVersionParams,
    rdpvpTemplateName,

    -- ** RepublishAction
    RepublishAction,
    republishAction,
    raQos,
    raRoleARN,
    raTopic,

    -- ** ResourceIdentifier
    ResourceIdentifier,
    resourceIdentifier,
    riRoleAliasARN,
    riClientId,
    riIamRoleARN,
    riCognitoIdentityPoolId,
    riAccount,
    riPolicyVersionIdentifier,
    riDeviceCertificateId,
    riCaCertificateId,

    -- ** RoleAliasDescription
    RoleAliasDescription,
    roleAliasDescription,
    radRoleAliasARN,
    radLastModifiedDate,
    radRoleARN,
    radCreationDate,
    radOwner,
    radCredentialDurationSeconds,
    radRoleAlias,

    -- ** S3Action
    S3Action,
    s3Action,
    sCannedACL,
    sRoleARN,
    sBucketName,
    sKey,

    -- ** S3Destination
    S3Destination,
    s3Destination,
    sdPrefix,
    sdBucket,

    -- ** S3Location
    S3Location,
    s3Location,
    slKey,
    slVersion,
    slBucket,

    -- ** SNSAction
    SNSAction,
    snsAction,
    snsaMessageFormat,
    snsaTargetARN,
    snsaRoleARN,

    -- ** SalesforceAction
    SalesforceAction,
    salesforceAction,
    saToken,
    saUrl,

    -- ** ScheduledAuditMetadata
    ScheduledAuditMetadata,
    scheduledAuditMetadata,
    samDayOfWeek,
    samScheduledAuditARN,
    samScheduledAuditName,
    samDayOfMonth,
    samFrequency,

    -- ** SecurityProfileIdentifier
    SecurityProfileIdentifier,
    securityProfileIdentifier,
    spiName,
    spiArn,

    -- ** SecurityProfileTarget
    SecurityProfileTarget,
    securityProfileTarget,
    sptArn,

    -- ** SecurityProfileTargetMapping
    SecurityProfileTargetMapping,
    securityProfileTargetMapping,
    sptmTarget,
    sptmSecurityProfileIdentifier,

    -- ** ServerCertificateSummary
    ServerCertificateSummary,
    serverCertificateSummary,
    scsServerCertificateStatus,
    scsServerCertificateARN,
    scsServerCertificateStatusDetail,

    -- ** SigV4Authorization
    SigV4Authorization,
    sigV4Authorization,
    svaSigningRegion,
    svaServiceName,
    svaRoleARN,

    -- ** SigningProfileParameter
    SigningProfileParameter,
    signingProfileParameter,
    sppPlatform,
    sppCertificateARN,
    sppCertificatePathOnDevice,

    -- ** SqsAction
    SqsAction,
    sqsAction,
    saUseBase64,
    saRoleARN,
    saQueueURL,

    -- ** StartSigningJobParameter
    StartSigningJobParameter,
    startSigningJobParameter,
    ssjpSigningProfileName,
    ssjpDestination,
    ssjpSigningProfileParameter,

    -- ** StatisticalThreshold
    StatisticalThreshold,
    statisticalThreshold,
    stStatistic,

    -- ** Statistics
    Statistics,
    statistics,
    sMinimum,
    sSum,
    sStdDeviation,
    sVariance,
    sAverage,
    sCount,
    sMaximum,
    sSumOfSquares,

    -- ** StepFunctionsAction
    StepFunctionsAction,
    stepFunctionsAction,
    sfaExecutionNamePrefix,
    sfaStateMachineName,
    sfaRoleARN,

    -- ** Stream
    Stream,
    stream,
    sStreamId,
    sFileId,

    -- ** StreamFile
    StreamFile,
    streamFile,
    sfS3Location,
    sfFileId,

    -- ** StreamInfo
    StreamInfo,
    streamInfo,
    siRoleARN,
    siStreamVersion,
    siCreatedAt,
    siStreamId,
    siStreamARN,
    siDescription,
    siFiles,
    siLastUpdatedAt,

    -- ** StreamSummary
    StreamSummary,
    streamSummary,
    ssStreamVersion,
    ssStreamId,
    ssStreamARN,
    ssDescription,

    -- ** TLSContext
    TLSContext,
    tlsContext,
    tcServerName,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** TaskStatistics
    TaskStatistics,
    taskStatistics,
    tsTotalChecks,
    tsWaitingForDataCollectionChecks,
    tsCompliantChecks,
    tsInProgressChecks,
    tsFailedChecks,
    tsNonCompliantChecks,
    tsCanceledChecks,

    -- ** TaskStatisticsForAuditCheck
    TaskStatisticsForAuditCheck,
    taskStatisticsForAuditCheck,
    tsfacSucceededFindingsCount,
    tsfacTotalFindingsCount,
    tsfacFailedFindingsCount,
    tsfacSkippedFindingsCount,
    tsfacCanceledFindingsCount,

    -- ** ThingAttribute
    ThingAttribute,
    thingAttribute,
    taThingARN,
    taThingName,
    taVersion,
    taAttributes,
    taThingTypeName,

    -- ** ThingConnectivity
    ThingConnectivity,
    thingConnectivity,
    tcConnected,
    tcTimestamp,

    -- ** ThingDocument
    ThingDocument,
    thingDocument,
    tdThingId,
    tdThingName,
    tdConnectivity,
    tdAttributes,
    tdThingGroupNames,
    tdShadow,
    tdThingTypeName,

    -- ** ThingGroupDocument
    ThingGroupDocument,
    thingGroupDocument,
    tgdParentGroupNames,
    tgdAttributes,
    tgdThingGroupName,
    tgdThingGroupId,
    tgdThingGroupDescription,

    -- ** ThingGroupIndexingConfiguration
    ThingGroupIndexingConfiguration,
    thingGroupIndexingConfiguration,
    tgicManagedFields,
    tgicCustomFields,
    tgicThingGroupIndexingMode,

    -- ** ThingGroupMetadata
    ThingGroupMetadata,
    thingGroupMetadata,
    tgmParentGroupName,
    tgmCreationDate,
    tgmRootToParentThingGroups,

    -- ** ThingGroupProperties
    ThingGroupProperties,
    thingGroupProperties,
    tgpThingGroupDescription,
    tgpAttributePayload,

    -- ** ThingIndexingConfiguration
    ThingIndexingConfiguration,
    thingIndexingConfiguration,
    ticManagedFields,
    ticThingConnectivityIndexingMode,
    ticCustomFields,
    ticThingIndexingMode,

    -- ** ThingTypeDefinition
    ThingTypeDefinition,
    thingTypeDefinition,
    ttdThingTypeProperties,
    ttdThingTypeMetadata,
    ttdThingTypeARN,
    ttdThingTypeName,

    -- ** ThingTypeMetadata
    ThingTypeMetadata,
    thingTypeMetadata,
    ttmDeprecationDate,
    ttmCreationDate,
    ttmDeprecated,

    -- ** ThingTypeProperties
    ThingTypeProperties,
    thingTypeProperties,
    ttpSearchableAttributes,
    ttpThingTypeDescription,

    -- ** TimeoutConfig
    TimeoutConfig,
    timeoutConfig,
    tcInProgressTimeoutInMinutes,

    -- ** TimestreamAction
    TimestreamAction,
    timestreamAction,
    taTimestamp,
    taRoleARN,
    taDatabaseName,
    taTableName,
    taDimensions,

    -- ** TimestreamDimension
    TimestreamDimension,
    timestreamDimension,
    tdName,
    tdValue,

    -- ** TimestreamTimestamp
    TimestreamTimestamp,
    timestreamTimestamp,
    ttValue,
    ttUnit,

    -- ** TopicRule
    TopicRule,
    topicRule,
    trRuleName,
    trErrorAction,
    trAwsIotSqlVersion,
    trCreatedAt,
    trActions,
    trRuleDisabled,
    trDescription,
    trSql,

    -- ** TopicRuleDestination
    TopicRuleDestination,
    topicRuleDestination,
    trdStatus,
    trdCreatedAt,
    trdArn,
    trdVpcProperties,
    trdStatusReason,
    trdHttpURLProperties,
    trdLastUpdatedAt,

    -- ** TopicRuleDestinationConfiguration
    TopicRuleDestinationConfiguration,
    topicRuleDestinationConfiguration,
    trdcVpcConfiguration,
    trdcHttpURLConfiguration,

    -- ** TopicRuleDestinationSummary
    TopicRuleDestinationSummary,
    topicRuleDestinationSummary,
    trdsHttpURLSummary,
    trdsStatus,
    trdsCreatedAt,
    trdsArn,
    trdsStatusReason,
    trdsVpcDestinationSummary,
    trdsLastUpdatedAt,

    -- ** TopicRuleListItem
    TopicRuleListItem,
    topicRuleListItem,
    trliRuleName,
    trliRuleARN,
    trliCreatedAt,
    trliTopicPattern,
    trliRuleDisabled,

    -- ** TopicRulePayload
    TopicRulePayload,
    topicRulePayload,
    trpErrorAction,
    trpAwsIotSqlVersion,
    trpRuleDisabled,
    trpDescription,
    trpSql,
    trpActions,

    -- ** TransferData
    TransferData,
    transferData,
    tdTransferDate,
    tdTransferMessage,
    tdAcceptDate,
    tdRejectDate,
    tdRejectReason,

    -- ** UpdateCACertificateParams
    UpdateCACertificateParams,
    updateCACertificateParams,
    ucacpAction,

    -- ** UpdateDeviceCertificateParams
    UpdateDeviceCertificateParams,
    updateDeviceCertificateParams,
    udcpAction,

    -- ** VPCDestinationConfiguration
    VPCDestinationConfiguration,
    vpcDestinationConfiguration,
    vdcSecurityGroups,
    vdcSubnetIds,
    vdcVpcId,
    vdcRoleARN,

    -- ** VPCDestinationProperties
    VPCDestinationProperties,
    vpcDestinationProperties,
    vdpRoleARN,
    vdpSubnetIds,
    vdpSecurityGroups,
    vdpVpcId,

    -- ** VPCDestinationSummary
    VPCDestinationSummary,
    vpcDestinationSummary,
    vdsRoleARN,
    vdsSubnetIds,
    vdsSecurityGroups,
    vdsVpcId,

    -- ** ValidationError
    ValidationError,
    validationError,
    veErrorMessage,

    -- ** ViolationEvent
    ViolationEvent,
    violationEvent,
    veMetricValue,
    veViolationId,
    veThingName,
    veSecurityProfileName,
    veBehavior,
    veViolationEventTime,
    veViolationEventType,
    veViolationEventAdditionalInfo,

    -- ** ViolationEventAdditionalInfo
    ViolationEventAdditionalInfo,
    violationEventAdditionalInfo,
    veaiConfidenceLevel,

    -- ** ViolationEventOccurrenceRange
    ViolationEventOccurrenceRange,
    violationEventOccurrenceRange,
    veorStartTime,
    veorEndTime,
  )
where

import Network.AWS.IoT.AcceptCertificateTransfer
import Network.AWS.IoT.AddThingToBillingGroup
import Network.AWS.IoT.AddThingToThingGroup
import Network.AWS.IoT.AssociateTargetsWithJob
import Network.AWS.IoT.AttachPolicy
import Network.AWS.IoT.AttachSecurityProfile
import Network.AWS.IoT.AttachThingPrincipal
import Network.AWS.IoT.CancelAuditMitigationActionsTask
import Network.AWS.IoT.CancelAuditTask
import Network.AWS.IoT.CancelCertificateTransfer
import Network.AWS.IoT.CancelDetectMitigationActionsTask
import Network.AWS.IoT.CancelJob
import Network.AWS.IoT.CancelJobExecution
import Network.AWS.IoT.ClearDefaultAuthorizer
import Network.AWS.IoT.ConfirmTopicRuleDestination
import Network.AWS.IoT.CreateAuditSuppression
import Network.AWS.IoT.CreateAuthorizer
import Network.AWS.IoT.CreateBillingGroup
import Network.AWS.IoT.CreateCertificateFromCSR
import Network.AWS.IoT.CreateCustomMetric
import Network.AWS.IoT.CreateDimension
import Network.AWS.IoT.CreateDomainConfiguration
import Network.AWS.IoT.CreateDynamicThingGroup
import Network.AWS.IoT.CreateJob
import Network.AWS.IoT.CreateKeysAndCertificate
import Network.AWS.IoT.CreateMitigationAction
import Network.AWS.IoT.CreateOTAUpdate
import Network.AWS.IoT.CreatePolicy
import Network.AWS.IoT.CreatePolicyVersion
import Network.AWS.IoT.CreateProvisioningClaim
import Network.AWS.IoT.CreateProvisioningTemplate
import Network.AWS.IoT.CreateProvisioningTemplateVersion
import Network.AWS.IoT.CreateRoleAlias
import Network.AWS.IoT.CreateScheduledAudit
import Network.AWS.IoT.CreateSecurityProfile
import Network.AWS.IoT.CreateStream
import Network.AWS.IoT.CreateThing
import Network.AWS.IoT.CreateThingGroup
import Network.AWS.IoT.CreateThingType
import Network.AWS.IoT.CreateTopicRule
import Network.AWS.IoT.CreateTopicRuleDestination
import Network.AWS.IoT.DeleteAccountAuditConfiguration
import Network.AWS.IoT.DeleteAuditSuppression
import Network.AWS.IoT.DeleteAuthorizer
import Network.AWS.IoT.DeleteBillingGroup
import Network.AWS.IoT.DeleteCACertificate
import Network.AWS.IoT.DeleteCertificate
import Network.AWS.IoT.DeleteCustomMetric
import Network.AWS.IoT.DeleteDimension
import Network.AWS.IoT.DeleteDomainConfiguration
import Network.AWS.IoT.DeleteDynamicThingGroup
import Network.AWS.IoT.DeleteJob
import Network.AWS.IoT.DeleteJobExecution
import Network.AWS.IoT.DeleteMitigationAction
import Network.AWS.IoT.DeleteOTAUpdate
import Network.AWS.IoT.DeletePolicy
import Network.AWS.IoT.DeletePolicyVersion
import Network.AWS.IoT.DeleteProvisioningTemplate
import Network.AWS.IoT.DeleteProvisioningTemplateVersion
import Network.AWS.IoT.DeleteRegistrationCode
import Network.AWS.IoT.DeleteRoleAlias
import Network.AWS.IoT.DeleteScheduledAudit
import Network.AWS.IoT.DeleteSecurityProfile
import Network.AWS.IoT.DeleteStream
import Network.AWS.IoT.DeleteThing
import Network.AWS.IoT.DeleteThingGroup
import Network.AWS.IoT.DeleteThingType
import Network.AWS.IoT.DeleteTopicRule
import Network.AWS.IoT.DeleteTopicRuleDestination
import Network.AWS.IoT.DeleteV2LoggingLevel
import Network.AWS.IoT.DeprecateThingType
import Network.AWS.IoT.DescribeAccountAuditConfiguration
import Network.AWS.IoT.DescribeAuditFinding
import Network.AWS.IoT.DescribeAuditMitigationActionsTask
import Network.AWS.IoT.DescribeAuditSuppression
import Network.AWS.IoT.DescribeAuditTask
import Network.AWS.IoT.DescribeAuthorizer
import Network.AWS.IoT.DescribeBillingGroup
import Network.AWS.IoT.DescribeCACertificate
import Network.AWS.IoT.DescribeCertificate
import Network.AWS.IoT.DescribeCustomMetric
import Network.AWS.IoT.DescribeDefaultAuthorizer
import Network.AWS.IoT.DescribeDetectMitigationActionsTask
import Network.AWS.IoT.DescribeDimension
import Network.AWS.IoT.DescribeDomainConfiguration
import Network.AWS.IoT.DescribeEndpoint
import Network.AWS.IoT.DescribeEventConfigurations
import Network.AWS.IoT.DescribeIndex
import Network.AWS.IoT.DescribeJob
import Network.AWS.IoT.DescribeJobExecution
import Network.AWS.IoT.DescribeMitigationAction
import Network.AWS.IoT.DescribeProvisioningTemplate
import Network.AWS.IoT.DescribeProvisioningTemplateVersion
import Network.AWS.IoT.DescribeRoleAlias
import Network.AWS.IoT.DescribeScheduledAudit
import Network.AWS.IoT.DescribeSecurityProfile
import Network.AWS.IoT.DescribeStream
import Network.AWS.IoT.DescribeThing
import Network.AWS.IoT.DescribeThingGroup
import Network.AWS.IoT.DescribeThingRegistrationTask
import Network.AWS.IoT.DescribeThingType
import Network.AWS.IoT.DetachPolicy
import Network.AWS.IoT.DetachSecurityProfile
import Network.AWS.IoT.DetachThingPrincipal
import Network.AWS.IoT.DisableTopicRule
import Network.AWS.IoT.EnableTopicRule
import Network.AWS.IoT.GetBehaviorModelTrainingSummaries
import Network.AWS.IoT.GetCardinality
import Network.AWS.IoT.GetEffectivePolicies
import Network.AWS.IoT.GetIndexingConfiguration
import Network.AWS.IoT.GetJobDocument
import Network.AWS.IoT.GetLoggingOptions
import Network.AWS.IoT.GetOTAUpdate
import Network.AWS.IoT.GetPercentiles
import Network.AWS.IoT.GetPolicy
import Network.AWS.IoT.GetPolicyVersion
import Network.AWS.IoT.GetRegistrationCode
import Network.AWS.IoT.GetStatistics
import Network.AWS.IoT.GetTopicRule
import Network.AWS.IoT.GetTopicRuleDestination
import Network.AWS.IoT.GetV2LoggingOptions
import Network.AWS.IoT.ListActiveViolations
import Network.AWS.IoT.ListAttachedPolicies
import Network.AWS.IoT.ListAuditFindings
import Network.AWS.IoT.ListAuditMitigationActionsExecutions
import Network.AWS.IoT.ListAuditMitigationActionsTasks
import Network.AWS.IoT.ListAuditSuppressions
import Network.AWS.IoT.ListAuditTasks
import Network.AWS.IoT.ListAuthorizers
import Network.AWS.IoT.ListBillingGroups
import Network.AWS.IoT.ListCACertificates
import Network.AWS.IoT.ListCertificates
import Network.AWS.IoT.ListCertificatesByCA
import Network.AWS.IoT.ListCustomMetrics
import Network.AWS.IoT.ListDetectMitigationActionsExecutions
import Network.AWS.IoT.ListDetectMitigationActionsTasks
import Network.AWS.IoT.ListDimensions
import Network.AWS.IoT.ListDomainConfigurations
import Network.AWS.IoT.ListIndices
import Network.AWS.IoT.ListJobExecutionsForJob
import Network.AWS.IoT.ListJobExecutionsForThing
import Network.AWS.IoT.ListJobs
import Network.AWS.IoT.ListMitigationActions
import Network.AWS.IoT.ListOTAUpdates
import Network.AWS.IoT.ListOutgoingCertificates
import Network.AWS.IoT.ListPolicies
import Network.AWS.IoT.ListPolicyVersions
import Network.AWS.IoT.ListPrincipalThings
import Network.AWS.IoT.ListProvisioningTemplateVersions
import Network.AWS.IoT.ListProvisioningTemplates
import Network.AWS.IoT.ListRoleAliases
import Network.AWS.IoT.ListScheduledAudits
import Network.AWS.IoT.ListSecurityProfiles
import Network.AWS.IoT.ListSecurityProfilesForTarget
import Network.AWS.IoT.ListStreams
import Network.AWS.IoT.ListTagsForResource
import Network.AWS.IoT.ListTargetsForPolicy
import Network.AWS.IoT.ListTargetsForSecurityProfile
import Network.AWS.IoT.ListThingGroups
import Network.AWS.IoT.ListThingGroupsForThing
import Network.AWS.IoT.ListThingPrincipals
import Network.AWS.IoT.ListThingRegistrationTaskReports
import Network.AWS.IoT.ListThingRegistrationTasks
import Network.AWS.IoT.ListThingTypes
import Network.AWS.IoT.ListThings
import Network.AWS.IoT.ListThingsInBillingGroup
import Network.AWS.IoT.ListThingsInThingGroup
import Network.AWS.IoT.ListTopicRuleDestinations
import Network.AWS.IoT.ListTopicRules
import Network.AWS.IoT.ListV2LoggingLevels
import Network.AWS.IoT.ListViolationEvents
import Network.AWS.IoT.RegisterCACertificate
import Network.AWS.IoT.RegisterCertificate
import Network.AWS.IoT.RegisterCertificateWithoutCA
import Network.AWS.IoT.RegisterThing
import Network.AWS.IoT.RejectCertificateTransfer
import Network.AWS.IoT.RemoveThingFromBillingGroup
import Network.AWS.IoT.RemoveThingFromThingGroup
import Network.AWS.IoT.ReplaceTopicRule
import Network.AWS.IoT.SearchIndex
import Network.AWS.IoT.SetDefaultAuthorizer
import Network.AWS.IoT.SetDefaultPolicyVersion
import Network.AWS.IoT.SetLoggingOptions
import Network.AWS.IoT.SetV2LoggingLevel
import Network.AWS.IoT.SetV2LoggingOptions
import Network.AWS.IoT.StartAuditMitigationActionsTask
import Network.AWS.IoT.StartDetectMitigationActionsTask
import Network.AWS.IoT.StartOnDemandAuditTask
import Network.AWS.IoT.StartThingRegistrationTask
import Network.AWS.IoT.StopThingRegistrationTask
import Network.AWS.IoT.TagResource
import Network.AWS.IoT.TestAuthorization
import Network.AWS.IoT.TestInvokeAuthorizer
import Network.AWS.IoT.TransferCertificate
import Network.AWS.IoT.Types
import Network.AWS.IoT.UntagResource
import Network.AWS.IoT.UpdateAccountAuditConfiguration
import Network.AWS.IoT.UpdateAuditSuppression
import Network.AWS.IoT.UpdateAuthorizer
import Network.AWS.IoT.UpdateBillingGroup
import Network.AWS.IoT.UpdateCACertificate
import Network.AWS.IoT.UpdateCertificate
import Network.AWS.IoT.UpdateCustomMetric
import Network.AWS.IoT.UpdateDimension
import Network.AWS.IoT.UpdateDomainConfiguration
import Network.AWS.IoT.UpdateDynamicThingGroup
import Network.AWS.IoT.UpdateEventConfigurations
import Network.AWS.IoT.UpdateIndexingConfiguration
import Network.AWS.IoT.UpdateJob
import Network.AWS.IoT.UpdateMitigationAction
import Network.AWS.IoT.UpdateProvisioningTemplate
import Network.AWS.IoT.UpdateRoleAlias
import Network.AWS.IoT.UpdateScheduledAudit
import Network.AWS.IoT.UpdateSecurityProfile
import Network.AWS.IoT.UpdateStream
import Network.AWS.IoT.UpdateThing
import Network.AWS.IoT.UpdateThingGroup
import Network.AWS.IoT.UpdateThingGroupsForThing
import Network.AWS.IoT.UpdateTopicRuleDestination
import Network.AWS.IoT.ValidateSecurityProfileBehaviors
import Network.AWS.IoT.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'IoT'.

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

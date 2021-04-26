{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidAggregatorException,
    _InvalidInstanceInformationFilterValue,
    _InvalidDeleteInventoryParametersException,
    _ComplianceTypeCountLimitExceededException,
    _OpsMetadataKeyLimitExceededException,
    _FeatureNotAvailableException,
    _InvalidAutomationSignalException,
    _IdempotentParameterMismatch,
    _ResourceDataSyncConflictException,
    _DoesNotExistException,
    _AutomationDefinitionVersionNotFoundException,
    _InvalidDocumentVersion,
    _UnsupportedParameterType,
    _HierarchyTypeMismatchException,
    _OpsMetadataInvalidArgumentException,
    _AutomationExecutionLimitExceededException,
    _InvalidAutomationStatusUpdateException,
    _AutomationExecutionNotFoundException,
    _InvalidFilter,
    _InvalidTypeNameException,
    _DocumentAlreadyExists,
    _DocumentPermissionLimit,
    _ItemSizeLimitExceededException,
    _ParameterMaxVersionLimitExceeded,
    _AutomationStepNotFoundException,
    _DocumentLimitExceeded,
    _TooManyTagsError,
    _InvalidInventoryItemContextException,
    _IncompatiblePolicyException,
    _OpsItemInvalidParameterException,
    _InvalidDocument,
    _AutomationDefinitionNotFoundException,
    _SubTypeCountLimitExceededException,
    _InvalidAllowedPatternException,
    _ParameterVersionLabelLimitExceeded,
    _InvalidCommandId,
    _OpsMetadataTooManyUpdatesException,
    _ResourceLimitExceededException,
    _InvalidOutputLocation,
    _InvalidParameters,
    _TargetNotConnected,
    _UnsupportedInventorySchemaVersionException,
    _InvalidAssociation,
    _InvalidUpdate,
    _InvalidTarget,
    _CustomSchemaCountLimitExceededException,
    _ServiceSettingNotFound,
    _DuplicateDocumentVersionName,
    _InvalidInstanceId,
    _OpsMetadataNotFoundException,
    _InvalidDocumentSchemaVersion,
    _InvalidOptionException,
    _TooManyUpdates,
    _OpsItemNotFoundException,
    _StatusUnchanged,
    _ParameterNotFound,
    _AssociationDoesNotExist,
    _InvalidAssociationVersion,
    _ResourceDataSyncCountExceededException,
    _InvalidPolicyAttributeException,
    _InternalServerError,
    _InvalidFilterValue,
    _PoliciesLimitExceededException,
    _InvalidPluginName,
    _AssociationLimitExceeded,
    _ItemContentMismatchException,
    _ParameterAlreadyExists,
    _InvalidDocumentContent,
    _ParameterLimitExceeded,
    _UnsupportedFeatureRequiredException,
    _InvalidDeletionIdException,
    _AssociationAlreadyExists,
    _InvalidSchedule,
    _ResourceDataSyncAlreadyExistsException,
    _ResourceInUseException,
    _DuplicateDocumentContent,
    _ResourceDataSyncNotFoundException,
    _AlreadyExistsException,
    _InvalidAutomationExecutionParametersException,
    _InvalidNotificationConfig,
    _InvalidFilterKey,
    _InvalidPolicyTypeException,
    _InvalidDocumentType,
    _TotalSizeLimitExceededException,
    _InvalidResourceId,
    _InvalidResultAttributeException,
    _InvalidResourceType,
    _ResourceDataSyncInvalidConfigurationException,
    _InvalidKeyId,
    _InvalidInventoryGroupException,
    _DocumentVersionLimitExceeded,
    _DuplicateInstanceId,
    _InvocationDoesNotExist,
    _InvalidDocumentOperation,
    _AutomationDefinitionNotApprovedException,
    _OpsMetadataAlreadyExistsException,
    _ParameterVersionNotFound,
    _OpsItemLimitExceededException,
    _UnsupportedCalendarException,
    _OpsMetadataLimitExceededException,
    _AssociationExecutionDoesNotExist,
    _HierarchyLevelLimitExceededException,
    _InvalidOutputFolder,
    _OpsItemAlreadyExistsException,
    _InvalidActivationId,
    _InvalidRole,
    _MaxDocumentSizeExceeded,
    _InvalidNextToken,
    _AssociationVersionLimitExceeded,
    _UnsupportedOperatingSystem,
    _InvalidActivation,
    _InvalidInventoryRequestException,
    _InvalidPermissionType,
    _InvalidFilterOption,
    _InvalidItemContentException,
    _TargetInUseException,
    _UnsupportedInventoryItemContextException,
    _UnsupportedPlatformType,
    _AssociatedInstances,
    _ParameterPatternMismatchException,

    -- * AssociationComplianceSeverity
    AssociationComplianceSeverity (..),

    -- * AssociationExecutionFilterKey
    AssociationExecutionFilterKey (..),

    -- * AssociationExecutionTargetsFilterKey
    AssociationExecutionTargetsFilterKey (..),

    -- * AssociationFilterKey
    AssociationFilterKey (..),

    -- * AssociationFilterOperatorType
    AssociationFilterOperatorType (..),

    -- * AssociationStatusName
    AssociationStatusName (..),

    -- * AssociationSyncCompliance
    AssociationSyncCompliance (..),

    -- * AttachmentHashType
    AttachmentHashType (..),

    -- * AttachmentsSourceKey
    AttachmentsSourceKey (..),

    -- * AutomationExecutionFilterKey
    AutomationExecutionFilterKey (..),

    -- * AutomationExecutionStatus
    AutomationExecutionStatus (..),

    -- * AutomationSubtype
    AutomationSubtype (..),

    -- * AutomationType
    AutomationType (..),

    -- * CalendarState
    CalendarState (..),

    -- * CommandFilterKey
    CommandFilterKey (..),

    -- * CommandInvocationStatus
    CommandInvocationStatus (..),

    -- * CommandPluginStatus
    CommandPluginStatus (..),

    -- * CommandStatus
    CommandStatus (..),

    -- * ComplianceQueryOperatorType
    ComplianceQueryOperatorType (..),

    -- * ComplianceSeverity
    ComplianceSeverity (..),

    -- * ComplianceStatus
    ComplianceStatus (..),

    -- * ComplianceUploadType
    ComplianceUploadType (..),

    -- * ConnectionStatus
    ConnectionStatus (..),

    -- * DescribeActivationsFilterKeys
    DescribeActivationsFilterKeys (..),

    -- * DocumentFilterKey
    DocumentFilterKey (..),

    -- * DocumentFormat
    DocumentFormat (..),

    -- * DocumentHashType
    DocumentHashType (..),

    -- * DocumentMetadataEnum
    DocumentMetadataEnum (..),

    -- * DocumentParameterType
    DocumentParameterType (..),

    -- * DocumentPermissionType
    DocumentPermissionType (..),

    -- * DocumentReviewAction
    DocumentReviewAction (..),

    -- * DocumentReviewCommentType
    DocumentReviewCommentType (..),

    -- * DocumentStatus
    DocumentStatus (..),

    -- * DocumentType
    DocumentType (..),

    -- * ExecutionMode
    ExecutionMode (..),

    -- * Fault
    Fault (..),

    -- * InstanceInformationFilterKey
    InstanceInformationFilterKey (..),

    -- * InstancePatchStateOperatorType
    InstancePatchStateOperatorType (..),

    -- * InventoryAttributeDataType
    InventoryAttributeDataType (..),

    -- * InventoryDeletionStatus
    InventoryDeletionStatus (..),

    -- * InventoryQueryOperatorType
    InventoryQueryOperatorType (..),

    -- * InventorySchemaDeleteOption
    InventorySchemaDeleteOption (..),

    -- * LastResourceDataSyncStatus
    LastResourceDataSyncStatus (..),

    -- * MaintenanceWindowExecutionStatus
    MaintenanceWindowExecutionStatus (..),

    -- * MaintenanceWindowResourceType
    MaintenanceWindowResourceType (..),

    -- * MaintenanceWindowTaskType
    MaintenanceWindowTaskType (..),

    -- * NotificationEvent
    NotificationEvent (..),

    -- * NotificationType
    NotificationType (..),

    -- * OperatingSystem
    OperatingSystem (..),

    -- * OpsFilterOperatorType
    OpsFilterOperatorType (..),

    -- * OpsItemDataType
    OpsItemDataType (..),

    -- * OpsItemEventFilterKey
    OpsItemEventFilterKey (..),

    -- * OpsItemEventFilterOperator
    OpsItemEventFilterOperator (..),

    -- * OpsItemFilterKey
    OpsItemFilterKey (..),

    -- * OpsItemFilterOperator
    OpsItemFilterOperator (..),

    -- * OpsItemStatus
    OpsItemStatus (..),

    -- * ParameterTier
    ParameterTier (..),

    -- * ParameterType
    ParameterType (..),

    -- * ParametersFilterKey
    ParametersFilterKey (..),

    -- * PatchAction
    PatchAction (..),

    -- * PatchComplianceDataState
    PatchComplianceDataState (..),

    -- * PatchComplianceLevel
    PatchComplianceLevel (..),

    -- * PatchDeploymentStatus
    PatchDeploymentStatus (..),

    -- * PatchFilterKey
    PatchFilterKey (..),

    -- * PatchOperationType
    PatchOperationType (..),

    -- * PatchProperty
    PatchProperty (..),

    -- * PatchSet
    PatchSet (..),

    -- * PingStatus
    PingStatus (..),

    -- * PlatformType
    PlatformType (..),

    -- * RebootOption
    RebootOption (..),

    -- * ResourceDataSyncS3Format
    ResourceDataSyncS3Format (..),

    -- * ResourceType
    ResourceType (..),

    -- * ResourceTypeForTagging
    ResourceTypeForTagging (..),

    -- * ReviewStatus
    ReviewStatus (..),

    -- * SessionFilterKey
    SessionFilterKey (..),

    -- * SessionState
    SessionState (..),

    -- * SessionStatus
    SessionStatus (..),

    -- * SignalType
    SignalType (..),

    -- * StepExecutionFilterKey
    StepExecutionFilterKey (..),

    -- * StopType
    StopType (..),

    -- * AccountSharingInfo
    AccountSharingInfo (..),
    newAccountSharingInfo,

    -- * Activation
    Activation (..),
    newActivation,

    -- * Association
    Association (..),
    newAssociation,

    -- * AssociationDescription
    AssociationDescription (..),
    newAssociationDescription,

    -- * AssociationExecution
    AssociationExecution (..),
    newAssociationExecution,

    -- * AssociationExecutionFilter
    AssociationExecutionFilter (..),
    newAssociationExecutionFilter,

    -- * AssociationExecutionTarget
    AssociationExecutionTarget (..),
    newAssociationExecutionTarget,

    -- * AssociationExecutionTargetsFilter
    AssociationExecutionTargetsFilter (..),
    newAssociationExecutionTargetsFilter,

    -- * AssociationFilter
    AssociationFilter (..),
    newAssociationFilter,

    -- * AssociationOverview
    AssociationOverview (..),
    newAssociationOverview,

    -- * AssociationStatus
    AssociationStatus (..),
    newAssociationStatus,

    -- * AssociationVersionInfo
    AssociationVersionInfo (..),
    newAssociationVersionInfo,

    -- * AttachmentContent
    AttachmentContent (..),
    newAttachmentContent,

    -- * AttachmentInformation
    AttachmentInformation (..),
    newAttachmentInformation,

    -- * AttachmentsSource
    AttachmentsSource (..),
    newAttachmentsSource,

    -- * AutomationExecution
    AutomationExecution (..),
    newAutomationExecution,

    -- * AutomationExecutionFilter
    AutomationExecutionFilter (..),
    newAutomationExecutionFilter,

    -- * AutomationExecutionMetadata
    AutomationExecutionMetadata (..),
    newAutomationExecutionMetadata,

    -- * BaselineOverride
    BaselineOverride (..),
    newBaselineOverride,

    -- * CloudWatchOutputConfig
    CloudWatchOutputConfig (..),
    newCloudWatchOutputConfig,

    -- * Command
    Command (..),
    newCommand,

    -- * CommandFilter
    CommandFilter (..),
    newCommandFilter,

    -- * CommandInvocation
    CommandInvocation (..),
    newCommandInvocation,

    -- * CommandPlugin
    CommandPlugin (..),
    newCommandPlugin,

    -- * ComplianceExecutionSummary
    ComplianceExecutionSummary (..),
    newComplianceExecutionSummary,

    -- * ComplianceItem
    ComplianceItem (..),
    newComplianceItem,

    -- * ComplianceItemEntry
    ComplianceItemEntry (..),
    newComplianceItemEntry,

    -- * ComplianceStringFilter
    ComplianceStringFilter (..),
    newComplianceStringFilter,

    -- * ComplianceSummaryItem
    ComplianceSummaryItem (..),
    newComplianceSummaryItem,

    -- * CompliantSummary
    CompliantSummary (..),
    newCompliantSummary,

    -- * CreateAssociationBatchRequestEntry
    CreateAssociationBatchRequestEntry (..),
    newCreateAssociationBatchRequestEntry,

    -- * DescribeActivationsFilter
    DescribeActivationsFilter (..),
    newDescribeActivationsFilter,

    -- * DocumentDefaultVersionDescription
    DocumentDefaultVersionDescription (..),
    newDocumentDefaultVersionDescription,

    -- * DocumentDescription
    DocumentDescription (..),
    newDocumentDescription,

    -- * DocumentFilter
    DocumentFilter (..),
    newDocumentFilter,

    -- * DocumentIdentifier
    DocumentIdentifier (..),
    newDocumentIdentifier,

    -- * DocumentKeyValuesFilter
    DocumentKeyValuesFilter (..),
    newDocumentKeyValuesFilter,

    -- * DocumentMetadataResponseInfo
    DocumentMetadataResponseInfo (..),
    newDocumentMetadataResponseInfo,

    -- * DocumentParameter
    DocumentParameter (..),
    newDocumentParameter,

    -- * DocumentRequires
    DocumentRequires (..),
    newDocumentRequires,

    -- * DocumentReviewCommentSource
    DocumentReviewCommentSource (..),
    newDocumentReviewCommentSource,

    -- * DocumentReviewerResponseSource
    DocumentReviewerResponseSource (..),
    newDocumentReviewerResponseSource,

    -- * DocumentReviews
    DocumentReviews (..),
    newDocumentReviews,

    -- * DocumentVersionInfo
    DocumentVersionInfo (..),
    newDocumentVersionInfo,

    -- * EffectivePatch
    EffectivePatch (..),
    newEffectivePatch,

    -- * FailedCreateAssociation
    FailedCreateAssociation (..),
    newFailedCreateAssociation,

    -- * FailureDetails
    FailureDetails (..),
    newFailureDetails,

    -- * InstanceAggregatedAssociationOverview
    InstanceAggregatedAssociationOverview (..),
    newInstanceAggregatedAssociationOverview,

    -- * InstanceAssociation
    InstanceAssociation (..),
    newInstanceAssociation,

    -- * InstanceAssociationOutputLocation
    InstanceAssociationOutputLocation (..),
    newInstanceAssociationOutputLocation,

    -- * InstanceAssociationOutputUrl
    InstanceAssociationOutputUrl (..),
    newInstanceAssociationOutputUrl,

    -- * InstanceAssociationStatusInfo
    InstanceAssociationStatusInfo (..),
    newInstanceAssociationStatusInfo,

    -- * InstanceInformation
    InstanceInformation (..),
    newInstanceInformation,

    -- * InstanceInformationFilter
    InstanceInformationFilter (..),
    newInstanceInformationFilter,

    -- * InstanceInformationStringFilter
    InstanceInformationStringFilter (..),
    newInstanceInformationStringFilter,

    -- * InstancePatchState
    InstancePatchState (..),
    newInstancePatchState,

    -- * InstancePatchStateFilter
    InstancePatchStateFilter (..),
    newInstancePatchStateFilter,

    -- * InventoryAggregator
    InventoryAggregator (..),
    newInventoryAggregator,

    -- * InventoryDeletionStatusItem
    InventoryDeletionStatusItem (..),
    newInventoryDeletionStatusItem,

    -- * InventoryDeletionSummary
    InventoryDeletionSummary (..),
    newInventoryDeletionSummary,

    -- * InventoryDeletionSummaryItem
    InventoryDeletionSummaryItem (..),
    newInventoryDeletionSummaryItem,

    -- * InventoryFilter
    InventoryFilter (..),
    newInventoryFilter,

    -- * InventoryGroup
    InventoryGroup (..),
    newInventoryGroup,

    -- * InventoryItem
    InventoryItem (..),
    newInventoryItem,

    -- * InventoryItemAttribute
    InventoryItemAttribute (..),
    newInventoryItemAttribute,

    -- * InventoryItemSchema
    InventoryItemSchema (..),
    newInventoryItemSchema,

    -- * InventoryResultEntity
    InventoryResultEntity (..),
    newInventoryResultEntity,

    -- * InventoryResultItem
    InventoryResultItem (..),
    newInventoryResultItem,

    -- * LoggingInfo
    LoggingInfo (..),
    newLoggingInfo,

    -- * MaintenanceWindowAutomationParameters
    MaintenanceWindowAutomationParameters (..),
    newMaintenanceWindowAutomationParameters,

    -- * MaintenanceWindowExecution
    MaintenanceWindowExecution (..),
    newMaintenanceWindowExecution,

    -- * MaintenanceWindowExecutionTaskIdentity
    MaintenanceWindowExecutionTaskIdentity (..),
    newMaintenanceWindowExecutionTaskIdentity,

    -- * MaintenanceWindowExecutionTaskInvocationIdentity
    MaintenanceWindowExecutionTaskInvocationIdentity (..),
    newMaintenanceWindowExecutionTaskInvocationIdentity,

    -- * MaintenanceWindowFilter
    MaintenanceWindowFilter (..),
    newMaintenanceWindowFilter,

    -- * MaintenanceWindowIdentity
    MaintenanceWindowIdentity (..),
    newMaintenanceWindowIdentity,

    -- * MaintenanceWindowIdentityForTarget
    MaintenanceWindowIdentityForTarget (..),
    newMaintenanceWindowIdentityForTarget,

    -- * MaintenanceWindowLambdaParameters
    MaintenanceWindowLambdaParameters (..),
    newMaintenanceWindowLambdaParameters,

    -- * MaintenanceWindowRunCommandParameters
    MaintenanceWindowRunCommandParameters (..),
    newMaintenanceWindowRunCommandParameters,

    -- * MaintenanceWindowStepFunctionsParameters
    MaintenanceWindowStepFunctionsParameters (..),
    newMaintenanceWindowStepFunctionsParameters,

    -- * MaintenanceWindowTarget
    MaintenanceWindowTarget (..),
    newMaintenanceWindowTarget,

    -- * MaintenanceWindowTask
    MaintenanceWindowTask (..),
    newMaintenanceWindowTask,

    -- * MaintenanceWindowTaskInvocationParameters
    MaintenanceWindowTaskInvocationParameters (..),
    newMaintenanceWindowTaskInvocationParameters,

    -- * MaintenanceWindowTaskParameterValueExpression
    MaintenanceWindowTaskParameterValueExpression (..),
    newMaintenanceWindowTaskParameterValueExpression,

    -- * MetadataValue
    MetadataValue (..),
    newMetadataValue,

    -- * NonCompliantSummary
    NonCompliantSummary (..),
    newNonCompliantSummary,

    -- * NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- * OpsAggregator
    OpsAggregator (..),
    newOpsAggregator,

    -- * OpsEntity
    OpsEntity (..),
    newOpsEntity,

    -- * OpsEntityItem
    OpsEntityItem (..),
    newOpsEntityItem,

    -- * OpsFilter
    OpsFilter (..),
    newOpsFilter,

    -- * OpsItem
    OpsItem (..),
    newOpsItem,

    -- * OpsItemDataValue
    OpsItemDataValue (..),
    newOpsItemDataValue,

    -- * OpsItemEventFilter
    OpsItemEventFilter (..),
    newOpsItemEventFilter,

    -- * OpsItemEventSummary
    OpsItemEventSummary (..),
    newOpsItemEventSummary,

    -- * OpsItemFilter
    OpsItemFilter (..),
    newOpsItemFilter,

    -- * OpsItemIdentity
    OpsItemIdentity (..),
    newOpsItemIdentity,

    -- * OpsItemNotification
    OpsItemNotification (..),
    newOpsItemNotification,

    -- * OpsItemSummary
    OpsItemSummary (..),
    newOpsItemSummary,

    -- * OpsMetadata
    OpsMetadata (..),
    newOpsMetadata,

    -- * OpsMetadataFilter
    OpsMetadataFilter (..),
    newOpsMetadataFilter,

    -- * OpsResultAttribute
    OpsResultAttribute (..),
    newOpsResultAttribute,

    -- * OutputSource
    OutputSource (..),
    newOutputSource,

    -- * Parameter
    Parameter (..),
    newParameter,

    -- * ParameterHistory
    ParameterHistory (..),
    newParameterHistory,

    -- * ParameterInlinePolicy
    ParameterInlinePolicy (..),
    newParameterInlinePolicy,

    -- * ParameterMetadata
    ParameterMetadata (..),
    newParameterMetadata,

    -- * ParameterStringFilter
    ParameterStringFilter (..),
    newParameterStringFilter,

    -- * ParametersFilter
    ParametersFilter (..),
    newParametersFilter,

    -- * Patch
    Patch (..),
    newPatch,

    -- * PatchBaselineIdentity
    PatchBaselineIdentity (..),
    newPatchBaselineIdentity,

    -- * PatchComplianceData
    PatchComplianceData (..),
    newPatchComplianceData,

    -- * PatchFilter
    PatchFilter (..),
    newPatchFilter,

    -- * PatchFilterGroup
    PatchFilterGroup (..),
    newPatchFilterGroup,

    -- * PatchGroupPatchBaselineMapping
    PatchGroupPatchBaselineMapping (..),
    newPatchGroupPatchBaselineMapping,

    -- * PatchOrchestratorFilter
    PatchOrchestratorFilter (..),
    newPatchOrchestratorFilter,

    -- * PatchRule
    PatchRule (..),
    newPatchRule,

    -- * PatchRuleGroup
    PatchRuleGroup (..),
    newPatchRuleGroup,

    -- * PatchSource
    PatchSource (..),
    newPatchSource,

    -- * PatchStatus
    PatchStatus (..),
    newPatchStatus,

    -- * ProgressCounters
    ProgressCounters (..),
    newProgressCounters,

    -- * RelatedOpsItem
    RelatedOpsItem (..),
    newRelatedOpsItem,

    -- * ResolvedTargets
    ResolvedTargets (..),
    newResolvedTargets,

    -- * ResourceComplianceSummaryItem
    ResourceComplianceSummaryItem (..),
    newResourceComplianceSummaryItem,

    -- * ResourceDataSyncAwsOrganizationsSource
    ResourceDataSyncAwsOrganizationsSource (..),
    newResourceDataSyncAwsOrganizationsSource,

    -- * ResourceDataSyncDestinationDataSharing
    ResourceDataSyncDestinationDataSharing (..),
    newResourceDataSyncDestinationDataSharing,

    -- * ResourceDataSyncItem
    ResourceDataSyncItem (..),
    newResourceDataSyncItem,

    -- * ResourceDataSyncOrganizationalUnit
    ResourceDataSyncOrganizationalUnit (..),
    newResourceDataSyncOrganizationalUnit,

    -- * ResourceDataSyncS3Destination
    ResourceDataSyncS3Destination (..),
    newResourceDataSyncS3Destination,

    -- * ResourceDataSyncSource
    ResourceDataSyncSource (..),
    newResourceDataSyncSource,

    -- * ResourceDataSyncSourceWithState
    ResourceDataSyncSourceWithState (..),
    newResourceDataSyncSourceWithState,

    -- * ResultAttribute
    ResultAttribute (..),
    newResultAttribute,

    -- * ReviewInformation
    ReviewInformation (..),
    newReviewInformation,

    -- * Runbook
    Runbook (..),
    newRunbook,

    -- * S3OutputLocation
    S3OutputLocation (..),
    newS3OutputLocation,

    -- * S3OutputUrl
    S3OutputUrl (..),
    newS3OutputUrl,

    -- * ScheduledWindowExecution
    ScheduledWindowExecution (..),
    newScheduledWindowExecution,

    -- * ServiceSetting
    ServiceSetting (..),
    newServiceSetting,

    -- * Session
    Session (..),
    newSession,

    -- * SessionFilter
    SessionFilter (..),
    newSessionFilter,

    -- * SessionManagerOutputUrl
    SessionManagerOutputUrl (..),
    newSessionManagerOutputUrl,

    -- * SeveritySummary
    SeveritySummary (..),
    newSeveritySummary,

    -- * StepExecution
    StepExecution (..),
    newStepExecution,

    -- * StepExecutionFilter
    StepExecutionFilter (..),
    newStepExecutionFilter,

    -- * Tag
    Tag (..),
    newTag,

    -- * Target
    Target (..),
    newTarget,

    -- * TargetLocation
    TargetLocation (..),
    newTargetLocation,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSM.Types.AccountSharingInfo
import Network.AWS.SSM.Types.Activation
import Network.AWS.SSM.Types.Association
import Network.AWS.SSM.Types.AssociationComplianceSeverity
import Network.AWS.SSM.Types.AssociationDescription
import Network.AWS.SSM.Types.AssociationExecution
import Network.AWS.SSM.Types.AssociationExecutionFilter
import Network.AWS.SSM.Types.AssociationExecutionFilterKey
import Network.AWS.SSM.Types.AssociationExecutionTarget
import Network.AWS.SSM.Types.AssociationExecutionTargetsFilter
import Network.AWS.SSM.Types.AssociationExecutionTargetsFilterKey
import Network.AWS.SSM.Types.AssociationFilter
import Network.AWS.SSM.Types.AssociationFilterKey
import Network.AWS.SSM.Types.AssociationFilterOperatorType
import Network.AWS.SSM.Types.AssociationOverview
import Network.AWS.SSM.Types.AssociationStatus
import Network.AWS.SSM.Types.AssociationStatusName
import Network.AWS.SSM.Types.AssociationSyncCompliance
import Network.AWS.SSM.Types.AssociationVersionInfo
import Network.AWS.SSM.Types.AttachmentContent
import Network.AWS.SSM.Types.AttachmentHashType
import Network.AWS.SSM.Types.AttachmentInformation
import Network.AWS.SSM.Types.AttachmentsSource
import Network.AWS.SSM.Types.AttachmentsSourceKey
import Network.AWS.SSM.Types.AutomationExecution
import Network.AWS.SSM.Types.AutomationExecutionFilter
import Network.AWS.SSM.Types.AutomationExecutionFilterKey
import Network.AWS.SSM.Types.AutomationExecutionMetadata
import Network.AWS.SSM.Types.AutomationExecutionStatus
import Network.AWS.SSM.Types.AutomationSubtype
import Network.AWS.SSM.Types.AutomationType
import Network.AWS.SSM.Types.BaselineOverride
import Network.AWS.SSM.Types.CalendarState
import Network.AWS.SSM.Types.CloudWatchOutputConfig
import Network.AWS.SSM.Types.Command
import Network.AWS.SSM.Types.CommandFilter
import Network.AWS.SSM.Types.CommandFilterKey
import Network.AWS.SSM.Types.CommandInvocation
import Network.AWS.SSM.Types.CommandInvocationStatus
import Network.AWS.SSM.Types.CommandPlugin
import Network.AWS.SSM.Types.CommandPluginStatus
import Network.AWS.SSM.Types.CommandStatus
import Network.AWS.SSM.Types.ComplianceExecutionSummary
import Network.AWS.SSM.Types.ComplianceItem
import Network.AWS.SSM.Types.ComplianceItemEntry
import Network.AWS.SSM.Types.ComplianceQueryOperatorType
import Network.AWS.SSM.Types.ComplianceSeverity
import Network.AWS.SSM.Types.ComplianceStatus
import Network.AWS.SSM.Types.ComplianceStringFilter
import Network.AWS.SSM.Types.ComplianceSummaryItem
import Network.AWS.SSM.Types.ComplianceUploadType
import Network.AWS.SSM.Types.CompliantSummary
import Network.AWS.SSM.Types.ConnectionStatus
import Network.AWS.SSM.Types.CreateAssociationBatchRequestEntry
import Network.AWS.SSM.Types.DescribeActivationsFilter
import Network.AWS.SSM.Types.DescribeActivationsFilterKeys
import Network.AWS.SSM.Types.DocumentDefaultVersionDescription
import Network.AWS.SSM.Types.DocumentDescription
import Network.AWS.SSM.Types.DocumentFilter
import Network.AWS.SSM.Types.DocumentFilterKey
import Network.AWS.SSM.Types.DocumentFormat
import Network.AWS.SSM.Types.DocumentHashType
import Network.AWS.SSM.Types.DocumentIdentifier
import Network.AWS.SSM.Types.DocumentKeyValuesFilter
import Network.AWS.SSM.Types.DocumentMetadataEnum
import Network.AWS.SSM.Types.DocumentMetadataResponseInfo
import Network.AWS.SSM.Types.DocumentParameter
import Network.AWS.SSM.Types.DocumentParameterType
import Network.AWS.SSM.Types.DocumentPermissionType
import Network.AWS.SSM.Types.DocumentRequires
import Network.AWS.SSM.Types.DocumentReviewAction
import Network.AWS.SSM.Types.DocumentReviewCommentSource
import Network.AWS.SSM.Types.DocumentReviewCommentType
import Network.AWS.SSM.Types.DocumentReviewerResponseSource
import Network.AWS.SSM.Types.DocumentReviews
import Network.AWS.SSM.Types.DocumentStatus
import Network.AWS.SSM.Types.DocumentType
import Network.AWS.SSM.Types.DocumentVersionInfo
import Network.AWS.SSM.Types.EffectivePatch
import Network.AWS.SSM.Types.ExecutionMode
import Network.AWS.SSM.Types.FailedCreateAssociation
import Network.AWS.SSM.Types.FailureDetails
import Network.AWS.SSM.Types.Fault
import Network.AWS.SSM.Types.InstanceAggregatedAssociationOverview
import Network.AWS.SSM.Types.InstanceAssociation
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.InstanceAssociationOutputUrl
import Network.AWS.SSM.Types.InstanceAssociationStatusInfo
import Network.AWS.SSM.Types.InstanceInformation
import Network.AWS.SSM.Types.InstanceInformationFilter
import Network.AWS.SSM.Types.InstanceInformationFilterKey
import Network.AWS.SSM.Types.InstanceInformationStringFilter
import Network.AWS.SSM.Types.InstancePatchState
import Network.AWS.SSM.Types.InstancePatchStateFilter
import Network.AWS.SSM.Types.InstancePatchStateOperatorType
import Network.AWS.SSM.Types.InventoryAggregator
import Network.AWS.SSM.Types.InventoryAttributeDataType
import Network.AWS.SSM.Types.InventoryDeletionStatus
import Network.AWS.SSM.Types.InventoryDeletionStatusItem
import Network.AWS.SSM.Types.InventoryDeletionSummary
import Network.AWS.SSM.Types.InventoryDeletionSummaryItem
import Network.AWS.SSM.Types.InventoryFilter
import Network.AWS.SSM.Types.InventoryGroup
import Network.AWS.SSM.Types.InventoryItem
import Network.AWS.SSM.Types.InventoryItemAttribute
import Network.AWS.SSM.Types.InventoryItemSchema
import Network.AWS.SSM.Types.InventoryQueryOperatorType
import Network.AWS.SSM.Types.InventoryResultEntity
import Network.AWS.SSM.Types.InventoryResultItem
import Network.AWS.SSM.Types.InventorySchemaDeleteOption
import Network.AWS.SSM.Types.LastResourceDataSyncStatus
import Network.AWS.SSM.Types.LoggingInfo
import Network.AWS.SSM.Types.MaintenanceWindowAutomationParameters
import Network.AWS.SSM.Types.MaintenanceWindowExecution
import Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus
import Network.AWS.SSM.Types.MaintenanceWindowExecutionTaskIdentity
import Network.AWS.SSM.Types.MaintenanceWindowExecutionTaskInvocationIdentity
import Network.AWS.SSM.Types.MaintenanceWindowFilter
import Network.AWS.SSM.Types.MaintenanceWindowIdentity
import Network.AWS.SSM.Types.MaintenanceWindowIdentityForTarget
import Network.AWS.SSM.Types.MaintenanceWindowLambdaParameters
import Network.AWS.SSM.Types.MaintenanceWindowResourceType
import Network.AWS.SSM.Types.MaintenanceWindowRunCommandParameters
import Network.AWS.SSM.Types.MaintenanceWindowStepFunctionsParameters
import Network.AWS.SSM.Types.MaintenanceWindowTarget
import Network.AWS.SSM.Types.MaintenanceWindowTask
import Network.AWS.SSM.Types.MaintenanceWindowTaskInvocationParameters
import Network.AWS.SSM.Types.MaintenanceWindowTaskParameterValueExpression
import Network.AWS.SSM.Types.MaintenanceWindowTaskType
import Network.AWS.SSM.Types.MetadataValue
import Network.AWS.SSM.Types.NonCompliantSummary
import Network.AWS.SSM.Types.NotificationConfig
import Network.AWS.SSM.Types.NotificationEvent
import Network.AWS.SSM.Types.NotificationType
import Network.AWS.SSM.Types.OperatingSystem
import Network.AWS.SSM.Types.OpsAggregator
import Network.AWS.SSM.Types.OpsEntity
import Network.AWS.SSM.Types.OpsEntityItem
import Network.AWS.SSM.Types.OpsFilter
import Network.AWS.SSM.Types.OpsFilterOperatorType
import Network.AWS.SSM.Types.OpsItem
import Network.AWS.SSM.Types.OpsItemDataType
import Network.AWS.SSM.Types.OpsItemDataValue
import Network.AWS.SSM.Types.OpsItemEventFilter
import Network.AWS.SSM.Types.OpsItemEventFilterKey
import Network.AWS.SSM.Types.OpsItemEventFilterOperator
import Network.AWS.SSM.Types.OpsItemEventSummary
import Network.AWS.SSM.Types.OpsItemFilter
import Network.AWS.SSM.Types.OpsItemFilterKey
import Network.AWS.SSM.Types.OpsItemFilterOperator
import Network.AWS.SSM.Types.OpsItemIdentity
import Network.AWS.SSM.Types.OpsItemNotification
import Network.AWS.SSM.Types.OpsItemStatus
import Network.AWS.SSM.Types.OpsItemSummary
import Network.AWS.SSM.Types.OpsMetadata
import Network.AWS.SSM.Types.OpsMetadataFilter
import Network.AWS.SSM.Types.OpsResultAttribute
import Network.AWS.SSM.Types.OutputSource
import Network.AWS.SSM.Types.Parameter
import Network.AWS.SSM.Types.ParameterHistory
import Network.AWS.SSM.Types.ParameterInlinePolicy
import Network.AWS.SSM.Types.ParameterMetadata
import Network.AWS.SSM.Types.ParameterStringFilter
import Network.AWS.SSM.Types.ParameterTier
import Network.AWS.SSM.Types.ParameterType
import Network.AWS.SSM.Types.ParametersFilter
import Network.AWS.SSM.Types.ParametersFilterKey
import Network.AWS.SSM.Types.Patch
import Network.AWS.SSM.Types.PatchAction
import Network.AWS.SSM.Types.PatchBaselineIdentity
import Network.AWS.SSM.Types.PatchComplianceData
import Network.AWS.SSM.Types.PatchComplianceDataState
import Network.AWS.SSM.Types.PatchComplianceLevel
import Network.AWS.SSM.Types.PatchDeploymentStatus
import Network.AWS.SSM.Types.PatchFilter
import Network.AWS.SSM.Types.PatchFilterGroup
import Network.AWS.SSM.Types.PatchFilterKey
import Network.AWS.SSM.Types.PatchGroupPatchBaselineMapping
import Network.AWS.SSM.Types.PatchOperationType
import Network.AWS.SSM.Types.PatchOrchestratorFilter
import Network.AWS.SSM.Types.PatchProperty
import Network.AWS.SSM.Types.PatchRule
import Network.AWS.SSM.Types.PatchRuleGroup
import Network.AWS.SSM.Types.PatchSet
import Network.AWS.SSM.Types.PatchSource
import Network.AWS.SSM.Types.PatchStatus
import Network.AWS.SSM.Types.PingStatus
import Network.AWS.SSM.Types.PlatformType
import Network.AWS.SSM.Types.ProgressCounters
import Network.AWS.SSM.Types.RebootOption
import Network.AWS.SSM.Types.RelatedOpsItem
import Network.AWS.SSM.Types.ResolvedTargets
import Network.AWS.SSM.Types.ResourceComplianceSummaryItem
import Network.AWS.SSM.Types.ResourceDataSyncAwsOrganizationsSource
import Network.AWS.SSM.Types.ResourceDataSyncDestinationDataSharing
import Network.AWS.SSM.Types.ResourceDataSyncItem
import Network.AWS.SSM.Types.ResourceDataSyncOrganizationalUnit
import Network.AWS.SSM.Types.ResourceDataSyncS3Destination
import Network.AWS.SSM.Types.ResourceDataSyncS3Format
import Network.AWS.SSM.Types.ResourceDataSyncSource
import Network.AWS.SSM.Types.ResourceDataSyncSourceWithState
import Network.AWS.SSM.Types.ResourceType
import Network.AWS.SSM.Types.ResourceTypeForTagging
import Network.AWS.SSM.Types.ResultAttribute
import Network.AWS.SSM.Types.ReviewInformation
import Network.AWS.SSM.Types.ReviewStatus
import Network.AWS.SSM.Types.Runbook
import Network.AWS.SSM.Types.S3OutputLocation
import Network.AWS.SSM.Types.S3OutputUrl
import Network.AWS.SSM.Types.ScheduledWindowExecution
import Network.AWS.SSM.Types.ServiceSetting
import Network.AWS.SSM.Types.Session
import Network.AWS.SSM.Types.SessionFilter
import Network.AWS.SSM.Types.SessionFilterKey
import Network.AWS.SSM.Types.SessionManagerOutputUrl
import Network.AWS.SSM.Types.SessionState
import Network.AWS.SSM.Types.SessionStatus
import Network.AWS.SSM.Types.SeveritySummary
import Network.AWS.SSM.Types.SignalType
import Network.AWS.SSM.Types.StepExecution
import Network.AWS.SSM.Types.StepExecutionFilter
import Network.AWS.SSM.Types.StepExecutionFilterKey
import Network.AWS.SSM.Types.StopType
import Network.AWS.SSM.Types.Tag
import Network.AWS.SSM.Types.Target
import Network.AWS.SSM.Types.TargetLocation
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-11-06@ of the Amazon Simple Systems Manager (SSM) SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "SSM",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "ssm",
      Prelude._svcVersion = "2014-11-06",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "SSM",
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

-- | The specified aggregator is not valid for inventory groups. Verify that
-- the aggregator uses a valid inventory type such as @AWS:Application@ or
-- @AWS:InstanceInformation@.
_InvalidAggregatorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAggregatorException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAggregatorException"

-- | The specified filter value is not valid.
_InvalidInstanceInformationFilterValue :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInstanceInformationFilterValue =
  Prelude._MatchServiceError
    defaultService
    "InvalidInstanceInformationFilterValue"

-- | One or more of the parameters specified for the delete operation is not
-- valid. Verify all parameters and try again.
_InvalidDeleteInventoryParametersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDeleteInventoryParametersException =
  Prelude._MatchServiceError
    defaultService
    "InvalidDeleteInventoryParametersException"

-- | You specified too many custom compliance types. You can specify a
-- maximum of 10 different types.
_ComplianceTypeCountLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ComplianceTypeCountLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ComplianceTypeCountLimitExceededException"

-- | The OpsMetadata object exceeds the maximum number of OpsMetadata keys
-- that you can assign to an application in Application Manager.
_OpsMetadataKeyLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsMetadataKeyLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "OpsMetadataKeyLimitExceededException"

-- | You attempted to register a LAMBDA or STEP_FUNCTIONS task in a region
-- where the corresponding service is not available.
_FeatureNotAvailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_FeatureNotAvailableException =
  Prelude._MatchServiceError
    defaultService
    "FeatureNotAvailableException"

-- | The signal is not valid for the current Automation execution.
_InvalidAutomationSignalException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAutomationSignalException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAutomationSignalException"

-- | Error returned when an idempotent operation is retried and the
-- parameters don\'t match the original call to the API with the same
-- idempotency token.
_IdempotentParameterMismatch :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IdempotentParameterMismatch =
  Prelude._MatchServiceError
    defaultService
    "IdempotentParameterMismatch"

-- | Another @UpdateResourceDataSync@ request is being processed. Wait a few
-- minutes and try again.
_ResourceDataSyncConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceDataSyncConflictException =
  Prelude._MatchServiceError
    defaultService
    "ResourceDataSyncConflictException"

-- | Error returned when the ID specified for a resource, such as a
-- maintenance window or Patch baseline, doesn\'t exist.
--
-- For information about resource quotas in Systems Manager, see
-- <http://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm Systems Manager service quotas>
-- in the /AWS General Reference/.
_DoesNotExistException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DoesNotExistException =
  Prelude._MatchServiceError
    defaultService
    "DoesNotExistException"

-- | An Automation document with the specified name and version could not be
-- found.
_AutomationDefinitionVersionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AutomationDefinitionVersionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "AutomationDefinitionVersionNotFoundException"

-- | The document version is not valid or does not exist.
_InvalidDocumentVersion :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDocumentVersion =
  Prelude._MatchServiceError
    defaultService
    "InvalidDocumentVersion"

-- | The parameter type is not supported.
_UnsupportedParameterType :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedParameterType =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedParameterType"

-- | Parameter Store does not support changing a parameter type in a
-- hierarchy. For example, you can\'t change a parameter from a @String@
-- type to a @SecureString@ type. You must create a new, unique parameter.
_HierarchyTypeMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HierarchyTypeMismatchException =
  Prelude._MatchServiceError
    defaultService
    "HierarchyTypeMismatchException"

-- | One of the arguments passed is invalid.
_OpsMetadataInvalidArgumentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsMetadataInvalidArgumentException =
  Prelude._MatchServiceError
    defaultService
    "OpsMetadataInvalidArgumentException"

-- | The number of simultaneously running Automation executions exceeded the
-- allowable limit.
_AutomationExecutionLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AutomationExecutionLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "AutomationExecutionLimitExceededException"

-- | The specified update status operation is not valid.
_InvalidAutomationStatusUpdateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAutomationStatusUpdateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAutomationStatusUpdateException"

-- | There is no automation execution information for the requested
-- automation execution ID.
_AutomationExecutionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AutomationExecutionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "AutomationExecutionNotFoundException"

-- | The filter name is not valid. Verify the you entered the correct name
-- and try again.
_InvalidFilter :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFilter =
  Prelude._MatchServiceError
    defaultService
    "InvalidFilter"

-- | The parameter type name is not valid.
_InvalidTypeNameException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTypeNameException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTypeNameException"

-- | The specified document already exists.
_DocumentAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DocumentAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "DocumentAlreadyExists"

-- | The document cannot be shared with more AWS user accounts. You can share
-- a document with a maximum of 20 accounts. You can publicly share up to
-- five documents. If you need to increase this limit, contact AWS Support.
_DocumentPermissionLimit :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DocumentPermissionLimit =
  Prelude._MatchServiceError
    defaultService
    "DocumentPermissionLimit"

-- | The inventory item size has exceeded the size limit.
_ItemSizeLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ItemSizeLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ItemSizeLimitExceededException"

-- | Parameter Store retains the 100 most recently created versions of a
-- parameter. After this number of versions has been created, Parameter
-- Store deletes the oldest version when a new one is created. However, if
-- the oldest version has a /label/ attached to it, Parameter Store will
-- not delete the version and instead presents this error message:
--
-- @An error occurred (ParameterMaxVersionLimitExceeded) when calling the PutParameter operation: You attempted to create a new version of parameter-name by calling the PutParameter API with the overwrite flag. Version version-number, the oldest version, can\'t be deleted because it has a label associated with it. Move the label to another version of the parameter, and try again.@
--
-- This safeguard is to prevent parameter versions with mission critical
-- labels assigned to them from being deleted. To continue creating new
-- parameters, first move the label from the oldest version of the
-- parameter to a newer one for use in your operations. For information
-- about moving parameter labels, see
-- <http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-console-move Move a parameter label (console)>
-- or
-- <http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-cli-move Move a parameter label (CLI)>
-- in the /AWS Systems Manager User Guide/.
_ParameterMaxVersionLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterMaxVersionLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "ParameterMaxVersionLimitExceeded"

-- | The specified step name and execution ID don\'t exist. Verify the
-- information and try again.
_AutomationStepNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AutomationStepNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "AutomationStepNotFoundException"

-- | You can have at most 500 active Systems Manager documents.
_DocumentLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DocumentLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "DocumentLimitExceeded"

-- | The @Targets@ parameter includes too many tags. Remove one or more tags
-- and try the command again.
_TooManyTagsError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsError =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsError"

-- | You specified invalid keys or values in the @Context@ attribute for
-- @InventoryItem@. Verify the keys and values, and try again.
_InvalidInventoryItemContextException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInventoryItemContextException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInventoryItemContextException"

-- | There is a conflict in the policies specified for this parameter. You
-- can\'t, for example, specify two Expiration policies for a parameter.
-- Review your policies, and try again.
_IncompatiblePolicyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IncompatiblePolicyException =
  Prelude._MatchServiceError
    defaultService
    "IncompatiblePolicyException"

-- | A specified parameter argument isn\'t valid. Verify the available
-- arguments and try again.
_OpsItemInvalidParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsItemInvalidParameterException =
  Prelude._MatchServiceError
    defaultService
    "OpsItemInvalidParameterException"

-- | The specified document does not exist.
_InvalidDocument :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDocument =
  Prelude._MatchServiceError
    defaultService
    "InvalidDocument"

-- | An Automation document with the specified name could not be found.
_AutomationDefinitionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AutomationDefinitionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "AutomationDefinitionNotFoundException"

-- | The sub-type count exceeded the limit for the inventory type.
_SubTypeCountLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubTypeCountLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "SubTypeCountLimitExceededException"

-- | The request does not meet the regular expression requirement.
_InvalidAllowedPatternException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAllowedPatternException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAllowedPatternException"

-- | A parameter version can have a maximum of ten labels.
_ParameterVersionLabelLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterVersionLabelLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "ParameterVersionLabelLimitExceeded"

-- | Prism for InvalidCommandId' errors.
_InvalidCommandId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCommandId =
  Prelude._MatchServiceError
    defaultService
    "InvalidCommandId"

-- | The system is processing too many concurrent updates. Wait a few moments
-- and try again.
_OpsMetadataTooManyUpdatesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsMetadataTooManyUpdatesException =
  Prelude._MatchServiceError
    defaultService
    "OpsMetadataTooManyUpdatesException"

-- | Error returned when the caller has exceeded the default resource quotas.
-- For example, too many maintenance windows or patch baselines have been
-- created.
--
-- For information about resource quotas in Systems Manager, see
-- <http://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm Systems Manager service quotas>
-- in the /AWS General Reference/.
_ResourceLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "ResourceLimitExceededException"

-- | The output location is not valid or does not exist.
_InvalidOutputLocation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOutputLocation =
  Prelude._MatchServiceError
    defaultService
    "InvalidOutputLocation"

-- | You must specify values for all required parameters in the Systems
-- Manager document. You can only supply values to parameters defined in
-- the Systems Manager document.
_InvalidParameters :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameters =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameters"

-- | The specified target instance for the session is not fully configured
-- for use with Session Manager. For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html Getting started with Session Manager>
-- in the /AWS Systems Manager User Guide/. This error is also returned if
-- you attempt to start a session on an instance that is located in a
-- different account or Region
_TargetNotConnected :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TargetNotConnected =
  Prelude._MatchServiceError
    defaultService
    "TargetNotConnected"

-- | Inventory item type schema version has to match supported versions in
-- the service. Check output of GetInventorySchema to see the available
-- schema version for each type.
_UnsupportedInventorySchemaVersionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedInventorySchemaVersionException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedInventorySchemaVersionException"

-- | The association is not valid or does not exist.
_InvalidAssociation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAssociation =
  Prelude._MatchServiceError
    defaultService
    "InvalidAssociation"

-- | The update is not valid.
_InvalidUpdate :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidUpdate =
  Prelude._MatchServiceError
    defaultService
    "InvalidUpdate"

-- | The target is not valid or does not exist. It might not be configured
-- for Systems Manager or you might not have permission to perform the
-- operation.
_InvalidTarget :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTarget =
  Prelude._MatchServiceError
    defaultService
    "InvalidTarget"

-- | You have exceeded the limit for custom schemas. Delete one or more
-- custom schemas and try again.
_CustomSchemaCountLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CustomSchemaCountLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "CustomSchemaCountLimitExceededException"

-- | The specified service setting was not found. Either the service name or
-- the setting has not been provisioned by the AWS service team.
_ServiceSettingNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceSettingNotFound =
  Prelude._MatchServiceError
    defaultService
    "ServiceSettingNotFound"

-- | The version name has already been used in this document. Specify a
-- different version name, and then try again.
_DuplicateDocumentVersionName :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateDocumentVersionName =
  Prelude._MatchServiceError
    defaultService
    "DuplicateDocumentVersionName"

-- | The following problems can cause this exception:
--
-- You do not have permission to access the instance.
--
-- SSM Agent is not running. Verify that SSM Agent is running.
--
-- SSM Agent is not registered with the SSM endpoint. Try reinstalling SSM
-- Agent.
--
-- The instance is not in valid state. Valid states are: Running, Pending,
-- Stopped, Stopping. Invalid states are: Shutting-down and Terminated.
_InvalidInstanceId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInstanceId =
  Prelude._MatchServiceError
    defaultService
    "InvalidInstanceId"

-- | The OpsMetadata object does not exist.
_OpsMetadataNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsMetadataNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "OpsMetadataNotFoundException"

-- | The version of the document schema is not supported.
_InvalidDocumentSchemaVersion :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDocumentSchemaVersion =
  Prelude._MatchServiceError
    defaultService
    "InvalidDocumentSchemaVersion"

-- | The delete inventory option specified is not valid. Verify the option
-- and try again.
_InvalidOptionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOptionException =
  Prelude._MatchServiceError
    defaultService
    "InvalidOptionException"

-- | There are concurrent updates for a resource that supports one update at
-- a time.
_TooManyUpdates :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyUpdates =
  Prelude._MatchServiceError
    defaultService
    "TooManyUpdates"

-- | The specified OpsItem ID doesn\'t exist. Verify the ID and try again.
_OpsItemNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsItemNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "OpsItemNotFoundException"

-- | The updated status is the same as the current status.
_StatusUnchanged :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StatusUnchanged =
  Prelude._MatchServiceError
    defaultService
    "StatusUnchanged"

-- | The parameter could not be found. Verify the name and try again.
_ParameterNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterNotFound =
  Prelude._MatchServiceError
    defaultService
    "ParameterNotFound"

-- | The specified association does not exist.
_AssociationDoesNotExist :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AssociationDoesNotExist =
  Prelude._MatchServiceError
    defaultService
    "AssociationDoesNotExist"

-- | The version you specified is not valid. Use ListAssociationVersions to
-- view all versions of an association according to the association ID. Or,
-- use the @$LATEST@ parameter to view the latest version of the
-- association.
_InvalidAssociationVersion :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAssociationVersion =
  Prelude._MatchServiceError
    defaultService
    "InvalidAssociationVersion"

-- | You have exceeded the allowed maximum sync configurations.
_ResourceDataSyncCountExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceDataSyncCountExceededException =
  Prelude._MatchServiceError
    defaultService
    "ResourceDataSyncCountExceededException"

-- | A policy attribute or its value is invalid.
_InvalidPolicyAttributeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPolicyAttributeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidPolicyAttributeException"

-- | An error occurred on the server side.
_InternalServerError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServerError =
  Prelude._MatchServiceError
    defaultService
    "InternalServerError"

-- | The filter value is not valid. Verify the value and try again.
_InvalidFilterValue :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFilterValue =
  Prelude._MatchServiceError
    defaultService
    "InvalidFilterValue"

-- | You specified more than the maximum number of allowed policies for the
-- parameter. The maximum is 10.
_PoliciesLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PoliciesLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "PoliciesLimitExceededException"

-- | The plugin name is not valid.
_InvalidPluginName :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPluginName =
  Prelude._MatchServiceError
    defaultService
    "InvalidPluginName"

-- | You can have at most 2,000 active associations.
_AssociationLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AssociationLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "AssociationLimitExceeded"

-- | The inventory item has invalid content.
_ItemContentMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ItemContentMismatchException =
  Prelude._MatchServiceError
    defaultService
    "ItemContentMismatchException"

-- | The parameter already exists. You can\'t create duplicate parameters.
_ParameterAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "ParameterAlreadyExists"

-- | The content for the document is not valid.
_InvalidDocumentContent :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDocumentContent =
  Prelude._MatchServiceError
    defaultService
    "InvalidDocumentContent"

-- | You have exceeded the number of parameters for this AWS account. Delete
-- one or more parameters and try again.
_ParameterLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "ParameterLimitExceeded"

-- | Microsoft application patching is only available on EC2 instances and
-- advanced instances. To patch Microsoft applications on on-premises
-- servers and VMs, you must enable advanced instances. For more
-- information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances-advanced.html Using the advanced-instances tier>
-- in the /AWS Systems Manager User Guide/.
_UnsupportedFeatureRequiredException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedFeatureRequiredException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedFeatureRequiredException"

-- | The ID specified for the delete operation does not exist or is not
-- valid. Verify the ID and try again.
_InvalidDeletionIdException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDeletionIdException =
  Prelude._MatchServiceError
    defaultService
    "InvalidDeletionIdException"

-- | The specified association already exists.
_AssociationAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AssociationAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "AssociationAlreadyExists"

-- | The schedule is invalid. Verify your cron or rate expression and try
-- again.
_InvalidSchedule :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSchedule =
  Prelude._MatchServiceError
    defaultService
    "InvalidSchedule"

-- | A sync configuration with the same name already exists.
_ResourceDataSyncAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceDataSyncAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ResourceDataSyncAlreadyExistsException"

-- | Error returned if an attempt is made to delete a patch baseline that is
-- registered for a patch group.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The content of the association document matches another document. Change
-- the content of the document and try again.
_DuplicateDocumentContent :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateDocumentContent =
  Prelude._MatchServiceError
    defaultService
    "DuplicateDocumentContent"

-- | The specified sync name was not found.
_ResourceDataSyncNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceDataSyncNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceDataSyncNotFoundException"

-- | Error returned if an attempt is made to register a patch group with a
-- patch baseline that is already registered with a different patch
-- baseline.
_AlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "AlreadyExistsException"

-- | The supplied parameters for invoking the specified Automation document
-- are incorrect. For example, they may not match the set of parameters
-- permitted for the specified Automation document.
_InvalidAutomationExecutionParametersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidAutomationExecutionParametersException =
  Prelude._MatchServiceError
    defaultService
    "InvalidAutomationExecutionParametersException"

-- | One or more configuration items is not valid. Verify that a valid Amazon
-- Resource Name (ARN) was provided for an Amazon SNS topic.
_InvalidNotificationConfig :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNotificationConfig =
  Prelude._MatchServiceError
    defaultService
    "InvalidNotificationConfig"

-- | The specified key is not valid.
_InvalidFilterKey :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFilterKey =
  Prelude._MatchServiceError
    defaultService
    "InvalidFilterKey"

-- | The policy type is not supported. Parameter Store supports the following
-- policy types: Expiration, ExpirationNotification, and
-- NoChangeNotification.
_InvalidPolicyTypeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPolicyTypeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidPolicyTypeException"

-- | The document type is not valid. Valid document types are described in
-- the @DocumentType@ property.
_InvalidDocumentType :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDocumentType =
  Prelude._MatchServiceError
    defaultService
    "InvalidDocumentType"

-- | The size of inventory data has exceeded the total size limit for the
-- resource.
_TotalSizeLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TotalSizeLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "TotalSizeLimitExceededException"

-- | The resource ID is not valid. Verify that you entered the correct ID and
-- try again.
_InvalidResourceId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResourceId =
  Prelude._MatchServiceError
    defaultService
    "InvalidResourceId"

-- | The specified inventory item result attribute is not valid.
_InvalidResultAttributeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResultAttributeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidResultAttributeException"

-- | The resource type is not valid. For example, if you are attempting to
-- tag an instance, the instance must be a registered, managed instance.
_InvalidResourceType :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResourceType =
  Prelude._MatchServiceError
    defaultService
    "InvalidResourceType"

-- | The specified sync configuration is invalid.
_ResourceDataSyncInvalidConfigurationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceDataSyncInvalidConfigurationException =
  Prelude._MatchServiceError
    defaultService
    "ResourceDataSyncInvalidConfigurationException"

-- | The query key ID is not valid.
_InvalidKeyId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidKeyId =
  Prelude._MatchServiceError
    defaultService
    "InvalidKeyId"

-- | The specified inventory group is not valid.
_InvalidInventoryGroupException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInventoryGroupException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInventoryGroupException"

-- | The document has too many versions. Delete one or more document versions
-- and try again.
_DocumentVersionLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DocumentVersionLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "DocumentVersionLimitExceeded"

-- | You cannot specify an instance ID in more than one association.
_DuplicateInstanceId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateInstanceId =
  Prelude._MatchServiceError
    defaultService
    "DuplicateInstanceId"

-- | The command ID and instance ID you specified did not match any
-- invocations. Verify the command ID and the instance ID and try again.
_InvocationDoesNotExist :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvocationDoesNotExist =
  Prelude._MatchServiceError
    defaultService
    "InvocationDoesNotExist"

-- | You attempted to delete a document while it is still shared. You must
-- stop sharing the document before you can delete it.
_InvalidDocumentOperation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDocumentOperation =
  Prelude._MatchServiceError
    defaultService
    "InvalidDocumentOperation"

-- | Indicates that the Change Manager change template used in the change
-- request was rejected or is still in a pending state.
_AutomationDefinitionNotApprovedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AutomationDefinitionNotApprovedException =
  Prelude._MatchServiceError
    defaultService
    "AutomationDefinitionNotApprovedException"

-- | An OpsMetadata object already exists for the selected resource.
_OpsMetadataAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsMetadataAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "OpsMetadataAlreadyExistsException"

-- | The specified parameter version was not found. Verify the parameter name
-- and version, and try again.
_ParameterVersionNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterVersionNotFound =
  Prelude._MatchServiceError
    defaultService
    "ParameterVersionNotFound"

-- | The request caused OpsItems to exceed one or more quotas. For
-- information about OpsItem quotas, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-learn-more.html#OpsCenter-learn-more-limits What are the resource limits for OpsCenter?>.
_OpsItemLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsItemLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "OpsItemLimitExceededException"

-- | The calendar entry contained in the specified Systems Manager document
-- is not supported.
_UnsupportedCalendarException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedCalendarException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedCalendarException"

-- | Your account reached the maximum number of OpsMetadata objects allowed
-- by Application Manager. The maximum is 200 OpsMetadata objects. Delete
-- one or more OpsMetadata object and try again.
_OpsMetadataLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsMetadataLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "OpsMetadataLimitExceededException"

-- | The specified execution ID does not exist. Verify the ID number and try
-- again.
_AssociationExecutionDoesNotExist :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AssociationExecutionDoesNotExist =
  Prelude._MatchServiceError
    defaultService
    "AssociationExecutionDoesNotExist"

-- | A hierarchy can have a maximum of 15 levels. For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html Requirements and constraints for parameter names>
-- in the /AWS Systems Manager User Guide/.
_HierarchyLevelLimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HierarchyLevelLimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "HierarchyLevelLimitExceededException"

-- | The S3 bucket does not exist.
_InvalidOutputFolder :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOutputFolder =
  Prelude._MatchServiceError
    defaultService
    "InvalidOutputFolder"

-- | The OpsItem already exists.
_OpsItemAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OpsItemAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "OpsItemAlreadyExistsException"

-- | The activation ID is not valid. Verify the you entered the correct
-- ActivationId or ActivationCode and try again.
_InvalidActivationId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidActivationId =
  Prelude._MatchServiceError
    defaultService
    "InvalidActivationId"

-- | The role name can\'t contain invalid characters. Also verify that you
-- specified an IAM role for notifications that includes the required trust
-- policy. For information about configuring the IAM role for Run Command
-- notifications, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html Configuring Amazon SNS Notifications for Run Command>
-- in the /AWS Systems Manager User Guide/.
_InvalidRole :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRole =
  Prelude._MatchServiceError
    defaultService
    "InvalidRole"

-- | The size limit of a document is 64 KB.
_MaxDocumentSizeExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MaxDocumentSizeExceeded =
  Prelude._MatchServiceError
    defaultService
    "MaxDocumentSizeExceeded"

-- | The specified token is not valid.
_InvalidNextToken :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextToken =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextToken"

-- | You have reached the maximum number versions allowed for an association.
-- Each association has a limit of 1,000 versions.
_AssociationVersionLimitExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AssociationVersionLimitExceeded =
  Prelude._MatchServiceError
    defaultService
    "AssociationVersionLimitExceeded"

-- | The operating systems you specified is not supported, or the operation
-- is not supported for the operating system.
_UnsupportedOperatingSystem :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedOperatingSystem =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedOperatingSystem"

-- | The activation is not valid. The activation might have been deleted, or
-- the ActivationId and the ActivationCode do not match.
_InvalidActivation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidActivation =
  Prelude._MatchServiceError
    defaultService
    "InvalidActivation"

-- | The request is not valid.
_InvalidInventoryRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInventoryRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidInventoryRequestException"

-- | The permission type is not supported. /Share/ is the only supported
-- permission type.
_InvalidPermissionType :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPermissionType =
  Prelude._MatchServiceError
    defaultService
    "InvalidPermissionType"

-- | The specified filter option is not valid. Valid options are Equals and
-- BeginsWith. For Path filter, valid options are Recursive and OneLevel.
_InvalidFilterOption :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidFilterOption =
  Prelude._MatchServiceError
    defaultService
    "InvalidFilterOption"

-- | One or more content items is not valid.
_InvalidItemContentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidItemContentException =
  Prelude._MatchServiceError
    defaultService
    "InvalidItemContentException"

-- | You specified the @Safe@ option for the
-- DeregisterTargetFromMaintenanceWindow operation, but the target is still
-- referenced in a task.
_TargetInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TargetInUseException =
  Prelude._MatchServiceError
    defaultService
    "TargetInUseException"

-- | The @Context@ attribute that you specified for the @InventoryItem@ is
-- not allowed for this inventory type. You can only use the @Context@
-- attribute with inventory types like @AWS:ComplianceItem@.
_UnsupportedInventoryItemContextException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedInventoryItemContextException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedInventoryItemContextException"

-- | The document does not support the platform type of the given instance
-- ID(s). For example, you sent an document for a Windows instance to a
-- Linux instance.
_UnsupportedPlatformType :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedPlatformType =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedPlatformType"

-- | You must disassociate a document from all instances before you can
-- delete it.
_AssociatedInstances :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AssociatedInstances =
  Prelude._MatchServiceError
    defaultService
    "AssociatedInstances"

-- | The parameter name is not valid.
_ParameterPatternMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ParameterPatternMismatchException =
  Prelude._MatchServiceError
    defaultService
    "ParameterPatternMismatchException"

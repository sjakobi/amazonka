{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Systems Manager__
--
-- AWS Systems Manager is a collection of capabilities that helps you automate management tasks such as collecting system inventory, applying operating system (OS) patches, automating the creation of Amazon Machine Images (AMIs), and configuring operating systems (OSs) and applications at scale. Systems Manager lets you remotely and securely manage the configuration of your managed instances. A /managed instance/ is any Amazon Elastic Compute Cloud instance (EC2 instance), or any on-premises server or virtual machine (VM) in your hybrid environment that has been configured for Systems Manager.
--
-- This reference is intended to be used with the <https://docs.aws.amazon.com/systems-manager/latest/userguide/ AWS Systems Manager User Guide> .
--
-- To get started, verify prerequisites and configure managed instances. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html Setting up AWS Systems Manager> in the /AWS Systems Manager User Guide/ .
--
-- For information about other API actions you can perform on EC2 instances, see the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ Amazon EC2 API Reference> . For information about how to use a Query API, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html Making API requests> .
module Network.AWS.SSM
  ( -- * Service Configuration
    ssm,

    -- * Errors
    -- $errors

    -- ** InvalidAggregatorException
    _InvalidAggregatorException,

    -- ** InvalidInstanceInformationFilterValue
    _InvalidInstanceInformationFilterValue,

    -- ** InvalidDeleteInventoryParametersException
    _InvalidDeleteInventoryParametersException,

    -- ** ComplianceTypeCountLimitExceededException
    _ComplianceTypeCountLimitExceededException,

    -- ** OpsMetadataKeyLimitExceededException
    _OpsMetadataKeyLimitExceededException,

    -- ** FeatureNotAvailableException
    _FeatureNotAvailableException,

    -- ** InvalidAutomationSignalException
    _InvalidAutomationSignalException,

    -- ** IdempotentParameterMismatch
    _IdempotentParameterMismatch,

    -- ** ResourceDataSyncConflictException
    _ResourceDataSyncConflictException,

    -- ** DoesNotExistException
    _DoesNotExistException,

    -- ** AutomationDefinitionVersionNotFoundException
    _AutomationDefinitionVersionNotFoundException,

    -- ** InvalidDocumentVersion
    _InvalidDocumentVersion,

    -- ** UnsupportedParameterType
    _UnsupportedParameterType,

    -- ** HierarchyTypeMismatchException
    _HierarchyTypeMismatchException,

    -- ** OpsMetadataInvalidArgumentException
    _OpsMetadataInvalidArgumentException,

    -- ** AutomationExecutionLimitExceededException
    _AutomationExecutionLimitExceededException,

    -- ** InvalidAutomationStatusUpdateException
    _InvalidAutomationStatusUpdateException,

    -- ** AutomationExecutionNotFoundException
    _AutomationExecutionNotFoundException,

    -- ** InvalidFilter
    _InvalidFilter,

    -- ** InvalidTypeNameException
    _InvalidTypeNameException,

    -- ** DocumentAlreadyExists
    _DocumentAlreadyExists,

    -- ** DocumentPermissionLimit
    _DocumentPermissionLimit,

    -- ** ItemSizeLimitExceededException
    _ItemSizeLimitExceededException,

    -- ** ParameterMaxVersionLimitExceeded
    _ParameterMaxVersionLimitExceeded,

    -- ** AutomationStepNotFoundException
    _AutomationStepNotFoundException,

    -- ** DocumentLimitExceeded
    _DocumentLimitExceeded,

    -- ** TooManyTagsError
    _TooManyTagsError,

    -- ** InvalidInventoryItemContextException
    _InvalidInventoryItemContextException,

    -- ** IncompatiblePolicyException
    _IncompatiblePolicyException,

    -- ** OpsItemInvalidParameterException
    _OpsItemInvalidParameterException,

    -- ** InvalidDocument
    _InvalidDocument,

    -- ** AutomationDefinitionNotFoundException
    _AutomationDefinitionNotFoundException,

    -- ** SubTypeCountLimitExceededException
    _SubTypeCountLimitExceededException,

    -- ** InvalidAllowedPatternException
    _InvalidAllowedPatternException,

    -- ** ParameterVersionLabelLimitExceeded
    _ParameterVersionLabelLimitExceeded,

    -- ** InvalidCommandId
    _InvalidCommandId,

    -- ** OpsMetadataTooManyUpdatesException
    _OpsMetadataTooManyUpdatesException,

    -- ** ResourceLimitExceededException
    _ResourceLimitExceededException,

    -- ** InvalidOutputLocation
    _InvalidOutputLocation,

    -- ** InvalidParameters
    _InvalidParameters,

    -- ** TargetNotConnected
    _TargetNotConnected,

    -- ** UnsupportedInventorySchemaVersionException
    _UnsupportedInventorySchemaVersionException,

    -- ** InvalidAssociation
    _InvalidAssociation,

    -- ** InvalidUpdate
    _InvalidUpdate,

    -- ** InvalidTarget
    _InvalidTarget,

    -- ** CustomSchemaCountLimitExceededException
    _CustomSchemaCountLimitExceededException,

    -- ** ServiceSettingNotFound
    _ServiceSettingNotFound,

    -- ** DuplicateDocumentVersionName
    _DuplicateDocumentVersionName,

    -- ** InvalidInstanceId
    _InvalidInstanceId,

    -- ** OpsMetadataNotFoundException
    _OpsMetadataNotFoundException,

    -- ** InvalidDocumentSchemaVersion
    _InvalidDocumentSchemaVersion,

    -- ** InvalidOptionException
    _InvalidOptionException,

    -- ** TooManyUpdates
    _TooManyUpdates,

    -- ** OpsItemNotFoundException
    _OpsItemNotFoundException,

    -- ** StatusUnchanged
    _StatusUnchanged,

    -- ** ParameterNotFound
    _ParameterNotFound,

    -- ** AssociationDoesNotExist
    _AssociationDoesNotExist,

    -- ** InvalidAssociationVersion
    _InvalidAssociationVersion,

    -- ** ResourceDataSyncCountExceededException
    _ResourceDataSyncCountExceededException,

    -- ** InvalidPolicyAttributeException
    _InvalidPolicyAttributeException,

    -- ** InternalServerError
    _InternalServerError,

    -- ** InvalidFilterValue
    _InvalidFilterValue,

    -- ** PoliciesLimitExceededException
    _PoliciesLimitExceededException,

    -- ** InvalidPluginName
    _InvalidPluginName,

    -- ** AssociationLimitExceeded
    _AssociationLimitExceeded,

    -- ** ItemContentMismatchException
    _ItemContentMismatchException,

    -- ** ParameterAlreadyExists
    _ParameterAlreadyExists,

    -- ** InvalidDocumentContent
    _InvalidDocumentContent,

    -- ** ParameterLimitExceeded
    _ParameterLimitExceeded,

    -- ** UnsupportedFeatureRequiredException
    _UnsupportedFeatureRequiredException,

    -- ** InvalidDeletionIdException
    _InvalidDeletionIdException,

    -- ** AssociationAlreadyExists
    _AssociationAlreadyExists,

    -- ** InvalidSchedule
    _InvalidSchedule,

    -- ** ResourceDataSyncAlreadyExistsException
    _ResourceDataSyncAlreadyExistsException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** DuplicateDocumentContent
    _DuplicateDocumentContent,

    -- ** ResourceDataSyncNotFoundException
    _ResourceDataSyncNotFoundException,

    -- ** AlreadyExistsException
    _AlreadyExistsException,

    -- ** InvalidAutomationExecutionParametersException
    _InvalidAutomationExecutionParametersException,

    -- ** InvalidNotificationConfig
    _InvalidNotificationConfig,

    -- ** InvalidFilterKey
    _InvalidFilterKey,

    -- ** InvalidPolicyTypeException
    _InvalidPolicyTypeException,

    -- ** InvalidDocumentType
    _InvalidDocumentType,

    -- ** TotalSizeLimitExceededException
    _TotalSizeLimitExceededException,

    -- ** InvalidResourceId
    _InvalidResourceId,

    -- ** InvalidResultAttributeException
    _InvalidResultAttributeException,

    -- ** InvalidResourceType
    _InvalidResourceType,

    -- ** ResourceDataSyncInvalidConfigurationException
    _ResourceDataSyncInvalidConfigurationException,

    -- ** InvalidKeyId
    _InvalidKeyId,

    -- ** InvalidInventoryGroupException
    _InvalidInventoryGroupException,

    -- ** DocumentVersionLimitExceeded
    _DocumentVersionLimitExceeded,

    -- ** DuplicateInstanceId
    _DuplicateInstanceId,

    -- ** InvocationDoesNotExist
    _InvocationDoesNotExist,

    -- ** InvalidDocumentOperation
    _InvalidDocumentOperation,

    -- ** AutomationDefinitionNotApprovedException
    _AutomationDefinitionNotApprovedException,

    -- ** OpsMetadataAlreadyExistsException
    _OpsMetadataAlreadyExistsException,

    -- ** ParameterVersionNotFound
    _ParameterVersionNotFound,

    -- ** OpsItemLimitExceededException
    _OpsItemLimitExceededException,

    -- ** UnsupportedCalendarException
    _UnsupportedCalendarException,

    -- ** OpsMetadataLimitExceededException
    _OpsMetadataLimitExceededException,

    -- ** AssociationExecutionDoesNotExist
    _AssociationExecutionDoesNotExist,

    -- ** HierarchyLevelLimitExceededException
    _HierarchyLevelLimitExceededException,

    -- ** InvalidOutputFolder
    _InvalidOutputFolder,

    -- ** OpsItemAlreadyExistsException
    _OpsItemAlreadyExistsException,

    -- ** InvalidActivationId
    _InvalidActivationId,

    -- ** InvalidRole
    _InvalidRole,

    -- ** MaxDocumentSizeExceeded
    _MaxDocumentSizeExceeded,

    -- ** InvalidNextToken
    _InvalidNextToken,

    -- ** AssociationVersionLimitExceeded
    _AssociationVersionLimitExceeded,

    -- ** UnsupportedOperatingSystem
    _UnsupportedOperatingSystem,

    -- ** InvalidActivation
    _InvalidActivation,

    -- ** InvalidInventoryRequestException
    _InvalidInventoryRequestException,

    -- ** InvalidPermissionType
    _InvalidPermissionType,

    -- ** InvalidFilterOption
    _InvalidFilterOption,

    -- ** InvalidItemContentException
    _InvalidItemContentException,

    -- ** TargetInUseException
    _TargetInUseException,

    -- ** UnsupportedInventoryItemContextException
    _UnsupportedInventoryItemContextException,

    -- ** UnsupportedPlatformType
    _UnsupportedPlatformType,

    -- ** AssociatedInstances
    _AssociatedInstances,

    -- ** ParameterPatternMismatchException
    _ParameterPatternMismatchException,

    -- * Waiters
    -- $waiters

    -- ** CommandExecuted
    commandExecuted,

    -- * Operations
    -- $operations

    -- ** ListResourceComplianceSummaries (Paginated)
    module Network.AWS.SSM.ListResourceComplianceSummaries,

    -- ** DescribePatchGroups (Paginated)
    module Network.AWS.SSM.DescribePatchGroups,

    -- ** DescribeOpsItems (Paginated)
    module Network.AWS.SSM.DescribeOpsItems,

    -- ** TerminateSession
    module Network.AWS.SSM.TerminateSession,

    -- ** GetParameter
    module Network.AWS.SSM.GetParameter,

    -- ** GetOpsMetadata
    module Network.AWS.SSM.GetOpsMetadata,

    -- ** UpdateDocumentDefaultVersion
    module Network.AWS.SSM.UpdateDocumentDefaultVersion,

    -- ** ListResourceDataSync (Paginated)
    module Network.AWS.SSM.ListResourceDataSync,

    -- ** DescribeParameters (Paginated)
    module Network.AWS.SSM.DescribeParameters,

    -- ** RegisterTaskWithMaintenanceWindow
    module Network.AWS.SSM.RegisterTaskWithMaintenanceWindow,

    -- ** GetOpsItem
    module Network.AWS.SSM.GetOpsItem,

    -- ** GetInventory (Paginated)
    module Network.AWS.SSM.GetInventory,

    -- ** DescribeAssociation
    module Network.AWS.SSM.DescribeAssociation,

    -- ** UpdateAssociationStatus
    module Network.AWS.SSM.UpdateAssociationStatus,

    -- ** DeregisterManagedInstance
    module Network.AWS.SSM.DeregisterManagedInstance,

    -- ** DescribeAssociationExecutionTargets (Paginated)
    module Network.AWS.SSM.DescribeAssociationExecutionTargets,

    -- ** UpdateMaintenanceWindowTarget
    module Network.AWS.SSM.UpdateMaintenanceWindowTarget,

    -- ** DescribeAutomationStepExecutions (Paginated)
    module Network.AWS.SSM.DescribeAutomationStepExecutions,

    -- ** CreatePatchBaseline
    module Network.AWS.SSM.CreatePatchBaseline,

    -- ** GetCommandInvocation
    module Network.AWS.SSM.GetCommandInvocation,

    -- ** ListCommands (Paginated)
    module Network.AWS.SSM.ListCommands,

    -- ** DeregisterTargetFromMaintenanceWindow
    module Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow,

    -- ** DescribeInstancePatchStates (Paginated)
    module Network.AWS.SSM.DescribeInstancePatchStates,

    -- ** UpdateDocument
    module Network.AWS.SSM.UpdateDocument,

    -- ** ListDocuments (Paginated)
    module Network.AWS.SSM.ListDocuments,

    -- ** ResetServiceSetting
    module Network.AWS.SSM.ResetServiceSetting,

    -- ** StartSession
    module Network.AWS.SSM.StartSession,

    -- ** GetOpsSummary (Paginated)
    module Network.AWS.SSM.GetOpsSummary,

    -- ** DeleteDocument
    module Network.AWS.SSM.DeleteDocument,

    -- ** DeleteInventory
    module Network.AWS.SSM.DeleteInventory,

    -- ** DeleteParameters
    module Network.AWS.SSM.DeleteParameters,

    -- ** ListOpsMetadata (Paginated)
    module Network.AWS.SSM.ListOpsMetadata,

    -- ** SendCommand
    module Network.AWS.SSM.SendCommand,

    -- ** RemoveTagsFromResource
    module Network.AWS.SSM.RemoveTagsFromResource,

    -- ** DescribeEffectiveInstanceAssociations (Paginated)
    module Network.AWS.SSM.DescribeEffectiveInstanceAssociations,

    -- ** CreateDocument
    module Network.AWS.SSM.CreateDocument,

    -- ** GetCalendarState
    module Network.AWS.SSM.GetCalendarState,

    -- ** RegisterTargetWithMaintenanceWindow
    module Network.AWS.SSM.RegisterTargetWithMaintenanceWindow,

    -- ** DescribeSessions (Paginated)
    module Network.AWS.SSM.DescribeSessions,

    -- ** DeleteOpsMetadata
    module Network.AWS.SSM.DeleteOpsMetadata,

    -- ** UpdateOpsItem
    module Network.AWS.SSM.UpdateOpsItem,

    -- ** DeleteAssociation
    module Network.AWS.SSM.DeleteAssociation,

    -- ** UpdateAssociation
    module Network.AWS.SSM.UpdateAssociation,

    -- ** UpdateOpsMetadata
    module Network.AWS.SSM.UpdateOpsMetadata,

    -- ** DescribeInstanceInformation (Paginated)
    module Network.AWS.SSM.DescribeInstanceInformation,

    -- ** DescribeMaintenanceWindowExecutionTaskInvocations (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations,

    -- ** DeleteParameter
    module Network.AWS.SSM.DeleteParameter,

    -- ** GetMaintenanceWindowExecutionTaskInvocation
    module Network.AWS.SSM.GetMaintenanceWindowExecutionTaskInvocation,

    -- ** CreateActivation
    module Network.AWS.SSM.CreateActivation,

    -- ** CreateOpsMetadata
    module Network.AWS.SSM.CreateOpsMetadata,

    -- ** SendAutomationSignal
    module Network.AWS.SSM.SendAutomationSignal,

    -- ** ListComplianceSummaries (Paginated)
    module Network.AWS.SSM.ListComplianceSummaries,

    -- ** DescribeMaintenanceWindowExecutions (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowExecutions,

    -- ** DescribeMaintenanceWindowsForTarget (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowsForTarget,

    -- ** CreateAssociation
    module Network.AWS.SSM.CreateAssociation,

    -- ** CreateOpsItem
    module Network.AWS.SSM.CreateOpsItem,

    -- ** StartChangeRequestExecution
    module Network.AWS.SSM.StartChangeRequestExecution,

    -- ** ListAssociationVersions (Paginated)
    module Network.AWS.SSM.ListAssociationVersions,

    -- ** DescribeDocument
    module Network.AWS.SSM.DescribeDocument,

    -- ** DeregisterTaskFromMaintenanceWindow
    module Network.AWS.SSM.DeregisterTaskFromMaintenanceWindow,

    -- ** PutComplianceItems
    module Network.AWS.SSM.PutComplianceItems,

    -- ** GetMaintenanceWindowTask
    module Network.AWS.SSM.GetMaintenanceWindowTask,

    -- ** GetDeployablePatchSnapshotForInstance
    module Network.AWS.SSM.GetDeployablePatchSnapshotForInstance,

    -- ** GetMaintenanceWindow
    module Network.AWS.SSM.GetMaintenanceWindow,

    -- ** DeregisterPatchBaselineForPatchGroup
    module Network.AWS.SSM.DeregisterPatchBaselineForPatchGroup,

    -- ** ResumeSession
    module Network.AWS.SSM.ResumeSession,

    -- ** RegisterDefaultPatchBaseline
    module Network.AWS.SSM.RegisterDefaultPatchBaseline,

    -- ** DescribeMaintenanceWindows (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindows,

    -- ** ModifyDocumentPermission
    module Network.AWS.SSM.ModifyDocumentPermission,

    -- ** DescribeInstancePatches (Paginated)
    module Network.AWS.SSM.DescribeInstancePatches,

    -- ** GetParameters
    module Network.AWS.SSM.GetParameters,

    -- ** ListDocumentVersions (Paginated)
    module Network.AWS.SSM.ListDocumentVersions,

    -- ** UpdateResourceDataSync
    module Network.AWS.SSM.UpdateResourceDataSync,

    -- ** DeletePatchBaseline
    module Network.AWS.SSM.DeletePatchBaseline,

    -- ** ListOpsItemEvents (Paginated)
    module Network.AWS.SSM.ListOpsItemEvents,

    -- ** DeleteResourceDataSync
    module Network.AWS.SSM.DeleteResourceDataSync,

    -- ** DescribeInstancePatchStatesForPatchGroup (Paginated)
    module Network.AWS.SSM.DescribeInstancePatchStatesForPatchGroup,

    -- ** GetConnectionStatus
    module Network.AWS.SSM.GetConnectionStatus,

    -- ** UpdatePatchBaseline
    module Network.AWS.SSM.UpdatePatchBaseline,

    -- ** DescribeAvailablePatches (Paginated)
    module Network.AWS.SSM.DescribeAvailablePatches,

    -- ** ListComplianceItems (Paginated)
    module Network.AWS.SSM.ListComplianceItems,

    -- ** GetDocument
    module Network.AWS.SSM.GetDocument,

    -- ** AddTagsToResource
    module Network.AWS.SSM.AddTagsToResource,

    -- ** GetPatchBaselineForPatchGroup
    module Network.AWS.SSM.GetPatchBaselineForPatchGroup,

    -- ** UpdateManagedInstanceRole
    module Network.AWS.SSM.UpdateManagedInstanceRole,

    -- ** DescribeMaintenanceWindowSchedule (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowSchedule,

    -- ** CreateResourceDataSync
    module Network.AWS.SSM.CreateResourceDataSync,

    -- ** CreateAssociationBatch
    module Network.AWS.SSM.CreateAssociationBatch,

    -- ** CancelCommand
    module Network.AWS.SSM.CancelCommand,

    -- ** DescribeDocumentPermission
    module Network.AWS.SSM.DescribeDocumentPermission,

    -- ** RegisterPatchBaselineForPatchGroup
    module Network.AWS.SSM.RegisterPatchBaselineForPatchGroup,

    -- ** DescribeEffectivePatchesForPatchBaseline (Paginated)
    module Network.AWS.SSM.DescribeEffectivePatchesForPatchBaseline,

    -- ** ListCommandInvocations (Paginated)
    module Network.AWS.SSM.ListCommandInvocations,

    -- ** DescribeMaintenanceWindowTargets (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowTargets,

    -- ** GetAutomationExecution
    module Network.AWS.SSM.GetAutomationExecution,

    -- ** GetPatchBaseline
    module Network.AWS.SSM.GetPatchBaseline,

    -- ** DescribePatchGroupState
    module Network.AWS.SSM.DescribePatchGroupState,

    -- ** DescribePatchBaselines (Paginated)
    module Network.AWS.SSM.DescribePatchBaselines,

    -- ** UpdateDocumentMetadata
    module Network.AWS.SSM.UpdateDocumentMetadata,

    -- ** DescribeAutomationExecutions (Paginated)
    module Network.AWS.SSM.DescribeAutomationExecutions,

    -- ** PutInventory
    module Network.AWS.SSM.PutInventory,

    -- ** DescribeInventoryDeletions (Paginated)
    module Network.AWS.SSM.DescribeInventoryDeletions,

    -- ** DescribeMaintenanceWindowExecutionTasks (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowExecutionTasks,

    -- ** DeleteMaintenanceWindow
    module Network.AWS.SSM.DeleteMaintenanceWindow,

    -- ** GetDefaultPatchBaseline
    module Network.AWS.SSM.GetDefaultPatchBaseline,

    -- ** PutParameter
    module Network.AWS.SSM.PutParameter,

    -- ** UpdateMaintenanceWindow
    module Network.AWS.SSM.UpdateMaintenanceWindow,

    -- ** ListAssociations (Paginated)
    module Network.AWS.SSM.ListAssociations,

    -- ** GetMaintenanceWindowExecutionTask
    module Network.AWS.SSM.GetMaintenanceWindowExecutionTask,

    -- ** StartAutomationExecution
    module Network.AWS.SSM.StartAutomationExecution,

    -- ** DeleteActivation
    module Network.AWS.SSM.DeleteActivation,

    -- ** CreateMaintenanceWindow
    module Network.AWS.SSM.CreateMaintenanceWindow,

    -- ** DescribeAssociationExecutions (Paginated)
    module Network.AWS.SSM.DescribeAssociationExecutions,

    -- ** GetMaintenanceWindowExecution
    module Network.AWS.SSM.GetMaintenanceWindowExecution,

    -- ** StopAutomationExecution
    module Network.AWS.SSM.StopAutomationExecution,

    -- ** GetInventorySchema (Paginated)
    module Network.AWS.SSM.GetInventorySchema,

    -- ** StartAssociationsOnce
    module Network.AWS.SSM.StartAssociationsOnce,

    -- ** CancelMaintenanceWindowExecution
    module Network.AWS.SSM.CancelMaintenanceWindowExecution,

    -- ** LabelParameterVersion
    module Network.AWS.SSM.LabelParameterVersion,

    -- ** GetParameterHistory (Paginated)
    module Network.AWS.SSM.GetParameterHistory,

    -- ** GetServiceSetting
    module Network.AWS.SSM.GetServiceSetting,

    -- ** UpdateMaintenanceWindowTask
    module Network.AWS.SSM.UpdateMaintenanceWindowTask,

    -- ** ListDocumentMetadataHistory
    module Network.AWS.SSM.ListDocumentMetadataHistory,

    -- ** ListInventoryEntries
    module Network.AWS.SSM.ListInventoryEntries,

    -- ** ListTagsForResource
    module Network.AWS.SSM.ListTagsForResource,

    -- ** GetParametersByPath (Paginated)
    module Network.AWS.SSM.GetParametersByPath,

    -- ** DescribeActivations (Paginated)
    module Network.AWS.SSM.DescribeActivations,

    -- ** DescribeInstanceAssociationsStatus (Paginated)
    module Network.AWS.SSM.DescribeInstanceAssociationsStatus,

    -- ** DescribePatchProperties (Paginated)
    module Network.AWS.SSM.DescribePatchProperties,

    -- ** UpdateServiceSetting
    module Network.AWS.SSM.UpdateServiceSetting,

    -- ** DescribeMaintenanceWindowTasks (Paginated)
    module Network.AWS.SSM.DescribeMaintenanceWindowTasks,

    -- * Types

    -- ** AssociationComplianceSeverity
    AssociationComplianceSeverity (..),

    -- ** AssociationExecutionFilterKey
    AssociationExecutionFilterKey (..),

    -- ** AssociationExecutionTargetsFilterKey
    AssociationExecutionTargetsFilterKey (..),

    -- ** AssociationFilterKey
    AssociationFilterKey (..),

    -- ** AssociationFilterOperatorType
    AssociationFilterOperatorType (..),

    -- ** AssociationStatusName
    AssociationStatusName (..),

    -- ** AssociationSyncCompliance
    AssociationSyncCompliance (..),

    -- ** AttachmentHashType
    AttachmentHashType (..),

    -- ** AttachmentsSourceKey
    AttachmentsSourceKey (..),

    -- ** AutomationExecutionFilterKey
    AutomationExecutionFilterKey (..),

    -- ** AutomationExecutionStatus
    AutomationExecutionStatus (..),

    -- ** AutomationSubtype
    AutomationSubtype (..),

    -- ** AutomationType
    AutomationType (..),

    -- ** CalendarState
    CalendarState (..),

    -- ** CommandFilterKey
    CommandFilterKey (..),

    -- ** CommandInvocationStatus
    CommandInvocationStatus (..),

    -- ** CommandPluginStatus
    CommandPluginStatus (..),

    -- ** CommandStatus
    CommandStatus (..),

    -- ** ComplianceQueryOperatorType
    ComplianceQueryOperatorType (..),

    -- ** ComplianceSeverity
    ComplianceSeverity (..),

    -- ** ComplianceStatus
    ComplianceStatus (..),

    -- ** ComplianceUploadType
    ComplianceUploadType (..),

    -- ** ConnectionStatus
    ConnectionStatus (..),

    -- ** DescribeActivationsFilterKeys
    DescribeActivationsFilterKeys (..),

    -- ** DocumentFilterKey
    DocumentFilterKey (..),

    -- ** DocumentFormat
    DocumentFormat (..),

    -- ** DocumentHashType
    DocumentHashType (..),

    -- ** DocumentMetadataEnum
    DocumentMetadataEnum (..),

    -- ** DocumentParameterType
    DocumentParameterType (..),

    -- ** DocumentPermissionType
    DocumentPermissionType (..),

    -- ** DocumentReviewAction
    DocumentReviewAction (..),

    -- ** DocumentReviewCommentType
    DocumentReviewCommentType (..),

    -- ** DocumentStatus
    DocumentStatus (..),

    -- ** DocumentType
    DocumentType (..),

    -- ** ExecutionMode
    ExecutionMode (..),

    -- ** Fault
    Fault (..),

    -- ** InstanceInformationFilterKey
    InstanceInformationFilterKey (..),

    -- ** InstancePatchStateOperatorType
    InstancePatchStateOperatorType (..),

    -- ** InventoryAttributeDataType
    InventoryAttributeDataType (..),

    -- ** InventoryDeletionStatus
    InventoryDeletionStatus (..),

    -- ** InventoryQueryOperatorType
    InventoryQueryOperatorType (..),

    -- ** InventorySchemaDeleteOption
    InventorySchemaDeleteOption (..),

    -- ** LastResourceDataSyncStatus
    LastResourceDataSyncStatus (..),

    -- ** MaintenanceWindowExecutionStatus
    MaintenanceWindowExecutionStatus (..),

    -- ** MaintenanceWindowResourceType
    MaintenanceWindowResourceType (..),

    -- ** MaintenanceWindowTaskType
    MaintenanceWindowTaskType (..),

    -- ** NotificationEvent
    NotificationEvent (..),

    -- ** NotificationType
    NotificationType (..),

    -- ** OperatingSystem
    OperatingSystem (..),

    -- ** OpsFilterOperatorType
    OpsFilterOperatorType (..),

    -- ** OpsItemDataType
    OpsItemDataType (..),

    -- ** OpsItemEventFilterKey
    OpsItemEventFilterKey (..),

    -- ** OpsItemEventFilterOperator
    OpsItemEventFilterOperator (..),

    -- ** OpsItemFilterKey
    OpsItemFilterKey (..),

    -- ** OpsItemFilterOperator
    OpsItemFilterOperator (..),

    -- ** OpsItemStatus
    OpsItemStatus (..),

    -- ** ParameterTier
    ParameterTier (..),

    -- ** ParameterType
    ParameterType (..),

    -- ** ParametersFilterKey
    ParametersFilterKey (..),

    -- ** PatchAction
    PatchAction (..),

    -- ** PatchComplianceDataState
    PatchComplianceDataState (..),

    -- ** PatchComplianceLevel
    PatchComplianceLevel (..),

    -- ** PatchDeploymentStatus
    PatchDeploymentStatus (..),

    -- ** PatchFilterKey
    PatchFilterKey (..),

    -- ** PatchOperationType
    PatchOperationType (..),

    -- ** PatchProperty
    PatchProperty (..),

    -- ** PatchSet
    PatchSet (..),

    -- ** PingStatus
    PingStatus (..),

    -- ** PlatformType
    PlatformType (..),

    -- ** RebootOption
    RebootOption (..),

    -- ** ResourceDataSyncS3Format
    ResourceDataSyncS3Format (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** ResourceTypeForTagging
    ResourceTypeForTagging (..),

    -- ** ReviewStatus
    ReviewStatus (..),

    -- ** SessionFilterKey
    SessionFilterKey (..),

    -- ** SessionState
    SessionState (..),

    -- ** SessionStatus
    SessionStatus (..),

    -- ** SignalType
    SignalType (..),

    -- ** StepExecutionFilterKey
    StepExecutionFilterKey (..),

    -- ** StopType
    StopType (..),

    -- ** AccountSharingInfo
    AccountSharingInfo,
    accountSharingInfo,
    asiAccountId,
    asiSharedDocumentVersion,

    -- ** Activation
    Activation,
    activation,
    aRegistrationLimit,
    aCreatedDate,
    aActivationId,
    aIAMRole,
    aDefaultInstanceName,
    aExpirationDate,
    aExpired,
    aRegistrationsCount,
    aTags,
    aDescription,

    -- ** Association
    Association,
    association,
    assLastExecutionDate,
    assInstanceId,
    assOverview,
    assTargets,
    assScheduleExpression,
    assName,
    assAssociationId,
    assAssociationName,
    assAssociationVersion,
    assDocumentVersion,

    -- ** AssociationDescription
    AssociationDescription,
    associationDescription,
    adMaxErrors,
    adStatus,
    adLastExecutionDate,
    adInstanceId,
    adLastUpdateAssociationDate,
    adComplianceSeverity,
    adOverview,
    adAutomationTargetParameterName,
    adTargets,
    adTargetLocations,
    adScheduleExpression,
    adName,
    adAssociationId,
    adDate,
    adMaxConcurrency,
    adAssociationName,
    adAssociationVersion,
    adLastSuccessfulExecutionDate,
    adDocumentVersion,
    adParameters,
    adOutputLocation,
    adApplyOnlyAtCronInterval,
    adSyncCompliance,

    -- ** AssociationExecution
    AssociationExecution,
    associationExecution,
    aeStatus,
    aeLastExecutionDate,
    aeDetailedStatus,
    aeResourceCountByStatus,
    aeCreatedTime,
    aeExecutionId,
    aeAssociationId,
    aeAssociationVersion,

    -- ** AssociationExecutionFilter
    AssociationExecutionFilter,
    associationExecutionFilter,
    assKey,
    assValue,
    assType,

    -- ** AssociationExecutionTarget
    AssociationExecutionTarget,
    associationExecutionTarget,
    aetResourceId,
    aetStatus,
    aetLastExecutionDate,
    aetDetailedStatus,
    aetResourceType,
    aetOutputSource,
    aetExecutionId,
    aetAssociationId,
    aetAssociationVersion,

    -- ** AssociationExecutionTargetsFilter
    AssociationExecutionTargetsFilter,
    associationExecutionTargetsFilter,
    aetfKey,
    aetfValue,

    -- ** AssociationFilter
    AssociationFilter,
    associationFilter,
    afKey,
    afValue,

    -- ** AssociationOverview
    AssociationOverview,
    associationOverview,
    aoStatus,
    aoDetailedStatus,
    aoAssociationStatusAggregatedCount,

    -- ** AssociationStatus
    AssociationStatus,
    associationStatus,
    asAdditionalInfo,
    asDate,
    asName,
    asMessage,

    -- ** AssociationVersionInfo
    AssociationVersionInfo,
    associationVersionInfo,
    aviMaxErrors,
    aviCreatedDate,
    aviComplianceSeverity,
    aviTargets,
    aviTargetLocations,
    aviScheduleExpression,
    aviName,
    aviAssociationId,
    aviMaxConcurrency,
    aviAssociationName,
    aviAssociationVersion,
    aviDocumentVersion,
    aviParameters,
    aviOutputLocation,
    aviApplyOnlyAtCronInterval,
    aviSyncCompliance,

    -- ** AttachmentContent
    AttachmentContent,
    attachmentContent,
    acHash,
    acName,
    acURL,
    acSize,
    acHashType,

    -- ** AttachmentInformation
    AttachmentInformation,
    attachmentInformation,
    aiName,

    -- ** AttachmentsSource
    AttachmentsSource,
    attachmentsSource,
    aKey,
    aValues,
    aName,

    -- ** AutomationExecution
    AutomationExecution,
    automationExecution,
    aMaxErrors,
    aCurrentAction,
    aParentAutomationExecutionId,
    aOutputs,
    aMode,
    aFailureMessage,
    aExecutionEndTime,
    aDocumentName,
    aAutomationExecutionId,
    aChangeRequestName,
    aExecutedBy,
    aProgressCounters,
    aResolvedTargets,
    aTargets,
    aTargetLocations,
    aTargetParameterName,
    aExecutionStartTime,
    aCurrentStepName,
    aAssociationId,
    aOpsItemId,
    aScheduledTime,
    aMaxConcurrency,
    aStepExecutionsTruncated,
    aTarget,
    aAutomationExecutionStatus,
    aTargetMaps,
    aRunbooks,
    aStepExecutions,
    aAutomationSubtype,
    aDocumentVersion,
    aParameters,

    -- ** AutomationExecutionFilter
    AutomationExecutionFilter,
    automationExecutionFilter,
    aefKey,
    aefValues,

    -- ** AutomationExecutionMetadata
    AutomationExecutionMetadata,
    automationExecutionMetadata,
    aemMaxErrors,
    aemCurrentAction,
    aemParentAutomationExecutionId,
    aemOutputs,
    aemMode,
    aemFailureMessage,
    aemExecutionEndTime,
    aemDocumentName,
    aemAutomationExecutionId,
    aemChangeRequestName,
    aemExecutedBy,
    aemResolvedTargets,
    aemTargets,
    aemAutomationType,
    aemTargetParameterName,
    aemExecutionStartTime,
    aemCurrentStepName,
    aemAssociationId,
    aemOpsItemId,
    aemScheduledTime,
    aemMaxConcurrency,
    aemTarget,
    aemAutomationExecutionStatus,
    aemTargetMaps,
    aemRunbooks,
    aemAutomationSubtype,
    aemDocumentVersion,
    aemLogFile,

    -- ** BaselineOverride
    BaselineOverride,
    baselineOverride,
    boSources,
    boRejectedPatches,
    boApprovedPatchesEnableNonSecurity,
    boApprovedPatchesComplianceLevel,
    boApprovedPatches,
    boRejectedPatchesAction,
    boOperatingSystem,
    boGlobalFilters,
    boApprovalRules,

    -- ** CloudWatchOutputConfig
    CloudWatchOutputConfig,
    cloudWatchOutputConfig,
    cwocCloudWatchLogGroupName,
    cwocCloudWatchOutputEnabled,

    -- ** Command
    Command,
    command,
    cNotificationConfig,
    cInstanceIds,
    cMaxErrors,
    cExpiresAfter,
    cStatus,
    cServiceRole,
    cRequestedDateTime,
    cStatusDetails,
    cCompletedCount,
    cOutputS3BucketName,
    cComment,
    cErrorCount,
    cDocumentName,
    cCommandId,
    cTargets,
    cOutputS3Region,
    cMaxConcurrency,
    cOutputS3KeyPrefix,
    cTimeoutSeconds,
    cDeliveryTimedOutCount,
    cCloudWatchOutputConfig,
    cDocumentVersion,
    cParameters,
    cTargetCount,

    -- ** CommandFilter
    CommandFilter,
    commandFilter,
    cfKey,
    cfValue,

    -- ** CommandInvocation
    CommandInvocation,
    commandInvocation,
    ciNotificationConfig,
    ciStandardOutputURL,
    ciStatus,
    ciInstanceId,
    ciServiceRole,
    ciRequestedDateTime,
    ciStatusDetails,
    ciInstanceName,
    ciComment,
    ciStandardErrorURL,
    ciDocumentName,
    ciCommandId,
    ciTraceOutput,
    ciCloudWatchOutputConfig,
    ciCommandPlugins,
    ciDocumentVersion,

    -- ** CommandPlugin
    CommandPlugin,
    commandPlugin,
    cpStandardOutputURL,
    cpStatus,
    cpStatusDetails,
    cpOutputS3BucketName,
    cpStandardErrorURL,
    cpOutput,
    cpOutputS3Region,
    cpName,
    cpResponseFinishDateTime,
    cpResponseCode,
    cpOutputS3KeyPrefix,
    cpResponseStartDateTime,

    -- ** ComplianceExecutionSummary
    ComplianceExecutionSummary,
    complianceExecutionSummary,
    cesExecutionId,
    cesExecutionType,
    cesExecutionTime,

    -- ** ComplianceItem
    ComplianceItem,
    complianceItem,
    ciiResourceId,
    ciiStatus,
    ciiSeverity,
    ciiTitle,
    ciiId,
    ciiComplianceType,
    ciiResourceType,
    ciiDetails,
    ciiExecutionSummary,

    -- ** ComplianceItemEntry
    ComplianceItemEntry,
    complianceItemEntry,
    cieTitle,
    cieId,
    cieDetails,
    cieSeverity,
    cieStatus,

    -- ** ComplianceStringFilter
    ComplianceStringFilter,
    complianceStringFilter,
    csfKey,
    csfValues,
    csfType,

    -- ** ComplianceSummaryItem
    ComplianceSummaryItem,
    complianceSummaryItem,
    csiCompliantSummary,
    csiComplianceType,
    csiNonCompliantSummary,

    -- ** CompliantSummary
    CompliantSummary,
    compliantSummary,
    csSeveritySummary,
    csCompliantCount,

    -- ** CreateAssociationBatchRequestEntry
    CreateAssociationBatchRequestEntry,
    createAssociationBatchRequestEntry,
    cabreMaxErrors,
    cabreInstanceId,
    cabreComplianceSeverity,
    cabreAutomationTargetParameterName,
    cabreTargets,
    cabreTargetLocations,
    cabreScheduleExpression,
    cabreMaxConcurrency,
    cabreAssociationName,
    cabreDocumentVersion,
    cabreParameters,
    cabreOutputLocation,
    cabreApplyOnlyAtCronInterval,
    cabreSyncCompliance,
    cabreName,

    -- ** DescribeActivationsFilter
    DescribeActivationsFilter,
    describeActivationsFilter,
    dafFilterKey,
    dafFilterValues,

    -- ** DocumentDefaultVersionDescription
    DocumentDefaultVersionDescription,
    documentDefaultVersionDescription,
    ddvdDefaultVersion,
    ddvdName,
    ddvdDefaultVersionName,

    -- ** DocumentDescription
    DocumentDescription,
    documentDescription,
    ddDocumentType,
    ddStatus,
    ddCreatedDate,
    ddPlatformTypes,
    ddDefaultVersion,
    ddLatestVersion,
    ddTargetType,
    ddApprovedVersion,
    ddRequires,
    ddSha1,
    ddStatusInformation,
    ddVersionName,
    ddAuthor,
    ddHash,
    ddPendingReviewVersion,
    ddName,
    ddDocumentFormat,
    ddTags,
    ddOwner,
    ddReviewStatus,
    ddReviewInformation,
    ddAttachmentsInformation,
    ddDescription,
    ddSchemaVersion,
    ddDocumentVersion,
    ddParameters,
    ddHashType,

    -- ** DocumentFilter
    DocumentFilter,
    documentFilter,
    dfKey,
    dfValue,

    -- ** DocumentIdentifier
    DocumentIdentifier,
    documentIdentifier,
    diDocumentType,
    diPlatformTypes,
    diTargetType,
    diRequires,
    diVersionName,
    diAuthor,
    diName,
    diDocumentFormat,
    diTags,
    diOwner,
    diReviewStatus,
    diSchemaVersion,
    diDocumentVersion,

    -- ** DocumentKeyValuesFilter
    DocumentKeyValuesFilter,
    documentKeyValuesFilter,
    dkvfKey,
    dkvfValues,

    -- ** DocumentMetadataResponseInfo
    DocumentMetadataResponseInfo,
    documentMetadataResponseInfo,
    dmriReviewerResponse,

    -- ** DocumentParameter
    DocumentParameter,
    documentParameter,
    dpName,
    dpDescription,
    dpType,
    dpDefaultValue,

    -- ** DocumentRequires
    DocumentRequires,
    documentRequires,
    drVersion,
    drName,

    -- ** DocumentReviewCommentSource
    DocumentReviewCommentSource,
    documentReviewCommentSource,
    drcsContent,
    drcsType,

    -- ** DocumentReviewerResponseSource
    DocumentReviewerResponseSource,
    documentReviewerResponseSource,
    drrsComment,
    drrsUpdatedTime,
    drrsCreateTime,
    drrsReviewStatus,
    drrsReviewer,

    -- ** DocumentReviews
    DocumentReviews,
    documentReviews,
    drComment,
    drAction,

    -- ** DocumentVersionInfo
    DocumentVersionInfo,
    documentVersionInfo,
    dviStatus,
    dviCreatedDate,
    dviStatusInformation,
    dviVersionName,
    dviName,
    dviDocumentFormat,
    dviReviewStatus,
    dviIsDefaultVersion,
    dviDocumentVersion,

    -- ** EffectivePatch
    EffectivePatch,
    effectivePatch,
    epPatch,
    epPatchStatus,

    -- ** FailedCreateAssociation
    FailedCreateAssociation,
    failedCreateAssociation,
    fcaEntry,
    fcaMessage,
    fcaFault,

    -- ** FailureDetails
    FailureDetails,
    failureDetails,
    fdDetails,
    fdFailureStage,
    fdFailureType,

    -- ** InstanceAggregatedAssociationOverview
    InstanceAggregatedAssociationOverview,
    instanceAggregatedAssociationOverview,
    iaaoDetailedStatus,
    iaaoInstanceAssociationStatusAggregatedCount,

    -- ** InstanceAssociation
    InstanceAssociation,
    instanceAssociation,
    iaInstanceId,
    iaAssociationId,
    iaContent,
    iaAssociationVersion,

    -- ** InstanceAssociationOutputLocation
    InstanceAssociationOutputLocation,
    instanceAssociationOutputLocation,
    iaolS3Location,

    -- ** InstanceAssociationOutputURL
    InstanceAssociationOutputURL,
    instanceAssociationOutputURL,
    iaouS3OutputURL,

    -- ** InstanceAssociationStatusInfo
    InstanceAssociationStatusInfo,
    instanceAssociationStatusInfo,
    iasiStatus,
    iasiInstanceId,
    iasiDetailedStatus,
    iasiName,
    iasiOutputURL,
    iasiAssociationId,
    iasiAssociationName,
    iasiExecutionDate,
    iasiExecutionSummary,
    iasiAssociationVersion,
    iasiDocumentVersion,
    iasiErrorCode,

    -- ** InstanceInformation
    InstanceInformation,
    instanceInformation,
    iiInstanceId,
    iiPingStatus,
    iiActivationId,
    iiIAMRole,
    iiLastSuccessfulAssociationExecutionDate,
    iiLastPingDateTime,
    iiAgentVersion,
    iiPlatformVersion,
    iiLastAssociationExecutionDate,
    iiResourceType,
    iiAssociationOverview,
    iiIPAddress,
    iiName,
    iiPlatformType,
    iiIsLatestVersion,
    iiComputerName,
    iiPlatformName,
    iiRegistrationDate,
    iiAssociationStatus,

    -- ** InstanceInformationFilter
    InstanceInformationFilter,
    instanceInformationFilter,
    iifKey,
    iifValueSet,

    -- ** InstanceInformationStringFilter
    InstanceInformationStringFilter,
    instanceInformationStringFilter,
    iisfKey,
    iisfValues,

    -- ** InstancePatchState
    InstancePatchState,
    instancePatchState,
    ipsInstallOverrideList,
    ipsUnreportedNotApplicableCount,
    ipsInstalledOtherCount,
    ipsInstalledPendingRebootCount,
    ipsRebootOption,
    ipsMissingCount,
    ipsSnapshotId,
    ipsInstalledCount,
    ipsLastNoRebootInstallOperationTime,
    ipsNotApplicableCount,
    ipsFailedCount,
    ipsOwnerInformation,
    ipsInstalledRejectedCount,
    ipsInstanceId,
    ipsPatchGroup,
    ipsBaselineId,
    ipsOperationStartTime,
    ipsOperationEndTime,
    ipsOperation,

    -- ** InstancePatchStateFilter
    InstancePatchStateFilter,
    instancePatchStateFilter,
    ipsfKey,
    ipsfValues,
    ipsfType,

    -- ** InventoryAggregator
    InventoryAggregator,
    inventoryAggregator,
    iaGroups,
    iaAggregators,
    iaExpression,

    -- ** InventoryDeletionStatusItem
    InventoryDeletionStatusItem,
    inventoryDeletionStatusItem,
    idsiTypeName,
    idsiLastStatusMessage,
    idsiLastStatusUpdateTime,
    idsiDeletionId,
    idsiDeletionStartTime,
    idsiLastStatus,
    idsiDeletionSummary,

    -- ** InventoryDeletionSummary
    InventoryDeletionSummary,
    inventoryDeletionSummary,
    idsRemainingCount,
    idsTotalCount,
    idsSummaryItems,

    -- ** InventoryDeletionSummaryItem
    InventoryDeletionSummaryItem,
    inventoryDeletionSummaryItem,
    idsiRemainingCount,
    idsiVersion,
    idsiCount,

    -- ** InventoryFilter
    InventoryFilter,
    inventoryFilter,
    ifType,
    ifKey,
    ifValues,

    -- ** InventoryGroup
    InventoryGroup,
    inventoryGroup,
    igName,
    igFilters,

    -- ** InventoryItem
    InventoryItem,
    inventoryItem,
    iiContext,
    iiContent,
    iiContentHash,
    iiTypeName,
    iiSchemaVersion,
    iiCaptureTime,

    -- ** InventoryItemAttribute
    InventoryItemAttribute,
    inventoryItemAttribute,
    iiaName,
    iiaDataType,

    -- ** InventoryItemSchema
    InventoryItemSchema,
    inventoryItemSchema,
    iisVersion,
    iisDisplayName,
    iisTypeName,
    iisAttributes,

    -- ** InventoryResultEntity
    InventoryResultEntity,
    inventoryResultEntity,
    ireData,
    ireId,

    -- ** InventoryResultItem
    InventoryResultItem,
    inventoryResultItem,
    iriCaptureTime,
    iriContentHash,
    iriTypeName,
    iriSchemaVersion,
    iriContent,

    -- ** LoggingInfo
    LoggingInfo,
    loggingInfo,
    liS3KeyPrefix,
    liS3BucketName,
    liS3Region,

    -- ** MaintenanceWindowAutomationParameters
    MaintenanceWindowAutomationParameters,
    maintenanceWindowAutomationParameters,
    mwapDocumentVersion,
    mwapParameters,

    -- ** MaintenanceWindowExecution
    MaintenanceWindowExecution,
    maintenanceWindowExecution,
    mweStatus,
    mweStatusDetails,
    mweStartTime,
    mweEndTime,
    mweWindowId,
    mweWindowExecutionId,

    -- ** MaintenanceWindowExecutionTaskIdentity
    MaintenanceWindowExecutionTaskIdentity,
    maintenanceWindowExecutionTaskIdentity,
    mwetiStatus,
    mwetiStatusDetails,
    mwetiStartTime,
    mwetiEndTime,
    mwetiWindowExecutionId,
    mwetiTaskARN,
    mwetiTaskType,
    mwetiTaskExecutionId,

    -- ** MaintenanceWindowExecutionTaskInvocationIdentity
    MaintenanceWindowExecutionTaskInvocationIdentity,
    maintenanceWindowExecutionTaskInvocationIdentity,
    mwetiiStatus,
    mwetiiStatusDetails,
    mwetiiWindowTargetId,
    mwetiiStartTime,
    mwetiiEndTime,
    mwetiiExecutionId,
    mwetiiWindowExecutionId,
    mwetiiOwnerInformation,
    mwetiiTaskType,
    mwetiiInvocationId,
    mwetiiParameters,
    mwetiiTaskExecutionId,

    -- ** MaintenanceWindowFilter
    MaintenanceWindowFilter,
    maintenanceWindowFilter,
    mwfKey,
    mwfValues,

    -- ** MaintenanceWindowIdentity
    MaintenanceWindowIdentity,
    maintenanceWindowIdentity,
    mwiStartDate,
    mwiDuration,
    mwiScheduleOffset,
    mwiEnabled,
    mwiCutoff,
    mwiName,
    mwiWindowId,
    mwiDescription,
    mwiScheduleTimezone,
    mwiEndDate,
    mwiNextExecutionTime,
    mwiSchedule,

    -- ** MaintenanceWindowIdentityForTarget
    MaintenanceWindowIdentityForTarget,
    maintenanceWindowIdentityForTarget,
    mwiftName,
    mwiftWindowId,

    -- ** MaintenanceWindowLambdaParameters
    MaintenanceWindowLambdaParameters,
    maintenanceWindowLambdaParameters,
    mwlpPayload,
    mwlpQualifier,
    mwlpClientContext,

    -- ** MaintenanceWindowRunCommandParameters
    MaintenanceWindowRunCommandParameters,
    maintenanceWindowRunCommandParameters,
    mwrcpNotificationConfig,
    mwrcpServiceRoleARN,
    mwrcpOutputS3BucketName,
    mwrcpComment,
    mwrcpDocumentHash,
    mwrcpOutputS3KeyPrefix,
    mwrcpTimeoutSeconds,
    mwrcpCloudWatchOutputConfig,
    mwrcpDocumentHashType,
    mwrcpDocumentVersion,
    mwrcpParameters,

    -- ** MaintenanceWindowStepFunctionsParameters
    MaintenanceWindowStepFunctionsParameters,
    maintenanceWindowStepFunctionsParameters,
    mwsfpInput,
    mwsfpName,

    -- ** MaintenanceWindowTarget
    MaintenanceWindowTarget,
    maintenanceWindowTarget,
    mWindowTargetId,
    mResourceType,
    mTargets,
    mName,
    mWindowId,
    mDescription,
    mOwnerInformation,

    -- ** MaintenanceWindowTask
    MaintenanceWindowTask,
    maintenanceWindowTask,
    mwtMaxErrors,
    mwtTaskParameters,
    mwtWindowTaskId,
    mwtServiceRoleARN,
    mwtPriority,
    mwtTargets,
    mwtName,
    mwtMaxConcurrency,
    mwtWindowId,
    mwtDescription,
    mwtType,
    mwtTaskARN,
    mwtLoggingInfo,

    -- ** MaintenanceWindowTaskInvocationParameters
    MaintenanceWindowTaskInvocationParameters,
    maintenanceWindowTaskInvocationParameters,
    mwtipAutomation,
    mwtipLambda,
    mwtipRunCommand,
    mwtipStepFunctions,

    -- ** MaintenanceWindowTaskParameterValueExpression
    MaintenanceWindowTaskParameterValueExpression,
    maintenanceWindowTaskParameterValueExpression,
    mwtpveValues,

    -- ** MetadataValue
    MetadataValue,
    metadataValue,
    mvValue,

    -- ** NonCompliantSummary
    NonCompliantSummary,
    nonCompliantSummary,
    ncsSeveritySummary,
    ncsNonCompliantCount,

    -- ** NotificationConfig
    NotificationConfig,
    notificationConfig,
    ncNotificationARN,
    ncNotificationType,
    ncNotificationEvents,

    -- ** OpsAggregator
    OpsAggregator,
    opsAggregator,
    oaTypeName,
    oaAttributeName,
    oaValues,
    oaAggregatorType,
    oaFilters,
    oaAggregators,

    -- ** OpsEntity
    OpsEntity,
    opsEntity,
    oeData,
    oeId,

    -- ** OpsEntityItem
    OpsEntityItem,
    opsEntityItem,
    oeiCaptureTime,
    oeiContent,

    -- ** OpsFilter
    OpsFilter,
    opsFilter,
    ofType,
    ofKey,
    ofValues,

    -- ** OpsItem
    OpsItem,
    opsItem,
    oiStatus,
    oiPlannedEndTime,
    oiSeverity,
    oiActualStartTime,
    oiCategory,
    oiOperationalData,
    oiTitle,
    oiSource,
    oiCreatedTime,
    oiVersion,
    oiPriority,
    oiActualEndTime,
    oiOpsItemId,
    oiOpsItemType,
    oiPlannedStartTime,
    oiLastModifiedTime,
    oiNotifications,
    oiDescription,
    oiCreatedBy,
    oiLastModifiedBy,
    oiRelatedOpsItems,

    -- ** OpsItemDataValue
    OpsItemDataValue,
    opsItemDataValue,
    oidvValue,
    oidvType,

    -- ** OpsItemEventFilter
    OpsItemEventFilter,
    opsItemEventFilter,
    oiefKey,
    oiefValues,
    oiefOperator,

    -- ** OpsItemEventSummary
    OpsItemEventSummary,
    opsItemEventSummary,
    oiesEventId,
    oiesDetailType,
    oiesSource,
    oiesCreatedTime,
    oiesOpsItemId,
    oiesDetail,
    oiesCreatedBy,

    -- ** OpsItemFilter
    OpsItemFilter,
    opsItemFilter,
    oifKey,
    oifValues,
    oifOperator,

    -- ** OpsItemIdentity
    OpsItemIdentity,
    opsItemIdentity,
    oiiARN,

    -- ** OpsItemNotification
    OpsItemNotification,
    opsItemNotification,
    oinARN,

    -- ** OpsItemSummary
    OpsItemSummary,
    opsItemSummary,
    oisStatus,
    oisPlannedEndTime,
    oisSeverity,
    oisActualStartTime,
    oisCategory,
    oisOperationalData,
    oisTitle,
    oisSource,
    oisCreatedTime,
    oisPriority,
    oisActualEndTime,
    oisOpsItemId,
    oisOpsItemType,
    oisPlannedStartTime,
    oisLastModifiedTime,
    oisCreatedBy,
    oisLastModifiedBy,

    -- ** OpsMetadata
    OpsMetadata,
    opsMetadata,
    omResourceId,
    omLastModifiedDate,
    omOpsMetadataARN,
    omCreationDate,
    omLastModifiedUser,

    -- ** OpsMetadataFilter
    OpsMetadataFilter,
    opsMetadataFilter,
    omfKey,
    omfValues,

    -- ** OpsResultAttribute
    OpsResultAttribute,
    opsResultAttribute,
    oraTypeName,

    -- ** OutputSource
    OutputSource,
    outputSource,
    osOutputSourceId,
    osOutputSourceType,

    -- ** Parameter
    Parameter,
    parameter,
    parLastModifiedDate,
    parARN,
    parVersion,
    parName,
    parSourceResult,
    parValue,
    parType,
    parDataType,
    parSelector,

    -- ** ParameterHistory
    ParameterHistory,
    parameterHistory,
    phLastModifiedDate,
    phPolicies,
    phLabels,
    phVersion,
    phName,
    phDescription,
    phValue,
    phType,
    phDataType,
    phAllowedPattern,
    phLastModifiedUser,
    phTier,
    phKeyId,

    -- ** ParameterInlinePolicy
    ParameterInlinePolicy,
    parameterInlinePolicy,
    pipPolicyType,
    pipPolicyText,
    pipPolicyStatus,

    -- ** ParameterMetadata
    ParameterMetadata,
    parameterMetadata,
    pmLastModifiedDate,
    pmPolicies,
    pmVersion,
    pmName,
    pmDescription,
    pmType,
    pmDataType,
    pmAllowedPattern,
    pmLastModifiedUser,
    pmTier,
    pmKeyId,

    -- ** ParameterStringFilter
    ParameterStringFilter,
    parameterStringFilter,
    psfValues,
    psfOption,
    psfKey,

    -- ** ParametersFilter
    ParametersFilter,
    parametersFilter,
    pKey,
    pValues,

    -- ** Patch
    Patch,
    patch,
    pMsrcSeverity,
    pVendor,
    pEpoch,
    pProduct,
    pSeverity,
    pTitle,
    pId,
    pProductFamily,
    pVersion,
    pRepository,
    pName,
    pBugzillaIds,
    pMsrcNumber,
    pRelease,
    pCVEIds,
    pClassification,
    pDescription,
    pAdvisoryIds,
    pArch,
    pReleaseDate,
    pLanguage,
    pKbNumber,
    pContentURL,

    -- ** PatchBaselineIdentity
    PatchBaselineIdentity,
    patchBaselineIdentity,
    pbiBaselineName,
    pbiBaselineId,
    pbiDefaultBaseline,
    pbiBaselineDescription,
    pbiOperatingSystem,

    -- ** PatchComplianceData
    PatchComplianceData,
    patchComplianceData,
    pcdCVEIds,
    pcdTitle,
    pcdKBId,
    pcdClassification,
    pcdSeverity,
    pcdState,
    pcdInstalledTime,

    -- ** PatchFilter
    PatchFilter,
    patchFilter,
    pfKey,
    pfValues,

    -- ** PatchFilterGroup
    PatchFilterGroup,
    patchFilterGroup,
    pfgPatchFilters,

    -- ** PatchGroupPatchBaselineMapping
    PatchGroupPatchBaselineMapping,
    patchGroupPatchBaselineMapping,
    pgpbmBaselineIdentity,
    pgpbmPatchGroup,

    -- ** PatchOrchestratorFilter
    PatchOrchestratorFilter,
    patchOrchestratorFilter,
    pofKey,
    pofValues,

    -- ** PatchRule
    PatchRule,
    patchRule,
    prApproveAfterDays,
    prApproveUntilDate,
    prComplianceLevel,
    prEnableNonSecurity,
    prPatchFilterGroup,

    -- ** PatchRuleGroup
    PatchRuleGroup,
    patchRuleGroup,
    prgPatchRules,

    -- ** PatchSource
    PatchSource,
    patchSource,
    psName,
    psProducts,
    psConfiguration,

    -- ** PatchStatus
    PatchStatus,
    patchStatus,
    psApprovalDate,
    psComplianceLevel,
    psDeploymentStatus,

    -- ** ProgressCounters
    ProgressCounters,
    progressCounters,
    pcCancelledSteps,
    pcTimedOutSteps,
    pcTotalSteps,
    pcSuccessSteps,
    pcFailedSteps,

    -- ** RelatedOpsItem
    RelatedOpsItem,
    relatedOpsItem,
    roiOpsItemId,

    -- ** ResolvedTargets
    ResolvedTargets,
    resolvedTargets,
    rtParameterValues,
    rtTruncated,

    -- ** ResourceComplianceSummaryItem
    ResourceComplianceSummaryItem,
    resourceComplianceSummaryItem,
    rcsiResourceId,
    rcsiStatus,
    rcsiOverallSeverity,
    rcsiCompliantSummary,
    rcsiComplianceType,
    rcsiResourceType,
    rcsiNonCompliantSummary,
    rcsiExecutionSummary,

    -- ** ResourceDataSyncAWSOrganizationsSource
    ResourceDataSyncAWSOrganizationsSource,
    resourceDataSyncAWSOrganizationsSource,
    rdsaosOrganizationalUnits,
    rdsaosOrganizationSourceType,

    -- ** ResourceDataSyncDestinationDataSharing
    ResourceDataSyncDestinationDataSharing,
    resourceDataSyncDestinationDataSharing,
    rdsddsDestinationDataSharingType,

    -- ** ResourceDataSyncItem
    ResourceDataSyncItem,
    resourceDataSyncItem,
    rdsiSyncType,
    rdsiS3Destination,
    rdsiSyncLastModifiedTime,
    rdsiLastSyncTime,
    rdsiSyncName,
    rdsiSyncSource,
    rdsiLastSuccessfulSyncTime,
    rdsiLastStatus,
    rdsiLastSyncStatusMessage,
    rdsiSyncCreatedTime,

    -- ** ResourceDataSyncOrganizationalUnit
    ResourceDataSyncOrganizationalUnit,
    resourceDataSyncOrganizationalUnit,
    rdsouOrganizationalUnitId,

    -- ** ResourceDataSyncS3Destination
    ResourceDataSyncS3Destination,
    resourceDataSyncS3Destination,
    rdssdPrefix,
    rdssdDestinationDataSharing,
    rdssdAWSKMSKeyARN,
    rdssdBucketName,
    rdssdSyncFormat,
    rdssdRegion,

    -- ** ResourceDataSyncSource
    ResourceDataSyncSource,
    resourceDataSyncSource,
    rdssIncludeFutureRegions,
    rdssAWSOrganizationsSource,
    rdssSourceType,
    rdssSourceRegions,

    -- ** ResourceDataSyncSourceWithState
    ResourceDataSyncSourceWithState,
    resourceDataSyncSourceWithState,
    rdsswsIncludeFutureRegions,
    rdsswsState,
    rdsswsSourceRegions,
    rdsswsAWSOrganizationsSource,
    rdsswsSourceType,

    -- ** ResultAttribute
    ResultAttribute,
    resultAttribute,
    raTypeName,

    -- ** ReviewInformation
    ReviewInformation,
    reviewInformation,
    riStatus,
    riReviewedTime,
    riReviewer,

    -- ** Runbook
    Runbook,
    runbook,
    runMaxErrors,
    runTargets,
    runTargetLocations,
    runTargetParameterName,
    runMaxConcurrency,
    runDocumentVersion,
    runParameters,
    runDocumentName,

    -- ** S3OutputLocation
    S3OutputLocation,
    s3OutputLocation,
    solOutputS3BucketName,
    solOutputS3Region,
    solOutputS3KeyPrefix,

    -- ** S3OutputURL
    S3OutputURL,
    s3OutputURL,
    souOutputURL,

    -- ** ScheduledWindowExecution
    ScheduledWindowExecution,
    scheduledWindowExecution,
    sweExecutionTime,
    sweName,
    sweWindowId,

    -- ** ServiceSetting
    ServiceSetting,
    serviceSetting,
    ssLastModifiedDate,
    ssStatus,
    ssARN,
    ssSettingValue,
    ssSettingId,
    ssLastModifiedUser,

    -- ** Session
    Session,
    session,
    sesStatus,
    sesStartDate,
    sesSessionId,
    sesDocumentName,
    sesDetails,
    sesOutputURL,
    sesTarget,
    sesOwner,
    sesEndDate,

    -- ** SessionFilter
    SessionFilter,
    sessionFilter,
    sfKey,
    sfValue,

    -- ** SessionManagerOutputURL
    SessionManagerOutputURL,
    sessionManagerOutputURL,
    smouS3OutputURL,
    smouCloudWatchOutputURL,

    -- ** SeveritySummary
    SeveritySummary,
    severitySummary,
    ssLowCount,
    ssMediumCount,
    ssCriticalCount,
    ssHighCount,
    ssUnspecifiedCount,
    ssInformationalCount,

    -- ** StepExecution
    StepExecution,
    stepExecution,
    seOutputs,
    seOnFailure,
    seResponse,
    seFailureMessage,
    seExecutionEndTime,
    seNextStep,
    seIsEnd,
    seMaxAttempts,
    seFailureDetails,
    seTargets,
    seExecutionStartTime,
    seTargetLocation,
    seOverriddenParameters,
    seIsCritical,
    seResponseCode,
    seStepStatus,
    seAction,
    seValidNextSteps,
    seTimeoutSeconds,
    seInputs,
    seStepExecutionId,
    seStepName,

    -- ** StepExecutionFilter
    StepExecutionFilter,
    stepExecutionFilter,
    sefKey,
    sefValues,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Target
    Target,
    target,
    tKey,
    tValues,

    -- ** TargetLocation
    TargetLocation,
    targetLocation,
    tlExecutionRoleName,
    tlAccounts,
    tlRegions,
    tlTargetLocationMaxErrors,
    tlTargetLocationMaxConcurrency,
  )
where

import Network.AWS.SSM.AddTagsToResource
import Network.AWS.SSM.CancelCommand
import Network.AWS.SSM.CancelMaintenanceWindowExecution
import Network.AWS.SSM.CreateActivation
import Network.AWS.SSM.CreateAssociation
import Network.AWS.SSM.CreateAssociationBatch
import Network.AWS.SSM.CreateDocument
import Network.AWS.SSM.CreateMaintenanceWindow
import Network.AWS.SSM.CreateOpsItem
import Network.AWS.SSM.CreateOpsMetadata
import Network.AWS.SSM.CreatePatchBaseline
import Network.AWS.SSM.CreateResourceDataSync
import Network.AWS.SSM.DeleteActivation
import Network.AWS.SSM.DeleteAssociation
import Network.AWS.SSM.DeleteDocument
import Network.AWS.SSM.DeleteInventory
import Network.AWS.SSM.DeleteMaintenanceWindow
import Network.AWS.SSM.DeleteOpsMetadata
import Network.AWS.SSM.DeleteParameter
import Network.AWS.SSM.DeleteParameters
import Network.AWS.SSM.DeletePatchBaseline
import Network.AWS.SSM.DeleteResourceDataSync
import Network.AWS.SSM.DeregisterManagedInstance
import Network.AWS.SSM.DeregisterPatchBaselineForPatchGroup
import Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow
import Network.AWS.SSM.DeregisterTaskFromMaintenanceWindow
import Network.AWS.SSM.DescribeActivations
import Network.AWS.SSM.DescribeAssociation
import Network.AWS.SSM.DescribeAssociationExecutionTargets
import Network.AWS.SSM.DescribeAssociationExecutions
import Network.AWS.SSM.DescribeAutomationExecutions
import Network.AWS.SSM.DescribeAutomationStepExecutions
import Network.AWS.SSM.DescribeAvailablePatches
import Network.AWS.SSM.DescribeDocument
import Network.AWS.SSM.DescribeDocumentPermission
import Network.AWS.SSM.DescribeEffectiveInstanceAssociations
import Network.AWS.SSM.DescribeEffectivePatchesForPatchBaseline
import Network.AWS.SSM.DescribeInstanceAssociationsStatus
import Network.AWS.SSM.DescribeInstanceInformation
import Network.AWS.SSM.DescribeInstancePatchStates
import Network.AWS.SSM.DescribeInstancePatchStatesForPatchGroup
import Network.AWS.SSM.DescribeInstancePatches
import Network.AWS.SSM.DescribeInventoryDeletions
import Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
import Network.AWS.SSM.DescribeMaintenanceWindowExecutionTasks
import Network.AWS.SSM.DescribeMaintenanceWindowExecutions
import Network.AWS.SSM.DescribeMaintenanceWindowSchedule
import Network.AWS.SSM.DescribeMaintenanceWindowTargets
import Network.AWS.SSM.DescribeMaintenanceWindowTasks
import Network.AWS.SSM.DescribeMaintenanceWindows
import Network.AWS.SSM.DescribeMaintenanceWindowsForTarget
import Network.AWS.SSM.DescribeOpsItems
import Network.AWS.SSM.DescribeParameters
import Network.AWS.SSM.DescribePatchBaselines
import Network.AWS.SSM.DescribePatchGroupState
import Network.AWS.SSM.DescribePatchGroups
import Network.AWS.SSM.DescribePatchProperties
import Network.AWS.SSM.DescribeSessions
import Network.AWS.SSM.GetAutomationExecution
import Network.AWS.SSM.GetCalendarState
import Network.AWS.SSM.GetCommandInvocation
import Network.AWS.SSM.GetConnectionStatus
import Network.AWS.SSM.GetDefaultPatchBaseline
import Network.AWS.SSM.GetDeployablePatchSnapshotForInstance
import Network.AWS.SSM.GetDocument
import Network.AWS.SSM.GetInventory
import Network.AWS.SSM.GetInventorySchema
import Network.AWS.SSM.GetMaintenanceWindow
import Network.AWS.SSM.GetMaintenanceWindowExecution
import Network.AWS.SSM.GetMaintenanceWindowExecutionTask
import Network.AWS.SSM.GetMaintenanceWindowExecutionTaskInvocation
import Network.AWS.SSM.GetMaintenanceWindowTask
import Network.AWS.SSM.GetOpsItem
import Network.AWS.SSM.GetOpsMetadata
import Network.AWS.SSM.GetOpsSummary
import Network.AWS.SSM.GetParameter
import Network.AWS.SSM.GetParameterHistory
import Network.AWS.SSM.GetParameters
import Network.AWS.SSM.GetParametersByPath
import Network.AWS.SSM.GetPatchBaseline
import Network.AWS.SSM.GetPatchBaselineForPatchGroup
import Network.AWS.SSM.GetServiceSetting
import Network.AWS.SSM.LabelParameterVersion
import Network.AWS.SSM.ListAssociationVersions
import Network.AWS.SSM.ListAssociations
import Network.AWS.SSM.ListCommandInvocations
import Network.AWS.SSM.ListCommands
import Network.AWS.SSM.ListComplianceItems
import Network.AWS.SSM.ListComplianceSummaries
import Network.AWS.SSM.ListDocumentMetadataHistory
import Network.AWS.SSM.ListDocumentVersions
import Network.AWS.SSM.ListDocuments
import Network.AWS.SSM.ListInventoryEntries
import Network.AWS.SSM.ListOpsItemEvents
import Network.AWS.SSM.ListOpsMetadata
import Network.AWS.SSM.ListResourceComplianceSummaries
import Network.AWS.SSM.ListResourceDataSync
import Network.AWS.SSM.ListTagsForResource
import Network.AWS.SSM.ModifyDocumentPermission
import Network.AWS.SSM.PutComplianceItems
import Network.AWS.SSM.PutInventory
import Network.AWS.SSM.PutParameter
import Network.AWS.SSM.RegisterDefaultPatchBaseline
import Network.AWS.SSM.RegisterPatchBaselineForPatchGroup
import Network.AWS.SSM.RegisterTargetWithMaintenanceWindow
import Network.AWS.SSM.RegisterTaskWithMaintenanceWindow
import Network.AWS.SSM.RemoveTagsFromResource
import Network.AWS.SSM.ResetServiceSetting
import Network.AWS.SSM.ResumeSession
import Network.AWS.SSM.SendAutomationSignal
import Network.AWS.SSM.SendCommand
import Network.AWS.SSM.StartAssociationsOnce
import Network.AWS.SSM.StartAutomationExecution
import Network.AWS.SSM.StartChangeRequestExecution
import Network.AWS.SSM.StartSession
import Network.AWS.SSM.StopAutomationExecution
import Network.AWS.SSM.TerminateSession
import Network.AWS.SSM.Types
import Network.AWS.SSM.UpdateAssociation
import Network.AWS.SSM.UpdateAssociationStatus
import Network.AWS.SSM.UpdateDocument
import Network.AWS.SSM.UpdateDocumentDefaultVersion
import Network.AWS.SSM.UpdateDocumentMetadata
import Network.AWS.SSM.UpdateMaintenanceWindow
import Network.AWS.SSM.UpdateMaintenanceWindowTarget
import Network.AWS.SSM.UpdateMaintenanceWindowTask
import Network.AWS.SSM.UpdateManagedInstanceRole
import Network.AWS.SSM.UpdateOpsItem
import Network.AWS.SSM.UpdateOpsMetadata
import Network.AWS.SSM.UpdatePatchBaseline
import Network.AWS.SSM.UpdateResourceDataSync
import Network.AWS.SSM.UpdateServiceSetting
import Network.AWS.SSM.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'SSM'.

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

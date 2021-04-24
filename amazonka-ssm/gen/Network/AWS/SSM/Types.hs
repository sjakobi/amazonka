{-# LANGUAGE OverloadedStrings #-}

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
    ssm,

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
    accountSharingInfo,
    asiAccountId,
    asiSharedDocumentVersion,

    -- * Activation
    Activation (..),
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

    -- * Association
    Association (..),
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

    -- * AssociationDescription
    AssociationDescription (..),
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

    -- * AssociationExecution
    AssociationExecution (..),
    associationExecution,
    aeStatus,
    aeLastExecutionDate,
    aeDetailedStatus,
    aeResourceCountByStatus,
    aeCreatedTime,
    aeExecutionId,
    aeAssociationId,
    aeAssociationVersion,

    -- * AssociationExecutionFilter
    AssociationExecutionFilter (..),
    associationExecutionFilter,
    assKey,
    assValue,
    assType,

    -- * AssociationExecutionTarget
    AssociationExecutionTarget (..),
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

    -- * AssociationExecutionTargetsFilter
    AssociationExecutionTargetsFilter (..),
    associationExecutionTargetsFilter,
    aetfKey,
    aetfValue,

    -- * AssociationFilter
    AssociationFilter (..),
    associationFilter,
    afKey,
    afValue,

    -- * AssociationOverview
    AssociationOverview (..),
    associationOverview,
    aoStatus,
    aoDetailedStatus,
    aoAssociationStatusAggregatedCount,

    -- * AssociationStatus
    AssociationStatus (..),
    associationStatus,
    asAdditionalInfo,
    asDate,
    asName,
    asMessage,

    -- * AssociationVersionInfo
    AssociationVersionInfo (..),
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

    -- * AttachmentContent
    AttachmentContent (..),
    attachmentContent,
    acHash,
    acName,
    acURL,
    acSize,
    acHashType,

    -- * AttachmentInformation
    AttachmentInformation (..),
    attachmentInformation,
    aiName,

    -- * AttachmentsSource
    AttachmentsSource (..),
    attachmentsSource,
    aKey,
    aValues,
    aName,

    -- * AutomationExecution
    AutomationExecution (..),
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

    -- * AutomationExecutionFilter
    AutomationExecutionFilter (..),
    automationExecutionFilter,
    aefKey,
    aefValues,

    -- * AutomationExecutionMetadata
    AutomationExecutionMetadata (..),
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

    -- * BaselineOverride
    BaselineOverride (..),
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

    -- * CloudWatchOutputConfig
    CloudWatchOutputConfig (..),
    cloudWatchOutputConfig,
    cwocCloudWatchLogGroupName,
    cwocCloudWatchOutputEnabled,

    -- * Command
    Command (..),
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

    -- * CommandFilter
    CommandFilter (..),
    commandFilter,
    cfKey,
    cfValue,

    -- * CommandInvocation
    CommandInvocation (..),
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

    -- * CommandPlugin
    CommandPlugin (..),
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

    -- * ComplianceExecutionSummary
    ComplianceExecutionSummary (..),
    complianceExecutionSummary,
    cesExecutionId,
    cesExecutionType,
    cesExecutionTime,

    -- * ComplianceItem
    ComplianceItem (..),
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

    -- * ComplianceItemEntry
    ComplianceItemEntry (..),
    complianceItemEntry,
    cieTitle,
    cieId,
    cieDetails,
    cieSeverity,
    cieStatus,

    -- * ComplianceStringFilter
    ComplianceStringFilter (..),
    complianceStringFilter,
    csfKey,
    csfValues,
    csfType,

    -- * ComplianceSummaryItem
    ComplianceSummaryItem (..),
    complianceSummaryItem,
    csiCompliantSummary,
    csiComplianceType,
    csiNonCompliantSummary,

    -- * CompliantSummary
    CompliantSummary (..),
    compliantSummary,
    csSeveritySummary,
    csCompliantCount,

    -- * CreateAssociationBatchRequestEntry
    CreateAssociationBatchRequestEntry (..),
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

    -- * DescribeActivationsFilter
    DescribeActivationsFilter (..),
    describeActivationsFilter,
    dafFilterKey,
    dafFilterValues,

    -- * DocumentDefaultVersionDescription
    DocumentDefaultVersionDescription (..),
    documentDefaultVersionDescription,
    ddvdDefaultVersion,
    ddvdName,
    ddvdDefaultVersionName,

    -- * DocumentDescription
    DocumentDescription (..),
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

    -- * DocumentFilter
    DocumentFilter (..),
    documentFilter,
    dfKey,
    dfValue,

    -- * DocumentIdentifier
    DocumentIdentifier (..),
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

    -- * DocumentKeyValuesFilter
    DocumentKeyValuesFilter (..),
    documentKeyValuesFilter,
    dkvfKey,
    dkvfValues,

    -- * DocumentMetadataResponseInfo
    DocumentMetadataResponseInfo (..),
    documentMetadataResponseInfo,
    dmriReviewerResponse,

    -- * DocumentParameter
    DocumentParameter (..),
    documentParameter,
    dpName,
    dpDescription,
    dpType,
    dpDefaultValue,

    -- * DocumentRequires
    DocumentRequires (..),
    documentRequires,
    drVersion,
    drName,

    -- * DocumentReviewCommentSource
    DocumentReviewCommentSource (..),
    documentReviewCommentSource,
    drcsContent,
    drcsType,

    -- * DocumentReviewerResponseSource
    DocumentReviewerResponseSource (..),
    documentReviewerResponseSource,
    drrsComment,
    drrsUpdatedTime,
    drrsCreateTime,
    drrsReviewStatus,
    drrsReviewer,

    -- * DocumentReviews
    DocumentReviews (..),
    documentReviews,
    drComment,
    drAction,

    -- * DocumentVersionInfo
    DocumentVersionInfo (..),
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

    -- * EffectivePatch
    EffectivePatch (..),
    effectivePatch,
    epPatch,
    epPatchStatus,

    -- * FailedCreateAssociation
    FailedCreateAssociation (..),
    failedCreateAssociation,
    fcaEntry,
    fcaMessage,
    fcaFault,

    -- * FailureDetails
    FailureDetails (..),
    failureDetails,
    fdDetails,
    fdFailureStage,
    fdFailureType,

    -- * InstanceAggregatedAssociationOverview
    InstanceAggregatedAssociationOverview (..),
    instanceAggregatedAssociationOverview,
    iaaoDetailedStatus,
    iaaoInstanceAssociationStatusAggregatedCount,

    -- * InstanceAssociation
    InstanceAssociation (..),
    instanceAssociation,
    iaInstanceId,
    iaAssociationId,
    iaContent,
    iaAssociationVersion,

    -- * InstanceAssociationOutputLocation
    InstanceAssociationOutputLocation (..),
    instanceAssociationOutputLocation,
    iaolS3Location,

    -- * InstanceAssociationOutputURL
    InstanceAssociationOutputURL (..),
    instanceAssociationOutputURL,
    iaouS3OutputURL,

    -- * InstanceAssociationStatusInfo
    InstanceAssociationStatusInfo (..),
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

    -- * InstanceInformation
    InstanceInformation (..),
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

    -- * InstanceInformationFilter
    InstanceInformationFilter (..),
    instanceInformationFilter,
    iifKey,
    iifValueSet,

    -- * InstanceInformationStringFilter
    InstanceInformationStringFilter (..),
    instanceInformationStringFilter,
    iisfKey,
    iisfValues,

    -- * InstancePatchState
    InstancePatchState (..),
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

    -- * InstancePatchStateFilter
    InstancePatchStateFilter (..),
    instancePatchStateFilter,
    ipsfKey,
    ipsfValues,
    ipsfType,

    -- * InventoryAggregator
    InventoryAggregator (..),
    inventoryAggregator,
    iaGroups,
    iaAggregators,
    iaExpression,

    -- * InventoryDeletionStatusItem
    InventoryDeletionStatusItem (..),
    inventoryDeletionStatusItem,
    idsiTypeName,
    idsiLastStatusMessage,
    idsiLastStatusUpdateTime,
    idsiDeletionId,
    idsiDeletionStartTime,
    idsiLastStatus,
    idsiDeletionSummary,

    -- * InventoryDeletionSummary
    InventoryDeletionSummary (..),
    inventoryDeletionSummary,
    idsRemainingCount,
    idsTotalCount,
    idsSummaryItems,

    -- * InventoryDeletionSummaryItem
    InventoryDeletionSummaryItem (..),
    inventoryDeletionSummaryItem,
    idsiRemainingCount,
    idsiVersion,
    idsiCount,

    -- * InventoryFilter
    InventoryFilter (..),
    inventoryFilter,
    ifType,
    ifKey,
    ifValues,

    -- * InventoryGroup
    InventoryGroup (..),
    inventoryGroup,
    igName,
    igFilters,

    -- * InventoryItem
    InventoryItem (..),
    inventoryItem,
    iiContext,
    iiContent,
    iiContentHash,
    iiTypeName,
    iiSchemaVersion,
    iiCaptureTime,

    -- * InventoryItemAttribute
    InventoryItemAttribute (..),
    inventoryItemAttribute,
    iiaName,
    iiaDataType,

    -- * InventoryItemSchema
    InventoryItemSchema (..),
    inventoryItemSchema,
    iisVersion,
    iisDisplayName,
    iisTypeName,
    iisAttributes,

    -- * InventoryResultEntity
    InventoryResultEntity (..),
    inventoryResultEntity,
    ireData,
    ireId,

    -- * InventoryResultItem
    InventoryResultItem (..),
    inventoryResultItem,
    iriCaptureTime,
    iriContentHash,
    iriTypeName,
    iriSchemaVersion,
    iriContent,

    -- * LoggingInfo
    LoggingInfo (..),
    loggingInfo,
    liS3KeyPrefix,
    liS3BucketName,
    liS3Region,

    -- * MaintenanceWindowAutomationParameters
    MaintenanceWindowAutomationParameters (..),
    maintenanceWindowAutomationParameters,
    mwapDocumentVersion,
    mwapParameters,

    -- * MaintenanceWindowExecution
    MaintenanceWindowExecution (..),
    maintenanceWindowExecution,
    mweStatus,
    mweStatusDetails,
    mweStartTime,
    mweEndTime,
    mweWindowId,
    mweWindowExecutionId,

    -- * MaintenanceWindowExecutionTaskIdentity
    MaintenanceWindowExecutionTaskIdentity (..),
    maintenanceWindowExecutionTaskIdentity,
    mwetiStatus,
    mwetiStatusDetails,
    mwetiStartTime,
    mwetiEndTime,
    mwetiWindowExecutionId,
    mwetiTaskARN,
    mwetiTaskType,
    mwetiTaskExecutionId,

    -- * MaintenanceWindowExecutionTaskInvocationIdentity
    MaintenanceWindowExecutionTaskInvocationIdentity (..),
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

    -- * MaintenanceWindowFilter
    MaintenanceWindowFilter (..),
    maintenanceWindowFilter,
    mwfKey,
    mwfValues,

    -- * MaintenanceWindowIdentity
    MaintenanceWindowIdentity (..),
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

    -- * MaintenanceWindowIdentityForTarget
    MaintenanceWindowIdentityForTarget (..),
    maintenanceWindowIdentityForTarget,
    mwiftName,
    mwiftWindowId,

    -- * MaintenanceWindowLambdaParameters
    MaintenanceWindowLambdaParameters (..),
    maintenanceWindowLambdaParameters,
    mwlpPayload,
    mwlpQualifier,
    mwlpClientContext,

    -- * MaintenanceWindowRunCommandParameters
    MaintenanceWindowRunCommandParameters (..),
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

    -- * MaintenanceWindowStepFunctionsParameters
    MaintenanceWindowStepFunctionsParameters (..),
    maintenanceWindowStepFunctionsParameters,
    mwsfpInput,
    mwsfpName,

    -- * MaintenanceWindowTarget
    MaintenanceWindowTarget (..),
    maintenanceWindowTarget,
    mWindowTargetId,
    mResourceType,
    mTargets,
    mName,
    mWindowId,
    mDescription,
    mOwnerInformation,

    -- * MaintenanceWindowTask
    MaintenanceWindowTask (..),
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

    -- * MaintenanceWindowTaskInvocationParameters
    MaintenanceWindowTaskInvocationParameters (..),
    maintenanceWindowTaskInvocationParameters,
    mwtipAutomation,
    mwtipLambda,
    mwtipRunCommand,
    mwtipStepFunctions,

    -- * MaintenanceWindowTaskParameterValueExpression
    MaintenanceWindowTaskParameterValueExpression (..),
    maintenanceWindowTaskParameterValueExpression,
    mwtpveValues,

    -- * MetadataValue
    MetadataValue (..),
    metadataValue,
    mvValue,

    -- * NonCompliantSummary
    NonCompliantSummary (..),
    nonCompliantSummary,
    ncsSeveritySummary,
    ncsNonCompliantCount,

    -- * NotificationConfig
    NotificationConfig (..),
    notificationConfig,
    ncNotificationARN,
    ncNotificationType,
    ncNotificationEvents,

    -- * OpsAggregator
    OpsAggregator (..),
    opsAggregator,
    oaTypeName,
    oaAttributeName,
    oaValues,
    oaAggregatorType,
    oaFilters,
    oaAggregators,

    -- * OpsEntity
    OpsEntity (..),
    opsEntity,
    oeData,
    oeId,

    -- * OpsEntityItem
    OpsEntityItem (..),
    opsEntityItem,
    oeiCaptureTime,
    oeiContent,

    -- * OpsFilter
    OpsFilter (..),
    opsFilter,
    ofType,
    ofKey,
    ofValues,

    -- * OpsItem
    OpsItem (..),
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

    -- * OpsItemDataValue
    OpsItemDataValue (..),
    opsItemDataValue,
    oidvValue,
    oidvType,

    -- * OpsItemEventFilter
    OpsItemEventFilter (..),
    opsItemEventFilter,
    oiefKey,
    oiefValues,
    oiefOperator,

    -- * OpsItemEventSummary
    OpsItemEventSummary (..),
    opsItemEventSummary,
    oiesEventId,
    oiesDetailType,
    oiesSource,
    oiesCreatedTime,
    oiesOpsItemId,
    oiesDetail,
    oiesCreatedBy,

    -- * OpsItemFilter
    OpsItemFilter (..),
    opsItemFilter,
    oifKey,
    oifValues,
    oifOperator,

    -- * OpsItemIdentity
    OpsItemIdentity (..),
    opsItemIdentity,
    oiiARN,

    -- * OpsItemNotification
    OpsItemNotification (..),
    opsItemNotification,
    oinARN,

    -- * OpsItemSummary
    OpsItemSummary (..),
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

    -- * OpsMetadata
    OpsMetadata (..),
    opsMetadata,
    omResourceId,
    omLastModifiedDate,
    omOpsMetadataARN,
    omCreationDate,
    omLastModifiedUser,

    -- * OpsMetadataFilter
    OpsMetadataFilter (..),
    opsMetadataFilter,
    omfKey,
    omfValues,

    -- * OpsResultAttribute
    OpsResultAttribute (..),
    opsResultAttribute,
    oraTypeName,

    -- * OutputSource
    OutputSource (..),
    outputSource,
    osOutputSourceId,
    osOutputSourceType,

    -- * Parameter
    Parameter (..),
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

    -- * ParameterHistory
    ParameterHistory (..),
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

    -- * ParameterInlinePolicy
    ParameterInlinePolicy (..),
    parameterInlinePolicy,
    pipPolicyType,
    pipPolicyText,
    pipPolicyStatus,

    -- * ParameterMetadata
    ParameterMetadata (..),
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

    -- * ParameterStringFilter
    ParameterStringFilter (..),
    parameterStringFilter,
    psfValues,
    psfOption,
    psfKey,

    -- * ParametersFilter
    ParametersFilter (..),
    parametersFilter,
    pKey,
    pValues,

    -- * Patch
    Patch (..),
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

    -- * PatchBaselineIdentity
    PatchBaselineIdentity (..),
    patchBaselineIdentity,
    pbiBaselineName,
    pbiBaselineId,
    pbiDefaultBaseline,
    pbiBaselineDescription,
    pbiOperatingSystem,

    -- * PatchComplianceData
    PatchComplianceData (..),
    patchComplianceData,
    pcdCVEIds,
    pcdTitle,
    pcdKBId,
    pcdClassification,
    pcdSeverity,
    pcdState,
    pcdInstalledTime,

    -- * PatchFilter
    PatchFilter (..),
    patchFilter,
    pfKey,
    pfValues,

    -- * PatchFilterGroup
    PatchFilterGroup (..),
    patchFilterGroup,
    pfgPatchFilters,

    -- * PatchGroupPatchBaselineMapping
    PatchGroupPatchBaselineMapping (..),
    patchGroupPatchBaselineMapping,
    pgpbmBaselineIdentity,
    pgpbmPatchGroup,

    -- * PatchOrchestratorFilter
    PatchOrchestratorFilter (..),
    patchOrchestratorFilter,
    pofKey,
    pofValues,

    -- * PatchRule
    PatchRule (..),
    patchRule,
    prApproveAfterDays,
    prApproveUntilDate,
    prComplianceLevel,
    prEnableNonSecurity,
    prPatchFilterGroup,

    -- * PatchRuleGroup
    PatchRuleGroup (..),
    patchRuleGroup,
    prgPatchRules,

    -- * PatchSource
    PatchSource (..),
    patchSource,
    psName,
    psProducts,
    psConfiguration,

    -- * PatchStatus
    PatchStatus (..),
    patchStatus,
    psApprovalDate,
    psComplianceLevel,
    psDeploymentStatus,

    -- * ProgressCounters
    ProgressCounters (..),
    progressCounters,
    pcCancelledSteps,
    pcTimedOutSteps,
    pcTotalSteps,
    pcSuccessSteps,
    pcFailedSteps,

    -- * RelatedOpsItem
    RelatedOpsItem (..),
    relatedOpsItem,
    roiOpsItemId,

    -- * ResolvedTargets
    ResolvedTargets (..),
    resolvedTargets,
    rtParameterValues,
    rtTruncated,

    -- * ResourceComplianceSummaryItem
    ResourceComplianceSummaryItem (..),
    resourceComplianceSummaryItem,
    rcsiResourceId,
    rcsiStatus,
    rcsiOverallSeverity,
    rcsiCompliantSummary,
    rcsiComplianceType,
    rcsiResourceType,
    rcsiNonCompliantSummary,
    rcsiExecutionSummary,

    -- * ResourceDataSyncAWSOrganizationsSource
    ResourceDataSyncAWSOrganizationsSource (..),
    resourceDataSyncAWSOrganizationsSource,
    rdsaosOrganizationalUnits,
    rdsaosOrganizationSourceType,

    -- * ResourceDataSyncDestinationDataSharing
    ResourceDataSyncDestinationDataSharing (..),
    resourceDataSyncDestinationDataSharing,
    rdsddsDestinationDataSharingType,

    -- * ResourceDataSyncItem
    ResourceDataSyncItem (..),
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

    -- * ResourceDataSyncOrganizationalUnit
    ResourceDataSyncOrganizationalUnit (..),
    resourceDataSyncOrganizationalUnit,
    rdsouOrganizationalUnitId,

    -- * ResourceDataSyncS3Destination
    ResourceDataSyncS3Destination (..),
    resourceDataSyncS3Destination,
    rdssdPrefix,
    rdssdDestinationDataSharing,
    rdssdAWSKMSKeyARN,
    rdssdBucketName,
    rdssdSyncFormat,
    rdssdRegion,

    -- * ResourceDataSyncSource
    ResourceDataSyncSource (..),
    resourceDataSyncSource,
    rdssIncludeFutureRegions,
    rdssAWSOrganizationsSource,
    rdssSourceType,
    rdssSourceRegions,

    -- * ResourceDataSyncSourceWithState
    ResourceDataSyncSourceWithState (..),
    resourceDataSyncSourceWithState,
    rdsswsIncludeFutureRegions,
    rdsswsState,
    rdsswsSourceRegions,
    rdsswsAWSOrganizationsSource,
    rdsswsSourceType,

    -- * ResultAttribute
    ResultAttribute (..),
    resultAttribute,
    raTypeName,

    -- * ReviewInformation
    ReviewInformation (..),
    reviewInformation,
    riStatus,
    riReviewedTime,
    riReviewer,

    -- * Runbook
    Runbook (..),
    runbook,
    runMaxErrors,
    runTargets,
    runTargetLocations,
    runTargetParameterName,
    runMaxConcurrency,
    runDocumentVersion,
    runParameters,
    runDocumentName,

    -- * S3OutputLocation
    S3OutputLocation (..),
    s3OutputLocation,
    solOutputS3BucketName,
    solOutputS3Region,
    solOutputS3KeyPrefix,

    -- * S3OutputURL
    S3OutputURL (..),
    s3OutputURL,
    souOutputURL,

    -- * ScheduledWindowExecution
    ScheduledWindowExecution (..),
    scheduledWindowExecution,
    sweExecutionTime,
    sweName,
    sweWindowId,

    -- * ServiceSetting
    ServiceSetting (..),
    serviceSetting,
    ssLastModifiedDate,
    ssStatus,
    ssARN,
    ssSettingValue,
    ssSettingId,
    ssLastModifiedUser,

    -- * Session
    Session (..),
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

    -- * SessionFilter
    SessionFilter (..),
    sessionFilter,
    sfKey,
    sfValue,

    -- * SessionManagerOutputURL
    SessionManagerOutputURL (..),
    sessionManagerOutputURL,
    smouS3OutputURL,
    smouCloudWatchOutputURL,

    -- * SeveritySummary
    SeveritySummary (..),
    severitySummary,
    ssLowCount,
    ssMediumCount,
    ssCriticalCount,
    ssHighCount,
    ssUnspecifiedCount,
    ssInformationalCount,

    -- * StepExecution
    StepExecution (..),
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

    -- * StepExecutionFilter
    StepExecutionFilter (..),
    stepExecutionFilter,
    sefKey,
    sefValues,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Target
    Target (..),
    target,
    tKey,
    tValues,

    -- * TargetLocation
    TargetLocation (..),
    targetLocation,
    tlExecutionRoleName,
    tlAccounts,
    tlRegions,
    tlTargetLocationMaxErrors,
    tlTargetLocationMaxConcurrency,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
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
import Network.AWS.SSM.Types.InstanceAssociationOutputURL
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
import Network.AWS.SSM.Types.ResourceDataSyncAWSOrganizationsSource
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
import Network.AWS.SSM.Types.S3OutputURL
import Network.AWS.SSM.Types.ScheduledWindowExecution
import Network.AWS.SSM.Types.ServiceSetting
import Network.AWS.SSM.Types.Session
import Network.AWS.SSM.Types.SessionFilter
import Network.AWS.SSM.Types.SessionFilterKey
import Network.AWS.SSM.Types.SessionManagerOutputURL
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
import Network.AWS.Sign.V4

-- | API version @2014-11-06@ of the Amazon Simple Systems Manager (SSM) SDK configuration.
ssm :: Service
ssm =
  Service
    { _svcAbbrev = "SSM",
      _svcSigner = v4,
      _svcPrefix = "ssm",
      _svcVersion = "2014-11-06",
      _svcEndpoint = defaultEndpoint ssm,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "SSM",
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

-- | The specified aggregator is not valid for inventory groups. Verify that the aggregator uses a valid inventory type such as @AWS:Application@ or @AWS:InstanceInformation@ .
_InvalidAggregatorException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAggregatorException =
  _MatchServiceError ssm "InvalidAggregatorException"

-- | The specified filter value is not valid.
_InvalidInstanceInformationFilterValue :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceInformationFilterValue =
  _MatchServiceError
    ssm
    "InvalidInstanceInformationFilterValue"

-- | One or more of the parameters specified for the delete operation is not valid. Verify all parameters and try again.
_InvalidDeleteInventoryParametersException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeleteInventoryParametersException =
  _MatchServiceError
    ssm
    "InvalidDeleteInventoryParametersException"

-- | You specified too many custom compliance types. You can specify a maximum of 10 different types.
_ComplianceTypeCountLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ComplianceTypeCountLimitExceededException =
  _MatchServiceError
    ssm
    "ComplianceTypeCountLimitExceededException"

-- | The OpsMetadata object exceeds the maximum number of OpsMetadata keys that you can assign to an application in Application Manager.
_OpsMetadataKeyLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsMetadataKeyLimitExceededException =
  _MatchServiceError
    ssm
    "OpsMetadataKeyLimitExceededException"

-- | You attempted to register a LAMBDA or STEP_FUNCTIONS task in a region where the corresponding service is not available.
_FeatureNotAvailableException :: AsError a => Getting (First ServiceError) a ServiceError
_FeatureNotAvailableException =
  _MatchServiceError
    ssm
    "FeatureNotAvailableException"

-- | The signal is not valid for the current Automation execution.
_InvalidAutomationSignalException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAutomationSignalException =
  _MatchServiceError
    ssm
    "InvalidAutomationSignalException"

-- | Error returned when an idempotent operation is retried and the parameters don't match the original call to the API with the same idempotency token.
_IdempotentParameterMismatch :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatch =
  _MatchServiceError
    ssm
    "IdempotentParameterMismatch"

-- | Another @UpdateResourceDataSync@ request is being processed. Wait a few minutes and try again.
_ResourceDataSyncConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceDataSyncConflictException =
  _MatchServiceError
    ssm
    "ResourceDataSyncConflictException"

-- | Error returned when the ID specified for a resource, such as a maintenance window or Patch baseline, doesn't exist.
--
--
-- For information about resource quotas in Systems Manager, see <http://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm Systems Manager service quotas> in the /AWS General Reference/ .
_DoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DoesNotExistException =
  _MatchServiceError ssm "DoesNotExistException"

-- | An Automation document with the specified name and version could not be found.
_AutomationDefinitionVersionNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationDefinitionVersionNotFoundException =
  _MatchServiceError
    ssm
    "AutomationDefinitionVersionNotFoundException"

-- | The document version is not valid or does not exist.
_InvalidDocumentVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentVersion =
  _MatchServiceError ssm "InvalidDocumentVersion"

-- | The parameter type is not supported.
_UnsupportedParameterType :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedParameterType =
  _MatchServiceError ssm "UnsupportedParameterType"

-- | Parameter Store does not support changing a parameter type in a hierarchy. For example, you can't change a parameter from a @String@ type to a @SecureString@ type. You must create a new, unique parameter.
_HierarchyTypeMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_HierarchyTypeMismatchException =
  _MatchServiceError
    ssm
    "HierarchyTypeMismatchException"

-- | One of the arguments passed is invalid.
_OpsMetadataInvalidArgumentException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsMetadataInvalidArgumentException =
  _MatchServiceError
    ssm
    "OpsMetadataInvalidArgumentException"

-- | The number of simultaneously running Automation executions exceeded the allowable limit.
_AutomationExecutionLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationExecutionLimitExceededException =
  _MatchServiceError
    ssm
    "AutomationExecutionLimitExceededException"

-- | The specified update status operation is not valid.
_InvalidAutomationStatusUpdateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAutomationStatusUpdateException =
  _MatchServiceError
    ssm
    "InvalidAutomationStatusUpdateException"

-- | There is no automation execution information for the requested automation execution ID.
_AutomationExecutionNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationExecutionNotFoundException =
  _MatchServiceError
    ssm
    "AutomationExecutionNotFoundException"

-- | The filter name is not valid. Verify the you entered the correct name and try again.
_InvalidFilter :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilter =
  _MatchServiceError ssm "InvalidFilter"

-- | The parameter type name is not valid.
_InvalidTypeNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTypeNameException =
  _MatchServiceError ssm "InvalidTypeNameException"

-- | The specified document already exists.
_DocumentAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentAlreadyExists =
  _MatchServiceError ssm "DocumentAlreadyExists"

-- | The document cannot be shared with more AWS user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact AWS Support.
_DocumentPermissionLimit :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentPermissionLimit =
  _MatchServiceError ssm "DocumentPermissionLimit"

-- | The inventory item size has exceeded the size limit.
_ItemSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ItemSizeLimitExceededException =
  _MatchServiceError
    ssm
    "ItemSizeLimitExceededException"

-- | Parameter Store retains the 100 most recently created versions of a parameter. After this number of versions has been created, Parameter Store deletes the oldest version when a new one is created. However, if the oldest version has a /label/ attached to it, Parameter Store will not delete the version and instead presents this error message:
--
--
-- @An error occurred (ParameterMaxVersionLimitExceeded) when calling the PutParameter operation: You attempted to create a new version of /parameter-name/ by calling the PutParameter API with the overwrite flag. Version /version-number/ , the oldest version, can't be deleted because it has a label associated with it. Move the label to another version of the parameter, and try again.@
--
-- This safeguard is to prevent parameter versions with mission critical labels assigned to them from being deleted. To continue creating new parameters, first move the label from the oldest version of the parameter to a newer one for use in your operations. For information about moving parameter labels, see <http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-console-move Move a parameter label (console)> or <http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-cli-move Move a parameter label (CLI) > in the /AWS Systems Manager User Guide/ .
_ParameterMaxVersionLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterMaxVersionLimitExceeded =
  _MatchServiceError
    ssm
    "ParameterMaxVersionLimitExceeded"

-- | The specified step name and execution ID don't exist. Verify the information and try again.
_AutomationStepNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationStepNotFoundException =
  _MatchServiceError
    ssm
    "AutomationStepNotFoundException"

-- | You can have at most 500 active Systems Manager documents.
_DocumentLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentLimitExceeded =
  _MatchServiceError ssm "DocumentLimitExceeded"

-- | The @Targets@ parameter includes too many tags. Remove one or more tags and try the command again.
_TooManyTagsError :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsError =
  _MatchServiceError ssm "TooManyTagsError"

-- | You specified invalid keys or values in the @Context@ attribute for @InventoryItem@ . Verify the keys and values, and try again.
_InvalidInventoryItemContextException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInventoryItemContextException =
  _MatchServiceError
    ssm
    "InvalidInventoryItemContextException"

-- | There is a conflict in the policies specified for this parameter. You can't, for example, specify two Expiration policies for a parameter. Review your policies, and try again.
_IncompatiblePolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatiblePolicyException =
  _MatchServiceError
    ssm
    "IncompatiblePolicyException"

-- | A specified parameter argument isn't valid. Verify the available arguments and try again.
_OpsItemInvalidParameterException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsItemInvalidParameterException =
  _MatchServiceError
    ssm
    "OpsItemInvalidParameterException"

-- | The specified document does not exist.
_InvalidDocument :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocument =
  _MatchServiceError ssm "InvalidDocument"

-- | An Automation document with the specified name could not be found.
_AutomationDefinitionNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationDefinitionNotFoundException =
  _MatchServiceError
    ssm
    "AutomationDefinitionNotFoundException"

-- | The sub-type count exceeded the limit for the inventory type.
_SubTypeCountLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_SubTypeCountLimitExceededException =
  _MatchServiceError
    ssm
    "SubTypeCountLimitExceededException"

-- | The request does not meet the regular expression requirement.
_InvalidAllowedPatternException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAllowedPatternException =
  _MatchServiceError
    ssm
    "InvalidAllowedPatternException"

-- | A parameter version can have a maximum of ten labels.
_ParameterVersionLabelLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterVersionLabelLimitExceeded =
  _MatchServiceError
    ssm
    "ParameterVersionLabelLimitExceeded"

-- | Prism for InvalidCommandId' errors.
_InvalidCommandId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCommandId =
  _MatchServiceError ssm "InvalidCommandId"

-- | The system is processing too many concurrent updates. Wait a few moments and try again.
_OpsMetadataTooManyUpdatesException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsMetadataTooManyUpdatesException =
  _MatchServiceError
    ssm
    "OpsMetadataTooManyUpdatesException"

-- | Error returned when the caller has exceeded the default resource quotas. For example, too many maintenance windows or patch baselines have been created.
--
--
-- For information about resource quotas in Systems Manager, see <http://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm Systems Manager service quotas> in the /AWS General Reference/ .
_ResourceLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceededException =
  _MatchServiceError
    ssm
    "ResourceLimitExceededException"

-- | The output location is not valid or does not exist.
_InvalidOutputLocation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOutputLocation =
  _MatchServiceError ssm "InvalidOutputLocation"

-- | You must specify values for all required parameters in the Systems Manager document. You can only supply values to parameters defined in the Systems Manager document.
_InvalidParameters :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameters =
  _MatchServiceError ssm "InvalidParameters"

-- | The specified target instance for the session is not fully configured for use with Session Manager. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html Getting started with Session Manager> in the /AWS Systems Manager User Guide/ . This error is also returned if you attempt to start a session on an instance that is located in a different account or Region
_TargetNotConnected :: AsError a => Getting (First ServiceError) a ServiceError
_TargetNotConnected =
  _MatchServiceError ssm "TargetNotConnected"

-- | Inventory item type schema version has to match supported versions in the service. Check output of GetInventorySchema to see the available schema version for each type.
_UnsupportedInventorySchemaVersionException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedInventorySchemaVersionException =
  _MatchServiceError
    ssm
    "UnsupportedInventorySchemaVersionException"

-- | The association is not valid or does not exist.
_InvalidAssociation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAssociation =
  _MatchServiceError ssm "InvalidAssociation"

-- | The update is not valid.
_InvalidUpdate :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUpdate =
  _MatchServiceError ssm "InvalidUpdate"

-- | The target is not valid or does not exist. It might not be configured for Systems Manager or you might not have permission to perform the operation.
_InvalidTarget :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTarget =
  _MatchServiceError ssm "InvalidTarget"

-- | You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.
_CustomSchemaCountLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomSchemaCountLimitExceededException =
  _MatchServiceError
    ssm
    "CustomSchemaCountLimitExceededException"

-- | The specified service setting was not found. Either the service name or the setting has not been provisioned by the AWS service team.
_ServiceSettingNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceSettingNotFound =
  _MatchServiceError ssm "ServiceSettingNotFound"

-- | The version name has already been used in this document. Specify a different version name, and then try again.
_DuplicateDocumentVersionName :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateDocumentVersionName =
  _MatchServiceError
    ssm
    "DuplicateDocumentVersionName"

-- | The following problems can cause this exception:
--
--
-- You do not have permission to access the instance.
--
-- SSM Agent is not running. Verify that SSM Agent is running.
--
-- SSM Agent is not registered with the SSM endpoint. Try reinstalling SSM Agent.
--
-- The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping. Invalid states are: Shutting-down and Terminated.
_InvalidInstanceId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceId =
  _MatchServiceError ssm "InvalidInstanceId"

-- | The OpsMetadata object does not exist.
_OpsMetadataNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsMetadataNotFoundException =
  _MatchServiceError
    ssm
    "OpsMetadataNotFoundException"

-- | The version of the document schema is not supported.
_InvalidDocumentSchemaVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentSchemaVersion =
  _MatchServiceError
    ssm
    "InvalidDocumentSchemaVersion"

-- | The delete inventory option specified is not valid. Verify the option and try again.
_InvalidOptionException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOptionException =
  _MatchServiceError ssm "InvalidOptionException"

-- | There are concurrent updates for a resource that supports one update at a time.
_TooManyUpdates :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyUpdates =
  _MatchServiceError ssm "TooManyUpdates"

-- | The specified OpsItem ID doesn't exist. Verify the ID and try again.
_OpsItemNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsItemNotFoundException =
  _MatchServiceError ssm "OpsItemNotFoundException"

-- | The updated status is the same as the current status.
_StatusUnchanged :: AsError a => Getting (First ServiceError) a ServiceError
_StatusUnchanged =
  _MatchServiceError ssm "StatusUnchanged"

-- | The parameter could not be found. Verify the name and try again.
_ParameterNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterNotFound =
  _MatchServiceError ssm "ParameterNotFound"

-- | The specified association does not exist.
_AssociationDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationDoesNotExist =
  _MatchServiceError ssm "AssociationDoesNotExist"

-- | The version you specified is not valid. Use ListAssociationVersions to view all versions of an association according to the association ID. Or, use the @> LATEST@ parameter to view the latest version of the association.
_InvalidAssociationVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAssociationVersion =
  _MatchServiceError ssm "InvalidAssociationVersion"

-- | You have exceeded the allowed maximum sync configurations.
_ResourceDataSyncCountExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceDataSyncCountExceededException =
  _MatchServiceError
    ssm
    "ResourceDataSyncCountExceededException"

-- | A policy attribute or its value is invalid.
_InvalidPolicyAttributeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPolicyAttributeException =
  _MatchServiceError
    ssm
    "InvalidPolicyAttributeException"

-- | An error occurred on the server side.
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError =
  _MatchServiceError ssm "InternalServerError"

-- | The filter value is not valid. Verify the value and try again.
_InvalidFilterValue :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilterValue =
  _MatchServiceError ssm "InvalidFilterValue"

-- | You specified more than the maximum number of allowed policies for the parameter. The maximum is 10.
_PoliciesLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_PoliciesLimitExceededException =
  _MatchServiceError
    ssm
    "PoliciesLimitExceededException"

-- | The plugin name is not valid.
_InvalidPluginName :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPluginName =
  _MatchServiceError ssm "InvalidPluginName"

-- | You can have at most 2,000 active associations.
_AssociationLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationLimitExceeded =
  _MatchServiceError ssm "AssociationLimitExceeded"

-- | The inventory item has invalid content.
_ItemContentMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_ItemContentMismatchException =
  _MatchServiceError
    ssm
    "ItemContentMismatchException"

-- | The parameter already exists. You can't create duplicate parameters.
_ParameterAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterAlreadyExists =
  _MatchServiceError ssm "ParameterAlreadyExists"

-- | The content for the document is not valid.
_InvalidDocumentContent :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentContent =
  _MatchServiceError ssm "InvalidDocumentContent"

-- | You have exceeded the number of parameters for this AWS account. Delete one or more parameters and try again.
_ParameterLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterLimitExceeded =
  _MatchServiceError ssm "ParameterLimitExceeded"

-- | Microsoft application patching is only available on EC2 instances and advanced instances. To patch Microsoft applications on on-premises servers and VMs, you must enable advanced instances. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances-advanced.html Using the advanced-instances tier> in the /AWS Systems Manager User Guide/ .
_UnsupportedFeatureRequiredException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedFeatureRequiredException =
  _MatchServiceError
    ssm
    "UnsupportedFeatureRequiredException"

-- | The ID specified for the delete operation does not exist or is not valid. Verify the ID and try again.
_InvalidDeletionIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDeletionIdException =
  _MatchServiceError ssm "InvalidDeletionIdException"

-- | The specified association already exists.
_AssociationAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationAlreadyExists =
  _MatchServiceError ssm "AssociationAlreadyExists"

-- | The schedule is invalid. Verify your cron or rate expression and try again.
_InvalidSchedule :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSchedule =
  _MatchServiceError ssm "InvalidSchedule"

-- | A sync configuration with the same name already exists.
_ResourceDataSyncAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceDataSyncAlreadyExistsException =
  _MatchServiceError
    ssm
    "ResourceDataSyncAlreadyExistsException"

-- | Error returned if an attempt is made to delete a patch baseline that is registered for a patch group.
_ResourceInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceInUseException =
  _MatchServiceError ssm "ResourceInUseException"

-- | The content of the association document matches another document. Change the content of the document and try again.
_DuplicateDocumentContent :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateDocumentContent =
  _MatchServiceError ssm "DuplicateDocumentContent"

-- | The specified sync name was not found.
_ResourceDataSyncNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceDataSyncNotFoundException =
  _MatchServiceError
    ssm
    "ResourceDataSyncNotFoundException"

-- | Error returned if an attempt is made to register a patch group with a patch baseline that is already registered with a different patch baseline.
_AlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsException =
  _MatchServiceError ssm "AlreadyExistsException"

-- | The supplied parameters for invoking the specified Automation document are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.
_InvalidAutomationExecutionParametersException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAutomationExecutionParametersException =
  _MatchServiceError
    ssm
    "InvalidAutomationExecutionParametersException"

-- | One or more configuration items is not valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon SNS topic.
_InvalidNotificationConfig :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNotificationConfig =
  _MatchServiceError ssm "InvalidNotificationConfig"

-- | The specified key is not valid.
_InvalidFilterKey :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilterKey =
  _MatchServiceError ssm "InvalidFilterKey"

-- | The policy type is not supported. Parameter Store supports the following policy types: Expiration, ExpirationNotification, and NoChangeNotification.
_InvalidPolicyTypeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPolicyTypeException =
  _MatchServiceError ssm "InvalidPolicyTypeException"

-- | The document type is not valid. Valid document types are described in the @DocumentType@ property.
_InvalidDocumentType :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentType =
  _MatchServiceError ssm "InvalidDocumentType"

-- | The size of inventory data has exceeded the total size limit for the resource.
_TotalSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TotalSizeLimitExceededException =
  _MatchServiceError
    ssm
    "TotalSizeLimitExceededException"

-- | The resource ID is not valid. Verify that you entered the correct ID and try again.
_InvalidResourceId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceId =
  _MatchServiceError ssm "InvalidResourceId"

-- | The specified inventory item result attribute is not valid.
_InvalidResultAttributeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResultAttributeException =
  _MatchServiceError
    ssm
    "InvalidResultAttributeException"

-- | The resource type is not valid. For example, if you are attempting to tag an instance, the instance must be a registered, managed instance.
_InvalidResourceType :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceType =
  _MatchServiceError ssm "InvalidResourceType"

-- | The specified sync configuration is invalid.
_ResourceDataSyncInvalidConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceDataSyncInvalidConfigurationException =
  _MatchServiceError
    ssm
    "ResourceDataSyncInvalidConfigurationException"

-- | The query key ID is not valid.
_InvalidKeyId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKeyId = _MatchServiceError ssm "InvalidKeyId"

-- | The specified inventory group is not valid.
_InvalidInventoryGroupException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInventoryGroupException =
  _MatchServiceError
    ssm
    "InvalidInventoryGroupException"

-- | The document has too many versions. Delete one or more document versions and try again.
_DocumentVersionLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentVersionLimitExceeded =
  _MatchServiceError
    ssm
    "DocumentVersionLimitExceeded"

-- | You cannot specify an instance ID in more than one association.
_DuplicateInstanceId :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateInstanceId =
  _MatchServiceError ssm "DuplicateInstanceId"

-- | The command ID and instance ID you specified did not match any invocations. Verify the command ID and the instance ID and try again.
_InvocationDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_InvocationDoesNotExist =
  _MatchServiceError ssm "InvocationDoesNotExist"

-- | You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.
_InvalidDocumentOperation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentOperation =
  _MatchServiceError ssm "InvalidDocumentOperation"

-- | Indicates that the Change Manager change template used in the change request was rejected or is still in a pending state.
_AutomationDefinitionNotApprovedException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationDefinitionNotApprovedException =
  _MatchServiceError
    ssm
    "AutomationDefinitionNotApprovedException"

-- | An OpsMetadata object already exists for the selected resource.
_OpsMetadataAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsMetadataAlreadyExistsException =
  _MatchServiceError
    ssm
    "OpsMetadataAlreadyExistsException"

-- | The specified parameter version was not found. Verify the parameter name and version, and try again.
_ParameterVersionNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterVersionNotFound =
  _MatchServiceError ssm "ParameterVersionNotFound"

-- | The request caused OpsItems to exceed one or more quotas. For information about OpsItem quotas, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-learn-more.html#OpsCenter-learn-more-limits What are the resource limits for OpsCenter?> .
_OpsItemLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsItemLimitExceededException =
  _MatchServiceError
    ssm
    "OpsItemLimitExceededException"

-- | The calendar entry contained in the specified Systems Manager document is not supported.
_UnsupportedCalendarException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedCalendarException =
  _MatchServiceError
    ssm
    "UnsupportedCalendarException"

-- | Your account reached the maximum number of OpsMetadata objects allowed by Application Manager. The maximum is 200 OpsMetadata objects. Delete one or more OpsMetadata object and try again.
_OpsMetadataLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsMetadataLimitExceededException =
  _MatchServiceError
    ssm
    "OpsMetadataLimitExceededException"

-- | The specified execution ID does not exist. Verify the ID number and try again.
_AssociationExecutionDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationExecutionDoesNotExist =
  _MatchServiceError
    ssm
    "AssociationExecutionDoesNotExist"

-- | A hierarchy can have a maximum of 15 levels. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html Requirements and constraints for parameter names> in the /AWS Systems Manager User Guide/ .
_HierarchyLevelLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_HierarchyLevelLimitExceededException =
  _MatchServiceError
    ssm
    "HierarchyLevelLimitExceededException"

-- | The S3 bucket does not exist.
_InvalidOutputFolder :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOutputFolder =
  _MatchServiceError ssm "InvalidOutputFolder"

-- | The OpsItem already exists.
_OpsItemAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_OpsItemAlreadyExistsException =
  _MatchServiceError
    ssm
    "OpsItemAlreadyExistsException"

-- | The activation ID is not valid. Verify the you entered the correct ActivationId or ActivationCode and try again.
_InvalidActivationId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidActivationId =
  _MatchServiceError ssm "InvalidActivationId"

-- | The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html Configuring Amazon SNS Notifications for Run Command> in the /AWS Systems Manager User Guide/ .
_InvalidRole :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRole = _MatchServiceError ssm "InvalidRole"

-- | The size limit of a document is 64 KB.
_MaxDocumentSizeExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_MaxDocumentSizeExceeded =
  _MatchServiceError ssm "MaxDocumentSizeExceeded"

-- | The specified token is not valid.
_InvalidNextToken :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextToken =
  _MatchServiceError ssm "InvalidNextToken"

-- | You have reached the maximum number versions allowed for an association. Each association has a limit of 1,000 versions.
_AssociationVersionLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationVersionLimitExceeded =
  _MatchServiceError
    ssm
    "AssociationVersionLimitExceeded"

-- | The operating systems you specified is not supported, or the operation is not supported for the operating system.
_UnsupportedOperatingSystem :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOperatingSystem =
  _MatchServiceError ssm "UnsupportedOperatingSystem"

-- | The activation is not valid. The activation might have been deleted, or the ActivationId and the ActivationCode do not match.
_InvalidActivation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidActivation =
  _MatchServiceError ssm "InvalidActivation"

-- | The request is not valid.
_InvalidInventoryRequestException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInventoryRequestException =
  _MatchServiceError
    ssm
    "InvalidInventoryRequestException"

-- | The permission type is not supported. /Share/ is the only supported permission type.
_InvalidPermissionType :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPermissionType =
  _MatchServiceError ssm "InvalidPermissionType"

-- | The specified filter option is not valid. Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.
_InvalidFilterOption :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilterOption =
  _MatchServiceError ssm "InvalidFilterOption"

-- | One or more content items is not valid.
_InvalidItemContentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidItemContentException =
  _MatchServiceError
    ssm
    "InvalidItemContentException"

-- | You specified the @Safe@ option for the DeregisterTargetFromMaintenanceWindow operation, but the target is still referenced in a task.
_TargetInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_TargetInUseException =
  _MatchServiceError ssm "TargetInUseException"

-- | The @Context@ attribute that you specified for the @InventoryItem@ is not allowed for this inventory type. You can only use the @Context@ attribute with inventory types like @AWS:ComplianceItem@ .
_UnsupportedInventoryItemContextException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedInventoryItemContextException =
  _MatchServiceError
    ssm
    "UnsupportedInventoryItemContextException"

-- | The document does not support the platform type of the given instance ID(s). For example, you sent an document for a Windows instance to a Linux instance.
_UnsupportedPlatformType :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedPlatformType =
  _MatchServiceError ssm "UnsupportedPlatformType"

-- | You must disassociate a document from all instances before you can delete it.
_AssociatedInstances :: AsError a => Getting (First ServiceError) a ServiceError
_AssociatedInstances =
  _MatchServiceError ssm "AssociatedInstances"

-- | The parameter name is not valid.
_ParameterPatternMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterPatternMismatchException =
  _MatchServiceError
    ssm
    "ParameterPatternMismatchException"

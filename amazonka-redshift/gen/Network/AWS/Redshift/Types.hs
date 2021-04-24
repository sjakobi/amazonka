{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types
  ( -- * Service Configuration
    redshift,

    -- * Errors
    _ClusterSecurityGroupAlreadyExistsFault,
    _ClusterSnapshotNotFoundFault,
    _ScheduleDefinitionTypeUnsupportedFault,
    _ClusterSubnetGroupNotFoundFault,
    _InvalidVPCNetworkStateFault,
    _InvalidSubscriptionStateFault,
    _BucketNotFoundFault,
    _LimitExceededFault,
    _SubscriptionAlreadyExistFault,
    _ClusterSecurityGroupQuotaExceededFault,
    _InvalidScheduledActionFault,
    _SubscriptionSeverityNotFoundFault,
    _UnauthorizedOperation,
    _InsufficientS3BucketPolicyFault,
    _InsufficientClusterCapacityFault,
    _HSMConfigurationQuotaExceededFault,
    _UsageLimitNotFoundFault,
    _InvalidTagFault,
    _SnapshotScheduleQuotaExceededFault,
    _SNSNoAuthorizationFault,
    _ScheduledActionNotFoundFault,
    _HSMClientCertificateAlreadyExistsFault,
    _ResourceNotFoundFault,
    _SNSTopicARNNotFoundFault,
    _InvalidRestoreFault,
    _ScheduledActionAlreadyExistsFault,
    _ClusterNotFoundFault,
    _ScheduledActionQuotaExceededFault,
    _ScheduledActionTypeUnsupportedFault,
    _EventSubscriptionQuotaExceededFault,
    _SnapshotScheduleNotFoundFault,
    _InvalidReservedNodeStateFault,
    _SnapshotScheduleUpdateInProgressFault,
    _BatchModifyClusterSnapshotsLimitExceededFault,
    _ReservedNodeAlreadyMigratedFault,
    _IncompatibleOrderableOptions,
    _InvalidClusterSubnetStateFault,
    _ClusterQuotaExceededFault,
    _InvalidS3BucketNameFault,
    _InvalidClusterSubnetGroupStateFault,
    _HSMConfigurationAlreadyExistsFault,
    _ClusterSecurityGroupNotFoundFault,
    _UnsupportedOperationFault,
    _InvalidElasticIPFault,
    _InvalidClusterSnapshotScheduleStateFault,
    _TableRestoreNotFoundFault,
    _HSMConfigurationNotFoundFault,
    _AuthorizationAlreadyExistsFault,
    _InvalidClusterSecurityGroupStateFault,
    _UsageLimitAlreadyExistsFault,
    _SNSInvalidTopicFault,
    _SourceNotFoundFault,
    _InvalidS3KeyPrefixFault,
    _UnsupportedOptionFault,
    _AuthorizationQuotaExceededFault,
    _DependentServiceUnavailableFault,
    _CopyToRegionDisabledFault,
    _ClusterOnLatestRevisionFault,
    _SubnetAlreadyInUse,
    _ClusterSubnetGroupQuotaExceededFault,
    _ClusterSnapshotQuotaExceededFault,
    _InvalidScheduleFault,
    _ClusterSubnetQuotaExceededFault,
    _AccessToSnapshotDeniedFault,
    _NumberOfNodesQuotaExceededFault,
    _InvalidTableRestoreArgumentFault,
    _InvalidClusterTrackFault,
    _InvalidHSMClientCertificateStateFault,
    _TagLimitExceededFault,
    _SnapshotCopyGrantNotFoundFault,
    _ClusterAlreadyExistsFault,
    _InvalidClusterStateFault,
    _ClusterParameterGroupQuotaExceededFault,
    _UnknownSnapshotCopyRegionFault,
    _SnapshotCopyDisabledFault,
    _InvalidUsageLimitFault,
    _InProgressTableRestoreQuotaExceededFault,
    _ReservedNodeQuotaExceededFault,
    _HSMClientCertificateNotFoundFault,
    _SubscriptionEventIdNotFoundFault,
    _InvalidSnapshotCopyGrantStateFault,
    _SnapshotCopyGrantAlreadyExistsFault,
    _ResizeNotFoundFault,
    _SnapshotCopyAlreadyEnabledFault,
    _BatchDeleteRequestSizeExceededFault,
    _NumberOfNodesPerClusterLimitExceededFault,
    _ReservedNodeAlreadyExistsFault,
    _ClusterParameterGroupAlreadyExistsFault,
    _SnapshotCopyGrantQuotaExceededFault,
    _InvalidClusterParameterGroupStateFault,
    _SnapshotCopyAlreadyDisabledFault,
    _SnapshotScheduleAlreadyExistsFault,
    _ReservedNodeOfferingNotFoundFault,
    _ReservedNodeNotFoundFault,
    _HSMClientCertificateQuotaExceededFault,
    _ClusterParameterGroupNotFoundFault,
    _SubscriptionCategoryNotFoundFault,
    _AuthorizationNotFoundFault,
    _TableLimitExceededFault,
    _InvalidClusterSnapshotStateFault,
    _InvalidRetentionPeriodFault,
    _ClusterSubnetGroupAlreadyExistsFault,
    _InvalidSubnet,
    _SubscriptionNotFoundFault,
    _ClusterSnapshotAlreadyExistsFault,
    _InvalidHSMConfigurationStateFault,
    _DependentServiceRequestThrottlingFault,

    -- * Re-exported Types
    module Network.AWS.Redshift.Internal,

    -- * ActionType
    ActionType (..),

    -- * Mode
    Mode (..),

    -- * NodeConfigurationOptionsFilterName
    NodeConfigurationOptionsFilterName (..),

    -- * OperatorType
    OperatorType (..),

    -- * ParameterApplyType
    ParameterApplyType (..),

    -- * ReservedNodeOfferingType
    ReservedNodeOfferingType (..),

    -- * ScheduleState
    ScheduleState (..),

    -- * ScheduledActionFilterName
    ScheduledActionFilterName (..),

    -- * ScheduledActionState
    ScheduledActionState (..),

    -- * ScheduledActionTypeValues
    ScheduledActionTypeValues (..),

    -- * SnapshotAttributeToSortBy
    SnapshotAttributeToSortBy (..),

    -- * SortByOrder
    SortByOrder (..),

    -- * SourceType
    SourceType (..),

    -- * TableRestoreStatusType
    TableRestoreStatusType (..),

    -- * UsageLimitBreachAction
    UsageLimitBreachAction (..),

    -- * UsageLimitFeatureType
    UsageLimitFeatureType (..),

    -- * UsageLimitLimitType
    UsageLimitLimitType (..),

    -- * UsageLimitPeriod
    UsageLimitPeriod (..),

    -- * AccountAttribute
    AccountAttribute (..),
    accountAttribute,
    aaAttributeName,
    aaAttributeValues,

    -- * AccountWithRestoreAccess
    AccountWithRestoreAccess (..),
    accountWithRestoreAccess,
    awraAccountAlias,
    awraAccountId,

    -- * AttributeValueTarget
    AttributeValueTarget (..),
    attributeValueTarget,
    avtAttributeValue,

    -- * AvailabilityZone
    AvailabilityZone (..),
    availabilityZone,
    azName,
    azSupportedPlatforms,

    -- * Cluster
    Cluster (..),
    cluster,
    cEnhancedVPCRouting,
    cVPCSecurityGroups,
    cResizeInfo,
    cClusterNamespaceARN,
    cClusterSubnetGroupName,
    cDeferredMaintenanceWindows,
    cExpectedNextSnapshotScheduleTimeStatus,
    cSnapshotScheduleState,
    cEncrypted,
    cAllowVersionUpgrade,
    cClusterCreateTime,
    cAutomatedSnapshotRetentionPeriod,
    cElasticIPStatus,
    cHSMStatus,
    cSnapshotScheduleIdentifier,
    cMasterUsername,
    cPubliclyAccessible,
    cClusterAvailabilityStatus,
    cManualSnapshotRetentionPeriod,
    cKMSKeyId,
    cClusterSnapshotCopyStatus,
    cAvailabilityZone,
    cClusterParameterGroups,
    cPreferredMaintenanceWindow,
    cClusterPublicKey,
    cRestoreStatus,
    cModifyStatus,
    cClusterIdentifier,
    cTags,
    cClusterNodes,
    cNumberOfNodes,
    cAvailabilityZoneRelocationStatus,
    cDBName,
    cDataTransferProgress,
    cClusterStatus,
    cPendingModifiedValues,
    cEndpoint,
    cNextMaintenanceWindowStartTime,
    cNodeType,
    cClusterVersion,
    cVPCId,
    cClusterSecurityGroups,
    cElasticResizeNumberOfNodeOptions,
    cExpectedNextSnapshotScheduleTime,
    cMaintenanceTrackName,
    cClusterRevisionNumber,
    cIAMRoles,
    cPendingActions,

    -- * ClusterAssociatedToSchedule
    ClusterAssociatedToSchedule (..),
    clusterAssociatedToSchedule,
    catsScheduleAssociationState,
    catsClusterIdentifier,

    -- * ClusterDBRevision
    ClusterDBRevision (..),
    clusterDBRevision,
    cdrCurrentDatabaseRevision,
    cdrRevisionTargets,
    cdrClusterIdentifier,
    cdrDatabaseRevisionReleaseDate,

    -- * ClusterIAMRole
    ClusterIAMRole (..),
    clusterIAMRole,
    cirIAMRoleARN,
    cirApplyStatus,

    -- * ClusterNode
    ClusterNode (..),
    clusterNode,
    cnNodeRole,
    cnPublicIPAddress,
    cnPrivateIPAddress,

    -- * ClusterParameterGroup
    ClusterParameterGroup (..),
    clusterParameterGroup,
    cpgTags,
    cpgParameterGroupName,
    cpgDescription,
    cpgParameterGroupFamily,

    -- * ClusterParameterGroupNameMessage
    ClusterParameterGroupNameMessage (..),
    clusterParameterGroupNameMessage,
    cpgnmParameterGroupStatus,
    cpgnmParameterGroupName,

    -- * ClusterParameterGroupStatus
    ClusterParameterGroupStatus (..),
    clusterParameterGroupStatus,
    cpgsClusterParameterStatusList,
    cpgsParameterGroupName,
    cpgsParameterApplyStatus,

    -- * ClusterParameterStatus
    ClusterParameterStatus (..),
    clusterParameterStatus,
    cpsParameterApplyStatus,
    cpsParameterName,
    cpsParameterApplyErrorDescription,

    -- * ClusterSecurityGroup
    ClusterSecurityGroup (..),
    clusterSecurityGroup,
    csgIPRanges,
    csgClusterSecurityGroupName,
    csgTags,
    csgEC2SecurityGroups,
    csgDescription,

    -- * ClusterSecurityGroupMembership
    ClusterSecurityGroupMembership (..),
    clusterSecurityGroupMembership,
    csgmStatus,
    csgmClusterSecurityGroupName,

    -- * ClusterSnapshotCopyStatus
    ClusterSnapshotCopyStatus (..),
    clusterSnapshotCopyStatus,
    cscsDestinationRegion,
    cscsSnapshotCopyGrantName,
    cscsManualSnapshotRetentionPeriod,
    cscsRetentionPeriod,

    -- * ClusterSubnetGroup
    ClusterSubnetGroup (..),
    clusterSubnetGroup,
    cluClusterSubnetGroupName,
    cluSubnetGroupStatus,
    cluTags,
    cluDescription,
    cluSubnets,
    cluVPCId,

    -- * ClusterVersion
    ClusterVersion (..),
    clusterVersion,
    cvClusterParameterGroupFamily,
    cvDescription,
    cvClusterVersion,

    -- * DataTransferProgress
    DataTransferProgress (..),
    dataTransferProgress,
    dtpStatus,
    dtpEstimatedTimeToCompletionInSeconds,
    dtpDataTransferredInMegaBytes,
    dtpCurrentRateInMegaBytesPerSecond,
    dtpElapsedTimeInSeconds,
    dtpTotalDataInMegaBytes,

    -- * DefaultClusterParameters
    DefaultClusterParameters (..),
    defaultClusterParameters,
    dcpParameterGroupFamily,
    dcpParameters,
    dcpMarker,

    -- * DeferredMaintenanceWindow
    DeferredMaintenanceWindow (..),
    deferredMaintenanceWindow,
    dmwDeferMaintenanceIdentifier,
    dmwDeferMaintenanceStartTime,
    dmwDeferMaintenanceEndTime,

    -- * DeleteClusterSnapshotMessage
    DeleteClusterSnapshotMessage (..),
    deleteClusterSnapshotMessage,
    dcsmSnapshotClusterIdentifier,
    dcsmSnapshotIdentifier,

    -- * EC2SecurityGroup
    EC2SecurityGroup (..),
    ec2SecurityGroup,
    esgStatus,
    esgTags,
    esgEC2SecurityGroupOwnerId,
    esgEC2SecurityGroupName,

    -- * ElasticIPStatus
    ElasticIPStatus (..),
    elasticIPStatus,
    eisElasticIP,
    eisStatus,

    -- * Endpoint
    Endpoint (..),
    endpoint,
    eAddress,
    eVPCEndpoints,
    ePort,

    -- * Event
    Event (..),
    event,
    eEventId,
    eSeverity,
    eMessage,
    eEventCategories,
    eDate,
    eSourceIdentifier,
    eSourceType,

    -- * EventCategoriesMap
    EventCategoriesMap (..),
    eventCategoriesMap,
    ecmEvents,
    ecmSourceType,

    -- * EventInfoMap
    EventInfoMap (..),
    eventInfoMap,
    eimEventId,
    eimSeverity,
    eimEventDescription,
    eimEventCategories,

    -- * EventSubscription
    EventSubscription (..),
    eventSubscription,
    esCustSubscriptionId,
    esStatus,
    esSourceIdsList,
    esSeverity,
    esEventCategoriesList,
    esEnabled,
    esSubscriptionCreationTime,
    esCustomerAWSId,
    esTags,
    esSourceType,
    esSNSTopicARN,

    -- * HSMClientCertificate
    HSMClientCertificate (..),
    hsmClientCertificate,
    hccHSMClientCertificatePublicKey,
    hccHSMClientCertificateIdentifier,
    hccTags,

    -- * HSMConfiguration
    HSMConfiguration (..),
    hsmConfiguration,
    hcTags,
    hcHSMIPAddress,
    hcDescription,
    hcHSMPartitionName,
    hcHSMConfigurationIdentifier,

    -- * HSMStatus
    HSMStatus (..),
    hsmStatus,
    hsStatus,
    hsHSMClientCertificateIdentifier,
    hsHSMConfigurationIdentifier,

    -- * IPRange
    IPRange (..),
    ipRange,
    irStatus,
    irCIdRIP,
    irTags,

    -- * LoggingStatus
    LoggingStatus (..),
    loggingStatus,
    lsLastSuccessfulDeliveryTime,
    lsBucketName,
    lsLoggingEnabled,
    lsLastFailureTime,
    lsS3KeyPrefix,
    lsLastFailureMessage,

    -- * MaintenanceTrack
    MaintenanceTrack (..),
    maintenanceTrack,
    mtUpdateTargets,
    mtDatabaseVersion,
    mtMaintenanceTrackName,

    -- * NodeConfigurationOption
    NodeConfigurationOption (..),
    nodeConfigurationOption,
    ncoMode,
    ncoNumberOfNodes,
    ncoEstimatedDiskUtilizationPercent,
    ncoNodeType,

    -- * NodeConfigurationOptionsFilter
    NodeConfigurationOptionsFilter (..),
    nodeConfigurationOptionsFilter,
    ncofValues,
    ncofOperator,
    ncofName,

    -- * OrderableClusterOption
    OrderableClusterOption (..),
    orderableClusterOption,
    ocoAvailabilityZones,
    ocoClusterType,
    ocoNodeType,
    ocoClusterVersion,

    -- * Parameter
    Parameter (..),
    parameter,
    pAllowedValues,
    pSource,
    pParameterValue,
    pApplyType,
    pParameterName,
    pDescription,
    pDataType,
    pIsModifiable,
    pMinimumEngineVersion,

    -- * PauseClusterMessage
    PauseClusterMessage (..),
    pauseClusterMessage,
    pcmClusterIdentifier,

    -- * PendingModifiedValues
    PendingModifiedValues (..),
    pendingModifiedValues,
    pmvEncryptionType,
    pmvEnhancedVPCRouting,
    pmvAutomatedSnapshotRetentionPeriod,
    pmvMasterUserPassword,
    pmvPubliclyAccessible,
    pmvClusterType,
    pmvClusterIdentifier,
    pmvNumberOfNodes,
    pmvNodeType,
    pmvClusterVersion,
    pmvMaintenanceTrackName,

    -- * RecurringCharge
    RecurringCharge (..),
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- * ReservedNode
    ReservedNode (..),
    reservedNode,
    rnReservedNodeOfferingType,
    rnReservedNodeId,
    rnReservedNodeOfferingId,
    rnDuration,
    rnStartTime,
    rnCurrencyCode,
    rnState,
    rnFixedPrice,
    rnNodeCount,
    rnUsagePrice,
    rnOfferingType,
    rnNodeType,
    rnRecurringCharges,

    -- * ReservedNodeOffering
    ReservedNodeOffering (..),
    reservedNodeOffering,
    rnoReservedNodeOfferingType,
    rnoReservedNodeOfferingId,
    rnoDuration,
    rnoCurrencyCode,
    rnoFixedPrice,
    rnoUsagePrice,
    rnoOfferingType,
    rnoNodeType,
    rnoRecurringCharges,

    -- * ResizeClusterMessage
    ResizeClusterMessage (..),
    resizeClusterMessage,
    rClassic,
    rClusterType,
    rNumberOfNodes,
    rNodeType,
    rClusterIdentifier,

    -- * ResizeInfo
    ResizeInfo (..),
    resizeInfo,
    riAllowCancelResize,
    riResizeType,

    -- * ResizeProgressMessage
    ResizeProgressMessage (..),
    resizeProgressMessage,
    rpmStatus,
    rpmEstimatedTimeToCompletionInSeconds,
    rpmImportTablesNotStarted,
    rpmTargetNodeType,
    rpmMessage,
    rpmTargetClusterType,
    rpmAvgResizeRateInMegaBytesPerSecond,
    rpmTargetEncryptionType,
    rpmElapsedTimeInSeconds,
    rpmTargetNumberOfNodes,
    rpmTotalResizeDataInMegaBytes,
    rpmProgressInMegaBytes,
    rpmDataTransferProgressPercent,
    rpmImportTablesCompleted,
    rpmImportTablesInProgress,
    rpmResizeType,

    -- * RestoreStatus
    RestoreStatus (..),
    restoreStatus,
    rsStatus,
    rsEstimatedTimeToCompletionInSeconds,
    rsSnapshotSizeInMegaBytes,
    rsCurrentRestoreRateInMegaBytesPerSecond,
    rsElapsedTimeInSeconds,
    rsProgressInMegaBytes,

    -- * ResumeClusterMessage
    ResumeClusterMessage (..),
    resumeClusterMessage,
    rcmClusterIdentifier,

    -- * RevisionTarget
    RevisionTarget (..),
    revisionTarget,
    rtDescription,
    rtDatabaseRevision,
    rtDatabaseRevisionReleaseDate,

    -- * ScheduledAction
    ScheduledAction (..),
    scheduledAction,
    saTargetAction,
    saNextInvocations,
    saIAMRole,
    saScheduledActionDescription,
    saStartTime,
    saEndTime,
    saState,
    saScheduledActionName,
    saSchedule,

    -- * ScheduledActionFilter
    ScheduledActionFilter (..),
    scheduledActionFilter,
    safName,
    safValues,

    -- * ScheduledActionType
    ScheduledActionType (..),
    scheduledActionType,
    satResumeCluster,
    satResizeCluster,
    satPauseCluster,

    -- * Snapshot
    Snapshot (..),
    snapshot,
    sEnhancedVPCRouting,
    sSnapshotIdentifier,
    sStatus,
    sEstimatedSecondsToCompletion,
    sEncrypted,
    sClusterCreateTime,
    sManualSnapshotRemainingDays,
    sSnapshotCreateTime,
    sCurrentBackupRateInMegaBytesPerSecond,
    sMasterUsername,
    sEncryptedWithHSM,
    sManualSnapshotRetentionPeriod,
    sKMSKeyId,
    sEngineFullVersion,
    sAvailabilityZone,
    sRestorableNodeTypes,
    sSnapshotType,
    sAccountsWithRestoreAccess,
    sActualIncrementalBackupSizeInMegaBytes,
    sClusterIdentifier,
    sTags,
    sNumberOfNodes,
    sPort,
    sTotalBackupSizeInMegaBytes,
    sDBName,
    sBackupProgressInMegaBytes,
    sElapsedTimeInSeconds,
    sNodeType,
    sOwnerAccount,
    sClusterVersion,
    sVPCId,
    sSourceRegion,
    sSnapshotRetentionStartTime,
    sMaintenanceTrackName,

    -- * SnapshotCopyGrant
    SnapshotCopyGrant (..),
    snapshotCopyGrant,
    scgSnapshotCopyGrantName,
    scgKMSKeyId,
    scgTags,

    -- * SnapshotErrorMessage
    SnapshotErrorMessage (..),
    snapshotErrorMessage,
    semSnapshotIdentifier,
    semFailureCode,
    semSnapshotClusterIdentifier,
    semFailureReason,

    -- * SnapshotSchedule
    SnapshotSchedule (..),
    snapshotSchedule,
    ssNextInvocations,
    ssAssociatedClusters,
    ssScheduleIdentifier,
    ssScheduleDescription,
    ssScheduleDefinitions,
    ssAssociatedClusterCount,
    ssTags,

    -- * SnapshotSortingEntity
    SnapshotSortingEntity (..),
    snapshotSortingEntity,
    sseSortOrder,
    sseAttribute,

    -- * Subnet
    Subnet (..),
    subnet,
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,

    -- * SupportedOperation
    SupportedOperation (..),
    supportedOperation,
    soOperationName,

    -- * SupportedPlatform
    SupportedPlatform (..),
    supportedPlatform,
    spName,

    -- * TableRestoreStatus
    TableRestoreStatus (..),
    tableRestoreStatus,
    trsSourceDatabaseName,
    trsSnapshotIdentifier,
    trsTargetSchemaName,
    trsStatus,
    trsRequestTime,
    trsSourceTableName,
    trsTargetDatabaseName,
    trsMessage,
    trsSourceSchemaName,
    trsClusterIdentifier,
    trsProgressInMegaBytes,
    trsNewTableName,
    trsTotalDataInMegaBytes,
    trsTableRestoreRequestId,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * TaggedResource
    TaggedResource (..),
    taggedResource,
    trResourceType,
    trResourceName,
    trTag,

    -- * UpdateTarget
    UpdateTarget (..),
    updateTarget,
    utSupportedOperations,
    utDatabaseVersion,
    utMaintenanceTrackName,

    -- * UsageLimit
    UsageLimit (..),
    usageLimit,
    ulAmount,
    ulFeatureType,
    ulBreachAction,
    ulLimitType,
    ulClusterIdentifier,
    ulTags,
    ulPeriod,
    ulUsageLimitId,

    -- * VPCEndpoint
    VPCEndpoint (..),
    vpcEndpoint,
    veVPCEndpointId,

    -- * VPCSecurityGroupMembership
    VPCSecurityGroupMembership (..),
    vpcSecurityGroupMembership,
    vsgmStatus,
    vsgmVPCSecurityGroupId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.AccountAttribute
import Network.AWS.Redshift.Types.AccountWithRestoreAccess
import Network.AWS.Redshift.Types.ActionType
import Network.AWS.Redshift.Types.AttributeValueTarget
import Network.AWS.Redshift.Types.AvailabilityZone
import Network.AWS.Redshift.Types.Cluster
import Network.AWS.Redshift.Types.ClusterAssociatedToSchedule
import Network.AWS.Redshift.Types.ClusterDBRevision
import Network.AWS.Redshift.Types.ClusterIAMRole
import Network.AWS.Redshift.Types.ClusterNode
import Network.AWS.Redshift.Types.ClusterParameterGroup
import Network.AWS.Redshift.Types.ClusterParameterGroupNameMessage
import Network.AWS.Redshift.Types.ClusterParameterGroupStatus
import Network.AWS.Redshift.Types.ClusterParameterStatus
import Network.AWS.Redshift.Types.ClusterSecurityGroup
import Network.AWS.Redshift.Types.ClusterSecurityGroupMembership
import Network.AWS.Redshift.Types.ClusterSnapshotCopyStatus
import Network.AWS.Redshift.Types.ClusterSubnetGroup
import Network.AWS.Redshift.Types.ClusterVersion
import Network.AWS.Redshift.Types.DataTransferProgress
import Network.AWS.Redshift.Types.DefaultClusterParameters
import Network.AWS.Redshift.Types.DeferredMaintenanceWindow
import Network.AWS.Redshift.Types.DeleteClusterSnapshotMessage
import Network.AWS.Redshift.Types.EC2SecurityGroup
import Network.AWS.Redshift.Types.ElasticIPStatus
import Network.AWS.Redshift.Types.Endpoint
import Network.AWS.Redshift.Types.Event
import Network.AWS.Redshift.Types.EventCategoriesMap
import Network.AWS.Redshift.Types.EventInfoMap
import Network.AWS.Redshift.Types.EventSubscription
import Network.AWS.Redshift.Types.HSMClientCertificate
import Network.AWS.Redshift.Types.HSMConfiguration
import Network.AWS.Redshift.Types.HSMStatus
import Network.AWS.Redshift.Types.IPRange
import Network.AWS.Redshift.Types.LoggingStatus
import Network.AWS.Redshift.Types.MaintenanceTrack
import Network.AWS.Redshift.Types.Mode
import Network.AWS.Redshift.Types.NodeConfigurationOption
import Network.AWS.Redshift.Types.NodeConfigurationOptionsFilter
import Network.AWS.Redshift.Types.NodeConfigurationOptionsFilterName
import Network.AWS.Redshift.Types.OperatorType
import Network.AWS.Redshift.Types.OrderableClusterOption
import Network.AWS.Redshift.Types.Parameter
import Network.AWS.Redshift.Types.ParameterApplyType
import Network.AWS.Redshift.Types.PauseClusterMessage
import Network.AWS.Redshift.Types.PendingModifiedValues
import Network.AWS.Redshift.Types.RecurringCharge
import Network.AWS.Redshift.Types.ReservedNode
import Network.AWS.Redshift.Types.ReservedNodeOffering
import Network.AWS.Redshift.Types.ReservedNodeOfferingType
import Network.AWS.Redshift.Types.ResizeClusterMessage
import Network.AWS.Redshift.Types.ResizeInfo
import Network.AWS.Redshift.Types.ResizeProgressMessage
import Network.AWS.Redshift.Types.RestoreStatus
import Network.AWS.Redshift.Types.ResumeClusterMessage
import Network.AWS.Redshift.Types.RevisionTarget
import Network.AWS.Redshift.Types.ScheduleState
import Network.AWS.Redshift.Types.ScheduledAction
import Network.AWS.Redshift.Types.ScheduledActionFilter
import Network.AWS.Redshift.Types.ScheduledActionFilterName
import Network.AWS.Redshift.Types.ScheduledActionState
import Network.AWS.Redshift.Types.ScheduledActionType
import Network.AWS.Redshift.Types.ScheduledActionTypeValues
import Network.AWS.Redshift.Types.Snapshot
import Network.AWS.Redshift.Types.SnapshotAttributeToSortBy
import Network.AWS.Redshift.Types.SnapshotCopyGrant
import Network.AWS.Redshift.Types.SnapshotErrorMessage
import Network.AWS.Redshift.Types.SnapshotSchedule
import Network.AWS.Redshift.Types.SnapshotSortingEntity
import Network.AWS.Redshift.Types.SortByOrder
import Network.AWS.Redshift.Types.SourceType
import Network.AWS.Redshift.Types.Subnet
import Network.AWS.Redshift.Types.SupportedOperation
import Network.AWS.Redshift.Types.SupportedPlatform
import Network.AWS.Redshift.Types.TableRestoreStatus
import Network.AWS.Redshift.Types.TableRestoreStatusType
import Network.AWS.Redshift.Types.Tag
import Network.AWS.Redshift.Types.TaggedResource
import Network.AWS.Redshift.Types.UpdateTarget
import Network.AWS.Redshift.Types.UsageLimit
import Network.AWS.Redshift.Types.UsageLimitBreachAction
import Network.AWS.Redshift.Types.UsageLimitFeatureType
import Network.AWS.Redshift.Types.UsageLimitLimitType
import Network.AWS.Redshift.Types.UsageLimitPeriod
import Network.AWS.Redshift.Types.VPCEndpoint
import Network.AWS.Redshift.Types.VPCSecurityGroupMembership
import Network.AWS.Sign.V4

-- | API version @2012-12-01@ of the Amazon Redshift SDK configuration.
redshift :: Service
redshift =
  Service
    { _svcAbbrev = "Redshift",
      _svcSigner = v4,
      _svcPrefix = "redshift",
      _svcVersion = "2012-12-01",
      _svcEndpoint = defaultEndpoint redshift,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseXMLError "Redshift",
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

-- | A cluster security group with the same name already exists.
_ClusterSecurityGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSecurityGroupAlreadyExistsFault =
  _MatchServiceError
    redshift
    "ClusterSecurityGroupAlreadyExists"
    . hasStatus 400

-- | The snapshot identifier does not refer to an existing cluster snapshot.
_ClusterSnapshotNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSnapshotNotFoundFault =
  _MatchServiceError
    redshift
    "ClusterSnapshotNotFound"
    . hasStatus 404

-- | The definition you submitted is not supported.
_ScheduleDefinitionTypeUnsupportedFault :: AsError a => Getting (First ServiceError) a ServiceError
_ScheduleDefinitionTypeUnsupportedFault =
  _MatchServiceError
    redshift
    "ScheduleDefinitionTypeUnsupported"
    . hasStatus 400

-- | The cluster subnet group name does not refer to an existing cluster subnet group.
_ClusterSubnetGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSubnetGroupNotFoundFault =
  _MatchServiceError
    redshift
    "ClusterSubnetGroupNotFoundFault"
    . hasStatus 400

-- | The cluster subnet group does not cover all Availability Zones.
_InvalidVPCNetworkStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidVPCNetworkStateFault =
  _MatchServiceError
    redshift
    "InvalidVPCNetworkStateFault"
    . hasStatus 400

-- | The subscription request is invalid because it is a duplicate request. This subscription request is already in progress.
_InvalidSubscriptionStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSubscriptionStateFault =
  _MatchServiceError
    redshift
    "InvalidSubscriptionStateFault"
    . hasStatus 400

-- | Could not find the specified S3 bucket.
_BucketNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_BucketNotFoundFault =
  _MatchServiceError redshift "BucketNotFoundFault"
    . hasStatus 400

-- | The encryption key has exceeded its grant limit in AWS KMS.
_LimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededFault =
  _MatchServiceError redshift "LimitExceededFault"
    . hasStatus 400

-- | There is already an existing event notification subscription with the specified name.
_SubscriptionAlreadyExistFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionAlreadyExistFault =
  _MatchServiceError
    redshift
    "SubscriptionAlreadyExist"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed number of cluster security groups. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_ClusterSecurityGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSecurityGroupQuotaExceededFault =
  _MatchServiceError
    redshift
    "QuotaExceeded.ClusterSecurityGroup"
    . hasStatus 400

-- | The scheduled action is not valid.
_InvalidScheduledActionFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidScheduledActionFault =
  _MatchServiceError
    redshift
    "InvalidScheduledAction"
    . hasStatus 400

-- | The value specified for the event severity was not one of the allowed values, or it specified a severity that does not apply to the specified source type. The allowed values are ERROR and INFO.
_SubscriptionSeverityNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionSeverityNotFoundFault =
  _MatchServiceError
    redshift
    "SubscriptionSeverityNotFound"
    . hasStatus 404

-- | Your account is not authorized to perform the requested operation.
_UnauthorizedOperation :: AsError a => Getting (First ServiceError) a ServiceError
_UnauthorizedOperation =
  _MatchServiceError redshift "UnauthorizedOperation"
    . hasStatus 400

-- | The cluster does not have read bucket or put object permissions on the S3 bucket specified when enabling logging.
_InsufficientS3BucketPolicyFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientS3BucketPolicyFault =
  _MatchServiceError
    redshift
    "InsufficientS3BucketPolicyFault"
    . hasStatus 400

-- | The number of nodes specified exceeds the allotted capacity of the cluster.
_InsufficientClusterCapacityFault :: AsError a => Getting (First ServiceError) a ServiceError
_InsufficientClusterCapacityFault =
  _MatchServiceError
    redshift
    "InsufficientClusterCapacity"
    . hasStatus 400

-- | The quota for HSM configurations has been reached. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_HSMConfigurationQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_HSMConfigurationQuotaExceededFault =
  _MatchServiceError
    redshift
    "HsmConfigurationQuotaExceededFault"
    . hasStatus 400

-- | The usage limit identifier can't be found.
_UsageLimitNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_UsageLimitNotFoundFault =
  _MatchServiceError redshift "UsageLimitNotFound"
    . hasStatus 404

-- | The tag is invalid.
_InvalidTagFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTagFault =
  _MatchServiceError redshift "InvalidTagFault"
    . hasStatus 400

-- | You have exceeded the quota of snapshot schedules.
_SnapshotScheduleQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotScheduleQuotaExceededFault =
  _MatchServiceError
    redshift
    "SnapshotScheduleQuotaExceeded"
    . hasStatus 400

-- | You do not have permission to publish to the specified Amazon SNS topic.
_SNSNoAuthorizationFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSNoAuthorizationFault =
  _MatchServiceError redshift "SNSNoAuthorization"
    . hasStatus 400

-- | The scheduled action cannot be found.
_ScheduledActionNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ScheduledActionNotFoundFault =
  _MatchServiceError
    redshift
    "ScheduledActionNotFound"
    . hasStatus 400

-- | There is already an existing Amazon Redshift HSM client certificate with the specified identifier.
_HSMClientCertificateAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_HSMClientCertificateAlreadyExistsFault =
  _MatchServiceError
    redshift
    "HsmClientCertificateAlreadyExistsFault"
    . hasStatus 400

-- | The resource could not be found.
_ResourceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceNotFoundFault =
  _MatchServiceError redshift "ResourceNotFoundFault"
    . hasStatus 404

-- | An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not exist.
_SNSTopicARNNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSTopicARNNotFoundFault =
  _MatchServiceError redshift "SNSTopicArnNotFound"
    . hasStatus 404

-- | The restore is invalid.
_InvalidRestoreFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRestoreFault =
  _MatchServiceError redshift "InvalidRestore"
    . hasStatus 406

-- | The scheduled action already exists.
_ScheduledActionAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ScheduledActionAlreadyExistsFault =
  _MatchServiceError
    redshift
    "ScheduledActionAlreadyExists"
    . hasStatus 400

-- | The @ClusterIdentifier@ parameter does not refer to an existing cluster.
_ClusterNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterNotFoundFault =
  _MatchServiceError redshift "ClusterNotFound"
    . hasStatus 404

-- | The quota for scheduled actions exceeded.
_ScheduledActionQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ScheduledActionQuotaExceededFault =
  _MatchServiceError
    redshift
    "ScheduledActionQuotaExceeded"
    . hasStatus 400

-- | The action type specified for a scheduled action is not supported.
_ScheduledActionTypeUnsupportedFault :: AsError a => Getting (First ServiceError) a ServiceError
_ScheduledActionTypeUnsupportedFault =
  _MatchServiceError
    redshift
    "ScheduledActionTypeUnsupported"
    . hasStatus 400

-- | The request would exceed the allowed number of event subscriptions for this account. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_EventSubscriptionQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_EventSubscriptionQuotaExceededFault =
  _MatchServiceError
    redshift
    "EventSubscriptionQuotaExceeded"
    . hasStatus 400

-- | We could not find the specified snapshot schedule.
_SnapshotScheduleNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotScheduleNotFoundFault =
  _MatchServiceError
    redshift
    "SnapshotScheduleNotFound"
    . hasStatus 400

-- | Indicates that the Reserved Node being exchanged is not in an active state.
_InvalidReservedNodeStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidReservedNodeStateFault =
  _MatchServiceError
    redshift
    "InvalidReservedNodeState"
    . hasStatus 400

-- | The specified snapshot schedule is already being updated.
_SnapshotScheduleUpdateInProgressFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotScheduleUpdateInProgressFault =
  _MatchServiceError
    redshift
    "SnapshotScheduleUpdateInProgress"
    . hasStatus 400

-- | The maximum number for snapshot identifiers has been reached. The limit is 100.
_BatchModifyClusterSnapshotsLimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_BatchModifyClusterSnapshotsLimitExceededFault =
  _MatchServiceError
    redshift
    "BatchModifyClusterSnapshotsLimitExceededFault"
    . hasStatus 400

-- | Indicates that the reserved node has already been exchanged.
_ReservedNodeAlreadyMigratedFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedNodeAlreadyMigratedFault =
  _MatchServiceError
    redshift
    "ReservedNodeAlreadyMigrated"
    . hasStatus 400

-- | The specified options are incompatible.
_IncompatibleOrderableOptions :: AsError a => Getting (First ServiceError) a ServiceError
_IncompatibleOrderableOptions =
  _MatchServiceError
    redshift
    "IncompatibleOrderableOptions"
    . hasStatus 400

-- | The state of the subnet is invalid.
_InvalidClusterSubnetStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterSubnetStateFault =
  _MatchServiceError
    redshift
    "InvalidClusterSubnetStateFault"
    . hasStatus 400

-- | The request would exceed the allowed number of cluster instances for this account. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_ClusterQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterQuotaExceededFault =
  _MatchServiceError redshift "ClusterQuotaExceeded"
    . hasStatus 400

-- | The S3 bucket name is invalid. For more information about naming rules, go to <https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html Bucket Restrictions and Limitations> in the Amazon Simple Storage Service (S3) Developer Guide.
_InvalidS3BucketNameFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidS3BucketNameFault =
  _MatchServiceError
    redshift
    "InvalidS3BucketNameFault"
    . hasStatus 400

-- | The cluster subnet group cannot be deleted because it is in use.
_InvalidClusterSubnetGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterSubnetGroupStateFault =
  _MatchServiceError
    redshift
    "InvalidClusterSubnetGroupStateFault"
    . hasStatus 400

-- | There is already an existing Amazon Redshift HSM configuration with the specified identifier.
_HSMConfigurationAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_HSMConfigurationAlreadyExistsFault =
  _MatchServiceError
    redshift
    "HsmConfigurationAlreadyExistsFault"
    . hasStatus 400

-- | The cluster security group name does not refer to an existing cluster security group.
_ClusterSecurityGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSecurityGroupNotFoundFault =
  _MatchServiceError
    redshift
    "ClusterSecurityGroupNotFound"
    . hasStatus 404

-- | The requested operation isn't supported.
_UnsupportedOperationFault :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOperationFault =
  _MatchServiceError redshift "UnsupportedOperation"
    . hasStatus 400

-- | The Elastic IP (EIP) is invalid or cannot be found.
_InvalidElasticIPFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidElasticIPFault =
  _MatchServiceError redshift "InvalidElasticIpFault"
    . hasStatus 400

-- | The cluster snapshot schedule state is not valid.
_InvalidClusterSnapshotScheduleStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterSnapshotScheduleStateFault =
  _MatchServiceError
    redshift
    "InvalidClusterSnapshotScheduleState"
    . hasStatus 400

-- | The specified @TableRestoreRequestId@ value was not found.
_TableRestoreNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_TableRestoreNotFoundFault =
  _MatchServiceError
    redshift
    "TableRestoreNotFoundFault"
    . hasStatus 400

-- | There is no Amazon Redshift HSM configuration with the specified identifier.
_HSMConfigurationNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_HSMConfigurationNotFoundFault =
  _MatchServiceError
    redshift
    "HsmConfigurationNotFoundFault"
    . hasStatus 400

-- | The specified CIDR block or EC2 security group is already authorized for the specified cluster security group.
_AuthorizationAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationAlreadyExistsFault =
  _MatchServiceError
    redshift
    "AuthorizationAlreadyExists"
    . hasStatus 400

-- | The state of the cluster security group is not @available@ .
_InvalidClusterSecurityGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterSecurityGroupStateFault =
  _MatchServiceError
    redshift
    "InvalidClusterSecurityGroupState"
    . hasStatus 400

-- | The usage limit already exists.
_UsageLimitAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_UsageLimitAlreadyExistsFault =
  _MatchServiceError
    redshift
    "UsageLimitAlreadyExists"
    . hasStatus 400

-- | Amazon SNS has responded that there is a problem with the specified Amazon SNS topic.
_SNSInvalidTopicFault :: AsError a => Getting (First ServiceError) a ServiceError
_SNSInvalidTopicFault =
  _MatchServiceError redshift "SNSInvalidTopic"
    . hasStatus 400

-- | The specified Amazon Redshift event source could not be found.
_SourceNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SourceNotFoundFault =
  _MatchServiceError redshift "SourceNotFound"
    . hasStatus 404

-- | The string specified for the logging S3 key prefix does not comply with the documented constraints.
_InvalidS3KeyPrefixFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidS3KeyPrefixFault =
  _MatchServiceError
    redshift
    "InvalidS3KeyPrefixFault"
    . hasStatus 400

-- | A request option was specified that is not supported.
_UnsupportedOptionFault :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOptionFault =
  _MatchServiceError
    redshift
    "UnsupportedOptionFault"
    . hasStatus 400

-- | The authorization quota for the cluster security group has been reached.
_AuthorizationQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationQuotaExceededFault =
  _MatchServiceError
    redshift
    "AuthorizationQuotaExceeded"
    . hasStatus 400

-- | Your request cannot be completed because a dependent internal service is temporarily unavailable. Wait 30 to 60 seconds and try again.
_DependentServiceUnavailableFault :: AsError a => Getting (First ServiceError) a ServiceError
_DependentServiceUnavailableFault =
  _MatchServiceError
    redshift
    "DependentServiceUnavailableFault"
    . hasStatus 400

-- | Cross-region snapshot copy was temporarily disabled. Try your request again.
_CopyToRegionDisabledFault :: AsError a => Getting (First ServiceError) a ServiceError
_CopyToRegionDisabledFault =
  _MatchServiceError
    redshift
    "CopyToRegionDisabledFault"
    . hasStatus 400

-- | Cluster is already on the latest database revision.
_ClusterOnLatestRevisionFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterOnLatestRevisionFault =
  _MatchServiceError
    redshift
    "ClusterOnLatestRevision"
    . hasStatus 400

-- | A specified subnet is already in use by another cluster.
_SubnetAlreadyInUse :: AsError a => Getting (First ServiceError) a ServiceError
_SubnetAlreadyInUse =
  _MatchServiceError redshift "SubnetAlreadyInUse"
    . hasStatus 400

-- | The request would result in user exceeding the allowed number of cluster subnet groups. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_ClusterSubnetGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSubnetGroupQuotaExceededFault =
  _MatchServiceError
    redshift
    "ClusterSubnetGroupQuotaExceeded"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed number of cluster snapshots.
_ClusterSnapshotQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSnapshotQuotaExceededFault =
  _MatchServiceError
    redshift
    "ClusterSnapshotQuotaExceeded"
    . hasStatus 400

-- | The schedule you submitted isn't valid.
_InvalidScheduleFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidScheduleFault =
  _MatchServiceError redshift "InvalidSchedule"
    . hasStatus 400

-- | The request would result in user exceeding the allowed number of subnets in a cluster subnet groups. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_ClusterSubnetQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSubnetQuotaExceededFault =
  _MatchServiceError
    redshift
    "ClusterSubnetQuotaExceededFault"
    . hasStatus 400

-- | The owner of the specified snapshot has not authorized your account to access the snapshot.
_AccessToSnapshotDeniedFault :: AsError a => Getting (First ServiceError) a ServiceError
_AccessToSnapshotDeniedFault =
  _MatchServiceError
    redshift
    "AccessToSnapshotDenied"
    . hasStatus 400

-- | The operation would exceed the number of nodes allotted to the account. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_NumberOfNodesQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_NumberOfNodesQuotaExceededFault =
  _MatchServiceError
    redshift
    "NumberOfNodesQuotaExceeded"
    . hasStatus 400

-- | The value specified for the @sourceDatabaseName@ , @sourceSchemaName@ , or @sourceTableName@ parameter, or a combination of these, doesn't exist in the snapshot.
_InvalidTableRestoreArgumentFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTableRestoreArgumentFault =
  _MatchServiceError
    redshift
    "InvalidTableRestoreArgument"
    . hasStatus 400

-- | The provided cluster track name is not valid.
_InvalidClusterTrackFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterTrackFault =
  _MatchServiceError redshift "InvalidClusterTrack"
    . hasStatus 400

-- | The specified HSM client certificate is not in the @available@ state, or it is still in use by one or more Amazon Redshift clusters.
_InvalidHSMClientCertificateStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidHSMClientCertificateStateFault =
  _MatchServiceError
    redshift
    "InvalidHsmClientCertificateStateFault"
    . hasStatus 400

-- | You have exceeded the number of tags allowed.
_TagLimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_TagLimitExceededFault =
  _MatchServiceError redshift "TagLimitExceededFault"
    . hasStatus 400

-- | The specified snapshot copy grant can't be found. Make sure that the name is typed correctly and that the grant exists in the destination region.
_SnapshotCopyGrantNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotCopyGrantNotFoundFault =
  _MatchServiceError
    redshift
    "SnapshotCopyGrantNotFoundFault"
    . hasStatus 400

-- | The account already has a cluster with the given identifier.
_ClusterAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterAlreadyExistsFault =
  _MatchServiceError redshift "ClusterAlreadyExists"
    . hasStatus 400

-- | The specified cluster is not in the @available@ state.
_InvalidClusterStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterStateFault =
  _MatchServiceError redshift "InvalidClusterState"
    . hasStatus 400

-- | The request would result in the user exceeding the allowed number of cluster parameter groups. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_ClusterParameterGroupQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterParameterGroupQuotaExceededFault =
  _MatchServiceError
    redshift
    "ClusterParameterGroupQuotaExceeded"
    . hasStatus 400

-- | The specified region is incorrect or does not exist.
_UnknownSnapshotCopyRegionFault :: AsError a => Getting (First ServiceError) a ServiceError
_UnknownSnapshotCopyRegionFault =
  _MatchServiceError
    redshift
    "UnknownSnapshotCopyRegionFault"
    . hasStatus 404

-- | Cross-region snapshot copy was temporarily disabled. Try your request again.
_SnapshotCopyDisabledFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotCopyDisabledFault =
  _MatchServiceError
    redshift
    "SnapshotCopyDisabledFault"
    . hasStatus 400

-- | The usage limit is not valid.
_InvalidUsageLimitFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUsageLimitFault =
  _MatchServiceError redshift "InvalidUsageLimit"
    . hasStatus 400

-- | You have exceeded the allowed number of table restore requests. Wait for your current table restore requests to complete before making a new request.
_InProgressTableRestoreQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_InProgressTableRestoreQuotaExceededFault =
  _MatchServiceError
    redshift
    "InProgressTableRestoreQuotaExceededFault"
    . hasStatus 400

-- | Request would exceed the user's compute node quota. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_ReservedNodeQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedNodeQuotaExceededFault =
  _MatchServiceError
    redshift
    "ReservedNodeQuotaExceeded"
    . hasStatus 400

-- | There is no Amazon Redshift HSM client certificate with the specified identifier.
_HSMClientCertificateNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_HSMClientCertificateNotFoundFault =
  _MatchServiceError
    redshift
    "HsmClientCertificateNotFoundFault"
    . hasStatus 400

-- | An Amazon Redshift event with the specified event ID does not exist.
_SubscriptionEventIdNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionEventIdNotFoundFault =
  _MatchServiceError
    redshift
    "SubscriptionEventIdNotFound"
    . hasStatus 404

-- | The snapshot copy grant can't be deleted because it is used by one or more clusters.
_InvalidSnapshotCopyGrantStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSnapshotCopyGrantStateFault =
  _MatchServiceError
    redshift
    "InvalidSnapshotCopyGrantStateFault"
    . hasStatus 400

-- | The snapshot copy grant can't be created because a grant with the same name already exists.
_SnapshotCopyGrantAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotCopyGrantAlreadyExistsFault =
  _MatchServiceError
    redshift
    "SnapshotCopyGrantAlreadyExistsFault"
    . hasStatus 400

-- | A resize operation for the specified cluster is not found.
_ResizeNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ResizeNotFoundFault =
  _MatchServiceError redshift "ResizeNotFound"
    . hasStatus 404

-- | The cluster already has cross-region snapshot copy enabled.
_SnapshotCopyAlreadyEnabledFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotCopyAlreadyEnabledFault =
  _MatchServiceError
    redshift
    "SnapshotCopyAlreadyEnabledFault"
    . hasStatus 400

-- | The maximum number for a batch delete of snapshots has been reached. The limit is 100.
_BatchDeleteRequestSizeExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_BatchDeleteRequestSizeExceededFault =
  _MatchServiceError
    redshift
    "BatchDeleteRequestSizeExceeded"
    . hasStatus 400

-- | The operation would exceed the number of nodes allowed for a cluster.
_NumberOfNodesPerClusterLimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_NumberOfNodesPerClusterLimitExceededFault =
  _MatchServiceError
    redshift
    "NumberOfNodesPerClusterLimitExceeded"
    . hasStatus 400

-- | User already has a reservation with the given identifier.
_ReservedNodeAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedNodeAlreadyExistsFault =
  _MatchServiceError
    redshift
    "ReservedNodeAlreadyExists"
    . hasStatus 404

-- | A cluster parameter group with the same name already exists.
_ClusterParameterGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterParameterGroupAlreadyExistsFault =
  _MatchServiceError
    redshift
    "ClusterParameterGroupAlreadyExists"
    . hasStatus 400

-- | The AWS account has exceeded the maximum number of snapshot copy grants in this region.
_SnapshotCopyGrantQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotCopyGrantQuotaExceededFault =
  _MatchServiceError
    redshift
    "SnapshotCopyGrantQuotaExceededFault"
    . hasStatus 400

-- | The cluster parameter group action can not be completed because another task is in progress that involves the parameter group. Wait a few moments and try the operation again.
_InvalidClusterParameterGroupStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterParameterGroupStateFault =
  _MatchServiceError
    redshift
    "InvalidClusterParameterGroupState"
    . hasStatus 400

-- | The cluster already has cross-region snapshot copy disabled.
_SnapshotCopyAlreadyDisabledFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotCopyAlreadyDisabledFault =
  _MatchServiceError
    redshift
    "SnapshotCopyAlreadyDisabledFault"
    . hasStatus 400

-- | The specified snapshot schedule already exists.
_SnapshotScheduleAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_SnapshotScheduleAlreadyExistsFault =
  _MatchServiceError
    redshift
    "SnapshotScheduleAlreadyExists"
    . hasStatus 400

-- | Specified offering does not exist.
_ReservedNodeOfferingNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedNodeOfferingNotFoundFault =
  _MatchServiceError
    redshift
    "ReservedNodeOfferingNotFound"
    . hasStatus 404

-- | The specified reserved compute node not found.
_ReservedNodeNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ReservedNodeNotFoundFault =
  _MatchServiceError redshift "ReservedNodeNotFound"
    . hasStatus 404

-- | The quota for HSM client certificates has been reached. For information about increasing your quota, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html Limits in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ .
_HSMClientCertificateQuotaExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_HSMClientCertificateQuotaExceededFault =
  _MatchServiceError
    redshift
    "HsmClientCertificateQuotaExceededFault"
    . hasStatus 400

-- | The parameter group name does not refer to an existing parameter group.
_ClusterParameterGroupNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterParameterGroupNotFoundFault =
  _MatchServiceError
    redshift
    "ClusterParameterGroupNotFound"
    . hasStatus 404

-- | The value specified for the event category was not one of the allowed values, or it specified a category that does not apply to the specified source type. The allowed values are Configuration, Management, Monitoring, and Security.
_SubscriptionCategoryNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionCategoryNotFoundFault =
  _MatchServiceError
    redshift
    "SubscriptionCategoryNotFound"
    . hasStatus 404

-- | The specified CIDR IP range or EC2 security group is not authorized for the specified cluster security group.
_AuthorizationNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_AuthorizationNotFoundFault =
  _MatchServiceError redshift "AuthorizationNotFound"
    . hasStatus 404

-- | The number of tables in the cluster exceeds the limit for the requested new cluster node type.
_TableLimitExceededFault :: AsError a => Getting (First ServiceError) a ServiceError
_TableLimitExceededFault =
  _MatchServiceError redshift "TableLimitExceeded"
    . hasStatus 400

-- | The specified cluster snapshot is not in the @available@ state, or other accounts are authorized to access the snapshot.
_InvalidClusterSnapshotStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidClusterSnapshotStateFault =
  _MatchServiceError
    redshift
    "InvalidClusterSnapshotState"
    . hasStatus 400

-- | The retention period specified is either in the past or is not a valid value.
--
--
-- The value must be either -1 or an integer between 1 and 3,653.
_InvalidRetentionPeriodFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRetentionPeriodFault =
  _MatchServiceError
    redshift
    "InvalidRetentionPeriodFault"
    . hasStatus 400

-- | A /ClusterSubnetGroupName/ is already used by an existing cluster subnet group.
_ClusterSubnetGroupAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSubnetGroupAlreadyExistsFault =
  _MatchServiceError
    redshift
    "ClusterSubnetGroupAlreadyExists"
    . hasStatus 400

-- | The requested subnet is not valid, or not all of the subnets are in the same VPC.
_InvalidSubnet :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSubnet =
  _MatchServiceError redshift "InvalidSubnet"
    . hasStatus 400

-- | An Amazon Redshift event notification subscription with the specified name does not exist.
_SubscriptionNotFoundFault :: AsError a => Getting (First ServiceError) a ServiceError
_SubscriptionNotFoundFault =
  _MatchServiceError redshift "SubscriptionNotFound"
    . hasStatus 404

-- | The value specified as a snapshot identifier is already used by an existing snapshot.
_ClusterSnapshotAlreadyExistsFault :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterSnapshotAlreadyExistsFault =
  _MatchServiceError
    redshift
    "ClusterSnapshotAlreadyExists"
    . hasStatus 400

-- | The specified HSM configuration is not in the @available@ state, or it is still in use by one or more Amazon Redshift clusters.
_InvalidHSMConfigurationStateFault :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidHSMConfigurationStateFault =
  _MatchServiceError
    redshift
    "InvalidHsmConfigurationStateFault"
    . hasStatus 400

-- | The request cannot be completed because a dependent service is throttling requests made by Amazon Redshift on your behalf. Wait and retry the request.
_DependentServiceRequestThrottlingFault :: AsError a => Getting (First ServiceError) a ServiceError
_DependentServiceRequestThrottlingFault =
  _MatchServiceError
    redshift
    "DependentServiceRequestThrottlingFault"
    . hasStatus 400

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Redshift__
--
-- __Overview__
--
-- This is an interface reference for Amazon Redshift. It contains documentation for one of the programming or command line interfaces you can use to manage Amazon Redshift clusters. Note that Amazon Redshift is asynchronous, which means that some interfaces may require techniques, such as polling or asynchronous callback handlers, to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a change is applied immediately, on the next instance reboot, or during the next maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html Using the Amazon Redshift Management Interfaces> .
--
-- Amazon Redshift manages all the work of setting up, operating, and scaling a data warehouse: provisioning capacity, monitoring and backing up the cluster, and applying patches and upgrades to the Amazon Redshift engine. You can focus on using your data to acquire new insights for your business and customers.
--
-- If you are a first-time user of Amazon Redshift, we recommend that you begin by reading the <https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html Amazon Redshift Getting Started Guide> .
--
-- If you are a database developer, the <https://docs.aws.amazon.com/redshift/latest/dg/welcome.html Amazon Redshift Database Developer Guide> explains how to design, build, query, and maintain the databases that make up your data warehouse.
module Network.AWS.Redshift
  ( -- * Service Configuration
    redshift,

    -- * Errors
    -- $errors

    -- ** ClusterSecurityGroupAlreadyExistsFault
    _ClusterSecurityGroupAlreadyExistsFault,

    -- ** ClusterSnapshotNotFoundFault
    _ClusterSnapshotNotFoundFault,

    -- ** ScheduleDefinitionTypeUnsupportedFault
    _ScheduleDefinitionTypeUnsupportedFault,

    -- ** ClusterSubnetGroupNotFoundFault
    _ClusterSubnetGroupNotFoundFault,

    -- ** InvalidVPCNetworkStateFault
    _InvalidVPCNetworkStateFault,

    -- ** InvalidSubscriptionStateFault
    _InvalidSubscriptionStateFault,

    -- ** BucketNotFoundFault
    _BucketNotFoundFault,

    -- ** LimitExceededFault
    _LimitExceededFault,

    -- ** SubscriptionAlreadyExistFault
    _SubscriptionAlreadyExistFault,

    -- ** ClusterSecurityGroupQuotaExceededFault
    _ClusterSecurityGroupQuotaExceededFault,

    -- ** InvalidScheduledActionFault
    _InvalidScheduledActionFault,

    -- ** SubscriptionSeverityNotFoundFault
    _SubscriptionSeverityNotFoundFault,

    -- ** UnauthorizedOperation
    _UnauthorizedOperation,

    -- ** InsufficientS3BucketPolicyFault
    _InsufficientS3BucketPolicyFault,

    -- ** InsufficientClusterCapacityFault
    _InsufficientClusterCapacityFault,

    -- ** HSMConfigurationQuotaExceededFault
    _HSMConfigurationQuotaExceededFault,

    -- ** UsageLimitNotFoundFault
    _UsageLimitNotFoundFault,

    -- ** InvalidTagFault
    _InvalidTagFault,

    -- ** SnapshotScheduleQuotaExceededFault
    _SnapshotScheduleQuotaExceededFault,

    -- ** SNSNoAuthorizationFault
    _SNSNoAuthorizationFault,

    -- ** ScheduledActionNotFoundFault
    _ScheduledActionNotFoundFault,

    -- ** HSMClientCertificateAlreadyExistsFault
    _HSMClientCertificateAlreadyExistsFault,

    -- ** ResourceNotFoundFault
    _ResourceNotFoundFault,

    -- ** SNSTopicARNNotFoundFault
    _SNSTopicARNNotFoundFault,

    -- ** InvalidRestoreFault
    _InvalidRestoreFault,

    -- ** ScheduledActionAlreadyExistsFault
    _ScheduledActionAlreadyExistsFault,

    -- ** ClusterNotFoundFault
    _ClusterNotFoundFault,

    -- ** ScheduledActionQuotaExceededFault
    _ScheduledActionQuotaExceededFault,

    -- ** ScheduledActionTypeUnsupportedFault
    _ScheduledActionTypeUnsupportedFault,

    -- ** EventSubscriptionQuotaExceededFault
    _EventSubscriptionQuotaExceededFault,

    -- ** SnapshotScheduleNotFoundFault
    _SnapshotScheduleNotFoundFault,

    -- ** InvalidReservedNodeStateFault
    _InvalidReservedNodeStateFault,

    -- ** SnapshotScheduleUpdateInProgressFault
    _SnapshotScheduleUpdateInProgressFault,

    -- ** BatchModifyClusterSnapshotsLimitExceededFault
    _BatchModifyClusterSnapshotsLimitExceededFault,

    -- ** ReservedNodeAlreadyMigratedFault
    _ReservedNodeAlreadyMigratedFault,

    -- ** IncompatibleOrderableOptions
    _IncompatibleOrderableOptions,

    -- ** InvalidClusterSubnetStateFault
    _InvalidClusterSubnetStateFault,

    -- ** ClusterQuotaExceededFault
    _ClusterQuotaExceededFault,

    -- ** InvalidS3BucketNameFault
    _InvalidS3BucketNameFault,

    -- ** InvalidClusterSubnetGroupStateFault
    _InvalidClusterSubnetGroupStateFault,

    -- ** HSMConfigurationAlreadyExistsFault
    _HSMConfigurationAlreadyExistsFault,

    -- ** ClusterSecurityGroupNotFoundFault
    _ClusterSecurityGroupNotFoundFault,

    -- ** UnsupportedOperationFault
    _UnsupportedOperationFault,

    -- ** InvalidElasticIPFault
    _InvalidElasticIPFault,

    -- ** InvalidClusterSnapshotScheduleStateFault
    _InvalidClusterSnapshotScheduleStateFault,

    -- ** TableRestoreNotFoundFault
    _TableRestoreNotFoundFault,

    -- ** HSMConfigurationNotFoundFault
    _HSMConfigurationNotFoundFault,

    -- ** AuthorizationAlreadyExistsFault
    _AuthorizationAlreadyExistsFault,

    -- ** InvalidClusterSecurityGroupStateFault
    _InvalidClusterSecurityGroupStateFault,

    -- ** UsageLimitAlreadyExistsFault
    _UsageLimitAlreadyExistsFault,

    -- ** SNSInvalidTopicFault
    _SNSInvalidTopicFault,

    -- ** SourceNotFoundFault
    _SourceNotFoundFault,

    -- ** InvalidS3KeyPrefixFault
    _InvalidS3KeyPrefixFault,

    -- ** UnsupportedOptionFault
    _UnsupportedOptionFault,

    -- ** AuthorizationQuotaExceededFault
    _AuthorizationQuotaExceededFault,

    -- ** DependentServiceUnavailableFault
    _DependentServiceUnavailableFault,

    -- ** CopyToRegionDisabledFault
    _CopyToRegionDisabledFault,

    -- ** ClusterOnLatestRevisionFault
    _ClusterOnLatestRevisionFault,

    -- ** SubnetAlreadyInUse
    _SubnetAlreadyInUse,

    -- ** ClusterSubnetGroupQuotaExceededFault
    _ClusterSubnetGroupQuotaExceededFault,

    -- ** ClusterSnapshotQuotaExceededFault
    _ClusterSnapshotQuotaExceededFault,

    -- ** InvalidScheduleFault
    _InvalidScheduleFault,

    -- ** ClusterSubnetQuotaExceededFault
    _ClusterSubnetQuotaExceededFault,

    -- ** AccessToSnapshotDeniedFault
    _AccessToSnapshotDeniedFault,

    -- ** NumberOfNodesQuotaExceededFault
    _NumberOfNodesQuotaExceededFault,

    -- ** InvalidTableRestoreArgumentFault
    _InvalidTableRestoreArgumentFault,

    -- ** InvalidClusterTrackFault
    _InvalidClusterTrackFault,

    -- ** InvalidHSMClientCertificateStateFault
    _InvalidHSMClientCertificateStateFault,

    -- ** TagLimitExceededFault
    _TagLimitExceededFault,

    -- ** SnapshotCopyGrantNotFoundFault
    _SnapshotCopyGrantNotFoundFault,

    -- ** ClusterAlreadyExistsFault
    _ClusterAlreadyExistsFault,

    -- ** InvalidClusterStateFault
    _InvalidClusterStateFault,

    -- ** ClusterParameterGroupQuotaExceededFault
    _ClusterParameterGroupQuotaExceededFault,

    -- ** UnknownSnapshotCopyRegionFault
    _UnknownSnapshotCopyRegionFault,

    -- ** SnapshotCopyDisabledFault
    _SnapshotCopyDisabledFault,

    -- ** InvalidUsageLimitFault
    _InvalidUsageLimitFault,

    -- ** InProgressTableRestoreQuotaExceededFault
    _InProgressTableRestoreQuotaExceededFault,

    -- ** ReservedNodeQuotaExceededFault
    _ReservedNodeQuotaExceededFault,

    -- ** HSMClientCertificateNotFoundFault
    _HSMClientCertificateNotFoundFault,

    -- ** SubscriptionEventIdNotFoundFault
    _SubscriptionEventIdNotFoundFault,

    -- ** InvalidSnapshotCopyGrantStateFault
    _InvalidSnapshotCopyGrantStateFault,

    -- ** SnapshotCopyGrantAlreadyExistsFault
    _SnapshotCopyGrantAlreadyExistsFault,

    -- ** ResizeNotFoundFault
    _ResizeNotFoundFault,

    -- ** SnapshotCopyAlreadyEnabledFault
    _SnapshotCopyAlreadyEnabledFault,

    -- ** BatchDeleteRequestSizeExceededFault
    _BatchDeleteRequestSizeExceededFault,

    -- ** NumberOfNodesPerClusterLimitExceededFault
    _NumberOfNodesPerClusterLimitExceededFault,

    -- ** ReservedNodeAlreadyExistsFault
    _ReservedNodeAlreadyExistsFault,

    -- ** ClusterParameterGroupAlreadyExistsFault
    _ClusterParameterGroupAlreadyExistsFault,

    -- ** SnapshotCopyGrantQuotaExceededFault
    _SnapshotCopyGrantQuotaExceededFault,

    -- ** InvalidClusterParameterGroupStateFault
    _InvalidClusterParameterGroupStateFault,

    -- ** SnapshotCopyAlreadyDisabledFault
    _SnapshotCopyAlreadyDisabledFault,

    -- ** SnapshotScheduleAlreadyExistsFault
    _SnapshotScheduleAlreadyExistsFault,

    -- ** ReservedNodeOfferingNotFoundFault
    _ReservedNodeOfferingNotFoundFault,

    -- ** ReservedNodeNotFoundFault
    _ReservedNodeNotFoundFault,

    -- ** HSMClientCertificateQuotaExceededFault
    _HSMClientCertificateQuotaExceededFault,

    -- ** ClusterParameterGroupNotFoundFault
    _ClusterParameterGroupNotFoundFault,

    -- ** SubscriptionCategoryNotFoundFault
    _SubscriptionCategoryNotFoundFault,

    -- ** AuthorizationNotFoundFault
    _AuthorizationNotFoundFault,

    -- ** TableLimitExceededFault
    _TableLimitExceededFault,

    -- ** InvalidClusterSnapshotStateFault
    _InvalidClusterSnapshotStateFault,

    -- ** InvalidRetentionPeriodFault
    _InvalidRetentionPeriodFault,

    -- ** ClusterSubnetGroupAlreadyExistsFault
    _ClusterSubnetGroupAlreadyExistsFault,

    -- ** InvalidSubnet
    _InvalidSubnet,

    -- ** SubscriptionNotFoundFault
    _SubscriptionNotFoundFault,

    -- ** ClusterSnapshotAlreadyExistsFault
    _ClusterSnapshotAlreadyExistsFault,

    -- ** InvalidHSMConfigurationStateFault
    _InvalidHSMConfigurationStateFault,

    -- ** DependentServiceRequestThrottlingFault
    _DependentServiceRequestThrottlingFault,

    -- * Waiters
    -- $waiters

    -- ** ClusterRestored
    clusterRestored,

    -- ** ClusterDeleted
    clusterDeleted,

    -- ** ClusterAvailable
    clusterAvailable,

    -- ** SnapshotAvailable
    snapshotAvailable,

    -- * Operations
    -- $operations

    -- ** PurchaseReservedNodeOffering
    module Network.AWS.Redshift.PurchaseReservedNodeOffering,

    -- ** DescribeEventCategories
    module Network.AWS.Redshift.DescribeEventCategories,

    -- ** DeleteClusterSubnetGroup
    module Network.AWS.Redshift.DeleteClusterSubnetGroup,

    -- ** DisableLogging
    module Network.AWS.Redshift.DisableLogging,

    -- ** DescribeHSMClientCertificates (Paginated)
    module Network.AWS.Redshift.DescribeHSMClientCertificates,

    -- ** ModifyClusterParameterGroup
    module Network.AWS.Redshift.ModifyClusterParameterGroup,

    -- ** CancelResize
    module Network.AWS.Redshift.CancelResize,

    -- ** DescribeClusters (Paginated)
    module Network.AWS.Redshift.DescribeClusters,

    -- ** GetClusterCredentials
    module Network.AWS.Redshift.GetClusterCredentials,

    -- ** RevokeClusterSecurityGroupIngress
    module Network.AWS.Redshift.RevokeClusterSecurityGroupIngress,

    -- ** CreateUsageLimit
    module Network.AWS.Redshift.CreateUsageLimit,

    -- ** DescribeTags (Paginated)
    module Network.AWS.Redshift.DescribeTags,

    -- ** DeleteUsageLimit
    module Network.AWS.Redshift.DeleteUsageLimit,

    -- ** DescribeScheduledActions (Paginated)
    module Network.AWS.Redshift.DescribeScheduledActions,

    -- ** RotateEncryptionKey
    module Network.AWS.Redshift.RotateEncryptionKey,

    -- ** DescribeClusterDBRevisions (Paginated)
    module Network.AWS.Redshift.DescribeClusterDBRevisions,

    -- ** DescribeEventSubscriptions (Paginated)
    module Network.AWS.Redshift.DescribeEventSubscriptions,

    -- ** ResetClusterParameterGroup
    module Network.AWS.Redshift.ResetClusterParameterGroup,

    -- ** ModifyClusterSubnetGroup
    module Network.AWS.Redshift.ModifyClusterSubnetGroup,

    -- ** RestoreTableFromClusterSnapshot
    module Network.AWS.Redshift.RestoreTableFromClusterSnapshot,

    -- ** DeleteEventSubscription
    module Network.AWS.Redshift.DeleteEventSubscription,

    -- ** CreateCluster
    module Network.AWS.Redshift.CreateCluster,

    -- ** ModifyClusterSnapshot
    module Network.AWS.Redshift.ModifyClusterSnapshot,

    -- ** DeleteScheduledAction
    module Network.AWS.Redshift.DeleteScheduledAction,

    -- ** DescribeAccountAttributes
    module Network.AWS.Redshift.DescribeAccountAttributes,

    -- ** CopyClusterSnapshot
    module Network.AWS.Redshift.CopyClusterSnapshot,

    -- ** CreateSnapshotCopyGrant
    module Network.AWS.Redshift.CreateSnapshotCopyGrant,

    -- ** ModifyClusterSnapshotSchedule
    module Network.AWS.Redshift.ModifyClusterSnapshotSchedule,

    -- ** CreateClusterParameterGroup
    module Network.AWS.Redshift.CreateClusterParameterGroup,

    -- ** DeleteTags
    module Network.AWS.Redshift.DeleteTags,

    -- ** EnableSnapshotCopy
    module Network.AWS.Redshift.EnableSnapshotCopy,

    -- ** DescribeClusterSnapshots (Paginated)
    module Network.AWS.Redshift.DescribeClusterSnapshots,

    -- ** DescribeHSMConfigurations (Paginated)
    module Network.AWS.Redshift.DescribeHSMConfigurations,

    -- ** ModifyUsageLimit
    module Network.AWS.Redshift.ModifyUsageLimit,

    -- ** DescribeClusterSecurityGroups (Paginated)
    module Network.AWS.Redshift.DescribeClusterSecurityGroups,

    -- ** DeleteClusterParameterGroup
    module Network.AWS.Redshift.DeleteClusterParameterGroup,

    -- ** CreateSnapshotSchedule
    module Network.AWS.Redshift.CreateSnapshotSchedule,

    -- ** DescribeNodeConfigurationOptions (Paginated)
    module Network.AWS.Redshift.DescribeNodeConfigurationOptions,

    -- ** DescribeClusterParameterGroups (Paginated)
    module Network.AWS.Redshift.DescribeClusterParameterGroups,

    -- ** DescribeLoggingStatus
    module Network.AWS.Redshift.DescribeLoggingStatus,

    -- ** DescribeEvents (Paginated)
    module Network.AWS.Redshift.DescribeEvents,

    -- ** CreateClusterSnapshot
    module Network.AWS.Redshift.CreateClusterSnapshot,

    -- ** CreateClusterSubnetGroup
    module Network.AWS.Redshift.CreateClusterSubnetGroup,

    -- ** ModifyCluster
    module Network.AWS.Redshift.ModifyCluster,

    -- ** GetReservedNodeExchangeOfferings (Paginated)
    module Network.AWS.Redshift.GetReservedNodeExchangeOfferings,

    -- ** DescribeResize
    module Network.AWS.Redshift.DescribeResize,

    -- ** DeleteHSMConfiguration
    module Network.AWS.Redshift.DeleteHSMConfiguration,

    -- ** DeleteClusterSnapshot
    module Network.AWS.Redshift.DeleteClusterSnapshot,

    -- ** CreateClusterSecurityGroup
    module Network.AWS.Redshift.CreateClusterSecurityGroup,

    -- ** AcceptReservedNodeExchange
    module Network.AWS.Redshift.AcceptReservedNodeExchange,

    -- ** ModifyScheduledAction
    module Network.AWS.Redshift.ModifyScheduledAction,

    -- ** ModifyEventSubscription
    module Network.AWS.Redshift.ModifyEventSubscription,

    -- ** DescribeSnapshotSchedules (Paginated)
    module Network.AWS.Redshift.DescribeSnapshotSchedules,

    -- ** DescribeTableRestoreStatus (Paginated)
    module Network.AWS.Redshift.DescribeTableRestoreStatus,

    -- ** ModifyClusterMaintenance
    module Network.AWS.Redshift.ModifyClusterMaintenance,

    -- ** AuthorizeClusterSecurityGroupIngress
    module Network.AWS.Redshift.AuthorizeClusterSecurityGroupIngress,

    -- ** ModifyClusterDBRevision
    module Network.AWS.Redshift.ModifyClusterDBRevision,

    -- ** DescribeStorage
    module Network.AWS.Redshift.DescribeStorage,

    -- ** DescribeSnapshotCopyGrants (Paginated)
    module Network.AWS.Redshift.DescribeSnapshotCopyGrants,

    -- ** BatchModifyClusterSnapshots
    module Network.AWS.Redshift.BatchModifyClusterSnapshots,

    -- ** ModifySnapshotSchedule
    module Network.AWS.Redshift.ModifySnapshotSchedule,

    -- ** DeleteSnapshotCopyGrant
    module Network.AWS.Redshift.DeleteSnapshotCopyGrant,

    -- ** DescribeUsageLimits (Paginated)
    module Network.AWS.Redshift.DescribeUsageLimits,

    -- ** DescribeDefaultClusterParameters (Paginated)
    module Network.AWS.Redshift.DescribeDefaultClusterParameters,

    -- ** CreateHSMClientCertificate
    module Network.AWS.Redshift.CreateHSMClientCertificate,

    -- ** DescribeClusterVersions (Paginated)
    module Network.AWS.Redshift.DescribeClusterVersions,

    -- ** DescribeOrderableClusterOptions (Paginated)
    module Network.AWS.Redshift.DescribeOrderableClusterOptions,

    -- ** DeleteHSMClientCertificate
    module Network.AWS.Redshift.DeleteHSMClientCertificate,

    -- ** RebootCluster
    module Network.AWS.Redshift.RebootCluster,

    -- ** DeleteCluster
    module Network.AWS.Redshift.DeleteCluster,

    -- ** CreateEventSubscription
    module Network.AWS.Redshift.CreateEventSubscription,

    -- ** AuthorizeSnapshotAccess
    module Network.AWS.Redshift.AuthorizeSnapshotAccess,

    -- ** ResumeCluster
    module Network.AWS.Redshift.ResumeCluster,

    -- ** DescribeClusterTracks (Paginated)
    module Network.AWS.Redshift.DescribeClusterTracks,

    -- ** CreateScheduledAction
    module Network.AWS.Redshift.CreateScheduledAction,

    -- ** DeleteSnapshotSchedule
    module Network.AWS.Redshift.DeleteSnapshotSchedule,

    -- ** DescribeClusterSubnetGroups (Paginated)
    module Network.AWS.Redshift.DescribeClusterSubnetGroups,

    -- ** BatchDeleteClusterSnapshots
    module Network.AWS.Redshift.BatchDeleteClusterSnapshots,

    -- ** ModifyClusterIAMRoles
    module Network.AWS.Redshift.ModifyClusterIAMRoles,

    -- ** ResizeCluster
    module Network.AWS.Redshift.ResizeCluster,

    -- ** ModifySnapshotCopyRetentionPeriod
    module Network.AWS.Redshift.ModifySnapshotCopyRetentionPeriod,

    -- ** RestoreFromClusterSnapshot
    module Network.AWS.Redshift.RestoreFromClusterSnapshot,

    -- ** RevokeSnapshotAccess
    module Network.AWS.Redshift.RevokeSnapshotAccess,

    -- ** PauseCluster
    module Network.AWS.Redshift.PauseCluster,

    -- ** DescribeClusterParameters (Paginated)
    module Network.AWS.Redshift.DescribeClusterParameters,

    -- ** DisableSnapshotCopy
    module Network.AWS.Redshift.DisableSnapshotCopy,

    -- ** CreateTags
    module Network.AWS.Redshift.CreateTags,

    -- ** DescribeReservedNodeOfferings (Paginated)
    module Network.AWS.Redshift.DescribeReservedNodeOfferings,

    -- ** DeleteClusterSecurityGroup
    module Network.AWS.Redshift.DeleteClusterSecurityGroup,

    -- ** EnableLogging
    module Network.AWS.Redshift.EnableLogging,

    -- ** CreateHSMConfiguration
    module Network.AWS.Redshift.CreateHSMConfiguration,

    -- ** DescribeReservedNodes (Paginated)
    module Network.AWS.Redshift.DescribeReservedNodes,

    -- * Types

    -- ** Common
    module Network.AWS.Redshift.Internal,

    -- ** ActionType
    ActionType (..),

    -- ** Mode
    Mode (..),

    -- ** NodeConfigurationOptionsFilterName
    NodeConfigurationOptionsFilterName (..),

    -- ** OperatorType
    OperatorType (..),

    -- ** ParameterApplyType
    ParameterApplyType (..),

    -- ** ReservedNodeOfferingType
    ReservedNodeOfferingType (..),

    -- ** ScheduleState
    ScheduleState (..),

    -- ** ScheduledActionFilterName
    ScheduledActionFilterName (..),

    -- ** ScheduledActionState
    ScheduledActionState (..),

    -- ** ScheduledActionTypeValues
    ScheduledActionTypeValues (..),

    -- ** SnapshotAttributeToSortBy
    SnapshotAttributeToSortBy (..),

    -- ** SortByOrder
    SortByOrder (..),

    -- ** SourceType
    SourceType (..),

    -- ** TableRestoreStatusType
    TableRestoreStatusType (..),

    -- ** UsageLimitBreachAction
    UsageLimitBreachAction (..),

    -- ** UsageLimitFeatureType
    UsageLimitFeatureType (..),

    -- ** UsageLimitLimitType
    UsageLimitLimitType (..),

    -- ** UsageLimitPeriod
    UsageLimitPeriod (..),

    -- ** AccountAttribute
    AccountAttribute,
    accountAttribute,
    aaAttributeName,
    aaAttributeValues,

    -- ** AccountWithRestoreAccess
    AccountWithRestoreAccess,
    accountWithRestoreAccess,
    awraAccountAlias,
    awraAccountId,

    -- ** AttributeValueTarget
    AttributeValueTarget,
    attributeValueTarget,
    avtAttributeValue,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azName,
    azSupportedPlatforms,

    -- ** Cluster
    Cluster,
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

    -- ** ClusterAssociatedToSchedule
    ClusterAssociatedToSchedule,
    clusterAssociatedToSchedule,
    catsScheduleAssociationState,
    catsClusterIdentifier,

    -- ** ClusterDBRevision
    ClusterDBRevision,
    clusterDBRevision,
    cdrCurrentDatabaseRevision,
    cdrRevisionTargets,
    cdrClusterIdentifier,
    cdrDatabaseRevisionReleaseDate,

    -- ** ClusterIAMRole
    ClusterIAMRole,
    clusterIAMRole,
    cirIAMRoleARN,
    cirApplyStatus,

    -- ** ClusterNode
    ClusterNode,
    clusterNode,
    cnNodeRole,
    cnPublicIPAddress,
    cnPrivateIPAddress,

    -- ** ClusterParameterGroup
    ClusterParameterGroup,
    clusterParameterGroup,
    cpgTags,
    cpgParameterGroupName,
    cpgDescription,
    cpgParameterGroupFamily,

    -- ** ClusterParameterGroupNameMessage
    ClusterParameterGroupNameMessage,
    clusterParameterGroupNameMessage,
    cpgnmParameterGroupStatus,
    cpgnmParameterGroupName,

    -- ** ClusterParameterGroupStatus
    ClusterParameterGroupStatus,
    clusterParameterGroupStatus,
    cpgsClusterParameterStatusList,
    cpgsParameterGroupName,
    cpgsParameterApplyStatus,

    -- ** ClusterParameterStatus
    ClusterParameterStatus,
    clusterParameterStatus,
    cpsParameterApplyStatus,
    cpsParameterName,
    cpsParameterApplyErrorDescription,

    -- ** ClusterSecurityGroup
    ClusterSecurityGroup,
    clusterSecurityGroup,
    csgIPRanges,
    csgClusterSecurityGroupName,
    csgTags,
    csgEC2SecurityGroups,
    csgDescription,

    -- ** ClusterSecurityGroupMembership
    ClusterSecurityGroupMembership,
    clusterSecurityGroupMembership,
    csgmStatus,
    csgmClusterSecurityGroupName,

    -- ** ClusterSnapshotCopyStatus
    ClusterSnapshotCopyStatus,
    clusterSnapshotCopyStatus,
    cscsDestinationRegion,
    cscsSnapshotCopyGrantName,
    cscsManualSnapshotRetentionPeriod,
    cscsRetentionPeriod,

    -- ** ClusterSubnetGroup
    ClusterSubnetGroup,
    clusterSubnetGroup,
    cluClusterSubnetGroupName,
    cluSubnetGroupStatus,
    cluTags,
    cluDescription,
    cluSubnets,
    cluVPCId,

    -- ** ClusterVersion
    ClusterVersion,
    clusterVersion,
    cvClusterParameterGroupFamily,
    cvDescription,
    cvClusterVersion,

    -- ** DataTransferProgress
    DataTransferProgress,
    dataTransferProgress,
    dtpStatus,
    dtpEstimatedTimeToCompletionInSeconds,
    dtpDataTransferredInMegaBytes,
    dtpCurrentRateInMegaBytesPerSecond,
    dtpElapsedTimeInSeconds,
    dtpTotalDataInMegaBytes,

    -- ** DefaultClusterParameters
    DefaultClusterParameters,
    defaultClusterParameters,
    dcpParameterGroupFamily,
    dcpParameters,
    dcpMarker,

    -- ** DeferredMaintenanceWindow
    DeferredMaintenanceWindow,
    deferredMaintenanceWindow,
    dmwDeferMaintenanceIdentifier,
    dmwDeferMaintenanceStartTime,
    dmwDeferMaintenanceEndTime,

    -- ** DeleteClusterSnapshotMessage
    DeleteClusterSnapshotMessage,
    deleteClusterSnapshotMessage,
    dcsmSnapshotClusterIdentifier,
    dcsmSnapshotIdentifier,

    -- ** EC2SecurityGroup
    EC2SecurityGroup,
    ec2SecurityGroup,
    esgStatus,
    esgTags,
    esgEC2SecurityGroupOwnerId,
    esgEC2SecurityGroupName,

    -- ** ElasticIPStatus
    ElasticIPStatus,
    elasticIPStatus,
    eisElasticIP,
    eisStatus,

    -- ** Endpoint
    Endpoint,
    endpoint,
    eAddress,
    eVPCEndpoints,
    ePort,

    -- ** Event
    Event,
    event,
    eEventId,
    eSeverity,
    eMessage,
    eEventCategories,
    eDate,
    eSourceIdentifier,
    eSourceType,

    -- ** EventCategoriesMap
    EventCategoriesMap,
    eventCategoriesMap,
    ecmEvents,
    ecmSourceType,

    -- ** EventInfoMap
    EventInfoMap,
    eventInfoMap,
    eimEventId,
    eimSeverity,
    eimEventDescription,
    eimEventCategories,

    -- ** EventSubscription
    EventSubscription,
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

    -- ** HSMClientCertificate
    HSMClientCertificate,
    hsmClientCertificate,
    hccHSMClientCertificatePublicKey,
    hccHSMClientCertificateIdentifier,
    hccTags,

    -- ** HSMConfiguration
    HSMConfiguration,
    hsmConfiguration,
    hcTags,
    hcHSMIPAddress,
    hcDescription,
    hcHSMPartitionName,
    hcHSMConfigurationIdentifier,

    -- ** HSMStatus
    HSMStatus,
    hsmStatus,
    hsStatus,
    hsHSMClientCertificateIdentifier,
    hsHSMConfigurationIdentifier,

    -- ** IPRange
    IPRange,
    ipRange,
    irStatus,
    irCIdRIP,
    irTags,

    -- ** LoggingStatus
    LoggingStatus,
    loggingStatus,
    lsLastSuccessfulDeliveryTime,
    lsBucketName,
    lsLoggingEnabled,
    lsLastFailureTime,
    lsS3KeyPrefix,
    lsLastFailureMessage,

    -- ** MaintenanceTrack
    MaintenanceTrack,
    maintenanceTrack,
    mtUpdateTargets,
    mtDatabaseVersion,
    mtMaintenanceTrackName,

    -- ** NodeConfigurationOption
    NodeConfigurationOption,
    nodeConfigurationOption,
    ncoMode,
    ncoNumberOfNodes,
    ncoEstimatedDiskUtilizationPercent,
    ncoNodeType,

    -- ** NodeConfigurationOptionsFilter
    NodeConfigurationOptionsFilter,
    nodeConfigurationOptionsFilter,
    ncofValues,
    ncofOperator,
    ncofName,

    -- ** OrderableClusterOption
    OrderableClusterOption,
    orderableClusterOption,
    ocoAvailabilityZones,
    ocoClusterType,
    ocoNodeType,
    ocoClusterVersion,

    -- ** Parameter
    Parameter,
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

    -- ** PauseClusterMessage
    PauseClusterMessage,
    pauseClusterMessage,
    pcmClusterIdentifier,

    -- ** PendingModifiedValues
    PendingModifiedValues,
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

    -- ** RecurringCharge
    RecurringCharge,
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- ** ReservedNode
    ReservedNode,
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

    -- ** ReservedNodeOffering
    ReservedNodeOffering,
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

    -- ** ResizeClusterMessage
    ResizeClusterMessage,
    resizeClusterMessage,
    rClassic,
    rClusterType,
    rNumberOfNodes,
    rNodeType,
    rClusterIdentifier,

    -- ** ResizeInfo
    ResizeInfo,
    resizeInfo,
    riAllowCancelResize,
    riResizeType,

    -- ** ResizeProgressMessage
    ResizeProgressMessage,
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

    -- ** RestoreStatus
    RestoreStatus,
    restoreStatus,
    rsStatus,
    rsEstimatedTimeToCompletionInSeconds,
    rsSnapshotSizeInMegaBytes,
    rsCurrentRestoreRateInMegaBytesPerSecond,
    rsElapsedTimeInSeconds,
    rsProgressInMegaBytes,

    -- ** ResumeClusterMessage
    ResumeClusterMessage,
    resumeClusterMessage,
    rcmClusterIdentifier,

    -- ** RevisionTarget
    RevisionTarget,
    revisionTarget,
    rtDescription,
    rtDatabaseRevision,
    rtDatabaseRevisionReleaseDate,

    -- ** ScheduledAction
    ScheduledAction,
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

    -- ** ScheduledActionFilter
    ScheduledActionFilter,
    scheduledActionFilter,
    safName,
    safValues,

    -- ** ScheduledActionType
    ScheduledActionType,
    scheduledActionType,
    satResumeCluster,
    satResizeCluster,
    satPauseCluster,

    -- ** Snapshot
    Snapshot,
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

    -- ** SnapshotCopyGrant
    SnapshotCopyGrant,
    snapshotCopyGrant,
    scgSnapshotCopyGrantName,
    scgKMSKeyId,
    scgTags,

    -- ** SnapshotErrorMessage
    SnapshotErrorMessage,
    snapshotErrorMessage,
    semSnapshotIdentifier,
    semFailureCode,
    semSnapshotClusterIdentifier,
    semFailureReason,

    -- ** SnapshotSchedule
    SnapshotSchedule,
    snapshotSchedule,
    ssNextInvocations,
    ssAssociatedClusters,
    ssScheduleIdentifier,
    ssScheduleDescription,
    ssScheduleDefinitions,
    ssAssociatedClusterCount,
    ssTags,

    -- ** SnapshotSortingEntity
    SnapshotSortingEntity,
    snapshotSortingEntity,
    sseSortOrder,
    sseAttribute,

    -- ** Subnet
    Subnet,
    subnet,
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,

    -- ** SupportedOperation
    SupportedOperation,
    supportedOperation,
    soOperationName,

    -- ** SupportedPlatform
    SupportedPlatform,
    supportedPlatform,
    spName,

    -- ** TableRestoreStatus
    TableRestoreStatus,
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

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TaggedResource
    TaggedResource,
    taggedResource,
    trResourceType,
    trResourceName,
    trTag,

    -- ** UpdateTarget
    UpdateTarget,
    updateTarget,
    utSupportedOperations,
    utDatabaseVersion,
    utMaintenanceTrackName,

    -- ** UsageLimit
    UsageLimit,
    usageLimit,
    ulAmount,
    ulFeatureType,
    ulBreachAction,
    ulLimitType,
    ulClusterIdentifier,
    ulTags,
    ulPeriod,
    ulUsageLimitId,

    -- ** VPCEndpoint
    VPCEndpoint,
    vpcEndpoint,
    veVPCEndpointId,

    -- ** VPCSecurityGroupMembership
    VPCSecurityGroupMembership,
    vpcSecurityGroupMembership,
    vsgmStatus,
    vsgmVPCSecurityGroupId,
  )
where

import Network.AWS.Redshift.AcceptReservedNodeExchange
import Network.AWS.Redshift.AuthorizeClusterSecurityGroupIngress
import Network.AWS.Redshift.AuthorizeSnapshotAccess
import Network.AWS.Redshift.BatchDeleteClusterSnapshots
import Network.AWS.Redshift.BatchModifyClusterSnapshots
import Network.AWS.Redshift.CancelResize
import Network.AWS.Redshift.CopyClusterSnapshot
import Network.AWS.Redshift.CreateCluster
import Network.AWS.Redshift.CreateClusterParameterGroup
import Network.AWS.Redshift.CreateClusterSecurityGroup
import Network.AWS.Redshift.CreateClusterSnapshot
import Network.AWS.Redshift.CreateClusterSubnetGroup
import Network.AWS.Redshift.CreateEventSubscription
import Network.AWS.Redshift.CreateHSMClientCertificate
import Network.AWS.Redshift.CreateHSMConfiguration
import Network.AWS.Redshift.CreateScheduledAction
import Network.AWS.Redshift.CreateSnapshotCopyGrant
import Network.AWS.Redshift.CreateSnapshotSchedule
import Network.AWS.Redshift.CreateTags
import Network.AWS.Redshift.CreateUsageLimit
import Network.AWS.Redshift.DeleteCluster
import Network.AWS.Redshift.DeleteClusterParameterGroup
import Network.AWS.Redshift.DeleteClusterSecurityGroup
import Network.AWS.Redshift.DeleteClusterSnapshot
import Network.AWS.Redshift.DeleteClusterSubnetGroup
import Network.AWS.Redshift.DeleteEventSubscription
import Network.AWS.Redshift.DeleteHSMClientCertificate
import Network.AWS.Redshift.DeleteHSMConfiguration
import Network.AWS.Redshift.DeleteScheduledAction
import Network.AWS.Redshift.DeleteSnapshotCopyGrant
import Network.AWS.Redshift.DeleteSnapshotSchedule
import Network.AWS.Redshift.DeleteTags
import Network.AWS.Redshift.DeleteUsageLimit
import Network.AWS.Redshift.DescribeAccountAttributes
import Network.AWS.Redshift.DescribeClusterDBRevisions
import Network.AWS.Redshift.DescribeClusterParameterGroups
import Network.AWS.Redshift.DescribeClusterParameters
import Network.AWS.Redshift.DescribeClusterSecurityGroups
import Network.AWS.Redshift.DescribeClusterSnapshots
import Network.AWS.Redshift.DescribeClusterSubnetGroups
import Network.AWS.Redshift.DescribeClusterTracks
import Network.AWS.Redshift.DescribeClusterVersions
import Network.AWS.Redshift.DescribeClusters
import Network.AWS.Redshift.DescribeDefaultClusterParameters
import Network.AWS.Redshift.DescribeEventCategories
import Network.AWS.Redshift.DescribeEventSubscriptions
import Network.AWS.Redshift.DescribeEvents
import Network.AWS.Redshift.DescribeHSMClientCertificates
import Network.AWS.Redshift.DescribeHSMConfigurations
import Network.AWS.Redshift.DescribeLoggingStatus
import Network.AWS.Redshift.DescribeNodeConfigurationOptions
import Network.AWS.Redshift.DescribeOrderableClusterOptions
import Network.AWS.Redshift.DescribeReservedNodeOfferings
import Network.AWS.Redshift.DescribeReservedNodes
import Network.AWS.Redshift.DescribeResize
import Network.AWS.Redshift.DescribeScheduledActions
import Network.AWS.Redshift.DescribeSnapshotCopyGrants
import Network.AWS.Redshift.DescribeSnapshotSchedules
import Network.AWS.Redshift.DescribeStorage
import Network.AWS.Redshift.DescribeTableRestoreStatus
import Network.AWS.Redshift.DescribeTags
import Network.AWS.Redshift.DescribeUsageLimits
import Network.AWS.Redshift.DisableLogging
import Network.AWS.Redshift.DisableSnapshotCopy
import Network.AWS.Redshift.EnableLogging
import Network.AWS.Redshift.EnableSnapshotCopy
import Network.AWS.Redshift.GetClusterCredentials
import Network.AWS.Redshift.GetReservedNodeExchangeOfferings
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.ModifyCluster
import Network.AWS.Redshift.ModifyClusterDBRevision
import Network.AWS.Redshift.ModifyClusterIAMRoles
import Network.AWS.Redshift.ModifyClusterMaintenance
import Network.AWS.Redshift.ModifyClusterParameterGroup
import Network.AWS.Redshift.ModifyClusterSnapshot
import Network.AWS.Redshift.ModifyClusterSnapshotSchedule
import Network.AWS.Redshift.ModifyClusterSubnetGroup
import Network.AWS.Redshift.ModifyEventSubscription
import Network.AWS.Redshift.ModifyScheduledAction
import Network.AWS.Redshift.ModifySnapshotCopyRetentionPeriod
import Network.AWS.Redshift.ModifySnapshotSchedule
import Network.AWS.Redshift.ModifyUsageLimit
import Network.AWS.Redshift.PauseCluster
import Network.AWS.Redshift.PurchaseReservedNodeOffering
import Network.AWS.Redshift.RebootCluster
import Network.AWS.Redshift.ResetClusterParameterGroup
import Network.AWS.Redshift.ResizeCluster
import Network.AWS.Redshift.RestoreFromClusterSnapshot
import Network.AWS.Redshift.RestoreTableFromClusterSnapshot
import Network.AWS.Redshift.ResumeCluster
import Network.AWS.Redshift.RevokeClusterSecurityGroupIngress
import Network.AWS.Redshift.RevokeSnapshotAccess
import Network.AWS.Redshift.RotateEncryptionKey
import Network.AWS.Redshift.Types
import Network.AWS.Redshift.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Redshift'.

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

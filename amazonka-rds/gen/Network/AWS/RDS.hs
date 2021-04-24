{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Amazon Relational Database Service__
--
--
--
-- Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale a relational database in the cloud. It provides cost-efficient, resizeable capacity for an industry-standard relational database and manages common database administration tasks, freeing up developers to focus on what makes their applications and businesses unique.
--
-- Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server. These capabilities mean that the code, applications, and tools you already use today with your existing databases work with Amazon RDS without modification. Amazon RDS automatically backs up your database and maintains the database software that powers your DB instance. Amazon RDS is flexible: you can scale your DB instance's compute resources and storage capacity to meet your application's demand. As with all Amazon Web Services, there are no up-front investments, and you pay only for the resources you use.
--
-- This interface reference for Amazon RDS contains documentation for a programming or command line interface you can use to manage Amazon RDS. Amazon RDS is asynchronous, which means that some interfaces might require techniques such as polling or callback functions to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a command is applied immediately, on the next instance reboot, or during the maintenance window. The reference structure is as follows, and we list following some related topics from the user guide.
--
-- __Amazon RDS API Reference__
--
--     * For the alphabetical list of API actions, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html API Actions> .
--
--     * For the alphabetical list of data types, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html Data Types> .
--
--     * For a list of common query parameters, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html Common Parameters> .
--
--     * For descriptions of the error codes, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html Common Errors> .
--
--
--
-- __Amazon RDS User Guide__
--
--     * For a summary of the Amazon RDS interfaces, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces Available RDS Interfaces> .
--
--     * For more information about how to use the Query API, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html Using the Query API> .
module Network.AWS.RDS
  ( -- * Service Configuration
    rds,

    -- * Errors
    -- $errors

    -- ** DBInstanceRoleAlreadyExistsFault
    _DBInstanceRoleAlreadyExistsFault,

    -- ** ReservedDBInstanceAlreadyExistsFault
    _ReservedDBInstanceAlreadyExistsFault,

    -- ** DBParameterGroupQuotaExceededFault
    _DBParameterGroupQuotaExceededFault,

    -- ** InsufficientDBClusterCapacityFault
    _InsufficientDBClusterCapacityFault,

    -- ** InvalidVPCNetworkStateFault
    _InvalidVPCNetworkStateFault,

    -- ** ProvisionedIOPSNotAvailableInAZFault
    _ProvisionedIOPSNotAvailableInAZFault,

    -- ** DBClusterRoleQuotaExceededFault
    _DBClusterRoleQuotaExceededFault,

    -- ** CertificateNotFoundFault
    _CertificateNotFoundFault,

    -- ** DBClusterRoleAlreadyExistsFault
    _DBClusterRoleAlreadyExistsFault,

    -- ** InstallationMediaAlreadyExistsFault
    _InstallationMediaAlreadyExistsFault,

    -- ** DBParameterGroupAlreadyExistsFault
    _DBParameterGroupAlreadyExistsFault,

    -- ** InsufficientDBInstanceCapacityFault
    _InsufficientDBInstanceCapacityFault,

    -- ** SubscriptionAlreadyExistFault
    _SubscriptionAlreadyExistFault,

    -- ** DBInstanceRoleQuotaExceededFault
    _DBInstanceRoleQuotaExceededFault,

    -- ** ReservedDBInstanceQuotaExceededFault
    _ReservedDBInstanceQuotaExceededFault,

    -- ** ReservedDBInstancesOfferingNotFoundFault
    _ReservedDBInstancesOfferingNotFoundFault,

    -- ** DBClusterSnapshotNotFoundFault
    _DBClusterSnapshotNotFoundFault,

    -- ** DBInstanceAutomatedBackupNotFoundFault
    _DBInstanceAutomatedBackupNotFoundFault,

    -- ** SNSNoAuthorizationFault
    _SNSNoAuthorizationFault,

    -- ** InvalidDBSubnetGroupStateFault
    _InvalidDBSubnetGroupStateFault,

    -- ** DBSubnetGroupAlreadyExistsFault
    _DBSubnetGroupAlreadyExistsFault,

    -- ** DBClusterEndpointNotFoundFault
    _DBClusterEndpointNotFoundFault,

    -- ** DBSnapshotAlreadyExistsFault
    _DBSnapshotAlreadyExistsFault,

    -- ** DBUpgradeDependencyFailureFault
    _DBUpgradeDependencyFailureFault,

    -- ** InvalidDBInstanceAutomatedBackupStateFault
    _InvalidDBInstanceAutomatedBackupStateFault,

    -- ** ResourceNotFoundFault
    _ResourceNotFoundFault,

    -- ** SNSTopicARNNotFoundFault
    _SNSTopicARNNotFoundFault,

    -- ** InvalidRestoreFault
    _InvalidRestoreFault,

    -- ** InvalidEventSubscriptionStateFault
    _InvalidEventSubscriptionStateFault,

    -- ** DBClusterEndpointAlreadyExistsFault
    _DBClusterEndpointAlreadyExistsFault,

    -- ** InvalidDBInstanceStateFault
    _InvalidDBInstanceStateFault,

    -- ** DBClusterParameterGroupNotFoundFault
    _DBClusterParameterGroupNotFoundFault,

    -- ** KMSKeyNotAccessibleFault
    _KMSKeyNotAccessibleFault,

    -- ** DBProxyNotFoundFault
    _DBProxyNotFoundFault,

    -- ** InvalidDBClusterEndpointStateFault
    _InvalidDBClusterEndpointStateFault,

    -- ** SnapshotQuotaExceededFault
    _SnapshotQuotaExceededFault,

    -- ** InvalidExportOnlyFault
    _InvalidExportOnlyFault,

    -- ** InsufficientStorageClusterCapacityFault
    _InsufficientStorageClusterCapacityFault,

    -- ** DBInstanceAutomatedBackupQuotaExceededFault
    _DBInstanceAutomatedBackupQuotaExceededFault,

    -- ** StorageTypeNotSupportedFault
    _StorageTypeNotSupportedFault,

    -- ** IAMRoleNotFoundFault
    _IAMRoleNotFoundFault,

    -- ** EventSubscriptionQuotaExceededFault
    _EventSubscriptionQuotaExceededFault,

    -- ** DBClusterEndpointQuotaExceededFault
    _DBClusterEndpointQuotaExceededFault,

    -- ** InvalidGlobalClusterStateFault
    _InvalidGlobalClusterStateFault,

    -- ** DBProxyQuotaExceededFault
    _DBProxyQuotaExceededFault,

    -- ** DBSubnetGroupNotAllowedFault
    _DBSubnetGroupNotAllowedFault,

    -- ** ExportTaskAlreadyExistsFault
    _ExportTaskAlreadyExistsFault,

    -- ** DBProxyTargetGroupNotFoundFault
    _DBProxyTargetGroupNotFoundFault,

    -- ** GlobalClusterAlreadyExistsFault
    _GlobalClusterAlreadyExistsFault,

    -- ** DBProxyTargetNotFoundFault
    _DBProxyTargetNotFoundFault,

    -- ** SharedSnapshotQuotaExceededFault
    _SharedSnapshotQuotaExceededFault,

    -- ** ReservedDBInstanceNotFoundFault
    _ReservedDBInstanceNotFoundFault,

    -- ** DBSubnetQuotaExceededFault
    _DBSubnetQuotaExceededFault,

    -- ** DBInstanceRoleNotFoundFault
    _DBInstanceRoleNotFoundFault,

    -- ** BackupPolicyNotFoundFault
    _BackupPolicyNotFoundFault,

    -- ** IAMRoleMissingPermissionsFault
    _IAMRoleMissingPermissionsFault,

    -- ** DBProxyTargetAlreadyRegisteredFault
    _DBProxyTargetAlreadyRegisteredFault,

    -- ** AuthorizationAlreadyExistsFault
    _AuthorizationAlreadyExistsFault,

    -- ** InvalidDBParameterGroupStateFault
    _InvalidDBParameterGroupStateFault,

    -- ** SNSInvalidTopicFault
    _SNSInvalidTopicFault,

    -- ** SourceNotFoundFault
    _SourceNotFoundFault,

    -- ** PointInTimeRestoreNotEnabledFault
    _PointInTimeRestoreNotEnabledFault,

    -- ** InvalidDBClusterSnapshotStateFault
    _InvalidDBClusterSnapshotStateFault,

    -- ** DBClusterSnapshotAlreadyExistsFault
    _DBClusterSnapshotAlreadyExistsFault,

    -- ** AuthorizationQuotaExceededFault
    _AuthorizationQuotaExceededFault,

    -- ** InstallationMediaNotFoundFault
    _InstallationMediaNotFoundFault,

    -- ** DBParameterGroupNotFoundFault
    _DBParameterGroupNotFoundFault,

    -- ** DBClusterRoleNotFoundFault
    _DBClusterRoleNotFoundFault,

    -- ** DBSubnetGroupDoesNotCoverEnoughAZs
    _DBSubnetGroupDoesNotCoverEnoughAZs,

    -- ** InvalidDBSubnetStateFault
    _InvalidDBSubnetStateFault,

    -- ** DomainNotFoundFault
    _DomainNotFoundFault,

    -- ** InvalidDBSubnetGroupFault
    _InvalidDBSubnetGroupFault,

    -- ** SubnetAlreadyInUse
    _SubnetAlreadyInUse,

    -- ** DBClusterBacktrackNotFoundFault
    _DBClusterBacktrackNotFoundFault,

    -- ** DBProxyAlreadyExistsFault
    _DBProxyAlreadyExistsFault,

    -- ** DBSecurityGroupNotSupportedFault
    _DBSecurityGroupNotSupportedFault,

    -- ** StorageQuotaExceededFault
    _StorageQuotaExceededFault,

    -- ** InstanceQuotaExceededFault
    _InstanceQuotaExceededFault,

    -- ** InvalidDBSnapshotStateFault
    _InvalidDBSnapshotStateFault,

    -- ** DBInstanceNotFoundFault
    _DBInstanceNotFoundFault,

    -- ** InvalidDBProxyStateFault
    _InvalidDBProxyStateFault,

    -- ** GlobalClusterQuotaExceededFault
    _GlobalClusterQuotaExceededFault,

    -- ** DBSecurityGroupNotFoundFault
    _DBSecurityGroupNotFoundFault,

    -- ** DBSecurityGroupAlreadyExistsFault
    _DBSecurityGroupAlreadyExistsFault,

    -- ** DBInstanceAlreadyExistsFault
    _DBInstanceAlreadyExistsFault,

    -- ** OptionGroupQuotaExceededFault
    _OptionGroupQuotaExceededFault,

    -- ** InvalidDBSecurityGroupStateFault
    _InvalidDBSecurityGroupStateFault,

    -- ** DBSnapshotNotFoundFault
    _DBSnapshotNotFoundFault,

    -- ** DBSubnetGroupNotFoundFault
    _DBSubnetGroupNotFoundFault,

    -- ** DBClusterQuotaExceededFault
    _DBClusterQuotaExceededFault,

    -- ** InvalidDBClusterCapacityFault
    _InvalidDBClusterCapacityFault,

    -- ** CustomAvailabilityZoneQuotaExceededFault
    _CustomAvailabilityZoneQuotaExceededFault,

    -- ** ExportTaskNotFoundFault
    _ExportTaskNotFoundFault,

    -- ** InsufficientAvailableIPsInSubnetFault
    _InsufficientAvailableIPsInSubnetFault,

    -- ** DBSecurityGroupQuotaExceededFault
    _DBSecurityGroupQuotaExceededFault,

    -- ** InvalidDBClusterStateFault
    _InvalidDBClusterStateFault,

    -- ** OptionGroupAlreadyExistsFault
    _OptionGroupAlreadyExistsFault,

    -- ** CustomAvailabilityZoneAlreadyExistsFault
    _CustomAvailabilityZoneAlreadyExistsFault,

    -- ** DBClusterAlreadyExistsFault
    _DBClusterAlreadyExistsFault,

    -- ** InvalidOptionGroupStateFault
    _InvalidOptionGroupStateFault,

    -- ** GlobalClusterNotFoundFault
    _GlobalClusterNotFoundFault,

    -- ** InvalidS3BucketFault
    _InvalidS3BucketFault,

    -- ** InvalidExportSourceStateFault
    _InvalidExportSourceStateFault,

    -- ** DBClusterNotFoundFault
    _DBClusterNotFoundFault,

    -- ** CustomAvailabilityZoneNotFoundFault
    _CustomAvailabilityZoneNotFoundFault,

    -- ** DBSubnetGroupQuotaExceededFault
    _DBSubnetGroupQuotaExceededFault,

    -- ** OptionGroupNotFoundFault
    _OptionGroupNotFoundFault,

    -- ** DBLogFileNotFoundFault
    _DBLogFileNotFoundFault,

    -- ** InvalidExportTaskStateFault
    _InvalidExportTaskStateFault,

    -- ** SubscriptionCategoryNotFoundFault
    _SubscriptionCategoryNotFoundFault,

    -- ** AuthorizationNotFoundFault
    _AuthorizationNotFoundFault,

    -- ** InvalidSubnet
    _InvalidSubnet,

    -- ** SubscriptionNotFoundFault
    _SubscriptionNotFoundFault,

    -- * Waiters
    -- $waiters

    -- ** DBSnapshotDeleted
    dbSnapshotDeleted,

    -- ** DBSnapshotCompleted
    dbSnapshotCompleted,

    -- ** DBInstanceAvailable
    dbInstanceAvailable,

    -- ** DBSnapshotAvailable
    dbSnapshotAvailable,

    -- ** DBClusterSnapshotDeleted
    dbClusterSnapshotDeleted,

    -- ** DBInstanceDeleted
    dbInstanceDeleted,

    -- ** DBClusterSnapshotAvailable
    dbClusterSnapshotAvailable,

    -- * Operations
    -- $operations

    -- ** ResetDBClusterParameterGroup
    module Network.AWS.RDS.ResetDBClusterParameterGroup,

    -- ** StopDBInstance
    module Network.AWS.RDS.StopDBInstance,

    -- ** ModifyDBInstance
    module Network.AWS.RDS.ModifyDBInstance,

    -- ** DescribeEventCategories
    module Network.AWS.RDS.DescribeEventCategories,

    -- ** StartDBInstance
    module Network.AWS.RDS.StartDBInstance,

    -- ** CopyDBClusterParameterGroup
    module Network.AWS.RDS.CopyDBClusterParameterGroup,

    -- ** DescribeExportTasks (Paginated)
    module Network.AWS.RDS.DescribeExportTasks,

    -- ** CopyDBSnapshot
    module Network.AWS.RDS.CopyDBSnapshot,

    -- ** PromoteReadReplica
    module Network.AWS.RDS.PromoteReadReplica,

    -- ** DescribeDBSnapshots (Paginated)
    module Network.AWS.RDS.DescribeDBSnapshots,

    -- ** ModifyDBCluster
    module Network.AWS.RDS.ModifyDBCluster,

    -- ** ModifyOptionGroup
    module Network.AWS.RDS.ModifyOptionGroup,

    -- ** StopDBCluster
    module Network.AWS.RDS.StopDBCluster,

    -- ** CreateDBClusterSnapshot
    module Network.AWS.RDS.CreateDBClusterSnapshot,

    -- ** DescribeDBClusterParameterGroups (Paginated)
    module Network.AWS.RDS.DescribeDBClusterParameterGroups,

    -- ** DescribeDBEngineVersions (Paginated)
    module Network.AWS.RDS.DescribeDBEngineVersions,

    -- ** StartDBCluster
    module Network.AWS.RDS.StartDBCluster,

    -- ** DescribeOptionGroupOptions (Paginated)
    module Network.AWS.RDS.DescribeOptionGroupOptions,

    -- ** DeleteInstallationMedia
    module Network.AWS.RDS.DeleteInstallationMedia,

    -- ** CopyOptionGroup
    module Network.AWS.RDS.CopyOptionGroup,

    -- ** DescribeDBInstanceAutomatedBackups (Paginated)
    module Network.AWS.RDS.DescribeDBInstanceAutomatedBackups,

    -- ** ModifyGlobalCluster
    module Network.AWS.RDS.ModifyGlobalCluster,

    -- ** DescribeDBProxies (Paginated)
    module Network.AWS.RDS.DescribeDBProxies,

    -- ** RestoreDBClusterToPointInTime
    module Network.AWS.RDS.RestoreDBClusterToPointInTime,

    -- ** StopActivityStream
    module Network.AWS.RDS.StopActivityStream,

    -- ** CreateDBInstanceReadReplica
    module Network.AWS.RDS.CreateDBInstanceReadReplica,

    -- ** DescribeValidDBInstanceModifications
    module Network.AWS.RDS.DescribeValidDBInstanceModifications,

    -- ** StartExportTask
    module Network.AWS.RDS.StartExportTask,

    -- ** DescribeDBParameters (Paginated)
    module Network.AWS.RDS.DescribeDBParameters,

    -- ** DescribeDBInstances (Paginated)
    module Network.AWS.RDS.DescribeDBInstances,

    -- ** DescribeEventSubscriptions (Paginated)
    module Network.AWS.RDS.DescribeEventSubscriptions,

    -- ** RestoreDBInstanceFromS3
    module Network.AWS.RDS.RestoreDBInstanceFromS3,

    -- ** StartActivityStream
    module Network.AWS.RDS.StartActivityStream,

    -- ** DescribeDBClusterEndpoints (Paginated)
    module Network.AWS.RDS.DescribeDBClusterEndpoints,

    -- ** ModifyCertificates
    module Network.AWS.RDS.ModifyCertificates,

    -- ** DescribeDBClusterSnapshots (Paginated)
    module Network.AWS.RDS.DescribeDBClusterSnapshots,

    -- ** DeleteDBClusterEndpoint
    module Network.AWS.RDS.DeleteDBClusterEndpoint,

    -- ** ModifyDBSnapshotAttribute
    module Network.AWS.RDS.ModifyDBSnapshotAttribute,

    -- ** DescribeReservedDBInstancesOfferings (Paginated)
    module Network.AWS.RDS.DescribeReservedDBInstancesOfferings,

    -- ** DeleteDBInstance
    module Network.AWS.RDS.DeleteDBInstance,

    -- ** RebootDBInstance
    module Network.AWS.RDS.RebootDBInstance,

    -- ** DeleteEventSubscription
    module Network.AWS.RDS.DeleteEventSubscription,

    -- ** DescribeDBParameterGroups (Paginated)
    module Network.AWS.RDS.DescribeDBParameterGroups,

    -- ** DeleteDBInstanceAutomatedBackup
    module Network.AWS.RDS.DeleteDBInstanceAutomatedBackup,

    -- ** DescribeDBClusterBacktracks (Paginated)
    module Network.AWS.RDS.DescribeDBClusterBacktracks,

    -- ** CreateDBClusterParameterGroup
    module Network.AWS.RDS.CreateDBClusterParameterGroup,

    -- ** CreateDBProxy
    module Network.AWS.RDS.CreateDBProxy,

    -- ** DescribeDBClusterParameters (Paginated)
    module Network.AWS.RDS.DescribeDBClusterParameters,

    -- ** DeleteDBSubnetGroup
    module Network.AWS.RDS.DeleteDBSubnetGroup,

    -- ** DescribeAccountAttributes
    module Network.AWS.RDS.DescribeAccountAttributes,

    -- ** RemoveTagsFromResource
    module Network.AWS.RDS.RemoveTagsFromResource,

    -- ** CreateDBSecurityGroup
    module Network.AWS.RDS.CreateDBSecurityGroup,

    -- ** DescribeCertificates (Paginated)
    module Network.AWS.RDS.DescribeCertificates,

    -- ** CreateDBInstance
    module Network.AWS.RDS.CreateDBInstance,

    -- ** RemoveRoleFromDBInstance
    module Network.AWS.RDS.RemoveRoleFromDBInstance,

    -- ** DescribeEngineDefaultClusterParameters (Paginated)
    module Network.AWS.RDS.DescribeEngineDefaultClusterParameters,

    -- ** StartDBInstanceAutomatedBackupsReplication
    module Network.AWS.RDS.StartDBInstanceAutomatedBackupsReplication,

    -- ** CreateOptionGroup
    module Network.AWS.RDS.CreateOptionGroup,

    -- ** CreateCustomAvailabilityZone
    module Network.AWS.RDS.CreateCustomAvailabilityZone,

    -- ** StopDBInstanceAutomatedBackupsReplication
    module Network.AWS.RDS.StopDBInstanceAutomatedBackupsReplication,

    -- ** FailoverDBCluster
    module Network.AWS.RDS.FailoverDBCluster,

    -- ** RemoveRoleFromDBCluster
    module Network.AWS.RDS.RemoveRoleFromDBCluster,

    -- ** DescribeDBSnapshotAttributes
    module Network.AWS.RDS.DescribeDBSnapshotAttributes,

    -- ** CreateDBCluster
    module Network.AWS.RDS.CreateDBCluster,

    -- ** ApplyPendingMaintenanceAction
    module Network.AWS.RDS.ApplyPendingMaintenanceAction,

    -- ** BacktrackDBCluster
    module Network.AWS.RDS.BacktrackDBCluster,

    -- ** DescribeReservedDBInstances (Paginated)
    module Network.AWS.RDS.DescribeReservedDBInstances,

    -- ** DeleteDBCluster
    module Network.AWS.RDS.DeleteDBCluster,

    -- ** DeleteOptionGroup
    module Network.AWS.RDS.DeleteOptionGroup,

    -- ** DescribePendingMaintenanceActions (Paginated)
    module Network.AWS.RDS.DescribePendingMaintenanceActions,

    -- ** DescribeDBProxyTargetGroups (Paginated)
    module Network.AWS.RDS.DescribeDBProxyTargetGroups,

    -- ** ModifyDBClusterParameterGroup
    module Network.AWS.RDS.ModifyDBClusterParameterGroup,

    -- ** DescribeDBClusterSnapshotAttributes
    module Network.AWS.RDS.DescribeDBClusterSnapshotAttributes,

    -- ** DescribeOptionGroups (Paginated)
    module Network.AWS.RDS.DescribeOptionGroups,

    -- ** DescribeDBClusters (Paginated)
    module Network.AWS.RDS.DescribeDBClusters,

    -- ** DescribeEvents (Paginated)
    module Network.AWS.RDS.DescribeEvents,

    -- ** ModifyDBProxy
    module Network.AWS.RDS.ModifyDBProxy,

    -- ** DescribeDBLogFiles (Paginated)
    module Network.AWS.RDS.DescribeDBLogFiles,

    -- ** RestoreDBClusterFromS3
    module Network.AWS.RDS.RestoreDBClusterFromS3,

    -- ** CancelExportTask
    module Network.AWS.RDS.CancelExportTask,

    -- ** DescribeGlobalClusters (Paginated)
    module Network.AWS.RDS.DescribeGlobalClusters,

    -- ** AddSourceIdentifierToSubscription
    module Network.AWS.RDS.AddSourceIdentifierToSubscription,

    -- ** ModifyEventSubscription
    module Network.AWS.RDS.ModifyEventSubscription,

    -- ** ModifyDBClusterEndpoint
    module Network.AWS.RDS.ModifyDBClusterEndpoint,

    -- ** ModifyDBClusterSnapshotAttribute
    module Network.AWS.RDS.ModifyDBClusterSnapshotAttribute,

    -- ** DescribeDBSubnetGroups (Paginated)
    module Network.AWS.RDS.DescribeDBSubnetGroups,

    -- ** ModifyDBProxyTargetGroup
    module Network.AWS.RDS.ModifyDBProxyTargetGroup,

    -- ** CreateDBParameterGroup
    module Network.AWS.RDS.CreateDBParameterGroup,

    -- ** DeleteDBClusterSnapshot
    module Network.AWS.RDS.DeleteDBClusterSnapshot,

    -- ** RemoveFromGlobalCluster
    module Network.AWS.RDS.RemoveFromGlobalCluster,

    -- ** DescribeDBSecurityGroups (Paginated)
    module Network.AWS.RDS.DescribeDBSecurityGroups,

    -- ** AddTagsToResource
    module Network.AWS.RDS.AddTagsToResource,

    -- ** RegisterDBProxyTargets
    module Network.AWS.RDS.RegisterDBProxyTargets,

    -- ** DownloadDBLogFilePortion (Paginated)
    module Network.AWS.RDS.DownloadDBLogFilePortion,

    -- ** ModifyCurrentDBClusterCapacity
    module Network.AWS.RDS.ModifyCurrentDBClusterCapacity,

    -- ** AddRoleToDBInstance
    module Network.AWS.RDS.AddRoleToDBInstance,

    -- ** DeleteDBParameterGroup
    module Network.AWS.RDS.DeleteDBParameterGroup,

    -- ** CreateDBSnapshot
    module Network.AWS.RDS.CreateDBSnapshot,

    -- ** CreateDBSubnetGroup
    module Network.AWS.RDS.CreateDBSubnetGroup,

    -- ** DescribeOrderableDBInstanceOptions (Paginated)
    module Network.AWS.RDS.DescribeOrderableDBInstanceOptions,

    -- ** DeleteDBSecurityGroup
    module Network.AWS.RDS.DeleteDBSecurityGroup,

    -- ** RestoreDBClusterFromSnapshot
    module Network.AWS.RDS.RestoreDBClusterFromSnapshot,

    -- ** RestoreDBInstanceFromDBSnapshot
    module Network.AWS.RDS.RestoreDBInstanceFromDBSnapshot,

    -- ** CreateDBClusterEndpoint
    module Network.AWS.RDS.CreateDBClusterEndpoint,

    -- ** CreateEventSubscription
    module Network.AWS.RDS.CreateEventSubscription,

    -- ** DeleteDBSnapshot
    module Network.AWS.RDS.DeleteDBSnapshot,

    -- ** DeleteDBClusterParameterGroup
    module Network.AWS.RDS.DeleteDBClusterParameterGroup,

    -- ** DescribeSourceRegions (Paginated)
    module Network.AWS.RDS.DescribeSourceRegions,

    -- ** PurchaseReservedDBInstancesOffering
    module Network.AWS.RDS.PurchaseReservedDBInstancesOffering,

    -- ** AuthorizeDBSecurityGroupIngress
    module Network.AWS.RDS.AuthorizeDBSecurityGroupIngress,

    -- ** DeleteDBProxy
    module Network.AWS.RDS.DeleteDBProxy,

    -- ** RevokeDBSecurityGroupIngress
    module Network.AWS.RDS.RevokeDBSecurityGroupIngress,

    -- ** ModifyDBParameterGroup
    module Network.AWS.RDS.ModifyDBParameterGroup,

    -- ** DeregisterDBProxyTargets
    module Network.AWS.RDS.DeregisterDBProxyTargets,

    -- ** DeleteGlobalCluster
    module Network.AWS.RDS.DeleteGlobalCluster,

    -- ** PromoteReadReplicaDBCluster
    module Network.AWS.RDS.PromoteReadReplicaDBCluster,

    -- ** CreateGlobalCluster
    module Network.AWS.RDS.CreateGlobalCluster,

    -- ** ResetDBParameterGroup
    module Network.AWS.RDS.ResetDBParameterGroup,

    -- ** DescribeDBProxyTargets (Paginated)
    module Network.AWS.RDS.DescribeDBProxyTargets,

    -- ** ImportInstallationMedia
    module Network.AWS.RDS.ImportInstallationMedia,

    -- ** DeleteCustomAvailabilityZone
    module Network.AWS.RDS.DeleteCustomAvailabilityZone,

    -- ** FailoverGlobalCluster
    module Network.AWS.RDS.FailoverGlobalCluster,

    -- ** RemoveSourceIdentifierFromSubscription
    module Network.AWS.RDS.RemoveSourceIdentifierFromSubscription,

    -- ** CopyDBClusterSnapshot
    module Network.AWS.RDS.CopyDBClusterSnapshot,

    -- ** DescribeInstallationMedia (Paginated)
    module Network.AWS.RDS.DescribeInstallationMedia,

    -- ** CopyDBParameterGroup
    module Network.AWS.RDS.CopyDBParameterGroup,

    -- ** RestoreDBInstanceToPointInTime
    module Network.AWS.RDS.RestoreDBInstanceToPointInTime,

    -- ** ListTagsForResource
    module Network.AWS.RDS.ListTagsForResource,

    -- ** ModifyDBSnapshot
    module Network.AWS.RDS.ModifyDBSnapshot,

    -- ** ModifyDBSubnetGroup
    module Network.AWS.RDS.ModifyDBSubnetGroup,

    -- ** DescribeEngineDefaultParameters (Paginated)
    module Network.AWS.RDS.DescribeEngineDefaultParameters,

    -- ** DescribeCustomAvailabilityZones (Paginated)
    module Network.AWS.RDS.DescribeCustomAvailabilityZones,

    -- ** AddRoleToDBCluster
    module Network.AWS.RDS.AddRoleToDBCluster,

    -- * Types

    -- ** ActivityStreamMode
    ActivityStreamMode (..),

    -- ** ActivityStreamStatus
    ActivityStreamStatus (..),

    -- ** ApplyMethod
    ApplyMethod (..),

    -- ** AuthScheme
    AuthScheme (..),

    -- ** DBProxyStatus
    DBProxyStatus (..),

    -- ** EngineFamily
    EngineFamily (..),

    -- ** FailoverStatus
    FailoverStatus (..),

    -- ** IAMAuthMode
    IAMAuthMode (..),

    -- ** ReplicaMode
    ReplicaMode (..),

    -- ** SourceType
    SourceType (..),

    -- ** TargetHealthReason
    TargetHealthReason (..),

    -- ** TargetState
    TargetState (..),

    -- ** TargetType
    TargetType (..),

    -- ** WriteForwardingStatus
    WriteForwardingStatus (..),

    -- ** AccountQuota
    AccountQuota,
    accountQuota,
    aqUsed,
    aqAccountQuotaName,
    aqMax,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azName,

    -- ** AvailableProcessorFeature
    AvailableProcessorFeature,
    availableProcessorFeature,
    apfAllowedValues,
    apfName,
    apfDefaultValue,

    -- ** Certificate
    Certificate,
    certificate,
    cCertificateIdentifier,
    cValidFrom,
    cCustomerOverride,
    cCertificateARN,
    cCertificateType,
    cThumbprint,
    cCustomerOverrideValidTill,
    cValidTill,

    -- ** CharacterSet
    CharacterSet,
    characterSet,
    csCharacterSetName,
    csCharacterSetDescription,

    -- ** CloudwatchLogsExportConfiguration
    CloudwatchLogsExportConfiguration,
    cloudwatchLogsExportConfiguration,
    clecEnableLogTypes,
    clecDisableLogTypes,

    -- ** ClusterPendingModifiedValues
    ClusterPendingModifiedValues,
    clusterPendingModifiedValues,
    cpmvMasterUserPassword,
    cpmvPendingCloudwatchLogsExports,
    cpmvDBClusterIdentifier,
    cpmvEngineVersion,
    cpmvIAMDatabaseAuthenticationEnabled,

    -- ** ConnectionPoolConfiguration
    ConnectionPoolConfiguration,
    connectionPoolConfiguration,
    cpcSessionPinningFilters,
    cpcMaxIdleConnectionsPercent,
    cpcConnectionBorrowTimeout,
    cpcInitQuery,
    cpcMaxConnectionsPercent,

    -- ** ConnectionPoolConfigurationInfo
    ConnectionPoolConfigurationInfo,
    connectionPoolConfigurationInfo,
    cpciSessionPinningFilters,
    cpciMaxIdleConnectionsPercent,
    cpciConnectionBorrowTimeout,
    cpciInitQuery,
    cpciMaxConnectionsPercent,

    -- ** CustomAvailabilityZone
    CustomAvailabilityZone,
    customAvailabilityZone,
    cazCustomAvailabilityZoneId,
    cazCustomAvailabilityZoneName,
    cazVPNDetails,
    cazCustomAvailabilityZoneStatus,

    -- ** DBCluster
    DBCluster,
    dbCluster,
    dcBackupRetentionPeriod,
    dcDeletionProtection,
    dcStorageEncrypted,
    dcAssociatedRoles,
    dcVPCSecurityGroups,
    dcPreferredBackupWindow,
    dcDBClusterMembers,
    dcStatus,
    dcBacktrackConsumedChangeRecords,
    dcCrossAccountClone,
    dcAvailabilityZones,
    dcGlobalWriteForwardingStatus,
    dcDBClusterOptionGroupMemberships,
    dcCloneGroupId,
    dcLatestRestorableTime,
    dcDBClusterARN,
    dcDomainMemberships,
    dcActivityStreamKMSKeyId,
    dcReaderEndpoint,
    dcHTTPEndpointEnabled,
    dcClusterCreateTime,
    dcEarliestRestorableTime,
    dcEngineMode,
    dcActivityStreamStatus,
    dcEnabledCloudwatchLogsExports,
    dcHostedZoneId,
    dcDBSubnetGroup,
    dcReadReplicaIdentifiers,
    dcMasterUsername,
    dcMultiAZ,
    dcKMSKeyId,
    dcDBClusterIdentifier,
    dcCapacity,
    dcEngineVersion,
    dcPreferredMaintenanceWindow,
    dcCharacterSetName,
    dcPort,
    dcPercentProgress,
    dcEngine,
    dcPendingModifiedValues,
    dcDBClusterResourceId,
    dcCopyTagsToSnapshot,
    dcCustomEndpoints,
    dcEndpoint,
    dcScalingConfigurationInfo,
    dcEarliestBacktrackTime,
    dcTagList,
    dcAllocatedStorage,
    dcBacktrackWindow,
    dcIAMDatabaseAuthenticationEnabled,
    dcGlobalWriteForwardingRequested,
    dcDBClusterParameterGroup,
    dcReplicationSourceIdentifier,
    dcDatabaseName,
    dcActivityStreamKinesisStreamName,
    dcActivityStreamMode,

    -- ** DBClusterBacktrack
    DBClusterBacktrack,
    dbClusterBacktrack,
    dcbStatus,
    dcbBacktrackIdentifier,
    dcbBacktrackTo,
    dcbDBClusterIdentifier,
    dcbBacktrackRequestCreationTime,
    dcbBacktrackedFrom,

    -- ** DBClusterEndpoint
    DBClusterEndpoint,
    dbClusterEndpoint,
    dceDBClusterEndpointIdentifier,
    dceStatus,
    dceExcludedMembers,
    dceEndpointType,
    dceCustomEndpointType,
    dceDBClusterEndpointARN,
    dceDBClusterIdentifier,
    dceDBClusterEndpointResourceIdentifier,
    dceEndpoint,
    dceStaticMembers,

    -- ** DBClusterMember
    DBClusterMember,
    dbClusterMember,
    dcmIsClusterWriter,
    dcmDBInstanceIdentifier,
    dcmPromotionTier,
    dcmDBClusterParameterGroupStatus,

    -- ** DBClusterOptionGroupStatus
    DBClusterOptionGroupStatus,
    dbClusterOptionGroupStatus,
    dcogsStatus,
    dcogsDBClusterOptionGroupName,

    -- ** DBClusterParameterGroup
    DBClusterParameterGroup,
    dbClusterParameterGroup,
    dcpgDBClusterParameterGroupARN,
    dcpgDBParameterGroupFamily,
    dcpgDescription,
    dcpgDBClusterParameterGroupName,

    -- ** DBClusterParameterGroupNameMessage
    DBClusterParameterGroupNameMessage,
    dbClusterParameterGroupNameMessage,
    dcpgnmDBClusterParameterGroupName,

    -- ** DBClusterRole
    DBClusterRole,
    dbClusterRole,
    dcrStatus,
    dcrRoleARN,
    dcrFeatureName,

    -- ** DBClusterSnapshot
    DBClusterSnapshot,
    dbClusterSnapshot,
    dcsStorageEncrypted,
    dcsStatus,
    dcsAvailabilityZones,
    dcsClusterCreateTime,
    dcsSnapshotCreateTime,
    dcsEngineMode,
    dcsMasterUsername,
    dcsKMSKeyId,
    dcsDBClusterIdentifier,
    dcsEngineVersion,
    dcsSnapshotType,
    dcsLicenseModel,
    dcsPort,
    dcsPercentProgress,
    dcsEngine,
    dcsDBClusterSnapshotIdentifier,
    dcsSourceDBClusterSnapshotARN,
    dcsTagList,
    dcsVPCId,
    dcsAllocatedStorage,
    dcsIAMDatabaseAuthenticationEnabled,
    dcsDBClusterSnapshotARN,

    -- ** DBClusterSnapshotAttribute
    DBClusterSnapshotAttribute,
    dbClusterSnapshotAttribute,
    dcsaAttributeName,
    dcsaAttributeValues,

    -- ** DBClusterSnapshotAttributesResult
    DBClusterSnapshotAttributesResult,
    dbClusterSnapshotAttributesResult,
    dcsarDBClusterSnapshotAttributes,
    dcsarDBClusterSnapshotIdentifier,

    -- ** DBEngineVersion
    DBEngineVersion,
    dbEngineVersion,
    devStatus,
    devDBEngineVersionDescription,
    devDBEngineDescription,
    devSupportedTimezones,
    devSupportedEngineModes,
    devSupportedNcharCharacterSets,
    devValidUpgradeTarget,
    devEngineVersion,
    devSupportsGlobalDatabases,
    devExportableLogTypes,
    devSupportedCharacterSets,
    devSupportsReadReplica,
    devDBParameterGroupFamily,
    devEngine,
    devSupportedFeatureNames,
    devSupportsLogExportsToCloudwatchLogs,
    devDefaultCharacterSet,
    devSupportsParallelQuery,

    -- ** DBInstance
    DBInstance,
    dbInstance,
    diBackupRetentionPeriod,
    diDeletionProtection,
    diStorageEncrypted,
    diAssociatedRoles,
    diVPCSecurityGroups,
    diPreferredBackupWindow,
    diCACertificateIdentifier,
    diDBSecurityGroups,
    diMaxAllocatedStorage,
    diStatusInfos,
    diStorageType,
    diLatestRestorableTime,
    diDomainMemberships,
    diDBInstancePort,
    diMonitoringInterval,
    diDBParameterGroups,
    diInstanceCreateTime,
    diDBiResourceId,
    diOptionGroupMemberships,
    diListenerEndpoint,
    diMonitoringRoleARN,
    diEnabledCloudwatchLogsExports,
    diDBSubnetGroup,
    diNcharCharacterSetName,
    diMasterUsername,
    diMultiAZ,
    diPubliclyAccessible,
    diPerformanceInsightsKMSKeyId,
    diKMSKeyId,
    diAvailabilityZone,
    diDBClusterIdentifier,
    diCustomerOwnedIPEnabled,
    diEngineVersion,
    diPreferredMaintenanceWindow,
    diCharacterSetName,
    diPerformanceInsightsRetentionPeriod,
    diLicenseModel,
    diDBInstanceIdentifier,
    diPromotionTier,
    diProcessorFeatures,
    diAWSBackupRecoveryPointARN,
    diDBInstanceClass,
    diDBName,
    diEngine,
    diReadReplicaDBClusterIdentifiers,
    diPendingModifiedValues,
    diTDECredentialARN,
    diTimezone,
    diDBInstanceStatus,
    diDBInstanceAutomatedBackupsReplications,
    diCopyTagsToSnapshot,
    diReadReplicaSourceDBInstanceIdentifier,
    diReplicaMode,
    diEndpoint,
    diTagList,
    diPerformanceInsightsEnabled,
    diAllocatedStorage,
    diIAMDatabaseAuthenticationEnabled,
    diSecondaryAvailabilityZone,
    diIOPS,
    diEnhancedMonitoringResourceARN,
    diReadReplicaDBInstanceIdentifiers,
    diAutoMinorVersionUpgrade,
    diDBInstanceARN,

    -- ** DBInstanceAutomatedBackup
    DBInstanceAutomatedBackup,
    dbInstanceAutomatedBackup,
    diabBackupRetentionPeriod,
    diabStatus,
    diabDBInstanceAutomatedBackupsARN,
    diabStorageType,
    diabEncrypted,
    diabOptionGroupName,
    diabInstanceCreateTime,
    diabDBiResourceId,
    diabMasterUsername,
    diabKMSKeyId,
    diabAvailabilityZone,
    diabEngineVersion,
    diabRestoreWindow,
    diabLicenseModel,
    diabDBInstanceIdentifier,
    diabPort,
    diabEngine,
    diabTDECredentialARN,
    diabTimezone,
    diabDBInstanceAutomatedBackupsReplications,
    diabRegion,
    diabVPCId,
    diabAllocatedStorage,
    diabIAMDatabaseAuthenticationEnabled,
    diabIOPS,
    diabDBInstanceARN,

    -- ** DBInstanceAutomatedBackupsReplication
    DBInstanceAutomatedBackupsReplication,
    dbInstanceAutomatedBackupsReplication,
    diabrDBInstanceAutomatedBackupsARN,

    -- ** DBInstanceRole
    DBInstanceRole,
    dbInstanceRole,
    dirStatus,
    dirRoleARN,
    dirFeatureName,

    -- ** DBInstanceStatusInfo
    DBInstanceStatusInfo,
    dbInstanceStatusInfo,
    disiStatus,
    disiMessage,
    disiNormal,
    disiStatusType,

    -- ** DBParameterGroup
    DBParameterGroup,
    dbParameterGroup,
    dpgDBParameterGroupARN,
    dpgDBParameterGroupName,
    dpgDBParameterGroupFamily,
    dpgDescription,

    -- ** DBParameterGroupNameMessage
    DBParameterGroupNameMessage,
    dbParameterGroupNameMessage,
    dpgnmDBParameterGroupName,

    -- ** DBParameterGroupStatus
    DBParameterGroupStatus,
    dbParameterGroupStatus,
    dpgsDBParameterGroupName,
    dpgsParameterApplyStatus,

    -- ** DBProxy
    DBProxy,
    dbProxy,
    dpDBProxyARN,
    dpStatus,
    dpCreatedDate,
    dpRoleARN,
    dpIdleClientTimeout,
    dpVPCSubnetIds,
    dpAuth,
    dpEngineFamily,
    dpVPCSecurityGroupIds,
    dpDebugLogging,
    dpUpdatedDate,
    dpRequireTLS,
    dpEndpoint,
    dpDBProxyName,

    -- ** DBProxyTarget
    DBProxyTarget,
    dbProxyTarget,
    dptTrackedClusterId,
    dptRDSResourceId,
    dptTargetARN,
    dptPort,
    dptEndpoint,
    dptType,
    dptTargetHealth,

    -- ** DBProxyTargetGroup
    DBProxyTargetGroup,
    dbProxyTargetGroup,
    dptgStatus,
    dptgCreatedDate,
    dptgIsDefault,
    dptgTargetGroupName,
    dptgTargetGroupARN,
    dptgConnectionPoolConfig,
    dptgUpdatedDate,
    dptgDBProxyName,

    -- ** DBSecurityGroup
    DBSecurityGroup,
    dbSecurityGroup,
    dbsgOwnerId,
    dbsgDBSecurityGroupName,
    dbsgIPRanges,
    dbsgDBSecurityGroupDescription,
    dbsgEC2SecurityGroups,
    dbsgVPCId,
    dbsgDBSecurityGroupARN,

    -- ** DBSecurityGroupMembership
    DBSecurityGroupMembership,
    dbSecurityGroupMembership,
    dsgmStatus,
    dsgmDBSecurityGroupName,

    -- ** DBSnapshot
    DBSnapshot,
    dbSnapshot,
    dsStatus,
    dsStorageType,
    dsDBSnapshotIdentifier,
    dsEncrypted,
    dsOptionGroupName,
    dsInstanceCreateTime,
    dsDBiResourceId,
    dsSnapshotCreateTime,
    dsMasterUsername,
    dsKMSKeyId,
    dsAvailabilityZone,
    dsDBSnapshotARN,
    dsEngineVersion,
    dsSnapshotType,
    dsSourceDBSnapshotIdentifier,
    dsLicenseModel,
    dsDBInstanceIdentifier,
    dsProcessorFeatures,
    dsPort,
    dsPercentProgress,
    dsEngine,
    dsTDECredentialARN,
    dsTimezone,
    dsTagList,
    dsVPCId,
    dsAllocatedStorage,
    dsSourceRegion,
    dsIAMDatabaseAuthenticationEnabled,
    dsIOPS,

    -- ** DBSnapshotAttribute
    DBSnapshotAttribute,
    dbSnapshotAttribute,
    dsaAttributeName,
    dsaAttributeValues,

    -- ** DBSnapshotAttributesResult
    DBSnapshotAttributesResult,
    dbSnapshotAttributesResult,
    dsarDBSnapshotIdentifier,
    dsarDBSnapshotAttributes,

    -- ** DBSubnetGroup
    DBSubnetGroup,
    dbSubnetGroup,
    dsgSubnetGroupStatus,
    dsgDBSubnetGroupName,
    dsgDBSubnetGroupARN,
    dsgDBSubnetGroupDescription,
    dsgSubnets,
    dsgVPCId,

    -- ** DescribeDBLogFilesDetails
    DescribeDBLogFilesDetails,
    describeDBLogFilesDetails,
    ddlfdLastWritten,
    ddlfdLogFileName,
    ddlfdSize,

    -- ** DomainMembership
    DomainMembership,
    domainMembership,
    dmStatus,
    dmDomain,
    dmIAMRoleName,
    dmFQDN,

    -- ** DoubleRange
    DoubleRange,
    doubleRange,
    drTo,
    drFrom,

    -- ** EC2SecurityGroup
    EC2SecurityGroup,
    ec2SecurityGroup,
    esgStatus,
    esgEC2SecurityGroupOwnerId,
    esgEC2SecurityGroupId,
    esgEC2SecurityGroupName,

    -- ** Endpoint
    Endpoint,
    endpoint,
    eAddress,
    eHostedZoneId,
    ePort,

    -- ** EngineDefaults
    EngineDefaults,
    engineDefaults,
    edDBParameterGroupFamily,
    edParameters,
    edMarker,

    -- ** Event
    Event,
    event,
    eMessage,
    eEventCategories,
    eDate,
    eSourceIdentifier,
    eSourceARN,
    eSourceType,

    -- ** EventCategoriesMap
    EventCategoriesMap,
    eventCategoriesMap,
    ecmEventCategories,
    ecmSourceType,

    -- ** EventSubscription
    EventSubscription,
    eventSubscription,
    esCustSubscriptionId,
    esStatus,
    esSourceIdsList,
    esEventCategoriesList,
    esEnabled,
    esEventSubscriptionARN,
    esSubscriptionCreationTime,
    esCustomerAWSId,
    esSourceType,
    esSNSTopicARN,

    -- ** ExportTask
    ExportTask,
    exportTask,
    etTaskEndTime,
    etIAMRoleARN,
    etStatus,
    etTotalExtractedDataInGB,
    etWarningMessage,
    etSnapshotTime,
    etS3Bucket,
    etExportOnly,
    etKMSKeyId,
    etFailureCause,
    etPercentProgress,
    etSourceARN,
    etS3Prefix,
    etTaskStartTime,
    etExportTaskIdentifier,

    -- ** FailoverState
    FailoverState,
    failoverState,
    fsStatus,
    fsToDBClusterARN,
    fsFromDBClusterARN,

    -- ** Filter
    Filter,
    filter',
    fName,
    fValues,

    -- ** GlobalCluster
    GlobalCluster,
    globalCluster,
    gcDeletionProtection,
    gcStorageEncrypted,
    gcStatus,
    gcFailoverState,
    gcEngineVersion,
    gcGlobalClusterARN,
    gcEngine,
    gcGlobalClusterResourceId,
    gcGlobalClusterMembers,
    gcGlobalClusterIdentifier,
    gcDatabaseName,

    -- ** GlobalClusterMember
    GlobalClusterMember,
    globalClusterMember,
    gcmGlobalWriteForwardingStatus,
    gcmDBClusterARN,
    gcmReaders,
    gcmIsWriter,

    -- ** IPRange
    IPRange,
    ipRange,
    irStatus,
    irCIdRIP,

    -- ** InstallationMedia
    InstallationMedia,
    installationMedia,
    imStatus,
    imCustomAvailabilityZoneId,
    imInstallationMediaId,
    imEngineVersion,
    imOSInstallationMediaPath,
    imFailureCause,
    imEngine,
    imEngineInstallationMediaPath,

    -- ** InstallationMediaFailureCause
    InstallationMediaFailureCause,
    installationMediaFailureCause,
    imfcMessage,

    -- ** MinimumEngineVersionPerAllowedValue
    MinimumEngineVersionPerAllowedValue,
    minimumEngineVersionPerAllowedValue,
    mevpavAllowedValue,
    mevpavMinimumEngineVersion,

    -- ** Option
    Option,
    option,
    oOptionName,
    oOptionVersion,
    oDBSecurityGroupMemberships,
    oOptionDescription,
    oPort,
    oOptionSettings,
    oPersistent,
    oVPCSecurityGroupMemberships,
    oPermanent,

    -- ** OptionConfiguration
    OptionConfiguration,
    optionConfiguration,
    ocOptionVersion,
    ocDBSecurityGroupMemberships,
    ocPort,
    ocOptionSettings,
    ocVPCSecurityGroupMemberships,
    ocOptionName,

    -- ** OptionGroup
    OptionGroup,
    optionGroup,
    ogEngineName,
    ogOptionGroupARN,
    ogAllowsVPCAndNonVPCInstanceMemberships,
    ogOptionGroupName,
    ogOptions,
    ogOptionGroupDescription,
    ogMajorEngineVersion,
    ogVPCId,

    -- ** OptionGroupMembership
    OptionGroupMembership,
    optionGroupMembership,
    ogmStatus,
    ogmOptionGroupName,

    -- ** OptionGroupOption
    OptionGroupOption,
    optionGroupOption,
    ogoOptionsConflictsWith,
    ogoVPCOnly,
    ogoEngineName,
    ogoOptionGroupOptionVersions,
    ogoDefaultPort,
    ogoRequiresAutoMinorEngineVersionUpgrade,
    ogoOptionGroupOptionSettings,
    ogoMajorEngineVersion,
    ogoName,
    ogoMinimumRequiredMinorEngineVersion,
    ogoOptionsDependedOn,
    ogoDescription,
    ogoPortRequired,
    ogoPersistent,
    ogoPermanent,
    ogoSupportsOptionVersionDowngrade,

    -- ** OptionGroupOptionSetting
    OptionGroupOptionSetting,
    optionGroupOptionSetting,
    ogosMinimumEngineVersionPerAllowedValue,
    ogosAllowedValues,
    ogosApplyType,
    ogosSettingName,
    ogosIsRequired,
    ogosSettingDescription,
    ogosIsModifiable,
    ogosDefaultValue,

    -- ** OptionSetting
    OptionSetting,
    optionSetting,
    osIsCollection,
    osAllowedValues,
    osName,
    osApplyType,
    osDescription,
    osValue,
    osDataType,
    osIsModifiable,
    osDefaultValue,

    -- ** OptionVersion
    OptionVersion,
    optionVersion,
    ovIsDefault,
    ovVersion,

    -- ** OrderableDBInstanceOption
    OrderableDBInstanceOption,
    orderableDBInstanceOption,
    odioMinIOPSPerDBInstance,
    odioAvailabilityZones,
    odioSupportsKerberosAuthentication,
    odioSupportsIOPS,
    odioStorageType,
    odioSupportsEnhancedMonitoring,
    odioAvailableProcessorFeatures,
    odioMaxStorageSize,
    odioSupportedEngineModes,
    odioMaxIOPSPerGib,
    odioSupportsStorageEncryption,
    odioMultiAZCapable,
    odioSupportsStorageAutoscaling,
    odioEngineVersion,
    odioMinIOPSPerGib,
    odioSupportsIAMDatabaseAuthentication,
    odioLicenseModel,
    odioSupportsGlobalDatabases,
    odioSupportsPerformanceInsights,
    odioMaxIOPSPerDBInstance,
    odioDBInstanceClass,
    odioOutpostCapable,
    odioEngine,
    odioMinStorageSize,
    odioAvailabilityZoneGroup,
    odioVPC,
    odioReadReplicaCapable,

    -- ** Outpost
    Outpost,
    outpost,
    oARN,

    -- ** Parameter
    Parameter,
    parameter,
    pAllowedValues,
    pSupportedEngineModes,
    pSource,
    pParameterValue,
    pApplyType,
    pParameterName,
    pDescription,
    pApplyMethod,
    pDataType,
    pIsModifiable,
    pMinimumEngineVersion,

    -- ** PendingCloudwatchLogsExports
    PendingCloudwatchLogsExports,
    pendingCloudwatchLogsExports,
    pcleLogTypesToDisable,
    pcleLogTypesToEnable,

    -- ** PendingMaintenanceAction
    PendingMaintenanceAction,
    pendingMaintenanceAction,
    pmaForcedApplyDate,
    pmaOptInStatus,
    pmaAutoAppliedAfterDate,
    pmaCurrentApplyDate,
    pmaAction,
    pmaDescription,

    -- ** PendingModifiedValues
    PendingModifiedValues,
    pendingModifiedValues,
    pmvBackupRetentionPeriod,
    pmvCACertificateIdentifier,
    pmvStorageType,
    pmvDBSubnetGroupName,
    pmvMasterUserPassword,
    pmvMultiAZ,
    pmvPendingCloudwatchLogsExports,
    pmvEngineVersion,
    pmvLicenseModel,
    pmvDBInstanceIdentifier,
    pmvProcessorFeatures,
    pmvPort,
    pmvDBInstanceClass,
    pmvAllocatedStorage,
    pmvIAMDatabaseAuthenticationEnabled,
    pmvIOPS,

    -- ** ProcessorFeature
    ProcessorFeature,
    processorFeature,
    pfName,
    pfValue,

    -- ** Range
    Range,
    range,
    rTo,
    rFrom,
    rStep,

    -- ** RecurringCharge
    RecurringCharge,
    recurringCharge,
    rcRecurringChargeFrequency,
    rcRecurringChargeAmount,

    -- ** ReservedDBInstance
    ReservedDBInstance,
    reservedDBInstance,
    rdiDuration,
    rdiReservedDBInstanceARN,
    rdiStartTime,
    rdiCurrencyCode,
    rdiMultiAZ,
    rdiState,
    rdiDBInstanceCount,
    rdiDBInstanceClass,
    rdiReservedDBInstanceId,
    rdiFixedPrice,
    rdiLeaseId,
    rdiUsagePrice,
    rdiOfferingType,
    rdiRecurringCharges,
    rdiProductDescription,
    rdiReservedDBInstancesOfferingId,

    -- ** ReservedDBInstancesOffering
    ReservedDBInstancesOffering,
    reservedDBInstancesOffering,
    rdioDuration,
    rdioCurrencyCode,
    rdioMultiAZ,
    rdioDBInstanceClass,
    rdioFixedPrice,
    rdioUsagePrice,
    rdioOfferingType,
    rdioRecurringCharges,
    rdioProductDescription,
    rdioReservedDBInstancesOfferingId,

    -- ** ResourcePendingMaintenanceActions
    ResourcePendingMaintenanceActions,
    resourcePendingMaintenanceActions,
    rpmaPendingMaintenanceActionDetails,
    rpmaResourceIdentifier,

    -- ** RestoreWindow
    RestoreWindow,
    restoreWindow,
    rwEarliestTime,
    rwLatestTime,

    -- ** ScalingConfiguration
    ScalingConfiguration,
    scalingConfiguration,
    scMaxCapacity,
    scAutoPause,
    scTimeoutAction,
    scSecondsUntilAutoPause,
    scMinCapacity,

    -- ** ScalingConfigurationInfo
    ScalingConfigurationInfo,
    scalingConfigurationInfo,
    sciMaxCapacity,
    sciAutoPause,
    sciTimeoutAction,
    sciSecondsUntilAutoPause,
    sciMinCapacity,

    -- ** SourceRegion
    SourceRegion,
    sourceRegion,
    srRegionName,
    srStatus,
    srSupportsDBInstanceAutomatedBackupsReplication,
    srEndpoint,

    -- ** Subnet
    Subnet,
    subnet,
    sSubnetStatus,
    sSubnetIdentifier,
    sSubnetAvailabilityZone,
    sSubnetOutpost,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** TargetHealth
    TargetHealth,
    targetHealth,
    thState,
    thReason,
    thDescription,

    -- ** Timezone
    Timezone,
    timezone,
    tTimezoneName,

    -- ** UpgradeTarget
    UpgradeTarget,
    upgradeTarget,
    utAutoUpgrade,
    utSupportedEngineModes,
    utEngineVersion,
    utSupportsGlobalDatabases,
    utEngine,
    utDescription,
    utIsMajorVersionUpgrade,
    utSupportsParallelQuery,

    -- ** UserAuthConfig
    UserAuthConfig,
    userAuthConfig,
    uacSecretARN,
    uacIAMAuth,
    uacAuthScheme,
    uacUserName,
    uacDescription,

    -- ** UserAuthConfigInfo
    UserAuthConfigInfo,
    userAuthConfigInfo,
    uaciSecretARN,
    uaciIAMAuth,
    uaciAuthScheme,
    uaciUserName,
    uaciDescription,

    -- ** VPCSecurityGroupMembership
    VPCSecurityGroupMembership,
    vpcSecurityGroupMembership,
    vsgmStatus,
    vsgmVPCSecurityGroupId,

    -- ** VPNDetails
    VPNDetails,
    vpnDetails,
    vdVPNTunnelOriginatorIP,
    vdVPNId,
    vdVPNName,
    vdVPNState,
    vdVPNGatewayIP,
    vdVPNPSK,

    -- ** ValidDBInstanceModificationsMessage
    ValidDBInstanceModificationsMessage,
    validDBInstanceModificationsMessage,
    vdimmValidProcessorFeatures,
    vdimmStorage,

    -- ** ValidStorageOptions
    ValidStorageOptions,
    validStorageOptions,
    vsoStorageType,
    vsoProvisionedIOPS,
    vsoSupportsStorageAutoscaling,
    vsoStorageSize,
    vsoIOPSToStorageRatio,
  )
where

import Network.AWS.RDS.AddRoleToDBCluster
import Network.AWS.RDS.AddRoleToDBInstance
import Network.AWS.RDS.AddSourceIdentifierToSubscription
import Network.AWS.RDS.AddTagsToResource
import Network.AWS.RDS.ApplyPendingMaintenanceAction
import Network.AWS.RDS.AuthorizeDBSecurityGroupIngress
import Network.AWS.RDS.BacktrackDBCluster
import Network.AWS.RDS.CancelExportTask
import Network.AWS.RDS.CopyDBClusterParameterGroup
import Network.AWS.RDS.CopyDBClusterSnapshot
import Network.AWS.RDS.CopyDBParameterGroup
import Network.AWS.RDS.CopyDBSnapshot
import Network.AWS.RDS.CopyOptionGroup
import Network.AWS.RDS.CreateCustomAvailabilityZone
import Network.AWS.RDS.CreateDBCluster
import Network.AWS.RDS.CreateDBClusterEndpoint
import Network.AWS.RDS.CreateDBClusterParameterGroup
import Network.AWS.RDS.CreateDBClusterSnapshot
import Network.AWS.RDS.CreateDBInstance
import Network.AWS.RDS.CreateDBInstanceReadReplica
import Network.AWS.RDS.CreateDBParameterGroup
import Network.AWS.RDS.CreateDBProxy
import Network.AWS.RDS.CreateDBSecurityGroup
import Network.AWS.RDS.CreateDBSnapshot
import Network.AWS.RDS.CreateDBSubnetGroup
import Network.AWS.RDS.CreateEventSubscription
import Network.AWS.RDS.CreateGlobalCluster
import Network.AWS.RDS.CreateOptionGroup
import Network.AWS.RDS.DeleteCustomAvailabilityZone
import Network.AWS.RDS.DeleteDBCluster
import Network.AWS.RDS.DeleteDBClusterEndpoint
import Network.AWS.RDS.DeleteDBClusterParameterGroup
import Network.AWS.RDS.DeleteDBClusterSnapshot
import Network.AWS.RDS.DeleteDBInstance
import Network.AWS.RDS.DeleteDBInstanceAutomatedBackup
import Network.AWS.RDS.DeleteDBParameterGroup
import Network.AWS.RDS.DeleteDBProxy
import Network.AWS.RDS.DeleteDBSecurityGroup
import Network.AWS.RDS.DeleteDBSnapshot
import Network.AWS.RDS.DeleteDBSubnetGroup
import Network.AWS.RDS.DeleteEventSubscription
import Network.AWS.RDS.DeleteGlobalCluster
import Network.AWS.RDS.DeleteInstallationMedia
import Network.AWS.RDS.DeleteOptionGroup
import Network.AWS.RDS.DeregisterDBProxyTargets
import Network.AWS.RDS.DescribeAccountAttributes
import Network.AWS.RDS.DescribeCertificates
import Network.AWS.RDS.DescribeCustomAvailabilityZones
import Network.AWS.RDS.DescribeDBClusterBacktracks
import Network.AWS.RDS.DescribeDBClusterEndpoints
import Network.AWS.RDS.DescribeDBClusterParameterGroups
import Network.AWS.RDS.DescribeDBClusterParameters
import Network.AWS.RDS.DescribeDBClusterSnapshotAttributes
import Network.AWS.RDS.DescribeDBClusterSnapshots
import Network.AWS.RDS.DescribeDBClusters
import Network.AWS.RDS.DescribeDBEngineVersions
import Network.AWS.RDS.DescribeDBInstanceAutomatedBackups
import Network.AWS.RDS.DescribeDBInstances
import Network.AWS.RDS.DescribeDBLogFiles
import Network.AWS.RDS.DescribeDBParameterGroups
import Network.AWS.RDS.DescribeDBParameters
import Network.AWS.RDS.DescribeDBProxies
import Network.AWS.RDS.DescribeDBProxyTargetGroups
import Network.AWS.RDS.DescribeDBProxyTargets
import Network.AWS.RDS.DescribeDBSecurityGroups
import Network.AWS.RDS.DescribeDBSnapshotAttributes
import Network.AWS.RDS.DescribeDBSnapshots
import Network.AWS.RDS.DescribeDBSubnetGroups
import Network.AWS.RDS.DescribeEngineDefaultClusterParameters
import Network.AWS.RDS.DescribeEngineDefaultParameters
import Network.AWS.RDS.DescribeEventCategories
import Network.AWS.RDS.DescribeEventSubscriptions
import Network.AWS.RDS.DescribeEvents
import Network.AWS.RDS.DescribeExportTasks
import Network.AWS.RDS.DescribeGlobalClusters
import Network.AWS.RDS.DescribeInstallationMedia
import Network.AWS.RDS.DescribeOptionGroupOptions
import Network.AWS.RDS.DescribeOptionGroups
import Network.AWS.RDS.DescribeOrderableDBInstanceOptions
import Network.AWS.RDS.DescribePendingMaintenanceActions
import Network.AWS.RDS.DescribeReservedDBInstances
import Network.AWS.RDS.DescribeReservedDBInstancesOfferings
import Network.AWS.RDS.DescribeSourceRegions
import Network.AWS.RDS.DescribeValidDBInstanceModifications
import Network.AWS.RDS.DownloadDBLogFilePortion
import Network.AWS.RDS.FailoverDBCluster
import Network.AWS.RDS.FailoverGlobalCluster
import Network.AWS.RDS.ImportInstallationMedia
import Network.AWS.RDS.ListTagsForResource
import Network.AWS.RDS.ModifyCertificates
import Network.AWS.RDS.ModifyCurrentDBClusterCapacity
import Network.AWS.RDS.ModifyDBCluster
import Network.AWS.RDS.ModifyDBClusterEndpoint
import Network.AWS.RDS.ModifyDBClusterParameterGroup
import Network.AWS.RDS.ModifyDBClusterSnapshotAttribute
import Network.AWS.RDS.ModifyDBInstance
import Network.AWS.RDS.ModifyDBParameterGroup
import Network.AWS.RDS.ModifyDBProxy
import Network.AWS.RDS.ModifyDBProxyTargetGroup
import Network.AWS.RDS.ModifyDBSnapshot
import Network.AWS.RDS.ModifyDBSnapshotAttribute
import Network.AWS.RDS.ModifyDBSubnetGroup
import Network.AWS.RDS.ModifyEventSubscription
import Network.AWS.RDS.ModifyGlobalCluster
import Network.AWS.RDS.ModifyOptionGroup
import Network.AWS.RDS.PromoteReadReplica
import Network.AWS.RDS.PromoteReadReplicaDBCluster
import Network.AWS.RDS.PurchaseReservedDBInstancesOffering
import Network.AWS.RDS.RebootDBInstance
import Network.AWS.RDS.RegisterDBProxyTargets
import Network.AWS.RDS.RemoveFromGlobalCluster
import Network.AWS.RDS.RemoveRoleFromDBCluster
import Network.AWS.RDS.RemoveRoleFromDBInstance
import Network.AWS.RDS.RemoveSourceIdentifierFromSubscription
import Network.AWS.RDS.RemoveTagsFromResource
import Network.AWS.RDS.ResetDBClusterParameterGroup
import Network.AWS.RDS.ResetDBParameterGroup
import Network.AWS.RDS.RestoreDBClusterFromS3
import Network.AWS.RDS.RestoreDBClusterFromSnapshot
import Network.AWS.RDS.RestoreDBClusterToPointInTime
import Network.AWS.RDS.RestoreDBInstanceFromDBSnapshot
import Network.AWS.RDS.RestoreDBInstanceFromS3
import Network.AWS.RDS.RestoreDBInstanceToPointInTime
import Network.AWS.RDS.RevokeDBSecurityGroupIngress
import Network.AWS.RDS.StartActivityStream
import Network.AWS.RDS.StartDBCluster
import Network.AWS.RDS.StartDBInstance
import Network.AWS.RDS.StartDBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.StartExportTask
import Network.AWS.RDS.StopActivityStream
import Network.AWS.RDS.StopDBCluster
import Network.AWS.RDS.StopDBInstance
import Network.AWS.RDS.StopDBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.Types
import Network.AWS.RDS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'RDS'.

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

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBCluster where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.ActivityStreamMode
import Network.AWS.RDS.Types.ActivityStreamStatus
import Network.AWS.RDS.Types.ClusterPendingModifiedValues
import Network.AWS.RDS.Types.DBClusterMember
import Network.AWS.RDS.Types.DBClusterOptionGroupStatus
import Network.AWS.RDS.Types.DBClusterRole
import Network.AWS.RDS.Types.DomainMembership
import Network.AWS.RDS.Types.ScalingConfigurationInfo
import Network.AWS.RDS.Types.Tag
import Network.AWS.RDS.Types.VpcSecurityGroupMembership
import Network.AWS.RDS.Types.WriteForwardingStatus

-- | Contains the details of an Amazon Aurora DB cluster.
--
-- This data type is used as a response element in the
-- @DescribeDBClusters@, @StopDBCluster@, and @StartDBCluster@ actions.
--
-- /See:/ 'newDBCluster' smart constructor.
data DBCluster = DBCluster'
  { -- | Specifies the number of days for which automatic DB snapshots are
    -- retained.
    backupRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | Indicates if the DB cluster has deletion protection enabled. The
    -- database can\'t be deleted when deletion protection is enabled.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether the DB cluster is encrypted.
    storageEncrypted :: Prelude.Maybe Prelude.Bool,
    -- | Provides a list of the AWS Identity and Access Management (IAM) roles
    -- that are associated with the DB cluster. IAM roles that are associated
    -- with a DB cluster grant permission for the DB cluster to access other
    -- AWS services on your behalf.
    associatedRoles :: Prelude.Maybe [DBClusterRole],
    -- | Provides a list of VPC security groups that the DB cluster belongs to.
    vpcSecurityGroups :: Prelude.Maybe [VpcSecurityGroupMembership],
    -- | Specifies the daily time range during which automated backups are
    -- created if automated backups are enabled, as determined by the
    -- @BackupRetentionPeriod@.
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | Provides the list of instances that make up the DB cluster.
    dBClusterMembers :: Prelude.Maybe [DBClusterMember],
    -- | Specifies the current state of this DB cluster.
    status :: Prelude.Maybe Prelude.Text,
    -- | The number of change records stored for Backtrack.
    backtrackConsumedChangeRecords :: Prelude.Maybe Prelude.Integer,
    -- | Specifies whether the DB cluster is a clone of a DB cluster owned by a
    -- different AWS account.
    crossAccountClone :: Prelude.Maybe Prelude.Bool,
    -- | Provides the list of Availability Zones (AZs) where instances in the DB
    -- cluster can be created.
    availabilityZones :: Prelude.Maybe [Prelude.Text],
    -- | Specifies whether a secondary cluster in an Aurora global database has
    -- write forwarding enabled, not enabled, or is in the process of enabling
    -- it.
    globalWriteForwardingStatus :: Prelude.Maybe WriteForwardingStatus,
    -- | Provides the list of option group memberships for this DB cluster.
    dBClusterOptionGroupMemberships :: Prelude.Maybe [DBClusterOptionGroupStatus],
    -- | Identifies the clone group to which the DB cluster is associated.
    cloneGroupId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the latest time to which a database can be restored with
    -- point-in-time restore.
    latestRestorableTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The Amazon Resource Name (ARN) for the DB cluster.
    dBClusterArn :: Prelude.Maybe Prelude.Text,
    -- | The Active Directory Domain membership records associated with the DB
    -- cluster.
    domainMemberships :: Prelude.Maybe [DomainMembership],
    -- | The AWS KMS key identifier used for encrypting messages in the database
    -- activity stream.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    activityStreamKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The reader endpoint for the DB cluster. The reader endpoint for a DB
    -- cluster load-balances connections across the Aurora Replicas that are
    -- available in a DB cluster. As clients request new connections to the
    -- reader endpoint, Aurora distributes the connection requests among the
    -- Aurora Replicas in the DB cluster. This functionality can help balance
    -- your read workload across multiple Aurora Replicas in your DB cluster.
    --
    -- If a failover occurs, and the Aurora Replica that you are connected to
    -- is promoted to be the primary instance, your connection is dropped. To
    -- continue sending your read workload to other Aurora Replicas in the
    -- cluster, you can then reconnect to the reader endpoint.
    readerEndpoint :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates whether the HTTP endpoint for an Aurora
    -- Serverless DB cluster is enabled.
    --
    -- When enabled, the HTTP endpoint provides a connectionless web service
    -- API for running SQL queries on the Aurora Serverless DB cluster. You can
    -- also query your database from inside the RDS console with the query
    -- editor.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html Using the Data API for Aurora Serverless>
    -- in the /Amazon Aurora User Guide/.
    httpEndpointEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the time when the DB cluster was created, in Universal
    -- Coordinated Time (UTC).
    clusterCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The earliest time to which a database can be restored with point-in-time
    -- restore.
    earliestRestorableTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The DB engine mode of the DB cluster, either @provisioned@,
    -- @serverless@, @parallelquery@, @global@, or @multimaster@.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster>.
    engineMode :: Prelude.Maybe Prelude.Text,
    -- | The status of the database activity stream.
    activityStreamStatus :: Prelude.Maybe ActivityStreamStatus,
    -- | A list of log types that this DB cluster is configured to export to
    -- CloudWatch Logs.
    --
    -- Log types vary by DB engine. For information about the log types for
    -- each DB engine, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html Amazon RDS Database Log Files>
    -- in the /Amazon Aurora User Guide./
    enabledCloudwatchLogsExports :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the ID that Amazon Route 53 assigns when you create a hosted
    -- zone.
    hostedZoneId :: Prelude.Maybe Prelude.Text,
    -- | Specifies information on the subnet group associated with the DB
    -- cluster, including the name, description, and subnets in the subnet
    -- group.
    dBSubnetGroup :: Prelude.Maybe Prelude.Text,
    -- | Contains one or more identifiers of the read replicas associated with
    -- this DB cluster.
    readReplicaIdentifiers :: Prelude.Maybe [Prelude.Text],
    -- | Contains the master username for the DB cluster.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the DB cluster has instances in multiple Availability
    -- Zones.
    multiAZ :: Prelude.Maybe Prelude.Bool,
    -- | If @StorageEncrypted@ is enabled, the AWS KMS key identifier for the
    -- encrypted DB cluster.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Contains a user-supplied DB cluster identifier. This identifier is the
    -- unique key that identifies a DB cluster.
    dBClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The current capacity of an Aurora Serverless DB cluster. The capacity is
    -- 0 (zero) when the cluster is paused.
    --
    -- For more information about Aurora Serverless, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html Using Amazon Aurora Serverless>
    -- in the /Amazon Aurora User Guide/.
    capacity :: Prelude.Maybe Prelude.Int,
    -- | Indicates the database engine version.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | Specifies the weekly time range during which system maintenance can
    -- occur, in Universal Coordinated Time (UTC).
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | If present, specifies the name of the character set that this cluster is
    -- associated with.
    characterSetName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the port that the database engine is listening on.
    port :: Prelude.Maybe Prelude.Int,
    -- | Specifies the progress of the operation as a percentage.
    percentProgress :: Prelude.Maybe Prelude.Text,
    -- | The name of the database engine to be used for this DB cluster.
    engine :: Prelude.Maybe Prelude.Text,
    -- | A value that specifies that changes to the DB cluster are pending. This
    -- element is only included when changes are pending. Specific changes are
    -- identified by subelements.
    pendingModifiedValues :: Prelude.Maybe ClusterPendingModifiedValues,
    -- | The AWS Region-unique, immutable identifier for the DB cluster. This
    -- identifier is found in AWS CloudTrail log entries whenever the AWS KMS
    -- CMK for the DB cluster is accessed.
    dbClusterResourceId :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether tags are copied from the DB cluster to snapshots of
    -- the DB cluster.
    copyTagsToSnapshot :: Prelude.Maybe Prelude.Bool,
    -- | Identifies all custom endpoints associated with the cluster.
    customEndpoints :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the connection endpoint for the primary instance of the DB
    -- cluster.
    endpoint :: Prelude.Maybe Prelude.Text,
    scalingConfigurationInfo :: Prelude.Maybe ScalingConfigurationInfo,
    -- | The earliest time to which a DB cluster can be backtracked.
    earliestBacktrackTime :: Prelude.Maybe Prelude.ISO8601,
    tagList :: Prelude.Maybe [Tag],
    -- | For all database engines except Amazon Aurora, @AllocatedStorage@
    -- specifies the allocated storage size in gibibytes (GiB). For Aurora,
    -- @AllocatedStorage@ always returns 1, because Aurora DB cluster storage
    -- size isn\'t fixed, but instead automatically adjusts as needed.
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | The target backtrack window, in seconds. If this value is set to 0,
    -- backtracking is disabled for the DB cluster. Otherwise, backtracking is
    -- enabled.
    backtrackWindow :: Prelude.Maybe Prelude.Integer,
    -- | A value that indicates whether the mapping of AWS Identity and Access
    -- Management (IAM) accounts to database accounts is enabled.
    iAMDatabaseAuthenticationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether you have requested to enable write forwarding for a
    -- secondary cluster in an Aurora global database. Because write forwarding
    -- takes time to enable, check the value of @GlobalWriteForwardingStatus@
    -- to confirm that the request has completed before using the write
    -- forwarding feature for this cluster.
    globalWriteForwardingRequested :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the name of the DB cluster parameter group for the DB cluster.
    dBClusterParameterGroup :: Prelude.Maybe Prelude.Text,
    -- | Contains the identifier of the source DB cluster if this DB cluster is a
    -- read replica.
    replicationSourceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Contains the name of the initial database of this DB cluster that was
    -- provided at create time, if one was specified when the DB cluster was
    -- created. This same name is returned for the life of the DB cluster.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | The name of the Amazon Kinesis data stream used for the database
    -- activity stream.
    activityStreamKinesisStreamName :: Prelude.Maybe Prelude.Text,
    -- | The mode of the database activity stream. Database events such as a
    -- change or access generate an activity stream event. The database session
    -- can handle these events either synchronously or asynchronously.
    activityStreamMode :: Prelude.Maybe ActivityStreamMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupRetentionPeriod', 'dBCluster_backupRetentionPeriod' - Specifies the number of days for which automatic DB snapshots are
-- retained.
--
-- 'deletionProtection', 'dBCluster_deletionProtection' - Indicates if the DB cluster has deletion protection enabled. The
-- database can\'t be deleted when deletion protection is enabled.
--
-- 'storageEncrypted', 'dBCluster_storageEncrypted' - Specifies whether the DB cluster is encrypted.
--
-- 'associatedRoles', 'dBCluster_associatedRoles' - Provides a list of the AWS Identity and Access Management (IAM) roles
-- that are associated with the DB cluster. IAM roles that are associated
-- with a DB cluster grant permission for the DB cluster to access other
-- AWS services on your behalf.
--
-- 'vpcSecurityGroups', 'dBCluster_vpcSecurityGroups' - Provides a list of VPC security groups that the DB cluster belongs to.
--
-- 'preferredBackupWindow', 'dBCluster_preferredBackupWindow' - Specifies the daily time range during which automated backups are
-- created if automated backups are enabled, as determined by the
-- @BackupRetentionPeriod@.
--
-- 'dBClusterMembers', 'dBCluster_dBClusterMembers' - Provides the list of instances that make up the DB cluster.
--
-- 'status', 'dBCluster_status' - Specifies the current state of this DB cluster.
--
-- 'backtrackConsumedChangeRecords', 'dBCluster_backtrackConsumedChangeRecords' - The number of change records stored for Backtrack.
--
-- 'crossAccountClone', 'dBCluster_crossAccountClone' - Specifies whether the DB cluster is a clone of a DB cluster owned by a
-- different AWS account.
--
-- 'availabilityZones', 'dBCluster_availabilityZones' - Provides the list of Availability Zones (AZs) where instances in the DB
-- cluster can be created.
--
-- 'globalWriteForwardingStatus', 'dBCluster_globalWriteForwardingStatus' - Specifies whether a secondary cluster in an Aurora global database has
-- write forwarding enabled, not enabled, or is in the process of enabling
-- it.
--
-- 'dBClusterOptionGroupMemberships', 'dBCluster_dBClusterOptionGroupMemberships' - Provides the list of option group memberships for this DB cluster.
--
-- 'cloneGroupId', 'dBCluster_cloneGroupId' - Identifies the clone group to which the DB cluster is associated.
--
-- 'latestRestorableTime', 'dBCluster_latestRestorableTime' - Specifies the latest time to which a database can be restored with
-- point-in-time restore.
--
-- 'dBClusterArn', 'dBCluster_dBClusterArn' - The Amazon Resource Name (ARN) for the DB cluster.
--
-- 'domainMemberships', 'dBCluster_domainMemberships' - The Active Directory Domain membership records associated with the DB
-- cluster.
--
-- 'activityStreamKmsKeyId', 'dBCluster_activityStreamKmsKeyId' - The AWS KMS key identifier used for encrypting messages in the database
-- activity stream.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'readerEndpoint', 'dBCluster_readerEndpoint' - The reader endpoint for the DB cluster. The reader endpoint for a DB
-- cluster load-balances connections across the Aurora Replicas that are
-- available in a DB cluster. As clients request new connections to the
-- reader endpoint, Aurora distributes the connection requests among the
-- Aurora Replicas in the DB cluster. This functionality can help balance
-- your read workload across multiple Aurora Replicas in your DB cluster.
--
-- If a failover occurs, and the Aurora Replica that you are connected to
-- is promoted to be the primary instance, your connection is dropped. To
-- continue sending your read workload to other Aurora Replicas in the
-- cluster, you can then reconnect to the reader endpoint.
--
-- 'httpEndpointEnabled', 'dBCluster_httpEndpointEnabled' - A value that indicates whether the HTTP endpoint for an Aurora
-- Serverless DB cluster is enabled.
--
-- When enabled, the HTTP endpoint provides a connectionless web service
-- API for running SQL queries on the Aurora Serverless DB cluster. You can
-- also query your database from inside the RDS console with the query
-- editor.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html Using the Data API for Aurora Serverless>
-- in the /Amazon Aurora User Guide/.
--
-- 'clusterCreateTime', 'dBCluster_clusterCreateTime' - Specifies the time when the DB cluster was created, in Universal
-- Coordinated Time (UTC).
--
-- 'earliestRestorableTime', 'dBCluster_earliestRestorableTime' - The earliest time to which a database can be restored with point-in-time
-- restore.
--
-- 'engineMode', 'dBCluster_engineMode' - The DB engine mode of the DB cluster, either @provisioned@,
-- @serverless@, @parallelquery@, @global@, or @multimaster@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster>.
--
-- 'activityStreamStatus', 'dBCluster_activityStreamStatus' - The status of the database activity stream.
--
-- 'enabledCloudwatchLogsExports', 'dBCluster_enabledCloudwatchLogsExports' - A list of log types that this DB cluster is configured to export to
-- CloudWatch Logs.
--
-- Log types vary by DB engine. For information about the log types for
-- each DB engine, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html Amazon RDS Database Log Files>
-- in the /Amazon Aurora User Guide./
--
-- 'hostedZoneId', 'dBCluster_hostedZoneId' - Specifies the ID that Amazon Route 53 assigns when you create a hosted
-- zone.
--
-- 'dBSubnetGroup', 'dBCluster_dBSubnetGroup' - Specifies information on the subnet group associated with the DB
-- cluster, including the name, description, and subnets in the subnet
-- group.
--
-- 'readReplicaIdentifiers', 'dBCluster_readReplicaIdentifiers' - Contains one or more identifiers of the read replicas associated with
-- this DB cluster.
--
-- 'masterUsername', 'dBCluster_masterUsername' - Contains the master username for the DB cluster.
--
-- 'multiAZ', 'dBCluster_multiAZ' - Specifies whether the DB cluster has instances in multiple Availability
-- Zones.
--
-- 'kmsKeyId', 'dBCluster_kmsKeyId' - If @StorageEncrypted@ is enabled, the AWS KMS key identifier for the
-- encrypted DB cluster.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'dBClusterIdentifier', 'dBCluster_dBClusterIdentifier' - Contains a user-supplied DB cluster identifier. This identifier is the
-- unique key that identifies a DB cluster.
--
-- 'capacity', 'dBCluster_capacity' - The current capacity of an Aurora Serverless DB cluster. The capacity is
-- 0 (zero) when the cluster is paused.
--
-- For more information about Aurora Serverless, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html Using Amazon Aurora Serverless>
-- in the /Amazon Aurora User Guide/.
--
-- 'engineVersion', 'dBCluster_engineVersion' - Indicates the database engine version.
--
-- 'preferredMaintenanceWindow', 'dBCluster_preferredMaintenanceWindow' - Specifies the weekly time range during which system maintenance can
-- occur, in Universal Coordinated Time (UTC).
--
-- 'characterSetName', 'dBCluster_characterSetName' - If present, specifies the name of the character set that this cluster is
-- associated with.
--
-- 'port', 'dBCluster_port' - Specifies the port that the database engine is listening on.
--
-- 'percentProgress', 'dBCluster_percentProgress' - Specifies the progress of the operation as a percentage.
--
-- 'engine', 'dBCluster_engine' - The name of the database engine to be used for this DB cluster.
--
-- 'pendingModifiedValues', 'dBCluster_pendingModifiedValues' - A value that specifies that changes to the DB cluster are pending. This
-- element is only included when changes are pending. Specific changes are
-- identified by subelements.
--
-- 'dbClusterResourceId', 'dBCluster_dbClusterResourceId' - The AWS Region-unique, immutable identifier for the DB cluster. This
-- identifier is found in AWS CloudTrail log entries whenever the AWS KMS
-- CMK for the DB cluster is accessed.
--
-- 'copyTagsToSnapshot', 'dBCluster_copyTagsToSnapshot' - Specifies whether tags are copied from the DB cluster to snapshots of
-- the DB cluster.
--
-- 'customEndpoints', 'dBCluster_customEndpoints' - Identifies all custom endpoints associated with the cluster.
--
-- 'endpoint', 'dBCluster_endpoint' - Specifies the connection endpoint for the primary instance of the DB
-- cluster.
--
-- 'scalingConfigurationInfo', 'dBCluster_scalingConfigurationInfo' - Undocumented member.
--
-- 'earliestBacktrackTime', 'dBCluster_earliestBacktrackTime' - The earliest time to which a DB cluster can be backtracked.
--
-- 'tagList', 'dBCluster_tagList' - Undocumented member.
--
-- 'allocatedStorage', 'dBCluster_allocatedStorage' - For all database engines except Amazon Aurora, @AllocatedStorage@
-- specifies the allocated storage size in gibibytes (GiB). For Aurora,
-- @AllocatedStorage@ always returns 1, because Aurora DB cluster storage
-- size isn\'t fixed, but instead automatically adjusts as needed.
--
-- 'backtrackWindow', 'dBCluster_backtrackWindow' - The target backtrack window, in seconds. If this value is set to 0,
-- backtracking is disabled for the DB cluster. Otherwise, backtracking is
-- enabled.
--
-- 'iAMDatabaseAuthenticationEnabled', 'dBCluster_iAMDatabaseAuthenticationEnabled' - A value that indicates whether the mapping of AWS Identity and Access
-- Management (IAM) accounts to database accounts is enabled.
--
-- 'globalWriteForwardingRequested', 'dBCluster_globalWriteForwardingRequested' - Specifies whether you have requested to enable write forwarding for a
-- secondary cluster in an Aurora global database. Because write forwarding
-- takes time to enable, check the value of @GlobalWriteForwardingStatus@
-- to confirm that the request has completed before using the write
-- forwarding feature for this cluster.
--
-- 'dBClusterParameterGroup', 'dBCluster_dBClusterParameterGroup' - Specifies the name of the DB cluster parameter group for the DB cluster.
--
-- 'replicationSourceIdentifier', 'dBCluster_replicationSourceIdentifier' - Contains the identifier of the source DB cluster if this DB cluster is a
-- read replica.
--
-- 'databaseName', 'dBCluster_databaseName' - Contains the name of the initial database of this DB cluster that was
-- provided at create time, if one was specified when the DB cluster was
-- created. This same name is returned for the life of the DB cluster.
--
-- 'activityStreamKinesisStreamName', 'dBCluster_activityStreamKinesisStreamName' - The name of the Amazon Kinesis data stream used for the database
-- activity stream.
--
-- 'activityStreamMode', 'dBCluster_activityStreamMode' - The mode of the database activity stream. Database events such as a
-- change or access generate an activity stream event. The database session
-- can handle these events either synchronously or asynchronously.
newDBCluster ::
  DBCluster
newDBCluster =
  DBCluster'
    { backupRetentionPeriod = Prelude.Nothing,
      deletionProtection = Prelude.Nothing,
      storageEncrypted = Prelude.Nothing,
      associatedRoles = Prelude.Nothing,
      vpcSecurityGroups = Prelude.Nothing,
      preferredBackupWindow = Prelude.Nothing,
      dBClusterMembers = Prelude.Nothing,
      status = Prelude.Nothing,
      backtrackConsumedChangeRecords = Prelude.Nothing,
      crossAccountClone = Prelude.Nothing,
      availabilityZones = Prelude.Nothing,
      globalWriteForwardingStatus = Prelude.Nothing,
      dBClusterOptionGroupMemberships = Prelude.Nothing,
      cloneGroupId = Prelude.Nothing,
      latestRestorableTime = Prelude.Nothing,
      dBClusterArn = Prelude.Nothing,
      domainMemberships = Prelude.Nothing,
      activityStreamKmsKeyId = Prelude.Nothing,
      readerEndpoint = Prelude.Nothing,
      httpEndpointEnabled = Prelude.Nothing,
      clusterCreateTime = Prelude.Nothing,
      earliestRestorableTime = Prelude.Nothing,
      engineMode = Prelude.Nothing,
      activityStreamStatus = Prelude.Nothing,
      enabledCloudwatchLogsExports = Prelude.Nothing,
      hostedZoneId = Prelude.Nothing,
      dBSubnetGroup = Prelude.Nothing,
      readReplicaIdentifiers = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      multiAZ = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      dBClusterIdentifier = Prelude.Nothing,
      capacity = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      characterSetName = Prelude.Nothing,
      port = Prelude.Nothing,
      percentProgress = Prelude.Nothing,
      engine = Prelude.Nothing,
      pendingModifiedValues = Prelude.Nothing,
      dbClusterResourceId = Prelude.Nothing,
      copyTagsToSnapshot = Prelude.Nothing,
      customEndpoints = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      scalingConfigurationInfo = Prelude.Nothing,
      earliestBacktrackTime = Prelude.Nothing,
      tagList = Prelude.Nothing,
      allocatedStorage = Prelude.Nothing,
      backtrackWindow = Prelude.Nothing,
      iAMDatabaseAuthenticationEnabled = Prelude.Nothing,
      globalWriteForwardingRequested = Prelude.Nothing,
      dBClusterParameterGroup = Prelude.Nothing,
      replicationSourceIdentifier = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      activityStreamKinesisStreamName = Prelude.Nothing,
      activityStreamMode = Prelude.Nothing
    }

-- | Specifies the number of days for which automatic DB snapshots are
-- retained.
dBCluster_backupRetentionPeriod :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Int)
dBCluster_backupRetentionPeriod = Lens.lens (\DBCluster' {backupRetentionPeriod} -> backupRetentionPeriod) (\s@DBCluster' {} a -> s {backupRetentionPeriod = a} :: DBCluster)

-- | Indicates if the DB cluster has deletion protection enabled. The
-- database can\'t be deleted when deletion protection is enabled.
dBCluster_deletionProtection :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_deletionProtection = Lens.lens (\DBCluster' {deletionProtection} -> deletionProtection) (\s@DBCluster' {} a -> s {deletionProtection = a} :: DBCluster)

-- | Specifies whether the DB cluster is encrypted.
dBCluster_storageEncrypted :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_storageEncrypted = Lens.lens (\DBCluster' {storageEncrypted} -> storageEncrypted) (\s@DBCluster' {} a -> s {storageEncrypted = a} :: DBCluster)

-- | Provides a list of the AWS Identity and Access Management (IAM) roles
-- that are associated with the DB cluster. IAM roles that are associated
-- with a DB cluster grant permission for the DB cluster to access other
-- AWS services on your behalf.
dBCluster_associatedRoles :: Lens.Lens' DBCluster (Prelude.Maybe [DBClusterRole])
dBCluster_associatedRoles = Lens.lens (\DBCluster' {associatedRoles} -> associatedRoles) (\s@DBCluster' {} a -> s {associatedRoles = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides a list of VPC security groups that the DB cluster belongs to.
dBCluster_vpcSecurityGroups :: Lens.Lens' DBCluster (Prelude.Maybe [VpcSecurityGroupMembership])
dBCluster_vpcSecurityGroups = Lens.lens (\DBCluster' {vpcSecurityGroups} -> vpcSecurityGroups) (\s@DBCluster' {} a -> s {vpcSecurityGroups = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the daily time range during which automated backups are
-- created if automated backups are enabled, as determined by the
-- @BackupRetentionPeriod@.
dBCluster_preferredBackupWindow :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_preferredBackupWindow = Lens.lens (\DBCluster' {preferredBackupWindow} -> preferredBackupWindow) (\s@DBCluster' {} a -> s {preferredBackupWindow = a} :: DBCluster)

-- | Provides the list of instances that make up the DB cluster.
dBCluster_dBClusterMembers :: Lens.Lens' DBCluster (Prelude.Maybe [DBClusterMember])
dBCluster_dBClusterMembers = Lens.lens (\DBCluster' {dBClusterMembers} -> dBClusterMembers) (\s@DBCluster' {} a -> s {dBClusterMembers = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the current state of this DB cluster.
dBCluster_status :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_status = Lens.lens (\DBCluster' {status} -> status) (\s@DBCluster' {} a -> s {status = a} :: DBCluster)

-- | The number of change records stored for Backtrack.
dBCluster_backtrackConsumedChangeRecords :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Integer)
dBCluster_backtrackConsumedChangeRecords = Lens.lens (\DBCluster' {backtrackConsumedChangeRecords} -> backtrackConsumedChangeRecords) (\s@DBCluster' {} a -> s {backtrackConsumedChangeRecords = a} :: DBCluster)

-- | Specifies whether the DB cluster is a clone of a DB cluster owned by a
-- different AWS account.
dBCluster_crossAccountClone :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_crossAccountClone = Lens.lens (\DBCluster' {crossAccountClone} -> crossAccountClone) (\s@DBCluster' {} a -> s {crossAccountClone = a} :: DBCluster)

-- | Provides the list of Availability Zones (AZs) where instances in the DB
-- cluster can be created.
dBCluster_availabilityZones :: Lens.Lens' DBCluster (Prelude.Maybe [Prelude.Text])
dBCluster_availabilityZones = Lens.lens (\DBCluster' {availabilityZones} -> availabilityZones) (\s@DBCluster' {} a -> s {availabilityZones = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies whether a secondary cluster in an Aurora global database has
-- write forwarding enabled, not enabled, or is in the process of enabling
-- it.
dBCluster_globalWriteForwardingStatus :: Lens.Lens' DBCluster (Prelude.Maybe WriteForwardingStatus)
dBCluster_globalWriteForwardingStatus = Lens.lens (\DBCluster' {globalWriteForwardingStatus} -> globalWriteForwardingStatus) (\s@DBCluster' {} a -> s {globalWriteForwardingStatus = a} :: DBCluster)

-- | Provides the list of option group memberships for this DB cluster.
dBCluster_dBClusterOptionGroupMemberships :: Lens.Lens' DBCluster (Prelude.Maybe [DBClusterOptionGroupStatus])
dBCluster_dBClusterOptionGroupMemberships = Lens.lens (\DBCluster' {dBClusterOptionGroupMemberships} -> dBClusterOptionGroupMemberships) (\s@DBCluster' {} a -> s {dBClusterOptionGroupMemberships = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Identifies the clone group to which the DB cluster is associated.
dBCluster_cloneGroupId :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_cloneGroupId = Lens.lens (\DBCluster' {cloneGroupId} -> cloneGroupId) (\s@DBCluster' {} a -> s {cloneGroupId = a} :: DBCluster)

-- | Specifies the latest time to which a database can be restored with
-- point-in-time restore.
dBCluster_latestRestorableTime :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.UTCTime)
dBCluster_latestRestorableTime = Lens.lens (\DBCluster' {latestRestorableTime} -> latestRestorableTime) (\s@DBCluster' {} a -> s {latestRestorableTime = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Time

-- | The Amazon Resource Name (ARN) for the DB cluster.
dBCluster_dBClusterArn :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_dBClusterArn = Lens.lens (\DBCluster' {dBClusterArn} -> dBClusterArn) (\s@DBCluster' {} a -> s {dBClusterArn = a} :: DBCluster)

-- | The Active Directory Domain membership records associated with the DB
-- cluster.
dBCluster_domainMemberships :: Lens.Lens' DBCluster (Prelude.Maybe [DomainMembership])
dBCluster_domainMemberships = Lens.lens (\DBCluster' {domainMemberships} -> domainMemberships) (\s@DBCluster' {} a -> s {domainMemberships = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | The AWS KMS key identifier used for encrypting messages in the database
-- activity stream.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBCluster_activityStreamKmsKeyId :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_activityStreamKmsKeyId = Lens.lens (\DBCluster' {activityStreamKmsKeyId} -> activityStreamKmsKeyId) (\s@DBCluster' {} a -> s {activityStreamKmsKeyId = a} :: DBCluster)

-- | The reader endpoint for the DB cluster. The reader endpoint for a DB
-- cluster load-balances connections across the Aurora Replicas that are
-- available in a DB cluster. As clients request new connections to the
-- reader endpoint, Aurora distributes the connection requests among the
-- Aurora Replicas in the DB cluster. This functionality can help balance
-- your read workload across multiple Aurora Replicas in your DB cluster.
--
-- If a failover occurs, and the Aurora Replica that you are connected to
-- is promoted to be the primary instance, your connection is dropped. To
-- continue sending your read workload to other Aurora Replicas in the
-- cluster, you can then reconnect to the reader endpoint.
dBCluster_readerEndpoint :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_readerEndpoint = Lens.lens (\DBCluster' {readerEndpoint} -> readerEndpoint) (\s@DBCluster' {} a -> s {readerEndpoint = a} :: DBCluster)

-- | A value that indicates whether the HTTP endpoint for an Aurora
-- Serverless DB cluster is enabled.
--
-- When enabled, the HTTP endpoint provides a connectionless web service
-- API for running SQL queries on the Aurora Serverless DB cluster. You can
-- also query your database from inside the RDS console with the query
-- editor.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html Using the Data API for Aurora Serverless>
-- in the /Amazon Aurora User Guide/.
dBCluster_httpEndpointEnabled :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_httpEndpointEnabled = Lens.lens (\DBCluster' {httpEndpointEnabled} -> httpEndpointEnabled) (\s@DBCluster' {} a -> s {httpEndpointEnabled = a} :: DBCluster)

-- | Specifies the time when the DB cluster was created, in Universal
-- Coordinated Time (UTC).
dBCluster_clusterCreateTime :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.UTCTime)
dBCluster_clusterCreateTime = Lens.lens (\DBCluster' {clusterCreateTime} -> clusterCreateTime) (\s@DBCluster' {} a -> s {clusterCreateTime = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Time

-- | The earliest time to which a database can be restored with point-in-time
-- restore.
dBCluster_earliestRestorableTime :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.UTCTime)
dBCluster_earliestRestorableTime = Lens.lens (\DBCluster' {earliestRestorableTime} -> earliestRestorableTime) (\s@DBCluster' {} a -> s {earliestRestorableTime = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Time

-- | The DB engine mode of the DB cluster, either @provisioned@,
-- @serverless@, @parallelquery@, @global@, or @multimaster@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster>.
dBCluster_engineMode :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_engineMode = Lens.lens (\DBCluster' {engineMode} -> engineMode) (\s@DBCluster' {} a -> s {engineMode = a} :: DBCluster)

-- | The status of the database activity stream.
dBCluster_activityStreamStatus :: Lens.Lens' DBCluster (Prelude.Maybe ActivityStreamStatus)
dBCluster_activityStreamStatus = Lens.lens (\DBCluster' {activityStreamStatus} -> activityStreamStatus) (\s@DBCluster' {} a -> s {activityStreamStatus = a} :: DBCluster)

-- | A list of log types that this DB cluster is configured to export to
-- CloudWatch Logs.
--
-- Log types vary by DB engine. For information about the log types for
-- each DB engine, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html Amazon RDS Database Log Files>
-- in the /Amazon Aurora User Guide./
dBCluster_enabledCloudwatchLogsExports :: Lens.Lens' DBCluster (Prelude.Maybe [Prelude.Text])
dBCluster_enabledCloudwatchLogsExports = Lens.lens (\DBCluster' {enabledCloudwatchLogsExports} -> enabledCloudwatchLogsExports) (\s@DBCluster' {} a -> s {enabledCloudwatchLogsExports = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the ID that Amazon Route 53 assigns when you create a hosted
-- zone.
dBCluster_hostedZoneId :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_hostedZoneId = Lens.lens (\DBCluster' {hostedZoneId} -> hostedZoneId) (\s@DBCluster' {} a -> s {hostedZoneId = a} :: DBCluster)

-- | Specifies information on the subnet group associated with the DB
-- cluster, including the name, description, and subnets in the subnet
-- group.
dBCluster_dBSubnetGroup :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_dBSubnetGroup = Lens.lens (\DBCluster' {dBSubnetGroup} -> dBSubnetGroup) (\s@DBCluster' {} a -> s {dBSubnetGroup = a} :: DBCluster)

-- | Contains one or more identifiers of the read replicas associated with
-- this DB cluster.
dBCluster_readReplicaIdentifiers :: Lens.Lens' DBCluster (Prelude.Maybe [Prelude.Text])
dBCluster_readReplicaIdentifiers = Lens.lens (\DBCluster' {readReplicaIdentifiers} -> readReplicaIdentifiers) (\s@DBCluster' {} a -> s {readReplicaIdentifiers = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Contains the master username for the DB cluster.
dBCluster_masterUsername :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_masterUsername = Lens.lens (\DBCluster' {masterUsername} -> masterUsername) (\s@DBCluster' {} a -> s {masterUsername = a} :: DBCluster)

-- | Specifies whether the DB cluster has instances in multiple Availability
-- Zones.
dBCluster_multiAZ :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_multiAZ = Lens.lens (\DBCluster' {multiAZ} -> multiAZ) (\s@DBCluster' {} a -> s {multiAZ = a} :: DBCluster)

-- | If @StorageEncrypted@ is enabled, the AWS KMS key identifier for the
-- encrypted DB cluster.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBCluster_kmsKeyId :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_kmsKeyId = Lens.lens (\DBCluster' {kmsKeyId} -> kmsKeyId) (\s@DBCluster' {} a -> s {kmsKeyId = a} :: DBCluster)

-- | Contains a user-supplied DB cluster identifier. This identifier is the
-- unique key that identifies a DB cluster.
dBCluster_dBClusterIdentifier :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_dBClusterIdentifier = Lens.lens (\DBCluster' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@DBCluster' {} a -> s {dBClusterIdentifier = a} :: DBCluster)

-- | The current capacity of an Aurora Serverless DB cluster. The capacity is
-- 0 (zero) when the cluster is paused.
--
-- For more information about Aurora Serverless, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html Using Amazon Aurora Serverless>
-- in the /Amazon Aurora User Guide/.
dBCluster_capacity :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Int)
dBCluster_capacity = Lens.lens (\DBCluster' {capacity} -> capacity) (\s@DBCluster' {} a -> s {capacity = a} :: DBCluster)

-- | Indicates the database engine version.
dBCluster_engineVersion :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_engineVersion = Lens.lens (\DBCluster' {engineVersion} -> engineVersion) (\s@DBCluster' {} a -> s {engineVersion = a} :: DBCluster)

-- | Specifies the weekly time range during which system maintenance can
-- occur, in Universal Coordinated Time (UTC).
dBCluster_preferredMaintenanceWindow :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_preferredMaintenanceWindow = Lens.lens (\DBCluster' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@DBCluster' {} a -> s {preferredMaintenanceWindow = a} :: DBCluster)

-- | If present, specifies the name of the character set that this cluster is
-- associated with.
dBCluster_characterSetName :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_characterSetName = Lens.lens (\DBCluster' {characterSetName} -> characterSetName) (\s@DBCluster' {} a -> s {characterSetName = a} :: DBCluster)

-- | Specifies the port that the database engine is listening on.
dBCluster_port :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Int)
dBCluster_port = Lens.lens (\DBCluster' {port} -> port) (\s@DBCluster' {} a -> s {port = a} :: DBCluster)

-- | Specifies the progress of the operation as a percentage.
dBCluster_percentProgress :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_percentProgress = Lens.lens (\DBCluster' {percentProgress} -> percentProgress) (\s@DBCluster' {} a -> s {percentProgress = a} :: DBCluster)

-- | The name of the database engine to be used for this DB cluster.
dBCluster_engine :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_engine = Lens.lens (\DBCluster' {engine} -> engine) (\s@DBCluster' {} a -> s {engine = a} :: DBCluster)

-- | A value that specifies that changes to the DB cluster are pending. This
-- element is only included when changes are pending. Specific changes are
-- identified by subelements.
dBCluster_pendingModifiedValues :: Lens.Lens' DBCluster (Prelude.Maybe ClusterPendingModifiedValues)
dBCluster_pendingModifiedValues = Lens.lens (\DBCluster' {pendingModifiedValues} -> pendingModifiedValues) (\s@DBCluster' {} a -> s {pendingModifiedValues = a} :: DBCluster)

-- | The AWS Region-unique, immutable identifier for the DB cluster. This
-- identifier is found in AWS CloudTrail log entries whenever the AWS KMS
-- CMK for the DB cluster is accessed.
dBCluster_dbClusterResourceId :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_dbClusterResourceId = Lens.lens (\DBCluster' {dbClusterResourceId} -> dbClusterResourceId) (\s@DBCluster' {} a -> s {dbClusterResourceId = a} :: DBCluster)

-- | Specifies whether tags are copied from the DB cluster to snapshots of
-- the DB cluster.
dBCluster_copyTagsToSnapshot :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_copyTagsToSnapshot = Lens.lens (\DBCluster' {copyTagsToSnapshot} -> copyTagsToSnapshot) (\s@DBCluster' {} a -> s {copyTagsToSnapshot = a} :: DBCluster)

-- | Identifies all custom endpoints associated with the cluster.
dBCluster_customEndpoints :: Lens.Lens' DBCluster (Prelude.Maybe [Prelude.Text])
dBCluster_customEndpoints = Lens.lens (\DBCluster' {customEndpoints} -> customEndpoints) (\s@DBCluster' {} a -> s {customEndpoints = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the connection endpoint for the primary instance of the DB
-- cluster.
dBCluster_endpoint :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_endpoint = Lens.lens (\DBCluster' {endpoint} -> endpoint) (\s@DBCluster' {} a -> s {endpoint = a} :: DBCluster)

-- | Undocumented member.
dBCluster_scalingConfigurationInfo :: Lens.Lens' DBCluster (Prelude.Maybe ScalingConfigurationInfo)
dBCluster_scalingConfigurationInfo = Lens.lens (\DBCluster' {scalingConfigurationInfo} -> scalingConfigurationInfo) (\s@DBCluster' {} a -> s {scalingConfigurationInfo = a} :: DBCluster)

-- | The earliest time to which a DB cluster can be backtracked.
dBCluster_earliestBacktrackTime :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.UTCTime)
dBCluster_earliestBacktrackTime = Lens.lens (\DBCluster' {earliestBacktrackTime} -> earliestBacktrackTime) (\s@DBCluster' {} a -> s {earliestBacktrackTime = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Time

-- | Undocumented member.
dBCluster_tagList :: Lens.Lens' DBCluster (Prelude.Maybe [Tag])
dBCluster_tagList = Lens.lens (\DBCluster' {tagList} -> tagList) (\s@DBCluster' {} a -> s {tagList = a} :: DBCluster) Prelude.. Lens.mapping Prelude._Coerce

-- | For all database engines except Amazon Aurora, @AllocatedStorage@
-- specifies the allocated storage size in gibibytes (GiB). For Aurora,
-- @AllocatedStorage@ always returns 1, because Aurora DB cluster storage
-- size isn\'t fixed, but instead automatically adjusts as needed.
dBCluster_allocatedStorage :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Int)
dBCluster_allocatedStorage = Lens.lens (\DBCluster' {allocatedStorage} -> allocatedStorage) (\s@DBCluster' {} a -> s {allocatedStorage = a} :: DBCluster)

-- | The target backtrack window, in seconds. If this value is set to 0,
-- backtracking is disabled for the DB cluster. Otherwise, backtracking is
-- enabled.
dBCluster_backtrackWindow :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Integer)
dBCluster_backtrackWindow = Lens.lens (\DBCluster' {backtrackWindow} -> backtrackWindow) (\s@DBCluster' {} a -> s {backtrackWindow = a} :: DBCluster)

-- | A value that indicates whether the mapping of AWS Identity and Access
-- Management (IAM) accounts to database accounts is enabled.
dBCluster_iAMDatabaseAuthenticationEnabled :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_iAMDatabaseAuthenticationEnabled = Lens.lens (\DBCluster' {iAMDatabaseAuthenticationEnabled} -> iAMDatabaseAuthenticationEnabled) (\s@DBCluster' {} a -> s {iAMDatabaseAuthenticationEnabled = a} :: DBCluster)

-- | Specifies whether you have requested to enable write forwarding for a
-- secondary cluster in an Aurora global database. Because write forwarding
-- takes time to enable, check the value of @GlobalWriteForwardingStatus@
-- to confirm that the request has completed before using the write
-- forwarding feature for this cluster.
dBCluster_globalWriteForwardingRequested :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Bool)
dBCluster_globalWriteForwardingRequested = Lens.lens (\DBCluster' {globalWriteForwardingRequested} -> globalWriteForwardingRequested) (\s@DBCluster' {} a -> s {globalWriteForwardingRequested = a} :: DBCluster)

-- | Specifies the name of the DB cluster parameter group for the DB cluster.
dBCluster_dBClusterParameterGroup :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_dBClusterParameterGroup = Lens.lens (\DBCluster' {dBClusterParameterGroup} -> dBClusterParameterGroup) (\s@DBCluster' {} a -> s {dBClusterParameterGroup = a} :: DBCluster)

-- | Contains the identifier of the source DB cluster if this DB cluster is a
-- read replica.
dBCluster_replicationSourceIdentifier :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_replicationSourceIdentifier = Lens.lens (\DBCluster' {replicationSourceIdentifier} -> replicationSourceIdentifier) (\s@DBCluster' {} a -> s {replicationSourceIdentifier = a} :: DBCluster)

-- | Contains the name of the initial database of this DB cluster that was
-- provided at create time, if one was specified when the DB cluster was
-- created. This same name is returned for the life of the DB cluster.
dBCluster_databaseName :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_databaseName = Lens.lens (\DBCluster' {databaseName} -> databaseName) (\s@DBCluster' {} a -> s {databaseName = a} :: DBCluster)

-- | The name of the Amazon Kinesis data stream used for the database
-- activity stream.
dBCluster_activityStreamKinesisStreamName :: Lens.Lens' DBCluster (Prelude.Maybe Prelude.Text)
dBCluster_activityStreamKinesisStreamName = Lens.lens (\DBCluster' {activityStreamKinesisStreamName} -> activityStreamKinesisStreamName) (\s@DBCluster' {} a -> s {activityStreamKinesisStreamName = a} :: DBCluster)

-- | The mode of the database activity stream. Database events such as a
-- change or access generate an activity stream event. The database session
-- can handle these events either synchronously or asynchronously.
dBCluster_activityStreamMode :: Lens.Lens' DBCluster (Prelude.Maybe ActivityStreamMode)
dBCluster_activityStreamMode = Lens.lens (\DBCluster' {activityStreamMode} -> activityStreamMode) (\s@DBCluster' {} a -> s {activityStreamMode = a} :: DBCluster)

instance Prelude.FromXML DBCluster where
  parseXML x =
    DBCluster'
      Prelude.<$> (x Prelude..@? "BackupRetentionPeriod")
      Prelude.<*> (x Prelude..@? "DeletionProtection")
      Prelude.<*> (x Prelude..@? "StorageEncrypted")
      Prelude.<*> ( x Prelude..@? "AssociatedRoles"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "DBClusterRole")
                  )
      Prelude.<*> ( x Prelude..@? "VpcSecurityGroups"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "VpcSecurityGroupMembership")
                  )
      Prelude.<*> (x Prelude..@? "PreferredBackupWindow")
      Prelude.<*> ( x Prelude..@? "DBClusterMembers"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "DBClusterMember")
                  )
      Prelude.<*> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "BacktrackConsumedChangeRecords")
      Prelude.<*> (x Prelude..@? "CrossAccountClone")
      Prelude.<*> ( x Prelude..@? "AvailabilityZones"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "AvailabilityZone")
                  )
      Prelude.<*> (x Prelude..@? "GlobalWriteForwardingStatus")
      Prelude.<*> ( x Prelude..@? "DBClusterOptionGroupMemberships"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DBClusterOptionGroup")
                  )
      Prelude.<*> (x Prelude..@? "CloneGroupId")
      Prelude.<*> (x Prelude..@? "LatestRestorableTime")
      Prelude.<*> (x Prelude..@? "DBClusterArn")
      Prelude.<*> ( x Prelude..@? "DomainMemberships"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DomainMembership")
                  )
      Prelude.<*> (x Prelude..@? "ActivityStreamKmsKeyId")
      Prelude.<*> (x Prelude..@? "ReaderEndpoint")
      Prelude.<*> (x Prelude..@? "HttpEndpointEnabled")
      Prelude.<*> (x Prelude..@? "ClusterCreateTime")
      Prelude.<*> (x Prelude..@? "EarliestRestorableTime")
      Prelude.<*> (x Prelude..@? "EngineMode")
      Prelude.<*> (x Prelude..@? "ActivityStreamStatus")
      Prelude.<*> ( x Prelude..@? "EnabledCloudwatchLogsExports"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "HostedZoneId")
      Prelude.<*> (x Prelude..@? "DBSubnetGroup")
      Prelude.<*> ( x Prelude..@? "ReadReplicaIdentifiers"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "ReadReplicaIdentifier")
                  )
      Prelude.<*> (x Prelude..@? "MasterUsername")
      Prelude.<*> (x Prelude..@? "MultiAZ")
      Prelude.<*> (x Prelude..@? "KmsKeyId")
      Prelude.<*> (x Prelude..@? "DBClusterIdentifier")
      Prelude.<*> (x Prelude..@? "Capacity")
      Prelude.<*> (x Prelude..@? "EngineVersion")
      Prelude.<*> (x Prelude..@? "PreferredMaintenanceWindow")
      Prelude.<*> (x Prelude..@? "CharacterSetName")
      Prelude.<*> (x Prelude..@? "Port")
      Prelude.<*> (x Prelude..@? "PercentProgress")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> (x Prelude..@? "PendingModifiedValues")
      Prelude.<*> (x Prelude..@? "DbClusterResourceId")
      Prelude.<*> (x Prelude..@? "CopyTagsToSnapshot")
      Prelude.<*> ( x Prelude..@? "CustomEndpoints"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "Endpoint")
      Prelude.<*> (x Prelude..@? "ScalingConfigurationInfo")
      Prelude.<*> (x Prelude..@? "EarliestBacktrackTime")
      Prelude.<*> ( x Prelude..@? "TagList" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "Tag")
                  )
      Prelude.<*> (x Prelude..@? "AllocatedStorage")
      Prelude.<*> (x Prelude..@? "BacktrackWindow")
      Prelude.<*> (x Prelude..@? "IAMDatabaseAuthenticationEnabled")
      Prelude.<*> (x Prelude..@? "GlobalWriteForwardingRequested")
      Prelude.<*> (x Prelude..@? "DBClusterParameterGroup")
      Prelude.<*> (x Prelude..@? "ReplicationSourceIdentifier")
      Prelude.<*> (x Prelude..@? "DatabaseName")
      Prelude.<*> (x Prelude..@? "ActivityStreamKinesisStreamName")
      Prelude.<*> (x Prelude..@? "ActivityStreamMode")

instance Prelude.Hashable DBCluster

instance Prelude.NFData DBCluster

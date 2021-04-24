{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBCluster where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.ActivityStreamMode
import Network.AWS.RDS.Types.ActivityStreamStatus
import Network.AWS.RDS.Types.ClusterPendingModifiedValues
import Network.AWS.RDS.Types.DBClusterMember
import Network.AWS.RDS.Types.DBClusterOptionGroupStatus
import Network.AWS.RDS.Types.DBClusterRole
import Network.AWS.RDS.Types.DomainMembership
import Network.AWS.RDS.Types.ScalingConfigurationInfo
import Network.AWS.RDS.Types.Tag
import Network.AWS.RDS.Types.VPCSecurityGroupMembership
import Network.AWS.RDS.Types.WriteForwardingStatus

-- | Contains the details of an Amazon Aurora DB cluster.
--
--
-- This data type is used as a response element in the @DescribeDBClusters@ , @StopDBCluster@ , and @StartDBCluster@ actions.
--
--
-- /See:/ 'dbCluster' smart constructor.
data DBCluster = DBCluster'
  { _dcBackupRetentionPeriod ::
      !(Maybe Int),
    _dcDeletionProtection :: !(Maybe Bool),
    _dcStorageEncrypted :: !(Maybe Bool),
    _dcAssociatedRoles :: !(Maybe [DBClusterRole]),
    _dcVPCSecurityGroups ::
      !(Maybe [VPCSecurityGroupMembership]),
    _dcPreferredBackupWindow :: !(Maybe Text),
    _dcDBClusterMembers :: !(Maybe [DBClusterMember]),
    _dcStatus :: !(Maybe Text),
    _dcBacktrackConsumedChangeRecords ::
      !(Maybe Integer),
    _dcCrossAccountClone :: !(Maybe Bool),
    _dcAvailabilityZones :: !(Maybe [Text]),
    _dcGlobalWriteForwardingStatus ::
      !(Maybe WriteForwardingStatus),
    _dcDBClusterOptionGroupMemberships ::
      !(Maybe [DBClusterOptionGroupStatus]),
    _dcCloneGroupId :: !(Maybe Text),
    _dcLatestRestorableTime :: !(Maybe ISO8601),
    _dcDBClusterARN :: !(Maybe Text),
    _dcDomainMemberships :: !(Maybe [DomainMembership]),
    _dcActivityStreamKMSKeyId :: !(Maybe Text),
    _dcReaderEndpoint :: !(Maybe Text),
    _dcHTTPEndpointEnabled :: !(Maybe Bool),
    _dcClusterCreateTime :: !(Maybe ISO8601),
    _dcEarliestRestorableTime :: !(Maybe ISO8601),
    _dcEngineMode :: !(Maybe Text),
    _dcActivityStreamStatus ::
      !(Maybe ActivityStreamStatus),
    _dcEnabledCloudwatchLogsExports :: !(Maybe [Text]),
    _dcHostedZoneId :: !(Maybe Text),
    _dcDBSubnetGroup :: !(Maybe Text),
    _dcReadReplicaIdentifiers :: !(Maybe [Text]),
    _dcMasterUsername :: !(Maybe Text),
    _dcMultiAZ :: !(Maybe Bool),
    _dcKMSKeyId :: !(Maybe Text),
    _dcDBClusterIdentifier :: !(Maybe Text),
    _dcCapacity :: !(Maybe Int),
    _dcEngineVersion :: !(Maybe Text),
    _dcPreferredMaintenanceWindow :: !(Maybe Text),
    _dcCharacterSetName :: !(Maybe Text),
    _dcPort :: !(Maybe Int),
    _dcPercentProgress :: !(Maybe Text),
    _dcEngine :: !(Maybe Text),
    _dcPendingModifiedValues ::
      !(Maybe ClusterPendingModifiedValues),
    _dcDBClusterResourceId :: !(Maybe Text),
    _dcCopyTagsToSnapshot :: !(Maybe Bool),
    _dcCustomEndpoints :: !(Maybe [Text]),
    _dcEndpoint :: !(Maybe Text),
    _dcScalingConfigurationInfo ::
      !(Maybe ScalingConfigurationInfo),
    _dcEarliestBacktrackTime :: !(Maybe ISO8601),
    _dcTagList :: !(Maybe [Tag]),
    _dcAllocatedStorage :: !(Maybe Int),
    _dcBacktrackWindow :: !(Maybe Integer),
    _dcIAMDatabaseAuthenticationEnabled ::
      !(Maybe Bool),
    _dcGlobalWriteForwardingRequested :: !(Maybe Bool),
    _dcDBClusterParameterGroup :: !(Maybe Text),
    _dcReplicationSourceIdentifier :: !(Maybe Text),
    _dcDatabaseName :: !(Maybe Text),
    _dcActivityStreamKinesisStreamName :: !(Maybe Text),
    _dcActivityStreamMode ::
      !(Maybe ActivityStreamMode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DBCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcBackupRetentionPeriod' - Specifies the number of days for which automatic DB snapshots are retained.
--
-- * 'dcDeletionProtection' - Indicates if the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled.
--
-- * 'dcStorageEncrypted' - Specifies whether the DB cluster is encrypted.
--
-- * 'dcAssociatedRoles' - Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.
--
-- * 'dcVPCSecurityGroups' - Provides a list of VPC security groups that the DB cluster belongs to.
--
-- * 'dcPreferredBackupWindow' - Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ .
--
-- * 'dcDBClusterMembers' - Provides the list of instances that make up the DB cluster.
--
-- * 'dcStatus' - Specifies the current state of this DB cluster.
--
-- * 'dcBacktrackConsumedChangeRecords' - The number of change records stored for Backtrack.
--
-- * 'dcCrossAccountClone' - Specifies whether the DB cluster is a clone of a DB cluster owned by a different AWS account.
--
-- * 'dcAvailabilityZones' - Provides the list of Availability Zones (AZs) where instances in the DB cluster can be created.
--
-- * 'dcGlobalWriteForwardingStatus' - Specifies whether a secondary cluster in an Aurora global database has write forwarding enabled, not enabled, or is in the process of enabling it.
--
-- * 'dcDBClusterOptionGroupMemberships' - Provides the list of option group memberships for this DB cluster.
--
-- * 'dcCloneGroupId' - Identifies the clone group to which the DB cluster is associated.
--
-- * 'dcLatestRestorableTime' - Specifies the latest time to which a database can be restored with point-in-time restore.
--
-- * 'dcDBClusterARN' - The Amazon Resource Name (ARN) for the DB cluster.
--
-- * 'dcDomainMemberships' - The Active Directory Domain membership records associated with the DB cluster.
--
-- * 'dcActivityStreamKMSKeyId' - The AWS KMS key identifier used for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
--
-- * 'dcReaderEndpoint' - The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster.  If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.
--
-- * 'dcHTTPEndpointEnabled' - A value that indicates whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled. When enabled, the HTTP endpoint provides a connectionless web service API for running SQL queries on the Aurora Serverless DB cluster. You can also query your database from inside the RDS console with the query editor. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html Using the Data API for Aurora Serverless> in the /Amazon Aurora User Guide/ .
--
-- * 'dcClusterCreateTime' - Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).
--
-- * 'dcEarliestRestorableTime' - The earliest time to which a database can be restored with point-in-time restore.
--
-- * 'dcEngineMode' - The DB engine mode of the DB cluster, either @provisioned@ , @serverless@ , @parallelquery@ , @global@ , or @multimaster@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster> .
--
-- * 'dcActivityStreamStatus' - The status of the database activity stream.
--
-- * 'dcEnabledCloudwatchLogsExports' - A list of log types that this DB cluster is configured to export to CloudWatch Logs. Log types vary by DB engine. For information about the log types for each DB engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html Amazon RDS Database Log Files> in the /Amazon Aurora User Guide./
--
-- * 'dcHostedZoneId' - Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
--
-- * 'dcDBSubnetGroup' - Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.
--
-- * 'dcReadReplicaIdentifiers' - Contains one or more identifiers of the read replicas associated with this DB cluster.
--
-- * 'dcMasterUsername' - Contains the master username for the DB cluster.
--
-- * 'dcMultiAZ' - Specifies whether the DB cluster has instances in multiple Availability Zones.
--
-- * 'dcKMSKeyId' - If @StorageEncrypted@ is enabled, the AWS KMS key identifier for the encrypted DB cluster. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
--
-- * 'dcDBClusterIdentifier' - Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.
--
-- * 'dcCapacity' - The current capacity of an Aurora Serverless DB cluster. The capacity is 0 (zero) when the cluster is paused. For more information about Aurora Serverless, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html Using Amazon Aurora Serverless> in the /Amazon Aurora User Guide/ .
--
-- * 'dcEngineVersion' - Indicates the database engine version.
--
-- * 'dcPreferredMaintenanceWindow' - Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
--
-- * 'dcCharacterSetName' - If present, specifies the name of the character set that this cluster is associated with.
--
-- * 'dcPort' - Specifies the port that the database engine is listening on.
--
-- * 'dcPercentProgress' - Specifies the progress of the operation as a percentage.
--
-- * 'dcEngine' - The name of the database engine to be used for this DB cluster.
--
-- * 'dcPendingModifiedValues' - A value that specifies that changes to the DB cluster are pending. This element is only included when changes are pending. Specific changes are identified by subelements.
--
-- * 'dcDBClusterResourceId' - The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS CMK for the DB cluster is accessed.
--
-- * 'dcCopyTagsToSnapshot' - Specifies whether tags are copied from the DB cluster to snapshots of the DB cluster.
--
-- * 'dcCustomEndpoints' - Identifies all custom endpoints associated with the cluster.
--
-- * 'dcEndpoint' - Specifies the connection endpoint for the primary instance of the DB cluster.
--
-- * 'dcScalingConfigurationInfo' - Undocumented member.
--
-- * 'dcEarliestBacktrackTime' - The earliest time to which a DB cluster can be backtracked.
--
-- * 'dcTagList' - Undocumented member.
--
-- * 'dcAllocatedStorage' - For all database engines except Amazon Aurora, @AllocatedStorage@ specifies the allocated storage size in gibibytes (GiB). For Aurora, @AllocatedStorage@ always returns 1, because Aurora DB cluster storage size isn't fixed, but instead automatically adjusts as needed.
--
-- * 'dcBacktrackWindow' - The target backtrack window, in seconds. If this value is set to 0, backtracking is disabled for the DB cluster. Otherwise, backtracking is enabled.
--
-- * 'dcIAMDatabaseAuthenticationEnabled' - A value that indicates whether the mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
--
-- * 'dcGlobalWriteForwardingRequested' - Specifies whether you have requested to enable write forwarding for a secondary cluster in an Aurora global database. Because write forwarding takes time to enable, check the value of @GlobalWriteForwardingStatus@ to confirm that the request has completed before using the write forwarding feature for this cluster.
--
-- * 'dcDBClusterParameterGroup' - Specifies the name of the DB cluster parameter group for the DB cluster.
--
-- * 'dcReplicationSourceIdentifier' - Contains the identifier of the source DB cluster if this DB cluster is a read replica.
--
-- * 'dcDatabaseName' - Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.
--
-- * 'dcActivityStreamKinesisStreamName' - The name of the Amazon Kinesis data stream used for the database activity stream.
--
-- * 'dcActivityStreamMode' - The mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously.
dbCluster ::
  DBCluster
dbCluster =
  DBCluster'
    { _dcBackupRetentionPeriod = Nothing,
      _dcDeletionProtection = Nothing,
      _dcStorageEncrypted = Nothing,
      _dcAssociatedRoles = Nothing,
      _dcVPCSecurityGroups = Nothing,
      _dcPreferredBackupWindow = Nothing,
      _dcDBClusterMembers = Nothing,
      _dcStatus = Nothing,
      _dcBacktrackConsumedChangeRecords = Nothing,
      _dcCrossAccountClone = Nothing,
      _dcAvailabilityZones = Nothing,
      _dcGlobalWriteForwardingStatus = Nothing,
      _dcDBClusterOptionGroupMemberships = Nothing,
      _dcCloneGroupId = Nothing,
      _dcLatestRestorableTime = Nothing,
      _dcDBClusterARN = Nothing,
      _dcDomainMemberships = Nothing,
      _dcActivityStreamKMSKeyId = Nothing,
      _dcReaderEndpoint = Nothing,
      _dcHTTPEndpointEnabled = Nothing,
      _dcClusterCreateTime = Nothing,
      _dcEarliestRestorableTime = Nothing,
      _dcEngineMode = Nothing,
      _dcActivityStreamStatus = Nothing,
      _dcEnabledCloudwatchLogsExports = Nothing,
      _dcHostedZoneId = Nothing,
      _dcDBSubnetGroup = Nothing,
      _dcReadReplicaIdentifiers = Nothing,
      _dcMasterUsername = Nothing,
      _dcMultiAZ = Nothing,
      _dcKMSKeyId = Nothing,
      _dcDBClusterIdentifier = Nothing,
      _dcCapacity = Nothing,
      _dcEngineVersion = Nothing,
      _dcPreferredMaintenanceWindow = Nothing,
      _dcCharacterSetName = Nothing,
      _dcPort = Nothing,
      _dcPercentProgress = Nothing,
      _dcEngine = Nothing,
      _dcPendingModifiedValues = Nothing,
      _dcDBClusterResourceId = Nothing,
      _dcCopyTagsToSnapshot = Nothing,
      _dcCustomEndpoints = Nothing,
      _dcEndpoint = Nothing,
      _dcScalingConfigurationInfo = Nothing,
      _dcEarliestBacktrackTime = Nothing,
      _dcTagList = Nothing,
      _dcAllocatedStorage = Nothing,
      _dcBacktrackWindow = Nothing,
      _dcIAMDatabaseAuthenticationEnabled = Nothing,
      _dcGlobalWriteForwardingRequested = Nothing,
      _dcDBClusterParameterGroup = Nothing,
      _dcReplicationSourceIdentifier = Nothing,
      _dcDatabaseName = Nothing,
      _dcActivityStreamKinesisStreamName = Nothing,
      _dcActivityStreamMode = Nothing
    }

-- | Specifies the number of days for which automatic DB snapshots are retained.
dcBackupRetentionPeriod :: Lens' DBCluster (Maybe Int)
dcBackupRetentionPeriod = lens _dcBackupRetentionPeriod (\s a -> s {_dcBackupRetentionPeriod = a})

-- | Indicates if the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled.
dcDeletionProtection :: Lens' DBCluster (Maybe Bool)
dcDeletionProtection = lens _dcDeletionProtection (\s a -> s {_dcDeletionProtection = a})

-- | Specifies whether the DB cluster is encrypted.
dcStorageEncrypted :: Lens' DBCluster (Maybe Bool)
dcStorageEncrypted = lens _dcStorageEncrypted (\s a -> s {_dcStorageEncrypted = a})

-- | Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.
dcAssociatedRoles :: Lens' DBCluster [DBClusterRole]
dcAssociatedRoles = lens _dcAssociatedRoles (\s a -> s {_dcAssociatedRoles = a}) . _Default . _Coerce

-- | Provides a list of VPC security groups that the DB cluster belongs to.
dcVPCSecurityGroups :: Lens' DBCluster [VPCSecurityGroupMembership]
dcVPCSecurityGroups = lens _dcVPCSecurityGroups (\s a -> s {_dcVPCSecurityGroups = a}) . _Default . _Coerce

-- | Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ .
dcPreferredBackupWindow :: Lens' DBCluster (Maybe Text)
dcPreferredBackupWindow = lens _dcPreferredBackupWindow (\s a -> s {_dcPreferredBackupWindow = a})

-- | Provides the list of instances that make up the DB cluster.
dcDBClusterMembers :: Lens' DBCluster [DBClusterMember]
dcDBClusterMembers = lens _dcDBClusterMembers (\s a -> s {_dcDBClusterMembers = a}) . _Default . _Coerce

-- | Specifies the current state of this DB cluster.
dcStatus :: Lens' DBCluster (Maybe Text)
dcStatus = lens _dcStatus (\s a -> s {_dcStatus = a})

-- | The number of change records stored for Backtrack.
dcBacktrackConsumedChangeRecords :: Lens' DBCluster (Maybe Integer)
dcBacktrackConsumedChangeRecords = lens _dcBacktrackConsumedChangeRecords (\s a -> s {_dcBacktrackConsumedChangeRecords = a})

-- | Specifies whether the DB cluster is a clone of a DB cluster owned by a different AWS account.
dcCrossAccountClone :: Lens' DBCluster (Maybe Bool)
dcCrossAccountClone = lens _dcCrossAccountClone (\s a -> s {_dcCrossAccountClone = a})

-- | Provides the list of Availability Zones (AZs) where instances in the DB cluster can be created.
dcAvailabilityZones :: Lens' DBCluster [Text]
dcAvailabilityZones = lens _dcAvailabilityZones (\s a -> s {_dcAvailabilityZones = a}) . _Default . _Coerce

-- | Specifies whether a secondary cluster in an Aurora global database has write forwarding enabled, not enabled, or is in the process of enabling it.
dcGlobalWriteForwardingStatus :: Lens' DBCluster (Maybe WriteForwardingStatus)
dcGlobalWriteForwardingStatus = lens _dcGlobalWriteForwardingStatus (\s a -> s {_dcGlobalWriteForwardingStatus = a})

-- | Provides the list of option group memberships for this DB cluster.
dcDBClusterOptionGroupMemberships :: Lens' DBCluster [DBClusterOptionGroupStatus]
dcDBClusterOptionGroupMemberships = lens _dcDBClusterOptionGroupMemberships (\s a -> s {_dcDBClusterOptionGroupMemberships = a}) . _Default . _Coerce

-- | Identifies the clone group to which the DB cluster is associated.
dcCloneGroupId :: Lens' DBCluster (Maybe Text)
dcCloneGroupId = lens _dcCloneGroupId (\s a -> s {_dcCloneGroupId = a})

-- | Specifies the latest time to which a database can be restored with point-in-time restore.
dcLatestRestorableTime :: Lens' DBCluster (Maybe UTCTime)
dcLatestRestorableTime = lens _dcLatestRestorableTime (\s a -> s {_dcLatestRestorableTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) for the DB cluster.
dcDBClusterARN :: Lens' DBCluster (Maybe Text)
dcDBClusterARN = lens _dcDBClusterARN (\s a -> s {_dcDBClusterARN = a})

-- | The Active Directory Domain membership records associated with the DB cluster.
dcDomainMemberships :: Lens' DBCluster [DomainMembership]
dcDomainMemberships = lens _dcDomainMemberships (\s a -> s {_dcDomainMemberships = a}) . _Default . _Coerce

-- | The AWS KMS key identifier used for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
dcActivityStreamKMSKeyId :: Lens' DBCluster (Maybe Text)
dcActivityStreamKMSKeyId = lens _dcActivityStreamKMSKeyId (\s a -> s {_dcActivityStreamKMSKeyId = a})

-- | The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster.  If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.
dcReaderEndpoint :: Lens' DBCluster (Maybe Text)
dcReaderEndpoint = lens _dcReaderEndpoint (\s a -> s {_dcReaderEndpoint = a})

-- | A value that indicates whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled. When enabled, the HTTP endpoint provides a connectionless web service API for running SQL queries on the Aurora Serverless DB cluster. You can also query your database from inside the RDS console with the query editor. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html Using the Data API for Aurora Serverless> in the /Amazon Aurora User Guide/ .
dcHTTPEndpointEnabled :: Lens' DBCluster (Maybe Bool)
dcHTTPEndpointEnabled = lens _dcHTTPEndpointEnabled (\s a -> s {_dcHTTPEndpointEnabled = a})

-- | Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).
dcClusterCreateTime :: Lens' DBCluster (Maybe UTCTime)
dcClusterCreateTime = lens _dcClusterCreateTime (\s a -> s {_dcClusterCreateTime = a}) . mapping _Time

-- | The earliest time to which a database can be restored with point-in-time restore.
dcEarliestRestorableTime :: Lens' DBCluster (Maybe UTCTime)
dcEarliestRestorableTime = lens _dcEarliestRestorableTime (\s a -> s {_dcEarliestRestorableTime = a}) . mapping _Time

-- | The DB engine mode of the DB cluster, either @provisioned@ , @serverless@ , @parallelquery@ , @global@ , or @multimaster@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster> .
dcEngineMode :: Lens' DBCluster (Maybe Text)
dcEngineMode = lens _dcEngineMode (\s a -> s {_dcEngineMode = a})

-- | The status of the database activity stream.
dcActivityStreamStatus :: Lens' DBCluster (Maybe ActivityStreamStatus)
dcActivityStreamStatus = lens _dcActivityStreamStatus (\s a -> s {_dcActivityStreamStatus = a})

-- | A list of log types that this DB cluster is configured to export to CloudWatch Logs. Log types vary by DB engine. For information about the log types for each DB engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html Amazon RDS Database Log Files> in the /Amazon Aurora User Guide./
dcEnabledCloudwatchLogsExports :: Lens' DBCluster [Text]
dcEnabledCloudwatchLogsExports = lens _dcEnabledCloudwatchLogsExports (\s a -> s {_dcEnabledCloudwatchLogsExports = a}) . _Default . _Coerce

-- | Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
dcHostedZoneId :: Lens' DBCluster (Maybe Text)
dcHostedZoneId = lens _dcHostedZoneId (\s a -> s {_dcHostedZoneId = a})

-- | Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.
dcDBSubnetGroup :: Lens' DBCluster (Maybe Text)
dcDBSubnetGroup = lens _dcDBSubnetGroup (\s a -> s {_dcDBSubnetGroup = a})

-- | Contains one or more identifiers of the read replicas associated with this DB cluster.
dcReadReplicaIdentifiers :: Lens' DBCluster [Text]
dcReadReplicaIdentifiers = lens _dcReadReplicaIdentifiers (\s a -> s {_dcReadReplicaIdentifiers = a}) . _Default . _Coerce

-- | Contains the master username for the DB cluster.
dcMasterUsername :: Lens' DBCluster (Maybe Text)
dcMasterUsername = lens _dcMasterUsername (\s a -> s {_dcMasterUsername = a})

-- | Specifies whether the DB cluster has instances in multiple Availability Zones.
dcMultiAZ :: Lens' DBCluster (Maybe Bool)
dcMultiAZ = lens _dcMultiAZ (\s a -> s {_dcMultiAZ = a})

-- | If @StorageEncrypted@ is enabled, the AWS KMS key identifier for the encrypted DB cluster. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
dcKMSKeyId :: Lens' DBCluster (Maybe Text)
dcKMSKeyId = lens _dcKMSKeyId (\s a -> s {_dcKMSKeyId = a})

-- | Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.
dcDBClusterIdentifier :: Lens' DBCluster (Maybe Text)
dcDBClusterIdentifier = lens _dcDBClusterIdentifier (\s a -> s {_dcDBClusterIdentifier = a})

-- | The current capacity of an Aurora Serverless DB cluster. The capacity is 0 (zero) when the cluster is paused. For more information about Aurora Serverless, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html Using Amazon Aurora Serverless> in the /Amazon Aurora User Guide/ .
dcCapacity :: Lens' DBCluster (Maybe Int)
dcCapacity = lens _dcCapacity (\s a -> s {_dcCapacity = a})

-- | Indicates the database engine version.
dcEngineVersion :: Lens' DBCluster (Maybe Text)
dcEngineVersion = lens _dcEngineVersion (\s a -> s {_dcEngineVersion = a})

-- | Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
dcPreferredMaintenanceWindow :: Lens' DBCluster (Maybe Text)
dcPreferredMaintenanceWindow = lens _dcPreferredMaintenanceWindow (\s a -> s {_dcPreferredMaintenanceWindow = a})

-- | If present, specifies the name of the character set that this cluster is associated with.
dcCharacterSetName :: Lens' DBCluster (Maybe Text)
dcCharacterSetName = lens _dcCharacterSetName (\s a -> s {_dcCharacterSetName = a})

-- | Specifies the port that the database engine is listening on.
dcPort :: Lens' DBCluster (Maybe Int)
dcPort = lens _dcPort (\s a -> s {_dcPort = a})

-- | Specifies the progress of the operation as a percentage.
dcPercentProgress :: Lens' DBCluster (Maybe Text)
dcPercentProgress = lens _dcPercentProgress (\s a -> s {_dcPercentProgress = a})

-- | The name of the database engine to be used for this DB cluster.
dcEngine :: Lens' DBCluster (Maybe Text)
dcEngine = lens _dcEngine (\s a -> s {_dcEngine = a})

-- | A value that specifies that changes to the DB cluster are pending. This element is only included when changes are pending. Specific changes are identified by subelements.
dcPendingModifiedValues :: Lens' DBCluster (Maybe ClusterPendingModifiedValues)
dcPendingModifiedValues = lens _dcPendingModifiedValues (\s a -> s {_dcPendingModifiedValues = a})

-- | The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS CMK for the DB cluster is accessed.
dcDBClusterResourceId :: Lens' DBCluster (Maybe Text)
dcDBClusterResourceId = lens _dcDBClusterResourceId (\s a -> s {_dcDBClusterResourceId = a})

-- | Specifies whether tags are copied from the DB cluster to snapshots of the DB cluster.
dcCopyTagsToSnapshot :: Lens' DBCluster (Maybe Bool)
dcCopyTagsToSnapshot = lens _dcCopyTagsToSnapshot (\s a -> s {_dcCopyTagsToSnapshot = a})

-- | Identifies all custom endpoints associated with the cluster.
dcCustomEndpoints :: Lens' DBCluster [Text]
dcCustomEndpoints = lens _dcCustomEndpoints (\s a -> s {_dcCustomEndpoints = a}) . _Default . _Coerce

-- | Specifies the connection endpoint for the primary instance of the DB cluster.
dcEndpoint :: Lens' DBCluster (Maybe Text)
dcEndpoint = lens _dcEndpoint (\s a -> s {_dcEndpoint = a})

-- | Undocumented member.
dcScalingConfigurationInfo :: Lens' DBCluster (Maybe ScalingConfigurationInfo)
dcScalingConfigurationInfo = lens _dcScalingConfigurationInfo (\s a -> s {_dcScalingConfigurationInfo = a})

-- | The earliest time to which a DB cluster can be backtracked.
dcEarliestBacktrackTime :: Lens' DBCluster (Maybe UTCTime)
dcEarliestBacktrackTime = lens _dcEarliestBacktrackTime (\s a -> s {_dcEarliestBacktrackTime = a}) . mapping _Time

-- | Undocumented member.
dcTagList :: Lens' DBCluster [Tag]
dcTagList = lens _dcTagList (\s a -> s {_dcTagList = a}) . _Default . _Coerce

-- | For all database engines except Amazon Aurora, @AllocatedStorage@ specifies the allocated storage size in gibibytes (GiB). For Aurora, @AllocatedStorage@ always returns 1, because Aurora DB cluster storage size isn't fixed, but instead automatically adjusts as needed.
dcAllocatedStorage :: Lens' DBCluster (Maybe Int)
dcAllocatedStorage = lens _dcAllocatedStorage (\s a -> s {_dcAllocatedStorage = a})

-- | The target backtrack window, in seconds. If this value is set to 0, backtracking is disabled for the DB cluster. Otherwise, backtracking is enabled.
dcBacktrackWindow :: Lens' DBCluster (Maybe Integer)
dcBacktrackWindow = lens _dcBacktrackWindow (\s a -> s {_dcBacktrackWindow = a})

-- | A value that indicates whether the mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
dcIAMDatabaseAuthenticationEnabled :: Lens' DBCluster (Maybe Bool)
dcIAMDatabaseAuthenticationEnabled = lens _dcIAMDatabaseAuthenticationEnabled (\s a -> s {_dcIAMDatabaseAuthenticationEnabled = a})

-- | Specifies whether you have requested to enable write forwarding for a secondary cluster in an Aurora global database. Because write forwarding takes time to enable, check the value of @GlobalWriteForwardingStatus@ to confirm that the request has completed before using the write forwarding feature for this cluster.
dcGlobalWriteForwardingRequested :: Lens' DBCluster (Maybe Bool)
dcGlobalWriteForwardingRequested = lens _dcGlobalWriteForwardingRequested (\s a -> s {_dcGlobalWriteForwardingRequested = a})

-- | Specifies the name of the DB cluster parameter group for the DB cluster.
dcDBClusterParameterGroup :: Lens' DBCluster (Maybe Text)
dcDBClusterParameterGroup = lens _dcDBClusterParameterGroup (\s a -> s {_dcDBClusterParameterGroup = a})

-- | Contains the identifier of the source DB cluster if this DB cluster is a read replica.
dcReplicationSourceIdentifier :: Lens' DBCluster (Maybe Text)
dcReplicationSourceIdentifier = lens _dcReplicationSourceIdentifier (\s a -> s {_dcReplicationSourceIdentifier = a})

-- | Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.
dcDatabaseName :: Lens' DBCluster (Maybe Text)
dcDatabaseName = lens _dcDatabaseName (\s a -> s {_dcDatabaseName = a})

-- | The name of the Amazon Kinesis data stream used for the database activity stream.
dcActivityStreamKinesisStreamName :: Lens' DBCluster (Maybe Text)
dcActivityStreamKinesisStreamName = lens _dcActivityStreamKinesisStreamName (\s a -> s {_dcActivityStreamKinesisStreamName = a})

-- | The mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously.
dcActivityStreamMode :: Lens' DBCluster (Maybe ActivityStreamMode)
dcActivityStreamMode = lens _dcActivityStreamMode (\s a -> s {_dcActivityStreamMode = a})

instance FromXML DBCluster where
  parseXML x =
    DBCluster'
      <$> (x .@? "BackupRetentionPeriod")
      <*> (x .@? "DeletionProtection")
      <*> (x .@? "StorageEncrypted")
      <*> ( x .@? "AssociatedRoles" .!@ mempty
              >>= may (parseXMLList "DBClusterRole")
          )
      <*> ( x .@? "VpcSecurityGroups" .!@ mempty
              >>= may (parseXMLList "VpcSecurityGroupMembership")
          )
      <*> (x .@? "PreferredBackupWindow")
      <*> ( x .@? "DBClusterMembers" .!@ mempty
              >>= may (parseXMLList "DBClusterMember")
          )
      <*> (x .@? "Status")
      <*> (x .@? "BacktrackConsumedChangeRecords")
      <*> (x .@? "CrossAccountClone")
      <*> ( x .@? "AvailabilityZones" .!@ mempty
              >>= may (parseXMLList "AvailabilityZone")
          )
      <*> (x .@? "GlobalWriteForwardingStatus")
      <*> ( x .@? "DBClusterOptionGroupMemberships" .!@ mempty
              >>= may (parseXMLList "DBClusterOptionGroup")
          )
      <*> (x .@? "CloneGroupId")
      <*> (x .@? "LatestRestorableTime")
      <*> (x .@? "DBClusterArn")
      <*> ( x .@? "DomainMemberships" .!@ mempty
              >>= may (parseXMLList "DomainMembership")
          )
      <*> (x .@? "ActivityStreamKmsKeyId")
      <*> (x .@? "ReaderEndpoint")
      <*> (x .@? "HttpEndpointEnabled")
      <*> (x .@? "ClusterCreateTime")
      <*> (x .@? "EarliestRestorableTime")
      <*> (x .@? "EngineMode")
      <*> (x .@? "ActivityStreamStatus")
      <*> ( x .@? "EnabledCloudwatchLogsExports" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "HostedZoneId")
      <*> (x .@? "DBSubnetGroup")
      <*> ( x .@? "ReadReplicaIdentifiers" .!@ mempty
              >>= may (parseXMLList "ReadReplicaIdentifier")
          )
      <*> (x .@? "MasterUsername")
      <*> (x .@? "MultiAZ")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "DBClusterIdentifier")
      <*> (x .@? "Capacity")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "PreferredMaintenanceWindow")
      <*> (x .@? "CharacterSetName")
      <*> (x .@? "Port")
      <*> (x .@? "PercentProgress")
      <*> (x .@? "Engine")
      <*> (x .@? "PendingModifiedValues")
      <*> (x .@? "DbClusterResourceId")
      <*> (x .@? "CopyTagsToSnapshot")
      <*> ( x .@? "CustomEndpoints" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Endpoint")
      <*> (x .@? "ScalingConfigurationInfo")
      <*> (x .@? "EarliestBacktrackTime")
      <*> ( x .@? "TagList" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "AllocatedStorage")
      <*> (x .@? "BacktrackWindow")
      <*> (x .@? "IAMDatabaseAuthenticationEnabled")
      <*> (x .@? "GlobalWriteForwardingRequested")
      <*> (x .@? "DBClusterParameterGroup")
      <*> (x .@? "ReplicationSourceIdentifier")
      <*> (x .@? "DatabaseName")
      <*> (x .@? "ActivityStreamKinesisStreamName")
      <*> (x .@? "ActivityStreamMode")

instance Hashable DBCluster

instance NFData DBCluster

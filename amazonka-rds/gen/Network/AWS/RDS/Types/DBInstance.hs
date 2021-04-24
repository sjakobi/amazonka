{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBInstance where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.DBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.Types.DBInstanceRole
import Network.AWS.RDS.Types.DBInstanceStatusInfo
import Network.AWS.RDS.Types.DBParameterGroupStatus
import Network.AWS.RDS.Types.DBSecurityGroupMembership
import Network.AWS.RDS.Types.DBSubnetGroup
import Network.AWS.RDS.Types.DomainMembership
import Network.AWS.RDS.Types.Endpoint
import Network.AWS.RDS.Types.OptionGroupMembership
import Network.AWS.RDS.Types.PendingModifiedValues
import Network.AWS.RDS.Types.ProcessorFeature
import Network.AWS.RDS.Types.ReplicaMode
import Network.AWS.RDS.Types.Tag
import Network.AWS.RDS.Types.VPCSecurityGroupMembership

-- | Contains the details of an Amazon RDS DB instance.
--
--
-- This data type is used as a response element in the @DescribeDBInstances@ action.
--
--
-- /See:/ 'dbInstance' smart constructor.
data DBInstance = DBInstance'
  { _diBackupRetentionPeriod ::
      !(Maybe Int),
    _diDeletionProtection :: !(Maybe Bool),
    _diStorageEncrypted :: !(Maybe Bool),
    _diAssociatedRoles :: !(Maybe [DBInstanceRole]),
    _diVPCSecurityGroups ::
      !(Maybe [VPCSecurityGroupMembership]),
    _diPreferredBackupWindow :: !(Maybe Text),
    _diCACertificateIdentifier :: !(Maybe Text),
    _diDBSecurityGroups ::
      !(Maybe [DBSecurityGroupMembership]),
    _diMaxAllocatedStorage :: !(Maybe Int),
    _diStatusInfos :: !(Maybe [DBInstanceStatusInfo]),
    _diStorageType :: !(Maybe Text),
    _diLatestRestorableTime :: !(Maybe ISO8601),
    _diDomainMemberships ::
      !(Maybe [DomainMembership]),
    _diDBInstancePort :: !(Maybe Int),
    _diMonitoringInterval :: !(Maybe Int),
    _diDBParameterGroups ::
      !(Maybe [DBParameterGroupStatus]),
    _diInstanceCreateTime :: !(Maybe ISO8601),
    _diDBiResourceId :: !(Maybe Text),
    _diOptionGroupMemberships ::
      !(Maybe [OptionGroupMembership]),
    _diListenerEndpoint :: !(Maybe Endpoint),
    _diMonitoringRoleARN :: !(Maybe Text),
    _diEnabledCloudwatchLogsExports ::
      !(Maybe [Text]),
    _diDBSubnetGroup :: !(Maybe DBSubnetGroup),
    _diNcharCharacterSetName :: !(Maybe Text),
    _diMasterUsername :: !(Maybe Text),
    _diMultiAZ :: !(Maybe Bool),
    _diPubliclyAccessible :: !(Maybe Bool),
    _diPerformanceInsightsKMSKeyId :: !(Maybe Text),
    _diKMSKeyId :: !(Maybe Text),
    _diAvailabilityZone :: !(Maybe Text),
    _diDBClusterIdentifier :: !(Maybe Text),
    _diCustomerOwnedIPEnabled :: !(Maybe Bool),
    _diEngineVersion :: !(Maybe Text),
    _diPreferredMaintenanceWindow :: !(Maybe Text),
    _diCharacterSetName :: !(Maybe Text),
    _diPerformanceInsightsRetentionPeriod ::
      !(Maybe Int),
    _diLicenseModel :: !(Maybe Text),
    _diDBInstanceIdentifier :: !(Maybe Text),
    _diPromotionTier :: !(Maybe Int),
    _diProcessorFeatures ::
      !(Maybe [ProcessorFeature]),
    _diAWSBackupRecoveryPointARN :: !(Maybe Text),
    _diDBInstanceClass :: !(Maybe Text),
    _diDBName :: !(Maybe Text),
    _diEngine :: !(Maybe Text),
    _diReadReplicaDBClusterIdentifiers ::
      !(Maybe [Text]),
    _diPendingModifiedValues ::
      !(Maybe PendingModifiedValues),
    _diTDECredentialARN :: !(Maybe Text),
    _diTimezone :: !(Maybe Text),
    _diDBInstanceStatus :: !(Maybe Text),
    _diDBInstanceAutomatedBackupsReplications ::
      !(Maybe [DBInstanceAutomatedBackupsReplication]),
    _diCopyTagsToSnapshot :: !(Maybe Bool),
    _diReadReplicaSourceDBInstanceIdentifier ::
      !(Maybe Text),
    _diReplicaMode :: !(Maybe ReplicaMode),
    _diEndpoint :: !(Maybe Endpoint),
    _diTagList :: !(Maybe [Tag]),
    _diPerformanceInsightsEnabled :: !(Maybe Bool),
    _diAllocatedStorage :: !(Maybe Int),
    _diIAMDatabaseAuthenticationEnabled ::
      !(Maybe Bool),
    _diSecondaryAvailabilityZone :: !(Maybe Text),
    _diIOPS :: !(Maybe Int),
    _diEnhancedMonitoringResourceARN :: !(Maybe Text),
    _diReadReplicaDBInstanceIdentifiers ::
      !(Maybe [Text]),
    _diAutoMinorVersionUpgrade :: !(Maybe Bool),
    _diDBInstanceARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DBInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diBackupRetentionPeriod' - Specifies the number of days for which automatic DB snapshots are retained.
--
-- * 'diDeletionProtection' - Indicates if the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
--
-- * 'diStorageEncrypted' - Specifies whether the DB instance is encrypted.
--
-- * 'diAssociatedRoles' - The AWS Identity and Access Management (IAM) roles associated with the DB instance.
--
-- * 'diVPCSecurityGroups' - Provides a list of VPC security group elements that the DB instance belongs to.
--
-- * 'diPreferredBackupWindow' - Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ .
--
-- * 'diCACertificateIdentifier' - The identifier of the CA certificate for this DB instance.
--
-- * 'diDBSecurityGroups' - A list of DB security group elements containing @DBSecurityGroup.Name@ and @DBSecurityGroup.Status@ subelements.
--
-- * 'diMaxAllocatedStorage' - The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
--
-- * 'diStatusInfos' - The status of a read replica. If the instance isn't a read replica, this is blank.
--
-- * 'diStorageType' - Specifies the storage type associated with DB instance.
--
-- * 'diLatestRestorableTime' - Specifies the latest time to which a database can be restored with point-in-time restore.
--
-- * 'diDomainMemberships' - The Active Directory Domain membership records associated with the DB instance.
--
-- * 'diDBInstancePort' - Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.
--
-- * 'diMonitoringInterval' - The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
--
-- * 'diDBParameterGroups' - Provides the list of DB parameter groups applied to this DB instance.
--
-- * 'diInstanceCreateTime' - Provides the date and time the DB instance was created.
--
-- * 'diDBiResourceId' - The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS customer master key (CMK) for the DB instance is accessed.
--
-- * 'diOptionGroupMemberships' - Provides the list of option group memberships for this DB instance.
--
-- * 'diListenerEndpoint' - Specifies the listener connection endpoint for SQL Server Always On.
--
-- * 'diMonitoringRoleARN' - The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
--
-- * 'diEnabledCloudwatchLogsExports' - A list of log types that this DB instance is configured to export to CloudWatch Logs. Log types vary by DB engine. For information about the log types for each DB engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files> in the /Amazon RDS User Guide./
--
-- * 'diDBSubnetGroup' - Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.
--
-- * 'diNcharCharacterSetName' - The name of the NCHAR character set for the Oracle DB instance. This character set specifies the Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.
--
-- * 'diMasterUsername' - Contains the master username for the DB instance.
--
-- * 'diMultiAZ' - Specifies if the DB instance is a Multi-AZ deployment.
--
-- * 'diPubliclyAccessible' - Specifies the accessibility options for the DB instance. When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it. When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address. For more information, see 'CreateDBInstance' .
--
-- * 'diPerformanceInsightsKMSKeyId' - The AWS KMS key identifier for encryption of Performance Insights data. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
--
-- * 'diKMSKeyId' - If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB instance.  The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
--
-- * 'diAvailabilityZone' - Specifies the name of the Availability Zone the DB instance is located in.
--
-- * 'diDBClusterIdentifier' - If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
--
-- * 'diCustomerOwnedIPEnabled' - Specifies whether a customer-owned IP address (CoIP) is enabled for an RDS on Outposts DB instance. A /CoIP / provides local or external connectivity to resources in your Outpost subnets through your on-premises network. For some use cases, a CoIP can provide lower latency for connections to the DB instance from outside of its virtual private cloud (VPC) on your local network. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide/ . For more information about CoIPs, see <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses> in the /AWS Outposts User Guide/ .
--
-- * 'diEngineVersion' - Indicates the database engine version.
--
-- * 'diPreferredMaintenanceWindow' - Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
--
-- * 'diCharacterSetName' - If present, specifies the name of the character set that this instance is associated with.
--
-- * 'diPerformanceInsightsRetentionPeriod' - The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).
--
-- * 'diLicenseModel' - License model information for this DB instance.
--
-- * 'diDBInstanceIdentifier' - Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.
--
-- * 'diPromotionTier' - A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster> in the /Amazon Aurora User Guide/ .
--
-- * 'diProcessorFeatures' - The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
--
-- * 'diAWSBackupRecoveryPointARN' - The Amazon Resource Name (ARN) of the recovery point in AWS Backup.
--
-- * 'diDBInstanceClass' - Contains the name of the compute and memory capacity class of the DB instance.
--
-- * 'diDBName' - The meaning of this parameter differs according to the database engine you use. __MySQL, MariaDB, SQL Server, PostgreSQL__  Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance. Type: String __Oracle__  Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.
--
-- * 'diEngine' - The name of the database engine to be used for this DB instance.
--
-- * 'diReadReplicaDBClusterIdentifiers' - Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance is replicated as a read replica. For example, when you create an Aurora read replica of an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is shown. This output does not contain information about cross region Aurora read replicas.
--
-- * 'diPendingModifiedValues' - A value that specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.
--
-- * 'diTDECredentialARN' - The ARN from the key store with which the instance is associated for TDE encryption.
--
-- * 'diTimezone' - The time zone of the DB instance. In most cases, the @Timezone@ element is empty. @Timezone@ content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.
--
-- * 'diDBInstanceStatus' - Specifies the current state of this database. For information about DB instance statuses, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status> in the /Amazon RDS User Guide./
--
-- * 'diDBInstanceAutomatedBackupsReplications' - The list of replicated automated backups associated with the DB instance.
--
-- * 'diCopyTagsToSnapshot' - Specifies whether tags are copied from the DB instance to snapshots of the DB instance. __Amazon Aurora__  Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting. For more information, see @DBCluster@ .
--
-- * 'diReadReplicaSourceDBInstanceIdentifier' - Contains the identifier of the source DB instance if this DB instance is a read replica.
--
-- * 'diReplicaMode' - The open mode of an Oracle read replica. The default is @open-read-only@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS> in the /Amazon RDS User Guide/ .
--
-- * 'diEndpoint' - Specifies the connection endpoint.
--
-- * 'diTagList' - Undocumented member.
--
-- * 'diPerformanceInsightsEnabled' - True if Performance Insights is enabled for the DB instance, and otherwise false.
--
-- * 'diAllocatedStorage' - Specifies the allocated storage size specified in gibibytes.
--
-- * 'diIAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false. IAM database authentication can be enabled for the following database engines     * For MySQL 5.6, minor version 5.6.34 or higher     * For MySQL 5.7, minor version 5.7.16 or higher     * Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.
--
-- * 'diSecondaryAvailabilityZone' - If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.
--
-- * 'diIOPS' - Specifies the Provisioned IOPS (I/O operations per second) value.
--
-- * 'diEnhancedMonitoringResourceARN' - The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.
--
-- * 'diReadReplicaDBInstanceIdentifiers' - Contains one or more identifiers of the read replicas associated with this DB instance.
--
-- * 'diAutoMinorVersionUpgrade' - A value that indicates that minor version patches are applied automatically.
--
-- * 'diDBInstanceARN' - The Amazon Resource Name (ARN) for the DB instance.
dbInstance ::
  DBInstance
dbInstance =
  DBInstance'
    { _diBackupRetentionPeriod = Nothing,
      _diDeletionProtection = Nothing,
      _diStorageEncrypted = Nothing,
      _diAssociatedRoles = Nothing,
      _diVPCSecurityGroups = Nothing,
      _diPreferredBackupWindow = Nothing,
      _diCACertificateIdentifier = Nothing,
      _diDBSecurityGroups = Nothing,
      _diMaxAllocatedStorage = Nothing,
      _diStatusInfos = Nothing,
      _diStorageType = Nothing,
      _diLatestRestorableTime = Nothing,
      _diDomainMemberships = Nothing,
      _diDBInstancePort = Nothing,
      _diMonitoringInterval = Nothing,
      _diDBParameterGroups = Nothing,
      _diInstanceCreateTime = Nothing,
      _diDBiResourceId = Nothing,
      _diOptionGroupMemberships = Nothing,
      _diListenerEndpoint = Nothing,
      _diMonitoringRoleARN = Nothing,
      _diEnabledCloudwatchLogsExports = Nothing,
      _diDBSubnetGroup = Nothing,
      _diNcharCharacterSetName = Nothing,
      _diMasterUsername = Nothing,
      _diMultiAZ = Nothing,
      _diPubliclyAccessible = Nothing,
      _diPerformanceInsightsKMSKeyId = Nothing,
      _diKMSKeyId = Nothing,
      _diAvailabilityZone = Nothing,
      _diDBClusterIdentifier = Nothing,
      _diCustomerOwnedIPEnabled = Nothing,
      _diEngineVersion = Nothing,
      _diPreferredMaintenanceWindow = Nothing,
      _diCharacterSetName = Nothing,
      _diPerformanceInsightsRetentionPeriod = Nothing,
      _diLicenseModel = Nothing,
      _diDBInstanceIdentifier = Nothing,
      _diPromotionTier = Nothing,
      _diProcessorFeatures = Nothing,
      _diAWSBackupRecoveryPointARN = Nothing,
      _diDBInstanceClass = Nothing,
      _diDBName = Nothing,
      _diEngine = Nothing,
      _diReadReplicaDBClusterIdentifiers = Nothing,
      _diPendingModifiedValues = Nothing,
      _diTDECredentialARN = Nothing,
      _diTimezone = Nothing,
      _diDBInstanceStatus = Nothing,
      _diDBInstanceAutomatedBackupsReplications = Nothing,
      _diCopyTagsToSnapshot = Nothing,
      _diReadReplicaSourceDBInstanceIdentifier = Nothing,
      _diReplicaMode = Nothing,
      _diEndpoint = Nothing,
      _diTagList = Nothing,
      _diPerformanceInsightsEnabled = Nothing,
      _diAllocatedStorage = Nothing,
      _diIAMDatabaseAuthenticationEnabled = Nothing,
      _diSecondaryAvailabilityZone = Nothing,
      _diIOPS = Nothing,
      _diEnhancedMonitoringResourceARN = Nothing,
      _diReadReplicaDBInstanceIdentifiers = Nothing,
      _diAutoMinorVersionUpgrade = Nothing,
      _diDBInstanceARN = Nothing
    }

-- | Specifies the number of days for which automatic DB snapshots are retained.
diBackupRetentionPeriod :: Lens' DBInstance (Maybe Int)
diBackupRetentionPeriod = lens _diBackupRetentionPeriod (\s a -> s {_diBackupRetentionPeriod = a})

-- | Indicates if the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
diDeletionProtection :: Lens' DBInstance (Maybe Bool)
diDeletionProtection = lens _diDeletionProtection (\s a -> s {_diDeletionProtection = a})

-- | Specifies whether the DB instance is encrypted.
diStorageEncrypted :: Lens' DBInstance (Maybe Bool)
diStorageEncrypted = lens _diStorageEncrypted (\s a -> s {_diStorageEncrypted = a})

-- | The AWS Identity and Access Management (IAM) roles associated with the DB instance.
diAssociatedRoles :: Lens' DBInstance [DBInstanceRole]
diAssociatedRoles = lens _diAssociatedRoles (\s a -> s {_diAssociatedRoles = a}) . _Default . _Coerce

-- | Provides a list of VPC security group elements that the DB instance belongs to.
diVPCSecurityGroups :: Lens' DBInstance [VPCSecurityGroupMembership]
diVPCSecurityGroups = lens _diVPCSecurityGroups (\s a -> s {_diVPCSecurityGroups = a}) . _Default . _Coerce

-- | Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the @BackupRetentionPeriod@ .
diPreferredBackupWindow :: Lens' DBInstance (Maybe Text)
diPreferredBackupWindow = lens _diPreferredBackupWindow (\s a -> s {_diPreferredBackupWindow = a})

-- | The identifier of the CA certificate for this DB instance.
diCACertificateIdentifier :: Lens' DBInstance (Maybe Text)
diCACertificateIdentifier = lens _diCACertificateIdentifier (\s a -> s {_diCACertificateIdentifier = a})

-- | A list of DB security group elements containing @DBSecurityGroup.Name@ and @DBSecurityGroup.Status@ subelements.
diDBSecurityGroups :: Lens' DBInstance [DBSecurityGroupMembership]
diDBSecurityGroups = lens _diDBSecurityGroups (\s a -> s {_diDBSecurityGroups = a}) . _Default . _Coerce

-- | The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
diMaxAllocatedStorage :: Lens' DBInstance (Maybe Int)
diMaxAllocatedStorage = lens _diMaxAllocatedStorage (\s a -> s {_diMaxAllocatedStorage = a})

-- | The status of a read replica. If the instance isn't a read replica, this is blank.
diStatusInfos :: Lens' DBInstance [DBInstanceStatusInfo]
diStatusInfos = lens _diStatusInfos (\s a -> s {_diStatusInfos = a}) . _Default . _Coerce

-- | Specifies the storage type associated with DB instance.
diStorageType :: Lens' DBInstance (Maybe Text)
diStorageType = lens _diStorageType (\s a -> s {_diStorageType = a})

-- | Specifies the latest time to which a database can be restored with point-in-time restore.
diLatestRestorableTime :: Lens' DBInstance (Maybe UTCTime)
diLatestRestorableTime = lens _diLatestRestorableTime (\s a -> s {_diLatestRestorableTime = a}) . mapping _Time

-- | The Active Directory Domain membership records associated with the DB instance.
diDomainMemberships :: Lens' DBInstance [DomainMembership]
diDomainMemberships = lens _diDomainMemberships (\s a -> s {_diDomainMemberships = a}) . _Default . _Coerce

-- | Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.
diDBInstancePort :: Lens' DBInstance (Maybe Int)
diDBInstancePort = lens _diDBInstancePort (\s a -> s {_diDBInstancePort = a})

-- | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
diMonitoringInterval :: Lens' DBInstance (Maybe Int)
diMonitoringInterval = lens _diMonitoringInterval (\s a -> s {_diMonitoringInterval = a})

-- | Provides the list of DB parameter groups applied to this DB instance.
diDBParameterGroups :: Lens' DBInstance [DBParameterGroupStatus]
diDBParameterGroups = lens _diDBParameterGroups (\s a -> s {_diDBParameterGroups = a}) . _Default . _Coerce

-- | Provides the date and time the DB instance was created.
diInstanceCreateTime :: Lens' DBInstance (Maybe UTCTime)
diInstanceCreateTime = lens _diInstanceCreateTime (\s a -> s {_diInstanceCreateTime = a}) . mapping _Time

-- | The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS customer master key (CMK) for the DB instance is accessed.
diDBiResourceId :: Lens' DBInstance (Maybe Text)
diDBiResourceId = lens _diDBiResourceId (\s a -> s {_diDBiResourceId = a})

-- | Provides the list of option group memberships for this DB instance.
diOptionGroupMemberships :: Lens' DBInstance [OptionGroupMembership]
diOptionGroupMemberships = lens _diOptionGroupMemberships (\s a -> s {_diOptionGroupMemberships = a}) . _Default . _Coerce

-- | Specifies the listener connection endpoint for SQL Server Always On.
diListenerEndpoint :: Lens' DBInstance (Maybe Endpoint)
diListenerEndpoint = lens _diListenerEndpoint (\s a -> s {_diListenerEndpoint = a})

-- | The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
diMonitoringRoleARN :: Lens' DBInstance (Maybe Text)
diMonitoringRoleARN = lens _diMonitoringRoleARN (\s a -> s {_diMonitoringRoleARN = a})

-- | A list of log types that this DB instance is configured to export to CloudWatch Logs. Log types vary by DB engine. For information about the log types for each DB engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files> in the /Amazon RDS User Guide./
diEnabledCloudwatchLogsExports :: Lens' DBInstance [Text]
diEnabledCloudwatchLogsExports = lens _diEnabledCloudwatchLogsExports (\s a -> s {_diEnabledCloudwatchLogsExports = a}) . _Default . _Coerce

-- | Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.
diDBSubnetGroup :: Lens' DBInstance (Maybe DBSubnetGroup)
diDBSubnetGroup = lens _diDBSubnetGroup (\s a -> s {_diDBSubnetGroup = a})

-- | The name of the NCHAR character set for the Oracle DB instance. This character set specifies the Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.
diNcharCharacterSetName :: Lens' DBInstance (Maybe Text)
diNcharCharacterSetName = lens _diNcharCharacterSetName (\s a -> s {_diNcharCharacterSetName = a})

-- | Contains the master username for the DB instance.
diMasterUsername :: Lens' DBInstance (Maybe Text)
diMasterUsername = lens _diMasterUsername (\s a -> s {_diMasterUsername = a})

-- | Specifies if the DB instance is a Multi-AZ deployment.
diMultiAZ :: Lens' DBInstance (Maybe Bool)
diMultiAZ = lens _diMultiAZ (\s a -> s {_diMultiAZ = a})

-- | Specifies the accessibility options for the DB instance. When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it. When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address. For more information, see 'CreateDBInstance' .
diPubliclyAccessible :: Lens' DBInstance (Maybe Bool)
diPubliclyAccessible = lens _diPubliclyAccessible (\s a -> s {_diPubliclyAccessible = a})

-- | The AWS KMS key identifier for encryption of Performance Insights data. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
diPerformanceInsightsKMSKeyId :: Lens' DBInstance (Maybe Text)
diPerformanceInsightsKMSKeyId = lens _diPerformanceInsightsKMSKeyId (\s a -> s {_diPerformanceInsightsKMSKeyId = a})

-- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB instance.  The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
diKMSKeyId :: Lens' DBInstance (Maybe Text)
diKMSKeyId = lens _diKMSKeyId (\s a -> s {_diKMSKeyId = a})

-- | Specifies the name of the Availability Zone the DB instance is located in.
diAvailabilityZone :: Lens' DBInstance (Maybe Text)
diAvailabilityZone = lens _diAvailabilityZone (\s a -> s {_diAvailabilityZone = a})

-- | If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
diDBClusterIdentifier :: Lens' DBInstance (Maybe Text)
diDBClusterIdentifier = lens _diDBClusterIdentifier (\s a -> s {_diDBClusterIdentifier = a})

-- | Specifies whether a customer-owned IP address (CoIP) is enabled for an RDS on Outposts DB instance. A /CoIP / provides local or external connectivity to resources in your Outpost subnets through your on-premises network. For some use cases, a CoIP can provide lower latency for connections to the DB instance from outside of its virtual private cloud (VPC) on your local network. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide/ . For more information about CoIPs, see <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses> in the /AWS Outposts User Guide/ .
diCustomerOwnedIPEnabled :: Lens' DBInstance (Maybe Bool)
diCustomerOwnedIPEnabled = lens _diCustomerOwnedIPEnabled (\s a -> s {_diCustomerOwnedIPEnabled = a})

-- | Indicates the database engine version.
diEngineVersion :: Lens' DBInstance (Maybe Text)
diEngineVersion = lens _diEngineVersion (\s a -> s {_diEngineVersion = a})

-- | Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
diPreferredMaintenanceWindow :: Lens' DBInstance (Maybe Text)
diPreferredMaintenanceWindow = lens _diPreferredMaintenanceWindow (\s a -> s {_diPreferredMaintenanceWindow = a})

-- | If present, specifies the name of the character set that this instance is associated with.
diCharacterSetName :: Lens' DBInstance (Maybe Text)
diCharacterSetName = lens _diCharacterSetName (\s a -> s {_diCharacterSetName = a})

-- | The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).
diPerformanceInsightsRetentionPeriod :: Lens' DBInstance (Maybe Int)
diPerformanceInsightsRetentionPeriod = lens _diPerformanceInsightsRetentionPeriod (\s a -> s {_diPerformanceInsightsRetentionPeriod = a})

-- | License model information for this DB instance.
diLicenseModel :: Lens' DBInstance (Maybe Text)
diLicenseModel = lens _diLicenseModel (\s a -> s {_diLicenseModel = a})

-- | Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.
diDBInstanceIdentifier :: Lens' DBInstance (Maybe Text)
diDBInstanceIdentifier = lens _diDBInstanceIdentifier (\s a -> s {_diDBInstanceIdentifier = a})

-- | A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster> in the /Amazon Aurora User Guide/ .
diPromotionTier :: Lens' DBInstance (Maybe Int)
diPromotionTier = lens _diPromotionTier (\s a -> s {_diPromotionTier = a})

-- | The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
diProcessorFeatures :: Lens' DBInstance [ProcessorFeature]
diProcessorFeatures = lens _diProcessorFeatures (\s a -> s {_diProcessorFeatures = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the recovery point in AWS Backup.
diAWSBackupRecoveryPointARN :: Lens' DBInstance (Maybe Text)
diAWSBackupRecoveryPointARN = lens _diAWSBackupRecoveryPointARN (\s a -> s {_diAWSBackupRecoveryPointARN = a})

-- | Contains the name of the compute and memory capacity class of the DB instance.
diDBInstanceClass :: Lens' DBInstance (Maybe Text)
diDBInstanceClass = lens _diDBInstanceClass (\s a -> s {_diDBInstanceClass = a})

-- | The meaning of this parameter differs according to the database engine you use. __MySQL, MariaDB, SQL Server, PostgreSQL__  Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance. Type: String __Oracle__  Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.
diDBName :: Lens' DBInstance (Maybe Text)
diDBName = lens _diDBName (\s a -> s {_diDBName = a})

-- | The name of the database engine to be used for this DB instance.
diEngine :: Lens' DBInstance (Maybe Text)
diEngine = lens _diEngine (\s a -> s {_diEngine = a})

-- | Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance is replicated as a read replica. For example, when you create an Aurora read replica of an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is shown. This output does not contain information about cross region Aurora read replicas.
diReadReplicaDBClusterIdentifiers :: Lens' DBInstance [Text]
diReadReplicaDBClusterIdentifiers = lens _diReadReplicaDBClusterIdentifiers (\s a -> s {_diReadReplicaDBClusterIdentifiers = a}) . _Default . _Coerce

-- | A value that specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.
diPendingModifiedValues :: Lens' DBInstance (Maybe PendingModifiedValues)
diPendingModifiedValues = lens _diPendingModifiedValues (\s a -> s {_diPendingModifiedValues = a})

-- | The ARN from the key store with which the instance is associated for TDE encryption.
diTDECredentialARN :: Lens' DBInstance (Maybe Text)
diTDECredentialARN = lens _diTDECredentialARN (\s a -> s {_diTDECredentialARN = a})

-- | The time zone of the DB instance. In most cases, the @Timezone@ element is empty. @Timezone@ content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.
diTimezone :: Lens' DBInstance (Maybe Text)
diTimezone = lens _diTimezone (\s a -> s {_diTimezone = a})

-- | Specifies the current state of this database. For information about DB instance statuses, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status> in the /Amazon RDS User Guide./
diDBInstanceStatus :: Lens' DBInstance (Maybe Text)
diDBInstanceStatus = lens _diDBInstanceStatus (\s a -> s {_diDBInstanceStatus = a})

-- | The list of replicated automated backups associated with the DB instance.
diDBInstanceAutomatedBackupsReplications :: Lens' DBInstance [DBInstanceAutomatedBackupsReplication]
diDBInstanceAutomatedBackupsReplications = lens _diDBInstanceAutomatedBackupsReplications (\s a -> s {_diDBInstanceAutomatedBackupsReplications = a}) . _Default . _Coerce

-- | Specifies whether tags are copied from the DB instance to snapshots of the DB instance. __Amazon Aurora__  Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting. For more information, see @DBCluster@ .
diCopyTagsToSnapshot :: Lens' DBInstance (Maybe Bool)
diCopyTagsToSnapshot = lens _diCopyTagsToSnapshot (\s a -> s {_diCopyTagsToSnapshot = a})

-- | Contains the identifier of the source DB instance if this DB instance is a read replica.
diReadReplicaSourceDBInstanceIdentifier :: Lens' DBInstance (Maybe Text)
diReadReplicaSourceDBInstanceIdentifier = lens _diReadReplicaSourceDBInstanceIdentifier (\s a -> s {_diReadReplicaSourceDBInstanceIdentifier = a})

-- | The open mode of an Oracle read replica. The default is @open-read-only@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS> in the /Amazon RDS User Guide/ .
diReplicaMode :: Lens' DBInstance (Maybe ReplicaMode)
diReplicaMode = lens _diReplicaMode (\s a -> s {_diReplicaMode = a})

-- | Specifies the connection endpoint.
diEndpoint :: Lens' DBInstance (Maybe Endpoint)
diEndpoint = lens _diEndpoint (\s a -> s {_diEndpoint = a})

-- | Undocumented member.
diTagList :: Lens' DBInstance [Tag]
diTagList = lens _diTagList (\s a -> s {_diTagList = a}) . _Default . _Coerce

-- | True if Performance Insights is enabled for the DB instance, and otherwise false.
diPerformanceInsightsEnabled :: Lens' DBInstance (Maybe Bool)
diPerformanceInsightsEnabled = lens _diPerformanceInsightsEnabled (\s a -> s {_diPerformanceInsightsEnabled = a})

-- | Specifies the allocated storage size specified in gibibytes.
diAllocatedStorage :: Lens' DBInstance (Maybe Int)
diAllocatedStorage = lens _diAllocatedStorage (\s a -> s {_diAllocatedStorage = a})

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false. IAM database authentication can be enabled for the following database engines     * For MySQL 5.6, minor version 5.6.34 or higher     * For MySQL 5.7, minor version 5.7.16 or higher     * Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.
diIAMDatabaseAuthenticationEnabled :: Lens' DBInstance (Maybe Bool)
diIAMDatabaseAuthenticationEnabled = lens _diIAMDatabaseAuthenticationEnabled (\s a -> s {_diIAMDatabaseAuthenticationEnabled = a})

-- | If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.
diSecondaryAvailabilityZone :: Lens' DBInstance (Maybe Text)
diSecondaryAvailabilityZone = lens _diSecondaryAvailabilityZone (\s a -> s {_diSecondaryAvailabilityZone = a})

-- | Specifies the Provisioned IOPS (I/O operations per second) value.
diIOPS :: Lens' DBInstance (Maybe Int)
diIOPS = lens _diIOPS (\s a -> s {_diIOPS = a})

-- | The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.
diEnhancedMonitoringResourceARN :: Lens' DBInstance (Maybe Text)
diEnhancedMonitoringResourceARN = lens _diEnhancedMonitoringResourceARN (\s a -> s {_diEnhancedMonitoringResourceARN = a})

-- | Contains one or more identifiers of the read replicas associated with this DB instance.
diReadReplicaDBInstanceIdentifiers :: Lens' DBInstance [Text]
diReadReplicaDBInstanceIdentifiers = lens _diReadReplicaDBInstanceIdentifiers (\s a -> s {_diReadReplicaDBInstanceIdentifiers = a}) . _Default . _Coerce

-- | A value that indicates that minor version patches are applied automatically.
diAutoMinorVersionUpgrade :: Lens' DBInstance (Maybe Bool)
diAutoMinorVersionUpgrade = lens _diAutoMinorVersionUpgrade (\s a -> s {_diAutoMinorVersionUpgrade = a})

-- | The Amazon Resource Name (ARN) for the DB instance.
diDBInstanceARN :: Lens' DBInstance (Maybe Text)
diDBInstanceARN = lens _diDBInstanceARN (\s a -> s {_diDBInstanceARN = a})

instance FromXML DBInstance where
  parseXML x =
    DBInstance'
      <$> (x .@? "BackupRetentionPeriod")
      <*> (x .@? "DeletionProtection")
      <*> (x .@? "StorageEncrypted")
      <*> ( x .@? "AssociatedRoles" .!@ mempty
              >>= may (parseXMLList "DBInstanceRole")
          )
      <*> ( x .@? "VpcSecurityGroups" .!@ mempty
              >>= may (parseXMLList "VpcSecurityGroupMembership")
          )
      <*> (x .@? "PreferredBackupWindow")
      <*> (x .@? "CACertificateIdentifier")
      <*> ( x .@? "DBSecurityGroups" .!@ mempty
              >>= may (parseXMLList "DBSecurityGroup")
          )
      <*> (x .@? "MaxAllocatedStorage")
      <*> ( x .@? "StatusInfos" .!@ mempty
              >>= may (parseXMLList "DBInstanceStatusInfo")
          )
      <*> (x .@? "StorageType")
      <*> (x .@? "LatestRestorableTime")
      <*> ( x .@? "DomainMemberships" .!@ mempty
              >>= may (parseXMLList "DomainMembership")
          )
      <*> (x .@? "DbInstancePort")
      <*> (x .@? "MonitoringInterval")
      <*> ( x .@? "DBParameterGroups" .!@ mempty
              >>= may (parseXMLList "DBParameterGroup")
          )
      <*> (x .@? "InstanceCreateTime")
      <*> (x .@? "DbiResourceId")
      <*> ( x .@? "OptionGroupMemberships" .!@ mempty
              >>= may (parseXMLList "OptionGroupMembership")
          )
      <*> (x .@? "ListenerEndpoint")
      <*> (x .@? "MonitoringRoleArn")
      <*> ( x .@? "EnabledCloudwatchLogsExports" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "DBSubnetGroup")
      <*> (x .@? "NcharCharacterSetName")
      <*> (x .@? "MasterUsername")
      <*> (x .@? "MultiAZ")
      <*> (x .@? "PubliclyAccessible")
      <*> (x .@? "PerformanceInsightsKMSKeyId")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "AvailabilityZone")
      <*> (x .@? "DBClusterIdentifier")
      <*> (x .@? "CustomerOwnedIpEnabled")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "PreferredMaintenanceWindow")
      <*> (x .@? "CharacterSetName")
      <*> (x .@? "PerformanceInsightsRetentionPeriod")
      <*> (x .@? "LicenseModel")
      <*> (x .@? "DBInstanceIdentifier")
      <*> (x .@? "PromotionTier")
      <*> ( x .@? "ProcessorFeatures" .!@ mempty
              >>= may (parseXMLList "ProcessorFeature")
          )
      <*> (x .@? "AwsBackupRecoveryPointArn")
      <*> (x .@? "DBInstanceClass")
      <*> (x .@? "DBName")
      <*> (x .@? "Engine")
      <*> ( x .@? "ReadReplicaDBClusterIdentifiers" .!@ mempty
              >>= may (parseXMLList "ReadReplicaDBClusterIdentifier")
          )
      <*> (x .@? "PendingModifiedValues")
      <*> (x .@? "TdeCredentialArn")
      <*> (x .@? "Timezone")
      <*> (x .@? "DBInstanceStatus")
      <*> ( x .@? "DBInstanceAutomatedBackupsReplications"
              .!@ mempty
              >>= may
                ( parseXMLList
                    "DBInstanceAutomatedBackupsReplication"
                )
          )
      <*> (x .@? "CopyTagsToSnapshot")
      <*> (x .@? "ReadReplicaSourceDBInstanceIdentifier")
      <*> (x .@? "ReplicaMode")
      <*> (x .@? "Endpoint")
      <*> ( x .@? "TagList" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "PerformanceInsightsEnabled")
      <*> (x .@? "AllocatedStorage")
      <*> (x .@? "IAMDatabaseAuthenticationEnabled")
      <*> (x .@? "SecondaryAvailabilityZone")
      <*> (x .@? "Iops")
      <*> (x .@? "EnhancedMonitoringResourceArn")
      <*> ( x .@? "ReadReplicaDBInstanceIdentifiers" .!@ mempty
              >>= may (parseXMLList "ReadReplicaDBInstanceIdentifier")
          )
      <*> (x .@? "AutoMinorVersionUpgrade")
      <*> (x .@? "DBInstanceArn")

instance Hashable DBInstance

instance NFData DBInstance

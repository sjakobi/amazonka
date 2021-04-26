{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
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
import Network.AWS.RDS.Types.VpcSecurityGroupMembership

-- | Contains the details of an Amazon RDS DB instance.
--
-- This data type is used as a response element in the
-- @DescribeDBInstances@ action.
--
-- /See:/ 'newDBInstance' smart constructor.
data DBInstance = DBInstance'
  { -- | Specifies the number of days for which automatic DB snapshots are
    -- retained.
    backupRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | Indicates if the DB instance has deletion protection enabled. The
    -- database can\'t be deleted when deletion protection is enabled. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance>.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether the DB instance is encrypted.
    storageEncrypted :: Prelude.Maybe Prelude.Bool,
    -- | The AWS Identity and Access Management (IAM) roles associated with the
    -- DB instance.
    associatedRoles :: Prelude.Maybe [DBInstanceRole],
    -- | Provides a list of VPC security group elements that the DB instance
    -- belongs to.
    vpcSecurityGroups :: Prelude.Maybe [VpcSecurityGroupMembership],
    -- | Specifies the daily time range during which automated backups are
    -- created if automated backups are enabled, as determined by the
    -- @BackupRetentionPeriod@.
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the CA certificate for this DB instance.
    cACertificateIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A list of DB security group elements containing @DBSecurityGroup.Name@
    -- and @DBSecurityGroup.Status@ subelements.
    dBSecurityGroups :: Prelude.Maybe [DBSecurityGroupMembership],
    -- | The upper limit to which Amazon RDS can automatically scale the storage
    -- of the DB instance.
    maxAllocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | The status of a read replica. If the instance isn\'t a read replica,
    -- this is blank.
    statusInfos :: Prelude.Maybe [DBInstanceStatusInfo],
    -- | Specifies the storage type associated with DB instance.
    storageType :: Prelude.Maybe Prelude.Text,
    -- | Specifies the latest time to which a database can be restored with
    -- point-in-time restore.
    latestRestorableTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The Active Directory Domain membership records associated with the DB
    -- instance.
    domainMemberships :: Prelude.Maybe [DomainMembership],
    -- | Specifies the port that the DB instance listens on. If the DB instance
    -- is part of a DB cluster, this can be a different port than the DB
    -- cluster port.
    dbInstancePort :: Prelude.Maybe Prelude.Int,
    -- | The interval, in seconds, between points when Enhanced Monitoring
    -- metrics are collected for the DB instance.
    monitoringInterval :: Prelude.Maybe Prelude.Int,
    -- | Provides the list of DB parameter groups applied to this DB instance.
    dBParameterGroups :: Prelude.Maybe [DBParameterGroupStatus],
    -- | Provides the date and time the DB instance was created.
    instanceCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The AWS Region-unique, immutable identifier for the DB instance. This
    -- identifier is found in AWS CloudTrail log entries whenever the AWS KMS
    -- customer master key (CMK) for the DB instance is accessed.
    dbiResourceId :: Prelude.Maybe Prelude.Text,
    -- | Provides the list of option group memberships for this DB instance.
    optionGroupMemberships :: Prelude.Maybe [OptionGroupMembership],
    -- | Specifies the listener connection endpoint for SQL Server Always On.
    listenerEndpoint :: Prelude.Maybe Endpoint,
    -- | The ARN for the IAM role that permits RDS to send Enhanced Monitoring
    -- metrics to Amazon CloudWatch Logs.
    monitoringRoleArn :: Prelude.Maybe Prelude.Text,
    -- | A list of log types that this DB instance is configured to export to
    -- CloudWatch Logs.
    --
    -- Log types vary by DB engine. For information about the log types for
    -- each DB engine, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files>
    -- in the /Amazon RDS User Guide./
    enabledCloudwatchLogsExports :: Prelude.Maybe [Prelude.Text],
    -- | Specifies information on the subnet group associated with the DB
    -- instance, including the name, description, and subnets in the subnet
    -- group.
    dBSubnetGroup :: Prelude.Maybe DBSubnetGroup,
    -- | The name of the NCHAR character set for the Oracle DB instance. This
    -- character set specifies the Unicode encoding for data stored in table
    -- columns of type NCHAR, NCLOB, or NVARCHAR2.
    ncharCharacterSetName :: Prelude.Maybe Prelude.Text,
    -- | Contains the master username for the DB instance.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | Specifies if the DB instance is a Multi-AZ deployment.
    multiAZ :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the accessibility options for the DB instance.
    --
    -- When the DB instance is publicly accessible, its DNS endpoint resolves
    -- to the private IP address from within the DB instance\'s VPC, and to the
    -- public IP address from outside of the DB instance\'s VPC. Access to the
    -- DB instance is ultimately controlled by the security group it uses, and
    -- that public access is not permitted if the security group assigned to
    -- the DB instance doesn\'t permit it.
    --
    -- When the DB instance isn\'t publicly accessible, it is an internal DB
    -- instance with a DNS name that resolves to a private IP address.
    --
    -- For more information, see CreateDBInstance.
    publiclyAccessible :: Prelude.Maybe Prelude.Bool,
    -- | The AWS KMS key identifier for encryption of Performance Insights data.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    performanceInsightsKMSKeyId :: Prelude.Maybe Prelude.Text,
    -- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the
    -- encrypted DB instance.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the Availability Zone the DB instance is located
    -- in.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | If the DB instance is a member of a DB cluster, contains the name of the
    -- DB cluster that the DB instance is a member of.
    dBClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether a customer-owned IP address (CoIP) is enabled for an
    -- RDS on Outposts DB instance.
    --
    -- A /CoIP/ provides local or external connectivity to resources in your
    -- Outpost subnets through your on-premises network. For some use cases, a
    -- CoIP can provide lower latency for connections to the DB instance from
    -- outside of its virtual private cloud (VPC) on your local network.
    --
    -- For more information about RDS on Outposts, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts>
    -- in the /Amazon RDS User Guide/.
    --
    -- For more information about CoIPs, see
    -- <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses>
    -- in the /AWS Outposts User Guide/.
    customerOwnedIpEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Indicates the database engine version.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | Specifies the weekly time range during which system maintenance can
    -- occur, in Universal Coordinated Time (UTC).
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | If present, specifies the name of the character set that this instance
    -- is associated with.
    characterSetName :: Prelude.Maybe Prelude.Text,
    -- | The amount of time, in days, to retain Performance Insights data. Valid
    -- values are 7 or 731 (2 years).
    performanceInsightsRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | License model information for this DB instance.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | Contains a user-supplied database identifier. This identifier is the
    -- unique key that identifies a DB instance.
    dBInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A value that specifies the order in which an Aurora Replica is promoted
    -- to the primary instance after a failure of the existing primary
    -- instance. For more information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster>
    -- in the /Amazon Aurora User Guide/.
    promotionTier :: Prelude.Maybe Prelude.Int,
    -- | The number of CPU cores and the number of threads per core for the DB
    -- instance class of the DB instance.
    processorFeatures :: Prelude.Maybe [ProcessorFeature],
    -- | The Amazon Resource Name (ARN) of the recovery point in AWS Backup.
    awsBackupRecoveryPointArn :: Prelude.Maybe Prelude.Text,
    -- | Contains the name of the compute and memory capacity class of the DB
    -- instance.
    dBInstanceClass :: Prelude.Maybe Prelude.Text,
    -- | The meaning of this parameter differs according to the database engine
    -- you use.
    --
    -- __MySQL, MariaDB, SQL Server, PostgreSQL__
    --
    -- Contains the name of the initial database of this instance that was
    -- provided at create time, if one was specified when the DB instance was
    -- created. This same name is returned for the life of the DB instance.
    --
    -- Type: String
    --
    -- __Oracle__
    --
    -- Contains the Oracle System ID (SID) of the created DB instance. Not
    -- shown when the returned parameters do not apply to an Oracle DB
    -- instance.
    dBName :: Prelude.Maybe Prelude.Text,
    -- | The name of the database engine to be used for this DB instance.
    engine :: Prelude.Maybe Prelude.Text,
    -- | Contains one or more identifiers of Aurora DB clusters to which the RDS
    -- DB instance is replicated as a read replica. For example, when you
    -- create an Aurora read replica of an RDS MySQL DB instance, the Aurora
    -- MySQL DB cluster for the Aurora read replica is shown. This output does
    -- not contain information about cross region Aurora read replicas.
    --
    -- Currently, each RDS DB instance can have only one Aurora read replica.
    readReplicaDBClusterIdentifiers :: Prelude.Maybe [Prelude.Text],
    -- | A value that specifies that changes to the DB instance are pending. This
    -- element is only included when changes are pending. Specific changes are
    -- identified by subelements.
    pendingModifiedValues :: Prelude.Maybe PendingModifiedValues,
    -- | The ARN from the key store with which the instance is associated for TDE
    -- encryption.
    tdeCredentialArn :: Prelude.Maybe Prelude.Text,
    -- | The time zone of the DB instance. In most cases, the @Timezone@ element
    -- is empty. @Timezone@ content appears only for Microsoft SQL Server DB
    -- instances that were created with a time zone specified.
    timezone :: Prelude.Maybe Prelude.Text,
    -- | Specifies the current state of this database.
    --
    -- For information about DB instance statuses, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status>
    -- in the /Amazon RDS User Guide./
    dBInstanceStatus :: Prelude.Maybe Prelude.Text,
    -- | The list of replicated automated backups associated with the DB
    -- instance.
    dBInstanceAutomatedBackupsReplications :: Prelude.Maybe [DBInstanceAutomatedBackupsReplication],
    -- | Specifies whether tags are copied from the DB instance to snapshots of
    -- the DB instance.
    --
    -- __Amazon Aurora__
    --
    -- Not applicable. Copying tags to snapshots is managed by the DB cluster.
    -- Setting this value for an Aurora DB instance has no effect on the DB
    -- cluster setting. For more information, see @DBCluster@.
    copyTagsToSnapshot :: Prelude.Maybe Prelude.Bool,
    -- | Contains the identifier of the source DB instance if this DB instance is
    -- a read replica.
    readReplicaSourceDBInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The open mode of an Oracle read replica. The default is
    -- @open-read-only@. For more information, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS>
    -- in the /Amazon RDS User Guide/.
    --
    -- This attribute is only supported in RDS for Oracle.
    replicaMode :: Prelude.Maybe ReplicaMode,
    -- | Specifies the connection endpoint.
    endpoint :: Prelude.Maybe Endpoint,
    tagList :: Prelude.Maybe [Tag],
    -- | True if Performance Insights is enabled for the DB instance, and
    -- otherwise false.
    performanceInsightsEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the allocated storage size specified in gibibytes.
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | True if mapping of AWS Identity and Access Management (IAM) accounts to
    -- database accounts is enabled, and otherwise false.
    --
    -- IAM database authentication can be enabled for the following database
    -- engines
    --
    -- -   For MySQL 5.6, minor version 5.6.34 or higher
    --
    -- -   For MySQL 5.7, minor version 5.7.16 or higher
    --
    -- -   Aurora 5.6 or higher. To enable IAM database authentication for
    --     Aurora, see DBCluster Type.
    iAMDatabaseAuthenticationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | If present, specifies the name of the secondary Availability Zone for a
    -- DB instance with multi-AZ support.
    secondaryAvailabilityZone :: Prelude.Maybe Prelude.Text,
    -- | Specifies the Provisioned IOPS (I\/O operations per second) value.
    iops :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream
    -- that receives the Enhanced Monitoring metrics data for the DB instance.
    enhancedMonitoringResourceArn :: Prelude.Maybe Prelude.Text,
    -- | Contains one or more identifiers of the read replicas associated with
    -- this DB instance.
    readReplicaDBInstanceIdentifiers :: Prelude.Maybe [Prelude.Text],
    -- | A value that indicates that minor version patches are applied
    -- automatically.
    autoMinorVersionUpgrade :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) for the DB instance.
    dBInstanceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupRetentionPeriod', 'dBInstance_backupRetentionPeriod' - Specifies the number of days for which automatic DB snapshots are
-- retained.
--
-- 'deletionProtection', 'dBInstance_deletionProtection' - Indicates if the DB instance has deletion protection enabled. The
-- database can\'t be deleted when deletion protection is enabled. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance>.
--
-- 'storageEncrypted', 'dBInstance_storageEncrypted' - Specifies whether the DB instance is encrypted.
--
-- 'associatedRoles', 'dBInstance_associatedRoles' - The AWS Identity and Access Management (IAM) roles associated with the
-- DB instance.
--
-- 'vpcSecurityGroups', 'dBInstance_vpcSecurityGroups' - Provides a list of VPC security group elements that the DB instance
-- belongs to.
--
-- 'preferredBackupWindow', 'dBInstance_preferredBackupWindow' - Specifies the daily time range during which automated backups are
-- created if automated backups are enabled, as determined by the
-- @BackupRetentionPeriod@.
--
-- 'cACertificateIdentifier', 'dBInstance_cACertificateIdentifier' - The identifier of the CA certificate for this DB instance.
--
-- 'dBSecurityGroups', 'dBInstance_dBSecurityGroups' - A list of DB security group elements containing @DBSecurityGroup.Name@
-- and @DBSecurityGroup.Status@ subelements.
--
-- 'maxAllocatedStorage', 'dBInstance_maxAllocatedStorage' - The upper limit to which Amazon RDS can automatically scale the storage
-- of the DB instance.
--
-- 'statusInfos', 'dBInstance_statusInfos' - The status of a read replica. If the instance isn\'t a read replica,
-- this is blank.
--
-- 'storageType', 'dBInstance_storageType' - Specifies the storage type associated with DB instance.
--
-- 'latestRestorableTime', 'dBInstance_latestRestorableTime' - Specifies the latest time to which a database can be restored with
-- point-in-time restore.
--
-- 'domainMemberships', 'dBInstance_domainMemberships' - The Active Directory Domain membership records associated with the DB
-- instance.
--
-- 'dbInstancePort', 'dBInstance_dbInstancePort' - Specifies the port that the DB instance listens on. If the DB instance
-- is part of a DB cluster, this can be a different port than the DB
-- cluster port.
--
-- 'monitoringInterval', 'dBInstance_monitoringInterval' - The interval, in seconds, between points when Enhanced Monitoring
-- metrics are collected for the DB instance.
--
-- 'dBParameterGroups', 'dBInstance_dBParameterGroups' - Provides the list of DB parameter groups applied to this DB instance.
--
-- 'instanceCreateTime', 'dBInstance_instanceCreateTime' - Provides the date and time the DB instance was created.
--
-- 'dbiResourceId', 'dBInstance_dbiResourceId' - The AWS Region-unique, immutable identifier for the DB instance. This
-- identifier is found in AWS CloudTrail log entries whenever the AWS KMS
-- customer master key (CMK) for the DB instance is accessed.
--
-- 'optionGroupMemberships', 'dBInstance_optionGroupMemberships' - Provides the list of option group memberships for this DB instance.
--
-- 'listenerEndpoint', 'dBInstance_listenerEndpoint' - Specifies the listener connection endpoint for SQL Server Always On.
--
-- 'monitoringRoleArn', 'dBInstance_monitoringRoleArn' - The ARN for the IAM role that permits RDS to send Enhanced Monitoring
-- metrics to Amazon CloudWatch Logs.
--
-- 'enabledCloudwatchLogsExports', 'dBInstance_enabledCloudwatchLogsExports' - A list of log types that this DB instance is configured to export to
-- CloudWatch Logs.
--
-- Log types vary by DB engine. For information about the log types for
-- each DB engine, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files>
-- in the /Amazon RDS User Guide./
--
-- 'dBSubnetGroup', 'dBInstance_dBSubnetGroup' - Specifies information on the subnet group associated with the DB
-- instance, including the name, description, and subnets in the subnet
-- group.
--
-- 'ncharCharacterSetName', 'dBInstance_ncharCharacterSetName' - The name of the NCHAR character set for the Oracle DB instance. This
-- character set specifies the Unicode encoding for data stored in table
-- columns of type NCHAR, NCLOB, or NVARCHAR2.
--
-- 'masterUsername', 'dBInstance_masterUsername' - Contains the master username for the DB instance.
--
-- 'multiAZ', 'dBInstance_multiAZ' - Specifies if the DB instance is a Multi-AZ deployment.
--
-- 'publiclyAccessible', 'dBInstance_publiclyAccessible' - Specifies the accessibility options for the DB instance.
--
-- When the DB instance is publicly accessible, its DNS endpoint resolves
-- to the private IP address from within the DB instance\'s VPC, and to the
-- public IP address from outside of the DB instance\'s VPC. Access to the
-- DB instance is ultimately controlled by the security group it uses, and
-- that public access is not permitted if the security group assigned to
-- the DB instance doesn\'t permit it.
--
-- When the DB instance isn\'t publicly accessible, it is an internal DB
-- instance with a DNS name that resolves to a private IP address.
--
-- For more information, see CreateDBInstance.
--
-- 'performanceInsightsKMSKeyId', 'dBInstance_performanceInsightsKMSKeyId' - The AWS KMS key identifier for encryption of Performance Insights data.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'kmsKeyId', 'dBInstance_kmsKeyId' - If @StorageEncrypted@ is true, the AWS KMS key identifier for the
-- encrypted DB instance.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'availabilityZone', 'dBInstance_availabilityZone' - Specifies the name of the Availability Zone the DB instance is located
-- in.
--
-- 'dBClusterIdentifier', 'dBInstance_dBClusterIdentifier' - If the DB instance is a member of a DB cluster, contains the name of the
-- DB cluster that the DB instance is a member of.
--
-- 'customerOwnedIpEnabled', 'dBInstance_customerOwnedIpEnabled' - Specifies whether a customer-owned IP address (CoIP) is enabled for an
-- RDS on Outposts DB instance.
--
-- A /CoIP/ provides local or external connectivity to resources in your
-- Outpost subnets through your on-premises network. For some use cases, a
-- CoIP can provide lower latency for connections to the DB instance from
-- outside of its virtual private cloud (VPC) on your local network.
--
-- For more information about RDS on Outposts, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts>
-- in the /Amazon RDS User Guide/.
--
-- For more information about CoIPs, see
-- <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses>
-- in the /AWS Outposts User Guide/.
--
-- 'engineVersion', 'dBInstance_engineVersion' - Indicates the database engine version.
--
-- 'preferredMaintenanceWindow', 'dBInstance_preferredMaintenanceWindow' - Specifies the weekly time range during which system maintenance can
-- occur, in Universal Coordinated Time (UTC).
--
-- 'characterSetName', 'dBInstance_characterSetName' - If present, specifies the name of the character set that this instance
-- is associated with.
--
-- 'performanceInsightsRetentionPeriod', 'dBInstance_performanceInsightsRetentionPeriod' - The amount of time, in days, to retain Performance Insights data. Valid
-- values are 7 or 731 (2 years).
--
-- 'licenseModel', 'dBInstance_licenseModel' - License model information for this DB instance.
--
-- 'dBInstanceIdentifier', 'dBInstance_dBInstanceIdentifier' - Contains a user-supplied database identifier. This identifier is the
-- unique key that identifies a DB instance.
--
-- 'promotionTier', 'dBInstance_promotionTier' - A value that specifies the order in which an Aurora Replica is promoted
-- to the primary instance after a failure of the existing primary
-- instance. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster>
-- in the /Amazon Aurora User Guide/.
--
-- 'processorFeatures', 'dBInstance_processorFeatures' - The number of CPU cores and the number of threads per core for the DB
-- instance class of the DB instance.
--
-- 'awsBackupRecoveryPointArn', 'dBInstance_awsBackupRecoveryPointArn' - The Amazon Resource Name (ARN) of the recovery point in AWS Backup.
--
-- 'dBInstanceClass', 'dBInstance_dBInstanceClass' - Contains the name of the compute and memory capacity class of the DB
-- instance.
--
-- 'dBName', 'dBInstance_dBName' - The meaning of this parameter differs according to the database engine
-- you use.
--
-- __MySQL, MariaDB, SQL Server, PostgreSQL__
--
-- Contains the name of the initial database of this instance that was
-- provided at create time, if one was specified when the DB instance was
-- created. This same name is returned for the life of the DB instance.
--
-- Type: String
--
-- __Oracle__
--
-- Contains the Oracle System ID (SID) of the created DB instance. Not
-- shown when the returned parameters do not apply to an Oracle DB
-- instance.
--
-- 'engine', 'dBInstance_engine' - The name of the database engine to be used for this DB instance.
--
-- 'readReplicaDBClusterIdentifiers', 'dBInstance_readReplicaDBClusterIdentifiers' - Contains one or more identifiers of Aurora DB clusters to which the RDS
-- DB instance is replicated as a read replica. For example, when you
-- create an Aurora read replica of an RDS MySQL DB instance, the Aurora
-- MySQL DB cluster for the Aurora read replica is shown. This output does
-- not contain information about cross region Aurora read replicas.
--
-- Currently, each RDS DB instance can have only one Aurora read replica.
--
-- 'pendingModifiedValues', 'dBInstance_pendingModifiedValues' - A value that specifies that changes to the DB instance are pending. This
-- element is only included when changes are pending. Specific changes are
-- identified by subelements.
--
-- 'tdeCredentialArn', 'dBInstance_tdeCredentialArn' - The ARN from the key store with which the instance is associated for TDE
-- encryption.
--
-- 'timezone', 'dBInstance_timezone' - The time zone of the DB instance. In most cases, the @Timezone@ element
-- is empty. @Timezone@ content appears only for Microsoft SQL Server DB
-- instances that were created with a time zone specified.
--
-- 'dBInstanceStatus', 'dBInstance_dBInstanceStatus' - Specifies the current state of this database.
--
-- For information about DB instance statuses, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status>
-- in the /Amazon RDS User Guide./
--
-- 'dBInstanceAutomatedBackupsReplications', 'dBInstance_dBInstanceAutomatedBackupsReplications' - The list of replicated automated backups associated with the DB
-- instance.
--
-- 'copyTagsToSnapshot', 'dBInstance_copyTagsToSnapshot' - Specifies whether tags are copied from the DB instance to snapshots of
-- the DB instance.
--
-- __Amazon Aurora__
--
-- Not applicable. Copying tags to snapshots is managed by the DB cluster.
-- Setting this value for an Aurora DB instance has no effect on the DB
-- cluster setting. For more information, see @DBCluster@.
--
-- 'readReplicaSourceDBInstanceIdentifier', 'dBInstance_readReplicaSourceDBInstanceIdentifier' - Contains the identifier of the source DB instance if this DB instance is
-- a read replica.
--
-- 'replicaMode', 'dBInstance_replicaMode' - The open mode of an Oracle read replica. The default is
-- @open-read-only@. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS>
-- in the /Amazon RDS User Guide/.
--
-- This attribute is only supported in RDS for Oracle.
--
-- 'endpoint', 'dBInstance_endpoint' - Specifies the connection endpoint.
--
-- 'tagList', 'dBInstance_tagList' - Undocumented member.
--
-- 'performanceInsightsEnabled', 'dBInstance_performanceInsightsEnabled' - True if Performance Insights is enabled for the DB instance, and
-- otherwise false.
--
-- 'allocatedStorage', 'dBInstance_allocatedStorage' - Specifies the allocated storage size specified in gibibytes.
--
-- 'iAMDatabaseAuthenticationEnabled', 'dBInstance_iAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
--
-- IAM database authentication can be enabled for the following database
-- engines
--
-- -   For MySQL 5.6, minor version 5.6.34 or higher
--
-- -   For MySQL 5.7, minor version 5.7.16 or higher
--
-- -   Aurora 5.6 or higher. To enable IAM database authentication for
--     Aurora, see DBCluster Type.
--
-- 'secondaryAvailabilityZone', 'dBInstance_secondaryAvailabilityZone' - If present, specifies the name of the secondary Availability Zone for a
-- DB instance with multi-AZ support.
--
-- 'iops', 'dBInstance_iops' - Specifies the Provisioned IOPS (I\/O operations per second) value.
--
-- 'enhancedMonitoringResourceArn', 'dBInstance_enhancedMonitoringResourceArn' - The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream
-- that receives the Enhanced Monitoring metrics data for the DB instance.
--
-- 'readReplicaDBInstanceIdentifiers', 'dBInstance_readReplicaDBInstanceIdentifiers' - Contains one or more identifiers of the read replicas associated with
-- this DB instance.
--
-- 'autoMinorVersionUpgrade', 'dBInstance_autoMinorVersionUpgrade' - A value that indicates that minor version patches are applied
-- automatically.
--
-- 'dBInstanceArn', 'dBInstance_dBInstanceArn' - The Amazon Resource Name (ARN) for the DB instance.
newDBInstance ::
  DBInstance
newDBInstance =
  DBInstance'
    { backupRetentionPeriod =
        Prelude.Nothing,
      deletionProtection = Prelude.Nothing,
      storageEncrypted = Prelude.Nothing,
      associatedRoles = Prelude.Nothing,
      vpcSecurityGroups = Prelude.Nothing,
      preferredBackupWindow = Prelude.Nothing,
      cACertificateIdentifier = Prelude.Nothing,
      dBSecurityGroups = Prelude.Nothing,
      maxAllocatedStorage = Prelude.Nothing,
      statusInfos = Prelude.Nothing,
      storageType = Prelude.Nothing,
      latestRestorableTime = Prelude.Nothing,
      domainMemberships = Prelude.Nothing,
      dbInstancePort = Prelude.Nothing,
      monitoringInterval = Prelude.Nothing,
      dBParameterGroups = Prelude.Nothing,
      instanceCreateTime = Prelude.Nothing,
      dbiResourceId = Prelude.Nothing,
      optionGroupMemberships = Prelude.Nothing,
      listenerEndpoint = Prelude.Nothing,
      monitoringRoleArn = Prelude.Nothing,
      enabledCloudwatchLogsExports = Prelude.Nothing,
      dBSubnetGroup = Prelude.Nothing,
      ncharCharacterSetName = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      multiAZ = Prelude.Nothing,
      publiclyAccessible = Prelude.Nothing,
      performanceInsightsKMSKeyId = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      dBClusterIdentifier = Prelude.Nothing,
      customerOwnedIpEnabled = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      characterSetName = Prelude.Nothing,
      performanceInsightsRetentionPeriod = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      dBInstanceIdentifier = Prelude.Nothing,
      promotionTier = Prelude.Nothing,
      processorFeatures = Prelude.Nothing,
      awsBackupRecoveryPointArn = Prelude.Nothing,
      dBInstanceClass = Prelude.Nothing,
      dBName = Prelude.Nothing,
      engine = Prelude.Nothing,
      readReplicaDBClusterIdentifiers = Prelude.Nothing,
      pendingModifiedValues = Prelude.Nothing,
      tdeCredentialArn = Prelude.Nothing,
      timezone = Prelude.Nothing,
      dBInstanceStatus = Prelude.Nothing,
      dBInstanceAutomatedBackupsReplications =
        Prelude.Nothing,
      copyTagsToSnapshot = Prelude.Nothing,
      readReplicaSourceDBInstanceIdentifier =
        Prelude.Nothing,
      replicaMode = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      tagList = Prelude.Nothing,
      performanceInsightsEnabled = Prelude.Nothing,
      allocatedStorage = Prelude.Nothing,
      iAMDatabaseAuthenticationEnabled = Prelude.Nothing,
      secondaryAvailabilityZone = Prelude.Nothing,
      iops = Prelude.Nothing,
      enhancedMonitoringResourceArn = Prelude.Nothing,
      readReplicaDBInstanceIdentifiers = Prelude.Nothing,
      autoMinorVersionUpgrade = Prelude.Nothing,
      dBInstanceArn = Prelude.Nothing
    }

-- | Specifies the number of days for which automatic DB snapshots are
-- retained.
dBInstance_backupRetentionPeriod :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_backupRetentionPeriod = Lens.lens (\DBInstance' {backupRetentionPeriod} -> backupRetentionPeriod) (\s@DBInstance' {} a -> s {backupRetentionPeriod = a} :: DBInstance)

-- | Indicates if the DB instance has deletion protection enabled. The
-- database can\'t be deleted when deletion protection is enabled. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance>.
dBInstance_deletionProtection :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_deletionProtection = Lens.lens (\DBInstance' {deletionProtection} -> deletionProtection) (\s@DBInstance' {} a -> s {deletionProtection = a} :: DBInstance)

-- | Specifies whether the DB instance is encrypted.
dBInstance_storageEncrypted :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_storageEncrypted = Lens.lens (\DBInstance' {storageEncrypted} -> storageEncrypted) (\s@DBInstance' {} a -> s {storageEncrypted = a} :: DBInstance)

-- | The AWS Identity and Access Management (IAM) roles associated with the
-- DB instance.
dBInstance_associatedRoles :: Lens.Lens' DBInstance (Prelude.Maybe [DBInstanceRole])
dBInstance_associatedRoles = Lens.lens (\DBInstance' {associatedRoles} -> associatedRoles) (\s@DBInstance' {} a -> s {associatedRoles = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides a list of VPC security group elements that the DB instance
-- belongs to.
dBInstance_vpcSecurityGroups :: Lens.Lens' DBInstance (Prelude.Maybe [VpcSecurityGroupMembership])
dBInstance_vpcSecurityGroups = Lens.lens (\DBInstance' {vpcSecurityGroups} -> vpcSecurityGroups) (\s@DBInstance' {} a -> s {vpcSecurityGroups = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the daily time range during which automated backups are
-- created if automated backups are enabled, as determined by the
-- @BackupRetentionPeriod@.
dBInstance_preferredBackupWindow :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_preferredBackupWindow = Lens.lens (\DBInstance' {preferredBackupWindow} -> preferredBackupWindow) (\s@DBInstance' {} a -> s {preferredBackupWindow = a} :: DBInstance)

-- | The identifier of the CA certificate for this DB instance.
dBInstance_cACertificateIdentifier :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_cACertificateIdentifier = Lens.lens (\DBInstance' {cACertificateIdentifier} -> cACertificateIdentifier) (\s@DBInstance' {} a -> s {cACertificateIdentifier = a} :: DBInstance)

-- | A list of DB security group elements containing @DBSecurityGroup.Name@
-- and @DBSecurityGroup.Status@ subelements.
dBInstance_dBSecurityGroups :: Lens.Lens' DBInstance (Prelude.Maybe [DBSecurityGroupMembership])
dBInstance_dBSecurityGroups = Lens.lens (\DBInstance' {dBSecurityGroups} -> dBSecurityGroups) (\s@DBInstance' {} a -> s {dBSecurityGroups = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | The upper limit to which Amazon RDS can automatically scale the storage
-- of the DB instance.
dBInstance_maxAllocatedStorage :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_maxAllocatedStorage = Lens.lens (\DBInstance' {maxAllocatedStorage} -> maxAllocatedStorage) (\s@DBInstance' {} a -> s {maxAllocatedStorage = a} :: DBInstance)

-- | The status of a read replica. If the instance isn\'t a read replica,
-- this is blank.
dBInstance_statusInfos :: Lens.Lens' DBInstance (Prelude.Maybe [DBInstanceStatusInfo])
dBInstance_statusInfos = Lens.lens (\DBInstance' {statusInfos} -> statusInfos) (\s@DBInstance' {} a -> s {statusInfos = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the storage type associated with DB instance.
dBInstance_storageType :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_storageType = Lens.lens (\DBInstance' {storageType} -> storageType) (\s@DBInstance' {} a -> s {storageType = a} :: DBInstance)

-- | Specifies the latest time to which a database can be restored with
-- point-in-time restore.
dBInstance_latestRestorableTime :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.UTCTime)
dBInstance_latestRestorableTime = Lens.lens (\DBInstance' {latestRestorableTime} -> latestRestorableTime) (\s@DBInstance' {} a -> s {latestRestorableTime = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Time

-- | The Active Directory Domain membership records associated with the DB
-- instance.
dBInstance_domainMemberships :: Lens.Lens' DBInstance (Prelude.Maybe [DomainMembership])
dBInstance_domainMemberships = Lens.lens (\DBInstance' {domainMemberships} -> domainMemberships) (\s@DBInstance' {} a -> s {domainMemberships = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the port that the DB instance listens on. If the DB instance
-- is part of a DB cluster, this can be a different port than the DB
-- cluster port.
dBInstance_dbInstancePort :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_dbInstancePort = Lens.lens (\DBInstance' {dbInstancePort} -> dbInstancePort) (\s@DBInstance' {} a -> s {dbInstancePort = a} :: DBInstance)

-- | The interval, in seconds, between points when Enhanced Monitoring
-- metrics are collected for the DB instance.
dBInstance_monitoringInterval :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_monitoringInterval = Lens.lens (\DBInstance' {monitoringInterval} -> monitoringInterval) (\s@DBInstance' {} a -> s {monitoringInterval = a} :: DBInstance)

-- | Provides the list of DB parameter groups applied to this DB instance.
dBInstance_dBParameterGroups :: Lens.Lens' DBInstance (Prelude.Maybe [DBParameterGroupStatus])
dBInstance_dBParameterGroups = Lens.lens (\DBInstance' {dBParameterGroups} -> dBParameterGroups) (\s@DBInstance' {} a -> s {dBParameterGroups = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides the date and time the DB instance was created.
dBInstance_instanceCreateTime :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.UTCTime)
dBInstance_instanceCreateTime = Lens.lens (\DBInstance' {instanceCreateTime} -> instanceCreateTime) (\s@DBInstance' {} a -> s {instanceCreateTime = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Time

-- | The AWS Region-unique, immutable identifier for the DB instance. This
-- identifier is found in AWS CloudTrail log entries whenever the AWS KMS
-- customer master key (CMK) for the DB instance is accessed.
dBInstance_dbiResourceId :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dbiResourceId = Lens.lens (\DBInstance' {dbiResourceId} -> dbiResourceId) (\s@DBInstance' {} a -> s {dbiResourceId = a} :: DBInstance)

-- | Provides the list of option group memberships for this DB instance.
dBInstance_optionGroupMemberships :: Lens.Lens' DBInstance (Prelude.Maybe [OptionGroupMembership])
dBInstance_optionGroupMemberships = Lens.lens (\DBInstance' {optionGroupMemberships} -> optionGroupMemberships) (\s@DBInstance' {} a -> s {optionGroupMemberships = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the listener connection endpoint for SQL Server Always On.
dBInstance_listenerEndpoint :: Lens.Lens' DBInstance (Prelude.Maybe Endpoint)
dBInstance_listenerEndpoint = Lens.lens (\DBInstance' {listenerEndpoint} -> listenerEndpoint) (\s@DBInstance' {} a -> s {listenerEndpoint = a} :: DBInstance)

-- | The ARN for the IAM role that permits RDS to send Enhanced Monitoring
-- metrics to Amazon CloudWatch Logs.
dBInstance_monitoringRoleArn :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_monitoringRoleArn = Lens.lens (\DBInstance' {monitoringRoleArn} -> monitoringRoleArn) (\s@DBInstance' {} a -> s {monitoringRoleArn = a} :: DBInstance)

-- | A list of log types that this DB instance is configured to export to
-- CloudWatch Logs.
--
-- Log types vary by DB engine. For information about the log types for
-- each DB engine, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html Amazon RDS Database Log Files>
-- in the /Amazon RDS User Guide./
dBInstance_enabledCloudwatchLogsExports :: Lens.Lens' DBInstance (Prelude.Maybe [Prelude.Text])
dBInstance_enabledCloudwatchLogsExports = Lens.lens (\DBInstance' {enabledCloudwatchLogsExports} -> enabledCloudwatchLogsExports) (\s@DBInstance' {} a -> s {enabledCloudwatchLogsExports = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies information on the subnet group associated with the DB
-- instance, including the name, description, and subnets in the subnet
-- group.
dBInstance_dBSubnetGroup :: Lens.Lens' DBInstance (Prelude.Maybe DBSubnetGroup)
dBInstance_dBSubnetGroup = Lens.lens (\DBInstance' {dBSubnetGroup} -> dBSubnetGroup) (\s@DBInstance' {} a -> s {dBSubnetGroup = a} :: DBInstance)

-- | The name of the NCHAR character set for the Oracle DB instance. This
-- character set specifies the Unicode encoding for data stored in table
-- columns of type NCHAR, NCLOB, or NVARCHAR2.
dBInstance_ncharCharacterSetName :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_ncharCharacterSetName = Lens.lens (\DBInstance' {ncharCharacterSetName} -> ncharCharacterSetName) (\s@DBInstance' {} a -> s {ncharCharacterSetName = a} :: DBInstance)

-- | Contains the master username for the DB instance.
dBInstance_masterUsername :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_masterUsername = Lens.lens (\DBInstance' {masterUsername} -> masterUsername) (\s@DBInstance' {} a -> s {masterUsername = a} :: DBInstance)

-- | Specifies if the DB instance is a Multi-AZ deployment.
dBInstance_multiAZ :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_multiAZ = Lens.lens (\DBInstance' {multiAZ} -> multiAZ) (\s@DBInstance' {} a -> s {multiAZ = a} :: DBInstance)

-- | Specifies the accessibility options for the DB instance.
--
-- When the DB instance is publicly accessible, its DNS endpoint resolves
-- to the private IP address from within the DB instance\'s VPC, and to the
-- public IP address from outside of the DB instance\'s VPC. Access to the
-- DB instance is ultimately controlled by the security group it uses, and
-- that public access is not permitted if the security group assigned to
-- the DB instance doesn\'t permit it.
--
-- When the DB instance isn\'t publicly accessible, it is an internal DB
-- instance with a DNS name that resolves to a private IP address.
--
-- For more information, see CreateDBInstance.
dBInstance_publiclyAccessible :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_publiclyAccessible = Lens.lens (\DBInstance' {publiclyAccessible} -> publiclyAccessible) (\s@DBInstance' {} a -> s {publiclyAccessible = a} :: DBInstance)

-- | The AWS KMS key identifier for encryption of Performance Insights data.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBInstance_performanceInsightsKMSKeyId :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_performanceInsightsKMSKeyId = Lens.lens (\DBInstance' {performanceInsightsKMSKeyId} -> performanceInsightsKMSKeyId) (\s@DBInstance' {} a -> s {performanceInsightsKMSKeyId = a} :: DBInstance)

-- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the
-- encrypted DB instance.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBInstance_kmsKeyId :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_kmsKeyId = Lens.lens (\DBInstance' {kmsKeyId} -> kmsKeyId) (\s@DBInstance' {} a -> s {kmsKeyId = a} :: DBInstance)

-- | Specifies the name of the Availability Zone the DB instance is located
-- in.
dBInstance_availabilityZone :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_availabilityZone = Lens.lens (\DBInstance' {availabilityZone} -> availabilityZone) (\s@DBInstance' {} a -> s {availabilityZone = a} :: DBInstance)

-- | If the DB instance is a member of a DB cluster, contains the name of the
-- DB cluster that the DB instance is a member of.
dBInstance_dBClusterIdentifier :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dBClusterIdentifier = Lens.lens (\DBInstance' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@DBInstance' {} a -> s {dBClusterIdentifier = a} :: DBInstance)

-- | Specifies whether a customer-owned IP address (CoIP) is enabled for an
-- RDS on Outposts DB instance.
--
-- A /CoIP/ provides local or external connectivity to resources in your
-- Outpost subnets through your on-premises network. For some use cases, a
-- CoIP can provide lower latency for connections to the DB instance from
-- outside of its virtual private cloud (VPC) on your local network.
--
-- For more information about RDS on Outposts, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts>
-- in the /Amazon RDS User Guide/.
--
-- For more information about CoIPs, see
-- <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses>
-- in the /AWS Outposts User Guide/.
dBInstance_customerOwnedIpEnabled :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_customerOwnedIpEnabled = Lens.lens (\DBInstance' {customerOwnedIpEnabled} -> customerOwnedIpEnabled) (\s@DBInstance' {} a -> s {customerOwnedIpEnabled = a} :: DBInstance)

-- | Indicates the database engine version.
dBInstance_engineVersion :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_engineVersion = Lens.lens (\DBInstance' {engineVersion} -> engineVersion) (\s@DBInstance' {} a -> s {engineVersion = a} :: DBInstance)

-- | Specifies the weekly time range during which system maintenance can
-- occur, in Universal Coordinated Time (UTC).
dBInstance_preferredMaintenanceWindow :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_preferredMaintenanceWindow = Lens.lens (\DBInstance' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@DBInstance' {} a -> s {preferredMaintenanceWindow = a} :: DBInstance)

-- | If present, specifies the name of the character set that this instance
-- is associated with.
dBInstance_characterSetName :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_characterSetName = Lens.lens (\DBInstance' {characterSetName} -> characterSetName) (\s@DBInstance' {} a -> s {characterSetName = a} :: DBInstance)

-- | The amount of time, in days, to retain Performance Insights data. Valid
-- values are 7 or 731 (2 years).
dBInstance_performanceInsightsRetentionPeriod :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_performanceInsightsRetentionPeriod = Lens.lens (\DBInstance' {performanceInsightsRetentionPeriod} -> performanceInsightsRetentionPeriod) (\s@DBInstance' {} a -> s {performanceInsightsRetentionPeriod = a} :: DBInstance)

-- | License model information for this DB instance.
dBInstance_licenseModel :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_licenseModel = Lens.lens (\DBInstance' {licenseModel} -> licenseModel) (\s@DBInstance' {} a -> s {licenseModel = a} :: DBInstance)

-- | Contains a user-supplied database identifier. This identifier is the
-- unique key that identifies a DB instance.
dBInstance_dBInstanceIdentifier :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dBInstanceIdentifier = Lens.lens (\DBInstance' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@DBInstance' {} a -> s {dBInstanceIdentifier = a} :: DBInstance)

-- | A value that specifies the order in which an Aurora Replica is promoted
-- to the primary instance after a failure of the existing primary
-- instance. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance Fault Tolerance for an Aurora DB Cluster>
-- in the /Amazon Aurora User Guide/.
dBInstance_promotionTier :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_promotionTier = Lens.lens (\DBInstance' {promotionTier} -> promotionTier) (\s@DBInstance' {} a -> s {promotionTier = a} :: DBInstance)

-- | The number of CPU cores and the number of threads per core for the DB
-- instance class of the DB instance.
dBInstance_processorFeatures :: Lens.Lens' DBInstance (Prelude.Maybe [ProcessorFeature])
dBInstance_processorFeatures = Lens.lens (\DBInstance' {processorFeatures} -> processorFeatures) (\s@DBInstance' {} a -> s {processorFeatures = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | The Amazon Resource Name (ARN) of the recovery point in AWS Backup.
dBInstance_awsBackupRecoveryPointArn :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_awsBackupRecoveryPointArn = Lens.lens (\DBInstance' {awsBackupRecoveryPointArn} -> awsBackupRecoveryPointArn) (\s@DBInstance' {} a -> s {awsBackupRecoveryPointArn = a} :: DBInstance)

-- | Contains the name of the compute and memory capacity class of the DB
-- instance.
dBInstance_dBInstanceClass :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dBInstanceClass = Lens.lens (\DBInstance' {dBInstanceClass} -> dBInstanceClass) (\s@DBInstance' {} a -> s {dBInstanceClass = a} :: DBInstance)

-- | The meaning of this parameter differs according to the database engine
-- you use.
--
-- __MySQL, MariaDB, SQL Server, PostgreSQL__
--
-- Contains the name of the initial database of this instance that was
-- provided at create time, if one was specified when the DB instance was
-- created. This same name is returned for the life of the DB instance.
--
-- Type: String
--
-- __Oracle__
--
-- Contains the Oracle System ID (SID) of the created DB instance. Not
-- shown when the returned parameters do not apply to an Oracle DB
-- instance.
dBInstance_dBName :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dBName = Lens.lens (\DBInstance' {dBName} -> dBName) (\s@DBInstance' {} a -> s {dBName = a} :: DBInstance)

-- | The name of the database engine to be used for this DB instance.
dBInstance_engine :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_engine = Lens.lens (\DBInstance' {engine} -> engine) (\s@DBInstance' {} a -> s {engine = a} :: DBInstance)

-- | Contains one or more identifiers of Aurora DB clusters to which the RDS
-- DB instance is replicated as a read replica. For example, when you
-- create an Aurora read replica of an RDS MySQL DB instance, the Aurora
-- MySQL DB cluster for the Aurora read replica is shown. This output does
-- not contain information about cross region Aurora read replicas.
--
-- Currently, each RDS DB instance can have only one Aurora read replica.
dBInstance_readReplicaDBClusterIdentifiers :: Lens.Lens' DBInstance (Prelude.Maybe [Prelude.Text])
dBInstance_readReplicaDBClusterIdentifiers = Lens.lens (\DBInstance' {readReplicaDBClusterIdentifiers} -> readReplicaDBClusterIdentifiers) (\s@DBInstance' {} a -> s {readReplicaDBClusterIdentifiers = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | A value that specifies that changes to the DB instance are pending. This
-- element is only included when changes are pending. Specific changes are
-- identified by subelements.
dBInstance_pendingModifiedValues :: Lens.Lens' DBInstance (Prelude.Maybe PendingModifiedValues)
dBInstance_pendingModifiedValues = Lens.lens (\DBInstance' {pendingModifiedValues} -> pendingModifiedValues) (\s@DBInstance' {} a -> s {pendingModifiedValues = a} :: DBInstance)

-- | The ARN from the key store with which the instance is associated for TDE
-- encryption.
dBInstance_tdeCredentialArn :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_tdeCredentialArn = Lens.lens (\DBInstance' {tdeCredentialArn} -> tdeCredentialArn) (\s@DBInstance' {} a -> s {tdeCredentialArn = a} :: DBInstance)

-- | The time zone of the DB instance. In most cases, the @Timezone@ element
-- is empty. @Timezone@ content appears only for Microsoft SQL Server DB
-- instances that were created with a time zone specified.
dBInstance_timezone :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_timezone = Lens.lens (\DBInstance' {timezone} -> timezone) (\s@DBInstance' {} a -> s {timezone = a} :: DBInstance)

-- | Specifies the current state of this database.
--
-- For information about DB instance statuses, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html DB Instance Status>
-- in the /Amazon RDS User Guide./
dBInstance_dBInstanceStatus :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dBInstanceStatus = Lens.lens (\DBInstance' {dBInstanceStatus} -> dBInstanceStatus) (\s@DBInstance' {} a -> s {dBInstanceStatus = a} :: DBInstance)

-- | The list of replicated automated backups associated with the DB
-- instance.
dBInstance_dBInstanceAutomatedBackupsReplications :: Lens.Lens' DBInstance (Prelude.Maybe [DBInstanceAutomatedBackupsReplication])
dBInstance_dBInstanceAutomatedBackupsReplications = Lens.lens (\DBInstance' {dBInstanceAutomatedBackupsReplications} -> dBInstanceAutomatedBackupsReplications) (\s@DBInstance' {} a -> s {dBInstanceAutomatedBackupsReplications = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies whether tags are copied from the DB instance to snapshots of
-- the DB instance.
--
-- __Amazon Aurora__
--
-- Not applicable. Copying tags to snapshots is managed by the DB cluster.
-- Setting this value for an Aurora DB instance has no effect on the DB
-- cluster setting. For more information, see @DBCluster@.
dBInstance_copyTagsToSnapshot :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_copyTagsToSnapshot = Lens.lens (\DBInstance' {copyTagsToSnapshot} -> copyTagsToSnapshot) (\s@DBInstance' {} a -> s {copyTagsToSnapshot = a} :: DBInstance)

-- | Contains the identifier of the source DB instance if this DB instance is
-- a read replica.
dBInstance_readReplicaSourceDBInstanceIdentifier :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_readReplicaSourceDBInstanceIdentifier = Lens.lens (\DBInstance' {readReplicaSourceDBInstanceIdentifier} -> readReplicaSourceDBInstanceIdentifier) (\s@DBInstance' {} a -> s {readReplicaSourceDBInstanceIdentifier = a} :: DBInstance)

-- | The open mode of an Oracle read replica. The default is
-- @open-read-only@. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html Working with Oracle Read Replicas for Amazon RDS>
-- in the /Amazon RDS User Guide/.
--
-- This attribute is only supported in RDS for Oracle.
dBInstance_replicaMode :: Lens.Lens' DBInstance (Prelude.Maybe ReplicaMode)
dBInstance_replicaMode = Lens.lens (\DBInstance' {replicaMode} -> replicaMode) (\s@DBInstance' {} a -> s {replicaMode = a} :: DBInstance)

-- | Specifies the connection endpoint.
dBInstance_endpoint :: Lens.Lens' DBInstance (Prelude.Maybe Endpoint)
dBInstance_endpoint = Lens.lens (\DBInstance' {endpoint} -> endpoint) (\s@DBInstance' {} a -> s {endpoint = a} :: DBInstance)

-- | Undocumented member.
dBInstance_tagList :: Lens.Lens' DBInstance (Prelude.Maybe [Tag])
dBInstance_tagList = Lens.lens (\DBInstance' {tagList} -> tagList) (\s@DBInstance' {} a -> s {tagList = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | True if Performance Insights is enabled for the DB instance, and
-- otherwise false.
dBInstance_performanceInsightsEnabled :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_performanceInsightsEnabled = Lens.lens (\DBInstance' {performanceInsightsEnabled} -> performanceInsightsEnabled) (\s@DBInstance' {} a -> s {performanceInsightsEnabled = a} :: DBInstance)

-- | Specifies the allocated storage size specified in gibibytes.
dBInstance_allocatedStorage :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_allocatedStorage = Lens.lens (\DBInstance' {allocatedStorage} -> allocatedStorage) (\s@DBInstance' {} a -> s {allocatedStorage = a} :: DBInstance)

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
--
-- IAM database authentication can be enabled for the following database
-- engines
--
-- -   For MySQL 5.6, minor version 5.6.34 or higher
--
-- -   For MySQL 5.7, minor version 5.7.16 or higher
--
-- -   Aurora 5.6 or higher. To enable IAM database authentication for
--     Aurora, see DBCluster Type.
dBInstance_iAMDatabaseAuthenticationEnabled :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_iAMDatabaseAuthenticationEnabled = Lens.lens (\DBInstance' {iAMDatabaseAuthenticationEnabled} -> iAMDatabaseAuthenticationEnabled) (\s@DBInstance' {} a -> s {iAMDatabaseAuthenticationEnabled = a} :: DBInstance)

-- | If present, specifies the name of the secondary Availability Zone for a
-- DB instance with multi-AZ support.
dBInstance_secondaryAvailabilityZone :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_secondaryAvailabilityZone = Lens.lens (\DBInstance' {secondaryAvailabilityZone} -> secondaryAvailabilityZone) (\s@DBInstance' {} a -> s {secondaryAvailabilityZone = a} :: DBInstance)

-- | Specifies the Provisioned IOPS (I\/O operations per second) value.
dBInstance_iops :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Int)
dBInstance_iops = Lens.lens (\DBInstance' {iops} -> iops) (\s@DBInstance' {} a -> s {iops = a} :: DBInstance)

-- | The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream
-- that receives the Enhanced Monitoring metrics data for the DB instance.
dBInstance_enhancedMonitoringResourceArn :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_enhancedMonitoringResourceArn = Lens.lens (\DBInstance' {enhancedMonitoringResourceArn} -> enhancedMonitoringResourceArn) (\s@DBInstance' {} a -> s {enhancedMonitoringResourceArn = a} :: DBInstance)

-- | Contains one or more identifiers of the read replicas associated with
-- this DB instance.
dBInstance_readReplicaDBInstanceIdentifiers :: Lens.Lens' DBInstance (Prelude.Maybe [Prelude.Text])
dBInstance_readReplicaDBInstanceIdentifiers = Lens.lens (\DBInstance' {readReplicaDBInstanceIdentifiers} -> readReplicaDBInstanceIdentifiers) (\s@DBInstance' {} a -> s {readReplicaDBInstanceIdentifiers = a} :: DBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | A value that indicates that minor version patches are applied
-- automatically.
dBInstance_autoMinorVersionUpgrade :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Bool)
dBInstance_autoMinorVersionUpgrade = Lens.lens (\DBInstance' {autoMinorVersionUpgrade} -> autoMinorVersionUpgrade) (\s@DBInstance' {} a -> s {autoMinorVersionUpgrade = a} :: DBInstance)

-- | The Amazon Resource Name (ARN) for the DB instance.
dBInstance_dBInstanceArn :: Lens.Lens' DBInstance (Prelude.Maybe Prelude.Text)
dBInstance_dBInstanceArn = Lens.lens (\DBInstance' {dBInstanceArn} -> dBInstanceArn) (\s@DBInstance' {} a -> s {dBInstanceArn = a} :: DBInstance)

instance Prelude.FromXML DBInstance where
  parseXML x =
    DBInstance'
      Prelude.<$> (x Prelude..@? "BackupRetentionPeriod")
      Prelude.<*> (x Prelude..@? "DeletionProtection")
      Prelude.<*> (x Prelude..@? "StorageEncrypted")
      Prelude.<*> ( x Prelude..@? "AssociatedRoles"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "DBInstanceRole")
                  )
      Prelude.<*> ( x Prelude..@? "VpcSecurityGroups"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "VpcSecurityGroupMembership")
                  )
      Prelude.<*> (x Prelude..@? "PreferredBackupWindow")
      Prelude.<*> (x Prelude..@? "CACertificateIdentifier")
      Prelude.<*> ( x Prelude..@? "DBSecurityGroups"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "DBSecurityGroup")
                  )
      Prelude.<*> (x Prelude..@? "MaxAllocatedStorage")
      Prelude.<*> ( x Prelude..@? "StatusInfos"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DBInstanceStatusInfo")
                  )
      Prelude.<*> (x Prelude..@? "StorageType")
      Prelude.<*> (x Prelude..@? "LatestRestorableTime")
      Prelude.<*> ( x Prelude..@? "DomainMemberships"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DomainMembership")
                  )
      Prelude.<*> (x Prelude..@? "DbInstancePort")
      Prelude.<*> (x Prelude..@? "MonitoringInterval")
      Prelude.<*> ( x Prelude..@? "DBParameterGroups"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "DBParameterGroup")
                  )
      Prelude.<*> (x Prelude..@? "InstanceCreateTime")
      Prelude.<*> (x Prelude..@? "DbiResourceId")
      Prelude.<*> ( x Prelude..@? "OptionGroupMemberships"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "OptionGroupMembership")
                  )
      Prelude.<*> (x Prelude..@? "ListenerEndpoint")
      Prelude.<*> (x Prelude..@? "MonitoringRoleArn")
      Prelude.<*> ( x Prelude..@? "EnabledCloudwatchLogsExports"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "DBSubnetGroup")
      Prelude.<*> (x Prelude..@? "NcharCharacterSetName")
      Prelude.<*> (x Prelude..@? "MasterUsername")
      Prelude.<*> (x Prelude..@? "MultiAZ")
      Prelude.<*> (x Prelude..@? "PubliclyAccessible")
      Prelude.<*> (x Prelude..@? "PerformanceInsightsKMSKeyId")
      Prelude.<*> (x Prelude..@? "KmsKeyId")
      Prelude.<*> (x Prelude..@? "AvailabilityZone")
      Prelude.<*> (x Prelude..@? "DBClusterIdentifier")
      Prelude.<*> (x Prelude..@? "CustomerOwnedIpEnabled")
      Prelude.<*> (x Prelude..@? "EngineVersion")
      Prelude.<*> (x Prelude..@? "PreferredMaintenanceWindow")
      Prelude.<*> (x Prelude..@? "CharacterSetName")
      Prelude.<*> (x Prelude..@? "PerformanceInsightsRetentionPeriod")
      Prelude.<*> (x Prelude..@? "LicenseModel")
      Prelude.<*> (x Prelude..@? "DBInstanceIdentifier")
      Prelude.<*> (x Prelude..@? "PromotionTier")
      Prelude.<*> ( x Prelude..@? "ProcessorFeatures"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "ProcessorFeature")
                  )
      Prelude.<*> (x Prelude..@? "AwsBackupRecoveryPointArn")
      Prelude.<*> (x Prelude..@? "DBInstanceClass")
      Prelude.<*> (x Prelude..@? "DBName")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> ( x Prelude..@? "ReadReplicaDBClusterIdentifiers"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        ( Prelude.parseXMLList
                            "ReadReplicaDBClusterIdentifier"
                        )
                  )
      Prelude.<*> (x Prelude..@? "PendingModifiedValues")
      Prelude.<*> (x Prelude..@? "TdeCredentialArn")
      Prelude.<*> (x Prelude..@? "Timezone")
      Prelude.<*> (x Prelude..@? "DBInstanceStatus")
      Prelude.<*> ( x
                      Prelude..@? "DBInstanceAutomatedBackupsReplications"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        ( Prelude.parseXMLList
                            "DBInstanceAutomatedBackupsReplication"
                        )
                  )
      Prelude.<*> (x Prelude..@? "CopyTagsToSnapshot")
      Prelude.<*> ( x
                      Prelude..@? "ReadReplicaSourceDBInstanceIdentifier"
                  )
      Prelude.<*> (x Prelude..@? "ReplicaMode")
      Prelude.<*> (x Prelude..@? "Endpoint")
      Prelude.<*> ( x Prelude..@? "TagList" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "Tag")
                  )
      Prelude.<*> (x Prelude..@? "PerformanceInsightsEnabled")
      Prelude.<*> (x Prelude..@? "AllocatedStorage")
      Prelude.<*> (x Prelude..@? "IAMDatabaseAuthenticationEnabled")
      Prelude.<*> (x Prelude..@? "SecondaryAvailabilityZone")
      Prelude.<*> (x Prelude..@? "Iops")
      Prelude.<*> (x Prelude..@? "EnhancedMonitoringResourceArn")
      Prelude.<*> ( x Prelude..@? "ReadReplicaDBInstanceIdentifiers"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        ( Prelude.parseXMLList
                            "ReadReplicaDBInstanceIdentifier"
                        )
                  )
      Prelude.<*> (x Prelude..@? "AutoMinorVersionUpgrade")
      Prelude.<*> (x Prelude..@? "DBInstanceArn")

instance Prelude.Hashable DBInstance

instance Prelude.NFData DBInstance

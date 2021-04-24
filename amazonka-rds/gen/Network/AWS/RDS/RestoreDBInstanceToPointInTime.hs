{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.RestoreDBInstanceToPointInTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a DB instance to an arbitrary point in time. You can restore to any point in time before the time identified by the LatestRestorableTime property. You can restore to a point up to the number of days specified by the BackupRetentionPeriod property.
--
--
-- The target database is created with most of the original configuration, but in a system-selected Availability Zone, with the default security group, the default subnet group, and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored deployment and not a single-AZ deployment.
module Network.AWS.RDS.RestoreDBInstanceToPointInTime
  ( -- * Creating a Request
    restoreDBInstanceToPointInTime,
    RestoreDBInstanceToPointInTime,

    -- * Request Lenses
    rditpitDeletionProtection,
    rditpitSourceDBInstanceAutomatedBackupsARN,
    rditpitMaxAllocatedStorage,
    rditpitSourceDBInstanceIdentifier,
    rditpitEnableIAMDatabaseAuthentication,
    rditpitEnableCloudwatchLogsExports,
    rditpitStorageType,
    rditpitUseDefaultProcessorFeatures,
    rditpitOptionGroupName,
    rditpitDomain,
    rditpitRestoreTime,
    rditpitDBSubnetGroupName,
    rditpitMultiAZ,
    rditpitPubliclyAccessible,
    rditpitVPCSecurityGroupIds,
    rditpitDBParameterGroupName,
    rditpitAvailabilityZone,
    rditpitLicenseModel,
    rditpitTDECredentialPassword,
    rditpitTags,
    rditpitProcessorFeatures,
    rditpitPort,
    rditpitDBInstanceClass,
    rditpitDBName,
    rditpitDomainIAMRoleName,
    rditpitEngine,
    rditpitTDECredentialARN,
    rditpitEnableCustomerOwnedIP,
    rditpitCopyTagsToSnapshot,
    rditpitSourceDBiResourceId,
    rditpitIOPS,
    rditpitAutoMinorVersionUpgrade,
    rditpitUseLatestRestorableTime,
    rditpitTargetDBInstanceIdentifier,

    -- * Destructuring the Response
    restoreDBInstanceToPointInTimeResponse,
    RestoreDBInstanceToPointInTimeResponse,

    -- * Response Lenses
    rditpitrrsDBInstance,
    rditpitrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'restoreDBInstanceToPointInTime' smart constructor.
data RestoreDBInstanceToPointInTime = RestoreDBInstanceToPointInTime'
  { _rditpitDeletionProtection ::
      !( Maybe
           Bool
       ),
    _rditpitSourceDBInstanceAutomatedBackupsARN ::
      !( Maybe
           Text
       ),
    _rditpitMaxAllocatedStorage ::
      !( Maybe
           Int
       ),
    _rditpitSourceDBInstanceIdentifier ::
      !( Maybe
           Text
       ),
    _rditpitEnableIAMDatabaseAuthentication ::
      !( Maybe
           Bool
       ),
    _rditpitEnableCloudwatchLogsExports ::
      !( Maybe
           [Text]
       ),
    _rditpitStorageType ::
      !( Maybe
           Text
       ),
    _rditpitUseDefaultProcessorFeatures ::
      !( Maybe
           Bool
       ),
    _rditpitOptionGroupName ::
      !( Maybe
           Text
       ),
    _rditpitDomain ::
      !( Maybe
           Text
       ),
    _rditpitRestoreTime ::
      !( Maybe
           ISO8601
       ),
    _rditpitDBSubnetGroupName ::
      !( Maybe
           Text
       ),
    _rditpitMultiAZ ::
      !( Maybe
           Bool
       ),
    _rditpitPubliclyAccessible ::
      !( Maybe
           Bool
       ),
    _rditpitVPCSecurityGroupIds ::
      !( Maybe
           [Text]
       ),
    _rditpitDBParameterGroupName ::
      !( Maybe
           Text
       ),
    _rditpitAvailabilityZone ::
      !( Maybe
           Text
       ),
    _rditpitLicenseModel ::
      !( Maybe
           Text
       ),
    _rditpitTDECredentialPassword ::
      !( Maybe
           Text
       ),
    _rditpitTags ::
      !( Maybe
           [Tag]
       ),
    _rditpitProcessorFeatures ::
      !( Maybe
           [ProcessorFeature]
       ),
    _rditpitPort ::
      !( Maybe
           Int
       ),
    _rditpitDBInstanceClass ::
      !( Maybe
           Text
       ),
    _rditpitDBName ::
      !( Maybe
           Text
       ),
    _rditpitDomainIAMRoleName ::
      !( Maybe
           Text
       ),
    _rditpitEngine ::
      !( Maybe
           Text
       ),
    _rditpitTDECredentialARN ::
      !( Maybe
           Text
       ),
    _rditpitEnableCustomerOwnedIP ::
      !( Maybe
           Bool
       ),
    _rditpitCopyTagsToSnapshot ::
      !( Maybe
           Bool
       ),
    _rditpitSourceDBiResourceId ::
      !( Maybe
           Text
       ),
    _rditpitIOPS ::
      !( Maybe
           Int
       ),
    _rditpitAutoMinorVersionUpgrade ::
      !( Maybe
           Bool
       ),
    _rditpitUseLatestRestorableTime ::
      !( Maybe
           Bool
       ),
    _rditpitTargetDBInstanceIdentifier ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RestoreDBInstanceToPointInTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rditpitDeletionProtection' - A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
--
-- * 'rditpitSourceDBInstanceAutomatedBackupsARN' - The Amazon Resource Name (ARN) of the replicated automated backups from which to restore, for example, @arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@ .
--
-- * 'rditpitMaxAllocatedStorage' - The upper limit to which Amazon RDS can automatically scale the storage of the DB instance. For more information about this setting, including limitations that apply to it, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling Managing capacity automatically with Amazon RDS storage autoscaling> in the /Amazon RDS User Guide/ .
--
-- * 'rditpitSourceDBInstanceIdentifier' - The identifier of the source DB instance from which to restore. Constraints:     * Must match the identifier of an existing DB instance.
--
-- * 'rditpitEnableIAMDatabaseAuthentication' - A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information about IAM database authentication, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication for MySQL and PostgreSQL> in the /Amazon RDS User Guide./
--
-- * 'rditpitEnableCloudwatchLogsExports' - The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs> in the /Amazon RDS User Guide/ .
--
-- * 'rditpitStorageType' - Specifies the storage type to be associated with the DB instance. Valid values: @standard | gp2 | io1@  If you specify @io1@ , you must also include a value for the @Iops@ parameter.  Default: @io1@ if the @Iops@ parameter is specified, otherwise @gp2@
--
-- * 'rditpitUseDefaultProcessorFeatures' - A value that indicates whether the DB instance class of the DB instance uses its default processor features.
--
-- * 'rditpitOptionGroupName' - The name of the option group to be used for the restored DB instance. Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance
--
-- * 'rditpitDomain' - Specify the Active Directory directory ID to restore the DB instance in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon RDS User Guide/ .
--
-- * 'rditpitRestoreTime' - The date and time to restore from. Valid Values: Value must be a time in Universal Coordinated Time (UTC) format Constraints:     * Must be before the latest restorable time for the DB instance     * Can't be specified if the @UseLatestRestorableTime@ parameter is enabled Example: @2009-09-07T23:45:00Z@
--
-- * 'rditpitDBSubnetGroupName' - The DB subnet group name to use for the new instance. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: @mySubnetgroup@
--
-- * 'rditpitMultiAZ' - A value that indicates whether the DB instance is a Multi-AZ deployment. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment.
--
-- * 'rditpitPubliclyAccessible' - A value that indicates whether the DB instance is publicly accessible. When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it. When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address. For more information, see 'CreateDBInstance' .
--
-- * 'rditpitVPCSecurityGroupIds' - A list of EC2 VPC security groups to associate with this DB instance.  Default: The default EC2 VPC security group for the DB subnet group's VPC.
--
-- * 'rditpitDBParameterGroupName' - The name of the DB parameter group to associate with this DB instance. If you do not specify a value for @DBParameterGroupName@ , then the default @DBParameterGroup@ for the specified DB engine is used. Constraints:     * If supplied, must match the name of an existing DBParameterGroup.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'rditpitAvailabilityZone' - The Availability Zone (AZ) where the DB instance will be created. Default: A random, system-chosen Availability Zone. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment. Example: @us-east-1a@
--
-- * 'rditpitLicenseModel' - License model information for the restored DB instance. Default: Same as source. Valid values: @license-included@ | @bring-your-own-license@ | @general-public-license@
--
-- * 'rditpitTDECredentialPassword' - The password for the given ARN from the key store in order to access the device.
--
-- * 'rditpitTags' - Undocumented member.
--
-- * 'rditpitProcessorFeatures' - The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
--
-- * 'rditpitPort' - The port number on which the database accepts connections. Constraints: Value must be @1150-65535@  Default: The same port as the original DB instance.
--
-- * 'rditpitDBInstanceClass' - The compute and memory capacity of the Amazon RDS DB instance, for example, @db.m4.large@ . Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html DB Instance Class> in the /Amazon RDS User Guide./  Default: The same DBInstanceClass as the original DB instance.
--
-- * 'rditpitDBName' - The database name for the restored DB instance.
--
-- * 'rditpitDomainIAMRoleName' - Specify the name of the IAM role to be used when making API calls to the Directory Service.
--
-- * 'rditpitEngine' - The database engine to use for the new instance. Default: The same as source Constraint: Must be compatible with the engine of the source Valid Values:     * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
--
-- * 'rditpitTDECredentialARN' - The ARN from the key store with which to associate the instance for TDE encryption.
--
-- * 'rditpitEnableCustomerOwnedIP' - A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. A /CoIP/ provides local or external connectivity to resources in your Outpost subnets through your on-premises network. For some use cases, a CoIP can provide lower latency for connections to the DB instance from outside of its virtual private cloud (VPC) on your local network. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide/ . For more information about CoIPs, see <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses> in the /AWS Outposts User Guide/ .
--
-- * 'rditpitCopyTagsToSnapshot' - A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.
--
-- * 'rditpitSourceDBiResourceId' - The resource ID of the source DB instance from which to restore.
--
-- * 'rditpitIOPS' - The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance. Constraints: Must be an integer greater than 1000. __SQL Server__  Setting the IOPS value for the SQL Server database engine isn't supported.
--
-- * 'rditpitAutoMinorVersionUpgrade' - A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.
--
-- * 'rditpitUseLatestRestorableTime' - A value that indicates whether the DB instance is restored from the latest backup time. By default, the DB instance isn't restored from the latest backup time.  Constraints: Can't be specified if the @RestoreTime@ parameter is provided.
--
-- * 'rditpitTargetDBInstanceIdentifier' - The name of the new DB instance to be created. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
restoreDBInstanceToPointInTime ::
  -- | 'rditpitTargetDBInstanceIdentifier'
  Text ->
  RestoreDBInstanceToPointInTime
restoreDBInstanceToPointInTime
  pTargetDBInstanceIdentifier_ =
    RestoreDBInstanceToPointInTime'
      { _rditpitDeletionProtection =
          Nothing,
        _rditpitSourceDBInstanceAutomatedBackupsARN =
          Nothing,
        _rditpitMaxAllocatedStorage = Nothing,
        _rditpitSourceDBInstanceIdentifier =
          Nothing,
        _rditpitEnableIAMDatabaseAuthentication =
          Nothing,
        _rditpitEnableCloudwatchLogsExports =
          Nothing,
        _rditpitStorageType = Nothing,
        _rditpitUseDefaultProcessorFeatures =
          Nothing,
        _rditpitOptionGroupName = Nothing,
        _rditpitDomain = Nothing,
        _rditpitRestoreTime = Nothing,
        _rditpitDBSubnetGroupName = Nothing,
        _rditpitMultiAZ = Nothing,
        _rditpitPubliclyAccessible = Nothing,
        _rditpitVPCSecurityGroupIds = Nothing,
        _rditpitDBParameterGroupName = Nothing,
        _rditpitAvailabilityZone = Nothing,
        _rditpitLicenseModel = Nothing,
        _rditpitTDECredentialPassword = Nothing,
        _rditpitTags = Nothing,
        _rditpitProcessorFeatures = Nothing,
        _rditpitPort = Nothing,
        _rditpitDBInstanceClass = Nothing,
        _rditpitDBName = Nothing,
        _rditpitDomainIAMRoleName = Nothing,
        _rditpitEngine = Nothing,
        _rditpitTDECredentialARN = Nothing,
        _rditpitEnableCustomerOwnedIP = Nothing,
        _rditpitCopyTagsToSnapshot = Nothing,
        _rditpitSourceDBiResourceId = Nothing,
        _rditpitIOPS = Nothing,
        _rditpitAutoMinorVersionUpgrade = Nothing,
        _rditpitUseLatestRestorableTime = Nothing,
        _rditpitTargetDBInstanceIdentifier =
          pTargetDBInstanceIdentifier_
      }

-- | A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
rditpitDeletionProtection :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitDeletionProtection = lens _rditpitDeletionProtection (\s a -> s {_rditpitDeletionProtection = a})

-- | The Amazon Resource Name (ARN) of the replicated automated backups from which to restore, for example, @arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@ .
rditpitSourceDBInstanceAutomatedBackupsARN :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitSourceDBInstanceAutomatedBackupsARN = lens _rditpitSourceDBInstanceAutomatedBackupsARN (\s a -> s {_rditpitSourceDBInstanceAutomatedBackupsARN = a})

-- | The upper limit to which Amazon RDS can automatically scale the storage of the DB instance. For more information about this setting, including limitations that apply to it, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling Managing capacity automatically with Amazon RDS storage autoscaling> in the /Amazon RDS User Guide/ .
rditpitMaxAllocatedStorage :: Lens' RestoreDBInstanceToPointInTime (Maybe Int)
rditpitMaxAllocatedStorage = lens _rditpitMaxAllocatedStorage (\s a -> s {_rditpitMaxAllocatedStorage = a})

-- | The identifier of the source DB instance from which to restore. Constraints:     * Must match the identifier of an existing DB instance.
rditpitSourceDBInstanceIdentifier :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitSourceDBInstanceIdentifier = lens _rditpitSourceDBInstanceIdentifier (\s a -> s {_rditpitSourceDBInstanceIdentifier = a})

-- | A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information about IAM database authentication, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication for MySQL and PostgreSQL> in the /Amazon RDS User Guide./
rditpitEnableIAMDatabaseAuthentication :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitEnableIAMDatabaseAuthentication = lens _rditpitEnableIAMDatabaseAuthentication (\s a -> s {_rditpitEnableIAMDatabaseAuthentication = a})

-- | The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs> in the /Amazon RDS User Guide/ .
rditpitEnableCloudwatchLogsExports :: Lens' RestoreDBInstanceToPointInTime [Text]
rditpitEnableCloudwatchLogsExports = lens _rditpitEnableCloudwatchLogsExports (\s a -> s {_rditpitEnableCloudwatchLogsExports = a}) . _Default . _Coerce

-- | Specifies the storage type to be associated with the DB instance. Valid values: @standard | gp2 | io1@  If you specify @io1@ , you must also include a value for the @Iops@ parameter.  Default: @io1@ if the @Iops@ parameter is specified, otherwise @gp2@
rditpitStorageType :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitStorageType = lens _rditpitStorageType (\s a -> s {_rditpitStorageType = a})

-- | A value that indicates whether the DB instance class of the DB instance uses its default processor features.
rditpitUseDefaultProcessorFeatures :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitUseDefaultProcessorFeatures = lens _rditpitUseDefaultProcessorFeatures (\s a -> s {_rditpitUseDefaultProcessorFeatures = a})

-- | The name of the option group to be used for the restored DB instance. Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance
rditpitOptionGroupName :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitOptionGroupName = lens _rditpitOptionGroupName (\s a -> s {_rditpitOptionGroupName = a})

-- | Specify the Active Directory directory ID to restore the DB instance in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon RDS User Guide/ .
rditpitDomain :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitDomain = lens _rditpitDomain (\s a -> s {_rditpitDomain = a})

-- | The date and time to restore from. Valid Values: Value must be a time in Universal Coordinated Time (UTC) format Constraints:     * Must be before the latest restorable time for the DB instance     * Can't be specified if the @UseLatestRestorableTime@ parameter is enabled Example: @2009-09-07T23:45:00Z@
rditpitRestoreTime :: Lens' RestoreDBInstanceToPointInTime (Maybe UTCTime)
rditpitRestoreTime = lens _rditpitRestoreTime (\s a -> s {_rditpitRestoreTime = a}) . mapping _Time

-- | The DB subnet group name to use for the new instance. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: @mySubnetgroup@
rditpitDBSubnetGroupName :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitDBSubnetGroupName = lens _rditpitDBSubnetGroupName (\s a -> s {_rditpitDBSubnetGroupName = a})

-- | A value that indicates whether the DB instance is a Multi-AZ deployment. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment.
rditpitMultiAZ :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitMultiAZ = lens _rditpitMultiAZ (\s a -> s {_rditpitMultiAZ = a})

-- | A value that indicates whether the DB instance is publicly accessible. When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it. When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address. For more information, see 'CreateDBInstance' .
rditpitPubliclyAccessible :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitPubliclyAccessible = lens _rditpitPubliclyAccessible (\s a -> s {_rditpitPubliclyAccessible = a})

-- | A list of EC2 VPC security groups to associate with this DB instance.  Default: The default EC2 VPC security group for the DB subnet group's VPC.
rditpitVPCSecurityGroupIds :: Lens' RestoreDBInstanceToPointInTime [Text]
rditpitVPCSecurityGroupIds = lens _rditpitVPCSecurityGroupIds (\s a -> s {_rditpitVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | The name of the DB parameter group to associate with this DB instance. If you do not specify a value for @DBParameterGroupName@ , then the default @DBParameterGroup@ for the specified DB engine is used. Constraints:     * If supplied, must match the name of an existing DBParameterGroup.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
rditpitDBParameterGroupName :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitDBParameterGroupName = lens _rditpitDBParameterGroupName (\s a -> s {_rditpitDBParameterGroupName = a})

-- | The Availability Zone (AZ) where the DB instance will be created. Default: A random, system-chosen Availability Zone. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment. Example: @us-east-1a@
rditpitAvailabilityZone :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitAvailabilityZone = lens _rditpitAvailabilityZone (\s a -> s {_rditpitAvailabilityZone = a})

-- | License model information for the restored DB instance. Default: Same as source. Valid values: @license-included@ | @bring-your-own-license@ | @general-public-license@
rditpitLicenseModel :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitLicenseModel = lens _rditpitLicenseModel (\s a -> s {_rditpitLicenseModel = a})

-- | The password for the given ARN from the key store in order to access the device.
rditpitTDECredentialPassword :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitTDECredentialPassword = lens _rditpitTDECredentialPassword (\s a -> s {_rditpitTDECredentialPassword = a})

-- | Undocumented member.
rditpitTags :: Lens' RestoreDBInstanceToPointInTime [Tag]
rditpitTags = lens _rditpitTags (\s a -> s {_rditpitTags = a}) . _Default . _Coerce

-- | The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
rditpitProcessorFeatures :: Lens' RestoreDBInstanceToPointInTime [ProcessorFeature]
rditpitProcessorFeatures = lens _rditpitProcessorFeatures (\s a -> s {_rditpitProcessorFeatures = a}) . _Default . _Coerce

-- | The port number on which the database accepts connections. Constraints: Value must be @1150-65535@  Default: The same port as the original DB instance.
rditpitPort :: Lens' RestoreDBInstanceToPointInTime (Maybe Int)
rditpitPort = lens _rditpitPort (\s a -> s {_rditpitPort = a})

-- | The compute and memory capacity of the Amazon RDS DB instance, for example, @db.m4.large@ . Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html DB Instance Class> in the /Amazon RDS User Guide./  Default: The same DBInstanceClass as the original DB instance.
rditpitDBInstanceClass :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitDBInstanceClass = lens _rditpitDBInstanceClass (\s a -> s {_rditpitDBInstanceClass = a})

-- | The database name for the restored DB instance.
rditpitDBName :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitDBName = lens _rditpitDBName (\s a -> s {_rditpitDBName = a})

-- | Specify the name of the IAM role to be used when making API calls to the Directory Service.
rditpitDomainIAMRoleName :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitDomainIAMRoleName = lens _rditpitDomainIAMRoleName (\s a -> s {_rditpitDomainIAMRoleName = a})

-- | The database engine to use for the new instance. Default: The same as source Constraint: Must be compatible with the engine of the source Valid Values:     * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
rditpitEngine :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitEngine = lens _rditpitEngine (\s a -> s {_rditpitEngine = a})

-- | The ARN from the key store with which to associate the instance for TDE encryption.
rditpitTDECredentialARN :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitTDECredentialARN = lens _rditpitTDECredentialARN (\s a -> s {_rditpitTDECredentialARN = a})

-- | A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. A /CoIP/ provides local or external connectivity to resources in your Outpost subnets through your on-premises network. For some use cases, a CoIP can provide lower latency for connections to the DB instance from outside of its virtual private cloud (VPC) on your local network. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide/ . For more information about CoIPs, see <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses> in the /AWS Outposts User Guide/ .
rditpitEnableCustomerOwnedIP :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitEnableCustomerOwnedIP = lens _rditpitEnableCustomerOwnedIP (\s a -> s {_rditpitEnableCustomerOwnedIP = a})

-- | A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.
rditpitCopyTagsToSnapshot :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitCopyTagsToSnapshot = lens _rditpitCopyTagsToSnapshot (\s a -> s {_rditpitCopyTagsToSnapshot = a})

-- | The resource ID of the source DB instance from which to restore.
rditpitSourceDBiResourceId :: Lens' RestoreDBInstanceToPointInTime (Maybe Text)
rditpitSourceDBiResourceId = lens _rditpitSourceDBiResourceId (\s a -> s {_rditpitSourceDBiResourceId = a})

-- | The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance. Constraints: Must be an integer greater than 1000. __SQL Server__  Setting the IOPS value for the SQL Server database engine isn't supported.
rditpitIOPS :: Lens' RestoreDBInstanceToPointInTime (Maybe Int)
rditpitIOPS = lens _rditpitIOPS (\s a -> s {_rditpitIOPS = a})

-- | A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.
rditpitAutoMinorVersionUpgrade :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitAutoMinorVersionUpgrade = lens _rditpitAutoMinorVersionUpgrade (\s a -> s {_rditpitAutoMinorVersionUpgrade = a})

-- | A value that indicates whether the DB instance is restored from the latest backup time. By default, the DB instance isn't restored from the latest backup time.  Constraints: Can't be specified if the @RestoreTime@ parameter is provided.
rditpitUseLatestRestorableTime :: Lens' RestoreDBInstanceToPointInTime (Maybe Bool)
rditpitUseLatestRestorableTime = lens _rditpitUseLatestRestorableTime (\s a -> s {_rditpitUseLatestRestorableTime = a})

-- | The name of the new DB instance to be created. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
rditpitTargetDBInstanceIdentifier :: Lens' RestoreDBInstanceToPointInTime Text
rditpitTargetDBInstanceIdentifier = lens _rditpitTargetDBInstanceIdentifier (\s a -> s {_rditpitTargetDBInstanceIdentifier = a})

instance AWSRequest RestoreDBInstanceToPointInTime where
  type
    Rs RestoreDBInstanceToPointInTime =
      RestoreDBInstanceToPointInTimeResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "RestoreDBInstanceToPointInTimeResult"
      ( \s h x ->
          RestoreDBInstanceToPointInTimeResponse'
            <$> (x .@? "DBInstance") <*> (pure (fromEnum s))
      )

instance Hashable RestoreDBInstanceToPointInTime

instance NFData RestoreDBInstanceToPointInTime

instance ToHeaders RestoreDBInstanceToPointInTime where
  toHeaders = const mempty

instance ToPath RestoreDBInstanceToPointInTime where
  toPath = const "/"

instance ToQuery RestoreDBInstanceToPointInTime where
  toQuery RestoreDBInstanceToPointInTime' {..} =
    mconcat
      [ "Action"
          =: ("RestoreDBInstanceToPointInTime" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DeletionProtection" =: _rditpitDeletionProtection,
        "SourceDBInstanceAutomatedBackupsArn"
          =: _rditpitSourceDBInstanceAutomatedBackupsARN,
        "MaxAllocatedStorage" =: _rditpitMaxAllocatedStorage,
        "SourceDBInstanceIdentifier"
          =: _rditpitSourceDBInstanceIdentifier,
        "EnableIAMDatabaseAuthentication"
          =: _rditpitEnableIAMDatabaseAuthentication,
        "EnableCloudwatchLogsExports"
          =: toQuery
            ( toQueryList "member"
                <$> _rditpitEnableCloudwatchLogsExports
            ),
        "StorageType" =: _rditpitStorageType,
        "UseDefaultProcessorFeatures"
          =: _rditpitUseDefaultProcessorFeatures,
        "OptionGroupName" =: _rditpitOptionGroupName,
        "Domain" =: _rditpitDomain,
        "RestoreTime" =: _rditpitRestoreTime,
        "DBSubnetGroupName" =: _rditpitDBSubnetGroupName,
        "MultiAZ" =: _rditpitMultiAZ,
        "PubliclyAccessible" =: _rditpitPubliclyAccessible,
        "VpcSecurityGroupIds"
          =: toQuery
            ( toQueryList "VpcSecurityGroupId"
                <$> _rditpitVPCSecurityGroupIds
            ),
        "DBParameterGroupName"
          =: _rditpitDBParameterGroupName,
        "AvailabilityZone" =: _rditpitAvailabilityZone,
        "LicenseModel" =: _rditpitLicenseModel,
        "TdeCredentialPassword"
          =: _rditpitTDECredentialPassword,
        "Tags"
          =: toQuery (toQueryList "Tag" <$> _rditpitTags),
        "ProcessorFeatures"
          =: toQuery
            ( toQueryList "ProcessorFeature"
                <$> _rditpitProcessorFeatures
            ),
        "Port" =: _rditpitPort,
        "DBInstanceClass" =: _rditpitDBInstanceClass,
        "DBName" =: _rditpitDBName,
        "DomainIAMRoleName" =: _rditpitDomainIAMRoleName,
        "Engine" =: _rditpitEngine,
        "TdeCredentialArn" =: _rditpitTDECredentialARN,
        "EnableCustomerOwnedIp"
          =: _rditpitEnableCustomerOwnedIP,
        "CopyTagsToSnapshot" =: _rditpitCopyTagsToSnapshot,
        "SourceDbiResourceId" =: _rditpitSourceDBiResourceId,
        "Iops" =: _rditpitIOPS,
        "AutoMinorVersionUpgrade"
          =: _rditpitAutoMinorVersionUpgrade,
        "UseLatestRestorableTime"
          =: _rditpitUseLatestRestorableTime,
        "TargetDBInstanceIdentifier"
          =: _rditpitTargetDBInstanceIdentifier
      ]

-- | /See:/ 'restoreDBInstanceToPointInTimeResponse' smart constructor.
data RestoreDBInstanceToPointInTimeResponse = RestoreDBInstanceToPointInTimeResponse'
  { _rditpitrrsDBInstance ::
      !( Maybe
           DBInstance
       ),
    _rditpitrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RestoreDBInstanceToPointInTimeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rditpitrrsDBInstance' - Undocumented member.
--
-- * 'rditpitrrsResponseStatus' - -- | The response status code.
restoreDBInstanceToPointInTimeResponse ::
  -- | 'rditpitrrsResponseStatus'
  Int ->
  RestoreDBInstanceToPointInTimeResponse
restoreDBInstanceToPointInTimeResponse
  pResponseStatus_ =
    RestoreDBInstanceToPointInTimeResponse'
      { _rditpitrrsDBInstance =
          Nothing,
        _rditpitrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
rditpitrrsDBInstance :: Lens' RestoreDBInstanceToPointInTimeResponse (Maybe DBInstance)
rditpitrrsDBInstance = lens _rditpitrrsDBInstance (\s a -> s {_rditpitrrsDBInstance = a})

-- | -- | The response status code.
rditpitrrsResponseStatus :: Lens' RestoreDBInstanceToPointInTimeResponse Int
rditpitrrsResponseStatus = lens _rditpitrrsResponseStatus (\s a -> s {_rditpitrrsResponseStatus = a})

instance
  NFData
    RestoreDBInstanceToPointInTimeResponse

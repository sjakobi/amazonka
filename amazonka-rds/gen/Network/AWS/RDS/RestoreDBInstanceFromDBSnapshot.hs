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
-- Module      : Network.AWS.RDS.RestoreDBInstanceFromDBSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB instance from a DB snapshot. The target database is created from the source database restore point with most of the source's original configuration, including the default security group and DB parameter group. By default, the new DB instance is created as a Single-AZ deployment, except when the instance is a SQL Server instance that has an option group associated with mirroring. In this case, the instance becomes a Multi-AZ deployment, not a Single-AZ deployment.
--
--
-- If you want to replace your original DB instance with the new, restored DB instance, then rename your original DB instance before you call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB instances with the same name. After you have renamed your original DB instance with a different identifier, then you can pass the original name of the DB instance as the DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action. The result is that you replace the original DB instance with the DB instance created from the snapshot.
--
-- If you are restoring from a shared manual DB snapshot, the @DBSnapshotIdentifier@ must be the ARN of the shared DB snapshot.
module Network.AWS.RDS.RestoreDBInstanceFromDBSnapshot
  ( -- * Creating a Request
    restoreDBInstanceFromDBSnapshot,
    RestoreDBInstanceFromDBSnapshot,

    -- * Request Lenses
    rdifdsDeletionProtection,
    rdifdsEnableIAMDatabaseAuthentication,
    rdifdsEnableCloudwatchLogsExports,
    rdifdsStorageType,
    rdifdsUseDefaultProcessorFeatures,
    rdifdsOptionGroupName,
    rdifdsDomain,
    rdifdsDBSubnetGroupName,
    rdifdsMultiAZ,
    rdifdsPubliclyAccessible,
    rdifdsVPCSecurityGroupIds,
    rdifdsDBParameterGroupName,
    rdifdsAvailabilityZone,
    rdifdsLicenseModel,
    rdifdsTDECredentialPassword,
    rdifdsTags,
    rdifdsProcessorFeatures,
    rdifdsPort,
    rdifdsDBInstanceClass,
    rdifdsDBName,
    rdifdsDomainIAMRoleName,
    rdifdsEngine,
    rdifdsTDECredentialARN,
    rdifdsEnableCustomerOwnedIP,
    rdifdsCopyTagsToSnapshot,
    rdifdsIOPS,
    rdifdsAutoMinorVersionUpgrade,
    rdifdsDBInstanceIdentifier,
    rdifdsDBSnapshotIdentifier,

    -- * Destructuring the Response
    restoreDBInstanceFromDBSnapshotResponse,
    RestoreDBInstanceFromDBSnapshotResponse,

    -- * Response Lenses
    rdifdsrrsDBInstance,
    rdifdsrrsResponseStatus,
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
-- /See:/ 'restoreDBInstanceFromDBSnapshot' smart constructor.
data RestoreDBInstanceFromDBSnapshot = RestoreDBInstanceFromDBSnapshot'
  { _rdifdsDeletionProtection ::
      !( Maybe
           Bool
       ),
    _rdifdsEnableIAMDatabaseAuthentication ::
      !( Maybe
           Bool
       ),
    _rdifdsEnableCloudwatchLogsExports ::
      !( Maybe
           [Text]
       ),
    _rdifdsStorageType ::
      !( Maybe
           Text
       ),
    _rdifdsUseDefaultProcessorFeatures ::
      !( Maybe
           Bool
       ),
    _rdifdsOptionGroupName ::
      !( Maybe
           Text
       ),
    _rdifdsDomain ::
      !( Maybe
           Text
       ),
    _rdifdsDBSubnetGroupName ::
      !( Maybe
           Text
       ),
    _rdifdsMultiAZ ::
      !( Maybe
           Bool
       ),
    _rdifdsPubliclyAccessible ::
      !( Maybe
           Bool
       ),
    _rdifdsVPCSecurityGroupIds ::
      !( Maybe
           [Text]
       ),
    _rdifdsDBParameterGroupName ::
      !( Maybe
           Text
       ),
    _rdifdsAvailabilityZone ::
      !( Maybe
           Text
       ),
    _rdifdsLicenseModel ::
      !( Maybe
           Text
       ),
    _rdifdsTDECredentialPassword ::
      !( Maybe
           Text
       ),
    _rdifdsTags ::
      !( Maybe
           [Tag]
       ),
    _rdifdsProcessorFeatures ::
      !( Maybe
           [ProcessorFeature]
       ),
    _rdifdsPort ::
      !( Maybe
           Int
       ),
    _rdifdsDBInstanceClass ::
      !( Maybe
           Text
       ),
    _rdifdsDBName ::
      !( Maybe
           Text
       ),
    _rdifdsDomainIAMRoleName ::
      !( Maybe
           Text
       ),
    _rdifdsEngine ::
      !( Maybe
           Text
       ),
    _rdifdsTDECredentialARN ::
      !( Maybe
           Text
       ),
    _rdifdsEnableCustomerOwnedIP ::
      !( Maybe
           Bool
       ),
    _rdifdsCopyTagsToSnapshot ::
      !( Maybe
           Bool
       ),
    _rdifdsIOPS ::
      !( Maybe
           Int
       ),
    _rdifdsAutoMinorVersionUpgrade ::
      !( Maybe
           Bool
       ),
    _rdifdsDBInstanceIdentifier ::
      !Text,
    _rdifdsDBSnapshotIdentifier ::
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

-- | Creates a value of 'RestoreDBInstanceFromDBSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdifdsDeletionProtection' - A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
--
-- * 'rdifdsEnableIAMDatabaseAuthentication' - A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information about IAM database authentication, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication for MySQL and PostgreSQL> in the /Amazon RDS User Guide./
--
-- * 'rdifdsEnableCloudwatchLogsExports' - The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs> in the /Amazon RDS User Guide/ .
--
-- * 'rdifdsStorageType' - Specifies the storage type to be associated with the DB instance. Valid values: @standard | gp2 | io1@  If you specify @io1@ , you must also include a value for the @Iops@ parameter.  Default: @io1@ if the @Iops@ parameter is specified, otherwise @gp2@
--
-- * 'rdifdsUseDefaultProcessorFeatures' - A value that indicates whether the DB instance class of the DB instance uses its default processor features.
--
-- * 'rdifdsOptionGroupName' - The name of the option group to be used for the restored DB instance. Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance
--
-- * 'rdifdsDomain' - Specify the Active Directory directory ID to restore the DB instance in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon RDS User Guide/ .
--
-- * 'rdifdsDBSubnetGroupName' - The DB subnet group name to use for the new instance. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: @mySubnetgroup@
--
-- * 'rdifdsMultiAZ' - A value that indicates whether the DB instance is a Multi-AZ deployment. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment.
--
-- * 'rdifdsPubliclyAccessible' - A value that indicates whether the DB instance is publicly accessible. When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it. When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address. For more information, see 'CreateDBInstance' .
--
-- * 'rdifdsVPCSecurityGroupIds' - A list of EC2 VPC security groups to associate with this DB instance.  Default: The default EC2 VPC security group for the DB subnet group's VPC.
--
-- * 'rdifdsDBParameterGroupName' - The name of the DB parameter group to associate with this DB instance. If you do not specify a value for @DBParameterGroupName@ , then the default @DBParameterGroup@ for the specified DB engine is used. Constraints:     * If supplied, must match the name of an existing DBParameterGroup.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'rdifdsAvailabilityZone' - The Availability Zone (AZ) where the DB instance will be created. Default: A random, system-chosen Availability Zone. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment. Example: @us-east-1a@
--
-- * 'rdifdsLicenseModel' - License model information for the restored DB instance. Default: Same as source. Valid values: @license-included@ | @bring-your-own-license@ | @general-public-license@
--
-- * 'rdifdsTDECredentialPassword' - The password for the given ARN from the key store in order to access the device.
--
-- * 'rdifdsTags' - Undocumented member.
--
-- * 'rdifdsProcessorFeatures' - The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
--
-- * 'rdifdsPort' - The port number on which the database accepts connections. Default: The same port as the original DB instance Constraints: Value must be @1150-65535@
--
-- * 'rdifdsDBInstanceClass' - The compute and memory capacity of the Amazon RDS DB instance, for example, @db.m4.large@ . Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html DB Instance Class> in the /Amazon RDS User Guide./  Default: The same DBInstanceClass as the original DB instance.
--
-- * 'rdifdsDBName' - The database name for the restored DB instance.
--
-- * 'rdifdsDomainIAMRoleName' - Specify the name of the IAM role to be used when making API calls to the Directory Service.
--
-- * 'rdifdsEngine' - The database engine to use for the new instance. Default: The same as source Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot. Valid Values:     * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
--
-- * 'rdifdsTDECredentialARN' - The ARN from the key store with which to associate the instance for TDE encryption.
--
-- * 'rdifdsEnableCustomerOwnedIP' - A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. A /CoIP/ provides local or external connectivity to resources in your Outpost subnets through your on-premises network. For some use cases, a CoIP can provide lower latency for connections to the DB instance from outside of its virtual private cloud (VPC) on your local network. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide/ . For more information about CoIPs, see <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses> in the /AWS Outposts User Guide/ .
--
-- * 'rdifdsCopyTagsToSnapshot' - A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.
--
-- * 'rdifdsIOPS' - Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter isn't specified, the IOPS value is taken from the backup. If this parameter is set to 0, the new instance is converted to a non-PIOPS instance. The conversion takes additional time, though your DB instance is available for connections before the conversion starts.  The provisioned IOPS value must follow the requirements for your database engine. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS Amazon RDS Provisioned IOPS Storage to Improve Performance> in the /Amazon RDS User Guide./  Constraints: Must be an integer greater than 1000.
--
-- * 'rdifdsAutoMinorVersionUpgrade' - A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.
--
-- * 'rdifdsDBInstanceIdentifier' - Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive. Constraints:     * Must contain from 1 to 63 numbers, letters, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-snapshot-id@
--
-- * 'rdifdsDBSnapshotIdentifier' - The identifier for the DB snapshot to restore from. Constraints:     * Must match the identifier of an existing DBSnapshot.     * If you are restoring from a shared manual DB snapshot, the @DBSnapshotIdentifier@ must be the ARN of the shared DB snapshot.
restoreDBInstanceFromDBSnapshot ::
  -- | 'rdifdsDBInstanceIdentifier'
  Text ->
  -- | 'rdifdsDBSnapshotIdentifier'
  Text ->
  RestoreDBInstanceFromDBSnapshot
restoreDBInstanceFromDBSnapshot
  pDBInstanceIdentifier_
  pDBSnapshotIdentifier_ =
    RestoreDBInstanceFromDBSnapshot'
      { _rdifdsDeletionProtection =
          Nothing,
        _rdifdsEnableIAMDatabaseAuthentication =
          Nothing,
        _rdifdsEnableCloudwatchLogsExports =
          Nothing,
        _rdifdsStorageType = Nothing,
        _rdifdsUseDefaultProcessorFeatures =
          Nothing,
        _rdifdsOptionGroupName = Nothing,
        _rdifdsDomain = Nothing,
        _rdifdsDBSubnetGroupName = Nothing,
        _rdifdsMultiAZ = Nothing,
        _rdifdsPubliclyAccessible = Nothing,
        _rdifdsVPCSecurityGroupIds = Nothing,
        _rdifdsDBParameterGroupName = Nothing,
        _rdifdsAvailabilityZone = Nothing,
        _rdifdsLicenseModel = Nothing,
        _rdifdsTDECredentialPassword = Nothing,
        _rdifdsTags = Nothing,
        _rdifdsProcessorFeatures = Nothing,
        _rdifdsPort = Nothing,
        _rdifdsDBInstanceClass = Nothing,
        _rdifdsDBName = Nothing,
        _rdifdsDomainIAMRoleName = Nothing,
        _rdifdsEngine = Nothing,
        _rdifdsTDECredentialARN = Nothing,
        _rdifdsEnableCustomerOwnedIP = Nothing,
        _rdifdsCopyTagsToSnapshot = Nothing,
        _rdifdsIOPS = Nothing,
        _rdifdsAutoMinorVersionUpgrade = Nothing,
        _rdifdsDBInstanceIdentifier =
          pDBInstanceIdentifier_,
        _rdifdsDBSnapshotIdentifier =
          pDBSnapshotIdentifier_
      }

-- | A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html Deleting a DB Instance> .
rdifdsDeletionProtection :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsDeletionProtection = lens _rdifdsDeletionProtection (\s a -> s {_rdifdsDeletionProtection = a})

-- | A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information about IAM database authentication, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication for MySQL and PostgreSQL> in the /Amazon RDS User Guide./
rdifdsEnableIAMDatabaseAuthentication :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsEnableIAMDatabaseAuthentication = lens _rdifdsEnableIAMDatabaseAuthentication (\s a -> s {_rdifdsEnableIAMDatabaseAuthentication = a})

-- | The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs> in the /Amazon RDS User Guide/ .
rdifdsEnableCloudwatchLogsExports :: Lens' RestoreDBInstanceFromDBSnapshot [Text]
rdifdsEnableCloudwatchLogsExports = lens _rdifdsEnableCloudwatchLogsExports (\s a -> s {_rdifdsEnableCloudwatchLogsExports = a}) . _Default . _Coerce

-- | Specifies the storage type to be associated with the DB instance. Valid values: @standard | gp2 | io1@  If you specify @io1@ , you must also include a value for the @Iops@ parameter.  Default: @io1@ if the @Iops@ parameter is specified, otherwise @gp2@
rdifdsStorageType :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsStorageType = lens _rdifdsStorageType (\s a -> s {_rdifdsStorageType = a})

-- | A value that indicates whether the DB instance class of the DB instance uses its default processor features.
rdifdsUseDefaultProcessorFeatures :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsUseDefaultProcessorFeatures = lens _rdifdsUseDefaultProcessorFeatures (\s a -> s {_rdifdsUseDefaultProcessorFeatures = a})

-- | The name of the option group to be used for the restored DB instance. Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance
rdifdsOptionGroupName :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsOptionGroupName = lens _rdifdsOptionGroupName (\s a -> s {_rdifdsOptionGroupName = a})

-- | Specify the Active Directory directory ID to restore the DB instance in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon RDS User Guide/ .
rdifdsDomain :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsDomain = lens _rdifdsDomain (\s a -> s {_rdifdsDomain = a})

-- | The DB subnet group name to use for the new instance. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: @mySubnetgroup@
rdifdsDBSubnetGroupName :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsDBSubnetGroupName = lens _rdifdsDBSubnetGroupName (\s a -> s {_rdifdsDBSubnetGroupName = a})

-- | A value that indicates whether the DB instance is a Multi-AZ deployment. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment.
rdifdsMultiAZ :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsMultiAZ = lens _rdifdsMultiAZ (\s a -> s {_rdifdsMultiAZ = a})

-- | A value that indicates whether the DB instance is publicly accessible. When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it. When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address. For more information, see 'CreateDBInstance' .
rdifdsPubliclyAccessible :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsPubliclyAccessible = lens _rdifdsPubliclyAccessible (\s a -> s {_rdifdsPubliclyAccessible = a})

-- | A list of EC2 VPC security groups to associate with this DB instance.  Default: The default EC2 VPC security group for the DB subnet group's VPC.
rdifdsVPCSecurityGroupIds :: Lens' RestoreDBInstanceFromDBSnapshot [Text]
rdifdsVPCSecurityGroupIds = lens _rdifdsVPCSecurityGroupIds (\s a -> s {_rdifdsVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | The name of the DB parameter group to associate with this DB instance. If you do not specify a value for @DBParameterGroupName@ , then the default @DBParameterGroup@ for the specified DB engine is used. Constraints:     * If supplied, must match the name of an existing DBParameterGroup.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
rdifdsDBParameterGroupName :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsDBParameterGroupName = lens _rdifdsDBParameterGroupName (\s a -> s {_rdifdsDBParameterGroupName = a})

-- | The Availability Zone (AZ) where the DB instance will be created. Default: A random, system-chosen Availability Zone. Constraint: You can't specify the @AvailabilityZone@ parameter if the DB instance is a Multi-AZ deployment. Example: @us-east-1a@
rdifdsAvailabilityZone :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsAvailabilityZone = lens _rdifdsAvailabilityZone (\s a -> s {_rdifdsAvailabilityZone = a})

-- | License model information for the restored DB instance. Default: Same as source. Valid values: @license-included@ | @bring-your-own-license@ | @general-public-license@
rdifdsLicenseModel :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsLicenseModel = lens _rdifdsLicenseModel (\s a -> s {_rdifdsLicenseModel = a})

-- | The password for the given ARN from the key store in order to access the device.
rdifdsTDECredentialPassword :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsTDECredentialPassword = lens _rdifdsTDECredentialPassword (\s a -> s {_rdifdsTDECredentialPassword = a})

-- | Undocumented member.
rdifdsTags :: Lens' RestoreDBInstanceFromDBSnapshot [Tag]
rdifdsTags = lens _rdifdsTags (\s a -> s {_rdifdsTags = a}) . _Default . _Coerce

-- | The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.
rdifdsProcessorFeatures :: Lens' RestoreDBInstanceFromDBSnapshot [ProcessorFeature]
rdifdsProcessorFeatures = lens _rdifdsProcessorFeatures (\s a -> s {_rdifdsProcessorFeatures = a}) . _Default . _Coerce

-- | The port number on which the database accepts connections. Default: The same port as the original DB instance Constraints: Value must be @1150-65535@
rdifdsPort :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Int)
rdifdsPort = lens _rdifdsPort (\s a -> s {_rdifdsPort = a})

-- | The compute and memory capacity of the Amazon RDS DB instance, for example, @db.m4.large@ . Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html DB Instance Class> in the /Amazon RDS User Guide./  Default: The same DBInstanceClass as the original DB instance.
rdifdsDBInstanceClass :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsDBInstanceClass = lens _rdifdsDBInstanceClass (\s a -> s {_rdifdsDBInstanceClass = a})

-- | The database name for the restored DB instance.
rdifdsDBName :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsDBName = lens _rdifdsDBName (\s a -> s {_rdifdsDBName = a})

-- | Specify the name of the IAM role to be used when making API calls to the Directory Service.
rdifdsDomainIAMRoleName :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsDomainIAMRoleName = lens _rdifdsDomainIAMRoleName (\s a -> s {_rdifdsDomainIAMRoleName = a})

-- | The database engine to use for the new instance. Default: The same as source Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot. Valid Values:     * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
rdifdsEngine :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsEngine = lens _rdifdsEngine (\s a -> s {_rdifdsEngine = a})

-- | The ARN from the key store with which to associate the instance for TDE encryption.
rdifdsTDECredentialARN :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Text)
rdifdsTDECredentialARN = lens _rdifdsTDECredentialARN (\s a -> s {_rdifdsTDECredentialARN = a})

-- | A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. A /CoIP/ provides local or external connectivity to resources in your Outpost subnets through your on-premises network. For some use cases, a CoIP can provide lower latency for connections to the DB instance from outside of its virtual private cloud (VPC) on your local network. For more information about RDS on Outposts, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html Working with Amazon RDS on AWS Outposts> in the /Amazon RDS User Guide/ . For more information about CoIPs, see <https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing Customer-owned IP addresses> in the /AWS Outposts User Guide/ .
rdifdsEnableCustomerOwnedIP :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsEnableCustomerOwnedIP = lens _rdifdsEnableCustomerOwnedIP (\s a -> s {_rdifdsEnableCustomerOwnedIP = a})

-- | A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.
rdifdsCopyTagsToSnapshot :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsCopyTagsToSnapshot = lens _rdifdsCopyTagsToSnapshot (\s a -> s {_rdifdsCopyTagsToSnapshot = a})

-- | Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter isn't specified, the IOPS value is taken from the backup. If this parameter is set to 0, the new instance is converted to a non-PIOPS instance. The conversion takes additional time, though your DB instance is available for connections before the conversion starts.  The provisioned IOPS value must follow the requirements for your database engine. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS Amazon RDS Provisioned IOPS Storage to Improve Performance> in the /Amazon RDS User Guide./  Constraints: Must be an integer greater than 1000.
rdifdsIOPS :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Int)
rdifdsIOPS = lens _rdifdsIOPS (\s a -> s {_rdifdsIOPS = a})

-- | A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.
rdifdsAutoMinorVersionUpgrade :: Lens' RestoreDBInstanceFromDBSnapshot (Maybe Bool)
rdifdsAutoMinorVersionUpgrade = lens _rdifdsAutoMinorVersionUpgrade (\s a -> s {_rdifdsAutoMinorVersionUpgrade = a})

-- | Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive. Constraints:     * Must contain from 1 to 63 numbers, letters, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-snapshot-id@
rdifdsDBInstanceIdentifier :: Lens' RestoreDBInstanceFromDBSnapshot Text
rdifdsDBInstanceIdentifier = lens _rdifdsDBInstanceIdentifier (\s a -> s {_rdifdsDBInstanceIdentifier = a})

-- | The identifier for the DB snapshot to restore from. Constraints:     * Must match the identifier of an existing DBSnapshot.     * If you are restoring from a shared manual DB snapshot, the @DBSnapshotIdentifier@ must be the ARN of the shared DB snapshot.
rdifdsDBSnapshotIdentifier :: Lens' RestoreDBInstanceFromDBSnapshot Text
rdifdsDBSnapshotIdentifier = lens _rdifdsDBSnapshotIdentifier (\s a -> s {_rdifdsDBSnapshotIdentifier = a})

instance AWSRequest RestoreDBInstanceFromDBSnapshot where
  type
    Rs RestoreDBInstanceFromDBSnapshot =
      RestoreDBInstanceFromDBSnapshotResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "RestoreDBInstanceFromDBSnapshotResult"
      ( \s h x ->
          RestoreDBInstanceFromDBSnapshotResponse'
            <$> (x .@? "DBInstance") <*> (pure (fromEnum s))
      )

instance Hashable RestoreDBInstanceFromDBSnapshot

instance NFData RestoreDBInstanceFromDBSnapshot

instance ToHeaders RestoreDBInstanceFromDBSnapshot where
  toHeaders = const mempty

instance ToPath RestoreDBInstanceFromDBSnapshot where
  toPath = const "/"

instance ToQuery RestoreDBInstanceFromDBSnapshot where
  toQuery RestoreDBInstanceFromDBSnapshot' {..} =
    mconcat
      [ "Action"
          =: ("RestoreDBInstanceFromDBSnapshot" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DeletionProtection" =: _rdifdsDeletionProtection,
        "EnableIAMDatabaseAuthentication"
          =: _rdifdsEnableIAMDatabaseAuthentication,
        "EnableCloudwatchLogsExports"
          =: toQuery
            ( toQueryList "member"
                <$> _rdifdsEnableCloudwatchLogsExports
            ),
        "StorageType" =: _rdifdsStorageType,
        "UseDefaultProcessorFeatures"
          =: _rdifdsUseDefaultProcessorFeatures,
        "OptionGroupName" =: _rdifdsOptionGroupName,
        "Domain" =: _rdifdsDomain,
        "DBSubnetGroupName" =: _rdifdsDBSubnetGroupName,
        "MultiAZ" =: _rdifdsMultiAZ,
        "PubliclyAccessible" =: _rdifdsPubliclyAccessible,
        "VpcSecurityGroupIds"
          =: toQuery
            ( toQueryList "VpcSecurityGroupId"
                <$> _rdifdsVPCSecurityGroupIds
            ),
        "DBParameterGroupName"
          =: _rdifdsDBParameterGroupName,
        "AvailabilityZone" =: _rdifdsAvailabilityZone,
        "LicenseModel" =: _rdifdsLicenseModel,
        "TdeCredentialPassword"
          =: _rdifdsTDECredentialPassword,
        "Tags"
          =: toQuery (toQueryList "Tag" <$> _rdifdsTags),
        "ProcessorFeatures"
          =: toQuery
            ( toQueryList "ProcessorFeature"
                <$> _rdifdsProcessorFeatures
            ),
        "Port" =: _rdifdsPort,
        "DBInstanceClass" =: _rdifdsDBInstanceClass,
        "DBName" =: _rdifdsDBName,
        "DomainIAMRoleName" =: _rdifdsDomainIAMRoleName,
        "Engine" =: _rdifdsEngine,
        "TdeCredentialArn" =: _rdifdsTDECredentialARN,
        "EnableCustomerOwnedIp"
          =: _rdifdsEnableCustomerOwnedIP,
        "CopyTagsToSnapshot" =: _rdifdsCopyTagsToSnapshot,
        "Iops" =: _rdifdsIOPS,
        "AutoMinorVersionUpgrade"
          =: _rdifdsAutoMinorVersionUpgrade,
        "DBInstanceIdentifier"
          =: _rdifdsDBInstanceIdentifier,
        "DBSnapshotIdentifier"
          =: _rdifdsDBSnapshotIdentifier
      ]

-- | /See:/ 'restoreDBInstanceFromDBSnapshotResponse' smart constructor.
data RestoreDBInstanceFromDBSnapshotResponse = RestoreDBInstanceFromDBSnapshotResponse'
  { _rdifdsrrsDBInstance ::
      !( Maybe
           DBInstance
       ),
    _rdifdsrrsResponseStatus ::
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

-- | Creates a value of 'RestoreDBInstanceFromDBSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdifdsrrsDBInstance' - Undocumented member.
--
-- * 'rdifdsrrsResponseStatus' - -- | The response status code.
restoreDBInstanceFromDBSnapshotResponse ::
  -- | 'rdifdsrrsResponseStatus'
  Int ->
  RestoreDBInstanceFromDBSnapshotResponse
restoreDBInstanceFromDBSnapshotResponse
  pResponseStatus_ =
    RestoreDBInstanceFromDBSnapshotResponse'
      { _rdifdsrrsDBInstance =
          Nothing,
        _rdifdsrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
rdifdsrrsDBInstance :: Lens' RestoreDBInstanceFromDBSnapshotResponse (Maybe DBInstance)
rdifdsrrsDBInstance = lens _rdifdsrrsDBInstance (\s a -> s {_rdifdsrrsDBInstance = a})

-- | -- | The response status code.
rdifdsrrsResponseStatus :: Lens' RestoreDBInstanceFromDBSnapshotResponse Int
rdifdsrrsResponseStatus = lens _rdifdsrrsResponseStatus (\s a -> s {_rdifdsrrsResponseStatus = a})

instance
  NFData
    RestoreDBInstanceFromDBSnapshotResponse

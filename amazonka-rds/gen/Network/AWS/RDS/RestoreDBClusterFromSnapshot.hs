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
-- Module      : Network.AWS.RDS.RestoreDBClusterFromSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB cluster from a DB snapshot or DB cluster snapshot. This action only applies to Aurora DB clusters.
--
--
-- The target DB cluster is created from the source snapshot with a default configuration. If you don't specify a security group, the new DB cluster is associated with the default security group.
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.RestoreDBClusterFromSnapshot
  ( -- * Creating a Request
    restoreDBClusterFromSnapshot,
    RestoreDBClusterFromSnapshot,

    -- * Request Lenses
    rdbcfsDeletionProtection,
    rdbcfsAvailabilityZones,
    rdbcfsEnableIAMDatabaseAuthentication,
    rdbcfsEnableCloudwatchLogsExports,
    rdbcfsOptionGroupName,
    rdbcfsDomain,
    rdbcfsEngineMode,
    rdbcfsScalingConfiguration,
    rdbcfsDBSubnetGroupName,
    rdbcfsVPCSecurityGroupIds,
    rdbcfsKMSKeyId,
    rdbcfsEngineVersion,
    rdbcfsTags,
    rdbcfsPort,
    rdbcfsDomainIAMRoleName,
    rdbcfsCopyTagsToSnapshot,
    rdbcfsBacktrackWindow,
    rdbcfsDBClusterParameterGroupName,
    rdbcfsDatabaseName,
    rdbcfsDBClusterIdentifier,
    rdbcfsSnapshotIdentifier,
    rdbcfsEngine,

    -- * Destructuring the Response
    restoreDBClusterFromSnapshotResponse,
    RestoreDBClusterFromSnapshotResponse,

    -- * Response Lenses
    rdbcfsrrsDBCluster,
    rdbcfsrrsResponseStatus,
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
-- /See:/ 'restoreDBClusterFromSnapshot' smart constructor.
data RestoreDBClusterFromSnapshot = RestoreDBClusterFromSnapshot'
  { _rdbcfsDeletionProtection ::
      !(Maybe Bool),
    _rdbcfsAvailabilityZones ::
      !( Maybe
           [Text]
       ),
    _rdbcfsEnableIAMDatabaseAuthentication ::
      !(Maybe Bool),
    _rdbcfsEnableCloudwatchLogsExports ::
      !( Maybe
           [Text]
       ),
    _rdbcfsOptionGroupName ::
      !(Maybe Text),
    _rdbcfsDomain ::
      !(Maybe Text),
    _rdbcfsEngineMode ::
      !(Maybe Text),
    _rdbcfsScalingConfiguration ::
      !( Maybe
           ScalingConfiguration
       ),
    _rdbcfsDBSubnetGroupName ::
      !(Maybe Text),
    _rdbcfsVPCSecurityGroupIds ::
      !( Maybe
           [Text]
       ),
    _rdbcfsKMSKeyId ::
      !(Maybe Text),
    _rdbcfsEngineVersion ::
      !(Maybe Text),
    _rdbcfsTags ::
      !( Maybe
           [Tag]
       ),
    _rdbcfsPort ::
      !(Maybe Int),
    _rdbcfsDomainIAMRoleName ::
      !(Maybe Text),
    _rdbcfsCopyTagsToSnapshot ::
      !(Maybe Bool),
    _rdbcfsBacktrackWindow ::
      !( Maybe
           Integer
       ),
    _rdbcfsDBClusterParameterGroupName ::
      !(Maybe Text),
    _rdbcfsDatabaseName ::
      !(Maybe Text),
    _rdbcfsDBClusterIdentifier ::
      !Text,
    _rdbcfsSnapshotIdentifier ::
      !Text,
    _rdbcfsEngine ::
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

-- | Creates a value of 'RestoreDBClusterFromSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdbcfsDeletionProtection' - A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
--
-- * 'rdbcfsAvailabilityZones' - Provides the list of Availability Zones (AZs) where instances in the restored DB cluster can be created.
--
-- * 'rdbcfsEnableIAMDatabaseAuthentication' - A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication> in the /Amazon Aurora User Guide./
--
-- * 'rdbcfsEnableCloudwatchLogsExports' - The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs > in the /Amazon Aurora User Guide/ .
--
-- * 'rdbcfsOptionGroupName' - The name of the option group to use for the restored DB cluster.
--
-- * 'rdbcfsDomain' - Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon RDS User Guide/ .
--
-- * 'rdbcfsEngineMode' - The DB engine mode of the DB cluster, either @provisioned@ , @serverless@ , @parallelquery@ , @global@ , or @multimaster@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster> .
--
-- * 'rdbcfsScalingConfiguration' - For DB clusters in @serverless@ DB engine mode, the scaling properties of the DB cluster.
--
-- * 'rdbcfsDBSubnetGroupName' - The name of the DB subnet group to use for the new DB cluster. Constraints: If supplied, must match the name of an existing DB subnet group. Example: @mySubnetgroup@
--
-- * 'rdbcfsVPCSecurityGroupIds' - A list of VPC security groups that the new DB cluster will belong to.
--
-- * 'rdbcfsKMSKeyId' - The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK). To use a CMK in a different AWS account, specify the key ARN or alias ARN. When you don't specify a value for the @KmsKeyId@ parameter, then the following occurs:     * If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is encrypted, then the restored DB cluster is encrypted using the AWS KMS CMK that was used to encrypt the DB snapshot or DB cluster snapshot.     * If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ isn't encrypted, then the restored DB cluster isn't encrypted.
--
-- * 'rdbcfsEngineVersion' - The version of the database engine to use for the new DB cluster. To list all of the available engine versions for @aurora@ (for MySQL 5.6-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"@  To list all of the available engine versions for @aurora-mysql@ (for MySQL 5.7-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"@  To list all of the available engine versions for @aurora-postgresql@ , use the following command: @aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"@  __Aurora MySQL__  Example: @5.6.10a@ , @5.6.mysql_aurora.1.19.2@ , @5.7.12@ , @5.7.mysql_aurora.2.04.5@  __Aurora PostgreSQL__  Example: @9.6.3@ , @10.7@
--
-- * 'rdbcfsTags' - The tags to be assigned to the restored DB cluster.
--
-- * 'rdbcfsPort' - The port number on which the new DB cluster accepts connections. Constraints: This value must be @1150-65535@  Default: The same port as the original DB cluster.
--
-- * 'rdbcfsDomainIAMRoleName' - Specify the name of the IAM role to be used when making API calls to the Directory Service.
--
-- * 'rdbcfsCopyTagsToSnapshot' - A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.
--
-- * 'rdbcfsBacktrackWindow' - The target backtrack window, in seconds. To disable backtracking, set this value to 0. Default: 0 Constraints:     * If specified, this value must be set to a number from 0 to 259,200 (72 hours).
--
-- * 'rdbcfsDBClusterParameterGroupName' - The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default DB cluster parameter group for the specified engine is used. Constraints:     * If supplied, must match the name of an existing default DB cluster parameter group.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'rdbcfsDatabaseName' - The database name for the restored DB cluster.
--
-- * 'rdbcfsDBClusterIdentifier' - The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn't case-sensitive. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-snapshot-id@
--
-- * 'rdbcfsSnapshotIdentifier' - The identifier for the DB snapshot or DB cluster snapshot to restore from. You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot. Constraints:     * Must match the identifier of an existing Snapshot.
--
-- * 'rdbcfsEngine' - The database engine to use for the new DB cluster. Default: The same as source Constraint: Must be compatible with the engine of the source
restoreDBClusterFromSnapshot ::
  -- | 'rdbcfsDBClusterIdentifier'
  Text ->
  -- | 'rdbcfsSnapshotIdentifier'
  Text ->
  -- | 'rdbcfsEngine'
  Text ->
  RestoreDBClusterFromSnapshot
restoreDBClusterFromSnapshot
  pDBClusterIdentifier_
  pSnapshotIdentifier_
  pEngine_ =
    RestoreDBClusterFromSnapshot'
      { _rdbcfsDeletionProtection =
          Nothing,
        _rdbcfsAvailabilityZones = Nothing,
        _rdbcfsEnableIAMDatabaseAuthentication =
          Nothing,
        _rdbcfsEnableCloudwatchLogsExports = Nothing,
        _rdbcfsOptionGroupName = Nothing,
        _rdbcfsDomain = Nothing,
        _rdbcfsEngineMode = Nothing,
        _rdbcfsScalingConfiguration = Nothing,
        _rdbcfsDBSubnetGroupName = Nothing,
        _rdbcfsVPCSecurityGroupIds = Nothing,
        _rdbcfsKMSKeyId = Nothing,
        _rdbcfsEngineVersion = Nothing,
        _rdbcfsTags = Nothing,
        _rdbcfsPort = Nothing,
        _rdbcfsDomainIAMRoleName = Nothing,
        _rdbcfsCopyTagsToSnapshot = Nothing,
        _rdbcfsBacktrackWindow = Nothing,
        _rdbcfsDBClusterParameterGroupName = Nothing,
        _rdbcfsDatabaseName = Nothing,
        _rdbcfsDBClusterIdentifier =
          pDBClusterIdentifier_,
        _rdbcfsSnapshotIdentifier =
          pSnapshotIdentifier_,
        _rdbcfsEngine = pEngine_
      }

-- | A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
rdbcfsDeletionProtection :: Lens' RestoreDBClusterFromSnapshot (Maybe Bool)
rdbcfsDeletionProtection = lens _rdbcfsDeletionProtection (\s a -> s {_rdbcfsDeletionProtection = a})

-- | Provides the list of Availability Zones (AZs) where instances in the restored DB cluster can be created.
rdbcfsAvailabilityZones :: Lens' RestoreDBClusterFromSnapshot [Text]
rdbcfsAvailabilityZones = lens _rdbcfsAvailabilityZones (\s a -> s {_rdbcfsAvailabilityZones = a}) . _Default . _Coerce

-- | A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication> in the /Amazon Aurora User Guide./
rdbcfsEnableIAMDatabaseAuthentication :: Lens' RestoreDBClusterFromSnapshot (Maybe Bool)
rdbcfsEnableIAMDatabaseAuthentication = lens _rdbcfsEnableIAMDatabaseAuthentication (\s a -> s {_rdbcfsEnableIAMDatabaseAuthentication = a})

-- | The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs > in the /Amazon Aurora User Guide/ .
rdbcfsEnableCloudwatchLogsExports :: Lens' RestoreDBClusterFromSnapshot [Text]
rdbcfsEnableCloudwatchLogsExports = lens _rdbcfsEnableCloudwatchLogsExports (\s a -> s {_rdbcfsEnableCloudwatchLogsExports = a}) . _Default . _Coerce

-- | The name of the option group to use for the restored DB cluster.
rdbcfsOptionGroupName :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsOptionGroupName = lens _rdbcfsOptionGroupName (\s a -> s {_rdbcfsOptionGroupName = a})

-- | Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon RDS User Guide/ .
rdbcfsDomain :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsDomain = lens _rdbcfsDomain (\s a -> s {_rdbcfsDomain = a})

-- | The DB engine mode of the DB cluster, either @provisioned@ , @serverless@ , @parallelquery@ , @global@ , or @multimaster@ . For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html CreateDBCluster> .
rdbcfsEngineMode :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsEngineMode = lens _rdbcfsEngineMode (\s a -> s {_rdbcfsEngineMode = a})

-- | For DB clusters in @serverless@ DB engine mode, the scaling properties of the DB cluster.
rdbcfsScalingConfiguration :: Lens' RestoreDBClusterFromSnapshot (Maybe ScalingConfiguration)
rdbcfsScalingConfiguration = lens _rdbcfsScalingConfiguration (\s a -> s {_rdbcfsScalingConfiguration = a})

-- | The name of the DB subnet group to use for the new DB cluster. Constraints: If supplied, must match the name of an existing DB subnet group. Example: @mySubnetgroup@
rdbcfsDBSubnetGroupName :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsDBSubnetGroupName = lens _rdbcfsDBSubnetGroupName (\s a -> s {_rdbcfsDBSubnetGroupName = a})

-- | A list of VPC security groups that the new DB cluster will belong to.
rdbcfsVPCSecurityGroupIds :: Lens' RestoreDBClusterFromSnapshot [Text]
rdbcfsVPCSecurityGroupIds = lens _rdbcfsVPCSecurityGroupIds (\s a -> s {_rdbcfsVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK). To use a CMK in a different AWS account, specify the key ARN or alias ARN. When you don't specify a value for the @KmsKeyId@ parameter, then the following occurs:     * If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ is encrypted, then the restored DB cluster is encrypted using the AWS KMS CMK that was used to encrypt the DB snapshot or DB cluster snapshot.     * If the DB snapshot or DB cluster snapshot in @SnapshotIdentifier@ isn't encrypted, then the restored DB cluster isn't encrypted.
rdbcfsKMSKeyId :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsKMSKeyId = lens _rdbcfsKMSKeyId (\s a -> s {_rdbcfsKMSKeyId = a})

-- | The version of the database engine to use for the new DB cluster. To list all of the available engine versions for @aurora@ (for MySQL 5.6-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"@  To list all of the available engine versions for @aurora-mysql@ (for MySQL 5.7-compatible Aurora), use the following command: @aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"@  To list all of the available engine versions for @aurora-postgresql@ , use the following command: @aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"@  __Aurora MySQL__  Example: @5.6.10a@ , @5.6.mysql_aurora.1.19.2@ , @5.7.12@ , @5.7.mysql_aurora.2.04.5@  __Aurora PostgreSQL__  Example: @9.6.3@ , @10.7@
rdbcfsEngineVersion :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsEngineVersion = lens _rdbcfsEngineVersion (\s a -> s {_rdbcfsEngineVersion = a})

-- | The tags to be assigned to the restored DB cluster.
rdbcfsTags :: Lens' RestoreDBClusterFromSnapshot [Tag]
rdbcfsTags = lens _rdbcfsTags (\s a -> s {_rdbcfsTags = a}) . _Default . _Coerce

-- | The port number on which the new DB cluster accepts connections. Constraints: This value must be @1150-65535@  Default: The same port as the original DB cluster.
rdbcfsPort :: Lens' RestoreDBClusterFromSnapshot (Maybe Int)
rdbcfsPort = lens _rdbcfsPort (\s a -> s {_rdbcfsPort = a})

-- | Specify the name of the IAM role to be used when making API calls to the Directory Service.
rdbcfsDomainIAMRoleName :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsDomainIAMRoleName = lens _rdbcfsDomainIAMRoleName (\s a -> s {_rdbcfsDomainIAMRoleName = a})

-- | A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.
rdbcfsCopyTagsToSnapshot :: Lens' RestoreDBClusterFromSnapshot (Maybe Bool)
rdbcfsCopyTagsToSnapshot = lens _rdbcfsCopyTagsToSnapshot (\s a -> s {_rdbcfsCopyTagsToSnapshot = a})

-- | The target backtrack window, in seconds. To disable backtracking, set this value to 0. Default: 0 Constraints:     * If specified, this value must be set to a number from 0 to 259,200 (72 hours).
rdbcfsBacktrackWindow :: Lens' RestoreDBClusterFromSnapshot (Maybe Integer)
rdbcfsBacktrackWindow = lens _rdbcfsBacktrackWindow (\s a -> s {_rdbcfsBacktrackWindow = a})

-- | The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default DB cluster parameter group for the specified engine is used. Constraints:     * If supplied, must match the name of an existing default DB cluster parameter group.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
rdbcfsDBClusterParameterGroupName :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsDBClusterParameterGroupName = lens _rdbcfsDBClusterParameterGroupName (\s a -> s {_rdbcfsDBClusterParameterGroupName = a})

-- | The database name for the restored DB cluster.
rdbcfsDatabaseName :: Lens' RestoreDBClusterFromSnapshot (Maybe Text)
rdbcfsDatabaseName = lens _rdbcfsDatabaseName (\s a -> s {_rdbcfsDatabaseName = a})

-- | The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn't case-sensitive. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-snapshot-id@
rdbcfsDBClusterIdentifier :: Lens' RestoreDBClusterFromSnapshot Text
rdbcfsDBClusterIdentifier = lens _rdbcfsDBClusterIdentifier (\s a -> s {_rdbcfsDBClusterIdentifier = a})

-- | The identifier for the DB snapshot or DB cluster snapshot to restore from. You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot. Constraints:     * Must match the identifier of an existing Snapshot.
rdbcfsSnapshotIdentifier :: Lens' RestoreDBClusterFromSnapshot Text
rdbcfsSnapshotIdentifier = lens _rdbcfsSnapshotIdentifier (\s a -> s {_rdbcfsSnapshotIdentifier = a})

-- | The database engine to use for the new DB cluster. Default: The same as source Constraint: Must be compatible with the engine of the source
rdbcfsEngine :: Lens' RestoreDBClusterFromSnapshot Text
rdbcfsEngine = lens _rdbcfsEngine (\s a -> s {_rdbcfsEngine = a})

instance AWSRequest RestoreDBClusterFromSnapshot where
  type
    Rs RestoreDBClusterFromSnapshot =
      RestoreDBClusterFromSnapshotResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "RestoreDBClusterFromSnapshotResult"
      ( \s h x ->
          RestoreDBClusterFromSnapshotResponse'
            <$> (x .@? "DBCluster") <*> (pure (fromEnum s))
      )

instance Hashable RestoreDBClusterFromSnapshot

instance NFData RestoreDBClusterFromSnapshot

instance ToHeaders RestoreDBClusterFromSnapshot where
  toHeaders = const mempty

instance ToPath RestoreDBClusterFromSnapshot where
  toPath = const "/"

instance ToQuery RestoreDBClusterFromSnapshot where
  toQuery RestoreDBClusterFromSnapshot' {..} =
    mconcat
      [ "Action"
          =: ("RestoreDBClusterFromSnapshot" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DeletionProtection" =: _rdbcfsDeletionProtection,
        "AvailabilityZones"
          =: toQuery
            ( toQueryList "AvailabilityZone"
                <$> _rdbcfsAvailabilityZones
            ),
        "EnableIAMDatabaseAuthentication"
          =: _rdbcfsEnableIAMDatabaseAuthentication,
        "EnableCloudwatchLogsExports"
          =: toQuery
            ( toQueryList "member"
                <$> _rdbcfsEnableCloudwatchLogsExports
            ),
        "OptionGroupName" =: _rdbcfsOptionGroupName,
        "Domain" =: _rdbcfsDomain,
        "EngineMode" =: _rdbcfsEngineMode,
        "ScalingConfiguration"
          =: _rdbcfsScalingConfiguration,
        "DBSubnetGroupName" =: _rdbcfsDBSubnetGroupName,
        "VpcSecurityGroupIds"
          =: toQuery
            ( toQueryList "VpcSecurityGroupId"
                <$> _rdbcfsVPCSecurityGroupIds
            ),
        "KmsKeyId" =: _rdbcfsKMSKeyId,
        "EngineVersion" =: _rdbcfsEngineVersion,
        "Tags"
          =: toQuery (toQueryList "Tag" <$> _rdbcfsTags),
        "Port" =: _rdbcfsPort,
        "DomainIAMRoleName" =: _rdbcfsDomainIAMRoleName,
        "CopyTagsToSnapshot" =: _rdbcfsCopyTagsToSnapshot,
        "BacktrackWindow" =: _rdbcfsBacktrackWindow,
        "DBClusterParameterGroupName"
          =: _rdbcfsDBClusterParameterGroupName,
        "DatabaseName" =: _rdbcfsDatabaseName,
        "DBClusterIdentifier" =: _rdbcfsDBClusterIdentifier,
        "SnapshotIdentifier" =: _rdbcfsSnapshotIdentifier,
        "Engine" =: _rdbcfsEngine
      ]

-- | /See:/ 'restoreDBClusterFromSnapshotResponse' smart constructor.
data RestoreDBClusterFromSnapshotResponse = RestoreDBClusterFromSnapshotResponse'
  { _rdbcfsrrsDBCluster ::
      !( Maybe
           DBCluster
       ),
    _rdbcfsrrsResponseStatus ::
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

-- | Creates a value of 'RestoreDBClusterFromSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdbcfsrrsDBCluster' - Undocumented member.
--
-- * 'rdbcfsrrsResponseStatus' - -- | The response status code.
restoreDBClusterFromSnapshotResponse ::
  -- | 'rdbcfsrrsResponseStatus'
  Int ->
  RestoreDBClusterFromSnapshotResponse
restoreDBClusterFromSnapshotResponse pResponseStatus_ =
  RestoreDBClusterFromSnapshotResponse'
    { _rdbcfsrrsDBCluster =
        Nothing,
      _rdbcfsrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
rdbcfsrrsDBCluster :: Lens' RestoreDBClusterFromSnapshotResponse (Maybe DBCluster)
rdbcfsrrsDBCluster = lens _rdbcfsrrsDBCluster (\s a -> s {_rdbcfsrrsDBCluster = a})

-- | -- | The response status code.
rdbcfsrrsResponseStatus :: Lens' RestoreDBClusterFromSnapshotResponse Int
rdbcfsrrsResponseStatus = lens _rdbcfsrrsResponseStatus (\s a -> s {_rdbcfsrrsResponseStatus = a})

instance NFData RestoreDBClusterFromSnapshotResponse

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
-- Module      : Network.AWS.RDS.RestoreDBClusterToPointInTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before @LatestRestorableTime@ for up to @BackupRetentionPeriod@ days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.RestoreDBClusterToPointInTime
  ( -- * Creating a Request
    restoreDBClusterToPointInTime,
    RestoreDBClusterToPointInTime,

    -- * Request Lenses
    rdctpitDeletionProtection,
    rdctpitEnableIAMDatabaseAuthentication,
    rdctpitEnableCloudwatchLogsExports,
    rdctpitOptionGroupName,
    rdctpitRestoreType,
    rdctpitDomain,
    rdctpitDBSubnetGroupName,
    rdctpitVPCSecurityGroupIds,
    rdctpitKMSKeyId,
    rdctpitTags,
    rdctpitPort,
    rdctpitDomainIAMRoleName,
    rdctpitRestoreToTime,
    rdctpitCopyTagsToSnapshot,
    rdctpitBacktrackWindow,
    rdctpitDBClusterParameterGroupName,
    rdctpitUseLatestRestorableTime,
    rdctpitDBClusterIdentifier,
    rdctpitSourceDBClusterIdentifier,

    -- * Destructuring the Response
    restoreDBClusterToPointInTimeResponse,
    RestoreDBClusterToPointInTimeResponse,

    -- * Response Lenses
    rdctpitrrsDBCluster,
    rdctpitrrsResponseStatus,
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
-- /See:/ 'restoreDBClusterToPointInTime' smart constructor.
data RestoreDBClusterToPointInTime = RestoreDBClusterToPointInTime'
  { _rdctpitDeletionProtection ::
      !( Maybe
           Bool
       ),
    _rdctpitEnableIAMDatabaseAuthentication ::
      !( Maybe
           Bool
       ),
    _rdctpitEnableCloudwatchLogsExports ::
      !( Maybe
           [Text]
       ),
    _rdctpitOptionGroupName ::
      !( Maybe
           Text
       ),
    _rdctpitRestoreType ::
      !( Maybe
           Text
       ),
    _rdctpitDomain ::
      !( Maybe
           Text
       ),
    _rdctpitDBSubnetGroupName ::
      !( Maybe
           Text
       ),
    _rdctpitVPCSecurityGroupIds ::
      !( Maybe
           [Text]
       ),
    _rdctpitKMSKeyId ::
      !( Maybe
           Text
       ),
    _rdctpitTags ::
      !( Maybe
           [Tag]
       ),
    _rdctpitPort ::
      !( Maybe
           Int
       ),
    _rdctpitDomainIAMRoleName ::
      !( Maybe
           Text
       ),
    _rdctpitRestoreToTime ::
      !( Maybe
           ISO8601
       ),
    _rdctpitCopyTagsToSnapshot ::
      !( Maybe
           Bool
       ),
    _rdctpitBacktrackWindow ::
      !( Maybe
           Integer
       ),
    _rdctpitDBClusterParameterGroupName ::
      !( Maybe
           Text
       ),
    _rdctpitUseLatestRestorableTime ::
      !( Maybe
           Bool
       ),
    _rdctpitDBClusterIdentifier ::
      !Text,
    _rdctpitSourceDBClusterIdentifier ::
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

-- | Creates a value of 'RestoreDBClusterToPointInTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdctpitDeletionProtection' - A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
--
-- * 'rdctpitEnableIAMDatabaseAuthentication' - A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication> in the /Amazon Aurora User Guide./
--
-- * 'rdctpitEnableCloudwatchLogsExports' - The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs> in the /Amazon Aurora User Guide/ .
--
-- * 'rdctpitOptionGroupName' - The name of the option group for the new DB cluster.
--
-- * 'rdctpitRestoreType' - The type of restore to be performed. You can specify one of the following values:     * @full-copy@ - The new DB cluster is restored as a full copy of the source DB cluster.     * @copy-on-write@ - The new DB cluster is restored as a clone of the source DB cluster. Constraints: You can't specify @copy-on-write@ if the engine version of the source DB cluster is earlier than 1.11. If you don't specify a @RestoreType@ value, then the new DB cluster is restored as a full copy of the source DB cluster.
--
-- * 'rdctpitDomain' - Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation.  For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon Aurora User Guide/ .
--
-- * 'rdctpitDBSubnetGroupName' - The DB subnet group name to use for the new DB cluster. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: @mySubnetgroup@
--
-- * 'rdctpitVPCSecurityGroupIds' - A list of VPC security groups that the new DB cluster belongs to.
--
-- * 'rdctpitKMSKeyId' - The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK). To use a CMK in a different AWS account, specify the key ARN or alias ARN. You can restore to a new DB cluster and encrypt the new DB cluster with a AWS KMS CMK that is different than the AWS KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the AWS KMS CMK identified by the @KmsKeyId@ parameter. If you don't specify a value for the @KmsKeyId@ parameter, then the following occurs:     * If the DB cluster is encrypted, then the restored DB cluster is encrypted using the AWS KMS CMK that was used to encrypt the source DB cluster.     * If the DB cluster isn't encrypted, then the restored DB cluster isn't encrypted. If @DBClusterIdentifier@ refers to a DB cluster that isn't encrypted, then the restore request is rejected.
--
-- * 'rdctpitTags' - Undocumented member.
--
-- * 'rdctpitPort' - The port number on which the new DB cluster accepts connections. Constraints: A value from @1150-65535@ .  Default: The default port for the engine.
--
-- * 'rdctpitDomainIAMRoleName' - Specify the name of the IAM role to be used when making API calls to the Directory Service.
--
-- * 'rdctpitRestoreToTime' - The date and time to restore the DB cluster to. Valid Values: Value must be a time in Universal Coordinated Time (UTC) format Constraints:     * Must be before the latest restorable time for the DB instance     * Must be specified if @UseLatestRestorableTime@ parameter isn't provided     * Can't be specified if the @UseLatestRestorableTime@ parameter is enabled     * Can't be specified if the @RestoreType@ parameter is @copy-on-write@  Example: @2015-03-07T23:45:00Z@
--
-- * 'rdctpitCopyTagsToSnapshot' - A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.
--
-- * 'rdctpitBacktrackWindow' - The target backtrack window, in seconds. To disable backtracking, set this value to 0. Default: 0 Constraints:     * If specified, this value must be set to a number from 0 to 259,200 (72 hours).
--
-- * 'rdctpitDBClusterParameterGroupName' - The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default DB cluster parameter group for the specified engine is used. Constraints:     * If supplied, must match the name of an existing DB cluster parameter group.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
--
-- * 'rdctpitUseLatestRestorableTime' - A value that indicates whether to restore the DB cluster to the latest restorable backup time. By default, the DB cluster isn't restored to the latest restorable backup time.  Constraints: Can't be specified if @RestoreToTime@ parameter is provided.
--
-- * 'rdctpitDBClusterIdentifier' - The name of the new DB cluster to be created. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
--
-- * 'rdctpitSourceDBClusterIdentifier' - The identifier of the source DB cluster from which to restore. Constraints:     * Must match the identifier of an existing DBCluster.
restoreDBClusterToPointInTime ::
  -- | 'rdctpitDBClusterIdentifier'
  Text ->
  -- | 'rdctpitSourceDBClusterIdentifier'
  Text ->
  RestoreDBClusterToPointInTime
restoreDBClusterToPointInTime
  pDBClusterIdentifier_
  pSourceDBClusterIdentifier_ =
    RestoreDBClusterToPointInTime'
      { _rdctpitDeletionProtection =
          Nothing,
        _rdctpitEnableIAMDatabaseAuthentication =
          Nothing,
        _rdctpitEnableCloudwatchLogsExports =
          Nothing,
        _rdctpitOptionGroupName = Nothing,
        _rdctpitRestoreType = Nothing,
        _rdctpitDomain = Nothing,
        _rdctpitDBSubnetGroupName = Nothing,
        _rdctpitVPCSecurityGroupIds = Nothing,
        _rdctpitKMSKeyId = Nothing,
        _rdctpitTags = Nothing,
        _rdctpitPort = Nothing,
        _rdctpitDomainIAMRoleName = Nothing,
        _rdctpitRestoreToTime = Nothing,
        _rdctpitCopyTagsToSnapshot = Nothing,
        _rdctpitBacktrackWindow = Nothing,
        _rdctpitDBClusterParameterGroupName =
          Nothing,
        _rdctpitUseLatestRestorableTime = Nothing,
        _rdctpitDBClusterIdentifier =
          pDBClusterIdentifier_,
        _rdctpitSourceDBClusterIdentifier =
          pSourceDBClusterIdentifier_
      }

-- | A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
rdctpitDeletionProtection :: Lens' RestoreDBClusterToPointInTime (Maybe Bool)
rdctpitDeletionProtection = lens _rdctpitDeletionProtection (\s a -> s {_rdctpitDeletionProtection = a})

-- | A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html IAM Database Authentication> in the /Amazon Aurora User Guide./
rdctpitEnableIAMDatabaseAuthentication :: Lens' RestoreDBClusterToPointInTime (Maybe Bool)
rdctpitEnableIAMDatabaseAuthentication = lens _rdctpitEnableIAMDatabaseAuthentication (\s a -> s {_rdctpitEnableIAMDatabaseAuthentication = a})

-- | The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch Publishing Database Logs to Amazon CloudWatch Logs> in the /Amazon Aurora User Guide/ .
rdctpitEnableCloudwatchLogsExports :: Lens' RestoreDBClusterToPointInTime [Text]
rdctpitEnableCloudwatchLogsExports = lens _rdctpitEnableCloudwatchLogsExports (\s a -> s {_rdctpitEnableCloudwatchLogsExports = a}) . _Default . _Coerce

-- | The name of the option group for the new DB cluster.
rdctpitOptionGroupName :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitOptionGroupName = lens _rdctpitOptionGroupName (\s a -> s {_rdctpitOptionGroupName = a})

-- | The type of restore to be performed. You can specify one of the following values:     * @full-copy@ - The new DB cluster is restored as a full copy of the source DB cluster.     * @copy-on-write@ - The new DB cluster is restored as a clone of the source DB cluster. Constraints: You can't specify @copy-on-write@ if the engine version of the source DB cluster is earlier than 1.11. If you don't specify a @RestoreType@ value, then the new DB cluster is restored as a full copy of the source DB cluster.
rdctpitRestoreType :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitRestoreType = lens _rdctpitRestoreType (\s a -> s {_rdctpitRestoreType = a})

-- | Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation.  For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html Kerberos Authentication> in the /Amazon Aurora User Guide/ .
rdctpitDomain :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitDomain = lens _rdctpitDomain (\s a -> s {_rdctpitDomain = a})

-- | The DB subnet group name to use for the new DB cluster. Constraints: If supplied, must match the name of an existing DBSubnetGroup. Example: @mySubnetgroup@
rdctpitDBSubnetGroupName :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitDBSubnetGroupName = lens _rdctpitDBSubnetGroupName (\s a -> s {_rdctpitDBSubnetGroupName = a})

-- | A list of VPC security groups that the new DB cluster belongs to.
rdctpitVPCSecurityGroupIds :: Lens' RestoreDBClusterToPointInTime [Text]
rdctpitVPCSecurityGroupIds = lens _rdctpitVPCSecurityGroupIds (\s a -> s {_rdctpitVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK). To use a CMK in a different AWS account, specify the key ARN or alias ARN. You can restore to a new DB cluster and encrypt the new DB cluster with a AWS KMS CMK that is different than the AWS KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the AWS KMS CMK identified by the @KmsKeyId@ parameter. If you don't specify a value for the @KmsKeyId@ parameter, then the following occurs:     * If the DB cluster is encrypted, then the restored DB cluster is encrypted using the AWS KMS CMK that was used to encrypt the source DB cluster.     * If the DB cluster isn't encrypted, then the restored DB cluster isn't encrypted. If @DBClusterIdentifier@ refers to a DB cluster that isn't encrypted, then the restore request is rejected.
rdctpitKMSKeyId :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitKMSKeyId = lens _rdctpitKMSKeyId (\s a -> s {_rdctpitKMSKeyId = a})

-- | Undocumented member.
rdctpitTags :: Lens' RestoreDBClusterToPointInTime [Tag]
rdctpitTags = lens _rdctpitTags (\s a -> s {_rdctpitTags = a}) . _Default . _Coerce

-- | The port number on which the new DB cluster accepts connections. Constraints: A value from @1150-65535@ .  Default: The default port for the engine.
rdctpitPort :: Lens' RestoreDBClusterToPointInTime (Maybe Int)
rdctpitPort = lens _rdctpitPort (\s a -> s {_rdctpitPort = a})

-- | Specify the name of the IAM role to be used when making API calls to the Directory Service.
rdctpitDomainIAMRoleName :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitDomainIAMRoleName = lens _rdctpitDomainIAMRoleName (\s a -> s {_rdctpitDomainIAMRoleName = a})

-- | The date and time to restore the DB cluster to. Valid Values: Value must be a time in Universal Coordinated Time (UTC) format Constraints:     * Must be before the latest restorable time for the DB instance     * Must be specified if @UseLatestRestorableTime@ parameter isn't provided     * Can't be specified if the @UseLatestRestorableTime@ parameter is enabled     * Can't be specified if the @RestoreType@ parameter is @copy-on-write@  Example: @2015-03-07T23:45:00Z@
rdctpitRestoreToTime :: Lens' RestoreDBClusterToPointInTime (Maybe UTCTime)
rdctpitRestoreToTime = lens _rdctpitRestoreToTime (\s a -> s {_rdctpitRestoreToTime = a}) . mapping _Time

-- | A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.
rdctpitCopyTagsToSnapshot :: Lens' RestoreDBClusterToPointInTime (Maybe Bool)
rdctpitCopyTagsToSnapshot = lens _rdctpitCopyTagsToSnapshot (\s a -> s {_rdctpitCopyTagsToSnapshot = a})

-- | The target backtrack window, in seconds. To disable backtracking, set this value to 0. Default: 0 Constraints:     * If specified, this value must be set to a number from 0 to 259,200 (72 hours).
rdctpitBacktrackWindow :: Lens' RestoreDBClusterToPointInTime (Maybe Integer)
rdctpitBacktrackWindow = lens _rdctpitBacktrackWindow (\s a -> s {_rdctpitBacktrackWindow = a})

-- | The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default DB cluster parameter group for the specified engine is used. Constraints:     * If supplied, must match the name of an existing DB cluster parameter group.     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.
rdctpitDBClusterParameterGroupName :: Lens' RestoreDBClusterToPointInTime (Maybe Text)
rdctpitDBClusterParameterGroupName = lens _rdctpitDBClusterParameterGroupName (\s a -> s {_rdctpitDBClusterParameterGroupName = a})

-- | A value that indicates whether to restore the DB cluster to the latest restorable backup time. By default, the DB cluster isn't restored to the latest restorable backup time.  Constraints: Can't be specified if @RestoreToTime@ parameter is provided.
rdctpitUseLatestRestorableTime :: Lens' RestoreDBClusterToPointInTime (Maybe Bool)
rdctpitUseLatestRestorableTime = lens _rdctpitUseLatestRestorableTime (\s a -> s {_rdctpitUseLatestRestorableTime = a})

-- | The name of the new DB cluster to be created. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
rdctpitDBClusterIdentifier :: Lens' RestoreDBClusterToPointInTime Text
rdctpitDBClusterIdentifier = lens _rdctpitDBClusterIdentifier (\s a -> s {_rdctpitDBClusterIdentifier = a})

-- | The identifier of the source DB cluster from which to restore. Constraints:     * Must match the identifier of an existing DBCluster.
rdctpitSourceDBClusterIdentifier :: Lens' RestoreDBClusterToPointInTime Text
rdctpitSourceDBClusterIdentifier = lens _rdctpitSourceDBClusterIdentifier (\s a -> s {_rdctpitSourceDBClusterIdentifier = a})

instance AWSRequest RestoreDBClusterToPointInTime where
  type
    Rs RestoreDBClusterToPointInTime =
      RestoreDBClusterToPointInTimeResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "RestoreDBClusterToPointInTimeResult"
      ( \s h x ->
          RestoreDBClusterToPointInTimeResponse'
            <$> (x .@? "DBCluster") <*> (pure (fromEnum s))
      )

instance Hashable RestoreDBClusterToPointInTime

instance NFData RestoreDBClusterToPointInTime

instance ToHeaders RestoreDBClusterToPointInTime where
  toHeaders = const mempty

instance ToPath RestoreDBClusterToPointInTime where
  toPath = const "/"

instance ToQuery RestoreDBClusterToPointInTime where
  toQuery RestoreDBClusterToPointInTime' {..} =
    mconcat
      [ "Action"
          =: ("RestoreDBClusterToPointInTime" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DeletionProtection" =: _rdctpitDeletionProtection,
        "EnableIAMDatabaseAuthentication"
          =: _rdctpitEnableIAMDatabaseAuthentication,
        "EnableCloudwatchLogsExports"
          =: toQuery
            ( toQueryList "member"
                <$> _rdctpitEnableCloudwatchLogsExports
            ),
        "OptionGroupName" =: _rdctpitOptionGroupName,
        "RestoreType" =: _rdctpitRestoreType,
        "Domain" =: _rdctpitDomain,
        "DBSubnetGroupName" =: _rdctpitDBSubnetGroupName,
        "VpcSecurityGroupIds"
          =: toQuery
            ( toQueryList "VpcSecurityGroupId"
                <$> _rdctpitVPCSecurityGroupIds
            ),
        "KmsKeyId" =: _rdctpitKMSKeyId,
        "Tags"
          =: toQuery (toQueryList "Tag" <$> _rdctpitTags),
        "Port" =: _rdctpitPort,
        "DomainIAMRoleName" =: _rdctpitDomainIAMRoleName,
        "RestoreToTime" =: _rdctpitRestoreToTime,
        "CopyTagsToSnapshot" =: _rdctpitCopyTagsToSnapshot,
        "BacktrackWindow" =: _rdctpitBacktrackWindow,
        "DBClusterParameterGroupName"
          =: _rdctpitDBClusterParameterGroupName,
        "UseLatestRestorableTime"
          =: _rdctpitUseLatestRestorableTime,
        "DBClusterIdentifier" =: _rdctpitDBClusterIdentifier,
        "SourceDBClusterIdentifier"
          =: _rdctpitSourceDBClusterIdentifier
      ]

-- | /See:/ 'restoreDBClusterToPointInTimeResponse' smart constructor.
data RestoreDBClusterToPointInTimeResponse = RestoreDBClusterToPointInTimeResponse'
  { _rdctpitrrsDBCluster ::
      !( Maybe
           DBCluster
       ),
    _rdctpitrrsResponseStatus ::
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

-- | Creates a value of 'RestoreDBClusterToPointInTimeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdctpitrrsDBCluster' - Undocumented member.
--
-- * 'rdctpitrrsResponseStatus' - -- | The response status code.
restoreDBClusterToPointInTimeResponse ::
  -- | 'rdctpitrrsResponseStatus'
  Int ->
  RestoreDBClusterToPointInTimeResponse
restoreDBClusterToPointInTimeResponse
  pResponseStatus_ =
    RestoreDBClusterToPointInTimeResponse'
      { _rdctpitrrsDBCluster =
          Nothing,
        _rdctpitrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
rdctpitrrsDBCluster :: Lens' RestoreDBClusterToPointInTimeResponse (Maybe DBCluster)
rdctpitrrsDBCluster = lens _rdctpitrrsDBCluster (\s a -> s {_rdctpitrrsDBCluster = a})

-- | -- | The response status code.
rdctpitrrsResponseStatus :: Lens' RestoreDBClusterToPointInTimeResponse Int
rdctpitrrsResponseStatus = lens _rdctpitrrsResponseStatus (\s a -> s {_rdctpitrrsResponseStatus = a})

instance NFData RestoreDBClusterToPointInTimeResponse

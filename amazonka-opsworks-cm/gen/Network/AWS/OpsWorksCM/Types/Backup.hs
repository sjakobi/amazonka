{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.Backup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.Backup where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types.BackupStatus
import Network.AWS.OpsWorksCM.Types.BackupType
import Network.AWS.Prelude

-- | Describes a single backup.
--
--
--
-- /See:/ 'backup' smart constructor.
data Backup = Backup'
  { _bSecurityGroupIds ::
      !(Maybe [Text]),
    _bInstanceProfileARN :: !(Maybe Text),
    _bPreferredBackupWindow :: !(Maybe Text),
    _bStatus :: !(Maybe BackupStatus),
    _bServiceRoleARN :: !(Maybe Text),
    _bUserARN :: !(Maybe Text),
    _bInstanceType :: !(Maybe Text),
    _bBackupType :: !(Maybe BackupType),
    _bBackupId :: !(Maybe Text),
    _bS3DataURL :: !(Maybe Text),
    _bBackupARN :: !(Maybe Text),
    _bSubnetIds :: !(Maybe [Text]),
    _bKeyPair :: !(Maybe Text),
    _bS3DataSize :: !(Maybe Int),
    _bCreatedAt :: !(Maybe POSIX),
    _bServerName :: !(Maybe Text),
    _bS3LogURL :: !(Maybe Text),
    _bEngineVersion :: !(Maybe Text),
    _bPreferredMaintenanceWindow :: !(Maybe Text),
    _bToolsVersion :: !(Maybe Text),
    _bEngineModel :: !(Maybe Text),
    _bEngine :: !(Maybe Text),
    _bDescription :: !(Maybe Text),
    _bStatusDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Backup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSecurityGroupIds' - The security group IDs that are obtained from the server when the backup is created.
--
-- * 'bInstanceProfileARN' - The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored, you are not required to provide the InstanceProfileArn again if you restore a backup.
--
-- * 'bPreferredBackupWindow' - The preferred backup period that is obtained from the server when the backup is created.
--
-- * 'bStatus' - The status of a backup while in progress.
--
-- * 'bServiceRoleARN' - The service role ARN that is obtained from the server when the backup is created.
--
-- * 'bUserARN' - The IAM user ARN of the requester for manual backups. This field is empty for automated backups.
--
-- * 'bInstanceType' - The instance type that is obtained from the server when the backup is created.
--
-- * 'bBackupType' - The backup type. Valid values are @automated@ or @manual@ .
--
-- * 'bBackupId' - The generated ID of the backup. Example: @myServerName-yyyyMMddHHmmssSSS@
--
-- * 'bS3DataURL' - This field is deprecated and is no longer used.
--
-- * 'bBackupARN' - The ARN of the backup.
--
-- * 'bSubnetIds' - The subnet IDs that are obtained from the server when the backup is created.
--
-- * 'bKeyPair' - The key pair that is obtained from the server when the backup is created.
--
-- * 'bS3DataSize' - This field is deprecated and is no longer used.
--
-- * 'bCreatedAt' - The time stamp when the backup was created in the database. Example: @2016-07-29T13:38:47.520Z@
--
-- * 'bServerName' - The name of the server from which the backup was made.
--
-- * 'bS3LogURL' - The Amazon S3 URL of the backup's log file.
--
-- * 'bEngineVersion' - The engine version that is obtained from the server when the backup is created.
--
-- * 'bPreferredMaintenanceWindow' - The preferred maintenance period that is obtained from the server when the backup is created.
--
-- * 'bToolsVersion' - The version of AWS OpsWorks CM-specific tools that is obtained from the server when the backup is created.
--
-- * 'bEngineModel' - The engine model that is obtained from the server when the backup is created.
--
-- * 'bEngine' - The engine type that is obtained from the server when the backup is created.
--
-- * 'bDescription' - A user-provided description for a manual backup. This field is empty for automated backups.
--
-- * 'bStatusDescription' - An informational message about backup status.
backup ::
  Backup
backup =
  Backup'
    { _bSecurityGroupIds = Nothing,
      _bInstanceProfileARN = Nothing,
      _bPreferredBackupWindow = Nothing,
      _bStatus = Nothing,
      _bServiceRoleARN = Nothing,
      _bUserARN = Nothing,
      _bInstanceType = Nothing,
      _bBackupType = Nothing,
      _bBackupId = Nothing,
      _bS3DataURL = Nothing,
      _bBackupARN = Nothing,
      _bSubnetIds = Nothing,
      _bKeyPair = Nothing,
      _bS3DataSize = Nothing,
      _bCreatedAt = Nothing,
      _bServerName = Nothing,
      _bS3LogURL = Nothing,
      _bEngineVersion = Nothing,
      _bPreferredMaintenanceWindow = Nothing,
      _bToolsVersion = Nothing,
      _bEngineModel = Nothing,
      _bEngine = Nothing,
      _bDescription = Nothing,
      _bStatusDescription = Nothing
    }

-- | The security group IDs that are obtained from the server when the backup is created.
bSecurityGroupIds :: Lens' Backup [Text]
bSecurityGroupIds = lens _bSecurityGroupIds (\s a -> s {_bSecurityGroupIds = a}) . _Default . _Coerce

-- | The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored, you are not required to provide the InstanceProfileArn again if you restore a backup.
bInstanceProfileARN :: Lens' Backup (Maybe Text)
bInstanceProfileARN = lens _bInstanceProfileARN (\s a -> s {_bInstanceProfileARN = a})

-- | The preferred backup period that is obtained from the server when the backup is created.
bPreferredBackupWindow :: Lens' Backup (Maybe Text)
bPreferredBackupWindow = lens _bPreferredBackupWindow (\s a -> s {_bPreferredBackupWindow = a})

-- | The status of a backup while in progress.
bStatus :: Lens' Backup (Maybe BackupStatus)
bStatus = lens _bStatus (\s a -> s {_bStatus = a})

-- | The service role ARN that is obtained from the server when the backup is created.
bServiceRoleARN :: Lens' Backup (Maybe Text)
bServiceRoleARN = lens _bServiceRoleARN (\s a -> s {_bServiceRoleARN = a})

-- | The IAM user ARN of the requester for manual backups. This field is empty for automated backups.
bUserARN :: Lens' Backup (Maybe Text)
bUserARN = lens _bUserARN (\s a -> s {_bUserARN = a})

-- | The instance type that is obtained from the server when the backup is created.
bInstanceType :: Lens' Backup (Maybe Text)
bInstanceType = lens _bInstanceType (\s a -> s {_bInstanceType = a})

-- | The backup type. Valid values are @automated@ or @manual@ .
bBackupType :: Lens' Backup (Maybe BackupType)
bBackupType = lens _bBackupType (\s a -> s {_bBackupType = a})

-- | The generated ID of the backup. Example: @myServerName-yyyyMMddHHmmssSSS@
bBackupId :: Lens' Backup (Maybe Text)
bBackupId = lens _bBackupId (\s a -> s {_bBackupId = a})

-- | This field is deprecated and is no longer used.
bS3DataURL :: Lens' Backup (Maybe Text)
bS3DataURL = lens _bS3DataURL (\s a -> s {_bS3DataURL = a})

-- | The ARN of the backup.
bBackupARN :: Lens' Backup (Maybe Text)
bBackupARN = lens _bBackupARN (\s a -> s {_bBackupARN = a})

-- | The subnet IDs that are obtained from the server when the backup is created.
bSubnetIds :: Lens' Backup [Text]
bSubnetIds = lens _bSubnetIds (\s a -> s {_bSubnetIds = a}) . _Default . _Coerce

-- | The key pair that is obtained from the server when the backup is created.
bKeyPair :: Lens' Backup (Maybe Text)
bKeyPair = lens _bKeyPair (\s a -> s {_bKeyPair = a})

-- | This field is deprecated and is no longer used.
bS3DataSize :: Lens' Backup (Maybe Int)
bS3DataSize = lens _bS3DataSize (\s a -> s {_bS3DataSize = a})

-- | The time stamp when the backup was created in the database. Example: @2016-07-29T13:38:47.520Z@
bCreatedAt :: Lens' Backup (Maybe UTCTime)
bCreatedAt = lens _bCreatedAt (\s a -> s {_bCreatedAt = a}) . mapping _Time

-- | The name of the server from which the backup was made.
bServerName :: Lens' Backup (Maybe Text)
bServerName = lens _bServerName (\s a -> s {_bServerName = a})

-- | The Amazon S3 URL of the backup's log file.
bS3LogURL :: Lens' Backup (Maybe Text)
bS3LogURL = lens _bS3LogURL (\s a -> s {_bS3LogURL = a})

-- | The engine version that is obtained from the server when the backup is created.
bEngineVersion :: Lens' Backup (Maybe Text)
bEngineVersion = lens _bEngineVersion (\s a -> s {_bEngineVersion = a})

-- | The preferred maintenance period that is obtained from the server when the backup is created.
bPreferredMaintenanceWindow :: Lens' Backup (Maybe Text)
bPreferredMaintenanceWindow = lens _bPreferredMaintenanceWindow (\s a -> s {_bPreferredMaintenanceWindow = a})

-- | The version of AWS OpsWorks CM-specific tools that is obtained from the server when the backup is created.
bToolsVersion :: Lens' Backup (Maybe Text)
bToolsVersion = lens _bToolsVersion (\s a -> s {_bToolsVersion = a})

-- | The engine model that is obtained from the server when the backup is created.
bEngineModel :: Lens' Backup (Maybe Text)
bEngineModel = lens _bEngineModel (\s a -> s {_bEngineModel = a})

-- | The engine type that is obtained from the server when the backup is created.
bEngine :: Lens' Backup (Maybe Text)
bEngine = lens _bEngine (\s a -> s {_bEngine = a})

-- | A user-provided description for a manual backup. This field is empty for automated backups.
bDescription :: Lens' Backup (Maybe Text)
bDescription = lens _bDescription (\s a -> s {_bDescription = a})

-- | An informational message about backup status.
bStatusDescription :: Lens' Backup (Maybe Text)
bStatusDescription = lens _bStatusDescription (\s a -> s {_bStatusDescription = a})

instance FromJSON Backup where
  parseJSON =
    withObject
      "Backup"
      ( \x ->
          Backup'
            <$> (x .:? "SecurityGroupIds" .!= mempty)
            <*> (x .:? "InstanceProfileArn")
            <*> (x .:? "PreferredBackupWindow")
            <*> (x .:? "Status")
            <*> (x .:? "ServiceRoleArn")
            <*> (x .:? "UserArn")
            <*> (x .:? "InstanceType")
            <*> (x .:? "BackupType")
            <*> (x .:? "BackupId")
            <*> (x .:? "S3DataUrl")
            <*> (x .:? "BackupArn")
            <*> (x .:? "SubnetIds" .!= mempty)
            <*> (x .:? "KeyPair")
            <*> (x .:? "S3DataSize")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "ServerName")
            <*> (x .:? "S3LogUrl")
            <*> (x .:? "EngineVersion")
            <*> (x .:? "PreferredMaintenanceWindow")
            <*> (x .:? "ToolsVersion")
            <*> (x .:? "EngineModel")
            <*> (x .:? "Engine")
            <*> (x .:? "Description")
            <*> (x .:? "StatusDescription")
      )

instance Hashable Backup

instance NFData Backup

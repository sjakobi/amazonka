{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBInstanceAutomatedBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBInstanceAutomatedBackup where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.DBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.Types.RestoreWindow

-- | An automated backup of a DB instance. It consists of system backups, transaction logs, and the database instance properties that existed at the time you deleted the source instance.
--
--
--
-- /See:/ 'dbInstanceAutomatedBackup' smart constructor.
data DBInstanceAutomatedBackup = DBInstanceAutomatedBackup'
  { _diabBackupRetentionPeriod ::
      !(Maybe Int),
    _diabStatus ::
      !(Maybe Text),
    _diabDBInstanceAutomatedBackupsARN ::
      !(Maybe Text),
    _diabStorageType ::
      !(Maybe Text),
    _diabEncrypted ::
      !(Maybe Bool),
    _diabOptionGroupName ::
      !(Maybe Text),
    _diabInstanceCreateTime ::
      !(Maybe ISO8601),
    _diabDBiResourceId ::
      !(Maybe Text),
    _diabMasterUsername ::
      !(Maybe Text),
    _diabKMSKeyId ::
      !(Maybe Text),
    _diabAvailabilityZone ::
      !(Maybe Text),
    _diabEngineVersion ::
      !(Maybe Text),
    _diabRestoreWindow ::
      !( Maybe
           RestoreWindow
       ),
    _diabLicenseModel ::
      !(Maybe Text),
    _diabDBInstanceIdentifier ::
      !(Maybe Text),
    _diabPort ::
      !(Maybe Int),
    _diabEngine ::
      !(Maybe Text),
    _diabTDECredentialARN ::
      !(Maybe Text),
    _diabTimezone ::
      !(Maybe Text),
    _diabDBInstanceAutomatedBackupsReplications ::
      !( Maybe
           [DBInstanceAutomatedBackupsReplication]
       ),
    _diabRegion ::
      !(Maybe Text),
    _diabVPCId ::
      !(Maybe Text),
    _diabAllocatedStorage ::
      !(Maybe Int),
    _diabIAMDatabaseAuthenticationEnabled ::
      !(Maybe Bool),
    _diabIOPS ::
      !(Maybe Int),
    _diabDBInstanceARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DBInstanceAutomatedBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diabBackupRetentionPeriod' - The retention period for the automated backups.
--
-- * 'diabStatus' - Provides a list of status information for an automated backup:     * @active@ - automated backups for current instances     * @retained@ - automated backups for deleted instances     * @creating@ - automated backups that are waiting for the first automated snapshot to be available.
--
-- * 'diabDBInstanceAutomatedBackupsARN' - The Amazon Resource Name (ARN) for the replicated automated backups.
--
-- * 'diabStorageType' - Specifies the storage type associated with the automated backup.
--
-- * 'diabEncrypted' - Specifies whether the automated backup is encrypted.
--
-- * 'diabOptionGroupName' - The option group the automated backup is associated with. If omitted, the default option group for the engine specified is used.
--
-- * 'diabInstanceCreateTime' - Provides the date and time that the DB instance was created.
--
-- * 'diabDBiResourceId' - The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.
--
-- * 'diabMasterUsername' - The license model of an automated backup.
--
-- * 'diabKMSKeyId' - The AWS KMS key ID for an automated backup. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
--
-- * 'diabAvailabilityZone' - The Availability Zone that the automated backup was created in. For information on AWS Regions and Availability Zones, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html Regions and Availability Zones> .
--
-- * 'diabEngineVersion' - The version of the database engine for the automated backup.
--
-- * 'diabRestoreWindow' - Earliest and latest time an instance can be restored to.
--
-- * 'diabLicenseModel' - License model information for the automated backup.
--
-- * 'diabDBInstanceIdentifier' - The customer id of the instance that is/was associated with the automated backup.
--
-- * 'diabPort' - The port number that the automated backup used for connections. Default: Inherits from the source DB instance Valid Values: @1150-65535@
--
-- * 'diabEngine' - The name of the database engine for this automated backup.
--
-- * 'diabTDECredentialARN' - The ARN from the key store with which the automated backup is associated for TDE encryption.
--
-- * 'diabTimezone' - The time zone of the automated backup. In most cases, the @Timezone@ element is empty. @Timezone@ content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.
--
-- * 'diabDBInstanceAutomatedBackupsReplications' - The list of replications to different AWS Regions associated with the automated backup.
--
-- * 'diabRegion' - The AWS Region associated with the automated backup.
--
-- * 'diabVPCId' - Provides the VPC ID associated with the DB instance
--
-- * 'diabAllocatedStorage' - Specifies the allocated storage size in gibibytes (GiB).
--
-- * 'diabIAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
--
-- * 'diabIOPS' - The IOPS (I/O operations per second) value for the automated backup.
--
-- * 'diabDBInstanceARN' - The Amazon Resource Name (ARN) for the automated backups.
dbInstanceAutomatedBackup ::
  DBInstanceAutomatedBackup
dbInstanceAutomatedBackup =
  DBInstanceAutomatedBackup'
    { _diabBackupRetentionPeriod =
        Nothing,
      _diabStatus = Nothing,
      _diabDBInstanceAutomatedBackupsARN = Nothing,
      _diabStorageType = Nothing,
      _diabEncrypted = Nothing,
      _diabOptionGroupName = Nothing,
      _diabInstanceCreateTime = Nothing,
      _diabDBiResourceId = Nothing,
      _diabMasterUsername = Nothing,
      _diabKMSKeyId = Nothing,
      _diabAvailabilityZone = Nothing,
      _diabEngineVersion = Nothing,
      _diabRestoreWindow = Nothing,
      _diabLicenseModel = Nothing,
      _diabDBInstanceIdentifier = Nothing,
      _diabPort = Nothing,
      _diabEngine = Nothing,
      _diabTDECredentialARN = Nothing,
      _diabTimezone = Nothing,
      _diabDBInstanceAutomatedBackupsReplications =
        Nothing,
      _diabRegion = Nothing,
      _diabVPCId = Nothing,
      _diabAllocatedStorage = Nothing,
      _diabIAMDatabaseAuthenticationEnabled = Nothing,
      _diabIOPS = Nothing,
      _diabDBInstanceARN = Nothing
    }

-- | The retention period for the automated backups.
diabBackupRetentionPeriod :: Lens' DBInstanceAutomatedBackup (Maybe Int)
diabBackupRetentionPeriod = lens _diabBackupRetentionPeriod (\s a -> s {_diabBackupRetentionPeriod = a})

-- | Provides a list of status information for an automated backup:     * @active@ - automated backups for current instances     * @retained@ - automated backups for deleted instances     * @creating@ - automated backups that are waiting for the first automated snapshot to be available.
diabStatus :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabStatus = lens _diabStatus (\s a -> s {_diabStatus = a})

-- | The Amazon Resource Name (ARN) for the replicated automated backups.
diabDBInstanceAutomatedBackupsARN :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabDBInstanceAutomatedBackupsARN = lens _diabDBInstanceAutomatedBackupsARN (\s a -> s {_diabDBInstanceAutomatedBackupsARN = a})

-- | Specifies the storage type associated with the automated backup.
diabStorageType :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabStorageType = lens _diabStorageType (\s a -> s {_diabStorageType = a})

-- | Specifies whether the automated backup is encrypted.
diabEncrypted :: Lens' DBInstanceAutomatedBackup (Maybe Bool)
diabEncrypted = lens _diabEncrypted (\s a -> s {_diabEncrypted = a})

-- | The option group the automated backup is associated with. If omitted, the default option group for the engine specified is used.
diabOptionGroupName :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabOptionGroupName = lens _diabOptionGroupName (\s a -> s {_diabOptionGroupName = a})

-- | Provides the date and time that the DB instance was created.
diabInstanceCreateTime :: Lens' DBInstanceAutomatedBackup (Maybe UTCTime)
diabInstanceCreateTime = lens _diabInstanceCreateTime (\s a -> s {_diabInstanceCreateTime = a}) . mapping _Time

-- | The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.
diabDBiResourceId :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabDBiResourceId = lens _diabDBiResourceId (\s a -> s {_diabDBiResourceId = a})

-- | The license model of an automated backup.
diabMasterUsername :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabMasterUsername = lens _diabMasterUsername (\s a -> s {_diabMasterUsername = a})

-- | The AWS KMS key ID for an automated backup. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
diabKMSKeyId :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabKMSKeyId = lens _diabKMSKeyId (\s a -> s {_diabKMSKeyId = a})

-- | The Availability Zone that the automated backup was created in. For information on AWS Regions and Availability Zones, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html Regions and Availability Zones> .
diabAvailabilityZone :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabAvailabilityZone = lens _diabAvailabilityZone (\s a -> s {_diabAvailabilityZone = a})

-- | The version of the database engine for the automated backup.
diabEngineVersion :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabEngineVersion = lens _diabEngineVersion (\s a -> s {_diabEngineVersion = a})

-- | Earliest and latest time an instance can be restored to.
diabRestoreWindow :: Lens' DBInstanceAutomatedBackup (Maybe RestoreWindow)
diabRestoreWindow = lens _diabRestoreWindow (\s a -> s {_diabRestoreWindow = a})

-- | License model information for the automated backup.
diabLicenseModel :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabLicenseModel = lens _diabLicenseModel (\s a -> s {_diabLicenseModel = a})

-- | The customer id of the instance that is/was associated with the automated backup.
diabDBInstanceIdentifier :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabDBInstanceIdentifier = lens _diabDBInstanceIdentifier (\s a -> s {_diabDBInstanceIdentifier = a})

-- | The port number that the automated backup used for connections. Default: Inherits from the source DB instance Valid Values: @1150-65535@
diabPort :: Lens' DBInstanceAutomatedBackup (Maybe Int)
diabPort = lens _diabPort (\s a -> s {_diabPort = a})

-- | The name of the database engine for this automated backup.
diabEngine :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabEngine = lens _diabEngine (\s a -> s {_diabEngine = a})

-- | The ARN from the key store with which the automated backup is associated for TDE encryption.
diabTDECredentialARN :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabTDECredentialARN = lens _diabTDECredentialARN (\s a -> s {_diabTDECredentialARN = a})

-- | The time zone of the automated backup. In most cases, the @Timezone@ element is empty. @Timezone@ content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.
diabTimezone :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabTimezone = lens _diabTimezone (\s a -> s {_diabTimezone = a})

-- | The list of replications to different AWS Regions associated with the automated backup.
diabDBInstanceAutomatedBackupsReplications :: Lens' DBInstanceAutomatedBackup [DBInstanceAutomatedBackupsReplication]
diabDBInstanceAutomatedBackupsReplications = lens _diabDBInstanceAutomatedBackupsReplications (\s a -> s {_diabDBInstanceAutomatedBackupsReplications = a}) . _Default . _Coerce

-- | The AWS Region associated with the automated backup.
diabRegion :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabRegion = lens _diabRegion (\s a -> s {_diabRegion = a})

-- | Provides the VPC ID associated with the DB instance
diabVPCId :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabVPCId = lens _diabVPCId (\s a -> s {_diabVPCId = a})

-- | Specifies the allocated storage size in gibibytes (GiB).
diabAllocatedStorage :: Lens' DBInstanceAutomatedBackup (Maybe Int)
diabAllocatedStorage = lens _diabAllocatedStorage (\s a -> s {_diabAllocatedStorage = a})

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
diabIAMDatabaseAuthenticationEnabled :: Lens' DBInstanceAutomatedBackup (Maybe Bool)
diabIAMDatabaseAuthenticationEnabled = lens _diabIAMDatabaseAuthenticationEnabled (\s a -> s {_diabIAMDatabaseAuthenticationEnabled = a})

-- | The IOPS (I/O operations per second) value for the automated backup.
diabIOPS :: Lens' DBInstanceAutomatedBackup (Maybe Int)
diabIOPS = lens _diabIOPS (\s a -> s {_diabIOPS = a})

-- | The Amazon Resource Name (ARN) for the automated backups.
diabDBInstanceARN :: Lens' DBInstanceAutomatedBackup (Maybe Text)
diabDBInstanceARN = lens _diabDBInstanceARN (\s a -> s {_diabDBInstanceARN = a})

instance FromXML DBInstanceAutomatedBackup where
  parseXML x =
    DBInstanceAutomatedBackup'
      <$> (x .@? "BackupRetentionPeriod")
      <*> (x .@? "Status")
      <*> (x .@? "DBInstanceAutomatedBackupsArn")
      <*> (x .@? "StorageType")
      <*> (x .@? "Encrypted")
      <*> (x .@? "OptionGroupName")
      <*> (x .@? "InstanceCreateTime")
      <*> (x .@? "DbiResourceId")
      <*> (x .@? "MasterUsername")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "AvailabilityZone")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "RestoreWindow")
      <*> (x .@? "LicenseModel")
      <*> (x .@? "DBInstanceIdentifier")
      <*> (x .@? "Port")
      <*> (x .@? "Engine")
      <*> (x .@? "TdeCredentialArn")
      <*> (x .@? "Timezone")
      <*> ( x .@? "DBInstanceAutomatedBackupsReplications"
              .!@ mempty
              >>= may
                ( parseXMLList
                    "DBInstanceAutomatedBackupsReplication"
                )
          )
      <*> (x .@? "Region")
      <*> (x .@? "VpcId")
      <*> (x .@? "AllocatedStorage")
      <*> (x .@? "IAMDatabaseAuthenticationEnabled")
      <*> (x .@? "Iops")
      <*> (x .@? "DBInstanceArn")

instance Hashable DBInstanceAutomatedBackup

instance NFData DBInstanceAutomatedBackup

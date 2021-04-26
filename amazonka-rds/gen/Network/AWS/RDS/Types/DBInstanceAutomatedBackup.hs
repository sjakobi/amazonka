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
-- Module      : Network.AWS.RDS.Types.DBInstanceAutomatedBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBInstanceAutomatedBackup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.DBInstanceAutomatedBackupsReplication
import Network.AWS.RDS.Types.RestoreWindow

-- | An automated backup of a DB instance. It consists of system backups,
-- transaction logs, and the database instance properties that existed at
-- the time you deleted the source instance.
--
-- /See:/ 'newDBInstanceAutomatedBackup' smart constructor.
data DBInstanceAutomatedBackup = DBInstanceAutomatedBackup'
  { -- | The retention period for the automated backups.
    backupRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | Provides a list of status information for an automated backup:
    --
    -- -   @active@ - automated backups for current instances
    --
    -- -   @retained@ - automated backups for deleted instances
    --
    -- -   @creating@ - automated backups that are waiting for the first
    --     automated snapshot to be available.
    status :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the replicated automated backups.
    dBInstanceAutomatedBackupsArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the storage type associated with the automated backup.
    storageType :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the automated backup is encrypted.
    encrypted :: Prelude.Maybe Prelude.Bool,
    -- | The option group the automated backup is associated with. If omitted,
    -- the default option group for the engine specified is used.
    optionGroupName :: Prelude.Maybe Prelude.Text,
    -- | Provides the date and time that the DB instance was created.
    instanceCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The identifier for the source DB instance, which can\'t be changed and
    -- which is unique to an AWS Region.
    dbiResourceId :: Prelude.Maybe Prelude.Text,
    -- | The license model of an automated backup.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | The AWS KMS key ID for an automated backup.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone that the automated backup was created in. For
    -- information on AWS Regions and Availability Zones, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html Regions and Availability Zones>.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The version of the database engine for the automated backup.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | Earliest and latest time an instance can be restored to.
    restoreWindow :: Prelude.Maybe RestoreWindow,
    -- | License model information for the automated backup.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | The customer id of the instance that is\/was associated with the
    -- automated backup.
    dBInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The port number that the automated backup used for connections.
    --
    -- Default: Inherits from the source DB instance
    --
    -- Valid Values: @1150-65535@
    port :: Prelude.Maybe Prelude.Int,
    -- | The name of the database engine for this automated backup.
    engine :: Prelude.Maybe Prelude.Text,
    -- | The ARN from the key store with which the automated backup is associated
    -- for TDE encryption.
    tdeCredentialArn :: Prelude.Maybe Prelude.Text,
    -- | The time zone of the automated backup. In most cases, the @Timezone@
    -- element is empty. @Timezone@ content appears only for Microsoft SQL
    -- Server DB instances that were created with a time zone specified.
    timezone :: Prelude.Maybe Prelude.Text,
    -- | The list of replications to different AWS Regions associated with the
    -- automated backup.
    dBInstanceAutomatedBackupsReplications :: Prelude.Maybe [DBInstanceAutomatedBackupsReplication],
    -- | The AWS Region associated with the automated backup.
    region :: Prelude.Maybe Prelude.Text,
    -- | Provides the VPC ID associated with the DB instance
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the allocated storage size in gibibytes (GiB).
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | True if mapping of AWS Identity and Access Management (IAM) accounts to
    -- database accounts is enabled, and otherwise false.
    iAMDatabaseAuthenticationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The IOPS (I\/O operations per second) value for the automated backup.
    iops :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) for the automated backups.
    dBInstanceArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBInstanceAutomatedBackup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupRetentionPeriod', 'dBInstanceAutomatedBackup_backupRetentionPeriod' - The retention period for the automated backups.
--
-- 'status', 'dBInstanceAutomatedBackup_status' - Provides a list of status information for an automated backup:
--
-- -   @active@ - automated backups for current instances
--
-- -   @retained@ - automated backups for deleted instances
--
-- -   @creating@ - automated backups that are waiting for the first
--     automated snapshot to be available.
--
-- 'dBInstanceAutomatedBackupsArn', 'dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn' - The Amazon Resource Name (ARN) for the replicated automated backups.
--
-- 'storageType', 'dBInstanceAutomatedBackup_storageType' - Specifies the storage type associated with the automated backup.
--
-- 'encrypted', 'dBInstanceAutomatedBackup_encrypted' - Specifies whether the automated backup is encrypted.
--
-- 'optionGroupName', 'dBInstanceAutomatedBackup_optionGroupName' - The option group the automated backup is associated with. If omitted,
-- the default option group for the engine specified is used.
--
-- 'instanceCreateTime', 'dBInstanceAutomatedBackup_instanceCreateTime' - Provides the date and time that the DB instance was created.
--
-- 'dbiResourceId', 'dBInstanceAutomatedBackup_dbiResourceId' - The identifier for the source DB instance, which can\'t be changed and
-- which is unique to an AWS Region.
--
-- 'masterUsername', 'dBInstanceAutomatedBackup_masterUsername' - The license model of an automated backup.
--
-- 'kmsKeyId', 'dBInstanceAutomatedBackup_kmsKeyId' - The AWS KMS key ID for an automated backup.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'availabilityZone', 'dBInstanceAutomatedBackup_availabilityZone' - The Availability Zone that the automated backup was created in. For
-- information on AWS Regions and Availability Zones, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html Regions and Availability Zones>.
--
-- 'engineVersion', 'dBInstanceAutomatedBackup_engineVersion' - The version of the database engine for the automated backup.
--
-- 'restoreWindow', 'dBInstanceAutomatedBackup_restoreWindow' - Earliest and latest time an instance can be restored to.
--
-- 'licenseModel', 'dBInstanceAutomatedBackup_licenseModel' - License model information for the automated backup.
--
-- 'dBInstanceIdentifier', 'dBInstanceAutomatedBackup_dBInstanceIdentifier' - The customer id of the instance that is\/was associated with the
-- automated backup.
--
-- 'port', 'dBInstanceAutomatedBackup_port' - The port number that the automated backup used for connections.
--
-- Default: Inherits from the source DB instance
--
-- Valid Values: @1150-65535@
--
-- 'engine', 'dBInstanceAutomatedBackup_engine' - The name of the database engine for this automated backup.
--
-- 'tdeCredentialArn', 'dBInstanceAutomatedBackup_tdeCredentialArn' - The ARN from the key store with which the automated backup is associated
-- for TDE encryption.
--
-- 'timezone', 'dBInstanceAutomatedBackup_timezone' - The time zone of the automated backup. In most cases, the @Timezone@
-- element is empty. @Timezone@ content appears only for Microsoft SQL
-- Server DB instances that were created with a time zone specified.
--
-- 'dBInstanceAutomatedBackupsReplications', 'dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsReplications' - The list of replications to different AWS Regions associated with the
-- automated backup.
--
-- 'region', 'dBInstanceAutomatedBackup_region' - The AWS Region associated with the automated backup.
--
-- 'vpcId', 'dBInstanceAutomatedBackup_vpcId' - Provides the VPC ID associated with the DB instance
--
-- 'allocatedStorage', 'dBInstanceAutomatedBackup_allocatedStorage' - Specifies the allocated storage size in gibibytes (GiB).
--
-- 'iAMDatabaseAuthenticationEnabled', 'dBInstanceAutomatedBackup_iAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
--
-- 'iops', 'dBInstanceAutomatedBackup_iops' - The IOPS (I\/O operations per second) value for the automated backup.
--
-- 'dBInstanceArn', 'dBInstanceAutomatedBackup_dBInstanceArn' - The Amazon Resource Name (ARN) for the automated backups.
newDBInstanceAutomatedBackup ::
  DBInstanceAutomatedBackup
newDBInstanceAutomatedBackup =
  DBInstanceAutomatedBackup'
    { backupRetentionPeriod =
        Prelude.Nothing,
      status = Prelude.Nothing,
      dBInstanceAutomatedBackupsArn = Prelude.Nothing,
      storageType = Prelude.Nothing,
      encrypted = Prelude.Nothing,
      optionGroupName = Prelude.Nothing,
      instanceCreateTime = Prelude.Nothing,
      dbiResourceId = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      restoreWindow = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      dBInstanceIdentifier = Prelude.Nothing,
      port = Prelude.Nothing,
      engine = Prelude.Nothing,
      tdeCredentialArn = Prelude.Nothing,
      timezone = Prelude.Nothing,
      dBInstanceAutomatedBackupsReplications =
        Prelude.Nothing,
      region = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      allocatedStorage = Prelude.Nothing,
      iAMDatabaseAuthenticationEnabled =
        Prelude.Nothing,
      iops = Prelude.Nothing,
      dBInstanceArn = Prelude.Nothing
    }

-- | The retention period for the automated backups.
dBInstanceAutomatedBackup_backupRetentionPeriod :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Int)
dBInstanceAutomatedBackup_backupRetentionPeriod = Lens.lens (\DBInstanceAutomatedBackup' {backupRetentionPeriod} -> backupRetentionPeriod) (\s@DBInstanceAutomatedBackup' {} a -> s {backupRetentionPeriod = a} :: DBInstanceAutomatedBackup)

-- | Provides a list of status information for an automated backup:
--
-- -   @active@ - automated backups for current instances
--
-- -   @retained@ - automated backups for deleted instances
--
-- -   @creating@ - automated backups that are waiting for the first
--     automated snapshot to be available.
dBInstanceAutomatedBackup_status :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_status = Lens.lens (\DBInstanceAutomatedBackup' {status} -> status) (\s@DBInstanceAutomatedBackup' {} a -> s {status = a} :: DBInstanceAutomatedBackup)

-- | The Amazon Resource Name (ARN) for the replicated automated backups.
dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn = Lens.lens (\DBInstanceAutomatedBackup' {dBInstanceAutomatedBackupsArn} -> dBInstanceAutomatedBackupsArn) (\s@DBInstanceAutomatedBackup' {} a -> s {dBInstanceAutomatedBackupsArn = a} :: DBInstanceAutomatedBackup)

-- | Specifies the storage type associated with the automated backup.
dBInstanceAutomatedBackup_storageType :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_storageType = Lens.lens (\DBInstanceAutomatedBackup' {storageType} -> storageType) (\s@DBInstanceAutomatedBackup' {} a -> s {storageType = a} :: DBInstanceAutomatedBackup)

-- | Specifies whether the automated backup is encrypted.
dBInstanceAutomatedBackup_encrypted :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Bool)
dBInstanceAutomatedBackup_encrypted = Lens.lens (\DBInstanceAutomatedBackup' {encrypted} -> encrypted) (\s@DBInstanceAutomatedBackup' {} a -> s {encrypted = a} :: DBInstanceAutomatedBackup)

-- | The option group the automated backup is associated with. If omitted,
-- the default option group for the engine specified is used.
dBInstanceAutomatedBackup_optionGroupName :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_optionGroupName = Lens.lens (\DBInstanceAutomatedBackup' {optionGroupName} -> optionGroupName) (\s@DBInstanceAutomatedBackup' {} a -> s {optionGroupName = a} :: DBInstanceAutomatedBackup)

-- | Provides the date and time that the DB instance was created.
dBInstanceAutomatedBackup_instanceCreateTime :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.UTCTime)
dBInstanceAutomatedBackup_instanceCreateTime = Lens.lens (\DBInstanceAutomatedBackup' {instanceCreateTime} -> instanceCreateTime) (\s@DBInstanceAutomatedBackup' {} a -> s {instanceCreateTime = a} :: DBInstanceAutomatedBackup) Prelude.. Lens.mapping Prelude._Time

-- | The identifier for the source DB instance, which can\'t be changed and
-- which is unique to an AWS Region.
dBInstanceAutomatedBackup_dbiResourceId :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_dbiResourceId = Lens.lens (\DBInstanceAutomatedBackup' {dbiResourceId} -> dbiResourceId) (\s@DBInstanceAutomatedBackup' {} a -> s {dbiResourceId = a} :: DBInstanceAutomatedBackup)

-- | The license model of an automated backup.
dBInstanceAutomatedBackup_masterUsername :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_masterUsername = Lens.lens (\DBInstanceAutomatedBackup' {masterUsername} -> masterUsername) (\s@DBInstanceAutomatedBackup' {} a -> s {masterUsername = a} :: DBInstanceAutomatedBackup)

-- | The AWS KMS key ID for an automated backup.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBInstanceAutomatedBackup_kmsKeyId :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_kmsKeyId = Lens.lens (\DBInstanceAutomatedBackup' {kmsKeyId} -> kmsKeyId) (\s@DBInstanceAutomatedBackup' {} a -> s {kmsKeyId = a} :: DBInstanceAutomatedBackup)

-- | The Availability Zone that the automated backup was created in. For
-- information on AWS Regions and Availability Zones, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html Regions and Availability Zones>.
dBInstanceAutomatedBackup_availabilityZone :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_availabilityZone = Lens.lens (\DBInstanceAutomatedBackup' {availabilityZone} -> availabilityZone) (\s@DBInstanceAutomatedBackup' {} a -> s {availabilityZone = a} :: DBInstanceAutomatedBackup)

-- | The version of the database engine for the automated backup.
dBInstanceAutomatedBackup_engineVersion :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_engineVersion = Lens.lens (\DBInstanceAutomatedBackup' {engineVersion} -> engineVersion) (\s@DBInstanceAutomatedBackup' {} a -> s {engineVersion = a} :: DBInstanceAutomatedBackup)

-- | Earliest and latest time an instance can be restored to.
dBInstanceAutomatedBackup_restoreWindow :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe RestoreWindow)
dBInstanceAutomatedBackup_restoreWindow = Lens.lens (\DBInstanceAutomatedBackup' {restoreWindow} -> restoreWindow) (\s@DBInstanceAutomatedBackup' {} a -> s {restoreWindow = a} :: DBInstanceAutomatedBackup)

-- | License model information for the automated backup.
dBInstanceAutomatedBackup_licenseModel :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_licenseModel = Lens.lens (\DBInstanceAutomatedBackup' {licenseModel} -> licenseModel) (\s@DBInstanceAutomatedBackup' {} a -> s {licenseModel = a} :: DBInstanceAutomatedBackup)

-- | The customer id of the instance that is\/was associated with the
-- automated backup.
dBInstanceAutomatedBackup_dBInstanceIdentifier :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_dBInstanceIdentifier = Lens.lens (\DBInstanceAutomatedBackup' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@DBInstanceAutomatedBackup' {} a -> s {dBInstanceIdentifier = a} :: DBInstanceAutomatedBackup)

-- | The port number that the automated backup used for connections.
--
-- Default: Inherits from the source DB instance
--
-- Valid Values: @1150-65535@
dBInstanceAutomatedBackup_port :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Int)
dBInstanceAutomatedBackup_port = Lens.lens (\DBInstanceAutomatedBackup' {port} -> port) (\s@DBInstanceAutomatedBackup' {} a -> s {port = a} :: DBInstanceAutomatedBackup)

-- | The name of the database engine for this automated backup.
dBInstanceAutomatedBackup_engine :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_engine = Lens.lens (\DBInstanceAutomatedBackup' {engine} -> engine) (\s@DBInstanceAutomatedBackup' {} a -> s {engine = a} :: DBInstanceAutomatedBackup)

-- | The ARN from the key store with which the automated backup is associated
-- for TDE encryption.
dBInstanceAutomatedBackup_tdeCredentialArn :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_tdeCredentialArn = Lens.lens (\DBInstanceAutomatedBackup' {tdeCredentialArn} -> tdeCredentialArn) (\s@DBInstanceAutomatedBackup' {} a -> s {tdeCredentialArn = a} :: DBInstanceAutomatedBackup)

-- | The time zone of the automated backup. In most cases, the @Timezone@
-- element is empty. @Timezone@ content appears only for Microsoft SQL
-- Server DB instances that were created with a time zone specified.
dBInstanceAutomatedBackup_timezone :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_timezone = Lens.lens (\DBInstanceAutomatedBackup' {timezone} -> timezone) (\s@DBInstanceAutomatedBackup' {} a -> s {timezone = a} :: DBInstanceAutomatedBackup)

-- | The list of replications to different AWS Regions associated with the
-- automated backup.
dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsReplications :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe [DBInstanceAutomatedBackupsReplication])
dBInstanceAutomatedBackup_dBInstanceAutomatedBackupsReplications = Lens.lens (\DBInstanceAutomatedBackup' {dBInstanceAutomatedBackupsReplications} -> dBInstanceAutomatedBackupsReplications) (\s@DBInstanceAutomatedBackup' {} a -> s {dBInstanceAutomatedBackupsReplications = a} :: DBInstanceAutomatedBackup) Prelude.. Lens.mapping Prelude._Coerce

-- | The AWS Region associated with the automated backup.
dBInstanceAutomatedBackup_region :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_region = Lens.lens (\DBInstanceAutomatedBackup' {region} -> region) (\s@DBInstanceAutomatedBackup' {} a -> s {region = a} :: DBInstanceAutomatedBackup)

-- | Provides the VPC ID associated with the DB instance
dBInstanceAutomatedBackup_vpcId :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_vpcId = Lens.lens (\DBInstanceAutomatedBackup' {vpcId} -> vpcId) (\s@DBInstanceAutomatedBackup' {} a -> s {vpcId = a} :: DBInstanceAutomatedBackup)

-- | Specifies the allocated storage size in gibibytes (GiB).
dBInstanceAutomatedBackup_allocatedStorage :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Int)
dBInstanceAutomatedBackup_allocatedStorage = Lens.lens (\DBInstanceAutomatedBackup' {allocatedStorage} -> allocatedStorage) (\s@DBInstanceAutomatedBackup' {} a -> s {allocatedStorage = a} :: DBInstanceAutomatedBackup)

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
dBInstanceAutomatedBackup_iAMDatabaseAuthenticationEnabled :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Bool)
dBInstanceAutomatedBackup_iAMDatabaseAuthenticationEnabled = Lens.lens (\DBInstanceAutomatedBackup' {iAMDatabaseAuthenticationEnabled} -> iAMDatabaseAuthenticationEnabled) (\s@DBInstanceAutomatedBackup' {} a -> s {iAMDatabaseAuthenticationEnabled = a} :: DBInstanceAutomatedBackup)

-- | The IOPS (I\/O operations per second) value for the automated backup.
dBInstanceAutomatedBackup_iops :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Int)
dBInstanceAutomatedBackup_iops = Lens.lens (\DBInstanceAutomatedBackup' {iops} -> iops) (\s@DBInstanceAutomatedBackup' {} a -> s {iops = a} :: DBInstanceAutomatedBackup)

-- | The Amazon Resource Name (ARN) for the automated backups.
dBInstanceAutomatedBackup_dBInstanceArn :: Lens.Lens' DBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
dBInstanceAutomatedBackup_dBInstanceArn = Lens.lens (\DBInstanceAutomatedBackup' {dBInstanceArn} -> dBInstanceArn) (\s@DBInstanceAutomatedBackup' {} a -> s {dBInstanceArn = a} :: DBInstanceAutomatedBackup)

instance Prelude.FromXML DBInstanceAutomatedBackup where
  parseXML x =
    DBInstanceAutomatedBackup'
      Prelude.<$> (x Prelude..@? "BackupRetentionPeriod")
      Prelude.<*> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "DBInstanceAutomatedBackupsArn")
      Prelude.<*> (x Prelude..@? "StorageType")
      Prelude.<*> (x Prelude..@? "Encrypted")
      Prelude.<*> (x Prelude..@? "OptionGroupName")
      Prelude.<*> (x Prelude..@? "InstanceCreateTime")
      Prelude.<*> (x Prelude..@? "DbiResourceId")
      Prelude.<*> (x Prelude..@? "MasterUsername")
      Prelude.<*> (x Prelude..@? "KmsKeyId")
      Prelude.<*> (x Prelude..@? "AvailabilityZone")
      Prelude.<*> (x Prelude..@? "EngineVersion")
      Prelude.<*> (x Prelude..@? "RestoreWindow")
      Prelude.<*> (x Prelude..@? "LicenseModel")
      Prelude.<*> (x Prelude..@? "DBInstanceIdentifier")
      Prelude.<*> (x Prelude..@? "Port")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> (x Prelude..@? "TdeCredentialArn")
      Prelude.<*> (x Prelude..@? "Timezone")
      Prelude.<*> ( x
                      Prelude..@? "DBInstanceAutomatedBackupsReplications"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        ( Prelude.parseXMLList
                            "DBInstanceAutomatedBackupsReplication"
                        )
                  )
      Prelude.<*> (x Prelude..@? "Region")
      Prelude.<*> (x Prelude..@? "VpcId")
      Prelude.<*> (x Prelude..@? "AllocatedStorage")
      Prelude.<*> (x Prelude..@? "IAMDatabaseAuthenticationEnabled")
      Prelude.<*> (x Prelude..@? "Iops")
      Prelude.<*> (x Prelude..@? "DBInstanceArn")

instance Prelude.Hashable DBInstanceAutomatedBackup

instance Prelude.NFData DBInstanceAutomatedBackup

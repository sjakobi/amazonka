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
-- Module      : Network.AWS.RDS.Types.DBSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBSnapshot where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.ProcessorFeature
import Network.AWS.RDS.Types.Tag

-- | Contains the details of an Amazon RDS DB snapshot.
--
-- This data type is used as a response element in the
-- @DescribeDBSnapshots@ action.
--
-- /See:/ 'newDBSnapshot' smart constructor.
data DBSnapshot = DBSnapshot'
  { -- | Specifies the status of this DB snapshot.
    status :: Prelude.Maybe Prelude.Text,
    -- | Specifies the storage type associated with DB snapshot.
    storageType :: Prelude.Maybe Prelude.Text,
    -- | Specifies the identifier for the DB snapshot.
    dBSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the DB snapshot is encrypted.
    encrypted :: Prelude.Maybe Prelude.Bool,
    -- | Provides the option group name for the DB snapshot.
    optionGroupName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the time in Coordinated Universal Time (UTC) when the DB
    -- instance, from which the snapshot was taken, was created.
    instanceCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The identifier for the source DB instance, which can\'t be changed and
    -- which is unique to an AWS Region.
    dbiResourceId :: Prelude.Maybe Prelude.Text,
    -- | Specifies when the snapshot was taken in Coordinated Universal Time
    -- (UTC).
    snapshotCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | Provides the master username for the DB snapshot.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | If @Encrypted@ is true, the AWS KMS key identifier for the encrypted DB
    -- snapshot.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the Availability Zone the DB instance was located
    -- in at the time of the DB snapshot.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the DB snapshot.
    dBSnapshotArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the version of the database engine.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | Provides the type of the DB snapshot.
    snapshotType :: Prelude.Maybe Prelude.Text,
    -- | The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
    -- copied from. It only has value in case of cross-customer or cross-region
    -- copy.
    sourceDBSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | License model information for the restored DB instance.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | Specifies the DB instance identifier of the DB instance this DB snapshot
    -- was created from.
    dBInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The number of CPU cores and the number of threads per core for the DB
    -- instance class of the DB instance when the DB snapshot was created.
    processorFeatures :: Prelude.Maybe [ProcessorFeature],
    -- | Specifies the port that the database engine was listening on at the time
    -- of the snapshot.
    port :: Prelude.Maybe Prelude.Int,
    -- | The percentage of the estimated data that has been transferred.
    percentProgress :: Prelude.Maybe Prelude.Int,
    -- | Specifies the name of the database engine.
    engine :: Prelude.Maybe Prelude.Text,
    -- | The ARN from the key store with which to associate the instance for TDE
    -- encryption.
    tdeCredentialArn :: Prelude.Maybe Prelude.Text,
    -- | The time zone of the DB snapshot. In most cases, the @Timezone@ element
    -- is empty. @Timezone@ content appears only for snapshots taken from
    -- Microsoft SQL Server DB instances that were created with a time zone
    -- specified.
    timezone :: Prelude.Maybe Prelude.Text,
    tagList :: Prelude.Maybe [Tag],
    -- | Provides the VPC ID associated with the DB snapshot.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the allocated storage size in gibibytes (GiB).
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | The AWS Region that the DB snapshot was created in or copied from.
    sourceRegion :: Prelude.Maybe Prelude.Text,
    -- | True if mapping of AWS Identity and Access Management (IAM) accounts to
    -- database accounts is enabled, and otherwise false.
    iAMDatabaseAuthenticationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the Provisioned IOPS (I\/O operations per second) value of the
    -- DB instance at the time of the snapshot.
    iops :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'dBSnapshot_status' - Specifies the status of this DB snapshot.
--
-- 'storageType', 'dBSnapshot_storageType' - Specifies the storage type associated with DB snapshot.
--
-- 'dBSnapshotIdentifier', 'dBSnapshot_dBSnapshotIdentifier' - Specifies the identifier for the DB snapshot.
--
-- 'encrypted', 'dBSnapshot_encrypted' - Specifies whether the DB snapshot is encrypted.
--
-- 'optionGroupName', 'dBSnapshot_optionGroupName' - Provides the option group name for the DB snapshot.
--
-- 'instanceCreateTime', 'dBSnapshot_instanceCreateTime' - Specifies the time in Coordinated Universal Time (UTC) when the DB
-- instance, from which the snapshot was taken, was created.
--
-- 'dbiResourceId', 'dBSnapshot_dbiResourceId' - The identifier for the source DB instance, which can\'t be changed and
-- which is unique to an AWS Region.
--
-- 'snapshotCreateTime', 'dBSnapshot_snapshotCreateTime' - Specifies when the snapshot was taken in Coordinated Universal Time
-- (UTC).
--
-- 'masterUsername', 'dBSnapshot_masterUsername' - Provides the master username for the DB snapshot.
--
-- 'kmsKeyId', 'dBSnapshot_kmsKeyId' - If @Encrypted@ is true, the AWS KMS key identifier for the encrypted DB
-- snapshot.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'availabilityZone', 'dBSnapshot_availabilityZone' - Specifies the name of the Availability Zone the DB instance was located
-- in at the time of the DB snapshot.
--
-- 'dBSnapshotArn', 'dBSnapshot_dBSnapshotArn' - The Amazon Resource Name (ARN) for the DB snapshot.
--
-- 'engineVersion', 'dBSnapshot_engineVersion' - Specifies the version of the database engine.
--
-- 'snapshotType', 'dBSnapshot_snapshotType' - Provides the type of the DB snapshot.
--
-- 'sourceDBSnapshotIdentifier', 'dBSnapshot_sourceDBSnapshotIdentifier' - The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
-- copied from. It only has value in case of cross-customer or cross-region
-- copy.
--
-- 'licenseModel', 'dBSnapshot_licenseModel' - License model information for the restored DB instance.
--
-- 'dBInstanceIdentifier', 'dBSnapshot_dBInstanceIdentifier' - Specifies the DB instance identifier of the DB instance this DB snapshot
-- was created from.
--
-- 'processorFeatures', 'dBSnapshot_processorFeatures' - The number of CPU cores and the number of threads per core for the DB
-- instance class of the DB instance when the DB snapshot was created.
--
-- 'port', 'dBSnapshot_port' - Specifies the port that the database engine was listening on at the time
-- of the snapshot.
--
-- 'percentProgress', 'dBSnapshot_percentProgress' - The percentage of the estimated data that has been transferred.
--
-- 'engine', 'dBSnapshot_engine' - Specifies the name of the database engine.
--
-- 'tdeCredentialArn', 'dBSnapshot_tdeCredentialArn' - The ARN from the key store with which to associate the instance for TDE
-- encryption.
--
-- 'timezone', 'dBSnapshot_timezone' - The time zone of the DB snapshot. In most cases, the @Timezone@ element
-- is empty. @Timezone@ content appears only for snapshots taken from
-- Microsoft SQL Server DB instances that were created with a time zone
-- specified.
--
-- 'tagList', 'dBSnapshot_tagList' - Undocumented member.
--
-- 'vpcId', 'dBSnapshot_vpcId' - Provides the VPC ID associated with the DB snapshot.
--
-- 'allocatedStorage', 'dBSnapshot_allocatedStorage' - Specifies the allocated storage size in gibibytes (GiB).
--
-- 'sourceRegion', 'dBSnapshot_sourceRegion' - The AWS Region that the DB snapshot was created in or copied from.
--
-- 'iAMDatabaseAuthenticationEnabled', 'dBSnapshot_iAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
--
-- 'iops', 'dBSnapshot_iops' - Specifies the Provisioned IOPS (I\/O operations per second) value of the
-- DB instance at the time of the snapshot.
newDBSnapshot ::
  DBSnapshot
newDBSnapshot =
  DBSnapshot'
    { status = Prelude.Nothing,
      storageType = Prelude.Nothing,
      dBSnapshotIdentifier = Prelude.Nothing,
      encrypted = Prelude.Nothing,
      optionGroupName = Prelude.Nothing,
      instanceCreateTime = Prelude.Nothing,
      dbiResourceId = Prelude.Nothing,
      snapshotCreateTime = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      availabilityZone = Prelude.Nothing,
      dBSnapshotArn = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      snapshotType = Prelude.Nothing,
      sourceDBSnapshotIdentifier = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      dBInstanceIdentifier = Prelude.Nothing,
      processorFeatures = Prelude.Nothing,
      port = Prelude.Nothing,
      percentProgress = Prelude.Nothing,
      engine = Prelude.Nothing,
      tdeCredentialArn = Prelude.Nothing,
      timezone = Prelude.Nothing,
      tagList = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      allocatedStorage = Prelude.Nothing,
      sourceRegion = Prelude.Nothing,
      iAMDatabaseAuthenticationEnabled = Prelude.Nothing,
      iops = Prelude.Nothing
    }

-- | Specifies the status of this DB snapshot.
dBSnapshot_status :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_status = Lens.lens (\DBSnapshot' {status} -> status) (\s@DBSnapshot' {} a -> s {status = a} :: DBSnapshot)

-- | Specifies the storage type associated with DB snapshot.
dBSnapshot_storageType :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_storageType = Lens.lens (\DBSnapshot' {storageType} -> storageType) (\s@DBSnapshot' {} a -> s {storageType = a} :: DBSnapshot)

-- | Specifies the identifier for the DB snapshot.
dBSnapshot_dBSnapshotIdentifier :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_dBSnapshotIdentifier = Lens.lens (\DBSnapshot' {dBSnapshotIdentifier} -> dBSnapshotIdentifier) (\s@DBSnapshot' {} a -> s {dBSnapshotIdentifier = a} :: DBSnapshot)

-- | Specifies whether the DB snapshot is encrypted.
dBSnapshot_encrypted :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Bool)
dBSnapshot_encrypted = Lens.lens (\DBSnapshot' {encrypted} -> encrypted) (\s@DBSnapshot' {} a -> s {encrypted = a} :: DBSnapshot)

-- | Provides the option group name for the DB snapshot.
dBSnapshot_optionGroupName :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_optionGroupName = Lens.lens (\DBSnapshot' {optionGroupName} -> optionGroupName) (\s@DBSnapshot' {} a -> s {optionGroupName = a} :: DBSnapshot)

-- | Specifies the time in Coordinated Universal Time (UTC) when the DB
-- instance, from which the snapshot was taken, was created.
dBSnapshot_instanceCreateTime :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.UTCTime)
dBSnapshot_instanceCreateTime = Lens.lens (\DBSnapshot' {instanceCreateTime} -> instanceCreateTime) (\s@DBSnapshot' {} a -> s {instanceCreateTime = a} :: DBSnapshot) Prelude.. Lens.mapping Prelude._Time

-- | The identifier for the source DB instance, which can\'t be changed and
-- which is unique to an AWS Region.
dBSnapshot_dbiResourceId :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_dbiResourceId = Lens.lens (\DBSnapshot' {dbiResourceId} -> dbiResourceId) (\s@DBSnapshot' {} a -> s {dbiResourceId = a} :: DBSnapshot)

-- | Specifies when the snapshot was taken in Coordinated Universal Time
-- (UTC).
dBSnapshot_snapshotCreateTime :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.UTCTime)
dBSnapshot_snapshotCreateTime = Lens.lens (\DBSnapshot' {snapshotCreateTime} -> snapshotCreateTime) (\s@DBSnapshot' {} a -> s {snapshotCreateTime = a} :: DBSnapshot) Prelude.. Lens.mapping Prelude._Time

-- | Provides the master username for the DB snapshot.
dBSnapshot_masterUsername :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_masterUsername = Lens.lens (\DBSnapshot' {masterUsername} -> masterUsername) (\s@DBSnapshot' {} a -> s {masterUsername = a} :: DBSnapshot)

-- | If @Encrypted@ is true, the AWS KMS key identifier for the encrypted DB
-- snapshot.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBSnapshot_kmsKeyId :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_kmsKeyId = Lens.lens (\DBSnapshot' {kmsKeyId} -> kmsKeyId) (\s@DBSnapshot' {} a -> s {kmsKeyId = a} :: DBSnapshot)

-- | Specifies the name of the Availability Zone the DB instance was located
-- in at the time of the DB snapshot.
dBSnapshot_availabilityZone :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_availabilityZone = Lens.lens (\DBSnapshot' {availabilityZone} -> availabilityZone) (\s@DBSnapshot' {} a -> s {availabilityZone = a} :: DBSnapshot)

-- | The Amazon Resource Name (ARN) for the DB snapshot.
dBSnapshot_dBSnapshotArn :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_dBSnapshotArn = Lens.lens (\DBSnapshot' {dBSnapshotArn} -> dBSnapshotArn) (\s@DBSnapshot' {} a -> s {dBSnapshotArn = a} :: DBSnapshot)

-- | Specifies the version of the database engine.
dBSnapshot_engineVersion :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_engineVersion = Lens.lens (\DBSnapshot' {engineVersion} -> engineVersion) (\s@DBSnapshot' {} a -> s {engineVersion = a} :: DBSnapshot)

-- | Provides the type of the DB snapshot.
dBSnapshot_snapshotType :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_snapshotType = Lens.lens (\DBSnapshot' {snapshotType} -> snapshotType) (\s@DBSnapshot' {} a -> s {snapshotType = a} :: DBSnapshot)

-- | The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
-- copied from. It only has value in case of cross-customer or cross-region
-- copy.
dBSnapshot_sourceDBSnapshotIdentifier :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_sourceDBSnapshotIdentifier = Lens.lens (\DBSnapshot' {sourceDBSnapshotIdentifier} -> sourceDBSnapshotIdentifier) (\s@DBSnapshot' {} a -> s {sourceDBSnapshotIdentifier = a} :: DBSnapshot)

-- | License model information for the restored DB instance.
dBSnapshot_licenseModel :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_licenseModel = Lens.lens (\DBSnapshot' {licenseModel} -> licenseModel) (\s@DBSnapshot' {} a -> s {licenseModel = a} :: DBSnapshot)

-- | Specifies the DB instance identifier of the DB instance this DB snapshot
-- was created from.
dBSnapshot_dBInstanceIdentifier :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_dBInstanceIdentifier = Lens.lens (\DBSnapshot' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@DBSnapshot' {} a -> s {dBInstanceIdentifier = a} :: DBSnapshot)

-- | The number of CPU cores and the number of threads per core for the DB
-- instance class of the DB instance when the DB snapshot was created.
dBSnapshot_processorFeatures :: Lens.Lens' DBSnapshot (Prelude.Maybe [ProcessorFeature])
dBSnapshot_processorFeatures = Lens.lens (\DBSnapshot' {processorFeatures} -> processorFeatures) (\s@DBSnapshot' {} a -> s {processorFeatures = a} :: DBSnapshot) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the port that the database engine was listening on at the time
-- of the snapshot.
dBSnapshot_port :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Int)
dBSnapshot_port = Lens.lens (\DBSnapshot' {port} -> port) (\s@DBSnapshot' {} a -> s {port = a} :: DBSnapshot)

-- | The percentage of the estimated data that has been transferred.
dBSnapshot_percentProgress :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Int)
dBSnapshot_percentProgress = Lens.lens (\DBSnapshot' {percentProgress} -> percentProgress) (\s@DBSnapshot' {} a -> s {percentProgress = a} :: DBSnapshot)

-- | Specifies the name of the database engine.
dBSnapshot_engine :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_engine = Lens.lens (\DBSnapshot' {engine} -> engine) (\s@DBSnapshot' {} a -> s {engine = a} :: DBSnapshot)

-- | The ARN from the key store with which to associate the instance for TDE
-- encryption.
dBSnapshot_tdeCredentialArn :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_tdeCredentialArn = Lens.lens (\DBSnapshot' {tdeCredentialArn} -> tdeCredentialArn) (\s@DBSnapshot' {} a -> s {tdeCredentialArn = a} :: DBSnapshot)

-- | The time zone of the DB snapshot. In most cases, the @Timezone@ element
-- is empty. @Timezone@ content appears only for snapshots taken from
-- Microsoft SQL Server DB instances that were created with a time zone
-- specified.
dBSnapshot_timezone :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_timezone = Lens.lens (\DBSnapshot' {timezone} -> timezone) (\s@DBSnapshot' {} a -> s {timezone = a} :: DBSnapshot)

-- | Undocumented member.
dBSnapshot_tagList :: Lens.Lens' DBSnapshot (Prelude.Maybe [Tag])
dBSnapshot_tagList = Lens.lens (\DBSnapshot' {tagList} -> tagList) (\s@DBSnapshot' {} a -> s {tagList = a} :: DBSnapshot) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides the VPC ID associated with the DB snapshot.
dBSnapshot_vpcId :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_vpcId = Lens.lens (\DBSnapshot' {vpcId} -> vpcId) (\s@DBSnapshot' {} a -> s {vpcId = a} :: DBSnapshot)

-- | Specifies the allocated storage size in gibibytes (GiB).
dBSnapshot_allocatedStorage :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Int)
dBSnapshot_allocatedStorage = Lens.lens (\DBSnapshot' {allocatedStorage} -> allocatedStorage) (\s@DBSnapshot' {} a -> s {allocatedStorage = a} :: DBSnapshot)

-- | The AWS Region that the DB snapshot was created in or copied from.
dBSnapshot_sourceRegion :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Text)
dBSnapshot_sourceRegion = Lens.lens (\DBSnapshot' {sourceRegion} -> sourceRegion) (\s@DBSnapshot' {} a -> s {sourceRegion = a} :: DBSnapshot)

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
dBSnapshot_iAMDatabaseAuthenticationEnabled :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Bool)
dBSnapshot_iAMDatabaseAuthenticationEnabled = Lens.lens (\DBSnapshot' {iAMDatabaseAuthenticationEnabled} -> iAMDatabaseAuthenticationEnabled) (\s@DBSnapshot' {} a -> s {iAMDatabaseAuthenticationEnabled = a} :: DBSnapshot)

-- | Specifies the Provisioned IOPS (I\/O operations per second) value of the
-- DB instance at the time of the snapshot.
dBSnapshot_iops :: Lens.Lens' DBSnapshot (Prelude.Maybe Prelude.Int)
dBSnapshot_iops = Lens.lens (\DBSnapshot' {iops} -> iops) (\s@DBSnapshot' {} a -> s {iops = a} :: DBSnapshot)

instance Prelude.FromXML DBSnapshot where
  parseXML x =
    DBSnapshot'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "StorageType")
      Prelude.<*> (x Prelude..@? "DBSnapshotIdentifier")
      Prelude.<*> (x Prelude..@? "Encrypted")
      Prelude.<*> (x Prelude..@? "OptionGroupName")
      Prelude.<*> (x Prelude..@? "InstanceCreateTime")
      Prelude.<*> (x Prelude..@? "DbiResourceId")
      Prelude.<*> (x Prelude..@? "SnapshotCreateTime")
      Prelude.<*> (x Prelude..@? "MasterUsername")
      Prelude.<*> (x Prelude..@? "KmsKeyId")
      Prelude.<*> (x Prelude..@? "AvailabilityZone")
      Prelude.<*> (x Prelude..@? "DBSnapshotArn")
      Prelude.<*> (x Prelude..@? "EngineVersion")
      Prelude.<*> (x Prelude..@? "SnapshotType")
      Prelude.<*> (x Prelude..@? "SourceDBSnapshotIdentifier")
      Prelude.<*> (x Prelude..@? "LicenseModel")
      Prelude.<*> (x Prelude..@? "DBInstanceIdentifier")
      Prelude.<*> ( x Prelude..@? "ProcessorFeatures"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "ProcessorFeature")
                  )
      Prelude.<*> (x Prelude..@? "Port")
      Prelude.<*> (x Prelude..@? "PercentProgress")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> (x Prelude..@? "TdeCredentialArn")
      Prelude.<*> (x Prelude..@? "Timezone")
      Prelude.<*> ( x Prelude..@? "TagList" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "Tag")
                  )
      Prelude.<*> (x Prelude..@? "VpcId")
      Prelude.<*> (x Prelude..@? "AllocatedStorage")
      Prelude.<*> (x Prelude..@? "SourceRegion")
      Prelude.<*> (x Prelude..@? "IAMDatabaseAuthenticationEnabled")
      Prelude.<*> (x Prelude..@? "Iops")

instance Prelude.Hashable DBSnapshot

instance Prelude.NFData DBSnapshot

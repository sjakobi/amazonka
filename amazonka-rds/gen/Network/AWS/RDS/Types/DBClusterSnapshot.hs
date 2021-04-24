{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterSnapshot where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.Tag

-- | Contains the details for an Amazon RDS DB cluster snapshot
--
--
-- This data type is used as a response element in the @DescribeDBClusterSnapshots@ action.
--
--
-- /See:/ 'dbClusterSnapshot' smart constructor.
data DBClusterSnapshot = DBClusterSnapshot'
  { _dcsStorageEncrypted ::
      !(Maybe Bool),
    _dcsStatus :: !(Maybe Text),
    _dcsAvailabilityZones ::
      !(Maybe [Text]),
    _dcsClusterCreateTime ::
      !(Maybe ISO8601),
    _dcsSnapshotCreateTime ::
      !(Maybe ISO8601),
    _dcsEngineMode :: !(Maybe Text),
    _dcsMasterUsername :: !(Maybe Text),
    _dcsKMSKeyId :: !(Maybe Text),
    _dcsDBClusterIdentifier ::
      !(Maybe Text),
    _dcsEngineVersion :: !(Maybe Text),
    _dcsSnapshotType :: !(Maybe Text),
    _dcsLicenseModel :: !(Maybe Text),
    _dcsPort :: !(Maybe Int),
    _dcsPercentProgress :: !(Maybe Int),
    _dcsEngine :: !(Maybe Text),
    _dcsDBClusterSnapshotIdentifier ::
      !(Maybe Text),
    _dcsSourceDBClusterSnapshotARN ::
      !(Maybe Text),
    _dcsTagList :: !(Maybe [Tag]),
    _dcsVPCId :: !(Maybe Text),
    _dcsAllocatedStorage ::
      !(Maybe Int),
    _dcsIAMDatabaseAuthenticationEnabled ::
      !(Maybe Bool),
    _dcsDBClusterSnapshotARN ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DBClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsStorageEncrypted' - Specifies whether the DB cluster snapshot is encrypted.
--
-- * 'dcsStatus' - Specifies the status of this DB cluster snapshot.
--
-- * 'dcsAvailabilityZones' - Provides the list of Availability Zones (AZs) where instances in the DB cluster snapshot can be restored.
--
-- * 'dcsClusterCreateTime' - Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).
--
-- * 'dcsSnapshotCreateTime' - Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).
--
-- * 'dcsEngineMode' - Provides the engine mode of the database engine for this DB cluster snapshot.
--
-- * 'dcsMasterUsername' - Provides the master username for this DB cluster snapshot.
--
-- * 'dcsKMSKeyId' - If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB cluster snapshot. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
--
-- * 'dcsDBClusterIdentifier' - Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.
--
-- * 'dcsEngineVersion' - Provides the version of the database engine for this DB cluster snapshot.
--
-- * 'dcsSnapshotType' - Provides the type of the DB cluster snapshot.
--
-- * 'dcsLicenseModel' - Provides the license model information for this DB cluster snapshot.
--
-- * 'dcsPort' - Specifies the port that the DB cluster was listening on at the time of the snapshot.
--
-- * 'dcsPercentProgress' - Specifies the percentage of the estimated data that has been transferred.
--
-- * 'dcsEngine' - Specifies the name of the database engine for this DB cluster snapshot.
--
-- * 'dcsDBClusterSnapshotIdentifier' - Specifies the identifier for the DB cluster snapshot.
--
-- * 'dcsSourceDBClusterSnapshotARN' - If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.
--
-- * 'dcsTagList' - Undocumented member.
--
-- * 'dcsVPCId' - Provides the VPC ID associated with the DB cluster snapshot.
--
-- * 'dcsAllocatedStorage' - Specifies the allocated storage size in gibibytes (GiB).
--
-- * 'dcsIAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
--
-- * 'dcsDBClusterSnapshotARN' - The Amazon Resource Name (ARN) for the DB cluster snapshot.
dbClusterSnapshot ::
  DBClusterSnapshot
dbClusterSnapshot =
  DBClusterSnapshot'
    { _dcsStorageEncrypted = Nothing,
      _dcsStatus = Nothing,
      _dcsAvailabilityZones = Nothing,
      _dcsClusterCreateTime = Nothing,
      _dcsSnapshotCreateTime = Nothing,
      _dcsEngineMode = Nothing,
      _dcsMasterUsername = Nothing,
      _dcsKMSKeyId = Nothing,
      _dcsDBClusterIdentifier = Nothing,
      _dcsEngineVersion = Nothing,
      _dcsSnapshotType = Nothing,
      _dcsLicenseModel = Nothing,
      _dcsPort = Nothing,
      _dcsPercentProgress = Nothing,
      _dcsEngine = Nothing,
      _dcsDBClusterSnapshotIdentifier = Nothing,
      _dcsSourceDBClusterSnapshotARN = Nothing,
      _dcsTagList = Nothing,
      _dcsVPCId = Nothing,
      _dcsAllocatedStorage = Nothing,
      _dcsIAMDatabaseAuthenticationEnabled = Nothing,
      _dcsDBClusterSnapshotARN = Nothing
    }

-- | Specifies whether the DB cluster snapshot is encrypted.
dcsStorageEncrypted :: Lens' DBClusterSnapshot (Maybe Bool)
dcsStorageEncrypted = lens _dcsStorageEncrypted (\s a -> s {_dcsStorageEncrypted = a})

-- | Specifies the status of this DB cluster snapshot.
dcsStatus :: Lens' DBClusterSnapshot (Maybe Text)
dcsStatus = lens _dcsStatus (\s a -> s {_dcsStatus = a})

-- | Provides the list of Availability Zones (AZs) where instances in the DB cluster snapshot can be restored.
dcsAvailabilityZones :: Lens' DBClusterSnapshot [Text]
dcsAvailabilityZones = lens _dcsAvailabilityZones (\s a -> s {_dcsAvailabilityZones = a}) . _Default . _Coerce

-- | Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).
dcsClusterCreateTime :: Lens' DBClusterSnapshot (Maybe UTCTime)
dcsClusterCreateTime = lens _dcsClusterCreateTime (\s a -> s {_dcsClusterCreateTime = a}) . mapping _Time

-- | Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).
dcsSnapshotCreateTime :: Lens' DBClusterSnapshot (Maybe UTCTime)
dcsSnapshotCreateTime = lens _dcsSnapshotCreateTime (\s a -> s {_dcsSnapshotCreateTime = a}) . mapping _Time

-- | Provides the engine mode of the database engine for this DB cluster snapshot.
dcsEngineMode :: Lens' DBClusterSnapshot (Maybe Text)
dcsEngineMode = lens _dcsEngineMode (\s a -> s {_dcsEngineMode = a})

-- | Provides the master username for this DB cluster snapshot.
dcsMasterUsername :: Lens' DBClusterSnapshot (Maybe Text)
dcsMasterUsername = lens _dcsMasterUsername (\s a -> s {_dcsMasterUsername = a})

-- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the encrypted DB cluster snapshot. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
dcsKMSKeyId :: Lens' DBClusterSnapshot (Maybe Text)
dcsKMSKeyId = lens _dcsKMSKeyId (\s a -> s {_dcsKMSKeyId = a})

-- | Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.
dcsDBClusterIdentifier :: Lens' DBClusterSnapshot (Maybe Text)
dcsDBClusterIdentifier = lens _dcsDBClusterIdentifier (\s a -> s {_dcsDBClusterIdentifier = a})

-- | Provides the version of the database engine for this DB cluster snapshot.
dcsEngineVersion :: Lens' DBClusterSnapshot (Maybe Text)
dcsEngineVersion = lens _dcsEngineVersion (\s a -> s {_dcsEngineVersion = a})

-- | Provides the type of the DB cluster snapshot.
dcsSnapshotType :: Lens' DBClusterSnapshot (Maybe Text)
dcsSnapshotType = lens _dcsSnapshotType (\s a -> s {_dcsSnapshotType = a})

-- | Provides the license model information for this DB cluster snapshot.
dcsLicenseModel :: Lens' DBClusterSnapshot (Maybe Text)
dcsLicenseModel = lens _dcsLicenseModel (\s a -> s {_dcsLicenseModel = a})

-- | Specifies the port that the DB cluster was listening on at the time of the snapshot.
dcsPort :: Lens' DBClusterSnapshot (Maybe Int)
dcsPort = lens _dcsPort (\s a -> s {_dcsPort = a})

-- | Specifies the percentage of the estimated data that has been transferred.
dcsPercentProgress :: Lens' DBClusterSnapshot (Maybe Int)
dcsPercentProgress = lens _dcsPercentProgress (\s a -> s {_dcsPercentProgress = a})

-- | Specifies the name of the database engine for this DB cluster snapshot.
dcsEngine :: Lens' DBClusterSnapshot (Maybe Text)
dcsEngine = lens _dcsEngine (\s a -> s {_dcsEngine = a})

-- | Specifies the identifier for the DB cluster snapshot.
dcsDBClusterSnapshotIdentifier :: Lens' DBClusterSnapshot (Maybe Text)
dcsDBClusterSnapshotIdentifier = lens _dcsDBClusterSnapshotIdentifier (\s a -> s {_dcsDBClusterSnapshotIdentifier = a})

-- | If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.
dcsSourceDBClusterSnapshotARN :: Lens' DBClusterSnapshot (Maybe Text)
dcsSourceDBClusterSnapshotARN = lens _dcsSourceDBClusterSnapshotARN (\s a -> s {_dcsSourceDBClusterSnapshotARN = a})

-- | Undocumented member.
dcsTagList :: Lens' DBClusterSnapshot [Tag]
dcsTagList = lens _dcsTagList (\s a -> s {_dcsTagList = a}) . _Default . _Coerce

-- | Provides the VPC ID associated with the DB cluster snapshot.
dcsVPCId :: Lens' DBClusterSnapshot (Maybe Text)
dcsVPCId = lens _dcsVPCId (\s a -> s {_dcsVPCId = a})

-- | Specifies the allocated storage size in gibibytes (GiB).
dcsAllocatedStorage :: Lens' DBClusterSnapshot (Maybe Int)
dcsAllocatedStorage = lens _dcsAllocatedStorage (\s a -> s {_dcsAllocatedStorage = a})

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.
dcsIAMDatabaseAuthenticationEnabled :: Lens' DBClusterSnapshot (Maybe Bool)
dcsIAMDatabaseAuthenticationEnabled = lens _dcsIAMDatabaseAuthenticationEnabled (\s a -> s {_dcsIAMDatabaseAuthenticationEnabled = a})

-- | The Amazon Resource Name (ARN) for the DB cluster snapshot.
dcsDBClusterSnapshotARN :: Lens' DBClusterSnapshot (Maybe Text)
dcsDBClusterSnapshotARN = lens _dcsDBClusterSnapshotARN (\s a -> s {_dcsDBClusterSnapshotARN = a})

instance FromXML DBClusterSnapshot where
  parseXML x =
    DBClusterSnapshot'
      <$> (x .@? "StorageEncrypted")
      <*> (x .@? "Status")
      <*> ( x .@? "AvailabilityZones" .!@ mempty
              >>= may (parseXMLList "AvailabilityZone")
          )
      <*> (x .@? "ClusterCreateTime")
      <*> (x .@? "SnapshotCreateTime")
      <*> (x .@? "EngineMode")
      <*> (x .@? "MasterUsername")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "DBClusterIdentifier")
      <*> (x .@? "EngineVersion")
      <*> (x .@? "SnapshotType")
      <*> (x .@? "LicenseModel")
      <*> (x .@? "Port")
      <*> (x .@? "PercentProgress")
      <*> (x .@? "Engine")
      <*> (x .@? "DBClusterSnapshotIdentifier")
      <*> (x .@? "SourceDBClusterSnapshotArn")
      <*> ( x .@? "TagList" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "VpcId")
      <*> (x .@? "AllocatedStorage")
      <*> (x .@? "IAMDatabaseAuthenticationEnabled")
      <*> (x .@? "DBClusterSnapshotArn")

instance Hashable DBClusterSnapshot

instance NFData DBClusterSnapshot

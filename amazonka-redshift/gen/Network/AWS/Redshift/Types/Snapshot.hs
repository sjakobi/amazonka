{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.Snapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.Snapshot where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.AccountWithRestoreAccess
import Network.AWS.Redshift.Types.Tag

-- | Describes a snapshot.
--
--
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot = Snapshot'
  { _sEnhancedVPCRouting ::
      !(Maybe Bool),
    _sSnapshotIdentifier :: !(Maybe Text),
    _sStatus :: !(Maybe Text),
    _sEstimatedSecondsToCompletion :: !(Maybe Integer),
    _sEncrypted :: !(Maybe Bool),
    _sClusterCreateTime :: !(Maybe ISO8601),
    _sManualSnapshotRemainingDays :: !(Maybe Int),
    _sSnapshotCreateTime :: !(Maybe ISO8601),
    _sCurrentBackupRateInMegaBytesPerSecond ::
      !(Maybe Double),
    _sMasterUsername :: !(Maybe Text),
    _sEncryptedWithHSM :: !(Maybe Bool),
    _sManualSnapshotRetentionPeriod :: !(Maybe Int),
    _sKMSKeyId :: !(Maybe Text),
    _sEngineFullVersion :: !(Maybe Text),
    _sAvailabilityZone :: !(Maybe Text),
    _sRestorableNodeTypes :: !(Maybe [Text]),
    _sSnapshotType :: !(Maybe Text),
    _sAccountsWithRestoreAccess ::
      !(Maybe [AccountWithRestoreAccess]),
    _sActualIncrementalBackupSizeInMegaBytes ::
      !(Maybe Double),
    _sClusterIdentifier :: !(Maybe Text),
    _sTags :: !(Maybe [Tag]),
    _sNumberOfNodes :: !(Maybe Int),
    _sPort :: !(Maybe Int),
    _sTotalBackupSizeInMegaBytes :: !(Maybe Double),
    _sDBName :: !(Maybe Text),
    _sBackupProgressInMegaBytes :: !(Maybe Double),
    _sElapsedTimeInSeconds :: !(Maybe Integer),
    _sNodeType :: !(Maybe Text),
    _sOwnerAccount :: !(Maybe Text),
    _sClusterVersion :: !(Maybe Text),
    _sVPCId :: !(Maybe Text),
    _sSourceRegion :: !(Maybe Text),
    _sSnapshotRetentionStartTime :: !(Maybe ISO8601),
    _sMaintenanceTrackName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEnhancedVPCRouting' - An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
--
-- * 'sSnapshotIdentifier' - The snapshot identifier that is provided in the request.
--
-- * 'sStatus' - The snapshot status. The value of the status depends on the API operation used:      * 'CreateClusterSnapshot' and 'CopyClusterSnapshot' returns status as "creating".      * 'DescribeClusterSnapshots' returns status as "creating", "available", "final snapshot", or "failed".     * 'DeleteClusterSnapshot' returns status as "deleted".
--
-- * 'sEstimatedSecondsToCompletion' - The estimate of the time remaining before the snapshot backup will complete. Returns @0@ for a completed backup.
--
-- * 'sEncrypted' - If @true@ , the data in the snapshot is encrypted at rest.
--
-- * 'sClusterCreateTime' - The time (UTC) when the cluster was originally created.
--
-- * 'sManualSnapshotRemainingDays' - The number of days until a manual snapshot will pass its retention period.
--
-- * 'sSnapshotCreateTime' - The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a copy of the cluster data as of this exact time.
--
-- * 'sCurrentBackupRateInMegaBytesPerSecond' - The number of megabytes per second being transferred to the snapshot backup. Returns @0@ for a completed backup.
--
-- * 'sMasterUsername' - The master user name for the cluster.
--
-- * 'sEncryptedWithHSM' - A boolean that indicates whether the snapshot data is encrypted using the HSM keys of the source cluster. @true@ indicates that the data is encrypted using HSM keys.
--
-- * 'sManualSnapshotRetentionPeriod' - The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653.
--
-- * 'sKMSKeyId' - The AWS Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
--
-- * 'sEngineFullVersion' - The cluster version of the cluster used to create the snapshot. For example, 1.0.15503.
--
-- * 'sAvailabilityZone' - The Availability Zone in which the cluster was created.
--
-- * 'sRestorableNodeTypes' - The list of node types that this cluster snapshot is able to restore into.
--
-- * 'sSnapshotType' - The snapshot type. Snapshots created using 'CreateClusterSnapshot' and 'CopyClusterSnapshot' are of type "manual".
--
-- * 'sAccountsWithRestoreAccess' - A list of the AWS customer accounts authorized to restore the snapshot. Returns @null@ if no accounts are authorized. Visible only to the snapshot owner.
--
-- * 'sActualIncrementalBackupSizeInMegaBytes' - The size of the incremental backup.
--
-- * 'sClusterIdentifier' - The identifier of the cluster for which the snapshot was taken.
--
-- * 'sTags' - The list of tags for the cluster snapshot.
--
-- * 'sNumberOfNodes' - The number of nodes in the cluster.
--
-- * 'sPort' - The port that the cluster is listening on.
--
-- * 'sTotalBackupSizeInMegaBytes' - The size of the complete set of backup data that would be used to restore the cluster.
--
-- * 'sDBName' - The name of the database that was created when the cluster was created.
--
-- * 'sBackupProgressInMegaBytes' - The number of megabytes that have been transferred to the snapshot backup.
--
-- * 'sElapsedTimeInSeconds' - The amount of time an in-progress snapshot backup has been running, or the amount of time it took a completed backup to finish.
--
-- * 'sNodeType' - The node type of the nodes in the cluster.
--
-- * 'sOwnerAccount' - For manual snapshots, the AWS customer account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
--
-- * 'sClusterVersion' - The version ID of the Amazon Redshift engine that is running on the cluster.
--
-- * 'sVPCId' - The VPC identifier of the cluster if the snapshot is from a cluster in a VPC. Otherwise, this field is not in the output.
--
-- * 'sSourceRegion' - The source region from which the snapshot was copied.
--
-- * 'sSnapshotRetentionStartTime' - A timestamp representing the start of the retention period for the snapshot.
--
-- * 'sMaintenanceTrackName' - The name of the maintenance track for the snapshot.
snapshot ::
  Snapshot
snapshot =
  Snapshot'
    { _sEnhancedVPCRouting = Nothing,
      _sSnapshotIdentifier = Nothing,
      _sStatus = Nothing,
      _sEstimatedSecondsToCompletion = Nothing,
      _sEncrypted = Nothing,
      _sClusterCreateTime = Nothing,
      _sManualSnapshotRemainingDays = Nothing,
      _sSnapshotCreateTime = Nothing,
      _sCurrentBackupRateInMegaBytesPerSecond = Nothing,
      _sMasterUsername = Nothing,
      _sEncryptedWithHSM = Nothing,
      _sManualSnapshotRetentionPeriod = Nothing,
      _sKMSKeyId = Nothing,
      _sEngineFullVersion = Nothing,
      _sAvailabilityZone = Nothing,
      _sRestorableNodeTypes = Nothing,
      _sSnapshotType = Nothing,
      _sAccountsWithRestoreAccess = Nothing,
      _sActualIncrementalBackupSizeInMegaBytes = Nothing,
      _sClusterIdentifier = Nothing,
      _sTags = Nothing,
      _sNumberOfNodes = Nothing,
      _sPort = Nothing,
      _sTotalBackupSizeInMegaBytes = Nothing,
      _sDBName = Nothing,
      _sBackupProgressInMegaBytes = Nothing,
      _sElapsedTimeInSeconds = Nothing,
      _sNodeType = Nothing,
      _sOwnerAccount = Nothing,
      _sClusterVersion = Nothing,
      _sVPCId = Nothing,
      _sSourceRegion = Nothing,
      _sSnapshotRetentionStartTime = Nothing,
      _sMaintenanceTrackName = Nothing
    }

-- | An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
sEnhancedVPCRouting :: Lens' Snapshot (Maybe Bool)
sEnhancedVPCRouting = lens _sEnhancedVPCRouting (\s a -> s {_sEnhancedVPCRouting = a})

-- | The snapshot identifier that is provided in the request.
sSnapshotIdentifier :: Lens' Snapshot (Maybe Text)
sSnapshotIdentifier = lens _sSnapshotIdentifier (\s a -> s {_sSnapshotIdentifier = a})

-- | The snapshot status. The value of the status depends on the API operation used:      * 'CreateClusterSnapshot' and 'CopyClusterSnapshot' returns status as "creating".      * 'DescribeClusterSnapshots' returns status as "creating", "available", "final snapshot", or "failed".     * 'DeleteClusterSnapshot' returns status as "deleted".
sStatus :: Lens' Snapshot (Maybe Text)
sStatus = lens _sStatus (\s a -> s {_sStatus = a})

-- | The estimate of the time remaining before the snapshot backup will complete. Returns @0@ for a completed backup.
sEstimatedSecondsToCompletion :: Lens' Snapshot (Maybe Integer)
sEstimatedSecondsToCompletion = lens _sEstimatedSecondsToCompletion (\s a -> s {_sEstimatedSecondsToCompletion = a})

-- | If @true@ , the data in the snapshot is encrypted at rest.
sEncrypted :: Lens' Snapshot (Maybe Bool)
sEncrypted = lens _sEncrypted (\s a -> s {_sEncrypted = a})

-- | The time (UTC) when the cluster was originally created.
sClusterCreateTime :: Lens' Snapshot (Maybe UTCTime)
sClusterCreateTime = lens _sClusterCreateTime (\s a -> s {_sClusterCreateTime = a}) . mapping _Time

-- | The number of days until a manual snapshot will pass its retention period.
sManualSnapshotRemainingDays :: Lens' Snapshot (Maybe Int)
sManualSnapshotRemainingDays = lens _sManualSnapshotRemainingDays (\s a -> s {_sManualSnapshotRemainingDays = a})

-- | The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a copy of the cluster data as of this exact time.
sSnapshotCreateTime :: Lens' Snapshot (Maybe UTCTime)
sSnapshotCreateTime = lens _sSnapshotCreateTime (\s a -> s {_sSnapshotCreateTime = a}) . mapping _Time

-- | The number of megabytes per second being transferred to the snapshot backup. Returns @0@ for a completed backup.
sCurrentBackupRateInMegaBytesPerSecond :: Lens' Snapshot (Maybe Double)
sCurrentBackupRateInMegaBytesPerSecond = lens _sCurrentBackupRateInMegaBytesPerSecond (\s a -> s {_sCurrentBackupRateInMegaBytesPerSecond = a})

-- | The master user name for the cluster.
sMasterUsername :: Lens' Snapshot (Maybe Text)
sMasterUsername = lens _sMasterUsername (\s a -> s {_sMasterUsername = a})

-- | A boolean that indicates whether the snapshot data is encrypted using the HSM keys of the source cluster. @true@ indicates that the data is encrypted using HSM keys.
sEncryptedWithHSM :: Lens' Snapshot (Maybe Bool)
sEncryptedWithHSM = lens _sEncryptedWithHSM (\s a -> s {_sEncryptedWithHSM = a})

-- | The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653.
sManualSnapshotRetentionPeriod :: Lens' Snapshot (Maybe Int)
sManualSnapshotRetentionPeriod = lens _sManualSnapshotRetentionPeriod (\s a -> s {_sManualSnapshotRetentionPeriod = a})

-- | The AWS Key Management Service (KMS) key ID of the encryption key that was used to encrypt data in the cluster from which the snapshot was taken.
sKMSKeyId :: Lens' Snapshot (Maybe Text)
sKMSKeyId = lens _sKMSKeyId (\s a -> s {_sKMSKeyId = a})

-- | The cluster version of the cluster used to create the snapshot. For example, 1.0.15503.
sEngineFullVersion :: Lens' Snapshot (Maybe Text)
sEngineFullVersion = lens _sEngineFullVersion (\s a -> s {_sEngineFullVersion = a})

-- | The Availability Zone in which the cluster was created.
sAvailabilityZone :: Lens' Snapshot (Maybe Text)
sAvailabilityZone = lens _sAvailabilityZone (\s a -> s {_sAvailabilityZone = a})

-- | The list of node types that this cluster snapshot is able to restore into.
sRestorableNodeTypes :: Lens' Snapshot [Text]
sRestorableNodeTypes = lens _sRestorableNodeTypes (\s a -> s {_sRestorableNodeTypes = a}) . _Default . _Coerce

-- | The snapshot type. Snapshots created using 'CreateClusterSnapshot' and 'CopyClusterSnapshot' are of type "manual".
sSnapshotType :: Lens' Snapshot (Maybe Text)
sSnapshotType = lens _sSnapshotType (\s a -> s {_sSnapshotType = a})

-- | A list of the AWS customer accounts authorized to restore the snapshot. Returns @null@ if no accounts are authorized. Visible only to the snapshot owner.
sAccountsWithRestoreAccess :: Lens' Snapshot [AccountWithRestoreAccess]
sAccountsWithRestoreAccess = lens _sAccountsWithRestoreAccess (\s a -> s {_sAccountsWithRestoreAccess = a}) . _Default . _Coerce

-- | The size of the incremental backup.
sActualIncrementalBackupSizeInMegaBytes :: Lens' Snapshot (Maybe Double)
sActualIncrementalBackupSizeInMegaBytes = lens _sActualIncrementalBackupSizeInMegaBytes (\s a -> s {_sActualIncrementalBackupSizeInMegaBytes = a})

-- | The identifier of the cluster for which the snapshot was taken.
sClusterIdentifier :: Lens' Snapshot (Maybe Text)
sClusterIdentifier = lens _sClusterIdentifier (\s a -> s {_sClusterIdentifier = a})

-- | The list of tags for the cluster snapshot.
sTags :: Lens' Snapshot [Tag]
sTags = lens _sTags (\s a -> s {_sTags = a}) . _Default . _Coerce

-- | The number of nodes in the cluster.
sNumberOfNodes :: Lens' Snapshot (Maybe Int)
sNumberOfNodes = lens _sNumberOfNodes (\s a -> s {_sNumberOfNodes = a})

-- | The port that the cluster is listening on.
sPort :: Lens' Snapshot (Maybe Int)
sPort = lens _sPort (\s a -> s {_sPort = a})

-- | The size of the complete set of backup data that would be used to restore the cluster.
sTotalBackupSizeInMegaBytes :: Lens' Snapshot (Maybe Double)
sTotalBackupSizeInMegaBytes = lens _sTotalBackupSizeInMegaBytes (\s a -> s {_sTotalBackupSizeInMegaBytes = a})

-- | The name of the database that was created when the cluster was created.
sDBName :: Lens' Snapshot (Maybe Text)
sDBName = lens _sDBName (\s a -> s {_sDBName = a})

-- | The number of megabytes that have been transferred to the snapshot backup.
sBackupProgressInMegaBytes :: Lens' Snapshot (Maybe Double)
sBackupProgressInMegaBytes = lens _sBackupProgressInMegaBytes (\s a -> s {_sBackupProgressInMegaBytes = a})

-- | The amount of time an in-progress snapshot backup has been running, or the amount of time it took a completed backup to finish.
sElapsedTimeInSeconds :: Lens' Snapshot (Maybe Integer)
sElapsedTimeInSeconds = lens _sElapsedTimeInSeconds (\s a -> s {_sElapsedTimeInSeconds = a})

-- | The node type of the nodes in the cluster.
sNodeType :: Lens' Snapshot (Maybe Text)
sNodeType = lens _sNodeType (\s a -> s {_sNodeType = a})

-- | For manual snapshots, the AWS customer account used to create or copy the snapshot. For automatic snapshots, the owner of the cluster. The owner can perform all snapshot actions, such as sharing a manual snapshot.
sOwnerAccount :: Lens' Snapshot (Maybe Text)
sOwnerAccount = lens _sOwnerAccount (\s a -> s {_sOwnerAccount = a})

-- | The version ID of the Amazon Redshift engine that is running on the cluster.
sClusterVersion :: Lens' Snapshot (Maybe Text)
sClusterVersion = lens _sClusterVersion (\s a -> s {_sClusterVersion = a})

-- | The VPC identifier of the cluster if the snapshot is from a cluster in a VPC. Otherwise, this field is not in the output.
sVPCId :: Lens' Snapshot (Maybe Text)
sVPCId = lens _sVPCId (\s a -> s {_sVPCId = a})

-- | The source region from which the snapshot was copied.
sSourceRegion :: Lens' Snapshot (Maybe Text)
sSourceRegion = lens _sSourceRegion (\s a -> s {_sSourceRegion = a})

-- | A timestamp representing the start of the retention period for the snapshot.
sSnapshotRetentionStartTime :: Lens' Snapshot (Maybe UTCTime)
sSnapshotRetentionStartTime = lens _sSnapshotRetentionStartTime (\s a -> s {_sSnapshotRetentionStartTime = a}) . mapping _Time

-- | The name of the maintenance track for the snapshot.
sMaintenanceTrackName :: Lens' Snapshot (Maybe Text)
sMaintenanceTrackName = lens _sMaintenanceTrackName (\s a -> s {_sMaintenanceTrackName = a})

instance FromXML Snapshot where
  parseXML x =
    Snapshot'
      <$> (x .@? "EnhancedVpcRouting")
      <*> (x .@? "SnapshotIdentifier")
      <*> (x .@? "Status")
      <*> (x .@? "EstimatedSecondsToCompletion")
      <*> (x .@? "Encrypted")
      <*> (x .@? "ClusterCreateTime")
      <*> (x .@? "ManualSnapshotRemainingDays")
      <*> (x .@? "SnapshotCreateTime")
      <*> (x .@? "CurrentBackupRateInMegaBytesPerSecond")
      <*> (x .@? "MasterUsername")
      <*> (x .@? "EncryptedWithHSM")
      <*> (x .@? "ManualSnapshotRetentionPeriod")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "EngineFullVersion")
      <*> (x .@? "AvailabilityZone")
      <*> ( x .@? "RestorableNodeTypes" .!@ mempty
              >>= may (parseXMLList "NodeType")
          )
      <*> (x .@? "SnapshotType")
      <*> ( x .@? "AccountsWithRestoreAccess" .!@ mempty
              >>= may (parseXMLList "AccountWithRestoreAccess")
          )
      <*> (x .@? "ActualIncrementalBackupSizeInMegaBytes")
      <*> (x .@? "ClusterIdentifier")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "Tag")
          )
      <*> (x .@? "NumberOfNodes")
      <*> (x .@? "Port")
      <*> (x .@? "TotalBackupSizeInMegaBytes")
      <*> (x .@? "DBName")
      <*> (x .@? "BackupProgressInMegaBytes")
      <*> (x .@? "ElapsedTimeInSeconds")
      <*> (x .@? "NodeType")
      <*> (x .@? "OwnerAccount")
      <*> (x .@? "ClusterVersion")
      <*> (x .@? "VpcId")
      <*> (x .@? "SourceRegion")
      <*> (x .@? "SnapshotRetentionStartTime")
      <*> (x .@? "MaintenanceTrackName")

instance Hashable Snapshot

instance NFData Snapshot

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Snapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Snapshot where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.SnapshotState
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a snapshot.
--
--
--
-- /See:/ 'snapshot' smart constructor.
data Snapshot = Snapshot'
  { _snaOwnerAlias ::
      !(Maybe Text),
    _snaStateMessage :: !(Maybe Text),
    _snaOutpostARN :: !(Maybe Text),
    _snaDataEncryptionKeyId :: !(Maybe Text),
    _snaKMSKeyId :: !(Maybe Text),
    _snaTags :: !(Maybe [Tag]),
    _snaSnapshotId :: !Text,
    _snaOwnerId :: !Text,
    _snaVolumeId :: !Text,
    _snaVolumeSize :: !Int,
    _snaDescription :: !Text,
    _snaStartTime :: !ISO8601,
    _snaProgress :: !Text,
    _snaState :: !SnapshotState,
    _snaEncrypted :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Snapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'snaOwnerAlias' - The AWS owner alias, from an Amazon-maintained list (@amazon@ ). This is not the user-configured AWS account alias set using the IAM console.
--
-- * 'snaStateMessage' - Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper AWS Key Management Service (AWS KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by 'DescribeSnapshots' .
--
-- * 'snaOutpostARN' - The ARN of the AWS Outpost on which the snapshot is stored. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html EBS Local Snapshot on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'snaDataEncryptionKeyId' - The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by 'DescribeSnapshots' .
--
-- * 'snaKMSKeyId' - The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the volume encryption key for the parent volume.
--
-- * 'snaTags' - Any tags assigned to the snapshot.
--
-- * 'snaSnapshotId' - The ID of the snapshot. Each snapshot receives a unique identifier when it is created.
--
-- * 'snaOwnerId' - The AWS account ID of the EBS snapshot owner.
--
-- * 'snaVolumeId' - The ID of the volume that was used to create the snapshot. Snapshots created by the 'CopySnapshot' action have an arbitrary volume ID that should not be used for any purpose.
--
-- * 'snaVolumeSize' - The size of the volume, in GiB.
--
-- * 'snaDescription' - The description for the snapshot.
--
-- * 'snaStartTime' - The time stamp when the snapshot was initiated.
--
-- * 'snaProgress' - The progress of the snapshot, as a percentage.
--
-- * 'snaState' - The snapshot state.
--
-- * 'snaEncrypted' - Indicates whether the snapshot is encrypted.
snapshot ::
  -- | 'snaSnapshotId'
  Text ->
  -- | 'snaOwnerId'
  Text ->
  -- | 'snaVolumeId'
  Text ->
  -- | 'snaVolumeSize'
  Int ->
  -- | 'snaDescription'
  Text ->
  -- | 'snaStartTime'
  UTCTime ->
  -- | 'snaProgress'
  Text ->
  -- | 'snaState'
  SnapshotState ->
  -- | 'snaEncrypted'
  Bool ->
  Snapshot
snapshot
  pSnapshotId_
  pOwnerId_
  pVolumeId_
  pVolumeSize_
  pDescription_
  pStartTime_
  pProgress_
  pState_
  pEncrypted_ =
    Snapshot'
      { _snaOwnerAlias = Nothing,
        _snaStateMessage = Nothing,
        _snaOutpostARN = Nothing,
        _snaDataEncryptionKeyId = Nothing,
        _snaKMSKeyId = Nothing,
        _snaTags = Nothing,
        _snaSnapshotId = pSnapshotId_,
        _snaOwnerId = pOwnerId_,
        _snaVolumeId = pVolumeId_,
        _snaVolumeSize = pVolumeSize_,
        _snaDescription = pDescription_,
        _snaStartTime = _Time # pStartTime_,
        _snaProgress = pProgress_,
        _snaState = pState_,
        _snaEncrypted = pEncrypted_
      }

-- | The AWS owner alias, from an Amazon-maintained list (@amazon@ ). This is not the user-configured AWS account alias set using the IAM console.
snaOwnerAlias :: Lens' Snapshot (Maybe Text)
snaOwnerAlias = lens _snaOwnerAlias (\s a -> s {_snaOwnerAlias = a})

-- | Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper AWS Key Management Service (AWS KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by 'DescribeSnapshots' .
snaStateMessage :: Lens' Snapshot (Maybe Text)
snaStateMessage = lens _snaStateMessage (\s a -> s {_snaStateMessage = a})

-- | The ARN of the AWS Outpost on which the snapshot is stored. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html EBS Local Snapshot on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
snaOutpostARN :: Lens' Snapshot (Maybe Text)
snaOutpostARN = lens _snaOutpostARN (\s a -> s {_snaOutpostARN = a})

-- | The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by 'DescribeSnapshots' .
snaDataEncryptionKeyId :: Lens' Snapshot (Maybe Text)
snaDataEncryptionKeyId = lens _snaDataEncryptionKeyId (\s a -> s {_snaDataEncryptionKeyId = a})

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the volume encryption key for the parent volume.
snaKMSKeyId :: Lens' Snapshot (Maybe Text)
snaKMSKeyId = lens _snaKMSKeyId (\s a -> s {_snaKMSKeyId = a})

-- | Any tags assigned to the snapshot.
snaTags :: Lens' Snapshot [Tag]
snaTags = lens _snaTags (\s a -> s {_snaTags = a}) . _Default . _Coerce

-- | The ID of the snapshot. Each snapshot receives a unique identifier when it is created.
snaSnapshotId :: Lens' Snapshot Text
snaSnapshotId = lens _snaSnapshotId (\s a -> s {_snaSnapshotId = a})

-- | The AWS account ID of the EBS snapshot owner.
snaOwnerId :: Lens' Snapshot Text
snaOwnerId = lens _snaOwnerId (\s a -> s {_snaOwnerId = a})

-- | The ID of the volume that was used to create the snapshot. Snapshots created by the 'CopySnapshot' action have an arbitrary volume ID that should not be used for any purpose.
snaVolumeId :: Lens' Snapshot Text
snaVolumeId = lens _snaVolumeId (\s a -> s {_snaVolumeId = a})

-- | The size of the volume, in GiB.
snaVolumeSize :: Lens' Snapshot Int
snaVolumeSize = lens _snaVolumeSize (\s a -> s {_snaVolumeSize = a})

-- | The description for the snapshot.
snaDescription :: Lens' Snapshot Text
snaDescription = lens _snaDescription (\s a -> s {_snaDescription = a})

-- | The time stamp when the snapshot was initiated.
snaStartTime :: Lens' Snapshot UTCTime
snaStartTime = lens _snaStartTime (\s a -> s {_snaStartTime = a}) . _Time

-- | The progress of the snapshot, as a percentage.
snaProgress :: Lens' Snapshot Text
snaProgress = lens _snaProgress (\s a -> s {_snaProgress = a})

-- | The snapshot state.
snaState :: Lens' Snapshot SnapshotState
snaState = lens _snaState (\s a -> s {_snaState = a})

-- | Indicates whether the snapshot is encrypted.
snaEncrypted :: Lens' Snapshot Bool
snaEncrypted = lens _snaEncrypted (\s a -> s {_snaEncrypted = a})

instance FromXML Snapshot where
  parseXML x =
    Snapshot'
      <$> (x .@? "ownerAlias")
      <*> (x .@? "statusMessage")
      <*> (x .@? "outpostArn")
      <*> (x .@? "dataEncryptionKeyId")
      <*> (x .@? "kmsKeyId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@ "snapshotId")
      <*> (x .@ "ownerId")
      <*> (x .@ "volumeId")
      <*> (x .@ "volumeSize")
      <*> (x .@ "description")
      <*> (x .@ "startTime")
      <*> (x .@ "progress")
      <*> (x .@ "status")
      <*> (x .@ "encrypted")

instance Hashable Snapshot

instance NFData Snapshot

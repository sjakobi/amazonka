{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Volume
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Volume where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.VolumeAttachment
import Network.AWS.EC2.Types.VolumeState
import Network.AWS.EC2.Types.VolumeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a volume.
--
--
--
-- /See:/ 'volume' smart constructor.
data Volume = Volume'
  { _volMultiAttachEnabled ::
      !(Maybe Bool),
    _volFastRestored :: !(Maybe Bool),
    _volOutpostARN :: !(Maybe Text),
    _volThroughput :: !(Maybe Int),
    _volKMSKeyId :: !(Maybe Text),
    _volTags :: !(Maybe [Tag]),
    _volIOPS :: !(Maybe Int),
    _volAttachments :: !(Maybe [VolumeAttachment]),
    _volAvailabilityZone :: !Text,
    _volCreateTime :: !ISO8601,
    _volEncrypted :: !Bool,
    _volSize :: !Int,
    _volSnapshotId :: !Text,
    _volState :: !VolumeState,
    _volVolumeId :: !Text,
    _volVolumeType :: !VolumeType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'volMultiAttachEnabled' - Indicates whether Amazon EBS Multi-Attach is enabled.
--
-- * 'volFastRestored' - Indicates whether the volume was created using fast snapshot restore.
--
-- * 'volOutpostARN' - The Amazon Resource Name (ARN) of the Outpost.
--
-- * 'volThroughput' - The throughput that the volume supports, in MiB/s.
--
-- * 'volKMSKeyId' - The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the volume encryption key for the volume.
--
-- * 'volTags' - Any tags assigned to the volume.
--
-- * 'volIOPS' - The number of I/O operations per second (IOPS). For @gp3@ , @io1@ , and @io2@ volumes, this represents the number of IOPS that are provisioned for the volume. For @gp2@ volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.
--
-- * 'volAttachments' - Information about the volume attachments.
--
-- * 'volAvailabilityZone' - The Availability Zone for the volume.
--
-- * 'volCreateTime' - The time stamp when volume creation was initiated.
--
-- * 'volEncrypted' - Indicates whether the volume is encrypted.
--
-- * 'volSize' - The size of the volume, in GiBs.
--
-- * 'volSnapshotId' - The snapshot from which the volume was created, if applicable.
--
-- * 'volState' - The volume state.
--
-- * 'volVolumeId' - The ID of the volume.
--
-- * 'volVolumeType' - The volume type.
volume ::
  -- | 'volAvailabilityZone'
  Text ->
  -- | 'volCreateTime'
  UTCTime ->
  -- | 'volEncrypted'
  Bool ->
  -- | 'volSize'
  Int ->
  -- | 'volSnapshotId'
  Text ->
  -- | 'volState'
  VolumeState ->
  -- | 'volVolumeId'
  Text ->
  -- | 'volVolumeType'
  VolumeType ->
  Volume
volume
  pAvailabilityZone_
  pCreateTime_
  pEncrypted_
  pSize_
  pSnapshotId_
  pState_
  pVolumeId_
  pVolumeType_ =
    Volume'
      { _volMultiAttachEnabled = Nothing,
        _volFastRestored = Nothing,
        _volOutpostARN = Nothing,
        _volThroughput = Nothing,
        _volKMSKeyId = Nothing,
        _volTags = Nothing,
        _volIOPS = Nothing,
        _volAttachments = Nothing,
        _volAvailabilityZone = pAvailabilityZone_,
        _volCreateTime = _Time # pCreateTime_,
        _volEncrypted = pEncrypted_,
        _volSize = pSize_,
        _volSnapshotId = pSnapshotId_,
        _volState = pState_,
        _volVolumeId = pVolumeId_,
        _volVolumeType = pVolumeType_
      }

-- | Indicates whether Amazon EBS Multi-Attach is enabled.
volMultiAttachEnabled :: Lens' Volume (Maybe Bool)
volMultiAttachEnabled = lens _volMultiAttachEnabled (\s a -> s {_volMultiAttachEnabled = a})

-- | Indicates whether the volume was created using fast snapshot restore.
volFastRestored :: Lens' Volume (Maybe Bool)
volFastRestored = lens _volFastRestored (\s a -> s {_volFastRestored = a})

-- | The Amazon Resource Name (ARN) of the Outpost.
volOutpostARN :: Lens' Volume (Maybe Text)
volOutpostARN = lens _volOutpostARN (\s a -> s {_volOutpostARN = a})

-- | The throughput that the volume supports, in MiB/s.
volThroughput :: Lens' Volume (Maybe Int)
volThroughput = lens _volThroughput (\s a -> s {_volThroughput = a})

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the volume encryption key for the volume.
volKMSKeyId :: Lens' Volume (Maybe Text)
volKMSKeyId = lens _volKMSKeyId (\s a -> s {_volKMSKeyId = a})

-- | Any tags assigned to the volume.
volTags :: Lens' Volume [Tag]
volTags = lens _volTags (\s a -> s {_volTags = a}) . _Default . _Coerce

-- | The number of I/O operations per second (IOPS). For @gp3@ , @io1@ , and @io2@ volumes, this represents the number of IOPS that are provisioned for the volume. For @gp2@ volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.
volIOPS :: Lens' Volume (Maybe Int)
volIOPS = lens _volIOPS (\s a -> s {_volIOPS = a})

-- | Information about the volume attachments.
volAttachments :: Lens' Volume [VolumeAttachment]
volAttachments = lens _volAttachments (\s a -> s {_volAttachments = a}) . _Default . _Coerce

-- | The Availability Zone for the volume.
volAvailabilityZone :: Lens' Volume Text
volAvailabilityZone = lens _volAvailabilityZone (\s a -> s {_volAvailabilityZone = a})

-- | The time stamp when volume creation was initiated.
volCreateTime :: Lens' Volume UTCTime
volCreateTime = lens _volCreateTime (\s a -> s {_volCreateTime = a}) . _Time

-- | Indicates whether the volume is encrypted.
volEncrypted :: Lens' Volume Bool
volEncrypted = lens _volEncrypted (\s a -> s {_volEncrypted = a})

-- | The size of the volume, in GiBs.
volSize :: Lens' Volume Int
volSize = lens _volSize (\s a -> s {_volSize = a})

-- | The snapshot from which the volume was created, if applicable.
volSnapshotId :: Lens' Volume Text
volSnapshotId = lens _volSnapshotId (\s a -> s {_volSnapshotId = a})

-- | The volume state.
volState :: Lens' Volume VolumeState
volState = lens _volState (\s a -> s {_volState = a})

-- | The ID of the volume.
volVolumeId :: Lens' Volume Text
volVolumeId = lens _volVolumeId (\s a -> s {_volVolumeId = a})

-- | The volume type.
volVolumeType :: Lens' Volume VolumeType
volVolumeType = lens _volVolumeType (\s a -> s {_volVolumeType = a})

instance FromXML Volume where
  parseXML x =
    Volume'
      <$> (x .@? "multiAttachEnabled")
      <*> (x .@? "fastRestored")
      <*> (x .@? "outpostArn")
      <*> (x .@? "throughput")
      <*> (x .@? "kmsKeyId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "iops")
      <*> ( x .@? "attachmentSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@ "availabilityZone")
      <*> (x .@ "createTime")
      <*> (x .@ "encrypted")
      <*> (x .@ "size")
      <*> (x .@ "snapshotId")
      <*> (x .@ "status")
      <*> (x .@ "volumeId")
      <*> (x .@ "volumeType")

instance Hashable Volume

instance NFData Volume

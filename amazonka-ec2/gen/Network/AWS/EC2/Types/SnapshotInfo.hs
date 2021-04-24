{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SnapshotInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SnapshotInfo where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.SnapshotState
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a snapshot.
--
--
--
-- /See:/ 'snapshotInfo' smart constructor.
data SnapshotInfo = SnapshotInfo'
  { _siOwnerId ::
      !(Maybe Text),
    _siEncrypted :: !(Maybe Bool),
    _siOutpostARN :: !(Maybe Text),
    _siStartTime :: !(Maybe ISO8601),
    _siVolumeId :: !(Maybe Text),
    _siState :: !(Maybe SnapshotState),
    _siSnapshotId :: !(Maybe Text),
    _siTags :: !(Maybe [Tag]),
    _siDescription :: !(Maybe Text),
    _siProgress :: !(Maybe Text),
    _siVolumeSize :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SnapshotInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siOwnerId' - Account id used when creating this snapshot.
--
-- * 'siEncrypted' - Indicates whether the snapshot is encrypted.
--
-- * 'siOutpostARN' - The ARN of the AWS Outpost on which the snapshot is stored. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html EBS Local Snapshot on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'siStartTime' - Time this snapshot was started. This is the same for all snapshots initiated by the same request.
--
-- * 'siVolumeId' - Source volume from which this snapshot was created.
--
-- * 'siState' - Current state of the snapshot.
--
-- * 'siSnapshotId' - Snapshot id that can be used to describe this snapshot.
--
-- * 'siTags' - Tags associated with this snapshot.
--
-- * 'siDescription' - Description specified by the CreateSnapshotRequest that has been applied to all snapshots.
--
-- * 'siProgress' - Progress this snapshot has made towards completing.
--
-- * 'siVolumeSize' - Size of the volume from which this snapshot was created.
snapshotInfo ::
  SnapshotInfo
snapshotInfo =
  SnapshotInfo'
    { _siOwnerId = Nothing,
      _siEncrypted = Nothing,
      _siOutpostARN = Nothing,
      _siStartTime = Nothing,
      _siVolumeId = Nothing,
      _siState = Nothing,
      _siSnapshotId = Nothing,
      _siTags = Nothing,
      _siDescription = Nothing,
      _siProgress = Nothing,
      _siVolumeSize = Nothing
    }

-- | Account id used when creating this snapshot.
siOwnerId :: Lens' SnapshotInfo (Maybe Text)
siOwnerId = lens _siOwnerId (\s a -> s {_siOwnerId = a})

-- | Indicates whether the snapshot is encrypted.
siEncrypted :: Lens' SnapshotInfo (Maybe Bool)
siEncrypted = lens _siEncrypted (\s a -> s {_siEncrypted = a})

-- | The ARN of the AWS Outpost on which the snapshot is stored. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html EBS Local Snapshot on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
siOutpostARN :: Lens' SnapshotInfo (Maybe Text)
siOutpostARN = lens _siOutpostARN (\s a -> s {_siOutpostARN = a})

-- | Time this snapshot was started. This is the same for all snapshots initiated by the same request.
siStartTime :: Lens' SnapshotInfo (Maybe UTCTime)
siStartTime = lens _siStartTime (\s a -> s {_siStartTime = a}) . mapping _Time

-- | Source volume from which this snapshot was created.
siVolumeId :: Lens' SnapshotInfo (Maybe Text)
siVolumeId = lens _siVolumeId (\s a -> s {_siVolumeId = a})

-- | Current state of the snapshot.
siState :: Lens' SnapshotInfo (Maybe SnapshotState)
siState = lens _siState (\s a -> s {_siState = a})

-- | Snapshot id that can be used to describe this snapshot.
siSnapshotId :: Lens' SnapshotInfo (Maybe Text)
siSnapshotId = lens _siSnapshotId (\s a -> s {_siSnapshotId = a})

-- | Tags associated with this snapshot.
siTags :: Lens' SnapshotInfo [Tag]
siTags = lens _siTags (\s a -> s {_siTags = a}) . _Default . _Coerce

-- | Description specified by the CreateSnapshotRequest that has been applied to all snapshots.
siDescription :: Lens' SnapshotInfo (Maybe Text)
siDescription = lens _siDescription (\s a -> s {_siDescription = a})

-- | Progress this snapshot has made towards completing.
siProgress :: Lens' SnapshotInfo (Maybe Text)
siProgress = lens _siProgress (\s a -> s {_siProgress = a})

-- | Size of the volume from which this snapshot was created.
siVolumeSize :: Lens' SnapshotInfo (Maybe Int)
siVolumeSize = lens _siVolumeSize (\s a -> s {_siVolumeSize = a})

instance FromXML SnapshotInfo where
  parseXML x =
    SnapshotInfo'
      <$> (x .@? "ownerId")
      <*> (x .@? "encrypted")
      <*> (x .@? "outpostArn")
      <*> (x .@? "startTime")
      <*> (x .@? "volumeId")
      <*> (x .@? "state")
      <*> (x .@? "snapshotId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "description")
      <*> (x .@? "progress")
      <*> (x .@? "volumeSize")

instance Hashable SnapshotInfo

instance NFData SnapshotInfo

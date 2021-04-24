{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SnapshotTaskDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SnapshotTaskDetail where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.UserBucketDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the import snapshot task.
--
--
--
-- /See:/ 'snapshotTaskDetail' smart constructor.
data SnapshotTaskDetail = SnapshotTaskDetail'
  { _stdDiskImageSize ::
      !(Maybe Double),
    _stdStatusMessage ::
      !(Maybe Text),
    _stdStatus :: !(Maybe Text),
    _stdEncrypted :: !(Maybe Bool),
    _stdFormat :: !(Maybe Text),
    _stdUserBucket ::
      !(Maybe UserBucketDetails),
    _stdKMSKeyId :: !(Maybe Text),
    _stdSnapshotId :: !(Maybe Text),
    _stdDescription :: !(Maybe Text),
    _stdURL :: !(Maybe Text),
    _stdProgress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SnapshotTaskDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stdDiskImageSize' - The size of the disk in the snapshot, in GiB.
--
-- * 'stdStatusMessage' - A detailed status message for the import snapshot task.
--
-- * 'stdStatus' - A brief status for the import snapshot task.
--
-- * 'stdEncrypted' - Indicates whether the snapshot is encrypted.
--
-- * 'stdFormat' - The format of the disk image from which the snapshot is created.
--
-- * 'stdUserBucket' - The Amazon S3 bucket for the disk image.
--
-- * 'stdKMSKeyId' - The identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to create the encrypted snapshot.
--
-- * 'stdSnapshotId' - The snapshot ID of the disk being imported.
--
-- * 'stdDescription' - The description of the snapshot.
--
-- * 'stdURL' - The URL of the disk image from which the snapshot is created.
--
-- * 'stdProgress' - The percentage of completion for the import snapshot task.
snapshotTaskDetail ::
  SnapshotTaskDetail
snapshotTaskDetail =
  SnapshotTaskDetail'
    { _stdDiskImageSize = Nothing,
      _stdStatusMessage = Nothing,
      _stdStatus = Nothing,
      _stdEncrypted = Nothing,
      _stdFormat = Nothing,
      _stdUserBucket = Nothing,
      _stdKMSKeyId = Nothing,
      _stdSnapshotId = Nothing,
      _stdDescription = Nothing,
      _stdURL = Nothing,
      _stdProgress = Nothing
    }

-- | The size of the disk in the snapshot, in GiB.
stdDiskImageSize :: Lens' SnapshotTaskDetail (Maybe Double)
stdDiskImageSize = lens _stdDiskImageSize (\s a -> s {_stdDiskImageSize = a})

-- | A detailed status message for the import snapshot task.
stdStatusMessage :: Lens' SnapshotTaskDetail (Maybe Text)
stdStatusMessage = lens _stdStatusMessage (\s a -> s {_stdStatusMessage = a})

-- | A brief status for the import snapshot task.
stdStatus :: Lens' SnapshotTaskDetail (Maybe Text)
stdStatus = lens _stdStatus (\s a -> s {_stdStatus = a})

-- | Indicates whether the snapshot is encrypted.
stdEncrypted :: Lens' SnapshotTaskDetail (Maybe Bool)
stdEncrypted = lens _stdEncrypted (\s a -> s {_stdEncrypted = a})

-- | The format of the disk image from which the snapshot is created.
stdFormat :: Lens' SnapshotTaskDetail (Maybe Text)
stdFormat = lens _stdFormat (\s a -> s {_stdFormat = a})

-- | The Amazon S3 bucket for the disk image.
stdUserBucket :: Lens' SnapshotTaskDetail (Maybe UserBucketDetails)
stdUserBucket = lens _stdUserBucket (\s a -> s {_stdUserBucket = a})

-- | The identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to create the encrypted snapshot.
stdKMSKeyId :: Lens' SnapshotTaskDetail (Maybe Text)
stdKMSKeyId = lens _stdKMSKeyId (\s a -> s {_stdKMSKeyId = a})

-- | The snapshot ID of the disk being imported.
stdSnapshotId :: Lens' SnapshotTaskDetail (Maybe Text)
stdSnapshotId = lens _stdSnapshotId (\s a -> s {_stdSnapshotId = a})

-- | The description of the snapshot.
stdDescription :: Lens' SnapshotTaskDetail (Maybe Text)
stdDescription = lens _stdDescription (\s a -> s {_stdDescription = a})

-- | The URL of the disk image from which the snapshot is created.
stdURL :: Lens' SnapshotTaskDetail (Maybe Text)
stdURL = lens _stdURL (\s a -> s {_stdURL = a})

-- | The percentage of completion for the import snapshot task.
stdProgress :: Lens' SnapshotTaskDetail (Maybe Text)
stdProgress = lens _stdProgress (\s a -> s {_stdProgress = a})

instance FromXML SnapshotTaskDetail where
  parseXML x =
    SnapshotTaskDetail'
      <$> (x .@? "diskImageSize")
      <*> (x .@? "statusMessage")
      <*> (x .@? "status")
      <*> (x .@? "encrypted")
      <*> (x .@? "format")
      <*> (x .@? "userBucket")
      <*> (x .@? "kmsKeyId")
      <*> (x .@? "snapshotId")
      <*> (x .@? "description")
      <*> (x .@? "url")
      <*> (x .@? "progress")

instance Hashable SnapshotTaskDetail

instance NFData SnapshotTaskDetail

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateEBSBlockDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateEBSBlockDevice where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block device for an EBS volume.
--
--
--
-- /See:/ 'launchTemplateEBSBlockDevice' smart constructor.
data LaunchTemplateEBSBlockDevice = LaunchTemplateEBSBlockDevice'
  { _ltebdEncrypted ::
      !(Maybe Bool),
    _ltebdThroughput ::
      !(Maybe Int),
    _ltebdKMSKeyId ::
      !(Maybe Text),
    _ltebdDeleteOnTermination ::
      !(Maybe Bool),
    _ltebdSnapshotId ::
      !(Maybe Text),
    _ltebdVolumeType ::
      !( Maybe
           VolumeType
       ),
    _ltebdVolumeSize ::
      !(Maybe Int),
    _ltebdIOPS ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LaunchTemplateEBSBlockDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltebdEncrypted' - Indicates whether the EBS volume is encrypted.
--
-- * 'ltebdThroughput' - The throughput that the volume supports, in MiB/s.
--
-- * 'ltebdKMSKeyId' - The ARN of the AWS Key Management Service (AWS KMS) CMK used for encryption.
--
-- * 'ltebdDeleteOnTermination' - Indicates whether the EBS volume is deleted on instance termination.
--
-- * 'ltebdSnapshotId' - The ID of the snapshot.
--
-- * 'ltebdVolumeType' - The volume type.
--
-- * 'ltebdVolumeSize' - The size of the volume, in GiB.
--
-- * 'ltebdIOPS' - The number of I/O operations per second (IOPS) that the volume supports.
launchTemplateEBSBlockDevice ::
  LaunchTemplateEBSBlockDevice
launchTemplateEBSBlockDevice =
  LaunchTemplateEBSBlockDevice'
    { _ltebdEncrypted =
        Nothing,
      _ltebdThroughput = Nothing,
      _ltebdKMSKeyId = Nothing,
      _ltebdDeleteOnTermination = Nothing,
      _ltebdSnapshotId = Nothing,
      _ltebdVolumeType = Nothing,
      _ltebdVolumeSize = Nothing,
      _ltebdIOPS = Nothing
    }

-- | Indicates whether the EBS volume is encrypted.
ltebdEncrypted :: Lens' LaunchTemplateEBSBlockDevice (Maybe Bool)
ltebdEncrypted = lens _ltebdEncrypted (\s a -> s {_ltebdEncrypted = a})

-- | The throughput that the volume supports, in MiB/s.
ltebdThroughput :: Lens' LaunchTemplateEBSBlockDevice (Maybe Int)
ltebdThroughput = lens _ltebdThroughput (\s a -> s {_ltebdThroughput = a})

-- | The ARN of the AWS Key Management Service (AWS KMS) CMK used for encryption.
ltebdKMSKeyId :: Lens' LaunchTemplateEBSBlockDevice (Maybe Text)
ltebdKMSKeyId = lens _ltebdKMSKeyId (\s a -> s {_ltebdKMSKeyId = a})

-- | Indicates whether the EBS volume is deleted on instance termination.
ltebdDeleteOnTermination :: Lens' LaunchTemplateEBSBlockDevice (Maybe Bool)
ltebdDeleteOnTermination = lens _ltebdDeleteOnTermination (\s a -> s {_ltebdDeleteOnTermination = a})

-- | The ID of the snapshot.
ltebdSnapshotId :: Lens' LaunchTemplateEBSBlockDevice (Maybe Text)
ltebdSnapshotId = lens _ltebdSnapshotId (\s a -> s {_ltebdSnapshotId = a})

-- | The volume type.
ltebdVolumeType :: Lens' LaunchTemplateEBSBlockDevice (Maybe VolumeType)
ltebdVolumeType = lens _ltebdVolumeType (\s a -> s {_ltebdVolumeType = a})

-- | The size of the volume, in GiB.
ltebdVolumeSize :: Lens' LaunchTemplateEBSBlockDevice (Maybe Int)
ltebdVolumeSize = lens _ltebdVolumeSize (\s a -> s {_ltebdVolumeSize = a})

-- | The number of I/O operations per second (IOPS) that the volume supports.
ltebdIOPS :: Lens' LaunchTemplateEBSBlockDevice (Maybe Int)
ltebdIOPS = lens _ltebdIOPS (\s a -> s {_ltebdIOPS = a})

instance FromXML LaunchTemplateEBSBlockDevice where
  parseXML x =
    LaunchTemplateEBSBlockDevice'
      <$> (x .@? "encrypted")
      <*> (x .@? "throughput")
      <*> (x .@? "kmsKeyId")
      <*> (x .@? "deleteOnTermination")
      <*> (x .@? "snapshotId")
      <*> (x .@? "volumeType")
      <*> (x .@? "volumeSize")
      <*> (x .@? "iops")

instance Hashable LaunchTemplateEBSBlockDevice

instance NFData LaunchTemplateEBSBlockDevice

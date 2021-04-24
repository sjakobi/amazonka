{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.EBSBlockDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.EBSBlockDevice where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.VolumeType
import Network.AWS.Prelude

-- | Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html EbsBlockDevice> data type.
--
--
--
-- /See:/ 'ebsBlockDevice' smart constructor.
data EBSBlockDevice = EBSBlockDevice'
  { _ebdDeleteOnTermination ::
      !(Maybe Bool),
    _ebdSnapshotId :: !(Maybe Text),
    _ebdVolumeType :: !(Maybe VolumeType),
    _ebdVolumeSize :: !(Maybe Int),
    _ebdIOPS :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EBSBlockDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebdDeleteOnTermination' - Whether the volume is deleted on instance termination.
--
-- * 'ebdSnapshotId' - The snapshot ID.
--
-- * 'ebdVolumeType' - The volume type. @gp2@ for General Purpose (SSD) volumes, @io1@ for Provisioned IOPS (SSD) volumes, @st1@ for Throughput Optimized hard disk drives (HDD), @sc1@ for Cold HDD,and @standard@ for Magnetic volumes. If you specify the @io1@ volume type, you must also specify a value for the @Iops@ attribute. The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. AWS uses the default volume size (in GiB) specified in the AMI attributes to set IOPS to 50 x (volume size).
--
-- * 'ebdVolumeSize' - The volume size, in GiB. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html EbsBlockDevice> .
--
-- * 'ebdIOPS' - The number of I/O operations per second (IOPS) that the volume supports. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html EbsBlockDevice> .
ebsBlockDevice ::
  EBSBlockDevice
ebsBlockDevice =
  EBSBlockDevice'
    { _ebdDeleteOnTermination = Nothing,
      _ebdSnapshotId = Nothing,
      _ebdVolumeType = Nothing,
      _ebdVolumeSize = Nothing,
      _ebdIOPS = Nothing
    }

-- | Whether the volume is deleted on instance termination.
ebdDeleteOnTermination :: Lens' EBSBlockDevice (Maybe Bool)
ebdDeleteOnTermination = lens _ebdDeleteOnTermination (\s a -> s {_ebdDeleteOnTermination = a})

-- | The snapshot ID.
ebdSnapshotId :: Lens' EBSBlockDevice (Maybe Text)
ebdSnapshotId = lens _ebdSnapshotId (\s a -> s {_ebdSnapshotId = a})

-- | The volume type. @gp2@ for General Purpose (SSD) volumes, @io1@ for Provisioned IOPS (SSD) volumes, @st1@ for Throughput Optimized hard disk drives (HDD), @sc1@ for Cold HDD,and @standard@ for Magnetic volumes. If you specify the @io1@ volume type, you must also specify a value for the @Iops@ attribute. The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. AWS uses the default volume size (in GiB) specified in the AMI attributes to set IOPS to 50 x (volume size).
ebdVolumeType :: Lens' EBSBlockDevice (Maybe VolumeType)
ebdVolumeType = lens _ebdVolumeType (\s a -> s {_ebdVolumeType = a})

-- | The volume size, in GiB. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html EbsBlockDevice> .
ebdVolumeSize :: Lens' EBSBlockDevice (Maybe Int)
ebdVolumeSize = lens _ebdVolumeSize (\s a -> s {_ebdVolumeSize = a})

-- | The number of I/O operations per second (IOPS) that the volume supports. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html EbsBlockDevice> .
ebdIOPS :: Lens' EBSBlockDevice (Maybe Int)
ebdIOPS = lens _ebdIOPS (\s a -> s {_ebdIOPS = a})

instance FromJSON EBSBlockDevice where
  parseJSON =
    withObject
      "EBSBlockDevice"
      ( \x ->
          EBSBlockDevice'
            <$> (x .:? "DeleteOnTermination")
            <*> (x .:? "SnapshotId")
            <*> (x .:? "VolumeType")
            <*> (x .:? "VolumeSize")
            <*> (x .:? "Iops")
      )

instance Hashable EBSBlockDevice

instance NFData EBSBlockDevice

instance ToJSON EBSBlockDevice where
  toJSON EBSBlockDevice' {..} =
    object
      ( catMaybes
          [ ("DeleteOnTermination" .=)
              <$> _ebdDeleteOnTermination,
            ("SnapshotId" .=) <$> _ebdSnapshotId,
            ("VolumeType" .=) <$> _ebdVolumeType,
            ("VolumeSize" .=) <$> _ebdVolumeSize,
            ("Iops" .=) <$> _ebdIOPS
          ]
      )

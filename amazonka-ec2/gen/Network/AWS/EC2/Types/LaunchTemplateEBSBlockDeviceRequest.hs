{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplateEBSBlockDeviceRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateEBSBlockDeviceRequest where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The parameters for a block device for an EBS volume.
--
--
--
-- /See:/ 'launchTemplateEBSBlockDeviceRequest' smart constructor.
data LaunchTemplateEBSBlockDeviceRequest = LaunchTemplateEBSBlockDeviceRequest'
  { _ltebdrEncrypted ::
      !( Maybe
           Bool
       ),
    _ltebdrThroughput ::
      !( Maybe
           Int
       ),
    _ltebdrKMSKeyId ::
      !( Maybe
           Text
       ),
    _ltebdrDeleteOnTermination ::
      !( Maybe
           Bool
       ),
    _ltebdrSnapshotId ::
      !( Maybe
           Text
       ),
    _ltebdrVolumeType ::
      !( Maybe
           VolumeType
       ),
    _ltebdrVolumeSize ::
      !( Maybe
           Int
       ),
    _ltebdrIOPS ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LaunchTemplateEBSBlockDeviceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltebdrEncrypted' - Indicates whether the EBS volume is encrypted. Encrypted volumes can only be attached to instances that support Amazon EBS encryption. If you are creating a volume from a snapshot, you can't specify an encryption value.
--
-- * 'ltebdrThroughput' - The throughput to provision for a @gp3@ volume, with a maximum of 1,000 MiB/s. Valid Range: Minimum value of 125. Maximum value of 1000.
--
-- * 'ltebdrKMSKeyId' - The ARN of the symmetric AWS Key Management Service (AWS KMS) CMK used for encryption.
--
-- * 'ltebdrDeleteOnTermination' - Indicates whether the EBS volume is deleted on instance termination.
--
-- * 'ltebdrSnapshotId' - The ID of the snapshot.
--
-- * 'ltebdrVolumeType' - The volume type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'ltebdrVolumeSize' - The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. The following are the supported volumes sizes for each volume type:     * @gp2@ and @gp3@ : 1-16,384     * @io1@ and @io2@ : 4-16,384     * @st1@ and @sc1@ : 125-16,384     * @standard@ : 1-1,024
--
-- * 'ltebdrIOPS' - The number of I/O operations per second (IOPS). For @gp3@ , @io1@ , and @io2@ volumes, this represents the number of IOPS that are provisioned for the volume. For @gp2@ volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. The following are the supported values for each volume type:     * @gp3@ : 3,000-16,000 IOPS     * @io1@ : 100-64,000 IOPS     * @io2@ : 100-64,000 IOPS For @io1@ and @io2@ volumes, we guarantee 64,000 IOPS only for <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Instances built on the Nitro System> . Other instance families guarantee performance up to 32,000 IOPS. This parameter is supported for @io1@ , @io2@ , and @gp3@ volumes only. This parameter is not supported for @gp2@ , @st1@ , @sc1@ , or @standard@ volumes.
launchTemplateEBSBlockDeviceRequest ::
  LaunchTemplateEBSBlockDeviceRequest
launchTemplateEBSBlockDeviceRequest =
  LaunchTemplateEBSBlockDeviceRequest'
    { _ltebdrEncrypted =
        Nothing,
      _ltebdrThroughput = Nothing,
      _ltebdrKMSKeyId = Nothing,
      _ltebdrDeleteOnTermination = Nothing,
      _ltebdrSnapshotId = Nothing,
      _ltebdrVolumeType = Nothing,
      _ltebdrVolumeSize = Nothing,
      _ltebdrIOPS = Nothing
    }

-- | Indicates whether the EBS volume is encrypted. Encrypted volumes can only be attached to instances that support Amazon EBS encryption. If you are creating a volume from a snapshot, you can't specify an encryption value.
ltebdrEncrypted :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Bool)
ltebdrEncrypted = lens _ltebdrEncrypted (\s a -> s {_ltebdrEncrypted = a})

-- | The throughput to provision for a @gp3@ volume, with a maximum of 1,000 MiB/s. Valid Range: Minimum value of 125. Maximum value of 1000.
ltebdrThroughput :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Int)
ltebdrThroughput = lens _ltebdrThroughput (\s a -> s {_ltebdrThroughput = a})

-- | The ARN of the symmetric AWS Key Management Service (AWS KMS) CMK used for encryption.
ltebdrKMSKeyId :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Text)
ltebdrKMSKeyId = lens _ltebdrKMSKeyId (\s a -> s {_ltebdrKMSKeyId = a})

-- | Indicates whether the EBS volume is deleted on instance termination.
ltebdrDeleteOnTermination :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Bool)
ltebdrDeleteOnTermination = lens _ltebdrDeleteOnTermination (\s a -> s {_ltebdrDeleteOnTermination = a})

-- | The ID of the snapshot.
ltebdrSnapshotId :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Text)
ltebdrSnapshotId = lens _ltebdrSnapshotId (\s a -> s {_ltebdrSnapshotId = a})

-- | The volume type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon Elastic Compute Cloud User Guide/ .
ltebdrVolumeType :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe VolumeType)
ltebdrVolumeType = lens _ltebdrVolumeType (\s a -> s {_ltebdrVolumeType = a})

-- | The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. The following are the supported volumes sizes for each volume type:     * @gp2@ and @gp3@ : 1-16,384     * @io1@ and @io2@ : 4-16,384     * @st1@ and @sc1@ : 125-16,384     * @standard@ : 1-1,024
ltebdrVolumeSize :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Int)
ltebdrVolumeSize = lens _ltebdrVolumeSize (\s a -> s {_ltebdrVolumeSize = a})

-- | The number of I/O operations per second (IOPS). For @gp3@ , @io1@ , and @io2@ volumes, this represents the number of IOPS that are provisioned for the volume. For @gp2@ volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. The following are the supported values for each volume type:     * @gp3@ : 3,000-16,000 IOPS     * @io1@ : 100-64,000 IOPS     * @io2@ : 100-64,000 IOPS For @io1@ and @io2@ volumes, we guarantee 64,000 IOPS only for <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Instances built on the Nitro System> . Other instance families guarantee performance up to 32,000 IOPS. This parameter is supported for @io1@ , @io2@ , and @gp3@ volumes only. This parameter is not supported for @gp2@ , @st1@ , @sc1@ , or @standard@ volumes.
ltebdrIOPS :: Lens' LaunchTemplateEBSBlockDeviceRequest (Maybe Int)
ltebdrIOPS = lens _ltebdrIOPS (\s a -> s {_ltebdrIOPS = a})

instance Hashable LaunchTemplateEBSBlockDeviceRequest

instance NFData LaunchTemplateEBSBlockDeviceRequest

instance ToQuery LaunchTemplateEBSBlockDeviceRequest where
  toQuery LaunchTemplateEBSBlockDeviceRequest' {..} =
    mconcat
      [ "Encrypted" =: _ltebdrEncrypted,
        "Throughput" =: _ltebdrThroughput,
        "KmsKeyId" =: _ltebdrKMSKeyId,
        "DeleteOnTermination" =: _ltebdrDeleteOnTermination,
        "SnapshotId" =: _ltebdrSnapshotId,
        "VolumeType" =: _ltebdrVolumeType,
        "VolumeSize" =: _ltebdrVolumeSize,
        "Iops" =: _ltebdrIOPS
      ]

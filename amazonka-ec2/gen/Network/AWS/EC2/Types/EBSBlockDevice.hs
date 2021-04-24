{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EBSBlockDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EBSBlockDevice where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a block device for an EBS volume.
--
--
--
-- /See:/ 'ebsBlockDevice' smart constructor.
data EBSBlockDevice = EBSBlockDevice'
  { _ebdEncrypted ::
      !(Maybe Bool),
    _ebdOutpostARN :: !(Maybe Text),
    _ebdThroughput :: !(Maybe Int),
    _ebdKMSKeyId :: !(Maybe Text),
    _ebdDeleteOnTermination :: !(Maybe Bool),
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
-- * 'ebdEncrypted' - Indicates whether the encryption state of an EBS volume is changed while being restored from a backing snapshot. The effect of setting the encryption state to @true@ depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-parameters Amazon EBS encryption> in the /Amazon EC2 User Guide/ . In no case can you remove encryption from an encrypted volume. Encrypted volumes can only be attached to instances that support Amazon EBS encryption. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances Supported instance types> . This parameter is not returned by .
--
-- * 'ebdOutpostARN' - The ARN of the Outpost on which the snapshot is stored.
--
-- * 'ebdThroughput' - The throughput that the volume supports, in MiB/s. This parameter is valid only for @gp3@ volumes. Valid Range: Minimum value of 125. Maximum value of 1000.
--
-- * 'ebdKMSKeyId' - Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer managed CMK under which the EBS volume is encrypted. This parameter is only supported on @BlockDeviceMapping@ objects called by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> , <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html RequestSpotFleet> , and <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html RequestSpotInstances> .
--
-- * 'ebdDeleteOnTermination' - Indicates whether the EBS volume is deleted on instance termination. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination Preserving Amazon EBS volumes on instance termination> in the /Amazon EC2 User Guide/ .
--
-- * 'ebdSnapshotId' - The ID of the snapshot.
--
-- * 'ebdVolumeType' - The volume type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon EC2 User Guide/ . If the volume type is @io1@ or @io2@ , you must specify the IOPS that the volume supports.
--
-- * 'ebdVolumeSize' - The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size. The following are the supported volumes sizes for each volume type:     * @gp2@ and @gp3@ :1-16,384     * @io1@ and @io2@ : 4-16,384     * @st1@ and @sc1@ : 125-16,384     * @standard@ : 1-1,024
--
-- * 'ebdIOPS' - The number of I/O operations per second (IOPS). For @gp3@ , @io1@ , and @io2@ volumes, this represents the number of IOPS that are provisioned for the volume. For @gp2@ volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. The following are the supported values for each volume type:     * @gp3@ : 3,000-16,000 IOPS     * @io1@ : 100-64,000 IOPS     * @io2@ : 100-64,000 IOPS For @io1@ and @io2@ volumes, we guarantee 64,000 IOPS only for <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Instances built on the Nitro System> . Other instance families guarantee performance up to 32,000 IOPS. This parameter is required for @io1@ and @io2@ volumes. The default for @gp3@ volumes is 3,000 IOPS. This parameter is not supported for @gp2@ , @st1@ , @sc1@ , or @standard@ volumes.
ebsBlockDevice ::
  EBSBlockDevice
ebsBlockDevice =
  EBSBlockDevice'
    { _ebdEncrypted = Nothing,
      _ebdOutpostARN = Nothing,
      _ebdThroughput = Nothing,
      _ebdKMSKeyId = Nothing,
      _ebdDeleteOnTermination = Nothing,
      _ebdSnapshotId = Nothing,
      _ebdVolumeType = Nothing,
      _ebdVolumeSize = Nothing,
      _ebdIOPS = Nothing
    }

-- | Indicates whether the encryption state of an EBS volume is changed while being restored from a backing snapshot. The effect of setting the encryption state to @true@ depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-parameters Amazon EBS encryption> in the /Amazon EC2 User Guide/ . In no case can you remove encryption from an encrypted volume. Encrypted volumes can only be attached to instances that support Amazon EBS encryption. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances Supported instance types> . This parameter is not returned by .
ebdEncrypted :: Lens' EBSBlockDevice (Maybe Bool)
ebdEncrypted = lens _ebdEncrypted (\s a -> s {_ebdEncrypted = a})

-- | The ARN of the Outpost on which the snapshot is stored.
ebdOutpostARN :: Lens' EBSBlockDevice (Maybe Text)
ebdOutpostARN = lens _ebdOutpostARN (\s a -> s {_ebdOutpostARN = a})

-- | The throughput that the volume supports, in MiB/s. This parameter is valid only for @gp3@ volumes. Valid Range: Minimum value of 125. Maximum value of 1000.
ebdThroughput :: Lens' EBSBlockDevice (Maybe Int)
ebdThroughput = lens _ebdThroughput (\s a -> s {_ebdThroughput = a})

-- | Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer managed CMK under which the EBS volume is encrypted. This parameter is only supported on @BlockDeviceMapping@ objects called by <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html RunInstances> , <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html RequestSpotFleet> , and <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html RequestSpotInstances> .
ebdKMSKeyId :: Lens' EBSBlockDevice (Maybe Text)
ebdKMSKeyId = lens _ebdKMSKeyId (\s a -> s {_ebdKMSKeyId = a})

-- | Indicates whether the EBS volume is deleted on instance termination. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination Preserving Amazon EBS volumes on instance termination> in the /Amazon EC2 User Guide/ .
ebdDeleteOnTermination :: Lens' EBSBlockDevice (Maybe Bool)
ebdDeleteOnTermination = lens _ebdDeleteOnTermination (\s a -> s {_ebdDeleteOnTermination = a})

-- | The ID of the snapshot.
ebdSnapshotId :: Lens' EBSBlockDevice (Maybe Text)
ebdSnapshotId = lens _ebdSnapshotId (\s a -> s {_ebdSnapshotId = a})

-- | The volume type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon EC2 User Guide/ . If the volume type is @io1@ or @io2@ , you must specify the IOPS that the volume supports.
ebdVolumeType :: Lens' EBSBlockDevice (Maybe VolumeType)
ebdVolumeType = lens _ebdVolumeType (\s a -> s {_ebdVolumeType = a})

-- | The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size. The following are the supported volumes sizes for each volume type:     * @gp2@ and @gp3@ :1-16,384     * @io1@ and @io2@ : 4-16,384     * @st1@ and @sc1@ : 125-16,384     * @standard@ : 1-1,024
ebdVolumeSize :: Lens' EBSBlockDevice (Maybe Int)
ebdVolumeSize = lens _ebdVolumeSize (\s a -> s {_ebdVolumeSize = a})

-- | The number of I/O operations per second (IOPS). For @gp3@ , @io1@ , and @io2@ volumes, this represents the number of IOPS that are provisioned for the volume. For @gp2@ volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. The following are the supported values for each volume type:     * @gp3@ : 3,000-16,000 IOPS     * @io1@ : 100-64,000 IOPS     * @io2@ : 100-64,000 IOPS For @io1@ and @io2@ volumes, we guarantee 64,000 IOPS only for <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Instances built on the Nitro System> . Other instance families guarantee performance up to 32,000 IOPS. This parameter is required for @io1@ and @io2@ volumes. The default for @gp3@ volumes is 3,000 IOPS. This parameter is not supported for @gp2@ , @st1@ , @sc1@ , or @standard@ volumes.
ebdIOPS :: Lens' EBSBlockDevice (Maybe Int)
ebdIOPS = lens _ebdIOPS (\s a -> s {_ebdIOPS = a})

instance FromXML EBSBlockDevice where
  parseXML x =
    EBSBlockDevice'
      <$> (x .@? "encrypted")
      <*> (x .@? "outpostArn")
      <*> (x .@? "throughput")
      <*> (x .@? "KmsKeyId")
      <*> (x .@? "deleteOnTermination")
      <*> (x .@? "snapshotId")
      <*> (x .@? "volumeType")
      <*> (x .@? "volumeSize")
      <*> (x .@? "iops")

instance Hashable EBSBlockDevice

instance NFData EBSBlockDevice

instance ToQuery EBSBlockDevice where
  toQuery EBSBlockDevice' {..} =
    mconcat
      [ "Encrypted" =: _ebdEncrypted,
        "OutpostArn" =: _ebdOutpostARN,
        "Throughput" =: _ebdThroughput,
        "KmsKeyId" =: _ebdKMSKeyId,
        "DeleteOnTermination" =: _ebdDeleteOnTermination,
        "SnapshotId" =: _ebdSnapshotId,
        "VolumeType" =: _ebdVolumeType,
        "VolumeSize" =: _ebdVolumeSize,
        "Iops" =: _ebdIOPS
      ]

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.ModifyInstanceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.
--
--
-- __Note: __ Using this action to change the security groups associated with an elastic network interface (ENI) attached to an instance in a VPC can result in an error if the instance has more than one ENI. To change the security groups associated with an ENI attached to an instance that has multiple ENIs, we recommend that you use the 'ModifyNetworkInterfaceAttribute' action.
--
-- To modify some attributes, the instance must be stopped. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html Modifying attributes of a stopped instance> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.ModifyInstanceAttribute
  ( -- * Creating a Request
    modifyInstanceAttribute,
    ModifyInstanceAttribute,

    -- * Request Lenses
    mGroups,
    mInstanceType,
    mEBSOptimized,
    mUserData,
    mDryRun,
    mKernel,
    mSourceDestCheck,
    mInstanceInitiatedShutdownBehavior,
    mAttribute,
    mSRIOVNetSupport,
    mBlockDeviceMappings,
    mValue,
    mRAMDisk,
    mDisableAPITermination,
    mEnaSupport,
    mInstanceId,

    -- * Destructuring the Response
    modifyInstanceAttributeResponse,
    ModifyInstanceAttributeResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyInstanceAttribute' smart constructor.
data ModifyInstanceAttribute = ModifyInstanceAttribute'
  { _mGroups ::
      !(Maybe [Text]),
    _mInstanceType ::
      !(Maybe AttributeValue),
    _mEBSOptimized ::
      !( Maybe
           AttributeBooleanValue
       ),
    _mUserData ::
      !( Maybe
           BlobAttributeValue
       ),
    _mDryRun ::
      !(Maybe Bool),
    _mKernel ::
      !(Maybe AttributeValue),
    _mSourceDestCheck ::
      !( Maybe
           AttributeBooleanValue
       ),
    _mInstanceInitiatedShutdownBehavior ::
      !(Maybe AttributeValue),
    _mAttribute ::
      !( Maybe
           InstanceAttributeName
       ),
    _mSRIOVNetSupport ::
      !(Maybe AttributeValue),
    _mBlockDeviceMappings ::
      !( Maybe
           [InstanceBlockDeviceMappingSpecification]
       ),
    _mValue ::
      !(Maybe Text),
    _mRAMDisk ::
      !(Maybe AttributeValue),
    _mDisableAPITermination ::
      !( Maybe
           AttributeBooleanValue
       ),
    _mEnaSupport ::
      !( Maybe
           AttributeBooleanValue
       ),
    _mInstanceId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyInstanceAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mGroups' - [EC2-VPC] Changes the security groups of the instance. You must specify at least one security group, even if it's just the default security group for the VPC. You must specify the security group ID, not the security group name.
--
-- * 'mInstanceType' - Changes the instance type to the specified value. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ . If the instance type is not valid, the error returned is @InvalidInstanceAttributeValue@ .
--
-- * 'mEBSOptimized' - Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
--
-- * 'mUserData' - Changes the instance's user data to the specified value. If you are using an AWS SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.
--
-- * 'mDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mKernel' - Changes the instance's kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html PV-GRUB> .
--
-- * 'mSourceDestCheck' - Specifies whether source/destination checking is enabled. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. This value must be @false@ for a NAT instance to perform NAT.
--
-- * 'mInstanceInitiatedShutdownBehavior' - Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
--
-- * 'mAttribute' - The name of the attribute.
--
-- * 'mSRIOVNetSupport' - Set to @simple@ to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance. There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time. This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
--
-- * 'mBlockDeviceMappings' - Modifies the @DeleteOnTermination@ attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for @DeleteOnTermination@ , the default is @true@ and the volume is deleted when the instance is terminated. To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM Updating the block device mapping when launching an instance> in the /Amazon EC2 User Guide/ .
--
-- * 'mValue' - A new value for the attribute. Use only with the @kernel@ , @ramdisk@ , @userData@ , @disableApiTermination@ , or @instanceInitiatedShutdownBehavior@ attribute.
--
-- * 'mRAMDisk' - Changes the instance's RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html PV-GRUB> .
--
-- * 'mDisableAPITermination' - If the value is @true@ , you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances.
--
-- * 'mEnaSupport' - Set to @true@ to enable enhanced networking with ENA for the instance. This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
--
-- * 'mInstanceId' - The ID of the instance.
modifyInstanceAttribute ::
  -- | 'mInstanceId'
  Text ->
  ModifyInstanceAttribute
modifyInstanceAttribute pInstanceId_ =
  ModifyInstanceAttribute'
    { _mGroups = Nothing,
      _mInstanceType = Nothing,
      _mEBSOptimized = Nothing,
      _mUserData = Nothing,
      _mDryRun = Nothing,
      _mKernel = Nothing,
      _mSourceDestCheck = Nothing,
      _mInstanceInitiatedShutdownBehavior = Nothing,
      _mAttribute = Nothing,
      _mSRIOVNetSupport = Nothing,
      _mBlockDeviceMappings = Nothing,
      _mValue = Nothing,
      _mRAMDisk = Nothing,
      _mDisableAPITermination = Nothing,
      _mEnaSupport = Nothing,
      _mInstanceId = pInstanceId_
    }

-- | [EC2-VPC] Changes the security groups of the instance. You must specify at least one security group, even if it's just the default security group for the VPC. You must specify the security group ID, not the security group name.
mGroups :: Lens' ModifyInstanceAttribute [Text]
mGroups = lens _mGroups (\s a -> s {_mGroups = a}) . _Default . _Coerce

-- | Changes the instance type to the specified value. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ . If the instance type is not valid, the error returned is @InvalidInstanceAttributeValue@ .
mInstanceType :: Lens' ModifyInstanceAttribute (Maybe AttributeValue)
mInstanceType = lens _mInstanceType (\s a -> s {_mInstanceType = a})

-- | Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
mEBSOptimized :: Lens' ModifyInstanceAttribute (Maybe AttributeBooleanValue)
mEBSOptimized = lens _mEBSOptimized (\s a -> s {_mEBSOptimized = a})

-- | Changes the instance's user data to the specified value. If you are using an AWS SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.
mUserData :: Lens' ModifyInstanceAttribute (Maybe BlobAttributeValue)
mUserData = lens _mUserData (\s a -> s {_mUserData = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mDryRun :: Lens' ModifyInstanceAttribute (Maybe Bool)
mDryRun = lens _mDryRun (\s a -> s {_mDryRun = a})

-- | Changes the instance's kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html PV-GRUB> .
mKernel :: Lens' ModifyInstanceAttribute (Maybe AttributeValue)
mKernel = lens _mKernel (\s a -> s {_mKernel = a})

-- | Specifies whether source/destination checking is enabled. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. This value must be @false@ for a NAT instance to perform NAT.
mSourceDestCheck :: Lens' ModifyInstanceAttribute (Maybe AttributeBooleanValue)
mSourceDestCheck = lens _mSourceDestCheck (\s a -> s {_mSourceDestCheck = a})

-- | Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
mInstanceInitiatedShutdownBehavior :: Lens' ModifyInstanceAttribute (Maybe AttributeValue)
mInstanceInitiatedShutdownBehavior = lens _mInstanceInitiatedShutdownBehavior (\s a -> s {_mInstanceInitiatedShutdownBehavior = a})

-- | The name of the attribute.
mAttribute :: Lens' ModifyInstanceAttribute (Maybe InstanceAttributeName)
mAttribute = lens _mAttribute (\s a -> s {_mAttribute = a})

-- | Set to @simple@ to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance. There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time. This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
mSRIOVNetSupport :: Lens' ModifyInstanceAttribute (Maybe AttributeValue)
mSRIOVNetSupport = lens _mSRIOVNetSupport (\s a -> s {_mSRIOVNetSupport = a})

-- | Modifies the @DeleteOnTermination@ attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for @DeleteOnTermination@ , the default is @true@ and the volume is deleted when the instance is terminated. To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM Updating the block device mapping when launching an instance> in the /Amazon EC2 User Guide/ .
mBlockDeviceMappings :: Lens' ModifyInstanceAttribute [InstanceBlockDeviceMappingSpecification]
mBlockDeviceMappings = lens _mBlockDeviceMappings (\s a -> s {_mBlockDeviceMappings = a}) . _Default . _Coerce

-- | A new value for the attribute. Use only with the @kernel@ , @ramdisk@ , @userData@ , @disableApiTermination@ , or @instanceInitiatedShutdownBehavior@ attribute.
mValue :: Lens' ModifyInstanceAttribute (Maybe Text)
mValue = lens _mValue (\s a -> s {_mValue = a})

-- | Changes the instance's RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html PV-GRUB> .
mRAMDisk :: Lens' ModifyInstanceAttribute (Maybe AttributeValue)
mRAMDisk = lens _mRAMDisk (\s a -> s {_mRAMDisk = a})

-- | If the value is @true@ , you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances.
mDisableAPITermination :: Lens' ModifyInstanceAttribute (Maybe AttributeBooleanValue)
mDisableAPITermination = lens _mDisableAPITermination (\s a -> s {_mDisableAPITermination = a})

-- | Set to @true@ to enable enhanced networking with ENA for the instance. This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
mEnaSupport :: Lens' ModifyInstanceAttribute (Maybe AttributeBooleanValue)
mEnaSupport = lens _mEnaSupport (\s a -> s {_mEnaSupport = a})

-- | The ID of the instance.
mInstanceId :: Lens' ModifyInstanceAttribute Text
mInstanceId = lens _mInstanceId (\s a -> s {_mInstanceId = a})

instance AWSRequest ModifyInstanceAttribute where
  type
    Rs ModifyInstanceAttribute =
      ModifyInstanceAttributeResponse
  request = postQuery ec2
  response =
    receiveNull ModifyInstanceAttributeResponse'

instance Hashable ModifyInstanceAttribute

instance NFData ModifyInstanceAttribute

instance ToHeaders ModifyInstanceAttribute where
  toHeaders = const mempty

instance ToPath ModifyInstanceAttribute where
  toPath = const "/"

instance ToQuery ModifyInstanceAttribute where
  toQuery ModifyInstanceAttribute' {..} =
    mconcat
      [ "Action"
          =: ("ModifyInstanceAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery (toQueryList "GroupId" <$> _mGroups),
        "InstanceType" =: _mInstanceType,
        "EbsOptimized" =: _mEBSOptimized,
        "UserData" =: _mUserData,
        "DryRun" =: _mDryRun,
        "Kernel" =: _mKernel,
        "SourceDestCheck" =: _mSourceDestCheck,
        "InstanceInitiatedShutdownBehavior"
          =: _mInstanceInitiatedShutdownBehavior,
        "Attribute" =: _mAttribute,
        "SriovNetSupport" =: _mSRIOVNetSupport,
        toQuery
          ( toQueryList "BlockDeviceMapping"
              <$> _mBlockDeviceMappings
          ),
        "Value" =: _mValue,
        "Ramdisk" =: _mRAMDisk,
        "DisableApiTermination" =: _mDisableAPITermination,
        "EnaSupport" =: _mEnaSupport,
        "InstanceId" =: _mInstanceId
      ]

-- | /See:/ 'modifyInstanceAttributeResponse' smart constructor.
data ModifyInstanceAttributeResponse = ModifyInstanceAttributeResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyInstanceAttributeResponse' with the minimum fields required to make a request.
modifyInstanceAttributeResponse ::
  ModifyInstanceAttributeResponse
modifyInstanceAttributeResponse =
  ModifyInstanceAttributeResponse'

instance NFData ModifyInstanceAttributeResponse

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
-- Module      : Network.AWS.EC2.DescribeInstanceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: @instanceType@ | @kernel@ | @ramdisk@ | @userData@ | @disableApiTermination@ | @instanceInitiatedShutdownBehavior@ | @rootDeviceName@ | @blockDeviceMapping@ | @productCodes@ | @sourceDestCheck@ | @groupSet@ | @ebsOptimized@ | @sriovNetSupport@
module Network.AWS.EC2.DescribeInstanceAttribute
  ( -- * Creating a Request
    describeInstanceAttribute,
    DescribeInstanceAttribute,

    -- * Request Lenses
    diaiDryRun,
    diaiAttribute,
    diaiInstanceId,

    -- * Destructuring the Response
    describeInstanceAttributeResponse,
    DescribeInstanceAttributeResponse,

    -- * Response Lenses
    diarrsGroups,
    diarrsInstanceId,
    diarrsInstanceType,
    diarrsRootDeviceName,
    diarrsEBSOptimized,
    diarrsUserData,
    diarrsRAMDiskId,
    diarrsSourceDestCheck,
    diarrsProductCodes,
    diarrsInstanceInitiatedShutdownBehavior,
    diarrsSRIOVNetSupport,
    diarrsBlockDeviceMappings,
    diarrsEnclaveOptions,
    diarrsKernelId,
    diarrsDisableAPITermination,
    diarrsEnaSupport,
    diarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstanceAttribute' smart constructor.
data DescribeInstanceAttribute = DescribeInstanceAttribute'
  { _diaiDryRun ::
      !(Maybe Bool),
    _diaiAttribute ::
      !InstanceAttributeName,
    _diaiInstanceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diaiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'diaiAttribute' - The instance attribute. Note: The @enaSupport@ attribute is not supported at this time.
--
-- * 'diaiInstanceId' - The ID of the instance.
describeInstanceAttribute ::
  -- | 'diaiAttribute'
  InstanceAttributeName ->
  -- | 'diaiInstanceId'
  Text ->
  DescribeInstanceAttribute
describeInstanceAttribute pAttribute_ pInstanceId_ =
  DescribeInstanceAttribute'
    { _diaiDryRun = Nothing,
      _diaiAttribute = pAttribute_,
      _diaiInstanceId = pInstanceId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
diaiDryRun :: Lens' DescribeInstanceAttribute (Maybe Bool)
diaiDryRun = lens _diaiDryRun (\s a -> s {_diaiDryRun = a})

-- | The instance attribute. Note: The @enaSupport@ attribute is not supported at this time.
diaiAttribute :: Lens' DescribeInstanceAttribute InstanceAttributeName
diaiAttribute = lens _diaiAttribute (\s a -> s {_diaiAttribute = a})

-- | The ID of the instance.
diaiInstanceId :: Lens' DescribeInstanceAttribute Text
diaiInstanceId = lens _diaiInstanceId (\s a -> s {_diaiInstanceId = a})

instance AWSRequest DescribeInstanceAttribute where
  type
    Rs DescribeInstanceAttribute =
      DescribeInstanceAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeInstanceAttributeResponse'
            <$> ( x .@? "groupSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "instanceId")
            <*> (x .@? "instanceType")
            <*> (x .@? "rootDeviceName")
            <*> (x .@? "ebsOptimized")
            <*> (x .@? "userData")
            <*> (x .@? "ramdisk")
            <*> (x .@? "sourceDestCheck")
            <*> ( x .@? "productCodes" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "instanceInitiatedShutdownBehavior")
            <*> (x .@? "sriovNetSupport")
            <*> ( x .@? "blockDeviceMapping" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "enclaveOptions")
            <*> (x .@? "kernel")
            <*> (x .@? "disableApiTermination")
            <*> (x .@? "enaSupport")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceAttribute

instance NFData DescribeInstanceAttribute

instance ToHeaders DescribeInstanceAttribute where
  toHeaders = const mempty

instance ToPath DescribeInstanceAttribute where
  toPath = const "/"

instance ToQuery DescribeInstanceAttribute where
  toQuery DescribeInstanceAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeInstanceAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _diaiDryRun,
        "Attribute" =: _diaiAttribute,
        "InstanceId" =: _diaiInstanceId
      ]

-- | Describes an instance attribute.
--
--
--
-- /See:/ 'describeInstanceAttributeResponse' smart constructor.
data DescribeInstanceAttributeResponse = DescribeInstanceAttributeResponse'
  { _diarrsGroups ::
      !( Maybe
           [GroupIdentifier]
       ),
    _diarrsInstanceId ::
      !( Maybe
           Text
       ),
    _diarrsInstanceType ::
      !( Maybe
           AttributeValue
       ),
    _diarrsRootDeviceName ::
      !( Maybe
           AttributeValue
       ),
    _diarrsEBSOptimized ::
      !( Maybe
           AttributeBooleanValue
       ),
    _diarrsUserData ::
      !( Maybe
           AttributeValue
       ),
    _diarrsRAMDiskId ::
      !( Maybe
           AttributeValue
       ),
    _diarrsSourceDestCheck ::
      !( Maybe
           AttributeBooleanValue
       ),
    _diarrsProductCodes ::
      !( Maybe
           [ProductCode]
       ),
    _diarrsInstanceInitiatedShutdownBehavior ::
      !( Maybe
           AttributeValue
       ),
    _diarrsSRIOVNetSupport ::
      !( Maybe
           AttributeValue
       ),
    _diarrsBlockDeviceMappings ::
      !( Maybe
           [InstanceBlockDeviceMapping]
       ),
    _diarrsEnclaveOptions ::
      !( Maybe
           EnclaveOptions
       ),
    _diarrsKernelId ::
      !( Maybe
           AttributeValue
       ),
    _diarrsDisableAPITermination ::
      !( Maybe
           AttributeBooleanValue
       ),
    _diarrsEnaSupport ::
      !( Maybe
           AttributeBooleanValue
       ),
    _diarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diarrsGroups' - The security groups associated with the instance.
--
-- * 'diarrsInstanceId' - The ID of the instance.
--
-- * 'diarrsInstanceType' - The instance type.
--
-- * 'diarrsRootDeviceName' - The device name of the root device volume (for example, @/dev/sda1@ ).
--
-- * 'diarrsEBSOptimized' - Indicates whether the instance is optimized for Amazon EBS I/O.
--
-- * 'diarrsUserData' - The user data.
--
-- * 'diarrsRAMDiskId' - The RAM disk ID.
--
-- * 'diarrsSourceDestCheck' - Indicates whether source/destination checking is enabled. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. This value must be @false@ for a NAT instance to perform NAT.
--
-- * 'diarrsProductCodes' - A list of product codes.
--
-- * 'diarrsInstanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
--
-- * 'diarrsSRIOVNetSupport' - Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
--
-- * 'diarrsBlockDeviceMappings' - The block device mapping of the instance.
--
-- * 'diarrsEnclaveOptions' - To enable the instance for AWS Nitro Enclaves, set this parameter to @true@ ; otherwise, set it to @false@ .
--
-- * 'diarrsKernelId' - The kernel ID.
--
-- * 'diarrsDisableAPITermination' - If the value is @true@ , you can't terminate the instance through the Amazon EC2 console, CLI, or API; otherwise, you can.
--
-- * 'diarrsEnaSupport' - Indicates whether enhanced networking with ENA is enabled.
--
-- * 'diarrsResponseStatus' - -- | The response status code.
describeInstanceAttributeResponse ::
  -- | 'diarrsResponseStatus'
  Int ->
  DescribeInstanceAttributeResponse
describeInstanceAttributeResponse pResponseStatus_ =
  DescribeInstanceAttributeResponse'
    { _diarrsGroups =
        Nothing,
      _diarrsInstanceId = Nothing,
      _diarrsInstanceType = Nothing,
      _diarrsRootDeviceName = Nothing,
      _diarrsEBSOptimized = Nothing,
      _diarrsUserData = Nothing,
      _diarrsRAMDiskId = Nothing,
      _diarrsSourceDestCheck = Nothing,
      _diarrsProductCodes = Nothing,
      _diarrsInstanceInitiatedShutdownBehavior =
        Nothing,
      _diarrsSRIOVNetSupport = Nothing,
      _diarrsBlockDeviceMappings = Nothing,
      _diarrsEnclaveOptions = Nothing,
      _diarrsKernelId = Nothing,
      _diarrsDisableAPITermination = Nothing,
      _diarrsEnaSupport = Nothing,
      _diarrsResponseStatus = pResponseStatus_
    }

-- | The security groups associated with the instance.
diarrsGroups :: Lens' DescribeInstanceAttributeResponse [GroupIdentifier]
diarrsGroups = lens _diarrsGroups (\s a -> s {_diarrsGroups = a}) . _Default . _Coerce

-- | The ID of the instance.
diarrsInstanceId :: Lens' DescribeInstanceAttributeResponse (Maybe Text)
diarrsInstanceId = lens _diarrsInstanceId (\s a -> s {_diarrsInstanceId = a})

-- | The instance type.
diarrsInstanceType :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsInstanceType = lens _diarrsInstanceType (\s a -> s {_diarrsInstanceType = a})

-- | The device name of the root device volume (for example, @/dev/sda1@ ).
diarrsRootDeviceName :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsRootDeviceName = lens _diarrsRootDeviceName (\s a -> s {_diarrsRootDeviceName = a})

-- | Indicates whether the instance is optimized for Amazon EBS I/O.
diarrsEBSOptimized :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diarrsEBSOptimized = lens _diarrsEBSOptimized (\s a -> s {_diarrsEBSOptimized = a})

-- | The user data.
diarrsUserData :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsUserData = lens _diarrsUserData (\s a -> s {_diarrsUserData = a})

-- | The RAM disk ID.
diarrsRAMDiskId :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsRAMDiskId = lens _diarrsRAMDiskId (\s a -> s {_diarrsRAMDiskId = a})

-- | Indicates whether source/destination checking is enabled. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. This value must be @false@ for a NAT instance to perform NAT.
diarrsSourceDestCheck :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diarrsSourceDestCheck = lens _diarrsSourceDestCheck (\s a -> s {_diarrsSourceDestCheck = a})

-- | A list of product codes.
diarrsProductCodes :: Lens' DescribeInstanceAttributeResponse [ProductCode]
diarrsProductCodes = lens _diarrsProductCodes (\s a -> s {_diarrsProductCodes = a}) . _Default . _Coerce

-- | Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
diarrsInstanceInitiatedShutdownBehavior :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsInstanceInitiatedShutdownBehavior = lens _diarrsInstanceInitiatedShutdownBehavior (\s a -> s {_diarrsInstanceInitiatedShutdownBehavior = a})

-- | Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
diarrsSRIOVNetSupport :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsSRIOVNetSupport = lens _diarrsSRIOVNetSupport (\s a -> s {_diarrsSRIOVNetSupport = a})

-- | The block device mapping of the instance.
diarrsBlockDeviceMappings :: Lens' DescribeInstanceAttributeResponse [InstanceBlockDeviceMapping]
diarrsBlockDeviceMappings = lens _diarrsBlockDeviceMappings (\s a -> s {_diarrsBlockDeviceMappings = a}) . _Default . _Coerce

-- | To enable the instance for AWS Nitro Enclaves, set this parameter to @true@ ; otherwise, set it to @false@ .
diarrsEnclaveOptions :: Lens' DescribeInstanceAttributeResponse (Maybe EnclaveOptions)
diarrsEnclaveOptions = lens _diarrsEnclaveOptions (\s a -> s {_diarrsEnclaveOptions = a})

-- | The kernel ID.
diarrsKernelId :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeValue)
diarrsKernelId = lens _diarrsKernelId (\s a -> s {_diarrsKernelId = a})

-- | If the value is @true@ , you can't terminate the instance through the Amazon EC2 console, CLI, or API; otherwise, you can.
diarrsDisableAPITermination :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diarrsDisableAPITermination = lens _diarrsDisableAPITermination (\s a -> s {_diarrsDisableAPITermination = a})

-- | Indicates whether enhanced networking with ENA is enabled.
diarrsEnaSupport :: Lens' DescribeInstanceAttributeResponse (Maybe AttributeBooleanValue)
diarrsEnaSupport = lens _diarrsEnaSupport (\s a -> s {_diarrsEnaSupport = a})

-- | -- | The response status code.
diarrsResponseStatus :: Lens' DescribeInstanceAttributeResponse Int
diarrsResponseStatus = lens _diarrsResponseStatus (\s a -> s {_diarrsResponseStatus = a})

instance NFData DescribeInstanceAttributeResponse

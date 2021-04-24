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
-- Module      : Network.AWS.EC2.DescribeImageAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.
module Network.AWS.EC2.DescribeImageAttribute
  ( -- * Creating a Request
    describeImageAttribute,
    DescribeImageAttribute,

    -- * Request Lenses
    diaDryRun,
    diaAttribute,
    diaImageId,

    -- * Destructuring the Response
    describeImageAttributeResponse,
    DescribeImageAttributeResponse,

    -- * Response Lenses
    diarirsRAMDiskId,
    diarirsProductCodes,
    diarirsLaunchPermissions,
    diarirsImageId,
    diarirsSRIOVNetSupport,
    diarirsBlockDeviceMappings,
    diarirsKernelId,
    diarirsDescription,
    diarirsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeImageAttribute.
--
--
--
-- /See:/ 'describeImageAttribute' smart constructor.
data DescribeImageAttribute = DescribeImageAttribute'
  { _diaDryRun ::
      !(Maybe Bool),
    _diaAttribute ::
      !ImageAttributeName,
    _diaImageId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeImageAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'diaAttribute' - The AMI attribute. __Note__ : Depending on your account privileges, the @blockDeviceMapping@ attribute may return a @Client.AuthFailure@ error. If this happens, use 'DescribeImages' to get information about the block device mapping for the AMI.
--
-- * 'diaImageId' - The ID of the AMI.
describeImageAttribute ::
  -- | 'diaAttribute'
  ImageAttributeName ->
  -- | 'diaImageId'
  Text ->
  DescribeImageAttribute
describeImageAttribute pAttribute_ pImageId_ =
  DescribeImageAttribute'
    { _diaDryRun = Nothing,
      _diaAttribute = pAttribute_,
      _diaImageId = pImageId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
diaDryRun :: Lens' DescribeImageAttribute (Maybe Bool)
diaDryRun = lens _diaDryRun (\s a -> s {_diaDryRun = a})

-- | The AMI attribute. __Note__ : Depending on your account privileges, the @blockDeviceMapping@ attribute may return a @Client.AuthFailure@ error. If this happens, use 'DescribeImages' to get information about the block device mapping for the AMI.
diaAttribute :: Lens' DescribeImageAttribute ImageAttributeName
diaAttribute = lens _diaAttribute (\s a -> s {_diaAttribute = a})

-- | The ID of the AMI.
diaImageId :: Lens' DescribeImageAttribute Text
diaImageId = lens _diaImageId (\s a -> s {_diaImageId = a})

instance AWSRequest DescribeImageAttribute where
  type
    Rs DescribeImageAttribute =
      DescribeImageAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeImageAttributeResponse'
            <$> (x .@? "ramdisk")
            <*> ( x .@? "productCodes" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> ( x .@? "launchPermission" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "imageId")
            <*> (x .@? "sriovNetSupport")
            <*> ( x .@? "blockDeviceMapping" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "kernel")
            <*> (x .@? "description")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImageAttribute

instance NFData DescribeImageAttribute

instance ToHeaders DescribeImageAttribute where
  toHeaders = const mempty

instance ToPath DescribeImageAttribute where
  toPath = const "/"

instance ToQuery DescribeImageAttribute where
  toQuery DescribeImageAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeImageAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _diaDryRun,
        "Attribute" =: _diaAttribute,
        "ImageId" =: _diaImageId
      ]

-- | Describes an image attribute.
--
--
--
-- /See:/ 'describeImageAttributeResponse' smart constructor.
data DescribeImageAttributeResponse = DescribeImageAttributeResponse'
  { _diarirsRAMDiskId ::
      !( Maybe
           AttributeValue
       ),
    _diarirsProductCodes ::
      !( Maybe
           [ProductCode]
       ),
    _diarirsLaunchPermissions ::
      !( Maybe
           [LaunchPermission]
       ),
    _diarirsImageId ::
      !( Maybe
           Text
       ),
    _diarirsSRIOVNetSupport ::
      !( Maybe
           AttributeValue
       ),
    _diarirsBlockDeviceMappings ::
      !( Maybe
           [BlockDeviceMapping]
       ),
    _diarirsKernelId ::
      !( Maybe
           AttributeValue
       ),
    _diarirsDescription ::
      !( Maybe
           AttributeValue
       ),
    _diarirsResponseStatus ::
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

-- | Creates a value of 'DescribeImageAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diarirsRAMDiskId' - The RAM disk ID.
--
-- * 'diarirsProductCodes' - The product codes.
--
-- * 'diarirsLaunchPermissions' - The launch permissions.
--
-- * 'diarirsImageId' - The ID of the AMI.
--
-- * 'diarirsSRIOVNetSupport' - Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
--
-- * 'diarirsBlockDeviceMappings' - The block device mapping entries.
--
-- * 'diarirsKernelId' - The kernel ID.
--
-- * 'diarirsDescription' - A description for the AMI.
--
-- * 'diarirsResponseStatus' - -- | The response status code.
describeImageAttributeResponse ::
  -- | 'diarirsResponseStatus'
  Int ->
  DescribeImageAttributeResponse
describeImageAttributeResponse pResponseStatus_ =
  DescribeImageAttributeResponse'
    { _diarirsRAMDiskId =
        Nothing,
      _diarirsProductCodes = Nothing,
      _diarirsLaunchPermissions = Nothing,
      _diarirsImageId = Nothing,
      _diarirsSRIOVNetSupport = Nothing,
      _diarirsBlockDeviceMappings = Nothing,
      _diarirsKernelId = Nothing,
      _diarirsDescription = Nothing,
      _diarirsResponseStatus = pResponseStatus_
    }

-- | The RAM disk ID.
diarirsRAMDiskId :: Lens' DescribeImageAttributeResponse (Maybe AttributeValue)
diarirsRAMDiskId = lens _diarirsRAMDiskId (\s a -> s {_diarirsRAMDiskId = a})

-- | The product codes.
diarirsProductCodes :: Lens' DescribeImageAttributeResponse [ProductCode]
diarirsProductCodes = lens _diarirsProductCodes (\s a -> s {_diarirsProductCodes = a}) . _Default . _Coerce

-- | The launch permissions.
diarirsLaunchPermissions :: Lens' DescribeImageAttributeResponse [LaunchPermission]
diarirsLaunchPermissions = lens _diarirsLaunchPermissions (\s a -> s {_diarirsLaunchPermissions = a}) . _Default . _Coerce

-- | The ID of the AMI.
diarirsImageId :: Lens' DescribeImageAttributeResponse (Maybe Text)
diarirsImageId = lens _diarirsImageId (\s a -> s {_diarirsImageId = a})

-- | Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
diarirsSRIOVNetSupport :: Lens' DescribeImageAttributeResponse (Maybe AttributeValue)
diarirsSRIOVNetSupport = lens _diarirsSRIOVNetSupport (\s a -> s {_diarirsSRIOVNetSupport = a})

-- | The block device mapping entries.
diarirsBlockDeviceMappings :: Lens' DescribeImageAttributeResponse [BlockDeviceMapping]
diarirsBlockDeviceMappings = lens _diarirsBlockDeviceMappings (\s a -> s {_diarirsBlockDeviceMappings = a}) . _Default . _Coerce

-- | The kernel ID.
diarirsKernelId :: Lens' DescribeImageAttributeResponse (Maybe AttributeValue)
diarirsKernelId = lens _diarirsKernelId (\s a -> s {_diarirsKernelId = a})

-- | A description for the AMI.
diarirsDescription :: Lens' DescribeImageAttributeResponse (Maybe AttributeValue)
diarirsDescription = lens _diarirsDescription (\s a -> s {_diarirsDescription = a})

-- | -- | The response status code.
diarirsResponseStatus :: Lens' DescribeImageAttributeResponse Int
diarirsResponseStatus = lens _diarirsResponseStatus (\s a -> s {_diarirsResponseStatus = a})

instance NFData DescribeImageAttributeResponse

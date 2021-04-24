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
-- Module      : Network.AWS.EC2.CreateImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.
--
--
-- If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html Creating Amazon EBS-Backed Linux AMIs> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateImage
  ( -- * Creating a Request
    createImage,
    CreateImage,

    -- * Request Lenses
    ciTagSpecifications,
    ciDryRun,
    ciBlockDeviceMappings,
    ciDescription,
    ciNoReboot,
    ciInstanceId,
    ciName,

    -- * Destructuring the Response
    createImageResponse,
    CreateImageResponse,

    -- * Response Lenses
    crsImageId,
    crsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createImage' smart constructor.
data CreateImage = CreateImage'
  { _ciTagSpecifications ::
      !(Maybe [TagSpecification]),
    _ciDryRun :: !(Maybe Bool),
    _ciBlockDeviceMappings ::
      !(Maybe [BlockDeviceMapping]),
    _ciDescription :: !(Maybe Text),
    _ciNoReboot :: !(Maybe Bool),
    _ciInstanceId :: !Text,
    _ciName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciTagSpecifications' - The tags to apply to the AMI and snapshots on creation. You can tag the AMI, the snapshots, or both.     * To tag the AMI, the value for @ResourceType@ must be @image@ .     * To tag the snapshots that are created of the root volume and of other EBS volumes that are attached to the instance, the value for @ResourceType@ must be @snapshot@ . The same tag is applied to all of the snapshots that are created. If you specify other values for @ResourceType@ , the request fails. To tag an AMI or snapshot after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
--
-- * 'ciDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ciBlockDeviceMappings' - The block device mappings. This parameter cannot be used to modify the encryption status of existing volumes or snapshots. To create an AMI with encrypted snapshots, use the 'CopyImage' action.
--
-- * 'ciDescription' - A description for the new image.
--
-- * 'ciNoReboot' - By default, Amazon EC2 attempts to shut down and reboot the instance before creating the image. If the @No Reboot@ option is set, Amazon EC2 doesn't shut down the instance before creating the image. When this option is used, file system integrity on the created image can't be guaranteed.
--
-- * 'ciInstanceId' - The ID of the instance.
--
-- * 'ciName' - A name for the new image. Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
createImage ::
  -- | 'ciInstanceId'
  Text ->
  -- | 'ciName'
  Text ->
  CreateImage
createImage pInstanceId_ pName_ =
  CreateImage'
    { _ciTagSpecifications = Nothing,
      _ciDryRun = Nothing,
      _ciBlockDeviceMappings = Nothing,
      _ciDescription = Nothing,
      _ciNoReboot = Nothing,
      _ciInstanceId = pInstanceId_,
      _ciName = pName_
    }

-- | The tags to apply to the AMI and snapshots on creation. You can tag the AMI, the snapshots, or both.     * To tag the AMI, the value for @ResourceType@ must be @image@ .     * To tag the snapshots that are created of the root volume and of other EBS volumes that are attached to the instance, the value for @ResourceType@ must be @snapshot@ . The same tag is applied to all of the snapshots that are created. If you specify other values for @ResourceType@ , the request fails. To tag an AMI or snapshot after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
ciTagSpecifications :: Lens' CreateImage [TagSpecification]
ciTagSpecifications = lens _ciTagSpecifications (\s a -> s {_ciTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ciDryRun :: Lens' CreateImage (Maybe Bool)
ciDryRun = lens _ciDryRun (\s a -> s {_ciDryRun = a})

-- | The block device mappings. This parameter cannot be used to modify the encryption status of existing volumes or snapshots. To create an AMI with encrypted snapshots, use the 'CopyImage' action.
ciBlockDeviceMappings :: Lens' CreateImage [BlockDeviceMapping]
ciBlockDeviceMappings = lens _ciBlockDeviceMappings (\s a -> s {_ciBlockDeviceMappings = a}) . _Default . _Coerce

-- | A description for the new image.
ciDescription :: Lens' CreateImage (Maybe Text)
ciDescription = lens _ciDescription (\s a -> s {_ciDescription = a})

-- | By default, Amazon EC2 attempts to shut down and reboot the instance before creating the image. If the @No Reboot@ option is set, Amazon EC2 doesn't shut down the instance before creating the image. When this option is used, file system integrity on the created image can't be guaranteed.
ciNoReboot :: Lens' CreateImage (Maybe Bool)
ciNoReboot = lens _ciNoReboot (\s a -> s {_ciNoReboot = a})

-- | The ID of the instance.
ciInstanceId :: Lens' CreateImage Text
ciInstanceId = lens _ciInstanceId (\s a -> s {_ciInstanceId = a})

-- | A name for the new image. Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
ciName :: Lens' CreateImage Text
ciName = lens _ciName (\s a -> s {_ciName = a})

instance AWSRequest CreateImage where
  type Rs CreateImage = CreateImageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateImageResponse'
            <$> (x .@? "imageId") <*> (pure (fromEnum s))
      )

instance Hashable CreateImage

instance NFData CreateImage

instance ToHeaders CreateImage where
  toHeaders = const mempty

instance ToPath CreateImage where
  toPath = const "/"

instance ToQuery CreateImage where
  toQuery CreateImage' {..} =
    mconcat
      [ "Action" =: ("CreateImage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ciTagSpecifications
          ),
        "DryRun" =: _ciDryRun,
        toQuery
          ( toQueryList "BlockDeviceMapping"
              <$> _ciBlockDeviceMappings
          ),
        "Description" =: _ciDescription,
        "NoReboot" =: _ciNoReboot,
        "InstanceId" =: _ciInstanceId,
        "Name" =: _ciName
      ]

-- | /See:/ 'createImageResponse' smart constructor.
data CreateImageResponse = CreateImageResponse'
  { _crsImageId ::
      !(Maybe Text),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsImageId' - The ID of the new AMI.
--
-- * 'crsResponseStatus' - -- | The response status code.
createImageResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateImageResponse
createImageResponse pResponseStatus_ =
  CreateImageResponse'
    { _crsImageId = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The ID of the new AMI.
crsImageId :: Lens' CreateImageResponse (Maybe Text)
crsImageId = lens _crsImageId (\s a -> s {_crsImageId = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateImageResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateImageResponse

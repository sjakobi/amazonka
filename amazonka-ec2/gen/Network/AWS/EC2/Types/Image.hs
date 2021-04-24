{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Image
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Image where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ArchitectureValues
import Network.AWS.EC2.Types.BlockDeviceMapping
import Network.AWS.EC2.Types.DeviceType
import Network.AWS.EC2.Types.HypervisorType
import Network.AWS.EC2.Types.ImageState
import Network.AWS.EC2.Types.ImageTypeValues
import Network.AWS.EC2.Types.PlatformValues
import Network.AWS.EC2.Types.ProductCode
import Network.AWS.EC2.Types.StateReason
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.VirtualizationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an image.
--
--
--
-- /See:/ 'image' smart constructor.
data Image = Image'
  { _imaPlatform ::
      !(Maybe PlatformValues),
    _imaRootDeviceName :: !(Maybe Text),
    _imaRAMDiskId :: !(Maybe Text),
    _imaStateReason :: !(Maybe StateReason),
    _imaUsageOperation :: !(Maybe Text),
    _imaCreationDate :: !(Maybe Text),
    _imaProductCodes :: !(Maybe [ProductCode]),
    _imaPlatformDetails :: !(Maybe Text),
    _imaName :: !(Maybe Text),
    _imaTags :: !(Maybe [Tag]),
    _imaSRIOVNetSupport :: !(Maybe Text),
    _imaBlockDeviceMappings ::
      !(Maybe [BlockDeviceMapping]),
    _imaKernelId :: !(Maybe Text),
    _imaDescription :: !(Maybe Text),
    _imaImageOwnerAlias :: !(Maybe Text),
    _imaEnaSupport :: !(Maybe Bool),
    _imaImageId :: !Text,
    _imaImageLocation :: !Text,
    _imaState :: !ImageState,
    _imaOwnerId :: !Text,
    _imaPublic :: !Bool,
    _imaArchitecture :: !ArchitectureValues,
    _imaImageType :: !ImageTypeValues,
    _imaRootDeviceType :: !DeviceType,
    _imaVirtualizationType :: !VirtualizationType,
    _imaHypervisor :: !HypervisorType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaPlatform' - This value is set to @windows@ for Windows AMIs; otherwise, it is blank.
--
-- * 'imaRootDeviceName' - The device name of the root device volume (for example, @/dev/sda1@ ).
--
-- * 'imaRAMDiskId' - The RAM disk associated with the image, if any. Only applicable for machine images.
--
-- * 'imaStateReason' - The reason for the state change.
--
-- * 'imaUsageOperation' - The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. @usageOperation@ corresponds to the <https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation lineitem/Operation> column on your AWS Cost and Usage Report and in the <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html AWS Price List API> . For the list of @UsageOperation@ codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html#billing-info Platform Details and Usage Operation Billing Codes> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'imaCreationDate' - The date and time the image was created.
--
-- * 'imaProductCodes' - Any product codes associated with the AMI.
--
-- * 'imaPlatformDetails' - The platform details associated with the billing code of the AMI. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html Obtaining Billing Information> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'imaName' - The name of the AMI that was provided during image creation.
--
-- * 'imaTags' - Any tags assigned to the image.
--
-- * 'imaSRIOVNetSupport' - Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
--
-- * 'imaBlockDeviceMappings' - Any block device mapping entries.
--
-- * 'imaKernelId' - The kernel associated with the image, if any. Only applicable for machine images.
--
-- * 'imaDescription' - The description of the AMI that was provided during image creation.
--
-- * 'imaImageOwnerAlias' - The AWS account alias (for example, @amazon@ , @self@ ) or the AWS account ID of the AMI owner.
--
-- * 'imaEnaSupport' - Specifies whether enhanced networking with ENA is enabled.
--
-- * 'imaImageId' - The ID of the AMI.
--
-- * 'imaImageLocation' - The location of the AMI.
--
-- * 'imaState' - The current state of the AMI. If the state is @available@ , the image is successfully registered and can be used to launch an instance.
--
-- * 'imaOwnerId' - The AWS account ID of the image owner.
--
-- * 'imaPublic' - Indicates whether the image has public launch permissions. The value is @true@ if this image has public launch permissions or @false@ if it has only implicit and explicit launch permissions.
--
-- * 'imaArchitecture' - The architecture of the image.
--
-- * 'imaImageType' - The type of image.
--
-- * 'imaRootDeviceType' - The type of root device used by the AMI. The AMI can use an EBS volume or an instance store volume.
--
-- * 'imaVirtualizationType' - The type of virtualization of the AMI.
--
-- * 'imaHypervisor' - The hypervisor type of the image.
image ::
  -- | 'imaImageId'
  Text ->
  -- | 'imaImageLocation'
  Text ->
  -- | 'imaState'
  ImageState ->
  -- | 'imaOwnerId'
  Text ->
  -- | 'imaPublic'
  Bool ->
  -- | 'imaArchitecture'
  ArchitectureValues ->
  -- | 'imaImageType'
  ImageTypeValues ->
  -- | 'imaRootDeviceType'
  DeviceType ->
  -- | 'imaVirtualizationType'
  VirtualizationType ->
  -- | 'imaHypervisor'
  HypervisorType ->
  Image
image
  pImageId_
  pImageLocation_
  pState_
  pOwnerId_
  pPublic_
  pArchitecture_
  pImageType_
  pRootDeviceType_
  pVirtualizationType_
  pHypervisor_ =
    Image'
      { _imaPlatform = Nothing,
        _imaRootDeviceName = Nothing,
        _imaRAMDiskId = Nothing,
        _imaStateReason = Nothing,
        _imaUsageOperation = Nothing,
        _imaCreationDate = Nothing,
        _imaProductCodes = Nothing,
        _imaPlatformDetails = Nothing,
        _imaName = Nothing,
        _imaTags = Nothing,
        _imaSRIOVNetSupport = Nothing,
        _imaBlockDeviceMappings = Nothing,
        _imaKernelId = Nothing,
        _imaDescription = Nothing,
        _imaImageOwnerAlias = Nothing,
        _imaEnaSupport = Nothing,
        _imaImageId = pImageId_,
        _imaImageLocation = pImageLocation_,
        _imaState = pState_,
        _imaOwnerId = pOwnerId_,
        _imaPublic = pPublic_,
        _imaArchitecture = pArchitecture_,
        _imaImageType = pImageType_,
        _imaRootDeviceType = pRootDeviceType_,
        _imaVirtualizationType = pVirtualizationType_,
        _imaHypervisor = pHypervisor_
      }

-- | This value is set to @windows@ for Windows AMIs; otherwise, it is blank.
imaPlatform :: Lens' Image (Maybe PlatformValues)
imaPlatform = lens _imaPlatform (\s a -> s {_imaPlatform = a})

-- | The device name of the root device volume (for example, @/dev/sda1@ ).
imaRootDeviceName :: Lens' Image (Maybe Text)
imaRootDeviceName = lens _imaRootDeviceName (\s a -> s {_imaRootDeviceName = a})

-- | The RAM disk associated with the image, if any. Only applicable for machine images.
imaRAMDiskId :: Lens' Image (Maybe Text)
imaRAMDiskId = lens _imaRAMDiskId (\s a -> s {_imaRAMDiskId = a})

-- | The reason for the state change.
imaStateReason :: Lens' Image (Maybe StateReason)
imaStateReason = lens _imaStateReason (\s a -> s {_imaStateReason = a})

-- | The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. @usageOperation@ corresponds to the <https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation lineitem/Operation> column on your AWS Cost and Usage Report and in the <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html AWS Price List API> . For the list of @UsageOperation@ codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html#billing-info Platform Details and Usage Operation Billing Codes> in the /Amazon Elastic Compute Cloud User Guide/ .
imaUsageOperation :: Lens' Image (Maybe Text)
imaUsageOperation = lens _imaUsageOperation (\s a -> s {_imaUsageOperation = a})

-- | The date and time the image was created.
imaCreationDate :: Lens' Image (Maybe Text)
imaCreationDate = lens _imaCreationDate (\s a -> s {_imaCreationDate = a})

-- | Any product codes associated with the AMI.
imaProductCodes :: Lens' Image [ProductCode]
imaProductCodes = lens _imaProductCodes (\s a -> s {_imaProductCodes = a}) . _Default . _Coerce

-- | The platform details associated with the billing code of the AMI. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html Obtaining Billing Information> in the /Amazon Elastic Compute Cloud User Guide/ .
imaPlatformDetails :: Lens' Image (Maybe Text)
imaPlatformDetails = lens _imaPlatformDetails (\s a -> s {_imaPlatformDetails = a})

-- | The name of the AMI that was provided during image creation.
imaName :: Lens' Image (Maybe Text)
imaName = lens _imaName (\s a -> s {_imaName = a})

-- | Any tags assigned to the image.
imaTags :: Lens' Image [Tag]
imaTags = lens _imaTags (\s a -> s {_imaTags = a}) . _Default . _Coerce

-- | Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
imaSRIOVNetSupport :: Lens' Image (Maybe Text)
imaSRIOVNetSupport = lens _imaSRIOVNetSupport (\s a -> s {_imaSRIOVNetSupport = a})

-- | Any block device mapping entries.
imaBlockDeviceMappings :: Lens' Image [BlockDeviceMapping]
imaBlockDeviceMappings = lens _imaBlockDeviceMappings (\s a -> s {_imaBlockDeviceMappings = a}) . _Default . _Coerce

-- | The kernel associated with the image, if any. Only applicable for machine images.
imaKernelId :: Lens' Image (Maybe Text)
imaKernelId = lens _imaKernelId (\s a -> s {_imaKernelId = a})

-- | The description of the AMI that was provided during image creation.
imaDescription :: Lens' Image (Maybe Text)
imaDescription = lens _imaDescription (\s a -> s {_imaDescription = a})

-- | The AWS account alias (for example, @amazon@ , @self@ ) or the AWS account ID of the AMI owner.
imaImageOwnerAlias :: Lens' Image (Maybe Text)
imaImageOwnerAlias = lens _imaImageOwnerAlias (\s a -> s {_imaImageOwnerAlias = a})

-- | Specifies whether enhanced networking with ENA is enabled.
imaEnaSupport :: Lens' Image (Maybe Bool)
imaEnaSupport = lens _imaEnaSupport (\s a -> s {_imaEnaSupport = a})

-- | The ID of the AMI.
imaImageId :: Lens' Image Text
imaImageId = lens _imaImageId (\s a -> s {_imaImageId = a})

-- | The location of the AMI.
imaImageLocation :: Lens' Image Text
imaImageLocation = lens _imaImageLocation (\s a -> s {_imaImageLocation = a})

-- | The current state of the AMI. If the state is @available@ , the image is successfully registered and can be used to launch an instance.
imaState :: Lens' Image ImageState
imaState = lens _imaState (\s a -> s {_imaState = a})

-- | The AWS account ID of the image owner.
imaOwnerId :: Lens' Image Text
imaOwnerId = lens _imaOwnerId (\s a -> s {_imaOwnerId = a})

-- | Indicates whether the image has public launch permissions. The value is @true@ if this image has public launch permissions or @false@ if it has only implicit and explicit launch permissions.
imaPublic :: Lens' Image Bool
imaPublic = lens _imaPublic (\s a -> s {_imaPublic = a})

-- | The architecture of the image.
imaArchitecture :: Lens' Image ArchitectureValues
imaArchitecture = lens _imaArchitecture (\s a -> s {_imaArchitecture = a})

-- | The type of image.
imaImageType :: Lens' Image ImageTypeValues
imaImageType = lens _imaImageType (\s a -> s {_imaImageType = a})

-- | The type of root device used by the AMI. The AMI can use an EBS volume or an instance store volume.
imaRootDeviceType :: Lens' Image DeviceType
imaRootDeviceType = lens _imaRootDeviceType (\s a -> s {_imaRootDeviceType = a})

-- | The type of virtualization of the AMI.
imaVirtualizationType :: Lens' Image VirtualizationType
imaVirtualizationType = lens _imaVirtualizationType (\s a -> s {_imaVirtualizationType = a})

-- | The hypervisor type of the image.
imaHypervisor :: Lens' Image HypervisorType
imaHypervisor = lens _imaHypervisor (\s a -> s {_imaHypervisor = a})

instance FromXML Image where
  parseXML x =
    Image'
      <$> (x .@? "platform")
      <*> (x .@? "rootDeviceName")
      <*> (x .@? "ramdiskId")
      <*> (x .@? "stateReason")
      <*> (x .@? "usageOperation")
      <*> (x .@? "creationDate")
      <*> ( x .@? "productCodes" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "platformDetails")
      <*> (x .@? "name")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "sriovNetSupport")
      <*> ( x .@? "blockDeviceMapping" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "kernelId")
      <*> (x .@? "description")
      <*> (x .@? "imageOwnerAlias")
      <*> (x .@? "enaSupport")
      <*> (x .@ "imageId")
      <*> (x .@ "imageLocation")
      <*> (x .@ "imageState")
      <*> (x .@ "imageOwnerId")
      <*> (x .@ "isPublic")
      <*> (x .@ "architecture")
      <*> (x .@ "imageType")
      <*> (x .@ "rootDeviceType")
      <*> (x .@ "virtualizationType")
      <*> (x .@ "hypervisor")

instance Hashable Image

instance NFData Image

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
-- Module      : Network.AWS.EC2.RegisterImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html Creating your own AMIs> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
-- If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.
--
-- __Register a snapshot of a root device volume__
--
-- You can use @RegisterImage@ to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using a block device mapping. You can't set the encryption state of the volume using the block device mapping. If the snapshot is encrypted, or encryption by default is enabled, the root volume of an instance launched from the AMI is encrypted.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot Create a Linux AMI from a snapshot> and <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html Use encryption with EBS-backed AMIs> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- __AWS Marketplace product codes__
--
-- If any snapshots have AWS Marketplace product codes, they are copied to the new AMI.
--
-- Windows and some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing product code associated with an AMI to verify the subscription status for package updates. To create a new AMI for operating systems that require a billing product code, instead of registering the AMI, do the following to preserve the billing product code association:
--
--     * Launch an instance from an existing AMI with that billing product code.
--
--     * Customize the instance.
--
--     * Create an AMI from the instance using 'CreateImage' .
--
--
--
-- If you purchase a Reserved Instance to apply to an On-Demand Instance that was launched from an AMI with a billing product code, make sure that the Reserved Instance has the matching billing product code. If you purchase a Reserved Instance without the matching billing product code, the Reserved Instance will not be applied to the On-Demand Instance. For information about how to obtain the platform details and billing information of an AMI, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html Obtaining billing information> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.RegisterImage
  ( -- * Creating a Request
    registerImage,
    RegisterImage,

    -- * Request Lenses
    riVirtualizationType,
    riRootDeviceName,
    riDryRun,
    riRAMDiskId,
    riArchitecture,
    riSRIOVNetSupport,
    riBlockDeviceMappings,
    riKernelId,
    riDescription,
    riBillingProducts,
    riEnaSupport,
    riImageLocation,
    riName,

    -- * Destructuring the Response
    registerImageResponse,
    RegisterImageResponse,

    -- * Response Lenses
    rirrsImageId,
    rirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for RegisterImage.
--
--
--
-- /See:/ 'registerImage' smart constructor.
data RegisterImage = RegisterImage'
  { _riVirtualizationType ::
      !(Maybe Text),
    _riRootDeviceName :: !(Maybe Text),
    _riDryRun :: !(Maybe Bool),
    _riRAMDiskId :: !(Maybe Text),
    _riArchitecture ::
      !(Maybe ArchitectureValues),
    _riSRIOVNetSupport :: !(Maybe Text),
    _riBlockDeviceMappings ::
      !(Maybe [BlockDeviceMapping]),
    _riKernelId :: !(Maybe Text),
    _riDescription :: !(Maybe Text),
    _riBillingProducts :: !(Maybe [Text]),
    _riEnaSupport :: !(Maybe Bool),
    _riImageLocation :: !(Maybe Text),
    _riName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riVirtualizationType' - The type of virtualization (@hvm@ | @paravirtual@ ). Default: @paravirtual@
--
-- * 'riRootDeviceName' - The device name of the root device volume (for example, @/dev/sda1@ ).
--
-- * 'riDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'riRAMDiskId' - The ID of the RAM disk.
--
-- * 'riArchitecture' - The architecture of the AMI. Default: For Amazon EBS-backed AMIs, @i386@ . For instance store-backed AMIs, the architecture specified in the manifest file.
--
-- * 'riSRIOVNetSupport' - Set to @simple@ to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI. There is no way to disable @sriovNetSupport@ at this time. This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
--
-- * 'riBlockDeviceMappings' - The block device mapping entries. If you specify an EBS volume using the ID of an EBS snapshot, you can't specify the encryption state of the volume. If you create an AMI on an Outpost, then all backing snapshots must be on the same Outpost or in the Region of that Outpost. AMIs on an Outpost that include local snapshots can be used to launch instances on the same Outpost only. For more information, <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami Amazon EBS local snapshots on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'riKernelId' - The ID of the kernel.
--
-- * 'riDescription' - A description for your AMI.
--
-- * 'riBillingProducts' - The billing product codes. Your account must be authorized to specify billing product codes. Otherwise, you can use the AWS Marketplace to bill for the use of an AMI.
--
-- * 'riEnaSupport' - Set to @true@ to enable enhanced networking with ENA for the AMI and any instances that you launch from the AMI. This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
--
-- * 'riImageLocation' - The full path to your AMI manifest in Amazon S3 storage. The specified bucket must have the @aws-exec-read@ canned access control list (ACL) to ensure that it can be accessed by Amazon EC2. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl Canned ACLs> in the /Amazon S3 Service Developer Guide/ .
--
-- * 'riName' - A name for your AMI. Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
registerImage ::
  -- | 'riName'
  Text ->
  RegisterImage
registerImage pName_ =
  RegisterImage'
    { _riVirtualizationType = Nothing,
      _riRootDeviceName = Nothing,
      _riDryRun = Nothing,
      _riRAMDiskId = Nothing,
      _riArchitecture = Nothing,
      _riSRIOVNetSupport = Nothing,
      _riBlockDeviceMappings = Nothing,
      _riKernelId = Nothing,
      _riDescription = Nothing,
      _riBillingProducts = Nothing,
      _riEnaSupport = Nothing,
      _riImageLocation = Nothing,
      _riName = pName_
    }

-- | The type of virtualization (@hvm@ | @paravirtual@ ). Default: @paravirtual@
riVirtualizationType :: Lens' RegisterImage (Maybe Text)
riVirtualizationType = lens _riVirtualizationType (\s a -> s {_riVirtualizationType = a})

-- | The device name of the root device volume (for example, @/dev/sda1@ ).
riRootDeviceName :: Lens' RegisterImage (Maybe Text)
riRootDeviceName = lens _riRootDeviceName (\s a -> s {_riRootDeviceName = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
riDryRun :: Lens' RegisterImage (Maybe Bool)
riDryRun = lens _riDryRun (\s a -> s {_riDryRun = a})

-- | The ID of the RAM disk.
riRAMDiskId :: Lens' RegisterImage (Maybe Text)
riRAMDiskId = lens _riRAMDiskId (\s a -> s {_riRAMDiskId = a})

-- | The architecture of the AMI. Default: For Amazon EBS-backed AMIs, @i386@ . For instance store-backed AMIs, the architecture specified in the manifest file.
riArchitecture :: Lens' RegisterImage (Maybe ArchitectureValues)
riArchitecture = lens _riArchitecture (\s a -> s {_riArchitecture = a})

-- | Set to @simple@ to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI. There is no way to disable @sriovNetSupport@ at this time. This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
riSRIOVNetSupport :: Lens' RegisterImage (Maybe Text)
riSRIOVNetSupport = lens _riSRIOVNetSupport (\s a -> s {_riSRIOVNetSupport = a})

-- | The block device mapping entries. If you specify an EBS volume using the ID of an EBS snapshot, you can't specify the encryption state of the volume. If you create an AMI on an Outpost, then all backing snapshots must be on the same Outpost or in the Region of that Outpost. AMIs on an Outpost that include local snapshots can be used to launch instances on the same Outpost only. For more information, <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami Amazon EBS local snapshots on Outposts> in the /Amazon Elastic Compute Cloud User Guide/ .
riBlockDeviceMappings :: Lens' RegisterImage [BlockDeviceMapping]
riBlockDeviceMappings = lens _riBlockDeviceMappings (\s a -> s {_riBlockDeviceMappings = a}) . _Default . _Coerce

-- | The ID of the kernel.
riKernelId :: Lens' RegisterImage (Maybe Text)
riKernelId = lens _riKernelId (\s a -> s {_riKernelId = a})

-- | A description for your AMI.
riDescription :: Lens' RegisterImage (Maybe Text)
riDescription = lens _riDescription (\s a -> s {_riDescription = a})

-- | The billing product codes. Your account must be authorized to specify billing product codes. Otherwise, you can use the AWS Marketplace to bill for the use of an AMI.
riBillingProducts :: Lens' RegisterImage [Text]
riBillingProducts = lens _riBillingProducts (\s a -> s {_riBillingProducts = a}) . _Default . _Coerce

-- | Set to @true@ to enable enhanced networking with ENA for the AMI and any instances that you launch from the AMI. This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
riEnaSupport :: Lens' RegisterImage (Maybe Bool)
riEnaSupport = lens _riEnaSupport (\s a -> s {_riEnaSupport = a})

-- | The full path to your AMI manifest in Amazon S3 storage. The specified bucket must have the @aws-exec-read@ canned access control list (ACL) to ensure that it can be accessed by Amazon EC2. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl Canned ACLs> in the /Amazon S3 Service Developer Guide/ .
riImageLocation :: Lens' RegisterImage (Maybe Text)
riImageLocation = lens _riImageLocation (\s a -> s {_riImageLocation = a})

-- | A name for your AMI. Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
riName :: Lens' RegisterImage Text
riName = lens _riName (\s a -> s {_riName = a})

instance AWSRequest RegisterImage where
  type Rs RegisterImage = RegisterImageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          RegisterImageResponse'
            <$> (x .@? "imageId") <*> (pure (fromEnum s))
      )

instance Hashable RegisterImage

instance NFData RegisterImage

instance ToHeaders RegisterImage where
  toHeaders = const mempty

instance ToPath RegisterImage where
  toPath = const "/"

instance ToQuery RegisterImage where
  toQuery RegisterImage' {..} =
    mconcat
      [ "Action" =: ("RegisterImage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "VirtualizationType" =: _riVirtualizationType,
        "RootDeviceName" =: _riRootDeviceName,
        "DryRun" =: _riDryRun,
        "RamdiskId" =: _riRAMDiskId,
        "Architecture" =: _riArchitecture,
        "SriovNetSupport" =: _riSRIOVNetSupport,
        toQuery
          ( toQueryList "BlockDeviceMapping"
              <$> _riBlockDeviceMappings
          ),
        "KernelId" =: _riKernelId,
        "Description" =: _riDescription,
        toQuery
          ( toQueryList "BillingProduct"
              <$> _riBillingProducts
          ),
        "EnaSupport" =: _riEnaSupport,
        "ImageLocation" =: _riImageLocation,
        "Name" =: _riName
      ]

-- | Contains the output of RegisterImage.
--
--
--
-- /See:/ 'registerImageResponse' smart constructor.
data RegisterImageResponse = RegisterImageResponse'
  { _rirrsImageId ::
      !(Maybe Text),
    _rirrsResponseStatus ::
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

-- | Creates a value of 'RegisterImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rirrsImageId' - The ID of the newly registered AMI.
--
-- * 'rirrsResponseStatus' - -- | The response status code.
registerImageResponse ::
  -- | 'rirrsResponseStatus'
  Int ->
  RegisterImageResponse
registerImageResponse pResponseStatus_ =
  RegisterImageResponse'
    { _rirrsImageId = Nothing,
      _rirrsResponseStatus = pResponseStatus_
    }

-- | The ID of the newly registered AMI.
rirrsImageId :: Lens' RegisterImageResponse (Maybe Text)
rirrsImageId = lens _rirrsImageId (\s a -> s {_rirrsImageId = a})

-- | -- | The response status code.
rirrsResponseStatus :: Lens' RegisterImageResponse Int
rirrsResponseStatus = lens _rirrsResponseStatus (\s a -> s {_rirrsResponseStatus = a})

instance NFData RegisterImageResponse

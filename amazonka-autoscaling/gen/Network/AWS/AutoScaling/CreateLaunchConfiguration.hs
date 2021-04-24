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
-- Module      : Network.AWS.AutoScaling.CreateLaunchConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a launch configuration.
--
--
-- If you exceed your maximum limit of launch configurations, the call fails. To query this limit, call the 'DescribeAccountLimits' API. For information about updating this limit, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html Amazon EC2 Auto Scaling service quotas> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html Launch configurations> in the /Amazon EC2 Auto Scaling User Guide/ .
module Network.AWS.AutoScaling.CreateLaunchConfiguration
  ( -- * Creating a Request
    createLaunchConfiguration,
    CreateLaunchConfiguration,

    -- * Request Lenses
    clcInstanceId,
    clcInstanceType,
    clcEBSOptimized,
    clcUserData,
    clcRAMDiskId,
    clcClassicLinkVPCSecurityGroups,
    clcSpotPrice,
    clcImageId,
    clcAssociatePublicIPAddress,
    clcSecurityGroups,
    clcIAMInstanceProfile,
    clcClassicLinkVPCId,
    clcBlockDeviceMappings,
    clcKernelId,
    clcPlacementTenancy,
    clcKeyName,
    clcInstanceMonitoring,
    clcMetadataOptions,
    clcLaunchConfigurationName,

    -- * Destructuring the Response
    createLaunchConfigurationResponse,
    CreateLaunchConfigurationResponse,
  )
where

import Network.AWS.AutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createLaunchConfiguration' smart constructor.
data CreateLaunchConfiguration = CreateLaunchConfiguration'
  { _clcInstanceId ::
      !(Maybe Text),
    _clcInstanceType ::
      !(Maybe Text),
    _clcEBSOptimized ::
      !(Maybe Bool),
    _clcUserData ::
      !(Maybe Text),
    _clcRAMDiskId ::
      !(Maybe Text),
    _clcClassicLinkVPCSecurityGroups ::
      !(Maybe [Text]),
    _clcSpotPrice ::
      !(Maybe Text),
    _clcImageId ::
      !(Maybe Text),
    _clcAssociatePublicIPAddress ::
      !(Maybe Bool),
    _clcSecurityGroups ::
      !(Maybe [Text]),
    _clcIAMInstanceProfile ::
      !(Maybe Text),
    _clcClassicLinkVPCId ::
      !(Maybe Text),
    _clcBlockDeviceMappings ::
      !( Maybe
           [BlockDeviceMapping]
       ),
    _clcKernelId ::
      !(Maybe Text),
    _clcPlacementTenancy ::
      !(Maybe Text),
    _clcKeyName ::
      !(Maybe Text),
    _clcInstanceMonitoring ::
      !( Maybe
           InstanceMonitoring
       ),
    _clcMetadataOptions ::
      !( Maybe
           InstanceMetadataOptions
       ),
    _clcLaunchConfigurationName ::
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

-- | Creates a value of 'CreateLaunchConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clcInstanceId' - The ID of the instance to use to create the launch configuration. The new launch configuration derives attributes from the instance, except for the block device mapping. To create a launch configuration with a block device mapping or override any other instance attributes, specify them as part of the same request. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html Creating a launch configuration using an EC2 instance> in the /Amazon EC2 Auto Scaling User Guide/ . If you do not specify @InstanceId@ , you must specify both @ImageId@ and @InstanceType@ .
--
-- * 'clcInstanceType' - Specifies the instance type of the EC2 instance. For information about available instance types, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes Available Instance Types> in the /Amazon EC2 User Guide for Linux Instances/ . If you do not specify @InstanceId@ , you must specify @InstanceType@ .
--
-- * 'clcEBSOptimized' - Specifies whether the launch configuration is optimized for EBS I/O (@true@ ) or not (@false@ ). The optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization is not available with all instance types. Additional fees are incurred when you enable EBS optimization for an instance type that is not EBS-optimized by default. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-Optimized Instances> in the /Amazon EC2 User Guide for Linux Instances/ . The default value is @false@ .
--
-- * 'clcUserData' - The user data to make available to the launched EC2 instances. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> (Linux) and <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html Instance metadata and user data> (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.
--
-- * 'clcRAMDiskId' - The ID of the RAM disk to select.
--
-- * 'clcClassicLinkVPCSecurityGroups' - The IDs of one or more security groups for the specified ClassicLink-enabled VPC. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ . If you specify the @ClassicLinkVPCId@ parameter, you must specify this parameter.
--
-- * 'clcSpotPrice' - The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot price. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html Requesting Spot Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- * 'clcImageId' - The ID of the Amazon Machine Image (AMI) that was assigned during registration. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html Finding an AMI> in the /Amazon EC2 User Guide for Linux Instances/ . If you do not specify @InstanceId@ , you must specify @ImageId@ .
--
-- * 'clcAssociatePublicIPAddress' - For Auto Scaling groups that are running in a virtual private cloud (VPC), specifies whether to assign a public IP address to the group's instances. If you specify @true@ , each instance in the Auto Scaling group receives a unique public IP address. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html Launching Auto Scaling instances in a VPC> in the /Amazon EC2 Auto Scaling User Guide/ . If you specify this parameter, you must specify at least one subnet for @VPCZoneIdentifier@ when you create your group.
--
-- * 'clcSecurityGroups' - A list that contains the security groups to assign to the instances in the Auto Scaling group. [EC2-VPC] Specify the security group IDs. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ . [EC2-Classic] Specify either the security group names or the security group IDs. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html Amazon EC2 Security Groups> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'clcIAMInstanceProfile' - The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance. The instance profile contains the IAM role. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html IAM role for applications that run on Amazon EC2 instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- * 'clcClassicLinkVPCId' - The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ . This parameter can only be used if you are launching EC2-Classic instances.
--
-- * 'clcBlockDeviceMappings' - A block device mapping, which specifies the block devices for the instance. You can specify virtual devices and EBS volumes. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html Block Device Mapping> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'clcKernelId' - The ID of the kernel associated with the AMI.
--
-- * 'clcPlacementTenancy' - The tenancy of the instance. An instance with @dedicated@ tenancy runs on isolated, single-tenant hardware and can only be launched into a VPC. To launch dedicated instances into a shared tenancy VPC (a VPC with the instance placement tenancy attribute set to @default@ ), you must set the value of this parameter to @dedicated@ . If you specify @PlacementTenancy@ , you must specify at least one subnet for @VPCZoneIdentifier@ when you create your group. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html Configuring instance tenancy with Amazon EC2 Auto Scaling> in the /Amazon EC2 Auto Scaling User Guide/ . Valid Values: @default@ | @dedicated@
--
-- * 'clcKeyName' - The name of the key pair. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Amazon EC2 Key Pairs> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- * 'clcInstanceMonitoring' - Controls whether instances in this group are launched with detailed (@true@ ) or basic (@false@ ) monitoring. The default value is @true@ (enabled). /Important:/ When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and your account is charged a fee. When you disable detailed monitoring, CloudWatch generates metrics every 5 minutes. For more information, see <https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html Configure Monitoring for Auto Scaling Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- * 'clcMetadataOptions' - The metadata options for the instances. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds Configuring the Instance Metadata Options> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- * 'clcLaunchConfigurationName' - The name of the launch configuration. This name must be unique per Region per account.
createLaunchConfiguration ::
  -- | 'clcLaunchConfigurationName'
  Text ->
  CreateLaunchConfiguration
createLaunchConfiguration pLaunchConfigurationName_ =
  CreateLaunchConfiguration'
    { _clcInstanceId =
        Nothing,
      _clcInstanceType = Nothing,
      _clcEBSOptimized = Nothing,
      _clcUserData = Nothing,
      _clcRAMDiskId = Nothing,
      _clcClassicLinkVPCSecurityGroups = Nothing,
      _clcSpotPrice = Nothing,
      _clcImageId = Nothing,
      _clcAssociatePublicIPAddress = Nothing,
      _clcSecurityGroups = Nothing,
      _clcIAMInstanceProfile = Nothing,
      _clcClassicLinkVPCId = Nothing,
      _clcBlockDeviceMappings = Nothing,
      _clcKernelId = Nothing,
      _clcPlacementTenancy = Nothing,
      _clcKeyName = Nothing,
      _clcInstanceMonitoring = Nothing,
      _clcMetadataOptions = Nothing,
      _clcLaunchConfigurationName =
        pLaunchConfigurationName_
    }

-- | The ID of the instance to use to create the launch configuration. The new launch configuration derives attributes from the instance, except for the block device mapping. To create a launch configuration with a block device mapping or override any other instance attributes, specify them as part of the same request. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html Creating a launch configuration using an EC2 instance> in the /Amazon EC2 Auto Scaling User Guide/ . If you do not specify @InstanceId@ , you must specify both @ImageId@ and @InstanceType@ .
clcInstanceId :: Lens' CreateLaunchConfiguration (Maybe Text)
clcInstanceId = lens _clcInstanceId (\s a -> s {_clcInstanceId = a})

-- | Specifies the instance type of the EC2 instance. For information about available instance types, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes Available Instance Types> in the /Amazon EC2 User Guide for Linux Instances/ . If you do not specify @InstanceId@ , you must specify @InstanceType@ .
clcInstanceType :: Lens' CreateLaunchConfiguration (Maybe Text)
clcInstanceType = lens _clcInstanceType (\s a -> s {_clcInstanceType = a})

-- | Specifies whether the launch configuration is optimized for EBS I/O (@true@ ) or not (@false@ ). The optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization is not available with all instance types. Additional fees are incurred when you enable EBS optimization for an instance type that is not EBS-optimized by default. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-Optimized Instances> in the /Amazon EC2 User Guide for Linux Instances/ . The default value is @false@ .
clcEBSOptimized :: Lens' CreateLaunchConfiguration (Maybe Bool)
clcEBSOptimized = lens _clcEBSOptimized (\s a -> s {_clcEBSOptimized = a})

-- | The user data to make available to the launched EC2 instances. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> (Linux) and <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html Instance metadata and user data> (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.
clcUserData :: Lens' CreateLaunchConfiguration (Maybe Text)
clcUserData = lens _clcUserData (\s a -> s {_clcUserData = a})

-- | The ID of the RAM disk to select.
clcRAMDiskId :: Lens' CreateLaunchConfiguration (Maybe Text)
clcRAMDiskId = lens _clcRAMDiskId (\s a -> s {_clcRAMDiskId = a})

-- | The IDs of one or more security groups for the specified ClassicLink-enabled VPC. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ . If you specify the @ClassicLinkVPCId@ parameter, you must specify this parameter.
clcClassicLinkVPCSecurityGroups :: Lens' CreateLaunchConfiguration [Text]
clcClassicLinkVPCSecurityGroups = lens _clcClassicLinkVPCSecurityGroups (\s a -> s {_clcClassicLinkVPCSecurityGroups = a}) . _Default . _Coerce

-- | The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot price. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html Requesting Spot Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
clcSpotPrice :: Lens' CreateLaunchConfiguration (Maybe Text)
clcSpotPrice = lens _clcSpotPrice (\s a -> s {_clcSpotPrice = a})

-- | The ID of the Amazon Machine Image (AMI) that was assigned during registration. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html Finding an AMI> in the /Amazon EC2 User Guide for Linux Instances/ . If you do not specify @InstanceId@ , you must specify @ImageId@ .
clcImageId :: Lens' CreateLaunchConfiguration (Maybe Text)
clcImageId = lens _clcImageId (\s a -> s {_clcImageId = a})

-- | For Auto Scaling groups that are running in a virtual private cloud (VPC), specifies whether to assign a public IP address to the group's instances. If you specify @true@ , each instance in the Auto Scaling group receives a unique public IP address. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html Launching Auto Scaling instances in a VPC> in the /Amazon EC2 Auto Scaling User Guide/ . If you specify this parameter, you must specify at least one subnet for @VPCZoneIdentifier@ when you create your group.
clcAssociatePublicIPAddress :: Lens' CreateLaunchConfiguration (Maybe Bool)
clcAssociatePublicIPAddress = lens _clcAssociatePublicIPAddress (\s a -> s {_clcAssociatePublicIPAddress = a})

-- | A list that contains the security groups to assign to the instances in the Auto Scaling group. [EC2-VPC] Specify the security group IDs. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ . [EC2-Classic] Specify either the security group names or the security group IDs. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html Amazon EC2 Security Groups> in the /Amazon EC2 User Guide for Linux Instances/ .
clcSecurityGroups :: Lens' CreateLaunchConfiguration [Text]
clcSecurityGroups = lens _clcSecurityGroups (\s a -> s {_clcSecurityGroups = a}) . _Default . _Coerce

-- | The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance. The instance profile contains the IAM role. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html IAM role for applications that run on Amazon EC2 instances> in the /Amazon EC2 Auto Scaling User Guide/ .
clcIAMInstanceProfile :: Lens' CreateLaunchConfiguration (Maybe Text)
clcIAMInstanceProfile = lens _clcIAMInstanceProfile (\s a -> s {_clcIAMInstanceProfile = a})

-- | The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ . This parameter can only be used if you are launching EC2-Classic instances.
clcClassicLinkVPCId :: Lens' CreateLaunchConfiguration (Maybe Text)
clcClassicLinkVPCId = lens _clcClassicLinkVPCId (\s a -> s {_clcClassicLinkVPCId = a})

-- | A block device mapping, which specifies the block devices for the instance. You can specify virtual devices and EBS volumes. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html Block Device Mapping> in the /Amazon EC2 User Guide for Linux Instances/ .
clcBlockDeviceMappings :: Lens' CreateLaunchConfiguration [BlockDeviceMapping]
clcBlockDeviceMappings = lens _clcBlockDeviceMappings (\s a -> s {_clcBlockDeviceMappings = a}) . _Default . _Coerce

-- | The ID of the kernel associated with the AMI.
clcKernelId :: Lens' CreateLaunchConfiguration (Maybe Text)
clcKernelId = lens _clcKernelId (\s a -> s {_clcKernelId = a})

-- | The tenancy of the instance. An instance with @dedicated@ tenancy runs on isolated, single-tenant hardware and can only be launched into a VPC. To launch dedicated instances into a shared tenancy VPC (a VPC with the instance placement tenancy attribute set to @default@ ), you must set the value of this parameter to @dedicated@ . If you specify @PlacementTenancy@ , you must specify at least one subnet for @VPCZoneIdentifier@ when you create your group. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html Configuring instance tenancy with Amazon EC2 Auto Scaling> in the /Amazon EC2 Auto Scaling User Guide/ . Valid Values: @default@ | @dedicated@
clcPlacementTenancy :: Lens' CreateLaunchConfiguration (Maybe Text)
clcPlacementTenancy = lens _clcPlacementTenancy (\s a -> s {_clcPlacementTenancy = a})

-- | The name of the key pair. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Amazon EC2 Key Pairs> in the /Amazon EC2 User Guide for Linux Instances/ .
clcKeyName :: Lens' CreateLaunchConfiguration (Maybe Text)
clcKeyName = lens _clcKeyName (\s a -> s {_clcKeyName = a})

-- | Controls whether instances in this group are launched with detailed (@true@ ) or basic (@false@ ) monitoring. The default value is @true@ (enabled). /Important:/ When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and your account is charged a fee. When you disable detailed monitoring, CloudWatch generates metrics every 5 minutes. For more information, see <https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html Configure Monitoring for Auto Scaling Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
clcInstanceMonitoring :: Lens' CreateLaunchConfiguration (Maybe InstanceMonitoring)
clcInstanceMonitoring = lens _clcInstanceMonitoring (\s a -> s {_clcInstanceMonitoring = a})

-- | The metadata options for the instances. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds Configuring the Instance Metadata Options> in the /Amazon EC2 Auto Scaling User Guide/ .
clcMetadataOptions :: Lens' CreateLaunchConfiguration (Maybe InstanceMetadataOptions)
clcMetadataOptions = lens _clcMetadataOptions (\s a -> s {_clcMetadataOptions = a})

-- | The name of the launch configuration. This name must be unique per Region per account.
clcLaunchConfigurationName :: Lens' CreateLaunchConfiguration Text
clcLaunchConfigurationName = lens _clcLaunchConfigurationName (\s a -> s {_clcLaunchConfigurationName = a})

instance AWSRequest CreateLaunchConfiguration where
  type
    Rs CreateLaunchConfiguration =
      CreateLaunchConfigurationResponse
  request = postQuery autoScaling
  response =
    receiveNull CreateLaunchConfigurationResponse'

instance Hashable CreateLaunchConfiguration

instance NFData CreateLaunchConfiguration

instance ToHeaders CreateLaunchConfiguration where
  toHeaders = const mempty

instance ToPath CreateLaunchConfiguration where
  toPath = const "/"

instance ToQuery CreateLaunchConfiguration where
  toQuery CreateLaunchConfiguration' {..} =
    mconcat
      [ "Action"
          =: ("CreateLaunchConfiguration" :: ByteString),
        "Version" =: ("2011-01-01" :: ByteString),
        "InstanceId" =: _clcInstanceId,
        "InstanceType" =: _clcInstanceType,
        "EbsOptimized" =: _clcEBSOptimized,
        "UserData" =: _clcUserData,
        "RamdiskId" =: _clcRAMDiskId,
        "ClassicLinkVPCSecurityGroups"
          =: toQuery
            ( toQueryList "member"
                <$> _clcClassicLinkVPCSecurityGroups
            ),
        "SpotPrice" =: _clcSpotPrice,
        "ImageId" =: _clcImageId,
        "AssociatePublicIpAddress"
          =: _clcAssociatePublicIPAddress,
        "SecurityGroups"
          =: toQuery
            (toQueryList "member" <$> _clcSecurityGroups),
        "IamInstanceProfile" =: _clcIAMInstanceProfile,
        "ClassicLinkVPCId" =: _clcClassicLinkVPCId,
        "BlockDeviceMappings"
          =: toQuery
            (toQueryList "member" <$> _clcBlockDeviceMappings),
        "KernelId" =: _clcKernelId,
        "PlacementTenancy" =: _clcPlacementTenancy,
        "KeyName" =: _clcKeyName,
        "InstanceMonitoring" =: _clcInstanceMonitoring,
        "MetadataOptions" =: _clcMetadataOptions,
        "LaunchConfigurationName"
          =: _clcLaunchConfigurationName
      ]

-- | /See:/ 'createLaunchConfigurationResponse' smart constructor.
data CreateLaunchConfigurationResponse = CreateLaunchConfigurationResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateLaunchConfigurationResponse' with the minimum fields required to make a request.
createLaunchConfigurationResponse ::
  CreateLaunchConfigurationResponse
createLaunchConfigurationResponse =
  CreateLaunchConfigurationResponse'

instance NFData CreateLaunchConfigurationResponse

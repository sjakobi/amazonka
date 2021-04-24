{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RequestLaunchTemplateData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RequestLaunchTemplateData where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CreditSpecificationRequest
import Network.AWS.EC2.Types.ElasticGpuSpecification
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMappingRequest
import Network.AWS.EC2.Types.LaunchTemplateCPUOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateElasticInferenceAccelerator
import Network.AWS.EC2.Types.LaunchTemplateEnclaveOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateHibernationOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateIAMInstanceProfileSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateInstanceMarketOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptionsRequest
import Network.AWS.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplateLicenseConfigurationRequest
import Network.AWS.EC2.Types.LaunchTemplatePlacementRequest
import Network.AWS.EC2.Types.LaunchTemplateTagSpecificationRequest
import Network.AWS.EC2.Types.LaunchTemplatesMonitoringRequest
import Network.AWS.EC2.Types.ShutdownBehavior
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The information to include in the launch template.
--
--
--
-- /See:/ 'requestLaunchTemplateData' smart constructor.
data RequestLaunchTemplateData = RequestLaunchTemplateData'
  { _rSecurityGroupIds ::
      !(Maybe [Text]),
    _rTagSpecifications ::
      !( Maybe
           [LaunchTemplateTagSpecificationRequest]
       ),
    _rElasticGpuSpecifications ::
      !( Maybe
           [ElasticGpuSpecification]
       ),
    _rInstanceType ::
      !( Maybe
           InstanceType
       ),
    _rCapacityReservationSpecification ::
      !( Maybe
           LaunchTemplateCapacityReservationSpecificationRequest
       ),
    _rEBSOptimized ::
      !(Maybe Bool),
    _rUserData ::
      !(Maybe Text),
    _rPlacement ::
      !( Maybe
           LaunchTemplatePlacementRequest
       ),
    _rRamDiskId ::
      !(Maybe Text),
    _rCreditSpecification ::
      !( Maybe
           CreditSpecificationRequest
       ),
    _rInstanceMarketOptions ::
      !( Maybe
           LaunchTemplateInstanceMarketOptionsRequest
       ),
    _rLicenseSpecifications ::
      !( Maybe
           [LaunchTemplateLicenseConfigurationRequest]
       ),
    _rInstanceInitiatedShutdownBehavior ::
      !( Maybe
           ShutdownBehavior
       ),
    _rImageId ::
      !(Maybe Text),
    _rSecurityGroups ::
      !(Maybe [Text]),
    _rElasticInferenceAccelerators ::
      !( Maybe
           [LaunchTemplateElasticInferenceAccelerator]
       ),
    _rIAMInstanceProfile ::
      !( Maybe
           LaunchTemplateIAMInstanceProfileSpecificationRequest
       ),
    _rHibernationOptions ::
      !( Maybe
           LaunchTemplateHibernationOptionsRequest
       ),
    _rMonitoring ::
      !( Maybe
           LaunchTemplatesMonitoringRequest
       ),
    _rBlockDeviceMappings ::
      !( Maybe
           [LaunchTemplateBlockDeviceMappingRequest]
       ),
    _rEnclaveOptions ::
      !( Maybe
           LaunchTemplateEnclaveOptionsRequest
       ),
    _rKernelId ::
      !(Maybe Text),
    _rCPUOptions ::
      !( Maybe
           LaunchTemplateCPUOptionsRequest
       ),
    _rKeyName ::
      !(Maybe Text),
    _rNetworkInterfaces ::
      !( Maybe
           [LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]
       ),
    _rDisableAPITermination ::
      !(Maybe Bool),
    _rMetadataOptions ::
      !( Maybe
           LaunchTemplateInstanceMetadataOptionsRequest
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

-- | Creates a value of 'RequestLaunchTemplateData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rSecurityGroupIds' - One or more security group IDs. You can create a security group using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html CreateSecurityGroup> . You cannot specify both a security group ID and security name in the same request.
--
-- * 'rTagSpecifications' - The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
--
-- * 'rElasticGpuSpecifications' - An elastic GPU to associate with the instance.
--
-- * 'rInstanceType' - The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance Types> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rCapacityReservationSpecification' - The Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to @open@ , which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
--
-- * 'rEBSOptimized' - Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
--
-- * 'rUserData' - The Base64-encoded user data to make available to the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html Running Commands on Your Linux Instance at Launch> (Linux) and <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data Adding User Data> (Windows).
--
-- * 'rPlacement' - The placement for the instance.
--
-- * 'rRamDiskId' - The ID of the RAM disk. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html User Provided Kernels> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rCreditSpecification' - The credit option for CPU usage of the instance. Valid for T2, T3, or T3a instances only.
--
-- * 'rInstanceMarketOptions' - The market (purchasing) option for the instances.
--
-- * 'rLicenseSpecifications' - The license configurations.
--
-- * 'rInstanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown). Default: @stop@
--
-- * 'rImageId' - The ID of the AMI.
--
-- * 'rSecurityGroups' - [EC2-Classic, default VPC] One or more security group names. For a nondefault VPC, you must use security group IDs instead. You cannot specify both a security group ID and security name in the same request.
--
-- * 'rElasticInferenceAccelerators' - The elastic inference accelerator for the instance.
--
-- * 'rIAMInstanceProfile' - The name or Amazon Resource Name (ARN) of an IAM instance profile.
--
-- * 'rHibernationOptions' - Indicates whether an instance is enabled for hibernation. This parameter is valid only if the instance meets the <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites hibernation prerequisites> . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate Your Instance> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rMonitoring' - The monitoring for the instance.
--
-- * 'rBlockDeviceMappings' - The block device mapping.
--
-- * 'rEnclaveOptions' - Indicates whether the instance is enabled for AWS Nitro Enclaves. For more information, see <https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html What is AWS Nitro Enclaves?> in the /AWS Nitro Enclaves User Guide/ . You can't enable AWS Nitro Enclaves and hibernation on the same instance.
--
-- * 'rKernelId' - The ID of the kernel. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html User Provided Kernels> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rCPUOptions' - The CPU options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU Options> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rKeyName' - The name of the key pair. You can create a key pair using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html CreateKeyPair> or <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html ImportKeyPair> . /Important:/ If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
--
-- * 'rNetworkInterfaces' - One or more network interfaces. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
--
-- * 'rDisableAPITermination' - If you set this parameter to @true@ , you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html ModifyInstanceAttribute> . Alternatively, if you set @InstanceInitiatedShutdownBehavior@ to @terminate@ , you can terminate the instance by running the shutdown command from the instance.
--
-- * 'rMetadataOptions' - The metadata options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance Metadata and User Data> in the /Amazon Elastic Compute Cloud User Guide/ .
requestLaunchTemplateData ::
  RequestLaunchTemplateData
requestLaunchTemplateData =
  RequestLaunchTemplateData'
    { _rSecurityGroupIds =
        Nothing,
      _rTagSpecifications = Nothing,
      _rElasticGpuSpecifications = Nothing,
      _rInstanceType = Nothing,
      _rCapacityReservationSpecification = Nothing,
      _rEBSOptimized = Nothing,
      _rUserData = Nothing,
      _rPlacement = Nothing,
      _rRamDiskId = Nothing,
      _rCreditSpecification = Nothing,
      _rInstanceMarketOptions = Nothing,
      _rLicenseSpecifications = Nothing,
      _rInstanceInitiatedShutdownBehavior = Nothing,
      _rImageId = Nothing,
      _rSecurityGroups = Nothing,
      _rElasticInferenceAccelerators = Nothing,
      _rIAMInstanceProfile = Nothing,
      _rHibernationOptions = Nothing,
      _rMonitoring = Nothing,
      _rBlockDeviceMappings = Nothing,
      _rEnclaveOptions = Nothing,
      _rKernelId = Nothing,
      _rCPUOptions = Nothing,
      _rKeyName = Nothing,
      _rNetworkInterfaces = Nothing,
      _rDisableAPITermination = Nothing,
      _rMetadataOptions = Nothing
    }

-- | One or more security group IDs. You can create a security group using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html CreateSecurityGroup> . You cannot specify both a security group ID and security name in the same request.
rSecurityGroupIds :: Lens' RequestLaunchTemplateData [Text]
rSecurityGroupIds = lens _rSecurityGroupIds (\s a -> s {_rSecurityGroupIds = a}) . _Default . _Coerce

-- | The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
rTagSpecifications :: Lens' RequestLaunchTemplateData [LaunchTemplateTagSpecificationRequest]
rTagSpecifications = lens _rTagSpecifications (\s a -> s {_rTagSpecifications = a}) . _Default . _Coerce

-- | An elastic GPU to associate with the instance.
rElasticGpuSpecifications :: Lens' RequestLaunchTemplateData [ElasticGpuSpecification]
rElasticGpuSpecifications = lens _rElasticGpuSpecifications (\s a -> s {_rElasticGpuSpecifications = a}) . _Default . _Coerce

-- | The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance Types> in the /Amazon Elastic Compute Cloud User Guide/ .
rInstanceType :: Lens' RequestLaunchTemplateData (Maybe InstanceType)
rInstanceType = lens _rInstanceType (\s a -> s {_rInstanceType = a})

-- | The Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to @open@ , which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
rCapacityReservationSpecification :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateCapacityReservationSpecificationRequest)
rCapacityReservationSpecification = lens _rCapacityReservationSpecification (\s a -> s {_rCapacityReservationSpecification = a})

-- | Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
rEBSOptimized :: Lens' RequestLaunchTemplateData (Maybe Bool)
rEBSOptimized = lens _rEBSOptimized (\s a -> s {_rEBSOptimized = a})

-- | The Base64-encoded user data to make available to the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html Running Commands on Your Linux Instance at Launch> (Linux) and <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data Adding User Data> (Windows).
rUserData :: Lens' RequestLaunchTemplateData (Maybe Text)
rUserData = lens _rUserData (\s a -> s {_rUserData = a})

-- | The placement for the instance.
rPlacement :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplatePlacementRequest)
rPlacement = lens _rPlacement (\s a -> s {_rPlacement = a})

-- | The ID of the RAM disk. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html User Provided Kernels> in the /Amazon Elastic Compute Cloud User Guide/ .
rRamDiskId :: Lens' RequestLaunchTemplateData (Maybe Text)
rRamDiskId = lens _rRamDiskId (\s a -> s {_rRamDiskId = a})

-- | The credit option for CPU usage of the instance. Valid for T2, T3, or T3a instances only.
rCreditSpecification :: Lens' RequestLaunchTemplateData (Maybe CreditSpecificationRequest)
rCreditSpecification = lens _rCreditSpecification (\s a -> s {_rCreditSpecification = a})

-- | The market (purchasing) option for the instances.
rInstanceMarketOptions :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateInstanceMarketOptionsRequest)
rInstanceMarketOptions = lens _rInstanceMarketOptions (\s a -> s {_rInstanceMarketOptions = a})

-- | The license configurations.
rLicenseSpecifications :: Lens' RequestLaunchTemplateData [LaunchTemplateLicenseConfigurationRequest]
rLicenseSpecifications = lens _rLicenseSpecifications (\s a -> s {_rLicenseSpecifications = a}) . _Default . _Coerce

-- | Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown). Default: @stop@
rInstanceInitiatedShutdownBehavior :: Lens' RequestLaunchTemplateData (Maybe ShutdownBehavior)
rInstanceInitiatedShutdownBehavior = lens _rInstanceInitiatedShutdownBehavior (\s a -> s {_rInstanceInitiatedShutdownBehavior = a})

-- | The ID of the AMI.
rImageId :: Lens' RequestLaunchTemplateData (Maybe Text)
rImageId = lens _rImageId (\s a -> s {_rImageId = a})

-- | [EC2-Classic, default VPC] One or more security group names. For a nondefault VPC, you must use security group IDs instead. You cannot specify both a security group ID and security name in the same request.
rSecurityGroups :: Lens' RequestLaunchTemplateData [Text]
rSecurityGroups = lens _rSecurityGroups (\s a -> s {_rSecurityGroups = a}) . _Default . _Coerce

-- | The elastic inference accelerator for the instance.
rElasticInferenceAccelerators :: Lens' RequestLaunchTemplateData [LaunchTemplateElasticInferenceAccelerator]
rElasticInferenceAccelerators = lens _rElasticInferenceAccelerators (\s a -> s {_rElasticInferenceAccelerators = a}) . _Default . _Coerce

-- | The name or Amazon Resource Name (ARN) of an IAM instance profile.
rIAMInstanceProfile :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateIAMInstanceProfileSpecificationRequest)
rIAMInstanceProfile = lens _rIAMInstanceProfile (\s a -> s {_rIAMInstanceProfile = a})

-- | Indicates whether an instance is enabled for hibernation. This parameter is valid only if the instance meets the <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites hibernation prerequisites> . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate Your Instance> in the /Amazon Elastic Compute Cloud User Guide/ .
rHibernationOptions :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateHibernationOptionsRequest)
rHibernationOptions = lens _rHibernationOptions (\s a -> s {_rHibernationOptions = a})

-- | The monitoring for the instance.
rMonitoring :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplatesMonitoringRequest)
rMonitoring = lens _rMonitoring (\s a -> s {_rMonitoring = a})

-- | The block device mapping.
rBlockDeviceMappings :: Lens' RequestLaunchTemplateData [LaunchTemplateBlockDeviceMappingRequest]
rBlockDeviceMappings = lens _rBlockDeviceMappings (\s a -> s {_rBlockDeviceMappings = a}) . _Default . _Coerce

-- | Indicates whether the instance is enabled for AWS Nitro Enclaves. For more information, see <https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html What is AWS Nitro Enclaves?> in the /AWS Nitro Enclaves User Guide/ . You can't enable AWS Nitro Enclaves and hibernation on the same instance.
rEnclaveOptions :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateEnclaveOptionsRequest)
rEnclaveOptions = lens _rEnclaveOptions (\s a -> s {_rEnclaveOptions = a})

-- | The ID of the kernel. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html User Provided Kernels> in the /Amazon Elastic Compute Cloud User Guide/ .
rKernelId :: Lens' RequestLaunchTemplateData (Maybe Text)
rKernelId = lens _rKernelId (\s a -> s {_rKernelId = a})

-- | The CPU options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU Options> in the /Amazon Elastic Compute Cloud User Guide/ .
rCPUOptions :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateCPUOptionsRequest)
rCPUOptions = lens _rCPUOptions (\s a -> s {_rCPUOptions = a})

-- | The name of the key pair. You can create a key pair using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html CreateKeyPair> or <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html ImportKeyPair> . /Important:/ If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
rKeyName :: Lens' RequestLaunchTemplateData (Maybe Text)
rKeyName = lens _rKeyName (\s a -> s {_rKeyName = a})

-- | One or more network interfaces. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
rNetworkInterfaces :: Lens' RequestLaunchTemplateData [LaunchTemplateInstanceNetworkInterfaceSpecificationRequest]
rNetworkInterfaces = lens _rNetworkInterfaces (\s a -> s {_rNetworkInterfaces = a}) . _Default . _Coerce

-- | If you set this parameter to @true@ , you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html ModifyInstanceAttribute> . Alternatively, if you set @InstanceInitiatedShutdownBehavior@ to @terminate@ , you can terminate the instance by running the shutdown command from the instance.
rDisableAPITermination :: Lens' RequestLaunchTemplateData (Maybe Bool)
rDisableAPITermination = lens _rDisableAPITermination (\s a -> s {_rDisableAPITermination = a})

-- | The metadata options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance Metadata and User Data> in the /Amazon Elastic Compute Cloud User Guide/ .
rMetadataOptions :: Lens' RequestLaunchTemplateData (Maybe LaunchTemplateInstanceMetadataOptionsRequest)
rMetadataOptions = lens _rMetadataOptions (\s a -> s {_rMetadataOptions = a})

instance Hashable RequestLaunchTemplateData

instance NFData RequestLaunchTemplateData

instance ToQuery RequestLaunchTemplateData where
  toQuery RequestLaunchTemplateData' {..} =
    mconcat
      [ toQuery
          ( toQueryList "SecurityGroupId"
              <$> _rSecurityGroupIds
          ),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _rTagSpecifications
          ),
        toQuery
          ( toQueryList "ElasticGpuSpecification"
              <$> _rElasticGpuSpecifications
          ),
        "InstanceType" =: _rInstanceType,
        "CapacityReservationSpecification"
          =: _rCapacityReservationSpecification,
        "EbsOptimized" =: _rEBSOptimized,
        "UserData" =: _rUserData,
        "Placement" =: _rPlacement,
        "RamDiskId" =: _rRamDiskId,
        "CreditSpecification" =: _rCreditSpecification,
        "InstanceMarketOptions" =: _rInstanceMarketOptions,
        toQuery
          ( toQueryList "LicenseSpecification"
              <$> _rLicenseSpecifications
          ),
        "InstanceInitiatedShutdownBehavior"
          =: _rInstanceInitiatedShutdownBehavior,
        "ImageId" =: _rImageId,
        toQuery
          (toQueryList "SecurityGroup" <$> _rSecurityGroups),
        toQuery
          ( toQueryList "ElasticInferenceAccelerator"
              <$> _rElasticInferenceAccelerators
          ),
        "IamInstanceProfile" =: _rIAMInstanceProfile,
        "HibernationOptions" =: _rHibernationOptions,
        "Monitoring" =: _rMonitoring,
        toQuery
          ( toQueryList "BlockDeviceMapping"
              <$> _rBlockDeviceMappings
          ),
        "EnclaveOptions" =: _rEnclaveOptions,
        "KernelId" =: _rKernelId,
        "CpuOptions" =: _rCPUOptions,
        "KeyName" =: _rKeyName,
        toQuery
          ( toQueryList "NetworkInterface"
              <$> _rNetworkInterfaces
          ),
        "DisableApiTermination" =: _rDisableAPITermination,
        "MetadataOptions" =: _rMetadataOptions
      ]

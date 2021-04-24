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
-- Module      : Network.AWS.EC2.RunInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches the specified number of instances using an AMI for which you have permissions.
--
--
-- You can specify a number of options, or leave the default options. The following rules apply:
--
--     * [EC2-VPC] If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.
--
--     * [EC2-Classic] If don't specify an Availability Zone, we choose one for you.
--
--     * Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types Instance types available only in a VPC> .
--
--     * [EC2-VPC] All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.
--
--     * Not all instance types support IPv6 addresses. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> .
--
--     * If you don't specify a security group ID, we use the default security group. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html Security groups> .
--
--     * If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.
--
--
--
-- You can create a <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html launch template> , which is a resource that contains the parameters to launch an instance. When you launch an instance using 'RunInstances' , you can specify the launch template instead of specifying the launch parameters.
--
-- To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.
--
-- An instance is ready for you to use when it's in the @running@ state. You can check the state of your instance using 'DescribeInstances' . You can tag instances and EBS volumes during launch, after launch, or both. For more information, see 'CreateTags' and <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html Tagging your Amazon EC2 resources> .
--
-- Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Key pairs> .
--
-- For troubleshooting, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html What to do if an instance immediately terminates> , and <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html Troubleshooting connecting to your instance> .
module Network.AWS.EC2.RunInstances
  ( -- * Creating a Request
    runInstances,
    RunInstances,

    -- * Request Lenses
    runSecurityGroupIds,
    runAdditionalInfo,
    runTagSpecifications,
    runInstanceType,
    runCapacityReservationSpecification,
    runEBSOptimized,
    runUserData,
    runPlacement,
    runIPv6Addresses,
    runDryRun,
    runRAMDiskId,
    runCreditSpecification,
    runInstanceMarketOptions,
    runLaunchTemplate,
    runLicenseSpecifications,
    runInstanceInitiatedShutdownBehavior,
    runImageId,
    runSecurityGroups,
    runElasticGpuSpecification,
    runElasticInferenceAccelerators,
    runIAMInstanceProfile,
    runHibernationOptions,
    runIPv6AddressCount,
    runMonitoring,
    runBlockDeviceMappings,
    runSubnetId,
    runEnclaveOptions,
    runKernelId,
    runCPUOptions,
    runKeyName,
    runNetworkInterfaces,
    runDisableAPITermination,
    runMetadataOptions,
    runClientToken,
    runPrivateIPAddress,
    runMaxCount,
    runMinCount,

    -- * Destructuring the Response
    reservation,
    Reservation,

    -- * Response Lenses
    rGroups,
    rRequesterId,
    rInstances,
    rReservationId,
    rOwnerId,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'runInstances' smart constructor.
data RunInstances = RunInstances'
  { _runSecurityGroupIds ::
      !(Maybe [Text]),
    _runAdditionalInfo :: !(Maybe Text),
    _runTagSpecifications ::
      !(Maybe [TagSpecification]),
    _runInstanceType :: !(Maybe InstanceType),
    _runCapacityReservationSpecification ::
      !(Maybe CapacityReservationSpecification),
    _runEBSOptimized :: !(Maybe Bool),
    _runUserData :: !(Maybe Text),
    _runPlacement :: !(Maybe Placement),
    _runIPv6Addresses ::
      !(Maybe [InstanceIPv6Address]),
    _runDryRun :: !(Maybe Bool),
    _runRAMDiskId :: !(Maybe Text),
    _runCreditSpecification ::
      !(Maybe CreditSpecificationRequest),
    _runInstanceMarketOptions ::
      !(Maybe InstanceMarketOptionsRequest),
    _runLaunchTemplate ::
      !(Maybe LaunchTemplateSpecification),
    _runLicenseSpecifications ::
      !(Maybe [LicenseConfigurationRequest]),
    _runInstanceInitiatedShutdownBehavior ::
      !(Maybe ShutdownBehavior),
    _runImageId :: !(Maybe Text),
    _runSecurityGroups :: !(Maybe [Text]),
    _runElasticGpuSpecification ::
      !(Maybe [ElasticGpuSpecification]),
    _runElasticInferenceAccelerators ::
      !(Maybe [ElasticInferenceAccelerator]),
    _runIAMInstanceProfile ::
      !(Maybe IAMInstanceProfileSpecification),
    _runHibernationOptions ::
      !(Maybe HibernationOptionsRequest),
    _runIPv6AddressCount :: !(Maybe Int),
    _runMonitoring ::
      !(Maybe RunInstancesMonitoringEnabled),
    _runBlockDeviceMappings ::
      !(Maybe [BlockDeviceMapping]),
    _runSubnetId :: !(Maybe Text),
    _runEnclaveOptions ::
      !(Maybe EnclaveOptionsRequest),
    _runKernelId :: !(Maybe Text),
    _runCPUOptions :: !(Maybe CPUOptionsRequest),
    _runKeyName :: !(Maybe Text),
    _runNetworkInterfaces ::
      !( Maybe
           [InstanceNetworkInterfaceSpecification]
       ),
    _runDisableAPITermination :: !(Maybe Bool),
    _runMetadataOptions ::
      !(Maybe InstanceMetadataOptionsRequest),
    _runClientToken :: !(Maybe Text),
    _runPrivateIPAddress :: !(Maybe Text),
    _runMaxCount :: !Int,
    _runMinCount :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RunInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'runSecurityGroupIds' - The IDs of the security groups. You can create a security group using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html CreateSecurityGroup> . If you specify a network interface, you must specify any security groups as part of the network interface.
--
-- * 'runAdditionalInfo' - Reserved.
--
-- * 'runTagSpecifications' - The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
--
-- * 'runInstanceType' - The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ . Default: @m1.small@
--
-- * 'runCapacityReservationSpecification' - Information about the Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to @open@ , which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
--
-- * 'runEBSOptimized' - Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance. Default: @false@
--
-- * 'runUserData' - The user data to make available to the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html Running commands on your Linux instance at launch> (Linux) and <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data Adding User Data> (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.
--
-- * 'runPlacement' - The placement for the instance.
--
-- * 'runIPv6Addresses' - [EC2-VPC] The IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch. You cannot specify this option and the network interfaces option in the same request.
--
-- * 'runDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'runRAMDiskId' - The ID of the RAM disk to select. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, go to the AWS Resource Center and search for the kernel ID. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html PV-GRUB> in the /Amazon EC2 User Guide/ .
--
-- * 'runCreditSpecification' - The credit option for CPU usage of the burstable performance instance. Valid values are @standard@ and @unlimited@ . To change this attribute after launch, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html ModifyInstanceCreditSpecification> . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances> in the /Amazon EC2 User Guide/ . Default: @standard@ (T2 instances) or @unlimited@ (T3/T3a instances)
--
-- * 'runInstanceMarketOptions' - The market (purchasing) option for the instances. For 'RunInstances' , persistent Spot Instance requests are only supported when __InstanceInterruptionBehavior__ is set to either @hibernate@ or @stop@ .
--
-- * 'runLaunchTemplate' - The launch template to use to launch the instances. Any parameters that you specify in 'RunInstances' override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.
--
-- * 'runLicenseSpecifications' - The license configurations.
--
-- * 'runInstanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown). Default: @stop@
--
-- * 'runImageId' - The ID of the AMI. An AMI ID is required to launch an instance and must be specified here or in a launch template.
--
-- * 'runSecurityGroups' - [EC2-Classic, default VPC] The names of the security groups. For a nondefault VPC, you must use security group IDs instead. If you specify a network interface, you must specify any security groups as part of the network interface. Default: Amazon EC2 uses the default security group.
--
-- * 'runElasticGpuSpecification' - An elastic GPU to associate with the instance. An Elastic GPU is a GPU resource that you can attach to your Windows instance to accelerate the graphics performance of your applications. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html Amazon EC2 Elastic GPUs> in the /Amazon EC2 User Guide/ .
--
-- * 'runElasticInferenceAccelerators' - An elastic inference accelerator to associate with the instance. Elastic inference accelerators are a resource you can attach to your Amazon EC2 instances to accelerate your Deep Learning (DL) inference workloads. You cannot specify accelerators from different generations in the same request.
--
-- * 'runIAMInstanceProfile' - The name or Amazon Resource Name (ARN) of an IAM instance profile.
--
-- * 'runHibernationOptions' - Indicates whether an instance is enabled for hibernation. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance> in the /Amazon EC2 User Guide/ . You can't enable hibernation and AWS Nitro Enclaves on the same instance.
--
-- * 'runIPv6AddressCount' - [EC2-VPC] The number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch. You cannot specify this option and the network interfaces option in the same request.
--
-- * 'runMonitoring' - Specifies whether detailed monitoring is enabled for the instance.
--
-- * 'runBlockDeviceMappings' - The block device mapping entries.
--
-- * 'runSubnetId' - [EC2-VPC] The ID of the subnet to launch the instance into. If you specify a network interface, you must specify any subnets as part of the network interface.
--
-- * 'runEnclaveOptions' - Indicates whether the instance is enabled for AWS Nitro Enclaves. For more information, see <https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html What is AWS Nitro Enclaves?> in the /AWS Nitro Enclaves User Guide/ . You can't enable AWS Nitro Enclaves and hibernation on the same instance.
--
-- * 'runKernelId' - The ID of the kernel. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html PV-GRUB> in the /Amazon EC2 User Guide/ .
--
-- * 'runCPUOptions' - The CPU options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU options> in the /Amazon EC2 User Guide/ .
--
-- * 'runKeyName' - The name of the key pair. You can create a key pair using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html CreateKeyPair> or <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html ImportKeyPair> . /Important:/ If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
--
-- * 'runNetworkInterfaces' - The network interfaces to associate with the instance. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
--
-- * 'runDisableAPITermination' - If you set this parameter to @true@ , you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html ModifyInstanceAttribute> . Alternatively, if you set @InstanceInitiatedShutdownBehavior@ to @terminate@ , you can terminate the instance by running the shutdown command from the instance. Default: @false@
--
-- * 'runMetadataOptions' - The metadata options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> .
--
-- * 'runClientToken' - Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraints: Maximum 64 ASCII characters
--
-- * 'runPrivateIPAddress' - [EC2-VPC] The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet. Only one private IP address can be designated as primary. You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you're launching more than one instance in the request. You cannot specify this option and the network interfaces option in the same request.
--
-- * 'runMaxCount' - The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above @MinCount@ . Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see <http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2 How many instances can I run in Amazon EC2> in the Amazon EC2 FAQ.
--
-- * 'runMinCount' - The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances. Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see <http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2 How many instances can I run in Amazon EC2> in the Amazon EC2 General FAQ.
runInstances ::
  -- | 'runMaxCount'
  Int ->
  -- | 'runMinCount'
  Int ->
  RunInstances
runInstances pMaxCount_ pMinCount_ =
  RunInstances'
    { _runSecurityGroupIds = Nothing,
      _runAdditionalInfo = Nothing,
      _runTagSpecifications = Nothing,
      _runInstanceType = Nothing,
      _runCapacityReservationSpecification = Nothing,
      _runEBSOptimized = Nothing,
      _runUserData = Nothing,
      _runPlacement = Nothing,
      _runIPv6Addresses = Nothing,
      _runDryRun = Nothing,
      _runRAMDiskId = Nothing,
      _runCreditSpecification = Nothing,
      _runInstanceMarketOptions = Nothing,
      _runLaunchTemplate = Nothing,
      _runLicenseSpecifications = Nothing,
      _runInstanceInitiatedShutdownBehavior = Nothing,
      _runImageId = Nothing,
      _runSecurityGroups = Nothing,
      _runElasticGpuSpecification = Nothing,
      _runElasticInferenceAccelerators = Nothing,
      _runIAMInstanceProfile = Nothing,
      _runHibernationOptions = Nothing,
      _runIPv6AddressCount = Nothing,
      _runMonitoring = Nothing,
      _runBlockDeviceMappings = Nothing,
      _runSubnetId = Nothing,
      _runEnclaveOptions = Nothing,
      _runKernelId = Nothing,
      _runCPUOptions = Nothing,
      _runKeyName = Nothing,
      _runNetworkInterfaces = Nothing,
      _runDisableAPITermination = Nothing,
      _runMetadataOptions = Nothing,
      _runClientToken = Nothing,
      _runPrivateIPAddress = Nothing,
      _runMaxCount = pMaxCount_,
      _runMinCount = pMinCount_
    }

-- | The IDs of the security groups. You can create a security group using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html CreateSecurityGroup> . If you specify a network interface, you must specify any security groups as part of the network interface.
runSecurityGroupIds :: Lens' RunInstances [Text]
runSecurityGroupIds = lens _runSecurityGroupIds (\s a -> s {_runSecurityGroupIds = a}) . _Default . _Coerce

-- | Reserved.
runAdditionalInfo :: Lens' RunInstances (Maybe Text)
runAdditionalInfo = lens _runAdditionalInfo (\s a -> s {_runAdditionalInfo = a})

-- | The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html CreateTags> .
runTagSpecifications :: Lens' RunInstances [TagSpecification]
runTagSpecifications = lens _runTagSpecifications (\s a -> s {_runTagSpecifications = a}) . _Default . _Coerce

-- | The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ . Default: @m1.small@
runInstanceType :: Lens' RunInstances (Maybe InstanceType)
runInstanceType = lens _runInstanceType (\s a -> s {_runInstanceType = a})

-- | Information about the Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to @open@ , which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
runCapacityReservationSpecification :: Lens' RunInstances (Maybe CapacityReservationSpecification)
runCapacityReservationSpecification = lens _runCapacityReservationSpecification (\s a -> s {_runCapacityReservationSpecification = a})

-- | Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance. Default: @false@
runEBSOptimized :: Lens' RunInstances (Maybe Bool)
runEBSOptimized = lens _runEBSOptimized (\s a -> s {_runEBSOptimized = a})

-- | The user data to make available to the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html Running commands on your Linux instance at launch> (Linux) and <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data Adding User Data> (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.
runUserData :: Lens' RunInstances (Maybe Text)
runUserData = lens _runUserData (\s a -> s {_runUserData = a})

-- | The placement for the instance.
runPlacement :: Lens' RunInstances (Maybe Placement)
runPlacement = lens _runPlacement (\s a -> s {_runPlacement = a})

-- | [EC2-VPC] The IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch. You cannot specify this option and the network interfaces option in the same request.
runIPv6Addresses :: Lens' RunInstances [InstanceIPv6Address]
runIPv6Addresses = lens _runIPv6Addresses (\s a -> s {_runIPv6Addresses = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
runDryRun :: Lens' RunInstances (Maybe Bool)
runDryRun = lens _runDryRun (\s a -> s {_runDryRun = a})

-- | The ID of the RAM disk to select. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, go to the AWS Resource Center and search for the kernel ID. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html PV-GRUB> in the /Amazon EC2 User Guide/ .
runRAMDiskId :: Lens' RunInstances (Maybe Text)
runRAMDiskId = lens _runRAMDiskId (\s a -> s {_runRAMDiskId = a})

-- | The credit option for CPU usage of the burstable performance instance. Valid values are @standard@ and @unlimited@ . To change this attribute after launch, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html ModifyInstanceCreditSpecification> . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances> in the /Amazon EC2 User Guide/ . Default: @standard@ (T2 instances) or @unlimited@ (T3/T3a instances)
runCreditSpecification :: Lens' RunInstances (Maybe CreditSpecificationRequest)
runCreditSpecification = lens _runCreditSpecification (\s a -> s {_runCreditSpecification = a})

-- | The market (purchasing) option for the instances. For 'RunInstances' , persistent Spot Instance requests are only supported when __InstanceInterruptionBehavior__ is set to either @hibernate@ or @stop@ .
runInstanceMarketOptions :: Lens' RunInstances (Maybe InstanceMarketOptionsRequest)
runInstanceMarketOptions = lens _runInstanceMarketOptions (\s a -> s {_runInstanceMarketOptions = a})

-- | The launch template to use to launch the instances. Any parameters that you specify in 'RunInstances' override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.
runLaunchTemplate :: Lens' RunInstances (Maybe LaunchTemplateSpecification)
runLaunchTemplate = lens _runLaunchTemplate (\s a -> s {_runLaunchTemplate = a})

-- | The license configurations.
runLicenseSpecifications :: Lens' RunInstances [LicenseConfigurationRequest]
runLicenseSpecifications = lens _runLicenseSpecifications (\s a -> s {_runLicenseSpecifications = a}) . _Default . _Coerce

-- | Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown). Default: @stop@
runInstanceInitiatedShutdownBehavior :: Lens' RunInstances (Maybe ShutdownBehavior)
runInstanceInitiatedShutdownBehavior = lens _runInstanceInitiatedShutdownBehavior (\s a -> s {_runInstanceInitiatedShutdownBehavior = a})

-- | The ID of the AMI. An AMI ID is required to launch an instance and must be specified here or in a launch template.
runImageId :: Lens' RunInstances (Maybe Text)
runImageId = lens _runImageId (\s a -> s {_runImageId = a})

-- | [EC2-Classic, default VPC] The names of the security groups. For a nondefault VPC, you must use security group IDs instead. If you specify a network interface, you must specify any security groups as part of the network interface. Default: Amazon EC2 uses the default security group.
runSecurityGroups :: Lens' RunInstances [Text]
runSecurityGroups = lens _runSecurityGroups (\s a -> s {_runSecurityGroups = a}) . _Default . _Coerce

-- | An elastic GPU to associate with the instance. An Elastic GPU is a GPU resource that you can attach to your Windows instance to accelerate the graphics performance of your applications. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html Amazon EC2 Elastic GPUs> in the /Amazon EC2 User Guide/ .
runElasticGpuSpecification :: Lens' RunInstances [ElasticGpuSpecification]
runElasticGpuSpecification = lens _runElasticGpuSpecification (\s a -> s {_runElasticGpuSpecification = a}) . _Default . _Coerce

-- | An elastic inference accelerator to associate with the instance. Elastic inference accelerators are a resource you can attach to your Amazon EC2 instances to accelerate your Deep Learning (DL) inference workloads. You cannot specify accelerators from different generations in the same request.
runElasticInferenceAccelerators :: Lens' RunInstances [ElasticInferenceAccelerator]
runElasticInferenceAccelerators = lens _runElasticInferenceAccelerators (\s a -> s {_runElasticInferenceAccelerators = a}) . _Default . _Coerce

-- | The name or Amazon Resource Name (ARN) of an IAM instance profile.
runIAMInstanceProfile :: Lens' RunInstances (Maybe IAMInstanceProfileSpecification)
runIAMInstanceProfile = lens _runIAMInstanceProfile (\s a -> s {_runIAMInstanceProfile = a})

-- | Indicates whether an instance is enabled for hibernation. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance> in the /Amazon EC2 User Guide/ . You can't enable hibernation and AWS Nitro Enclaves on the same instance.
runHibernationOptions :: Lens' RunInstances (Maybe HibernationOptionsRequest)
runHibernationOptions = lens _runHibernationOptions (\s a -> s {_runHibernationOptions = a})

-- | [EC2-VPC] The number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch. You cannot specify this option and the network interfaces option in the same request.
runIPv6AddressCount :: Lens' RunInstances (Maybe Int)
runIPv6AddressCount = lens _runIPv6AddressCount (\s a -> s {_runIPv6AddressCount = a})

-- | Specifies whether detailed monitoring is enabled for the instance.
runMonitoring :: Lens' RunInstances (Maybe RunInstancesMonitoringEnabled)
runMonitoring = lens _runMonitoring (\s a -> s {_runMonitoring = a})

-- | The block device mapping entries.
runBlockDeviceMappings :: Lens' RunInstances [BlockDeviceMapping]
runBlockDeviceMappings = lens _runBlockDeviceMappings (\s a -> s {_runBlockDeviceMappings = a}) . _Default . _Coerce

-- | [EC2-VPC] The ID of the subnet to launch the instance into. If you specify a network interface, you must specify any subnets as part of the network interface.
runSubnetId :: Lens' RunInstances (Maybe Text)
runSubnetId = lens _runSubnetId (\s a -> s {_runSubnetId = a})

-- | Indicates whether the instance is enabled for AWS Nitro Enclaves. For more information, see <https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html What is AWS Nitro Enclaves?> in the /AWS Nitro Enclaves User Guide/ . You can't enable AWS Nitro Enclaves and hibernation on the same instance.
runEnclaveOptions :: Lens' RunInstances (Maybe EnclaveOptionsRequest)
runEnclaveOptions = lens _runEnclaveOptions (\s a -> s {_runEnclaveOptions = a})

-- | The ID of the kernel. /Important:/ We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html PV-GRUB> in the /Amazon EC2 User Guide/ .
runKernelId :: Lens' RunInstances (Maybe Text)
runKernelId = lens _runKernelId (\s a -> s {_runKernelId = a})

-- | The CPU options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU options> in the /Amazon EC2 User Guide/ .
runCPUOptions :: Lens' RunInstances (Maybe CPUOptionsRequest)
runCPUOptions = lens _runCPUOptions (\s a -> s {_runCPUOptions = a})

-- | The name of the key pair. You can create a key pair using <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html CreateKeyPair> or <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html ImportKeyPair> . /Important:/ If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
runKeyName :: Lens' RunInstances (Maybe Text)
runKeyName = lens _runKeyName (\s a -> s {_runKeyName = a})

-- | The network interfaces to associate with the instance. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
runNetworkInterfaces :: Lens' RunInstances [InstanceNetworkInterfaceSpecification]
runNetworkInterfaces = lens _runNetworkInterfaces (\s a -> s {_runNetworkInterfaces = a}) . _Default . _Coerce

-- | If you set this parameter to @true@ , you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html ModifyInstanceAttribute> . Alternatively, if you set @InstanceInitiatedShutdownBehavior@ to @terminate@ , you can terminate the instance by running the shutdown command from the instance. Default: @false@
runDisableAPITermination :: Lens' RunInstances (Maybe Bool)
runDisableAPITermination = lens _runDisableAPITermination (\s a -> s {_runDisableAPITermination = a})

-- | The metadata options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> .
runMetadataOptions :: Lens' RunInstances (Maybe InstanceMetadataOptionsRequest)
runMetadataOptions = lens _runMetadataOptions (\s a -> s {_runMetadataOptions = a})

-- | Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> . Constraints: Maximum 64 ASCII characters
runClientToken :: Lens' RunInstances (Maybe Text)
runClientToken = lens _runClientToken (\s a -> s {_runClientToken = a})

-- | [EC2-VPC] The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet. Only one private IP address can be designated as primary. You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you're launching more than one instance in the request. You cannot specify this option and the network interfaces option in the same request.
runPrivateIPAddress :: Lens' RunInstances (Maybe Text)
runPrivateIPAddress = lens _runPrivateIPAddress (\s a -> s {_runPrivateIPAddress = a})

-- | The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above @MinCount@ . Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see <http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2 How many instances can I run in Amazon EC2> in the Amazon EC2 FAQ.
runMaxCount :: Lens' RunInstances Int
runMaxCount = lens _runMaxCount (\s a -> s {_runMaxCount = a})

-- | The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances. Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see <http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2 How many instances can I run in Amazon EC2> in the Amazon EC2 General FAQ.
runMinCount :: Lens' RunInstances Int
runMinCount = lens _runMinCount (\s a -> s {_runMinCount = a})

instance AWSRequest RunInstances where
  type Rs RunInstances = Reservation
  request = postQuery ec2
  response = receiveXML (\s h x -> parseXML x)

instance Hashable RunInstances

instance NFData RunInstances

instance ToHeaders RunInstances where
  toHeaders = const mempty

instance ToPath RunInstances where
  toPath = const "/"

instance ToQuery RunInstances where
  toQuery RunInstances' {..} =
    mconcat
      [ "Action" =: ("RunInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "SecurityGroupId"
              <$> _runSecurityGroupIds
          ),
        "AdditionalInfo" =: _runAdditionalInfo,
        toQuery
          ( toQueryList "TagSpecification"
              <$> _runTagSpecifications
          ),
        "InstanceType" =: _runInstanceType,
        "CapacityReservationSpecification"
          =: _runCapacityReservationSpecification,
        "EbsOptimized" =: _runEBSOptimized,
        "UserData" =: _runUserData,
        "Placement" =: _runPlacement,
        toQuery
          (toQueryList "Ipv6Address" <$> _runIPv6Addresses),
        "DryRun" =: _runDryRun,
        "RamdiskId" =: _runRAMDiskId,
        "CreditSpecification" =: _runCreditSpecification,
        "InstanceMarketOptions" =: _runInstanceMarketOptions,
        "LaunchTemplate" =: _runLaunchTemplate,
        toQuery
          ( toQueryList "LicenseSpecification"
              <$> _runLicenseSpecifications
          ),
        "InstanceInitiatedShutdownBehavior"
          =: _runInstanceInitiatedShutdownBehavior,
        "ImageId" =: _runImageId,
        toQuery
          (toQueryList "SecurityGroup" <$> _runSecurityGroups),
        toQuery
          ( toQueryList "ElasticGpuSpecification"
              <$> _runElasticGpuSpecification
          ),
        toQuery
          ( toQueryList "ElasticInferenceAccelerator"
              <$> _runElasticInferenceAccelerators
          ),
        "IamInstanceProfile" =: _runIAMInstanceProfile,
        "HibernationOptions" =: _runHibernationOptions,
        "Ipv6AddressCount" =: _runIPv6AddressCount,
        "Monitoring" =: _runMonitoring,
        toQuery
          ( toQueryList "BlockDeviceMapping"
              <$> _runBlockDeviceMappings
          ),
        "SubnetId" =: _runSubnetId,
        "EnclaveOptions" =: _runEnclaveOptions,
        "KernelId" =: _runKernelId,
        "CpuOptions" =: _runCPUOptions,
        "KeyName" =: _runKeyName,
        toQuery
          ( toQueryList "NetworkInterface"
              <$> _runNetworkInterfaces
          ),
        "DisableApiTermination" =: _runDisableAPITermination,
        "MetadataOptions" =: _runMetadataOptions,
        "ClientToken" =: _runClientToken,
        "PrivateIpAddress" =: _runPrivateIPAddress,
        "MaxCount" =: _runMaxCount,
        "MinCount" =: _runMinCount
      ]

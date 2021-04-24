{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ResponseLaunchTemplateData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ResponseLaunchTemplateData where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CreditSpecification
import Network.AWS.EC2.Types.ElasticGpuSpecificationResponse
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.LaunchTemplateBlockDeviceMapping
import Network.AWS.EC2.Types.LaunchTemplateCPUOptions
import Network.AWS.EC2.Types.LaunchTemplateCapacityReservationSpecificationResponse
import Network.AWS.EC2.Types.LaunchTemplateElasticInferenceAcceleratorResponse
import Network.AWS.EC2.Types.LaunchTemplateEnclaveOptions
import Network.AWS.EC2.Types.LaunchTemplateHibernationOptions
import Network.AWS.EC2.Types.LaunchTemplateIAMInstanceProfileSpecification
import Network.AWS.EC2.Types.LaunchTemplateInstanceMarketOptions
import Network.AWS.EC2.Types.LaunchTemplateInstanceMetadataOptions
import Network.AWS.EC2.Types.LaunchTemplateInstanceNetworkInterfaceSpecification
import Network.AWS.EC2.Types.LaunchTemplateLicenseConfiguration
import Network.AWS.EC2.Types.LaunchTemplatePlacement
import Network.AWS.EC2.Types.LaunchTemplateTagSpecification
import Network.AWS.EC2.Types.LaunchTemplatesMonitoring
import Network.AWS.EC2.Types.ShutdownBehavior
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The information for a launch template.
--
--
--
-- /See:/ 'responseLaunchTemplateData' smart constructor.
data ResponseLaunchTemplateData = ResponseLaunchTemplateData'
  { _rltdSecurityGroupIds ::
      !(Maybe [Text]),
    _rltdTagSpecifications ::
      !( Maybe
           [LaunchTemplateTagSpecification]
       ),
    _rltdElasticGpuSpecifications ::
      !( Maybe
           [ElasticGpuSpecificationResponse]
       ),
    _rltdInstanceType ::
      !( Maybe
           InstanceType
       ),
    _rltdCapacityReservationSpecification ::
      !( Maybe
           LaunchTemplateCapacityReservationSpecificationResponse
       ),
    _rltdEBSOptimized ::
      !(Maybe Bool),
    _rltdUserData ::
      !(Maybe Text),
    _rltdPlacement ::
      !( Maybe
           LaunchTemplatePlacement
       ),
    _rltdRamDiskId ::
      !(Maybe Text),
    _rltdCreditSpecification ::
      !( Maybe
           CreditSpecification
       ),
    _rltdInstanceMarketOptions ::
      !( Maybe
           LaunchTemplateInstanceMarketOptions
       ),
    _rltdLicenseSpecifications ::
      !( Maybe
           [LaunchTemplateLicenseConfiguration]
       ),
    _rltdInstanceInitiatedShutdownBehavior ::
      !( Maybe
           ShutdownBehavior
       ),
    _rltdImageId ::
      !(Maybe Text),
    _rltdSecurityGroups ::
      !(Maybe [Text]),
    _rltdElasticInferenceAccelerators ::
      !( Maybe
           [LaunchTemplateElasticInferenceAcceleratorResponse]
       ),
    _rltdIAMInstanceProfile ::
      !( Maybe
           LaunchTemplateIAMInstanceProfileSpecification
       ),
    _rltdHibernationOptions ::
      !( Maybe
           LaunchTemplateHibernationOptions
       ),
    _rltdMonitoring ::
      !( Maybe
           LaunchTemplatesMonitoring
       ),
    _rltdBlockDeviceMappings ::
      !( Maybe
           [LaunchTemplateBlockDeviceMapping]
       ),
    _rltdEnclaveOptions ::
      !( Maybe
           LaunchTemplateEnclaveOptions
       ),
    _rltdKernelId ::
      !(Maybe Text),
    _rltdCPUOptions ::
      !( Maybe
           LaunchTemplateCPUOptions
       ),
    _rltdKeyName ::
      !(Maybe Text),
    _rltdNetworkInterfaces ::
      !( Maybe
           [LaunchTemplateInstanceNetworkInterfaceSpecification]
       ),
    _rltdDisableAPITermination ::
      !(Maybe Bool),
    _rltdMetadataOptions ::
      !( Maybe
           LaunchTemplateInstanceMetadataOptions
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

-- | Creates a value of 'ResponseLaunchTemplateData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rltdSecurityGroupIds' - The security group IDs.
--
-- * 'rltdTagSpecifications' - The tags.
--
-- * 'rltdElasticGpuSpecifications' - The elastic GPU specification.
--
-- * 'rltdInstanceType' - The instance type.
--
-- * 'rltdCapacityReservationSpecification' - Information about the Capacity Reservation targeting option.
--
-- * 'rltdEBSOptimized' - Indicates whether the instance is optimized for Amazon EBS I/O.
--
-- * 'rltdUserData' - The user data for the instance.
--
-- * 'rltdPlacement' - The placement of the instance.
--
-- * 'rltdRamDiskId' - The ID of the RAM disk, if applicable.
--
-- * 'rltdCreditSpecification' - The credit option for CPU usage of the instance.
--
-- * 'rltdInstanceMarketOptions' - The market (purchasing) option for the instances.
--
-- * 'rltdLicenseSpecifications' - The license configurations.
--
-- * 'rltdInstanceInitiatedShutdownBehavior' - Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
--
-- * 'rltdImageId' - The ID of the AMI that was used to launch the instance.
--
-- * 'rltdSecurityGroups' - The security group names.
--
-- * 'rltdElasticInferenceAccelerators' - The elastic inference accelerator for the instance.
--
-- * 'rltdIAMInstanceProfile' - The IAM instance profile.
--
-- * 'rltdHibernationOptions' - Indicates whether an instance is configured for hibernation. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate Your Instance> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rltdMonitoring' - The monitoring for the instance.
--
-- * 'rltdBlockDeviceMappings' - The block device mappings.
--
-- * 'rltdEnclaveOptions' - Indicates whether the instance is enabled for AWS Nitro Enclaves.
--
-- * 'rltdKernelId' - The ID of the kernel, if applicable.
--
-- * 'rltdCPUOptions' - The CPU options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU Options> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'rltdKeyName' - The name of the key pair.
--
-- * 'rltdNetworkInterfaces' - The network interfaces.
--
-- * 'rltdDisableAPITermination' - If set to @true@ , indicates that the instance cannot be terminated using the Amazon EC2 console, command line tool, or API.
--
-- * 'rltdMetadataOptions' - The metadata options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance Metadata and User Data> in the /Amazon Elastic Compute Cloud User Guide/ .
responseLaunchTemplateData ::
  ResponseLaunchTemplateData
responseLaunchTemplateData =
  ResponseLaunchTemplateData'
    { _rltdSecurityGroupIds =
        Nothing,
      _rltdTagSpecifications = Nothing,
      _rltdElasticGpuSpecifications = Nothing,
      _rltdInstanceType = Nothing,
      _rltdCapacityReservationSpecification = Nothing,
      _rltdEBSOptimized = Nothing,
      _rltdUserData = Nothing,
      _rltdPlacement = Nothing,
      _rltdRamDiskId = Nothing,
      _rltdCreditSpecification = Nothing,
      _rltdInstanceMarketOptions = Nothing,
      _rltdLicenseSpecifications = Nothing,
      _rltdInstanceInitiatedShutdownBehavior =
        Nothing,
      _rltdImageId = Nothing,
      _rltdSecurityGroups = Nothing,
      _rltdElasticInferenceAccelerators = Nothing,
      _rltdIAMInstanceProfile = Nothing,
      _rltdHibernationOptions = Nothing,
      _rltdMonitoring = Nothing,
      _rltdBlockDeviceMappings = Nothing,
      _rltdEnclaveOptions = Nothing,
      _rltdKernelId = Nothing,
      _rltdCPUOptions = Nothing,
      _rltdKeyName = Nothing,
      _rltdNetworkInterfaces = Nothing,
      _rltdDisableAPITermination = Nothing,
      _rltdMetadataOptions = Nothing
    }

-- | The security group IDs.
rltdSecurityGroupIds :: Lens' ResponseLaunchTemplateData [Text]
rltdSecurityGroupIds = lens _rltdSecurityGroupIds (\s a -> s {_rltdSecurityGroupIds = a}) . _Default . _Coerce

-- | The tags.
rltdTagSpecifications :: Lens' ResponseLaunchTemplateData [LaunchTemplateTagSpecification]
rltdTagSpecifications = lens _rltdTagSpecifications (\s a -> s {_rltdTagSpecifications = a}) . _Default . _Coerce

-- | The elastic GPU specification.
rltdElasticGpuSpecifications :: Lens' ResponseLaunchTemplateData [ElasticGpuSpecificationResponse]
rltdElasticGpuSpecifications = lens _rltdElasticGpuSpecifications (\s a -> s {_rltdElasticGpuSpecifications = a}) . _Default . _Coerce

-- | The instance type.
rltdInstanceType :: Lens' ResponseLaunchTemplateData (Maybe InstanceType)
rltdInstanceType = lens _rltdInstanceType (\s a -> s {_rltdInstanceType = a})

-- | Information about the Capacity Reservation targeting option.
rltdCapacityReservationSpecification :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateCapacityReservationSpecificationResponse)
rltdCapacityReservationSpecification = lens _rltdCapacityReservationSpecification (\s a -> s {_rltdCapacityReservationSpecification = a})

-- | Indicates whether the instance is optimized for Amazon EBS I/O.
rltdEBSOptimized :: Lens' ResponseLaunchTemplateData (Maybe Bool)
rltdEBSOptimized = lens _rltdEBSOptimized (\s a -> s {_rltdEBSOptimized = a})

-- | The user data for the instance.
rltdUserData :: Lens' ResponseLaunchTemplateData (Maybe Text)
rltdUserData = lens _rltdUserData (\s a -> s {_rltdUserData = a})

-- | The placement of the instance.
rltdPlacement :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplatePlacement)
rltdPlacement = lens _rltdPlacement (\s a -> s {_rltdPlacement = a})

-- | The ID of the RAM disk, if applicable.
rltdRamDiskId :: Lens' ResponseLaunchTemplateData (Maybe Text)
rltdRamDiskId = lens _rltdRamDiskId (\s a -> s {_rltdRamDiskId = a})

-- | The credit option for CPU usage of the instance.
rltdCreditSpecification :: Lens' ResponseLaunchTemplateData (Maybe CreditSpecification)
rltdCreditSpecification = lens _rltdCreditSpecification (\s a -> s {_rltdCreditSpecification = a})

-- | The market (purchasing) option for the instances.
rltdInstanceMarketOptions :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateInstanceMarketOptions)
rltdInstanceMarketOptions = lens _rltdInstanceMarketOptions (\s a -> s {_rltdInstanceMarketOptions = a})

-- | The license configurations.
rltdLicenseSpecifications :: Lens' ResponseLaunchTemplateData [LaunchTemplateLicenseConfiguration]
rltdLicenseSpecifications = lens _rltdLicenseSpecifications (\s a -> s {_rltdLicenseSpecifications = a}) . _Default . _Coerce

-- | Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
rltdInstanceInitiatedShutdownBehavior :: Lens' ResponseLaunchTemplateData (Maybe ShutdownBehavior)
rltdInstanceInitiatedShutdownBehavior = lens _rltdInstanceInitiatedShutdownBehavior (\s a -> s {_rltdInstanceInitiatedShutdownBehavior = a})

-- | The ID of the AMI that was used to launch the instance.
rltdImageId :: Lens' ResponseLaunchTemplateData (Maybe Text)
rltdImageId = lens _rltdImageId (\s a -> s {_rltdImageId = a})

-- | The security group names.
rltdSecurityGroups :: Lens' ResponseLaunchTemplateData [Text]
rltdSecurityGroups = lens _rltdSecurityGroups (\s a -> s {_rltdSecurityGroups = a}) . _Default . _Coerce

-- | The elastic inference accelerator for the instance.
rltdElasticInferenceAccelerators :: Lens' ResponseLaunchTemplateData [LaunchTemplateElasticInferenceAcceleratorResponse]
rltdElasticInferenceAccelerators = lens _rltdElasticInferenceAccelerators (\s a -> s {_rltdElasticInferenceAccelerators = a}) . _Default . _Coerce

-- | The IAM instance profile.
rltdIAMInstanceProfile :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateIAMInstanceProfileSpecification)
rltdIAMInstanceProfile = lens _rltdIAMInstanceProfile (\s a -> s {_rltdIAMInstanceProfile = a})

-- | Indicates whether an instance is configured for hibernation. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate Your Instance> in the /Amazon Elastic Compute Cloud User Guide/ .
rltdHibernationOptions :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateHibernationOptions)
rltdHibernationOptions = lens _rltdHibernationOptions (\s a -> s {_rltdHibernationOptions = a})

-- | The monitoring for the instance.
rltdMonitoring :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplatesMonitoring)
rltdMonitoring = lens _rltdMonitoring (\s a -> s {_rltdMonitoring = a})

-- | The block device mappings.
rltdBlockDeviceMappings :: Lens' ResponseLaunchTemplateData [LaunchTemplateBlockDeviceMapping]
rltdBlockDeviceMappings = lens _rltdBlockDeviceMappings (\s a -> s {_rltdBlockDeviceMappings = a}) . _Default . _Coerce

-- | Indicates whether the instance is enabled for AWS Nitro Enclaves.
rltdEnclaveOptions :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateEnclaveOptions)
rltdEnclaveOptions = lens _rltdEnclaveOptions (\s a -> s {_rltdEnclaveOptions = a})

-- | The ID of the kernel, if applicable.
rltdKernelId :: Lens' ResponseLaunchTemplateData (Maybe Text)
rltdKernelId = lens _rltdKernelId (\s a -> s {_rltdKernelId = a})

-- | The CPU options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html Optimizing CPU Options> in the /Amazon Elastic Compute Cloud User Guide/ .
rltdCPUOptions :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateCPUOptions)
rltdCPUOptions = lens _rltdCPUOptions (\s a -> s {_rltdCPUOptions = a})

-- | The name of the key pair.
rltdKeyName :: Lens' ResponseLaunchTemplateData (Maybe Text)
rltdKeyName = lens _rltdKeyName (\s a -> s {_rltdKeyName = a})

-- | The network interfaces.
rltdNetworkInterfaces :: Lens' ResponseLaunchTemplateData [LaunchTemplateInstanceNetworkInterfaceSpecification]
rltdNetworkInterfaces = lens _rltdNetworkInterfaces (\s a -> s {_rltdNetworkInterfaces = a}) . _Default . _Coerce

-- | If set to @true@ , indicates that the instance cannot be terminated using the Amazon EC2 console, command line tool, or API.
rltdDisableAPITermination :: Lens' ResponseLaunchTemplateData (Maybe Bool)
rltdDisableAPITermination = lens _rltdDisableAPITermination (\s a -> s {_rltdDisableAPITermination = a})

-- | The metadata options for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance Metadata and User Data> in the /Amazon Elastic Compute Cloud User Guide/ .
rltdMetadataOptions :: Lens' ResponseLaunchTemplateData (Maybe LaunchTemplateInstanceMetadataOptions)
rltdMetadataOptions = lens _rltdMetadataOptions (\s a -> s {_rltdMetadataOptions = a})

instance FromXML ResponseLaunchTemplateData where
  parseXML x =
    ResponseLaunchTemplateData'
      <$> ( x .@? "securityGroupIdSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "tagSpecificationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "elasticGpuSpecificationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "instanceType")
      <*> (x .@? "capacityReservationSpecification")
      <*> (x .@? "ebsOptimized")
      <*> (x .@? "userData")
      <*> (x .@? "placement")
      <*> (x .@? "ramDiskId")
      <*> (x .@? "creditSpecification")
      <*> (x .@? "instanceMarketOptions")
      <*> ( x .@? "licenseSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "instanceInitiatedShutdownBehavior")
      <*> (x .@? "imageId")
      <*> ( x .@? "securityGroupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "elasticInferenceAcceleratorSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "iamInstanceProfile")
      <*> (x .@? "hibernationOptions")
      <*> (x .@? "monitoring")
      <*> ( x .@? "blockDeviceMappingSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "enclaveOptions")
      <*> (x .@? "kernelId")
      <*> (x .@? "cpuOptions")
      <*> (x .@? "keyName")
      <*> ( x .@? "networkInterfaceSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "disableApiTermination")
      <*> (x .@? "metadataOptions")

instance Hashable ResponseLaunchTemplateData

instance NFData ResponseLaunchTemplateData

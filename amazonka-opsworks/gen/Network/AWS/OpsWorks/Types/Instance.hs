{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.Instance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Instance where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.Architecture
import Network.AWS.OpsWorks.Types.AutoScalingType
import Network.AWS.OpsWorks.Types.BlockDeviceMapping
import Network.AWS.OpsWorks.Types.ReportedOS
import Network.AWS.OpsWorks.Types.RootDeviceType
import Network.AWS.OpsWorks.Types.VirtualizationType
import Network.AWS.Prelude

-- | Describes an instance.
--
--
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
  { _iHostname ::
      !(Maybe Text),
    _iPlatform :: !(Maybe Text),
    _iSecurityGroupIds :: !(Maybe [Text]),
    _iSSHHostRsaKeyFingerprint :: !(Maybe Text),
    _iInstanceProfileARN :: !(Maybe Text),
    _iVirtualizationType :: !(Maybe VirtualizationType),
    _iPrivateDNS :: !(Maybe Text),
    _iElasticIP :: !(Maybe Text),
    _iStatus :: !(Maybe Text),
    _iInstallUpdatesOnBoot :: !(Maybe Bool),
    _iInstanceId :: !(Maybe Text),
    _iReportedAgentVersion :: !(Maybe Text),
    _iInstanceType :: !(Maybe Text),
    _iSSHHostDsaKeyFingerprint :: !(Maybe Text),
    _iEBSOptimized :: !(Maybe Bool),
    _iRootDeviceType :: !(Maybe RootDeviceType),
    _iStackId :: !(Maybe Text),
    _iAgentVersion :: !(Maybe Text),
    _iRootDeviceVolumeId :: !(Maybe Text),
    _iSSHKeyName :: !(Maybe Text),
    _iPublicDNS :: !(Maybe Text),
    _iAMIId :: !(Maybe Text),
    _iARN :: !(Maybe Text),
    _iCreatedAt :: !(Maybe Text),
    _iLayerIds :: !(Maybe [Text]),
    _iArchitecture :: !(Maybe Architecture),
    _iTenancy :: !(Maybe Text),
    _iAutoScalingType :: !(Maybe AutoScalingType),
    _iAvailabilityZone :: !(Maybe Text),
    _iOS :: !(Maybe Text),
    _iPrivateIP :: !(Maybe Text),
    _iInfrastructureClass :: !(Maybe Text),
    _iBlockDeviceMappings ::
      !(Maybe [BlockDeviceMapping]),
    _iSubnetId :: !(Maybe Text),
    _iEcsContainerInstanceARN :: !(Maybe Text),
    _iRegisteredBy :: !(Maybe Text),
    _iReportedOS :: !(Maybe ReportedOS),
    _iPublicIP :: !(Maybe Text),
    _iEC2InstanceId :: !(Maybe Text),
    _iEcsClusterARN :: !(Maybe Text),
    _iLastServiceErrorId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iHostname' - The instance host name.
--
-- * 'iPlatform' - The instance's platform.
--
-- * 'iSecurityGroupIds' - An array containing the instance security group IDs.
--
-- * 'iSSHHostRsaKeyFingerprint' - The SSH key's RSA fingerprint.
--
-- * 'iInstanceProfileARN' - The ARN of the instance's IAM profile. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'iVirtualizationType' - The instance's virtualization type: @paravirtual@ or @hvm@ .
--
-- * 'iPrivateDNS' - The instance's private DNS name.
--
-- * 'iElasticIP' - The instance <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP address > .
--
-- * 'iStatus' - The instance status:     * @booting@      * @connection_lost@      * @online@      * @pending@      * @rebooting@      * @requested@      * @running_setup@      * @setup_failed@      * @shutting_down@      * @start_failed@      * @stop_failed@      * @stopped@      * @stopping@      * @terminated@      * @terminating@
--
-- * 'iInstallUpdatesOnBoot' - Whether to install operating system and package updates when the instance boots. The default value is @true@ . If this value is set to @false@ , you must then update your instances manually by using 'CreateDeployment' to run the @update_dependencies@ stack command or by manually running @yum@ (Amazon Linux) or @apt-get@ (Ubuntu) on the instances.
--
-- * 'iInstanceId' - The instance ID.
--
-- * 'iReportedAgentVersion' - The instance's reported AWS OpsWorks Stacks agent version.
--
-- * 'iInstanceType' - The instance type, such as @t2.micro@ .
--
-- * 'iSSHHostDsaKeyFingerprint' - The SSH key's Deep Security Agent (DSA) fingerprint.
--
-- * 'iEBSOptimized' - Whether this is an Amazon EBS-optimized instance.
--
-- * 'iRootDeviceType' - The instance's root device type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
--
-- * 'iStackId' - The stack ID.
--
-- * 'iAgentVersion' - The agent version. This parameter is set to @INHERIT@ if the instance inherits the default stack setting or to a a version number for a fixed agent version.
--
-- * 'iRootDeviceVolumeId' - The root device volume ID.
--
-- * 'iSSHKeyName' - The instance's Amazon EC2 key-pair name.
--
-- * 'iPublicDNS' - The instance public DNS name.
--
-- * 'iAMIId' - A custom AMI ID to be used to create the instance. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html Instances>
--
-- * 'iARN' - The instance's Amazon Resource Number (ARN).
--
-- * 'iCreatedAt' - The time that the instance was created.
--
-- * 'iLayerIds' - An array containing the instance layer IDs.
--
-- * 'iArchitecture' - The instance architecture: "i386" or "x86_64".
--
-- * 'iTenancy' - The instance's tenancy option, such as @dedicated@ or @host@ .
--
-- * 'iAutoScalingType' - For load-based or time-based instances, the type.
--
-- * 'iAvailabilityZone' - The instance Availability Zone. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'iOS' - The instance's operating system.
--
-- * 'iPrivateIP' - The instance's private IP address.
--
-- * 'iInfrastructureClass' - For registered instances, the infrastructure class: @ec2@ or @on-premises@ .
--
-- * 'iBlockDeviceMappings' - An array of @BlockDeviceMapping@ objects that specify the instance's block device mappings.
--
-- * 'iSubnetId' - The instance's subnet ID; applicable only if the stack is running in a VPC.
--
-- * 'iEcsContainerInstanceARN' - For container instances, the instance's ARN.
--
-- * 'iRegisteredBy' - For registered instances, who performed the registration.
--
-- * 'iReportedOS' - For registered instances, the reported operating system.
--
-- * 'iPublicIP' - The instance public IP address.
--
-- * 'iEC2InstanceId' - The ID of the associated Amazon EC2 instance.
--
-- * 'iEcsClusterARN' - For container instances, the Amazon ECS cluster's ARN.
--
-- * 'iLastServiceErrorId' - The ID of the last service error. For more information, call 'DescribeServiceErrors' .
instance' ::
  Instance
instance' =
  Instance'
    { _iHostname = Nothing,
      _iPlatform = Nothing,
      _iSecurityGroupIds = Nothing,
      _iSSHHostRsaKeyFingerprint = Nothing,
      _iInstanceProfileARN = Nothing,
      _iVirtualizationType = Nothing,
      _iPrivateDNS = Nothing,
      _iElasticIP = Nothing,
      _iStatus = Nothing,
      _iInstallUpdatesOnBoot = Nothing,
      _iInstanceId = Nothing,
      _iReportedAgentVersion = Nothing,
      _iInstanceType = Nothing,
      _iSSHHostDsaKeyFingerprint = Nothing,
      _iEBSOptimized = Nothing,
      _iRootDeviceType = Nothing,
      _iStackId = Nothing,
      _iAgentVersion = Nothing,
      _iRootDeviceVolumeId = Nothing,
      _iSSHKeyName = Nothing,
      _iPublicDNS = Nothing,
      _iAMIId = Nothing,
      _iARN = Nothing,
      _iCreatedAt = Nothing,
      _iLayerIds = Nothing,
      _iArchitecture = Nothing,
      _iTenancy = Nothing,
      _iAutoScalingType = Nothing,
      _iAvailabilityZone = Nothing,
      _iOS = Nothing,
      _iPrivateIP = Nothing,
      _iInfrastructureClass = Nothing,
      _iBlockDeviceMappings = Nothing,
      _iSubnetId = Nothing,
      _iEcsContainerInstanceARN = Nothing,
      _iRegisteredBy = Nothing,
      _iReportedOS = Nothing,
      _iPublicIP = Nothing,
      _iEC2InstanceId = Nothing,
      _iEcsClusterARN = Nothing,
      _iLastServiceErrorId = Nothing
    }

-- | The instance host name.
iHostname :: Lens' Instance (Maybe Text)
iHostname = lens _iHostname (\s a -> s {_iHostname = a})

-- | The instance's platform.
iPlatform :: Lens' Instance (Maybe Text)
iPlatform = lens _iPlatform (\s a -> s {_iPlatform = a})

-- | An array containing the instance security group IDs.
iSecurityGroupIds :: Lens' Instance [Text]
iSecurityGroupIds = lens _iSecurityGroupIds (\s a -> s {_iSecurityGroupIds = a}) . _Default . _Coerce

-- | The SSH key's RSA fingerprint.
iSSHHostRsaKeyFingerprint :: Lens' Instance (Maybe Text)
iSSHHostRsaKeyFingerprint = lens _iSSHHostRsaKeyFingerprint (\s a -> s {_iSSHHostRsaKeyFingerprint = a})

-- | The ARN of the instance's IAM profile. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
iInstanceProfileARN :: Lens' Instance (Maybe Text)
iInstanceProfileARN = lens _iInstanceProfileARN (\s a -> s {_iInstanceProfileARN = a})

-- | The instance's virtualization type: @paravirtual@ or @hvm@ .
iVirtualizationType :: Lens' Instance (Maybe VirtualizationType)
iVirtualizationType = lens _iVirtualizationType (\s a -> s {_iVirtualizationType = a})

-- | The instance's private DNS name.
iPrivateDNS :: Lens' Instance (Maybe Text)
iPrivateDNS = lens _iPrivateDNS (\s a -> s {_iPrivateDNS = a})

-- | The instance <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP address > .
iElasticIP :: Lens' Instance (Maybe Text)
iElasticIP = lens _iElasticIP (\s a -> s {_iElasticIP = a})

-- | The instance status:     * @booting@      * @connection_lost@      * @online@      * @pending@      * @rebooting@      * @requested@      * @running_setup@      * @setup_failed@      * @shutting_down@      * @start_failed@      * @stop_failed@      * @stopped@      * @stopping@      * @terminated@      * @terminating@
iStatus :: Lens' Instance (Maybe Text)
iStatus = lens _iStatus (\s a -> s {_iStatus = a})

-- | Whether to install operating system and package updates when the instance boots. The default value is @true@ . If this value is set to @false@ , you must then update your instances manually by using 'CreateDeployment' to run the @update_dependencies@ stack command or by manually running @yum@ (Amazon Linux) or @apt-get@ (Ubuntu) on the instances.
iInstallUpdatesOnBoot :: Lens' Instance (Maybe Bool)
iInstallUpdatesOnBoot = lens _iInstallUpdatesOnBoot (\s a -> s {_iInstallUpdatesOnBoot = a})

-- | The instance ID.
iInstanceId :: Lens' Instance (Maybe Text)
iInstanceId = lens _iInstanceId (\s a -> s {_iInstanceId = a})

-- | The instance's reported AWS OpsWorks Stacks agent version.
iReportedAgentVersion :: Lens' Instance (Maybe Text)
iReportedAgentVersion = lens _iReportedAgentVersion (\s a -> s {_iReportedAgentVersion = a})

-- | The instance type, such as @t2.micro@ .
iInstanceType :: Lens' Instance (Maybe Text)
iInstanceType = lens _iInstanceType (\s a -> s {_iInstanceType = a})

-- | The SSH key's Deep Security Agent (DSA) fingerprint.
iSSHHostDsaKeyFingerprint :: Lens' Instance (Maybe Text)
iSSHHostDsaKeyFingerprint = lens _iSSHHostDsaKeyFingerprint (\s a -> s {_iSSHHostDsaKeyFingerprint = a})

-- | Whether this is an Amazon EBS-optimized instance.
iEBSOptimized :: Lens' Instance (Maybe Bool)
iEBSOptimized = lens _iEBSOptimized (\s a -> s {_iEBSOptimized = a})

-- | The instance's root device type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
iRootDeviceType :: Lens' Instance (Maybe RootDeviceType)
iRootDeviceType = lens _iRootDeviceType (\s a -> s {_iRootDeviceType = a})

-- | The stack ID.
iStackId :: Lens' Instance (Maybe Text)
iStackId = lens _iStackId (\s a -> s {_iStackId = a})

-- | The agent version. This parameter is set to @INHERIT@ if the instance inherits the default stack setting or to a a version number for a fixed agent version.
iAgentVersion :: Lens' Instance (Maybe Text)
iAgentVersion = lens _iAgentVersion (\s a -> s {_iAgentVersion = a})

-- | The root device volume ID.
iRootDeviceVolumeId :: Lens' Instance (Maybe Text)
iRootDeviceVolumeId = lens _iRootDeviceVolumeId (\s a -> s {_iRootDeviceVolumeId = a})

-- | The instance's Amazon EC2 key-pair name.
iSSHKeyName :: Lens' Instance (Maybe Text)
iSSHKeyName = lens _iSSHKeyName (\s a -> s {_iSSHKeyName = a})

-- | The instance public DNS name.
iPublicDNS :: Lens' Instance (Maybe Text)
iPublicDNS = lens _iPublicDNS (\s a -> s {_iPublicDNS = a})

-- | A custom AMI ID to be used to create the instance. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html Instances>
iAMIId :: Lens' Instance (Maybe Text)
iAMIId = lens _iAMIId (\s a -> s {_iAMIId = a})

-- | The instance's Amazon Resource Number (ARN).
iARN :: Lens' Instance (Maybe Text)
iARN = lens _iARN (\s a -> s {_iARN = a})

-- | The time that the instance was created.
iCreatedAt :: Lens' Instance (Maybe Text)
iCreatedAt = lens _iCreatedAt (\s a -> s {_iCreatedAt = a})

-- | An array containing the instance layer IDs.
iLayerIds :: Lens' Instance [Text]
iLayerIds = lens _iLayerIds (\s a -> s {_iLayerIds = a}) . _Default . _Coerce

-- | The instance architecture: "i386" or "x86_64".
iArchitecture :: Lens' Instance (Maybe Architecture)
iArchitecture = lens _iArchitecture (\s a -> s {_iArchitecture = a})

-- | The instance's tenancy option, such as @dedicated@ or @host@ .
iTenancy :: Lens' Instance (Maybe Text)
iTenancy = lens _iTenancy (\s a -> s {_iTenancy = a})

-- | For load-based or time-based instances, the type.
iAutoScalingType :: Lens' Instance (Maybe AutoScalingType)
iAutoScalingType = lens _iAutoScalingType (\s a -> s {_iAutoScalingType = a})

-- | The instance Availability Zone. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
iAvailabilityZone :: Lens' Instance (Maybe Text)
iAvailabilityZone = lens _iAvailabilityZone (\s a -> s {_iAvailabilityZone = a})

-- | The instance's operating system.
iOS :: Lens' Instance (Maybe Text)
iOS = lens _iOS (\s a -> s {_iOS = a})

-- | The instance's private IP address.
iPrivateIP :: Lens' Instance (Maybe Text)
iPrivateIP = lens _iPrivateIP (\s a -> s {_iPrivateIP = a})

-- | For registered instances, the infrastructure class: @ec2@ or @on-premises@ .
iInfrastructureClass :: Lens' Instance (Maybe Text)
iInfrastructureClass = lens _iInfrastructureClass (\s a -> s {_iInfrastructureClass = a})

-- | An array of @BlockDeviceMapping@ objects that specify the instance's block device mappings.
iBlockDeviceMappings :: Lens' Instance [BlockDeviceMapping]
iBlockDeviceMappings = lens _iBlockDeviceMappings (\s a -> s {_iBlockDeviceMappings = a}) . _Default . _Coerce

-- | The instance's subnet ID; applicable only if the stack is running in a VPC.
iSubnetId :: Lens' Instance (Maybe Text)
iSubnetId = lens _iSubnetId (\s a -> s {_iSubnetId = a})

-- | For container instances, the instance's ARN.
iEcsContainerInstanceARN :: Lens' Instance (Maybe Text)
iEcsContainerInstanceARN = lens _iEcsContainerInstanceARN (\s a -> s {_iEcsContainerInstanceARN = a})

-- | For registered instances, who performed the registration.
iRegisteredBy :: Lens' Instance (Maybe Text)
iRegisteredBy = lens _iRegisteredBy (\s a -> s {_iRegisteredBy = a})

-- | For registered instances, the reported operating system.
iReportedOS :: Lens' Instance (Maybe ReportedOS)
iReportedOS = lens _iReportedOS (\s a -> s {_iReportedOS = a})

-- | The instance public IP address.
iPublicIP :: Lens' Instance (Maybe Text)
iPublicIP = lens _iPublicIP (\s a -> s {_iPublicIP = a})

-- | The ID of the associated Amazon EC2 instance.
iEC2InstanceId :: Lens' Instance (Maybe Text)
iEC2InstanceId = lens _iEC2InstanceId (\s a -> s {_iEC2InstanceId = a})

-- | For container instances, the Amazon ECS cluster's ARN.
iEcsClusterARN :: Lens' Instance (Maybe Text)
iEcsClusterARN = lens _iEcsClusterARN (\s a -> s {_iEcsClusterARN = a})

-- | The ID of the last service error. For more information, call 'DescribeServiceErrors' .
iLastServiceErrorId :: Lens' Instance (Maybe Text)
iLastServiceErrorId = lens _iLastServiceErrorId (\s a -> s {_iLastServiceErrorId = a})

instance FromJSON Instance where
  parseJSON =
    withObject
      "Instance"
      ( \x ->
          Instance'
            <$> (x .:? "Hostname")
            <*> (x .:? "Platform")
            <*> (x .:? "SecurityGroupIds" .!= mempty)
            <*> (x .:? "SshHostRsaKeyFingerprint")
            <*> (x .:? "InstanceProfileArn")
            <*> (x .:? "VirtualizationType")
            <*> (x .:? "PrivateDns")
            <*> (x .:? "ElasticIp")
            <*> (x .:? "Status")
            <*> (x .:? "InstallUpdatesOnBoot")
            <*> (x .:? "InstanceId")
            <*> (x .:? "ReportedAgentVersion")
            <*> (x .:? "InstanceType")
            <*> (x .:? "SshHostDsaKeyFingerprint")
            <*> (x .:? "EbsOptimized")
            <*> (x .:? "RootDeviceType")
            <*> (x .:? "StackId")
            <*> (x .:? "AgentVersion")
            <*> (x .:? "RootDeviceVolumeId")
            <*> (x .:? "SshKeyName")
            <*> (x .:? "PublicDns")
            <*> (x .:? "AmiId")
            <*> (x .:? "Arn")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "LayerIds" .!= mempty)
            <*> (x .:? "Architecture")
            <*> (x .:? "Tenancy")
            <*> (x .:? "AutoScalingType")
            <*> (x .:? "AvailabilityZone")
            <*> (x .:? "Os")
            <*> (x .:? "PrivateIp")
            <*> (x .:? "InfrastructureClass")
            <*> (x .:? "BlockDeviceMappings" .!= mempty)
            <*> (x .:? "SubnetId")
            <*> (x .:? "EcsContainerInstanceArn")
            <*> (x .:? "RegisteredBy")
            <*> (x .:? "ReportedOs")
            <*> (x .:? "PublicIp")
            <*> (x .:? "Ec2InstanceId")
            <*> (x .:? "EcsClusterArn")
            <*> (x .:? "LastServiceErrorId")
      )

instance Hashable Instance

instance NFData Instance

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Instance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Instance where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ArchitectureValues
import Network.AWS.EC2.Types.CPUOptions
import Network.AWS.EC2.Types.CapacityReservationSpecificationResponse
import Network.AWS.EC2.Types.DeviceType
import Network.AWS.EC2.Types.ElasticGpuAssociation
import Network.AWS.EC2.Types.ElasticInferenceAcceleratorAssociation
import Network.AWS.EC2.Types.EnclaveOptions
import Network.AWS.EC2.Types.GroupIdentifier
import Network.AWS.EC2.Types.HibernationOptions
import Network.AWS.EC2.Types.HypervisorType
import Network.AWS.EC2.Types.IAMInstanceProfile
import Network.AWS.EC2.Types.InstanceBlockDeviceMapping
import Network.AWS.EC2.Types.InstanceLifecycleType
import Network.AWS.EC2.Types.InstanceMetadataOptionsResponse
import Network.AWS.EC2.Types.InstanceNetworkInterface
import Network.AWS.EC2.Types.InstanceState
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.LicenseConfiguration
import Network.AWS.EC2.Types.Monitoring
import Network.AWS.EC2.Types.Placement
import Network.AWS.EC2.Types.PlatformValues
import Network.AWS.EC2.Types.ProductCode
import Network.AWS.EC2.Types.StateReason
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.VirtualizationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an instance.
--
--
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
  { _iPlatform ::
      !(Maybe PlatformValues),
    _iInstanceLifecycle ::
      !(Maybe InstanceLifecycleType),
    _iStateTransitionReason :: !(Maybe Text),
    _iRootDeviceName :: !(Maybe Text),
    _iCapacityReservationSpecification ::
      !(Maybe CapacityReservationSpecificationResponse),
    _iEBSOptimized :: !(Maybe Bool),
    _iRAMDiskId :: !(Maybe Text),
    _iElasticInferenceAcceleratorAssociations ::
      !(Maybe [ElasticInferenceAcceleratorAssociation]),
    _iStateReason :: !(Maybe StateReason),
    _iOutpostARN :: !(Maybe Text),
    _iSourceDestCheck :: !(Maybe Bool),
    _iProductCodes :: !(Maybe [ProductCode]),
    _iSecurityGroups :: !(Maybe [GroupIdentifier]),
    _iIAMInstanceProfile :: !(Maybe IAMInstanceProfile),
    _iPublicDNSName :: !(Maybe Text),
    _iHibernationOptions :: !(Maybe HibernationOptions),
    _iCapacityReservationId :: !(Maybe Text),
    _iTags :: !(Maybe [Tag]),
    _iSRIOVNetSupport :: !(Maybe Text),
    _iBlockDeviceMappings ::
      !(Maybe [InstanceBlockDeviceMapping]),
    _iPublicIPAddress :: !(Maybe Text),
    _iSubnetId :: !(Maybe Text),
    _iEnclaveOptions :: !(Maybe EnclaveOptions),
    _iKernelId :: !(Maybe Text),
    _iCPUOptions :: !(Maybe CPUOptions),
    _iPrivateDNSName :: !(Maybe Text),
    _iKeyName :: !(Maybe Text),
    _iNetworkInterfaces ::
      !(Maybe [InstanceNetworkInterface]),
    _iLicenses :: !(Maybe [LicenseConfiguration]),
    _iVPCId :: !(Maybe Text),
    _iElasticGpuAssociations ::
      !(Maybe [ElasticGpuAssociation]),
    _iMetadataOptions ::
      !(Maybe InstanceMetadataOptionsResponse),
    _iEnaSupport :: !(Maybe Bool),
    _iSpotInstanceRequestId :: !(Maybe Text),
    _iClientToken :: !(Maybe Text),
    _iPrivateIPAddress :: !(Maybe Text),
    _iInstanceId :: !Text,
    _iImageId :: !Text,
    _iAMILaunchIndex :: !Int,
    _iInstanceType :: !InstanceType,
    _iLaunchTime :: !ISO8601,
    _iPlacement :: !Placement,
    _iMonitoring :: !Monitoring,
    _iArchitecture :: !ArchitectureValues,
    _iRootDeviceType :: !DeviceType,
    _iVirtualizationType :: !VirtualizationType,
    _iHypervisor :: !HypervisorType,
    _iState :: !InstanceState
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iPlatform' - The value is @Windows@ for Windows instances; otherwise blank.
--
-- * 'iInstanceLifecycle' - Indicates whether this is a Spot Instance or a Scheduled Instance.
--
-- * 'iStateTransitionReason' - The reason for the most recent state transition. This might be an empty string.
--
-- * 'iRootDeviceName' - The device name of the root device volume (for example, @/dev/sda1@ ).
--
-- * 'iCapacityReservationSpecification' - Information about the Capacity Reservation targeting option.
--
-- * 'iEBSOptimized' - Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
--
-- * 'iRAMDiskId' - The RAM disk associated with this instance, if applicable.
--
-- * 'iElasticInferenceAcceleratorAssociations' - The elastic inference accelerator associated with the instance.
--
-- * 'iStateReason' - The reason for the most recent state transition.
--
-- * 'iOutpostARN' - The Amazon Resource Name (ARN) of the Outpost.
--
-- * 'iSourceDestCheck' - Specifies whether to enable an instance launched in a VPC to perform NAT. This controls whether source/destination checking is enabled on the instance. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. The value must be @false@ for the instance to perform NAT. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html NAT instances> in the /Amazon VPC User Guide/ .
--
-- * 'iProductCodes' - The product codes attached to this instance, if applicable.
--
-- * 'iSecurityGroups' - The security groups for the instance.
--
-- * 'iIAMInstanceProfile' - The IAM instance profile associated with the instance, if applicable.
--
-- * 'iPublicDNSName' - (IPv4 only) The public DNS name assigned to the instance. This name is not available until the instance enters the @running@ state. For EC2-VPC, this name is only available if you've enabled DNS hostnames for your VPC.
--
-- * 'iHibernationOptions' - Indicates whether the instance is enabled for hibernation.
--
-- * 'iCapacityReservationId' - The ID of the Capacity Reservation.
--
-- * 'iTags' - Any tags assigned to the instance.
--
-- * 'iSRIOVNetSupport' - Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
--
-- * 'iBlockDeviceMappings' - Any block device mapping entries for the instance.
--
-- * 'iPublicIPAddress' - The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable. A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.
--
-- * 'iSubnetId' - [EC2-VPC] The ID of the subnet in which the instance is running.
--
-- * 'iEnclaveOptions' - Indicates whether the instance is enabled for AWS Nitro Enclaves.
--
-- * 'iKernelId' - The kernel associated with this instance, if applicable.
--
-- * 'iCPUOptions' - The CPU options for the instance.
--
-- * 'iPrivateDNSName' - (IPv4 only) The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the @running@ state.  [EC2-VPC] The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.
--
-- * 'iKeyName' - The name of the key pair, if this instance was launched with an associated key pair.
--
-- * 'iNetworkInterfaces' - [EC2-VPC] The network interfaces for the instance.
--
-- * 'iLicenses' - The license configurations.
--
-- * 'iVPCId' - [EC2-VPC] The ID of the VPC in which the instance is running.
--
-- * 'iElasticGpuAssociations' - The Elastic GPU associated with the instance.
--
-- * 'iMetadataOptions' - The metadata options for the instance.
--
-- * 'iEnaSupport' - Specifies whether enhanced networking with ENA is enabled.
--
-- * 'iSpotInstanceRequestId' - If the request is a Spot Instance request, the ID of the request.
--
-- * 'iClientToken' - The idempotency token you provided when you launched the instance, if applicable.
--
-- * 'iPrivateIPAddress' - The private IPv4 address assigned to the instance.
--
-- * 'iInstanceId' - The ID of the instance.
--
-- * 'iImageId' - The ID of the AMI used to launch the instance.
--
-- * 'iAMILaunchIndex' - The AMI launch index, which can be used to find this instance in the launch group.
--
-- * 'iInstanceType' - The instance type.
--
-- * 'iLaunchTime' - The time the instance was launched.
--
-- * 'iPlacement' - The location where the instance launched, if applicable.
--
-- * 'iMonitoring' - The monitoring for the instance.
--
-- * 'iArchitecture' - The architecture of the image.
--
-- * 'iRootDeviceType' - The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.
--
-- * 'iVirtualizationType' - The virtualization type of the instance.
--
-- * 'iHypervisor' - The hypervisor type of the instance. The value @xen@ is used for both Xen and Nitro hypervisors.
--
-- * 'iState' - The current state of the instance.
instance' ::
  -- | 'iInstanceId'
  Text ->
  -- | 'iImageId'
  Text ->
  -- | 'iAMILaunchIndex'
  Int ->
  -- | 'iInstanceType'
  InstanceType ->
  -- | 'iLaunchTime'
  UTCTime ->
  -- | 'iPlacement'
  Placement ->
  -- | 'iMonitoring'
  Monitoring ->
  -- | 'iArchitecture'
  ArchitectureValues ->
  -- | 'iRootDeviceType'
  DeviceType ->
  -- | 'iVirtualizationType'
  VirtualizationType ->
  -- | 'iHypervisor'
  HypervisorType ->
  -- | 'iState'
  InstanceState ->
  Instance
instance'
  pInstanceId_
  pImageId_
  pAMILaunchIndex_
  pInstanceType_
  pLaunchTime_
  pPlacement_
  pMonitoring_
  pArchitecture_
  pRootDeviceType_
  pVirtualizationType_
  pHypervisor_
  pState_ =
    Instance'
      { _iPlatform = Nothing,
        _iInstanceLifecycle = Nothing,
        _iStateTransitionReason = Nothing,
        _iRootDeviceName = Nothing,
        _iCapacityReservationSpecification = Nothing,
        _iEBSOptimized = Nothing,
        _iRAMDiskId = Nothing,
        _iElasticInferenceAcceleratorAssociations = Nothing,
        _iStateReason = Nothing,
        _iOutpostARN = Nothing,
        _iSourceDestCheck = Nothing,
        _iProductCodes = Nothing,
        _iSecurityGroups = Nothing,
        _iIAMInstanceProfile = Nothing,
        _iPublicDNSName = Nothing,
        _iHibernationOptions = Nothing,
        _iCapacityReservationId = Nothing,
        _iTags = Nothing,
        _iSRIOVNetSupport = Nothing,
        _iBlockDeviceMappings = Nothing,
        _iPublicIPAddress = Nothing,
        _iSubnetId = Nothing,
        _iEnclaveOptions = Nothing,
        _iKernelId = Nothing,
        _iCPUOptions = Nothing,
        _iPrivateDNSName = Nothing,
        _iKeyName = Nothing,
        _iNetworkInterfaces = Nothing,
        _iLicenses = Nothing,
        _iVPCId = Nothing,
        _iElasticGpuAssociations = Nothing,
        _iMetadataOptions = Nothing,
        _iEnaSupport = Nothing,
        _iSpotInstanceRequestId = Nothing,
        _iClientToken = Nothing,
        _iPrivateIPAddress = Nothing,
        _iInstanceId = pInstanceId_,
        _iImageId = pImageId_,
        _iAMILaunchIndex = pAMILaunchIndex_,
        _iInstanceType = pInstanceType_,
        _iLaunchTime = _Time # pLaunchTime_,
        _iPlacement = pPlacement_,
        _iMonitoring = pMonitoring_,
        _iArchitecture = pArchitecture_,
        _iRootDeviceType = pRootDeviceType_,
        _iVirtualizationType = pVirtualizationType_,
        _iHypervisor = pHypervisor_,
        _iState = pState_
      }

-- | The value is @Windows@ for Windows instances; otherwise blank.
iPlatform :: Lens' Instance (Maybe PlatformValues)
iPlatform = lens _iPlatform (\s a -> s {_iPlatform = a})

-- | Indicates whether this is a Spot Instance or a Scheduled Instance.
iInstanceLifecycle :: Lens' Instance (Maybe InstanceLifecycleType)
iInstanceLifecycle = lens _iInstanceLifecycle (\s a -> s {_iInstanceLifecycle = a})

-- | The reason for the most recent state transition. This might be an empty string.
iStateTransitionReason :: Lens' Instance (Maybe Text)
iStateTransitionReason = lens _iStateTransitionReason (\s a -> s {_iStateTransitionReason = a})

-- | The device name of the root device volume (for example, @/dev/sda1@ ).
iRootDeviceName :: Lens' Instance (Maybe Text)
iRootDeviceName = lens _iRootDeviceName (\s a -> s {_iRootDeviceName = a})

-- | Information about the Capacity Reservation targeting option.
iCapacityReservationSpecification :: Lens' Instance (Maybe CapacityReservationSpecificationResponse)
iCapacityReservationSpecification = lens _iCapacityReservationSpecification (\s a -> s {_iCapacityReservationSpecification = a})

-- | Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
iEBSOptimized :: Lens' Instance (Maybe Bool)
iEBSOptimized = lens _iEBSOptimized (\s a -> s {_iEBSOptimized = a})

-- | The RAM disk associated with this instance, if applicable.
iRAMDiskId :: Lens' Instance (Maybe Text)
iRAMDiskId = lens _iRAMDiskId (\s a -> s {_iRAMDiskId = a})

-- | The elastic inference accelerator associated with the instance.
iElasticInferenceAcceleratorAssociations :: Lens' Instance [ElasticInferenceAcceleratorAssociation]
iElasticInferenceAcceleratorAssociations = lens _iElasticInferenceAcceleratorAssociations (\s a -> s {_iElasticInferenceAcceleratorAssociations = a}) . _Default . _Coerce

-- | The reason for the most recent state transition.
iStateReason :: Lens' Instance (Maybe StateReason)
iStateReason = lens _iStateReason (\s a -> s {_iStateReason = a})

-- | The Amazon Resource Name (ARN) of the Outpost.
iOutpostARN :: Lens' Instance (Maybe Text)
iOutpostARN = lens _iOutpostARN (\s a -> s {_iOutpostARN = a})

-- | Specifies whether to enable an instance launched in a VPC to perform NAT. This controls whether source/destination checking is enabled on the instance. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. The value must be @false@ for the instance to perform NAT. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html NAT instances> in the /Amazon VPC User Guide/ .
iSourceDestCheck :: Lens' Instance (Maybe Bool)
iSourceDestCheck = lens _iSourceDestCheck (\s a -> s {_iSourceDestCheck = a})

-- | The product codes attached to this instance, if applicable.
iProductCodes :: Lens' Instance [ProductCode]
iProductCodes = lens _iProductCodes (\s a -> s {_iProductCodes = a}) . _Default . _Coerce

-- | The security groups for the instance.
iSecurityGroups :: Lens' Instance [GroupIdentifier]
iSecurityGroups = lens _iSecurityGroups (\s a -> s {_iSecurityGroups = a}) . _Default . _Coerce

-- | The IAM instance profile associated with the instance, if applicable.
iIAMInstanceProfile :: Lens' Instance (Maybe IAMInstanceProfile)
iIAMInstanceProfile = lens _iIAMInstanceProfile (\s a -> s {_iIAMInstanceProfile = a})

-- | (IPv4 only) The public DNS name assigned to the instance. This name is not available until the instance enters the @running@ state. For EC2-VPC, this name is only available if you've enabled DNS hostnames for your VPC.
iPublicDNSName :: Lens' Instance (Maybe Text)
iPublicDNSName = lens _iPublicDNSName (\s a -> s {_iPublicDNSName = a})

-- | Indicates whether the instance is enabled for hibernation.
iHibernationOptions :: Lens' Instance (Maybe HibernationOptions)
iHibernationOptions = lens _iHibernationOptions (\s a -> s {_iHibernationOptions = a})

-- | The ID of the Capacity Reservation.
iCapacityReservationId :: Lens' Instance (Maybe Text)
iCapacityReservationId = lens _iCapacityReservationId (\s a -> s {_iCapacityReservationId = a})

-- | Any tags assigned to the instance.
iTags :: Lens' Instance [Tag]
iTags = lens _iTags (\s a -> s {_iTags = a}) . _Default . _Coerce

-- | Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
iSRIOVNetSupport :: Lens' Instance (Maybe Text)
iSRIOVNetSupport = lens _iSRIOVNetSupport (\s a -> s {_iSRIOVNetSupport = a})

-- | Any block device mapping entries for the instance.
iBlockDeviceMappings :: Lens' Instance [InstanceBlockDeviceMapping]
iBlockDeviceMappings = lens _iBlockDeviceMappings (\s a -> s {_iBlockDeviceMappings = a}) . _Default . _Coerce

-- | The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable. A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.
iPublicIPAddress :: Lens' Instance (Maybe Text)
iPublicIPAddress = lens _iPublicIPAddress (\s a -> s {_iPublicIPAddress = a})

-- | [EC2-VPC] The ID of the subnet in which the instance is running.
iSubnetId :: Lens' Instance (Maybe Text)
iSubnetId = lens _iSubnetId (\s a -> s {_iSubnetId = a})

-- | Indicates whether the instance is enabled for AWS Nitro Enclaves.
iEnclaveOptions :: Lens' Instance (Maybe EnclaveOptions)
iEnclaveOptions = lens _iEnclaveOptions (\s a -> s {_iEnclaveOptions = a})

-- | The kernel associated with this instance, if applicable.
iKernelId :: Lens' Instance (Maybe Text)
iKernelId = lens _iKernelId (\s a -> s {_iKernelId = a})

-- | The CPU options for the instance.
iCPUOptions :: Lens' Instance (Maybe CPUOptions)
iCPUOptions = lens _iCPUOptions (\s a -> s {_iCPUOptions = a})

-- | (IPv4 only) The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the @running@ state.  [EC2-VPC] The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.
iPrivateDNSName :: Lens' Instance (Maybe Text)
iPrivateDNSName = lens _iPrivateDNSName (\s a -> s {_iPrivateDNSName = a})

-- | The name of the key pair, if this instance was launched with an associated key pair.
iKeyName :: Lens' Instance (Maybe Text)
iKeyName = lens _iKeyName (\s a -> s {_iKeyName = a})

-- | [EC2-VPC] The network interfaces for the instance.
iNetworkInterfaces :: Lens' Instance [InstanceNetworkInterface]
iNetworkInterfaces = lens _iNetworkInterfaces (\s a -> s {_iNetworkInterfaces = a}) . _Default . _Coerce

-- | The license configurations.
iLicenses :: Lens' Instance [LicenseConfiguration]
iLicenses = lens _iLicenses (\s a -> s {_iLicenses = a}) . _Default . _Coerce

-- | [EC2-VPC] The ID of the VPC in which the instance is running.
iVPCId :: Lens' Instance (Maybe Text)
iVPCId = lens _iVPCId (\s a -> s {_iVPCId = a})

-- | The Elastic GPU associated with the instance.
iElasticGpuAssociations :: Lens' Instance [ElasticGpuAssociation]
iElasticGpuAssociations = lens _iElasticGpuAssociations (\s a -> s {_iElasticGpuAssociations = a}) . _Default . _Coerce

-- | The metadata options for the instance.
iMetadataOptions :: Lens' Instance (Maybe InstanceMetadataOptionsResponse)
iMetadataOptions = lens _iMetadataOptions (\s a -> s {_iMetadataOptions = a})

-- | Specifies whether enhanced networking with ENA is enabled.
iEnaSupport :: Lens' Instance (Maybe Bool)
iEnaSupport = lens _iEnaSupport (\s a -> s {_iEnaSupport = a})

-- | If the request is a Spot Instance request, the ID of the request.
iSpotInstanceRequestId :: Lens' Instance (Maybe Text)
iSpotInstanceRequestId = lens _iSpotInstanceRequestId (\s a -> s {_iSpotInstanceRequestId = a})

-- | The idempotency token you provided when you launched the instance, if applicable.
iClientToken :: Lens' Instance (Maybe Text)
iClientToken = lens _iClientToken (\s a -> s {_iClientToken = a})

-- | The private IPv4 address assigned to the instance.
iPrivateIPAddress :: Lens' Instance (Maybe Text)
iPrivateIPAddress = lens _iPrivateIPAddress (\s a -> s {_iPrivateIPAddress = a})

-- | The ID of the instance.
iInstanceId :: Lens' Instance Text
iInstanceId = lens _iInstanceId (\s a -> s {_iInstanceId = a})

-- | The ID of the AMI used to launch the instance.
iImageId :: Lens' Instance Text
iImageId = lens _iImageId (\s a -> s {_iImageId = a})

-- | The AMI launch index, which can be used to find this instance in the launch group.
iAMILaunchIndex :: Lens' Instance Int
iAMILaunchIndex = lens _iAMILaunchIndex (\s a -> s {_iAMILaunchIndex = a})

-- | The instance type.
iInstanceType :: Lens' Instance InstanceType
iInstanceType = lens _iInstanceType (\s a -> s {_iInstanceType = a})

-- | The time the instance was launched.
iLaunchTime :: Lens' Instance UTCTime
iLaunchTime = lens _iLaunchTime (\s a -> s {_iLaunchTime = a}) . _Time

-- | The location where the instance launched, if applicable.
iPlacement :: Lens' Instance Placement
iPlacement = lens _iPlacement (\s a -> s {_iPlacement = a})

-- | The monitoring for the instance.
iMonitoring :: Lens' Instance Monitoring
iMonitoring = lens _iMonitoring (\s a -> s {_iMonitoring = a})

-- | The architecture of the image.
iArchitecture :: Lens' Instance ArchitectureValues
iArchitecture = lens _iArchitecture (\s a -> s {_iArchitecture = a})

-- | The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.
iRootDeviceType :: Lens' Instance DeviceType
iRootDeviceType = lens _iRootDeviceType (\s a -> s {_iRootDeviceType = a})

-- | The virtualization type of the instance.
iVirtualizationType :: Lens' Instance VirtualizationType
iVirtualizationType = lens _iVirtualizationType (\s a -> s {_iVirtualizationType = a})

-- | The hypervisor type of the instance. The value @xen@ is used for both Xen and Nitro hypervisors.
iHypervisor :: Lens' Instance HypervisorType
iHypervisor = lens _iHypervisor (\s a -> s {_iHypervisor = a})

-- | The current state of the instance.
iState :: Lens' Instance InstanceState
iState = lens _iState (\s a -> s {_iState = a})

instance FromXML Instance where
  parseXML x =
    Instance'
      <$> (x .@? "platform")
      <*> (x .@? "instanceLifecycle")
      <*> (x .@? "reason")
      <*> (x .@? "rootDeviceName")
      <*> (x .@? "capacityReservationSpecification")
      <*> (x .@? "ebsOptimized")
      <*> (x .@? "ramdiskId")
      <*> ( x .@? "elasticInferenceAcceleratorAssociationSet"
              .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "stateReason")
      <*> (x .@? "outpostArn")
      <*> (x .@? "sourceDestCheck")
      <*> ( x .@? "productCodes" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "groupSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "iamInstanceProfile")
      <*> (x .@? "dnsName")
      <*> (x .@? "hibernationOptions")
      <*> (x .@? "capacityReservationId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "sriovNetSupport")
      <*> ( x .@? "blockDeviceMapping" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "ipAddress")
      <*> (x .@? "subnetId")
      <*> (x .@? "enclaveOptions")
      <*> (x .@? "kernelId")
      <*> (x .@? "cpuOptions")
      <*> (x .@? "privateDnsName")
      <*> (x .@? "keyName")
      <*> ( x .@? "networkInterfaceSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "licenseSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcId")
      <*> ( x .@? "elasticGpuAssociationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "metadataOptions")
      <*> (x .@? "enaSupport")
      <*> (x .@? "spotInstanceRequestId")
      <*> (x .@? "clientToken")
      <*> (x .@? "privateIpAddress")
      <*> (x .@ "instanceId")
      <*> (x .@ "imageId")
      <*> (x .@ "amiLaunchIndex")
      <*> (x .@ "instanceType")
      <*> (x .@ "launchTime")
      <*> (x .@ "placement")
      <*> (x .@ "monitoring")
      <*> (x .@ "architecture")
      <*> (x .@ "rootDeviceType")
      <*> (x .@ "virtualizationType")
      <*> (x .@ "hypervisor")
      <*> (x .@ "instanceState")

instance Hashable Instance

instance NFData Instance

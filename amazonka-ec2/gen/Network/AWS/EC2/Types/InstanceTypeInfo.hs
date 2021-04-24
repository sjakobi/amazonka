{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceTypeInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceTypeInfo where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EBSInfo
import Network.AWS.EC2.Types.FpgaInfo
import Network.AWS.EC2.Types.GpuInfo
import Network.AWS.EC2.Types.InferenceAcceleratorInfo
import Network.AWS.EC2.Types.InstanceStorageInfo
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.InstanceTypeHypervisor
import Network.AWS.EC2.Types.MemoryInfo
import Network.AWS.EC2.Types.NetworkInfo
import Network.AWS.EC2.Types.PlacementGroupInfo
import Network.AWS.EC2.Types.ProcessorInfo
import Network.AWS.EC2.Types.RootDeviceType
import Network.AWS.EC2.Types.UsageClassType
import Network.AWS.EC2.Types.VCPUInfo
import Network.AWS.EC2.Types.VirtualizationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the instance type.
--
--
--
-- /See:/ 'instanceTypeInfo' smart constructor.
data InstanceTypeInfo = InstanceTypeInfo'
  { _itiMemoryInfo ::
      !(Maybe MemoryInfo),
    _itiHypervisor ::
      !(Maybe InstanceTypeHypervisor),
    _itiGpuInfo :: !(Maybe GpuInfo),
    _itiInstanceType ::
      !(Maybe InstanceType),
    _itiBurstablePerformanceSupported ::
      !(Maybe Bool),
    _itiVCPUInfo :: !(Maybe VCPUInfo),
    _itiSupportedRootDeviceTypes ::
      !(Maybe [RootDeviceType]),
    _itiPlacementGroupInfo ::
      !(Maybe PlacementGroupInfo),
    _itiNetworkInfo ::
      !(Maybe NetworkInfo),
    _itiProcessorInfo ::
      !(Maybe ProcessorInfo),
    _itiEBSInfo :: !(Maybe EBSInfo),
    _itiAutoRecoverySupported ::
      !(Maybe Bool),
    _itiCurrentGeneration ::
      !(Maybe Bool),
    _itiHibernationSupported ::
      !(Maybe Bool),
    _itiDedicatedHostsSupported ::
      !(Maybe Bool),
    _itiInstanceStorageSupported ::
      !(Maybe Bool),
    _itiInstanceStorageInfo ::
      !(Maybe InstanceStorageInfo),
    _itiFpgaInfo :: !(Maybe FpgaInfo),
    _itiSupportedUsageClasses ::
      !(Maybe [UsageClassType]),
    _itiFreeTierEligible :: !(Maybe Bool),
    _itiBareMetal :: !(Maybe Bool),
    _itiInferenceAcceleratorInfo ::
      !(Maybe InferenceAcceleratorInfo),
    _itiSupportedVirtualizationTypes ::
      !(Maybe [VirtualizationType])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceTypeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiMemoryInfo' - Describes the memory for the instance type.
--
-- * 'itiHypervisor' - The hypervisor for the instance type.
--
-- * 'itiGpuInfo' - Describes the GPU accelerator settings for the instance type.
--
-- * 'itiInstanceType' - The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ .
--
-- * 'itiBurstablePerformanceSupported' - Indicates whether the instance type is a burstable performance instance type.
--
-- * 'itiVCPUInfo' - Describes the vCPU configurations for the instance type.
--
-- * 'itiSupportedRootDeviceTypes' - The supported root device types.
--
-- * 'itiPlacementGroupInfo' - Describes the placement group settings for the instance type.
--
-- * 'itiNetworkInfo' - Describes the network settings for the instance type.
--
-- * 'itiProcessorInfo' - Describes the processor.
--
-- * 'itiEBSInfo' - Describes the Amazon EBS settings for the instance type.
--
-- * 'itiAutoRecoverySupported' - Indicates whether auto recovery is supported.
--
-- * 'itiCurrentGeneration' - Indicates whether the instance type is current generation.
--
-- * 'itiHibernationSupported' - Indicates whether On-Demand hibernation is supported.
--
-- * 'itiDedicatedHostsSupported' - Indicates whether Dedicated Hosts are supported on the instance type.
--
-- * 'itiInstanceStorageSupported' - Indicates whether instance storage is supported.
--
-- * 'itiInstanceStorageInfo' - Describes the instance storage for the instance type.
--
-- * 'itiFpgaInfo' - Describes the FPGA accelerator settings for the instance type.
--
-- * 'itiSupportedUsageClasses' - Indicates whether the instance type is offered for spot or On-Demand.
--
-- * 'itiFreeTierEligible' - Indicates whether the instance type is eligible for the free tier.
--
-- * 'itiBareMetal' - Indicates whether the instance is a bare metal instance type.
--
-- * 'itiInferenceAcceleratorInfo' - Describes the Inference accelerator settings for the instance type.
--
-- * 'itiSupportedVirtualizationTypes' - The supported virtualization types.
instanceTypeInfo ::
  InstanceTypeInfo
instanceTypeInfo =
  InstanceTypeInfo'
    { _itiMemoryInfo = Nothing,
      _itiHypervisor = Nothing,
      _itiGpuInfo = Nothing,
      _itiInstanceType = Nothing,
      _itiBurstablePerformanceSupported = Nothing,
      _itiVCPUInfo = Nothing,
      _itiSupportedRootDeviceTypes = Nothing,
      _itiPlacementGroupInfo = Nothing,
      _itiNetworkInfo = Nothing,
      _itiProcessorInfo = Nothing,
      _itiEBSInfo = Nothing,
      _itiAutoRecoverySupported = Nothing,
      _itiCurrentGeneration = Nothing,
      _itiHibernationSupported = Nothing,
      _itiDedicatedHostsSupported = Nothing,
      _itiInstanceStorageSupported = Nothing,
      _itiInstanceStorageInfo = Nothing,
      _itiFpgaInfo = Nothing,
      _itiSupportedUsageClasses = Nothing,
      _itiFreeTierEligible = Nothing,
      _itiBareMetal = Nothing,
      _itiInferenceAcceleratorInfo = Nothing,
      _itiSupportedVirtualizationTypes = Nothing
    }

-- | Describes the memory for the instance type.
itiMemoryInfo :: Lens' InstanceTypeInfo (Maybe MemoryInfo)
itiMemoryInfo = lens _itiMemoryInfo (\s a -> s {_itiMemoryInfo = a})

-- | The hypervisor for the instance type.
itiHypervisor :: Lens' InstanceTypeInfo (Maybe InstanceTypeHypervisor)
itiHypervisor = lens _itiHypervisor (\s a -> s {_itiHypervisor = a})

-- | Describes the GPU accelerator settings for the instance type.
itiGpuInfo :: Lens' InstanceTypeInfo (Maybe GpuInfo)
itiGpuInfo = lens _itiGpuInfo (\s a -> s {_itiGpuInfo = a})

-- | The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ .
itiInstanceType :: Lens' InstanceTypeInfo (Maybe InstanceType)
itiInstanceType = lens _itiInstanceType (\s a -> s {_itiInstanceType = a})

-- | Indicates whether the instance type is a burstable performance instance type.
itiBurstablePerformanceSupported :: Lens' InstanceTypeInfo (Maybe Bool)
itiBurstablePerformanceSupported = lens _itiBurstablePerformanceSupported (\s a -> s {_itiBurstablePerformanceSupported = a})

-- | Describes the vCPU configurations for the instance type.
itiVCPUInfo :: Lens' InstanceTypeInfo (Maybe VCPUInfo)
itiVCPUInfo = lens _itiVCPUInfo (\s a -> s {_itiVCPUInfo = a})

-- | The supported root device types.
itiSupportedRootDeviceTypes :: Lens' InstanceTypeInfo [RootDeviceType]
itiSupportedRootDeviceTypes = lens _itiSupportedRootDeviceTypes (\s a -> s {_itiSupportedRootDeviceTypes = a}) . _Default . _Coerce

-- | Describes the placement group settings for the instance type.
itiPlacementGroupInfo :: Lens' InstanceTypeInfo (Maybe PlacementGroupInfo)
itiPlacementGroupInfo = lens _itiPlacementGroupInfo (\s a -> s {_itiPlacementGroupInfo = a})

-- | Describes the network settings for the instance type.
itiNetworkInfo :: Lens' InstanceTypeInfo (Maybe NetworkInfo)
itiNetworkInfo = lens _itiNetworkInfo (\s a -> s {_itiNetworkInfo = a})

-- | Describes the processor.
itiProcessorInfo :: Lens' InstanceTypeInfo (Maybe ProcessorInfo)
itiProcessorInfo = lens _itiProcessorInfo (\s a -> s {_itiProcessorInfo = a})

-- | Describes the Amazon EBS settings for the instance type.
itiEBSInfo :: Lens' InstanceTypeInfo (Maybe EBSInfo)
itiEBSInfo = lens _itiEBSInfo (\s a -> s {_itiEBSInfo = a})

-- | Indicates whether auto recovery is supported.
itiAutoRecoverySupported :: Lens' InstanceTypeInfo (Maybe Bool)
itiAutoRecoverySupported = lens _itiAutoRecoverySupported (\s a -> s {_itiAutoRecoverySupported = a})

-- | Indicates whether the instance type is current generation.
itiCurrentGeneration :: Lens' InstanceTypeInfo (Maybe Bool)
itiCurrentGeneration = lens _itiCurrentGeneration (\s a -> s {_itiCurrentGeneration = a})

-- | Indicates whether On-Demand hibernation is supported.
itiHibernationSupported :: Lens' InstanceTypeInfo (Maybe Bool)
itiHibernationSupported = lens _itiHibernationSupported (\s a -> s {_itiHibernationSupported = a})

-- | Indicates whether Dedicated Hosts are supported on the instance type.
itiDedicatedHostsSupported :: Lens' InstanceTypeInfo (Maybe Bool)
itiDedicatedHostsSupported = lens _itiDedicatedHostsSupported (\s a -> s {_itiDedicatedHostsSupported = a})

-- | Indicates whether instance storage is supported.
itiInstanceStorageSupported :: Lens' InstanceTypeInfo (Maybe Bool)
itiInstanceStorageSupported = lens _itiInstanceStorageSupported (\s a -> s {_itiInstanceStorageSupported = a})

-- | Describes the instance storage for the instance type.
itiInstanceStorageInfo :: Lens' InstanceTypeInfo (Maybe InstanceStorageInfo)
itiInstanceStorageInfo = lens _itiInstanceStorageInfo (\s a -> s {_itiInstanceStorageInfo = a})

-- | Describes the FPGA accelerator settings for the instance type.
itiFpgaInfo :: Lens' InstanceTypeInfo (Maybe FpgaInfo)
itiFpgaInfo = lens _itiFpgaInfo (\s a -> s {_itiFpgaInfo = a})

-- | Indicates whether the instance type is offered for spot or On-Demand.
itiSupportedUsageClasses :: Lens' InstanceTypeInfo [UsageClassType]
itiSupportedUsageClasses = lens _itiSupportedUsageClasses (\s a -> s {_itiSupportedUsageClasses = a}) . _Default . _Coerce

-- | Indicates whether the instance type is eligible for the free tier.
itiFreeTierEligible :: Lens' InstanceTypeInfo (Maybe Bool)
itiFreeTierEligible = lens _itiFreeTierEligible (\s a -> s {_itiFreeTierEligible = a})

-- | Indicates whether the instance is a bare metal instance type.
itiBareMetal :: Lens' InstanceTypeInfo (Maybe Bool)
itiBareMetal = lens _itiBareMetal (\s a -> s {_itiBareMetal = a})

-- | Describes the Inference accelerator settings for the instance type.
itiInferenceAcceleratorInfo :: Lens' InstanceTypeInfo (Maybe InferenceAcceleratorInfo)
itiInferenceAcceleratorInfo = lens _itiInferenceAcceleratorInfo (\s a -> s {_itiInferenceAcceleratorInfo = a})

-- | The supported virtualization types.
itiSupportedVirtualizationTypes :: Lens' InstanceTypeInfo [VirtualizationType]
itiSupportedVirtualizationTypes = lens _itiSupportedVirtualizationTypes (\s a -> s {_itiSupportedVirtualizationTypes = a}) . _Default . _Coerce

instance FromXML InstanceTypeInfo where
  parseXML x =
    InstanceTypeInfo'
      <$> (x .@? "memoryInfo")
      <*> (x .@? "hypervisor")
      <*> (x .@? "gpuInfo")
      <*> (x .@? "instanceType")
      <*> (x .@? "burstablePerformanceSupported")
      <*> (x .@? "vCpuInfo")
      <*> ( x .@? "supportedRootDeviceTypes" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "placementGroupInfo")
      <*> (x .@? "networkInfo")
      <*> (x .@? "processorInfo")
      <*> (x .@? "ebsInfo")
      <*> (x .@? "autoRecoverySupported")
      <*> (x .@? "currentGeneration")
      <*> (x .@? "hibernationSupported")
      <*> (x .@? "dedicatedHostsSupported")
      <*> (x .@? "instanceStorageSupported")
      <*> (x .@? "instanceStorageInfo")
      <*> (x .@? "fpgaInfo")
      <*> ( x .@? "supportedUsageClasses" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "freeTierEligible")
      <*> (x .@? "bareMetal")
      <*> (x .@? "inferenceAcceleratorInfo")
      <*> ( x .@? "supportedVirtualizationTypes" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable InstanceTypeInfo

instance NFData InstanceTypeInfo

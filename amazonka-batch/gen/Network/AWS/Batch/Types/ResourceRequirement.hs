{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ResourceRequirement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ResourceRequirement where

import Network.AWS.Batch.Types.ResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The type and amount of a resource to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
--
--
--
-- /See:/ 'resourceRequirement' smart constructor.
data ResourceRequirement = ResourceRequirement'
  { _rrValue ::
      !Text,
    _rrType :: !ResourceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceRequirement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrValue' - The quantity of the specified resource to reserve for the container. The values vary based on the @type@ specified.     * type="GPU"    * The number of physical GPUs to reserve for the container. The number of GPUs reserved for all containers in a job shouldn't exceed the number of available GPUs on the compute resource that the job is launched on.     * type="MEMORY"    * For jobs running on EC2 resources, the hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places for multi-node parallel (MNP) jobs. It must be specified for each node at least once. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . For jobs running on Fargate resources, then @value@ is the hard limit (in MiB), and must match one of the supported values and the @VCPU@ values must be one of the values supported for that memory value.     * value = 512    * @VCPU@ = 0.25     * value = 1024    * @VCPU@ = 0.25 or 0.5     * value = 2048    * @VCPU@ = 0.25, 0.5, or 1     * value = 3072    * @VCPU@ = 0.5, or 1     * value = 4096    * @VCPU@ = 0.5, 1, or 2     * value = 5120, 6144, or 7168    * @VCPU@ = 1 or 2     * value = 8192    * @VCPU@ = 1, 2, or 4     * value = 9216, 10240, 11264, 12288, 13312, 14336, 15360, or 16384    * @VCPU@ = 2 or 4     * value = 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576, 25600, 26624, 27648, 28672, 29696, or 30720    * @VCPU@ = 4     * type="VCPU"    * The number of vCPUs reserved for the container. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. For EC2 resources, you must specify at least one vCPU. This is required but can be specified in several places; it must be specified for each node at least once. For jobs running on Fargate resources, then @value@ must match one of the supported values and the @MEMORY@ values must be one of the values supported for that VCPU value. The supported values are 0.25, 0.5, 1, 2, and 4     * value = 0.25    * @MEMORY@ = 512, 1024, or 2048     * value = 0.5    * @MEMORY@ = 1024, 2048, 3072, or 4096     * value = 1    * @MEMORY@ = 2048, 3072, 4096, 5120, 6144, 7168, or 8192     * value = 2    * @MEMORY@ = 4096, 5120, 6144, 7168, 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360, or 16384     * value = 4    * @MEMORY@ = 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360, 16384, 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576, 25600, 26624, 27648, 28672, 29696, or 30720
--
-- * 'rrType' - The type of resource to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
resourceRequirement ::
  -- | 'rrValue'
  Text ->
  -- | 'rrType'
  ResourceType ->
  ResourceRequirement
resourceRequirement pValue_ pType_ =
  ResourceRequirement'
    { _rrValue = pValue_,
      _rrType = pType_
    }

-- | The quantity of the specified resource to reserve for the container. The values vary based on the @type@ specified.     * type="GPU"    * The number of physical GPUs to reserve for the container. The number of GPUs reserved for all containers in a job shouldn't exceed the number of available GPUs on the compute resource that the job is launched on.     * type="MEMORY"    * For jobs running on EC2 resources, the hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places for multi-node parallel (MNP) jobs. It must be specified for each node at least once. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . For jobs running on Fargate resources, then @value@ is the hard limit (in MiB), and must match one of the supported values and the @VCPU@ values must be one of the values supported for that memory value.     * value = 512    * @VCPU@ = 0.25     * value = 1024    * @VCPU@ = 0.25 or 0.5     * value = 2048    * @VCPU@ = 0.25, 0.5, or 1     * value = 3072    * @VCPU@ = 0.5, or 1     * value = 4096    * @VCPU@ = 0.5, 1, or 2     * value = 5120, 6144, or 7168    * @VCPU@ = 1 or 2     * value = 8192    * @VCPU@ = 1, 2, or 4     * value = 9216, 10240, 11264, 12288, 13312, 14336, 15360, or 16384    * @VCPU@ = 2 or 4     * value = 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576, 25600, 26624, 27648, 28672, 29696, or 30720    * @VCPU@ = 4     * type="VCPU"    * The number of vCPUs reserved for the container. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. For EC2 resources, you must specify at least one vCPU. This is required but can be specified in several places; it must be specified for each node at least once. For jobs running on Fargate resources, then @value@ must match one of the supported values and the @MEMORY@ values must be one of the values supported for that VCPU value. The supported values are 0.25, 0.5, 1, 2, and 4     * value = 0.25    * @MEMORY@ = 512, 1024, or 2048     * value = 0.5    * @MEMORY@ = 1024, 2048, 3072, or 4096     * value = 1    * @MEMORY@ = 2048, 3072, 4096, 5120, 6144, 7168, or 8192     * value = 2    * @MEMORY@ = 4096, 5120, 6144, 7168, 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360, or 16384     * value = 4    * @MEMORY@ = 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360, 16384, 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576, 25600, 26624, 27648, 28672, 29696, or 30720
rrValue :: Lens' ResourceRequirement Text
rrValue = lens _rrValue (\s a -> s {_rrValue = a})

-- | The type of resource to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
rrType :: Lens' ResourceRequirement ResourceType
rrType = lens _rrType (\s a -> s {_rrType = a})

instance FromJSON ResourceRequirement where
  parseJSON =
    withObject
      "ResourceRequirement"
      ( \x ->
          ResourceRequirement'
            <$> (x .: "value") <*> (x .: "type")
      )

instance Hashable ResourceRequirement

instance NFData ResourceRequirement

instance ToJSON ResourceRequirement where
  toJSON ResourceRequirement' {..} =
    object
      ( catMaybes
          [ Just ("value" .= _rrValue),
            Just ("type" .= _rrType)
          ]
      )

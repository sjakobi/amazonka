{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ContainerProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ContainerProperties where

import Network.AWS.Batch.Types.FargatePlatformConfiguration
import Network.AWS.Batch.Types.KeyValuePair
import Network.AWS.Batch.Types.LinuxParameters
import Network.AWS.Batch.Types.LogConfiguration
import Network.AWS.Batch.Types.MountPoint
import Network.AWS.Batch.Types.NetworkConfiguration
import Network.AWS.Batch.Types.ResourceRequirement
import Network.AWS.Batch.Types.Secret
import Network.AWS.Batch.Types.Ulimit
import Network.AWS.Batch.Types.Volume
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Container properties are used in job definitions to describe the container that's launched as part of a job.
--
--
--
-- /See:/ 'containerProperties' smart constructor.
data ContainerProperties = ContainerProperties'
  { _cpLinuxParameters ::
      !(Maybe LinuxParameters),
    _cpMemory :: !(Maybe Int),
    _cpUser :: !(Maybe Text),
    _cpInstanceType ::
      !(Maybe Text),
    _cpNetworkConfiguration ::
      !(Maybe NetworkConfiguration),
    _cpExecutionRoleARN ::
      !(Maybe Text),
    _cpPrivileged :: !(Maybe Bool),
    _cpVcpus :: !(Maybe Int),
    _cpVolumes :: !(Maybe [Volume]),
    _cpEnvironment ::
      !(Maybe [KeyValuePair]),
    _cpFargatePlatformConfiguration ::
      !( Maybe
           FargatePlatformConfiguration
       ),
    _cpSecrets :: !(Maybe [Secret]),
    _cpMountPoints ::
      !(Maybe [MountPoint]),
    _cpImage :: !(Maybe Text),
    _cpCommand :: !(Maybe [Text]),
    _cpLogConfiguration ::
      !(Maybe LogConfiguration),
    _cpResourceRequirements ::
      !(Maybe [ResourceRequirement]),
    _cpJobRoleARN :: !(Maybe Text),
    _cpReadonlyRootFilesystem ::
      !(Maybe Bool),
    _cpUlimits :: !(Maybe [Ulimit])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpLinuxParameters' - Linux-specific modifications that are applied to the container, such as details for device mappings.
--
-- * 'cpMemory' - This parameter is deprecated and not supported for jobs run on Fargate resources, use @ResourceRequirement@ . For jobs run on EC2 resources can specify the memory requirement using the @ResourceRequirement@ structure. The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places; it must be specified for each node at least once.
--
-- * 'cpUser' - The user name to use inside the container. This parameter maps to @User@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--user@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cpInstanceType' - The instance type to use for a multi-node parallel job. All node groups in a multi-node parallel job must use the same instance type.
--
-- * 'cpNetworkConfiguration' - The network configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
--
-- * 'cpExecutionRoleARN' - The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. Jobs running on Fargate resources must provide an execution role. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html AWS Batch execution IAM role> in the /AWS Batch User Guide/ .
--
-- * 'cpPrivileged' - When this parameter is true, the container is given elevated permissions on the host container instance (similar to the @root@ user). This parameter maps to @Privileged@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--privileged@ option to <https://docs.docker.com/engine/reference/run/ docker run> . The default value is false.
--
-- * 'cpVcpus' - This parameter is deprecated and not supported for jobs run on Fargate resources, see @resourceRequirement@ . The number of vCPUs reserved for the container. Jobs running on EC2 resources can specify the vCPU requirement for the job using @resourceRequirements@ but the vCPU requirements can't be specified both here and in the @resourceRequirement@ structure. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU. This is required but can be specified in several places. It must be specified for each node at least once.
--
-- * 'cpVolumes' - A list of data volumes used in a job.
--
-- * 'cpEnvironment' - The environment variables to pass to a container. This parameter maps to @Env@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--env@ option to <https://docs.docker.com/engine/reference/run/ docker run> . /Important:/ We don't recommend using plaintext environment variables for sensitive information, such as credential data.
--
-- * 'cpFargatePlatformConfiguration' - The platform configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
--
-- * 'cpSecrets' - The secrets for the container. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html Specifying sensitive data> in the /AWS Batch User Guide/ .
--
-- * 'cpMountPoints' - The mount points for data volumes in your container. This parameter maps to @Volumes@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--volume@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cpImage' - The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with @/repository-url/ //image/ :/tag/ @ . Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to @Image@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @IMAGE@ parameter of <https://docs.docker.com/engine/reference/run/ docker run> .     * Images in Amazon ECR repositories use the full registry and repository URI (for example, @012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@ ).     * Images in official repositories on Docker Hub use a single name (for example, @ubuntu@ or @mongo@ ).     * Images in other repositories on Docker Hub are qualified with an organization name (for example, @amazon/amazon-ecs-agent@ ).     * Images in other online repositories are qualified further by a domain name (for example, @quay.io/assemblyline/ubuntu@ ).
--
-- * 'cpCommand' - The command that's passed to the container. This parameter maps to @Cmd@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @COMMAND@ parameter to <https://docs.docker.com/engine/reference/run/ docker run> . For more information, see <https://docs.docker.com/engine/reference/builder/#cmd https://docs.docker.com/engine/reference/builder/#cmd> .
--
-- * 'cpLogConfiguration' - The log configuration specification for the container. This parameter maps to @LogConfig@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--log-driver@ option to <https://docs.docker.com/engine/reference/run/ docker run> . By default, containers use the same logging driver that the Docker daemon uses. However the container might use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <https://docs.docker.com/engine/admin/logging/overview/ Configure logging drivers> in the Docker documentation. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: @sudo docker version | grep "Server API version"@
--
-- * 'cpResourceRequirements' - The type and amount of resources to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
--
-- * 'cpJobRoleARN' - The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'cpReadonlyRootFilesystem' - When this parameter is true, the container is given read-only access to its root file system. This parameter maps to @ReadonlyRootfs@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--read-only@ option to @docker run@ .
--
-- * 'cpUlimits' - A list of @ulimits@ to set in the container. This parameter maps to @Ulimits@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--ulimit@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
containerProperties ::
  ContainerProperties
containerProperties =
  ContainerProperties'
    { _cpLinuxParameters = Nothing,
      _cpMemory = Nothing,
      _cpUser = Nothing,
      _cpInstanceType = Nothing,
      _cpNetworkConfiguration = Nothing,
      _cpExecutionRoleARN = Nothing,
      _cpPrivileged = Nothing,
      _cpVcpus = Nothing,
      _cpVolumes = Nothing,
      _cpEnvironment = Nothing,
      _cpFargatePlatformConfiguration = Nothing,
      _cpSecrets = Nothing,
      _cpMountPoints = Nothing,
      _cpImage = Nothing,
      _cpCommand = Nothing,
      _cpLogConfiguration = Nothing,
      _cpResourceRequirements = Nothing,
      _cpJobRoleARN = Nothing,
      _cpReadonlyRootFilesystem = Nothing,
      _cpUlimits = Nothing
    }

-- | Linux-specific modifications that are applied to the container, such as details for device mappings.
cpLinuxParameters :: Lens' ContainerProperties (Maybe LinuxParameters)
cpLinuxParameters = lens _cpLinuxParameters (\s a -> s {_cpLinuxParameters = a})

-- | This parameter is deprecated and not supported for jobs run on Fargate resources, use @ResourceRequirement@ . For jobs run on EC2 resources can specify the memory requirement using the @ResourceRequirement@ structure. The hard limit (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. This parameter maps to @Memory@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--memory@ option to <https://docs.docker.com/engine/reference/run/ docker run> . You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places; it must be specified for each node at least once.
cpMemory :: Lens' ContainerProperties (Maybe Int)
cpMemory = lens _cpMemory (\s a -> s {_cpMemory = a})

-- | The user name to use inside the container. This parameter maps to @User@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--user@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cpUser :: Lens' ContainerProperties (Maybe Text)
cpUser = lens _cpUser (\s a -> s {_cpUser = a})

-- | The instance type to use for a multi-node parallel job. All node groups in a multi-node parallel job must use the same instance type.
cpInstanceType :: Lens' ContainerProperties (Maybe Text)
cpInstanceType = lens _cpInstanceType (\s a -> s {_cpInstanceType = a})

-- | The network configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
cpNetworkConfiguration :: Lens' ContainerProperties (Maybe NetworkConfiguration)
cpNetworkConfiguration = lens _cpNetworkConfiguration (\s a -> s {_cpNetworkConfiguration = a})

-- | The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. Jobs running on Fargate resources must provide an execution role. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html AWS Batch execution IAM role> in the /AWS Batch User Guide/ .
cpExecutionRoleARN :: Lens' ContainerProperties (Maybe Text)
cpExecutionRoleARN = lens _cpExecutionRoleARN (\s a -> s {_cpExecutionRoleARN = a})

-- | When this parameter is true, the container is given elevated permissions on the host container instance (similar to the @root@ user). This parameter maps to @Privileged@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--privileged@ option to <https://docs.docker.com/engine/reference/run/ docker run> . The default value is false.
cpPrivileged :: Lens' ContainerProperties (Maybe Bool)
cpPrivileged = lens _cpPrivileged (\s a -> s {_cpPrivileged = a})

-- | This parameter is deprecated and not supported for jobs run on Fargate resources, see @resourceRequirement@ . The number of vCPUs reserved for the container. Jobs running on EC2 resources can specify the vCPU requirement for the job using @resourceRequirements@ but the vCPU requirements can't be specified both here and in the @resourceRequirement@ structure. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU. This is required but can be specified in several places. It must be specified for each node at least once.
cpVcpus :: Lens' ContainerProperties (Maybe Int)
cpVcpus = lens _cpVcpus (\s a -> s {_cpVcpus = a})

-- | A list of data volumes used in a job.
cpVolumes :: Lens' ContainerProperties [Volume]
cpVolumes = lens _cpVolumes (\s a -> s {_cpVolumes = a}) . _Default . _Coerce

-- | The environment variables to pass to a container. This parameter maps to @Env@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--env@ option to <https://docs.docker.com/engine/reference/run/ docker run> . /Important:/ We don't recommend using plaintext environment variables for sensitive information, such as credential data.
cpEnvironment :: Lens' ContainerProperties [KeyValuePair]
cpEnvironment = lens _cpEnvironment (\s a -> s {_cpEnvironment = a}) . _Default . _Coerce

-- | The platform configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
cpFargatePlatformConfiguration :: Lens' ContainerProperties (Maybe FargatePlatformConfiguration)
cpFargatePlatformConfiguration = lens _cpFargatePlatformConfiguration (\s a -> s {_cpFargatePlatformConfiguration = a})

-- | The secrets for the container. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html Specifying sensitive data> in the /AWS Batch User Guide/ .
cpSecrets :: Lens' ContainerProperties [Secret]
cpSecrets = lens _cpSecrets (\s a -> s {_cpSecrets = a}) . _Default . _Coerce

-- | The mount points for data volumes in your container. This parameter maps to @Volumes@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--volume@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cpMountPoints :: Lens' ContainerProperties [MountPoint]
cpMountPoints = lens _cpMountPoints (\s a -> s {_cpMountPoints = a}) . _Default . _Coerce

-- | The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with @/repository-url/ //image/ :/tag/ @ . Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to @Image@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @IMAGE@ parameter of <https://docs.docker.com/engine/reference/run/ docker run> .     * Images in Amazon ECR repositories use the full registry and repository URI (for example, @012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@ ).     * Images in official repositories on Docker Hub use a single name (for example, @ubuntu@ or @mongo@ ).     * Images in other repositories on Docker Hub are qualified with an organization name (for example, @amazon/amazon-ecs-agent@ ).     * Images in other online repositories are qualified further by a domain name (for example, @quay.io/assemblyline/ubuntu@ ).
cpImage :: Lens' ContainerProperties (Maybe Text)
cpImage = lens _cpImage (\s a -> s {_cpImage = a})

-- | The command that's passed to the container. This parameter maps to @Cmd@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @COMMAND@ parameter to <https://docs.docker.com/engine/reference/run/ docker run> . For more information, see <https://docs.docker.com/engine/reference/builder/#cmd https://docs.docker.com/engine/reference/builder/#cmd> .
cpCommand :: Lens' ContainerProperties [Text]
cpCommand = lens _cpCommand (\s a -> s {_cpCommand = a}) . _Default . _Coerce

-- | The log configuration specification for the container. This parameter maps to @LogConfig@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--log-driver@ option to <https://docs.docker.com/engine/reference/run/ docker run> . By default, containers use the same logging driver that the Docker daemon uses. However the container might use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <https://docs.docker.com/engine/admin/logging/overview/ Configure logging drivers> in the Docker documentation. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: @sudo docker version | grep "Server API version"@
cpLogConfiguration :: Lens' ContainerProperties (Maybe LogConfiguration)
cpLogConfiguration = lens _cpLogConfiguration (\s a -> s {_cpLogConfiguration = a})

-- | The type and amount of resources to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
cpResourceRequirements :: Lens' ContainerProperties [ResourceRequirement]
cpResourceRequirements = lens _cpResourceRequirements (\s a -> s {_cpResourceRequirements = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the IAM role that the container can assume for AWS permissions. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html IAM Roles for Tasks> in the /Amazon Elastic Container Service Developer Guide/ .
cpJobRoleARN :: Lens' ContainerProperties (Maybe Text)
cpJobRoleARN = lens _cpJobRoleARN (\s a -> s {_cpJobRoleARN = a})

-- | When this parameter is true, the container is given read-only access to its root file system. This parameter maps to @ReadonlyRootfs@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--read-only@ option to @docker run@ .
cpReadonlyRootFilesystem :: Lens' ContainerProperties (Maybe Bool)
cpReadonlyRootFilesystem = lens _cpReadonlyRootFilesystem (\s a -> s {_cpReadonlyRootFilesystem = a})

-- | A list of @ulimits@ to set in the container. This parameter maps to @Ulimits@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--ulimit@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cpUlimits :: Lens' ContainerProperties [Ulimit]
cpUlimits = lens _cpUlimits (\s a -> s {_cpUlimits = a}) . _Default . _Coerce

instance FromJSON ContainerProperties where
  parseJSON =
    withObject
      "ContainerProperties"
      ( \x ->
          ContainerProperties'
            <$> (x .:? "linuxParameters")
            <*> (x .:? "memory")
            <*> (x .:? "user")
            <*> (x .:? "instanceType")
            <*> (x .:? "networkConfiguration")
            <*> (x .:? "executionRoleArn")
            <*> (x .:? "privileged")
            <*> (x .:? "vcpus")
            <*> (x .:? "volumes" .!= mempty)
            <*> (x .:? "environment" .!= mempty)
            <*> (x .:? "fargatePlatformConfiguration")
            <*> (x .:? "secrets" .!= mempty)
            <*> (x .:? "mountPoints" .!= mempty)
            <*> (x .:? "image")
            <*> (x .:? "command" .!= mempty)
            <*> (x .:? "logConfiguration")
            <*> (x .:? "resourceRequirements" .!= mempty)
            <*> (x .:? "jobRoleArn")
            <*> (x .:? "readonlyRootFilesystem")
            <*> (x .:? "ulimits" .!= mempty)
      )

instance Hashable ContainerProperties

instance NFData ContainerProperties

instance ToJSON ContainerProperties where
  toJSON ContainerProperties' {..} =
    object
      ( catMaybes
          [ ("linuxParameters" .=) <$> _cpLinuxParameters,
            ("memory" .=) <$> _cpMemory,
            ("user" .=) <$> _cpUser,
            ("instanceType" .=) <$> _cpInstanceType,
            ("networkConfiguration" .=)
              <$> _cpNetworkConfiguration,
            ("executionRoleArn" .=) <$> _cpExecutionRoleARN,
            ("privileged" .=) <$> _cpPrivileged,
            ("vcpus" .=) <$> _cpVcpus,
            ("volumes" .=) <$> _cpVolumes,
            ("environment" .=) <$> _cpEnvironment,
            ("fargatePlatformConfiguration" .=)
              <$> _cpFargatePlatformConfiguration,
            ("secrets" .=) <$> _cpSecrets,
            ("mountPoints" .=) <$> _cpMountPoints,
            ("image" .=) <$> _cpImage,
            ("command" .=) <$> _cpCommand,
            ("logConfiguration" .=) <$> _cpLogConfiguration,
            ("resourceRequirements" .=)
              <$> _cpResourceRequirements,
            ("jobRoleArn" .=) <$> _cpJobRoleARN,
            ("readonlyRootFilesystem" .=)
              <$> _cpReadonlyRootFilesystem,
            ("ulimits" .=) <$> _cpUlimits
          ]
      )

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.ContainerDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.ContainerDetail where

import Network.AWS.Batch.Types.FargatePlatformConfiguration
import Network.AWS.Batch.Types.KeyValuePair
import Network.AWS.Batch.Types.LinuxParameters
import Network.AWS.Batch.Types.LogConfiguration
import Network.AWS.Batch.Types.MountPoint
import Network.AWS.Batch.Types.NetworkConfiguration
import Network.AWS.Batch.Types.NetworkInterface
import Network.AWS.Batch.Types.ResourceRequirement
import Network.AWS.Batch.Types.Secret
import Network.AWS.Batch.Types.Ulimit
import Network.AWS.Batch.Types.Volume
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the details of a container that's part of a job.
--
--
--
-- /See:/ 'containerDetail' smart constructor.
data ContainerDetail = ContainerDetail'
  { _cdLogStreamName ::
      !(Maybe Text),
    _cdLinuxParameters ::
      !(Maybe LinuxParameters),
    _cdMemory :: !(Maybe Int),
    _cdUser :: !(Maybe Text),
    _cdInstanceType :: !(Maybe Text),
    _cdNetworkConfiguration ::
      !(Maybe NetworkConfiguration),
    _cdExecutionRoleARN :: !(Maybe Text),
    _cdPrivileged :: !(Maybe Bool),
    _cdVcpus :: !(Maybe Int),
    _cdContainerInstanceARN ::
      !(Maybe Text),
    _cdVolumes :: !(Maybe [Volume]),
    _cdEnvironment ::
      !(Maybe [KeyValuePair]),
    _cdFargatePlatformConfiguration ::
      !(Maybe FargatePlatformConfiguration),
    _cdExitCode :: !(Maybe Int),
    _cdSecrets :: !(Maybe [Secret]),
    _cdMountPoints :: !(Maybe [MountPoint]),
    _cdImage :: !(Maybe Text),
    _cdCommand :: !(Maybe [Text]),
    _cdLogConfiguration ::
      !(Maybe LogConfiguration),
    _cdReason :: !(Maybe Text),
    _cdResourceRequirements ::
      !(Maybe [ResourceRequirement]),
    _cdJobRoleARN :: !(Maybe Text),
    _cdReadonlyRootFilesystem ::
      !(Maybe Bool),
    _cdUlimits :: !(Maybe [Ulimit]),
    _cdTaskARN :: !(Maybe Text),
    _cdNetworkInterfaces ::
      !(Maybe [NetworkInterface])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdLogStreamName' - The name of the CloudWatch Logs log stream associated with the container. The log group for AWS Batch jobs is @/aws/batch/job@ . Each container attempt receives a log stream name when they reach the @RUNNING@ status.
--
-- * 'cdLinuxParameters' - Linux-specific modifications that are applied to the container, such as details for device mappings.
--
-- * 'cdMemory' - For jobs run on EC2 resources that didn't specify memory requirements using @ResourceRequirement@ , the number of MiB of memory reserved for the job. For other jobs, including all run on Fargate resources, see @resourceRequirements@ .
--
-- * 'cdUser' - The user name to use inside the container. This parameter maps to @User@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--user@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdInstanceType' - The instance type of the underlying host infrastructure of a multi-node parallel job.
--
-- * 'cdNetworkConfiguration' - The network configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
--
-- * 'cdExecutionRoleARN' - The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html AWS Batch execution IAM role> in the /AWS Batch User Guide/ .
--
-- * 'cdPrivileged' - When this parameter is true, the container is given elevated permissions on the host container instance (similar to the @root@ user). The default value is false.
--
-- * 'cdVcpus' - The number of vCPUs reserved for the container. Jobs running on EC2 resources can specify the vCPU requirement for the job using @resourceRequirements@ but the vCPU requirements can't be specified both here and in the @resourceRequirement@ object. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU. This is required but can be specified in several places. It must be specified for each node at least once.
--
-- * 'cdContainerInstanceARN' - The Amazon Resource Name (ARN) of the container instance that the container is running on.
--
-- * 'cdVolumes' - A list of volumes associated with the job.
--
-- * 'cdEnvironment' - The environment variables to pass to a container.
--
-- * 'cdFargatePlatformConfiguration' - The platform configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
--
-- * 'cdExitCode' - The exit code to return upon completion.
--
-- * 'cdSecrets' - The secrets to pass to the container. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html Specifying sensitive data> in the /AWS Batch User Guide/ .
--
-- * 'cdMountPoints' - The mount points for data volumes in your container.
--
-- * 'cdImage' - The image used to start the container.
--
-- * 'cdCommand' - The command that's passed to the container.
--
-- * 'cdLogConfiguration' - The log configuration specification for the container. This parameter maps to @LogConfig@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--log-driver@ option to <https://docs.docker.com/engine/reference/run/ docker run> . By default, containers use the same logging driver that the Docker daemon uses. However the container might use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance. Or, alternatively, it must be configured on a different log server for remote logging options. For more information on the options for different supported log drivers, see <https://docs.docker.com/engine/admin/logging/overview/ Configure logging drivers> in the Docker documentation. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: @sudo docker version | grep "Server API version"@
--
-- * 'cdReason' - A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
--
-- * 'cdResourceRequirements' - The type and amount of resources to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
--
-- * 'cdJobRoleARN' - The Amazon Resource Name (ARN) associated with the job upon execution.
--
-- * 'cdReadonlyRootFilesystem' - When this parameter is true, the container is given read-only access to its root file system. This parameter maps to @ReadonlyRootfs@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--read-only@ option to <https://docs.docker.com/engine/reference/commandline/run/ @docker run@ > .
--
-- * 'cdUlimits' - A list of @ulimit@ values to set in the container. This parameter maps to @Ulimits@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--ulimit@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
--
-- * 'cdTaskARN' - The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with the container job. Each container attempt receives a task ARN when they reach the @STARTING@ status.
--
-- * 'cdNetworkInterfaces' - The network interfaces associated with the job.
containerDetail ::
  ContainerDetail
containerDetail =
  ContainerDetail'
    { _cdLogStreamName = Nothing,
      _cdLinuxParameters = Nothing,
      _cdMemory = Nothing,
      _cdUser = Nothing,
      _cdInstanceType = Nothing,
      _cdNetworkConfiguration = Nothing,
      _cdExecutionRoleARN = Nothing,
      _cdPrivileged = Nothing,
      _cdVcpus = Nothing,
      _cdContainerInstanceARN = Nothing,
      _cdVolumes = Nothing,
      _cdEnvironment = Nothing,
      _cdFargatePlatformConfiguration = Nothing,
      _cdExitCode = Nothing,
      _cdSecrets = Nothing,
      _cdMountPoints = Nothing,
      _cdImage = Nothing,
      _cdCommand = Nothing,
      _cdLogConfiguration = Nothing,
      _cdReason = Nothing,
      _cdResourceRequirements = Nothing,
      _cdJobRoleARN = Nothing,
      _cdReadonlyRootFilesystem = Nothing,
      _cdUlimits = Nothing,
      _cdTaskARN = Nothing,
      _cdNetworkInterfaces = Nothing
    }

-- | The name of the CloudWatch Logs log stream associated with the container. The log group for AWS Batch jobs is @/aws/batch/job@ . Each container attempt receives a log stream name when they reach the @RUNNING@ status.
cdLogStreamName :: Lens' ContainerDetail (Maybe Text)
cdLogStreamName = lens _cdLogStreamName (\s a -> s {_cdLogStreamName = a})

-- | Linux-specific modifications that are applied to the container, such as details for device mappings.
cdLinuxParameters :: Lens' ContainerDetail (Maybe LinuxParameters)
cdLinuxParameters = lens _cdLinuxParameters (\s a -> s {_cdLinuxParameters = a})

-- | For jobs run on EC2 resources that didn't specify memory requirements using @ResourceRequirement@ , the number of MiB of memory reserved for the job. For other jobs, including all run on Fargate resources, see @resourceRequirements@ .
cdMemory :: Lens' ContainerDetail (Maybe Int)
cdMemory = lens _cdMemory (\s a -> s {_cdMemory = a})

-- | The user name to use inside the container. This parameter maps to @User@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--user@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdUser :: Lens' ContainerDetail (Maybe Text)
cdUser = lens _cdUser (\s a -> s {_cdUser = a})

-- | The instance type of the underlying host infrastructure of a multi-node parallel job.
cdInstanceType :: Lens' ContainerDetail (Maybe Text)
cdInstanceType = lens _cdInstanceType (\s a -> s {_cdInstanceType = a})

-- | The network configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
cdNetworkConfiguration :: Lens' ContainerDetail (Maybe NetworkConfiguration)
cdNetworkConfiguration = lens _cdNetworkConfiguration (\s a -> s {_cdNetworkConfiguration = a})

-- | The Amazon Resource Name (ARN) of the execution role that AWS Batch can assume. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html AWS Batch execution IAM role> in the /AWS Batch User Guide/ .
cdExecutionRoleARN :: Lens' ContainerDetail (Maybe Text)
cdExecutionRoleARN = lens _cdExecutionRoleARN (\s a -> s {_cdExecutionRoleARN = a})

-- | When this parameter is true, the container is given elevated permissions on the host container instance (similar to the @root@ user). The default value is false.
cdPrivileged :: Lens' ContainerDetail (Maybe Bool)
cdPrivileged = lens _cdPrivileged (\s a -> s {_cdPrivileged = a})

-- | The number of vCPUs reserved for the container. Jobs running on EC2 resources can specify the vCPU requirement for the job using @resourceRequirements@ but the vCPU requirements can't be specified both here and in the @resourceRequirement@ object. This parameter maps to @CpuShares@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--cpu-shares@ option to <https://docs.docker.com/engine/reference/run/ docker run> . Each vCPU is equivalent to 1,024 CPU shares. You must specify at least one vCPU. This is required but can be specified in several places. It must be specified for each node at least once.
cdVcpus :: Lens' ContainerDetail (Maybe Int)
cdVcpus = lens _cdVcpus (\s a -> s {_cdVcpus = a})

-- | The Amazon Resource Name (ARN) of the container instance that the container is running on.
cdContainerInstanceARN :: Lens' ContainerDetail (Maybe Text)
cdContainerInstanceARN = lens _cdContainerInstanceARN (\s a -> s {_cdContainerInstanceARN = a})

-- | A list of volumes associated with the job.
cdVolumes :: Lens' ContainerDetail [Volume]
cdVolumes = lens _cdVolumes (\s a -> s {_cdVolumes = a}) . _Default . _Coerce

-- | The environment variables to pass to a container.
cdEnvironment :: Lens' ContainerDetail [KeyValuePair]
cdEnvironment = lens _cdEnvironment (\s a -> s {_cdEnvironment = a}) . _Default . _Coerce

-- | The platform configuration for jobs running on Fargate resources. Jobs running on EC2 resources must not specify this parameter.
cdFargatePlatformConfiguration :: Lens' ContainerDetail (Maybe FargatePlatformConfiguration)
cdFargatePlatformConfiguration = lens _cdFargatePlatformConfiguration (\s a -> s {_cdFargatePlatformConfiguration = a})

-- | The exit code to return upon completion.
cdExitCode :: Lens' ContainerDetail (Maybe Int)
cdExitCode = lens _cdExitCode (\s a -> s {_cdExitCode = a})

-- | The secrets to pass to the container. For more information, see <https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html Specifying sensitive data> in the /AWS Batch User Guide/ .
cdSecrets :: Lens' ContainerDetail [Secret]
cdSecrets = lens _cdSecrets (\s a -> s {_cdSecrets = a}) . _Default . _Coerce

-- | The mount points for data volumes in your container.
cdMountPoints :: Lens' ContainerDetail [MountPoint]
cdMountPoints = lens _cdMountPoints (\s a -> s {_cdMountPoints = a}) . _Default . _Coerce

-- | The image used to start the container.
cdImage :: Lens' ContainerDetail (Maybe Text)
cdImage = lens _cdImage (\s a -> s {_cdImage = a})

-- | The command that's passed to the container.
cdCommand :: Lens' ContainerDetail [Text]
cdCommand = lens _cdCommand (\s a -> s {_cdCommand = a}) . _Default . _Coerce

-- | The log configuration specification for the container. This parameter maps to @LogConfig@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--log-driver@ option to <https://docs.docker.com/engine/reference/run/ docker run> . By default, containers use the same logging driver that the Docker daemon uses. However the container might use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance. Or, alternatively, it must be configured on a different log server for remote logging options. For more information on the options for different supported log drivers, see <https://docs.docker.com/engine/admin/logging/overview/ Configure logging drivers> in the Docker documentation. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log into your container instance and run the following command: @sudo docker version | grep "Server API version"@
cdLogConfiguration :: Lens' ContainerDetail (Maybe LogConfiguration)
cdLogConfiguration = lens _cdLogConfiguration (\s a -> s {_cdLogConfiguration = a})

-- | A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
cdReason :: Lens' ContainerDetail (Maybe Text)
cdReason = lens _cdReason (\s a -> s {_cdReason = a})

-- | The type and amount of resources to assign to a container. The supported resources include @GPU@ , @MEMORY@ , and @VCPU@ .
cdResourceRequirements :: Lens' ContainerDetail [ResourceRequirement]
cdResourceRequirements = lens _cdResourceRequirements (\s a -> s {_cdResourceRequirements = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) associated with the job upon execution.
cdJobRoleARN :: Lens' ContainerDetail (Maybe Text)
cdJobRoleARN = lens _cdJobRoleARN (\s a -> s {_cdJobRoleARN = a})

-- | When this parameter is true, the container is given read-only access to its root file system. This parameter maps to @ReadonlyRootfs@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--read-only@ option to <https://docs.docker.com/engine/reference/commandline/run/ @docker run@ > .
cdReadonlyRootFilesystem :: Lens' ContainerDetail (Maybe Bool)
cdReadonlyRootFilesystem = lens _cdReadonlyRootFilesystem (\s a -> s {_cdReadonlyRootFilesystem = a})

-- | A list of @ulimit@ values to set in the container. This parameter maps to @Ulimits@ in the <https://docs.docker.com/engine/api/v1.23/#create-a-container Create a container> section of the <https://docs.docker.com/engine/api/v1.23/ Docker Remote API> and the @--ulimit@ option to <https://docs.docker.com/engine/reference/run/ docker run> .
cdUlimits :: Lens' ContainerDetail [Ulimit]
cdUlimits = lens _cdUlimits (\s a -> s {_cdUlimits = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with the container job. Each container attempt receives a task ARN when they reach the @STARTING@ status.
cdTaskARN :: Lens' ContainerDetail (Maybe Text)
cdTaskARN = lens _cdTaskARN (\s a -> s {_cdTaskARN = a})

-- | The network interfaces associated with the job.
cdNetworkInterfaces :: Lens' ContainerDetail [NetworkInterface]
cdNetworkInterfaces = lens _cdNetworkInterfaces (\s a -> s {_cdNetworkInterfaces = a}) . _Default . _Coerce

instance FromJSON ContainerDetail where
  parseJSON =
    withObject
      "ContainerDetail"
      ( \x ->
          ContainerDetail'
            <$> (x .:? "logStreamName")
            <*> (x .:? "linuxParameters")
            <*> (x .:? "memory")
            <*> (x .:? "user")
            <*> (x .:? "instanceType")
            <*> (x .:? "networkConfiguration")
            <*> (x .:? "executionRoleArn")
            <*> (x .:? "privileged")
            <*> (x .:? "vcpus")
            <*> (x .:? "containerInstanceArn")
            <*> (x .:? "volumes" .!= mempty)
            <*> (x .:? "environment" .!= mempty)
            <*> (x .:? "fargatePlatformConfiguration")
            <*> (x .:? "exitCode")
            <*> (x .:? "secrets" .!= mempty)
            <*> (x .:? "mountPoints" .!= mempty)
            <*> (x .:? "image")
            <*> (x .:? "command" .!= mempty)
            <*> (x .:? "logConfiguration")
            <*> (x .:? "reason")
            <*> (x .:? "resourceRequirements" .!= mempty)
            <*> (x .:? "jobRoleArn")
            <*> (x .:? "readonlyRootFilesystem")
            <*> (x .:? "ulimits" .!= mempty)
            <*> (x .:? "taskArn")
            <*> (x .:? "networkInterfaces" .!= mempty)
      )

instance Hashable ContainerDetail

instance NFData ContainerDetail

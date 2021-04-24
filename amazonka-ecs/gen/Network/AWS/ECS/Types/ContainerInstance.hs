{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerInstance where

import Network.AWS.ECS.Types.AgentUpdateStatus
import Network.AWS.ECS.Types.Attachment
import Network.AWS.ECS.Types.Attribute
import Network.AWS.ECS.Types.Resource
import Network.AWS.ECS.Types.Tag
import Network.AWS.ECS.Types.VersionInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.
--
--
--
-- /See:/ 'containerInstance' smart constructor.
data ContainerInstance = ContainerInstance'
  { _ciVersionInfo ::
      !(Maybe VersionInfo),
    _ciStatus :: !(Maybe Text),
    _ciAgentUpdateStatus ::
      !(Maybe AgentUpdateStatus),
    _ciRegisteredResources ::
      !(Maybe [Resource]),
    _ciContainerInstanceARN ::
      !(Maybe Text),
    _ciRegisteredAt :: !(Maybe POSIX),
    _ciVersion :: !(Maybe Integer),
    _ciPendingTasksCount ::
      !(Maybe Int),
    _ciAttributes ::
      !(Maybe [Attribute]),
    _ciTags :: !(Maybe [Tag]),
    _ciAgentConnected :: !(Maybe Bool),
    _ciStatusReason :: !(Maybe Text),
    _ciEc2InstanceId :: !(Maybe Text),
    _ciRemainingResources ::
      !(Maybe [Resource]),
    _ciCapacityProviderName ::
      !(Maybe Text),
    _ciAttachments ::
      !(Maybe [Attachment]),
    _ciRunningTasksCount ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciVersionInfo' - The version information for the Amazon ECS container agent and Docker daemon running on the container instance.
--
-- * 'ciStatus' - The status of the container instance. The valid values are @REGISTERING@ , @REGISTRATION_FAILED@ , @ACTIVE@ , @INACTIVE@ , @DEREGISTERING@ , or @DRAINING@ . If your account has opted in to the @awsvpcTrunking@ account setting, then any newly registered container instance will transition to a @REGISTERING@ status while the trunk elastic network interface is provisioned for the instance. If the registration fails, the instance will transition to a @REGISTRATION_FAILED@ status. You can describe the container instance and see the reason for failure in the @statusReason@ parameter. Once the container instance is terminated, the instance transitions to a @DEREGISTERING@ status while the trunk elastic network interface is deprovisioned. The instance then transitions to an @INACTIVE@ status. The @ACTIVE@ status indicates that the container instance can accept tasks. The @DRAINING@ indicates that new tasks are not placed on the container instance and any service tasks running on the container instance are removed if possible. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html Container Instance Draining> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'ciAgentUpdateStatus' - The status of the most recent agent update. If an update has never been requested, this value is @NULL@ .
--
-- * 'ciRegisteredResources' - For CPU and memory resource types, this parameter describes the amount of each resource that was available on the container instance when the container agent registered it with Amazon ECS. This value represents the total amount of CPU and memory that can be allocated on this container instance to tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent when it registered the container instance with Amazon ECS.
--
-- * 'ciContainerInstanceARN' - The Amazon Resource Name (ARN) of the container instance. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the @container-instance@ namespace, and then the container instance ID. For example, @arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID@ .
--
-- * 'ciRegisteredAt' - The Unix timestamp for when the container instance was registered.
--
-- * 'ciVersion' - The version counter for the container instance. Every time a container instance experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS container instance state with CloudWatch Events, you can compare the version of a container instance reported by the Amazon ECS APIs with the version reported in CloudWatch Events for the container instance (inside the @detail@ object) to verify that the version in your event stream is current.
--
-- * 'ciPendingTasksCount' - The number of tasks on the container instance that are in the @PENDING@ status.
--
-- * 'ciAttributes' - The attributes set for the container instance, either by the Amazon ECS container agent at instance registration or manually with the 'PutAttributes' operation.
--
-- * 'ciTags' - The metadata that you apply to the container instance to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
-- * 'ciAgentConnected' - This parameter returns @true@ if the agent is connected to Amazon ECS. Registered instances with an agent that may be unhealthy or stopped return @false@ . Only instances connected to an agent can accept placement requests.
--
-- * 'ciStatusReason' - The reason that the container instance reached its current status.
--
-- * 'ciEc2InstanceId' - The EC2 instance ID of the container instance.
--
-- * 'ciRemainingResources' - For CPU and memory resource types, this parameter describes the remaining CPU and memory that has not already been allocated to tasks and is therefore available for new tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent (at instance registration time) and any task containers that have reserved port mappings on the host (with the @host@ or @bridge@ network mode). Any port that is not specified here is available for new tasks.
--
-- * 'ciCapacityProviderName' - The capacity provider associated with the container instance.
--
-- * 'ciAttachments' - The resources attached to a container instance, such as elastic network interfaces.
--
-- * 'ciRunningTasksCount' - The number of tasks on the container instance that are in the @RUNNING@ status.
containerInstance ::
  ContainerInstance
containerInstance =
  ContainerInstance'
    { _ciVersionInfo = Nothing,
      _ciStatus = Nothing,
      _ciAgentUpdateStatus = Nothing,
      _ciRegisteredResources = Nothing,
      _ciContainerInstanceARN = Nothing,
      _ciRegisteredAt = Nothing,
      _ciVersion = Nothing,
      _ciPendingTasksCount = Nothing,
      _ciAttributes = Nothing,
      _ciTags = Nothing,
      _ciAgentConnected = Nothing,
      _ciStatusReason = Nothing,
      _ciEc2InstanceId = Nothing,
      _ciRemainingResources = Nothing,
      _ciCapacityProviderName = Nothing,
      _ciAttachments = Nothing,
      _ciRunningTasksCount = Nothing
    }

-- | The version information for the Amazon ECS container agent and Docker daemon running on the container instance.
ciVersionInfo :: Lens' ContainerInstance (Maybe VersionInfo)
ciVersionInfo = lens _ciVersionInfo (\s a -> s {_ciVersionInfo = a})

-- | The status of the container instance. The valid values are @REGISTERING@ , @REGISTRATION_FAILED@ , @ACTIVE@ , @INACTIVE@ , @DEREGISTERING@ , or @DRAINING@ . If your account has opted in to the @awsvpcTrunking@ account setting, then any newly registered container instance will transition to a @REGISTERING@ status while the trunk elastic network interface is provisioned for the instance. If the registration fails, the instance will transition to a @REGISTRATION_FAILED@ status. You can describe the container instance and see the reason for failure in the @statusReason@ parameter. Once the container instance is terminated, the instance transitions to a @DEREGISTERING@ status while the trunk elastic network interface is deprovisioned. The instance then transitions to an @INACTIVE@ status. The @ACTIVE@ status indicates that the container instance can accept tasks. The @DRAINING@ indicates that new tasks are not placed on the container instance and any service tasks running on the container instance are removed if possible. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html Container Instance Draining> in the /Amazon Elastic Container Service Developer Guide/ .
ciStatus :: Lens' ContainerInstance (Maybe Text)
ciStatus = lens _ciStatus (\s a -> s {_ciStatus = a})

-- | The status of the most recent agent update. If an update has never been requested, this value is @NULL@ .
ciAgentUpdateStatus :: Lens' ContainerInstance (Maybe AgentUpdateStatus)
ciAgentUpdateStatus = lens _ciAgentUpdateStatus (\s a -> s {_ciAgentUpdateStatus = a})

-- | For CPU and memory resource types, this parameter describes the amount of each resource that was available on the container instance when the container agent registered it with Amazon ECS. This value represents the total amount of CPU and memory that can be allocated on this container instance to tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent when it registered the container instance with Amazon ECS.
ciRegisteredResources :: Lens' ContainerInstance [Resource]
ciRegisteredResources = lens _ciRegisteredResources (\s a -> s {_ciRegisteredResources = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the container instance. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the @container-instance@ namespace, and then the container instance ID. For example, @arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID@ .
ciContainerInstanceARN :: Lens' ContainerInstance (Maybe Text)
ciContainerInstanceARN = lens _ciContainerInstanceARN (\s a -> s {_ciContainerInstanceARN = a})

-- | The Unix timestamp for when the container instance was registered.
ciRegisteredAt :: Lens' ContainerInstance (Maybe UTCTime)
ciRegisteredAt = lens _ciRegisteredAt (\s a -> s {_ciRegisteredAt = a}) . mapping _Time

-- | The version counter for the container instance. Every time a container instance experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS container instance state with CloudWatch Events, you can compare the version of a container instance reported by the Amazon ECS APIs with the version reported in CloudWatch Events for the container instance (inside the @detail@ object) to verify that the version in your event stream is current.
ciVersion :: Lens' ContainerInstance (Maybe Integer)
ciVersion = lens _ciVersion (\s a -> s {_ciVersion = a})

-- | The number of tasks on the container instance that are in the @PENDING@ status.
ciPendingTasksCount :: Lens' ContainerInstance (Maybe Int)
ciPendingTasksCount = lens _ciPendingTasksCount (\s a -> s {_ciPendingTasksCount = a})

-- | The attributes set for the container instance, either by the Amazon ECS container agent at instance registration or manually with the 'PutAttributes' operation.
ciAttributes :: Lens' ContainerInstance [Attribute]
ciAttributes = lens _ciAttributes (\s a -> s {_ciAttributes = a}) . _Default . _Coerce

-- | The metadata that you apply to the container instance to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
ciTags :: Lens' ContainerInstance [Tag]
ciTags = lens _ciTags (\s a -> s {_ciTags = a}) . _Default . _Coerce

-- | This parameter returns @true@ if the agent is connected to Amazon ECS. Registered instances with an agent that may be unhealthy or stopped return @false@ . Only instances connected to an agent can accept placement requests.
ciAgentConnected :: Lens' ContainerInstance (Maybe Bool)
ciAgentConnected = lens _ciAgentConnected (\s a -> s {_ciAgentConnected = a})

-- | The reason that the container instance reached its current status.
ciStatusReason :: Lens' ContainerInstance (Maybe Text)
ciStatusReason = lens _ciStatusReason (\s a -> s {_ciStatusReason = a})

-- | The EC2 instance ID of the container instance.
ciEc2InstanceId :: Lens' ContainerInstance (Maybe Text)
ciEc2InstanceId = lens _ciEc2InstanceId (\s a -> s {_ciEc2InstanceId = a})

-- | For CPU and memory resource types, this parameter describes the remaining CPU and memory that has not already been allocated to tasks and is therefore available for new tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent (at instance registration time) and any task containers that have reserved port mappings on the host (with the @host@ or @bridge@ network mode). Any port that is not specified here is available for new tasks.
ciRemainingResources :: Lens' ContainerInstance [Resource]
ciRemainingResources = lens _ciRemainingResources (\s a -> s {_ciRemainingResources = a}) . _Default . _Coerce

-- | The capacity provider associated with the container instance.
ciCapacityProviderName :: Lens' ContainerInstance (Maybe Text)
ciCapacityProviderName = lens _ciCapacityProviderName (\s a -> s {_ciCapacityProviderName = a})

-- | The resources attached to a container instance, such as elastic network interfaces.
ciAttachments :: Lens' ContainerInstance [Attachment]
ciAttachments = lens _ciAttachments (\s a -> s {_ciAttachments = a}) . _Default . _Coerce

-- | The number of tasks on the container instance that are in the @RUNNING@ status.
ciRunningTasksCount :: Lens' ContainerInstance (Maybe Int)
ciRunningTasksCount = lens _ciRunningTasksCount (\s a -> s {_ciRunningTasksCount = a})

instance FromJSON ContainerInstance where
  parseJSON =
    withObject
      "ContainerInstance"
      ( \x ->
          ContainerInstance'
            <$> (x .:? "versionInfo")
            <*> (x .:? "status")
            <*> (x .:? "agentUpdateStatus")
            <*> (x .:? "registeredResources" .!= mempty)
            <*> (x .:? "containerInstanceArn")
            <*> (x .:? "registeredAt")
            <*> (x .:? "version")
            <*> (x .:? "pendingTasksCount")
            <*> (x .:? "attributes" .!= mempty)
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "agentConnected")
            <*> (x .:? "statusReason")
            <*> (x .:? "ec2InstanceId")
            <*> (x .:? "remainingResources" .!= mempty)
            <*> (x .:? "capacityProviderName")
            <*> (x .:? "attachments" .!= mempty)
            <*> (x .:? "runningTasksCount")
      )

instance Hashable ContainerInstance

instance NFData ContainerInstance

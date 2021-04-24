{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerService where

import Network.AWS.ECS.Types.CapacityProviderStrategyItem
import Network.AWS.ECS.Types.Deployment
import Network.AWS.ECS.Types.DeploymentConfiguration
import Network.AWS.ECS.Types.DeploymentController
import Network.AWS.ECS.Types.LaunchType
import Network.AWS.ECS.Types.LoadBalancer
import Network.AWS.ECS.Types.NetworkConfiguration
import Network.AWS.ECS.Types.PlacementConstraint
import Network.AWS.ECS.Types.PlacementStrategy
import Network.AWS.ECS.Types.PropagateTags
import Network.AWS.ECS.Types.SchedulingStrategy
import Network.AWS.ECS.Types.ServiceEvent
import Network.AWS.ECS.Types.ServiceRegistry
import Network.AWS.ECS.Types.Tag
import Network.AWS.ECS.Types.TaskSet
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on a service within a cluster
--
--
--
-- /See:/ 'containerService' smart constructor.
data ContainerService = ContainerService'
  { _conClusterARN ::
      !(Maybe Text),
    _conTaskSets :: !(Maybe [TaskSet]),
    _conStatus :: !(Maybe Text),
    _conRunningCount :: !(Maybe Int),
    _conRoleARN :: !(Maybe Text),
    _conDeploymentConfiguration ::
      !(Maybe DeploymentConfiguration),
    _conNetworkConfiguration ::
      !(Maybe NetworkConfiguration),
    _conCapacityProviderStrategy ::
      !( Maybe
           [CapacityProviderStrategyItem]
       ),
    _conDesiredCount :: !(Maybe Int),
    _conEnableECSManagedTags ::
      !(Maybe Bool),
    _conLaunchType :: !(Maybe LaunchType),
    _conCreatedAt :: !(Maybe POSIX),
    _conPlatformVersion :: !(Maybe Text),
    _conDeploymentController ::
      !(Maybe DeploymentController),
    _conServiceName :: !(Maybe Text),
    _conPlacementStrategy ::
      !(Maybe [PlacementStrategy]),
    _conDeployments ::
      !(Maybe [Deployment]),
    _conPlacementConstraints ::
      !(Maybe [PlacementConstraint]),
    _conEvents :: !(Maybe [ServiceEvent]),
    _conPendingCount :: !(Maybe Int),
    _conLoadBalancers ::
      !(Maybe [LoadBalancer]),
    _conTags :: !(Maybe [Tag]),
    _conServiceRegistries ::
      !(Maybe [ServiceRegistry]),
    _conHealthCheckGracePeriodSeconds ::
      !(Maybe Int),
    _conSchedulingStrategy ::
      !(Maybe SchedulingStrategy),
    _conCreatedBy :: !(Maybe Text),
    _conTaskDefinition :: !(Maybe Text),
    _conServiceARN :: !(Maybe Text),
    _conPropagateTags ::
      !(Maybe PropagateTags)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContainerService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conClusterARN' - The Amazon Resource Name (ARN) of the cluster that hosts the service.
--
-- * 'conTaskSets' - Information about a set of Amazon ECS tasks in either an AWS CodeDeploy or an @EXTERNAL@ deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic.
--
-- * 'conStatus' - The status of the service. The valid values are @ACTIVE@ , @DRAINING@ , or @INACTIVE@ .
--
-- * 'conRunningCount' - The number of tasks in the cluster that are in the @RUNNING@ state.
--
-- * 'conRoleARN' - The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.
--
-- * 'conDeploymentConfiguration' - Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
--
-- * 'conNetworkConfiguration' - The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the @awsvpc@ networking mode.
--
-- * 'conCapacityProviderStrategy' - The capacity provider strategy associated with the service.
--
-- * 'conDesiredCount' - The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
--
-- * 'conEnableECSManagedTags' - Specifies whether to enable Amazon ECS managed tags for the tasks in the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'conLaunchType' - The launch type on which your service is running. If no value is specified, it will default to @EC2@ . Valid values include @EC2@ and @FARGATE@ . For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'conCreatedAt' - The Unix timestamp for when the service was created.
--
-- * 'conPlatformVersion' - The platform version on which to run your service. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'conDeploymentController' - The deployment controller type the service is using. When using the DescribeServices API, this field is omitted if the service is using the @ECS@ deployment controller type.
--
-- * 'conServiceName' - The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.
--
-- * 'conPlacementStrategy' - The placement strategy that determines how tasks for the service are placed.
--
-- * 'conDeployments' - The current state of deployments for the service.
--
-- * 'conPlacementConstraints' - The placement constraints for the tasks in the service.
--
-- * 'conEvents' - The event stream for your service. A maximum of 100 of the latest events are displayed.
--
-- * 'conPendingCount' - The number of tasks in the cluster that are in the @PENDING@ state.
--
-- * 'conLoadBalancers' - A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.
--
-- * 'conTags' - The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
-- * 'conServiceRegistries' - The details of the service discovery registries to assign to this service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery> .
--
-- * 'conHealthCheckGracePeriodSeconds' - The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.
--
-- * 'conSchedulingStrategy' - The scheduling strategy to use for the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Services> . There are two service scheduler strategies available:     * @REPLICA@ -The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions.     * @DAEMON@ -The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints.
--
-- * 'conCreatedBy' - The principal that created the service.
--
-- * 'conTaskDefinition' - The task definition to use for tasks in the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
--
-- * 'conServiceARN' - The ARN that identifies the service. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the service, the AWS account ID of the service owner, the @service@ namespace, and then the service name. For example, @arn:aws:ecs:region:012345678910:service/my-service@ .
--
-- * 'conPropagateTags' - Specifies whether to propagate the tags from the task definition or the service to the task. If no value is specified, the tags are not propagated.
containerService ::
  ContainerService
containerService =
  ContainerService'
    { _conClusterARN = Nothing,
      _conTaskSets = Nothing,
      _conStatus = Nothing,
      _conRunningCount = Nothing,
      _conRoleARN = Nothing,
      _conDeploymentConfiguration = Nothing,
      _conNetworkConfiguration = Nothing,
      _conCapacityProviderStrategy = Nothing,
      _conDesiredCount = Nothing,
      _conEnableECSManagedTags = Nothing,
      _conLaunchType = Nothing,
      _conCreatedAt = Nothing,
      _conPlatformVersion = Nothing,
      _conDeploymentController = Nothing,
      _conServiceName = Nothing,
      _conPlacementStrategy = Nothing,
      _conDeployments = Nothing,
      _conPlacementConstraints = Nothing,
      _conEvents = Nothing,
      _conPendingCount = Nothing,
      _conLoadBalancers = Nothing,
      _conTags = Nothing,
      _conServiceRegistries = Nothing,
      _conHealthCheckGracePeriodSeconds = Nothing,
      _conSchedulingStrategy = Nothing,
      _conCreatedBy = Nothing,
      _conTaskDefinition = Nothing,
      _conServiceARN = Nothing,
      _conPropagateTags = Nothing
    }

-- | The Amazon Resource Name (ARN) of the cluster that hosts the service.
conClusterARN :: Lens' ContainerService (Maybe Text)
conClusterARN = lens _conClusterARN (\s a -> s {_conClusterARN = a})

-- | Information about a set of Amazon ECS tasks in either an AWS CodeDeploy or an @EXTERNAL@ deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic.
conTaskSets :: Lens' ContainerService [TaskSet]
conTaskSets = lens _conTaskSets (\s a -> s {_conTaskSets = a}) . _Default . _Coerce

-- | The status of the service. The valid values are @ACTIVE@ , @DRAINING@ , or @INACTIVE@ .
conStatus :: Lens' ContainerService (Maybe Text)
conStatus = lens _conStatus (\s a -> s {_conStatus = a})

-- | The number of tasks in the cluster that are in the @RUNNING@ state.
conRunningCount :: Lens' ContainerService (Maybe Int)
conRunningCount = lens _conRunningCount (\s a -> s {_conRunningCount = a})

-- | The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.
conRoleARN :: Lens' ContainerService (Maybe Text)
conRoleARN = lens _conRoleARN (\s a -> s {_conRoleARN = a})

-- | Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
conDeploymentConfiguration :: Lens' ContainerService (Maybe DeploymentConfiguration)
conDeploymentConfiguration = lens _conDeploymentConfiguration (\s a -> s {_conDeploymentConfiguration = a})

-- | The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the @awsvpc@ networking mode.
conNetworkConfiguration :: Lens' ContainerService (Maybe NetworkConfiguration)
conNetworkConfiguration = lens _conNetworkConfiguration (\s a -> s {_conNetworkConfiguration = a})

-- | The capacity provider strategy associated with the service.
conCapacityProviderStrategy :: Lens' ContainerService [CapacityProviderStrategyItem]
conCapacityProviderStrategy = lens _conCapacityProviderStrategy (\s a -> s {_conCapacityProviderStrategy = a}) . _Default . _Coerce

-- | The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
conDesiredCount :: Lens' ContainerService (Maybe Int)
conDesiredCount = lens _conDesiredCount (\s a -> s {_conDesiredCount = a})

-- | Specifies whether to enable Amazon ECS managed tags for the tasks in the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
conEnableECSManagedTags :: Lens' ContainerService (Maybe Bool)
conEnableECSManagedTags = lens _conEnableECSManagedTags (\s a -> s {_conEnableECSManagedTags = a})

-- | The launch type on which your service is running. If no value is specified, it will default to @EC2@ . Valid values include @EC2@ and @FARGATE@ . For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ .
conLaunchType :: Lens' ContainerService (Maybe LaunchType)
conLaunchType = lens _conLaunchType (\s a -> s {_conLaunchType = a})

-- | The Unix timestamp for when the service was created.
conCreatedAt :: Lens' ContainerService (Maybe UTCTime)
conCreatedAt = lens _conCreatedAt (\s a -> s {_conCreatedAt = a}) . mapping _Time

-- | The platform version on which to run your service. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
conPlatformVersion :: Lens' ContainerService (Maybe Text)
conPlatformVersion = lens _conPlatformVersion (\s a -> s {_conPlatformVersion = a})

-- | The deployment controller type the service is using. When using the DescribeServices API, this field is omitted if the service is using the @ECS@ deployment controller type.
conDeploymentController :: Lens' ContainerService (Maybe DeploymentController)
conDeploymentController = lens _conDeploymentController (\s a -> s {_conDeploymentController = a})

-- | The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.
conServiceName :: Lens' ContainerService (Maybe Text)
conServiceName = lens _conServiceName (\s a -> s {_conServiceName = a})

-- | The placement strategy that determines how tasks for the service are placed.
conPlacementStrategy :: Lens' ContainerService [PlacementStrategy]
conPlacementStrategy = lens _conPlacementStrategy (\s a -> s {_conPlacementStrategy = a}) . _Default . _Coerce

-- | The current state of deployments for the service.
conDeployments :: Lens' ContainerService [Deployment]
conDeployments = lens _conDeployments (\s a -> s {_conDeployments = a}) . _Default . _Coerce

-- | The placement constraints for the tasks in the service.
conPlacementConstraints :: Lens' ContainerService [PlacementConstraint]
conPlacementConstraints = lens _conPlacementConstraints (\s a -> s {_conPlacementConstraints = a}) . _Default . _Coerce

-- | The event stream for your service. A maximum of 100 of the latest events are displayed.
conEvents :: Lens' ContainerService [ServiceEvent]
conEvents = lens _conEvents (\s a -> s {_conEvents = a}) . _Default . _Coerce

-- | The number of tasks in the cluster that are in the @PENDING@ state.
conPendingCount :: Lens' ContainerService (Maybe Int)
conPendingCount = lens _conPendingCount (\s a -> s {_conPendingCount = a})

-- | A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.
conLoadBalancers :: Lens' ContainerService [LoadBalancer]
conLoadBalancers = lens _conLoadBalancers (\s a -> s {_conLoadBalancers = a}) . _Default . _Coerce

-- | The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
conTags :: Lens' ContainerService [Tag]
conTags = lens _conTags (\s a -> s {_conTags = a}) . _Default . _Coerce

-- | The details of the service discovery registries to assign to this service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery> .
conServiceRegistries :: Lens' ContainerService [ServiceRegistry]
conServiceRegistries = lens _conServiceRegistries (\s a -> s {_conServiceRegistries = a}) . _Default . _Coerce

-- | The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.
conHealthCheckGracePeriodSeconds :: Lens' ContainerService (Maybe Int)
conHealthCheckGracePeriodSeconds = lens _conHealthCheckGracePeriodSeconds (\s a -> s {_conHealthCheckGracePeriodSeconds = a})

-- | The scheduling strategy to use for the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Services> . There are two service scheduler strategies available:     * @REPLICA@ -The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions.     * @DAEMON@ -The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints.
conSchedulingStrategy :: Lens' ContainerService (Maybe SchedulingStrategy)
conSchedulingStrategy = lens _conSchedulingStrategy (\s a -> s {_conSchedulingStrategy = a})

-- | The principal that created the service.
conCreatedBy :: Lens' ContainerService (Maybe Text)
conCreatedBy = lens _conCreatedBy (\s a -> s {_conCreatedBy = a})

-- | The task definition to use for tasks in the service. This value is specified when the service is created with 'CreateService' , and it can be modified with 'UpdateService' .
conTaskDefinition :: Lens' ContainerService (Maybe Text)
conTaskDefinition = lens _conTaskDefinition (\s a -> s {_conTaskDefinition = a})

-- | The ARN that identifies the service. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the service, the AWS account ID of the service owner, the @service@ namespace, and then the service name. For example, @arn:aws:ecs:region:012345678910:service/my-service@ .
conServiceARN :: Lens' ContainerService (Maybe Text)
conServiceARN = lens _conServiceARN (\s a -> s {_conServiceARN = a})

-- | Specifies whether to propagate the tags from the task definition or the service to the task. If no value is specified, the tags are not propagated.
conPropagateTags :: Lens' ContainerService (Maybe PropagateTags)
conPropagateTags = lens _conPropagateTags (\s a -> s {_conPropagateTags = a})

instance FromJSON ContainerService where
  parseJSON =
    withObject
      "ContainerService"
      ( \x ->
          ContainerService'
            <$> (x .:? "clusterArn")
            <*> (x .:? "taskSets" .!= mempty)
            <*> (x .:? "status")
            <*> (x .:? "runningCount")
            <*> (x .:? "roleArn")
            <*> (x .:? "deploymentConfiguration")
            <*> (x .:? "networkConfiguration")
            <*> (x .:? "capacityProviderStrategy" .!= mempty)
            <*> (x .:? "desiredCount")
            <*> (x .:? "enableECSManagedTags")
            <*> (x .:? "launchType")
            <*> (x .:? "createdAt")
            <*> (x .:? "platformVersion")
            <*> (x .:? "deploymentController")
            <*> (x .:? "serviceName")
            <*> (x .:? "placementStrategy" .!= mempty)
            <*> (x .:? "deployments" .!= mempty)
            <*> (x .:? "placementConstraints" .!= mempty)
            <*> (x .:? "events" .!= mempty)
            <*> (x .:? "pendingCount")
            <*> (x .:? "loadBalancers" .!= mempty)
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "serviceRegistries" .!= mempty)
            <*> (x .:? "healthCheckGracePeriodSeconds")
            <*> (x .:? "schedulingStrategy")
            <*> (x .:? "createdBy")
            <*> (x .:? "taskDefinition")
            <*> (x .:? "serviceArn")
            <*> (x .:? "propagateTags")
      )

instance Hashable ContainerService

instance NFData ContainerService

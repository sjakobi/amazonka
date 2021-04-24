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
-- Module      : Network.AWS.ECS.CreateService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs and maintains a desired number of tasks from a specified task definition. If the number of tasks running in a service drops below the @desiredCount@ , Amazon ECS runs another copy of the task in the specified cluster. To update an existing service, see the UpdateService action.
--
--
-- In addition to maintaining the desired count of tasks in your service, you can optionally run your service behind one or more load balancers. The load balancers distribute traffic across the tasks that are associated with the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html Service Load Balancing> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- Tasks for services that /do not/ use a load balancer are considered healthy if they're in the @RUNNING@ state. Tasks for services that /do/ use a load balancer are considered healthy if they're in the @RUNNING@ state and the container instance that they're hosted on is reported as healthy by the load balancer.
--
-- There are two service scheduler strategies available:
--
--     * @REPLICA@ - The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Service Scheduler Concepts> in the /Amazon Elastic Container Service Developer Guide/ .
--
--     * @DAEMON@ - The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints. When using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Service Scheduler Concepts> in the /Amazon Elastic Container Service Developer Guide/ .
--
--
--
-- You can optionally specify a deployment configuration for your service. The deployment is triggered by changing properties, such as the task definition or the desired count of a service, with an 'UpdateService' operation. The default value for a replica service for @minimumHealthyPercent@ is 100%. The default value for a daemon service for @minimumHealthyPercent@ is 0%.
--
-- If a service is using the @ECS@ deployment controller, the minimum healthy percent represents a lower limit on the number of tasks in a service that must remain in the @RUNNING@ state during a deployment, as a percentage of the desired number of tasks (rounded up to the nearest integer), and while any container instances are in the @DRAINING@ state if the service contains tasks using the EC2 launch type. This parameter enables you to deploy without using additional cluster capacity. For example, if your service has a desired number of four tasks and a minimum healthy percent of 50%, the scheduler might stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that /do not/ use a load balancer are considered healthy if they're in the @RUNNING@ state. Tasks for services that /do/ use a load balancer are considered healthy if they're in the @RUNNING@ state and they're reported as healthy by the load balancer. The default value for minimum healthy percent is 100%.
--
-- If a service is using the @ECS@ deployment controller, the __maximum percent__ parameter represents an upper limit on the number of tasks in a service that are allowed in the @RUNNING@ or @PENDING@ state during a deployment, as a percentage of the desired number of tasks (rounded down to the nearest integer), and while any container instances are in the @DRAINING@ state if the service contains tasks using the EC2 launch type. This parameter enables you to define the deployment batch size. For example, if your service has a desired number of four tasks and a maximum percent value of 200%, the scheduler may start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value for maximum percent is 200%.
--
-- If a service is using either the @CODE_DEPLOY@ or @EXTERNAL@ deployment controller types and tasks that use the EC2 launch type, the __minimum healthy percent__ and __maximum percent__ values are used only to define the lower and upper limit on the number of the tasks in the service that remain in the @RUNNING@ state while the container instances are in the @DRAINING@ state. If the tasks in the service use the Fargate launch type, the minimum healthy percent and maximum percent values aren't used, although they're currently visible when describing your service.
--
-- When creating a service that uses the @EXTERNAL@ deployment controller, you can specify only parameters that aren't controlled at the task set level. The only required parameter is the service name. You control your services using the 'CreateTaskSet' operation. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html Amazon ECS Deployment Types> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- When the service scheduler launches new tasks, it determines task placement in your cluster using the following logic:
--
--     * Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).
--
--     * By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy) with the @placementStrategy@ parameter):
--
--     * Sort the valid container instances, giving priority to instances that have the fewest number of running tasks for this service in their respective Availability Zone. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.
--
--     * Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.
module Network.AWS.ECS.CreateService
  ( -- * Creating a Request
    createService,
    CreateService,

    -- * Request Lenses
    csDeploymentConfiguration,
    csNetworkConfiguration,
    csCapacityProviderStrategy,
    csDesiredCount,
    csEnableECSManagedTags,
    csLaunchType,
    csPlatformVersion,
    csDeploymentController,
    csPlacementStrategy,
    csPlacementConstraints,
    csRole,
    csLoadBalancers,
    csTags,
    csServiceRegistries,
    csHealthCheckGracePeriodSeconds,
    csSchedulingStrategy,
    csTaskDefinition,
    csCluster,
    csClientToken,
    csPropagateTags,
    csServiceName,

    -- * Destructuring the Response
    createServiceResponse,
    CreateServiceResponse,

    -- * Response Lenses
    csrrsService,
    csrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createService' smart constructor.
data CreateService = CreateService'
  { _csDeploymentConfiguration ::
      !(Maybe DeploymentConfiguration),
    _csNetworkConfiguration ::
      !(Maybe NetworkConfiguration),
    _csCapacityProviderStrategy ::
      !(Maybe [CapacityProviderStrategyItem]),
    _csDesiredCount :: !(Maybe Int),
    _csEnableECSManagedTags :: !(Maybe Bool),
    _csLaunchType :: !(Maybe LaunchType),
    _csPlatformVersion :: !(Maybe Text),
    _csDeploymentController ::
      !(Maybe DeploymentController),
    _csPlacementStrategy ::
      !(Maybe [PlacementStrategy]),
    _csPlacementConstraints ::
      !(Maybe [PlacementConstraint]),
    _csRole :: !(Maybe Text),
    _csLoadBalancers :: !(Maybe [LoadBalancer]),
    _csTags :: !(Maybe [Tag]),
    _csServiceRegistries ::
      !(Maybe [ServiceRegistry]),
    _csHealthCheckGracePeriodSeconds ::
      !(Maybe Int),
    _csSchedulingStrategy ::
      !(Maybe SchedulingStrategy),
    _csTaskDefinition :: !(Maybe Text),
    _csCluster :: !(Maybe Text),
    _csClientToken :: !(Maybe Text),
    _csPropagateTags :: !(Maybe PropagateTags),
    _csServiceName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csDeploymentConfiguration' - Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
--
-- * 'csNetworkConfiguration' - The network configuration for the service. This parameter is required for task definitions that use the @awsvpc@ network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'csCapacityProviderStrategy' - The capacity provider strategy to use for the service. A capacity provider strategy consists of one or more capacity providers along with the @base@ and @weight@ to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The 'PutClusterCapacityProviders' API is used to associate a capacity provider with a cluster. Only capacity providers with an @ACTIVE@ or @UPDATING@ status can be used. If a @capacityProviderStrategy@ is specified, the @launchType@ parameter must be omitted. If no @capacityProviderStrategy@ or @launchType@ is specified, the @defaultCapacityProviderStrategy@ for the cluster is used. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the 'CreateCapacityProvider' API operation. To use a AWS Fargate capacity provider, specify either the @FARGATE@ or @FARGATE_SPOT@ capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used. The 'PutClusterCapacityProviders' API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
--
-- * 'csDesiredCount' - The number of instantiations of the specified task definition to place and keep running on your cluster. This is required if @schedulingStrategy@ is @REPLICA@ or is not specified. If @schedulingStrategy@ is @DAEMON@ then this is not required.
--
-- * 'csEnableECSManagedTags' - Specifies whether to enable Amazon ECS managed tags for the tasks within the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'csLaunchType' - The launch type on which to run your service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ . If a @launchType@ is specified, the @capacityProviderStrategy@ parameter must be omitted.
--
-- * 'csPlatformVersion' - The platform version that your tasks in the service are running on. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'csDeploymentController' - The deployment controller to use for the service.
--
-- * 'csPlacementStrategy' - The placement strategy objects to use for tasks in your service. You can specify a maximum of five strategy rules per service.
--
-- * 'csPlacementConstraints' - An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).
--
-- * 'csRole' - The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition does not use the @awsvpc@ network mode. If you specify the @role@ parameter, you must also specify a load balancer object with the @loadBalancers@ parameter. /Important:/ If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here. The service-linked role is required if your task definition uses the @awsvpc@ network mode or if the service is configured to use service discovery, an external deployment controller, multiple target groups, or Elastic Inference accelerators in which case you should not specify a role here. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html Using Service-Linked Roles for Amazon ECS> in the /Amazon Elastic Container Service Developer Guide/ . If your specified role has a path other than @/@ , then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name @bar@ has a path of @/foo/@ then you would specify @/foo/bar@ as the role name. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names Friendly Names and Paths> in the /IAM User Guide/ .
--
-- * 'csLoadBalancers' - A load balancer object representing the load balancers to use with your service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html Service Load Balancing> in the /Amazon Elastic Container Service Developer Guide/ . If the service is using the rolling update (@ECS@ ) deployment controller and using either an Application Load Balancer or Network Load Balancer, you must specify one or more target group ARNs to attach to the service. The service-linked role is required for services that make use of multiple target groups. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html Using Service-Linked Roles for Amazon ECS> in the /Amazon Elastic Container Service Developer Guide/ . If the service is using the @CODE_DEPLOY@ deployment controller, the service is required to use either an Application Load Balancer or Network Load Balancer. When creating an AWS CodeDeploy deployment group, you specify two target groups (referred to as a @targetGroupPair@ ). During a deployment, AWS CodeDeploy determines which task set in your service has the status @PRIMARY@ and associates one target group with it, and then associates the other target group with the replacement task set. The load balancer can also have up to two listeners: a required listener for production traffic and an optional listener that allows you perform validation tests with Lambda functions before routing production traffic to it. After you create a service using the @ECS@ deployment controller, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable. If you are using the @CODE_DEPLOY@ deployment controller, these values can be changed when updating the service. For Application Load Balancers and Network Load Balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. The load balancer name parameter must be omitted. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here. For Classic Load Balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. The target group ARN parameter must be omitted. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here. Services with tasks that use the @awsvpc@ network mode (for example, those with the Fargate launch type) only support Application Load Balancers and Network Load Balancers. Classic Load Balancers are not supported. Also, when you create any target groups for these services, you must choose @ip@ as the target type, not @instance@ , because tasks that use the @awsvpc@ network mode are associated with an elastic network interface, not an Amazon EC2 instance.
--
-- * 'csTags' - The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. When a service is deleted, the tags are deleted as well. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
--
-- * 'csServiceRegistries' - The details of the service discovery registries to assign to this service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery> .
--
-- * 'csHealthCheckGracePeriodSeconds' - The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only used when your service is configured to use a load balancer. If your service has a load balancer defined and you don't specify a health check grace period value, the default value of @0@ is used. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores health check status. This grace period can prevent the service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.
--
-- * 'csSchedulingStrategy' - The scheduling strategy to use for the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Services> . There are two service scheduler strategies available:     * @REPLICA@ -The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service is using the @CODE_DEPLOY@ or @EXTERNAL@ deployment controller types.     * @DAEMON@ -The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.
--
-- * 'csTaskDefinition' - The @family@ and @revision@ (@family:revision@ ) or full ARN of the task definition to run in your service. If a @revision@ is not specified, the latest @ACTIVE@ revision is used. A task definition must be specified if the service is using either the @ECS@ or @CODE_DEPLOY@ deployment controllers.
--
-- * 'csCluster' - The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'csClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.
--
-- * 'csPropagateTags' - Specifies whether to propagate the tags from the task definition or the service to the tasks in the service. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks within the service during service creation. To add tags to a task after service creation, use the 'TagResource' API action.
--
-- * 'csServiceName' - The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.
createService ::
  -- | 'csServiceName'
  Text ->
  CreateService
createService pServiceName_ =
  CreateService'
    { _csDeploymentConfiguration =
        Nothing,
      _csNetworkConfiguration = Nothing,
      _csCapacityProviderStrategy = Nothing,
      _csDesiredCount = Nothing,
      _csEnableECSManagedTags = Nothing,
      _csLaunchType = Nothing,
      _csPlatformVersion = Nothing,
      _csDeploymentController = Nothing,
      _csPlacementStrategy = Nothing,
      _csPlacementConstraints = Nothing,
      _csRole = Nothing,
      _csLoadBalancers = Nothing,
      _csTags = Nothing,
      _csServiceRegistries = Nothing,
      _csHealthCheckGracePeriodSeconds = Nothing,
      _csSchedulingStrategy = Nothing,
      _csTaskDefinition = Nothing,
      _csCluster = Nothing,
      _csClientToken = Nothing,
      _csPropagateTags = Nothing,
      _csServiceName = pServiceName_
    }

-- | Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
csDeploymentConfiguration :: Lens' CreateService (Maybe DeploymentConfiguration)
csDeploymentConfiguration = lens _csDeploymentConfiguration (\s a -> s {_csDeploymentConfiguration = a})

-- | The network configuration for the service. This parameter is required for task definitions that use the @awsvpc@ network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html Task Networking> in the /Amazon Elastic Container Service Developer Guide/ .
csNetworkConfiguration :: Lens' CreateService (Maybe NetworkConfiguration)
csNetworkConfiguration = lens _csNetworkConfiguration (\s a -> s {_csNetworkConfiguration = a})

-- | The capacity provider strategy to use for the service. A capacity provider strategy consists of one or more capacity providers along with the @base@ and @weight@ to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The 'PutClusterCapacityProviders' API is used to associate a capacity provider with a cluster. Only capacity providers with an @ACTIVE@ or @UPDATING@ status can be used. If a @capacityProviderStrategy@ is specified, the @launchType@ parameter must be omitted. If no @capacityProviderStrategy@ or @launchType@ is specified, the @defaultCapacityProviderStrategy@ for the cluster is used. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the 'CreateCapacityProvider' API operation. To use a AWS Fargate capacity provider, specify either the @FARGATE@ or @FARGATE_SPOT@ capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used. The 'PutClusterCapacityProviders' API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
csCapacityProviderStrategy :: Lens' CreateService [CapacityProviderStrategyItem]
csCapacityProviderStrategy = lens _csCapacityProviderStrategy (\s a -> s {_csCapacityProviderStrategy = a}) . _Default . _Coerce

-- | The number of instantiations of the specified task definition to place and keep running on your cluster. This is required if @schedulingStrategy@ is @REPLICA@ or is not specified. If @schedulingStrategy@ is @DAEMON@ then this is not required.
csDesiredCount :: Lens' CreateService (Maybe Int)
csDesiredCount = lens _csDesiredCount (\s a -> s {_csDesiredCount = a})

-- | Specifies whether to enable Amazon ECS managed tags for the tasks within the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html Tagging Your Amazon ECS Resources> in the /Amazon Elastic Container Service Developer Guide/ .
csEnableECSManagedTags :: Lens' CreateService (Maybe Bool)
csEnableECSManagedTags = lens _csEnableECSManagedTags (\s a -> s {_csEnableECSManagedTags = a})

-- | The launch type on which to run your service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html Amazon ECS Launch Types> in the /Amazon Elastic Container Service Developer Guide/ . If a @launchType@ is specified, the @capacityProviderStrategy@ parameter must be omitted.
csLaunchType :: Lens' CreateService (Maybe LaunchType)
csLaunchType = lens _csLaunchType (\s a -> s {_csLaunchType = a})

-- | The platform version that your tasks in the service are running on. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
csPlatformVersion :: Lens' CreateService (Maybe Text)
csPlatformVersion = lens _csPlatformVersion (\s a -> s {_csPlatformVersion = a})

-- | The deployment controller to use for the service.
csDeploymentController :: Lens' CreateService (Maybe DeploymentController)
csDeploymentController = lens _csDeploymentController (\s a -> s {_csDeploymentController = a})

-- | The placement strategy objects to use for tasks in your service. You can specify a maximum of five strategy rules per service.
csPlacementStrategy :: Lens' CreateService [PlacementStrategy]
csPlacementStrategy = lens _csPlacementStrategy (\s a -> s {_csPlacementStrategy = a}) . _Default . _Coerce

-- | An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).
csPlacementConstraints :: Lens' CreateService [PlacementConstraint]
csPlacementConstraints = lens _csPlacementConstraints (\s a -> s {_csPlacementConstraints = a}) . _Default . _Coerce

-- | The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition does not use the @awsvpc@ network mode. If you specify the @role@ parameter, you must also specify a load balancer object with the @loadBalancers@ parameter. /Important:/ If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here. The service-linked role is required if your task definition uses the @awsvpc@ network mode or if the service is configured to use service discovery, an external deployment controller, multiple target groups, or Elastic Inference accelerators in which case you should not specify a role here. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html Using Service-Linked Roles for Amazon ECS> in the /Amazon Elastic Container Service Developer Guide/ . If your specified role has a path other than @/@ , then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name @bar@ has a path of @/foo/@ then you would specify @/foo/bar@ as the role name. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names Friendly Names and Paths> in the /IAM User Guide/ .
csRole :: Lens' CreateService (Maybe Text)
csRole = lens _csRole (\s a -> s {_csRole = a})

-- | A load balancer object representing the load balancers to use with your service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html Service Load Balancing> in the /Amazon Elastic Container Service Developer Guide/ . If the service is using the rolling update (@ECS@ ) deployment controller and using either an Application Load Balancer or Network Load Balancer, you must specify one or more target group ARNs to attach to the service. The service-linked role is required for services that make use of multiple target groups. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html Using Service-Linked Roles for Amazon ECS> in the /Amazon Elastic Container Service Developer Guide/ . If the service is using the @CODE_DEPLOY@ deployment controller, the service is required to use either an Application Load Balancer or Network Load Balancer. When creating an AWS CodeDeploy deployment group, you specify two target groups (referred to as a @targetGroupPair@ ). During a deployment, AWS CodeDeploy determines which task set in your service has the status @PRIMARY@ and associates one target group with it, and then associates the other target group with the replacement task set. The load balancer can also have up to two listeners: a required listener for production traffic and an optional listener that allows you perform validation tests with Lambda functions before routing production traffic to it. After you create a service using the @ECS@ deployment controller, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable. If you are using the @CODE_DEPLOY@ deployment controller, these values can be changed when updating the service. For Application Load Balancers and Network Load Balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. The load balancer name parameter must be omitted. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here. For Classic Load Balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. The target group ARN parameter must be omitted. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here. Services with tasks that use the @awsvpc@ network mode (for example, those with the Fargate launch type) only support Application Load Balancers and Network Load Balancers. Classic Load Balancers are not supported. Also, when you create any target groups for these services, you must choose @ip@ as the target type, not @instance@ , because tasks that use the @awsvpc@ network mode are associated with an elastic network interface, not an Amazon EC2 instance.
csLoadBalancers :: Lens' CreateService [LoadBalancer]
csLoadBalancers = lens _csLoadBalancers (\s a -> s {_csLoadBalancers = a}) . _Default . _Coerce

-- | The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. When a service is deleted, the tags are deleted as well. The following basic restrictions apply to tags:     * Maximum number of tags per resource - 50     * For each resource, each tag key must be unique, and each tag key can have only one value.     * Maximum key length - 128 Unicode characters in UTF-8     * Maximum value length - 256 Unicode characters in UTF-8     * If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.     * Tag keys and values are case-sensitive.     * Do not use @aws:@ , @AWS:@ , or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
csTags :: Lens' CreateService [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | The details of the service discovery registries to assign to this service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery> .
csServiceRegistries :: Lens' CreateService [ServiceRegistry]
csServiceRegistries = lens _csServiceRegistries (\s a -> s {_csServiceRegistries = a}) . _Default . _Coerce

-- | The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only used when your service is configured to use a load balancer. If your service has a load balancer defined and you don't specify a health check grace period value, the default value of @0@ is used. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores health check status. This grace period can prevent the service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.
csHealthCheckGracePeriodSeconds :: Lens' CreateService (Maybe Int)
csHealthCheckGracePeriodSeconds = lens _csHealthCheckGracePeriodSeconds (\s a -> s {_csHealthCheckGracePeriodSeconds = a})

-- | The scheduling strategy to use for the service. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html Services> . There are two service scheduler strategies available:     * @REPLICA@ -The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service is using the @CODE_DEPLOY@ or @EXTERNAL@ deployment controller types.     * @DAEMON@ -The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.
csSchedulingStrategy :: Lens' CreateService (Maybe SchedulingStrategy)
csSchedulingStrategy = lens _csSchedulingStrategy (\s a -> s {_csSchedulingStrategy = a})

-- | The @family@ and @revision@ (@family:revision@ ) or full ARN of the task definition to run in your service. If a @revision@ is not specified, the latest @ACTIVE@ revision is used. A task definition must be specified if the service is using either the @ECS@ or @CODE_DEPLOY@ deployment controllers.
csTaskDefinition :: Lens' CreateService (Maybe Text)
csTaskDefinition = lens _csTaskDefinition (\s a -> s {_csTaskDefinition = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.
csCluster :: Lens' CreateService (Maybe Text)
csCluster = lens _csCluster (\s a -> s {_csCluster = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.
csClientToken :: Lens' CreateService (Maybe Text)
csClientToken = lens _csClientToken (\s a -> s {_csClientToken = a})

-- | Specifies whether to propagate the tags from the task definition or the service to the tasks in the service. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks within the service during service creation. To add tags to a task after service creation, use the 'TagResource' API action.
csPropagateTags :: Lens' CreateService (Maybe PropagateTags)
csPropagateTags = lens _csPropagateTags (\s a -> s {_csPropagateTags = a})

-- | The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.
csServiceName :: Lens' CreateService Text
csServiceName = lens _csServiceName (\s a -> s {_csServiceName = a})

instance AWSRequest CreateService where
  type Rs CreateService = CreateServiceResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          CreateServiceResponse'
            <$> (x .?> "service") <*> (pure (fromEnum s))
      )

instance Hashable CreateService

instance NFData CreateService

instance ToHeaders CreateService where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.CreateService" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateService where
  toJSON CreateService' {..} =
    object
      ( catMaybes
          [ ("deploymentConfiguration" .=)
              <$> _csDeploymentConfiguration,
            ("networkConfiguration" .=)
              <$> _csNetworkConfiguration,
            ("capacityProviderStrategy" .=)
              <$> _csCapacityProviderStrategy,
            ("desiredCount" .=) <$> _csDesiredCount,
            ("enableECSManagedTags" .=)
              <$> _csEnableECSManagedTags,
            ("launchType" .=) <$> _csLaunchType,
            ("platformVersion" .=) <$> _csPlatformVersion,
            ("deploymentController" .=)
              <$> _csDeploymentController,
            ("placementStrategy" .=) <$> _csPlacementStrategy,
            ("placementConstraints" .=)
              <$> _csPlacementConstraints,
            ("role" .=) <$> _csRole,
            ("loadBalancers" .=) <$> _csLoadBalancers,
            ("tags" .=) <$> _csTags,
            ("serviceRegistries" .=) <$> _csServiceRegistries,
            ("healthCheckGracePeriodSeconds" .=)
              <$> _csHealthCheckGracePeriodSeconds,
            ("schedulingStrategy" .=) <$> _csSchedulingStrategy,
            ("taskDefinition" .=) <$> _csTaskDefinition,
            ("cluster" .=) <$> _csCluster,
            ("clientToken" .=) <$> _csClientToken,
            ("propagateTags" .=) <$> _csPropagateTags,
            Just ("serviceName" .= _csServiceName)
          ]
      )

instance ToPath CreateService where
  toPath = const "/"

instance ToQuery CreateService where
  toQuery = const mempty

-- | /See:/ 'createServiceResponse' smart constructor.
data CreateServiceResponse = CreateServiceResponse'
  { _csrrsService ::
      !(Maybe ContainerService),
    _csrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsService' - The full description of your service following the create call. If a service is using the @ECS@ deployment controller, the @deploymentController@ and @taskSets@ parameters will not be returned. If the service is using the @CODE_DEPLOY@ deployment controller, the @deploymentController@ , @taskSets@ and @deployments@ parameters will be returned, however the @deployments@ parameter will be an empty list.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createServiceResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateServiceResponse
createServiceResponse pResponseStatus_ =
  CreateServiceResponse'
    { _csrrsService = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The full description of your service following the create call. If a service is using the @ECS@ deployment controller, the @deploymentController@ and @taskSets@ parameters will not be returned. If the service is using the @CODE_DEPLOY@ deployment controller, the @deploymentController@ , @taskSets@ and @deployments@ parameters will be returned, however the @deployments@ parameter will be an empty list.
csrrsService :: Lens' CreateServiceResponse (Maybe ContainerService)
csrrsService = lens _csrrsService (\s a -> s {_csrrsService = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateServiceResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateServiceResponse

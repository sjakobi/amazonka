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
-- Module      : Network.AWS.ApplicationAutoScaling.DescribeScheduledActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Application Auto Scaling scheduled actions for the specified service namespace.
--
--
-- You can filter the results using the @ResourceId@ , @ScalableDimension@ , and @ScheduledActionNames@ parameters.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html Scheduled scaling> and <https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html Managing scheduled scaling> in the /Application Auto Scaling User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.ApplicationAutoScaling.DescribeScheduledActions
  ( -- * Creating a Request
    describeScheduledActions,
    DescribeScheduledActions,

    -- * Request Lenses
    dsaResourceId,
    dsaNextToken,
    dsaMaxResults,
    dsaScalableDimension,
    dsaScheduledActionNames,
    dsaServiceNamespace,

    -- * Destructuring the Response
    describeScheduledActionsResponse,
    DescribeScheduledActionsResponse,

    -- * Response Lenses
    drsNextToken,
    drsScheduledActions,
    drsResponseStatus,
  )
where

import Network.AWS.ApplicationAutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScheduledActions' smart constructor.
data DescribeScheduledActions = DescribeScheduledActions'
  { _dsaResourceId ::
      !(Maybe Text),
    _dsaNextToken ::
      !(Maybe Text),
    _dsaMaxResults ::
      !(Maybe Int),
    _dsaScalableDimension ::
      !( Maybe
           ScalableDimension
       ),
    _dsaScheduledActionNames ::
      !(Maybe [Text]),
    _dsaServiceNamespace ::
      !ServiceNamespace
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScheduledActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaResourceId' - The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
-- * 'dsaNextToken' - The token for the next set of results.
--
-- * 'dsaMaxResults' - The maximum number of scheduled action results. This value can be between 1 and 50. The default value is 50. If this parameter is used, the operation returns up to @MaxResults@ results at a time, along with a @NextToken@ value. To get the next set of results, include the @NextToken@ value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a @NextToken@ value, if applicable.
--
-- * 'dsaScalableDimension' - The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
-- * 'dsaScheduledActionNames' - The names of the scheduled actions to describe.
--
-- * 'dsaServiceNamespace' - The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
describeScheduledActions ::
  -- | 'dsaServiceNamespace'
  ServiceNamespace ->
  DescribeScheduledActions
describeScheduledActions pServiceNamespace_ =
  DescribeScheduledActions'
    { _dsaResourceId = Nothing,
      _dsaNextToken = Nothing,
      _dsaMaxResults = Nothing,
      _dsaScalableDimension = Nothing,
      _dsaScheduledActionNames = Nothing,
      _dsaServiceNamespace = pServiceNamespace_
    }

-- | The identifier of the resource associated with the scheduled action. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
dsaResourceId :: Lens' DescribeScheduledActions (Maybe Text)
dsaResourceId = lens _dsaResourceId (\s a -> s {_dsaResourceId = a})

-- | The token for the next set of results.
dsaNextToken :: Lens' DescribeScheduledActions (Maybe Text)
dsaNextToken = lens _dsaNextToken (\s a -> s {_dsaNextToken = a})

-- | The maximum number of scheduled action results. This value can be between 1 and 50. The default value is 50. If this parameter is used, the operation returns up to @MaxResults@ results at a time, along with a @NextToken@ value. To get the next set of results, include the @NextToken@ value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a @NextToken@ value, if applicable.
dsaMaxResults :: Lens' DescribeScheduledActions (Maybe Int)
dsaMaxResults = lens _dsaMaxResults (\s a -> s {_dsaMaxResults = a})

-- | The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
dsaScalableDimension :: Lens' DescribeScheduledActions (Maybe ScalableDimension)
dsaScalableDimension = lens _dsaScalableDimension (\s a -> s {_dsaScalableDimension = a})

-- | The names of the scheduled actions to describe.
dsaScheduledActionNames :: Lens' DescribeScheduledActions [Text]
dsaScheduledActionNames = lens _dsaScheduledActionNames (\s a -> s {_dsaScheduledActionNames = a}) . _Default . _Coerce

-- | The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
dsaServiceNamespace :: Lens' DescribeScheduledActions ServiceNamespace
dsaServiceNamespace = lens _dsaServiceNamespace (\s a -> s {_dsaServiceNamespace = a})

instance AWSPager DescribeScheduledActions where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsScheduledActions) = Nothing
    | otherwise =
      Just $ rq & dsaNextToken .~ rs ^. drsNextToken

instance AWSRequest DescribeScheduledActions where
  type
    Rs DescribeScheduledActions =
      DescribeScheduledActionsResponse
  request = postJSON applicationAutoScaling
  response =
    receiveJSON
      ( \s h x ->
          DescribeScheduledActionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScheduledActions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScheduledActions

instance NFData DescribeScheduledActions

instance ToHeaders DescribeScheduledActions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AnyScaleFrontendService.DescribeScheduledActions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeScheduledActions where
  toJSON DescribeScheduledActions' {..} =
    object
      ( catMaybes
          [ ("ResourceId" .=) <$> _dsaResourceId,
            ("NextToken" .=) <$> _dsaNextToken,
            ("MaxResults" .=) <$> _dsaMaxResults,
            ("ScalableDimension" .=) <$> _dsaScalableDimension,
            ("ScheduledActionNames" .=)
              <$> _dsaScheduledActionNames,
            Just ("ServiceNamespace" .= _dsaServiceNamespace)
          ]
      )

instance ToPath DescribeScheduledActions where
  toPath = const "/"

instance ToQuery DescribeScheduledActions where
  toQuery = const mempty

-- | /See:/ 'describeScheduledActionsResponse' smart constructor.
data DescribeScheduledActionsResponse = DescribeScheduledActionsResponse'
  { _drsNextToken ::
      !( Maybe
           Text
       ),
    _drsScheduledActions ::
      !( Maybe
           [ScheduledAction]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeScheduledActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - The token required to get the next set of results. This value is @null@ if there are no more results to return.
--
-- * 'drsScheduledActions' - Information about the scheduled actions.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeScheduledActionsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeScheduledActionsResponse
describeScheduledActionsResponse pResponseStatus_ =
  DescribeScheduledActionsResponse'
    { _drsNextToken =
        Nothing,
      _drsScheduledActions = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The token required to get the next set of results. This value is @null@ if there are no more results to return.
drsNextToken :: Lens' DescribeScheduledActionsResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | Information about the scheduled actions.
drsScheduledActions :: Lens' DescribeScheduledActionsResponse [ScheduledAction]
drsScheduledActions = lens _drsScheduledActions (\s a -> s {_drsScheduledActions = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeScheduledActionsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeScheduledActionsResponse

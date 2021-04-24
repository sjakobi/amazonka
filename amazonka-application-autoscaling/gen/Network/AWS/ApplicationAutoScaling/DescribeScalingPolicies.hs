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
-- Module      : Network.AWS.ApplicationAutoScaling.DescribeScalingPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Application Auto Scaling scaling policies for the specified service namespace.
--
--
-- You can filter the results using @ResourceId@ , @ScalableDimension@ , and @PolicyNames@ .
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html Target tracking scaling policies> and <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html Step scaling policies> in the /Application Auto Scaling User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.ApplicationAutoScaling.DescribeScalingPolicies
  ( -- * Creating a Request
    describeScalingPolicies,
    DescribeScalingPolicies,

    -- * Request Lenses
    dspResourceId,
    dspNextToken,
    dspMaxResults,
    dspScalableDimension,
    dspPolicyNames,
    dspServiceNamespace,

    -- * Destructuring the Response
    describeScalingPoliciesResponse,
    DescribeScalingPoliciesResponse,

    -- * Response Lenses
    desrsNextToken,
    desrsScalingPolicies,
    desrsResponseStatus,
  )
where

import Network.AWS.ApplicationAutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScalingPolicies' smart constructor.
data DescribeScalingPolicies = DescribeScalingPolicies'
  { _dspResourceId ::
      !(Maybe Text),
    _dspNextToken ::
      !(Maybe Text),
    _dspMaxResults ::
      !(Maybe Int),
    _dspScalableDimension ::
      !( Maybe
           ScalableDimension
       ),
    _dspPolicyNames ::
      !(Maybe [Text]),
    _dspServiceNamespace ::
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

-- | Creates a value of 'DescribeScalingPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspResourceId' - The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
-- * 'dspNextToken' - The token for the next set of results.
--
-- * 'dspMaxResults' - The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50. If this parameter is used, the operation returns up to @MaxResults@ results at a time, along with a @NextToken@ value. To get the next set of results, include the @NextToken@ value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a @NextToken@ value, if applicable.
--
-- * 'dspScalableDimension' - The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
-- * 'dspPolicyNames' - The names of the scaling policies to describe.
--
-- * 'dspServiceNamespace' - The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
describeScalingPolicies ::
  -- | 'dspServiceNamespace'
  ServiceNamespace ->
  DescribeScalingPolicies
describeScalingPolicies pServiceNamespace_ =
  DescribeScalingPolicies'
    { _dspResourceId = Nothing,
      _dspNextToken = Nothing,
      _dspMaxResults = Nothing,
      _dspScalableDimension = Nothing,
      _dspPolicyNames = Nothing,
      _dspServiceNamespace = pServiceNamespace_
    }

-- | The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
dspResourceId :: Lens' DescribeScalingPolicies (Maybe Text)
dspResourceId = lens _dspResourceId (\s a -> s {_dspResourceId = a})

-- | The token for the next set of results.
dspNextToken :: Lens' DescribeScalingPolicies (Maybe Text)
dspNextToken = lens _dspNextToken (\s a -> s {_dspNextToken = a})

-- | The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50. If this parameter is used, the operation returns up to @MaxResults@ results at a time, along with a @NextToken@ value. To get the next set of results, include the @NextToken@ value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a @NextToken@ value, if applicable.
dspMaxResults :: Lens' DescribeScalingPolicies (Maybe Int)
dspMaxResults = lens _dspMaxResults (\s a -> s {_dspMaxResults = a})

-- | The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
dspScalableDimension :: Lens' DescribeScalingPolicies (Maybe ScalableDimension)
dspScalableDimension = lens _dspScalableDimension (\s a -> s {_dspScalableDimension = a})

-- | The names of the scaling policies to describe.
dspPolicyNames :: Lens' DescribeScalingPolicies [Text]
dspPolicyNames = lens _dspPolicyNames (\s a -> s {_dspPolicyNames = a}) . _Default . _Coerce

-- | The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
dspServiceNamespace :: Lens' DescribeScalingPolicies ServiceNamespace
dspServiceNamespace = lens _dspServiceNamespace (\s a -> s {_dspServiceNamespace = a})

instance AWSPager DescribeScalingPolicies where
  page rq rs
    | stop (rs ^. desrsNextToken) = Nothing
    | stop (rs ^. desrsScalingPolicies) = Nothing
    | otherwise =
      Just $ rq & dspNextToken .~ rs ^. desrsNextToken

instance AWSRequest DescribeScalingPolicies where
  type
    Rs DescribeScalingPolicies =
      DescribeScalingPoliciesResponse
  request = postJSON applicationAutoScaling
  response =
    receiveJSON
      ( \s h x ->
          DescribeScalingPoliciesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScalingPolicies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScalingPolicies

instance NFData DescribeScalingPolicies

instance ToHeaders DescribeScalingPolicies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AnyScaleFrontendService.DescribeScalingPolicies" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeScalingPolicies where
  toJSON DescribeScalingPolicies' {..} =
    object
      ( catMaybes
          [ ("ResourceId" .=) <$> _dspResourceId,
            ("NextToken" .=) <$> _dspNextToken,
            ("MaxResults" .=) <$> _dspMaxResults,
            ("ScalableDimension" .=) <$> _dspScalableDimension,
            ("PolicyNames" .=) <$> _dspPolicyNames,
            Just ("ServiceNamespace" .= _dspServiceNamespace)
          ]
      )

instance ToPath DescribeScalingPolicies where
  toPath = const "/"

instance ToQuery DescribeScalingPolicies where
  toQuery = const mempty

-- | /See:/ 'describeScalingPoliciesResponse' smart constructor.
data DescribeScalingPoliciesResponse = DescribeScalingPoliciesResponse'
  { _desrsNextToken ::
      !( Maybe
           Text
       ),
    _desrsScalingPolicies ::
      !( Maybe
           [ScalingPolicy]
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeScalingPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsNextToken' - The token required to get the next set of results. This value is @null@ if there are no more results to return.
--
-- * 'desrsScalingPolicies' - Information about the scaling policies.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeScalingPoliciesResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeScalingPoliciesResponse
describeScalingPoliciesResponse pResponseStatus_ =
  DescribeScalingPoliciesResponse'
    { _desrsNextToken =
        Nothing,
      _desrsScalingPolicies = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The token required to get the next set of results. This value is @null@ if there are no more results to return.
desrsNextToken :: Lens' DescribeScalingPoliciesResponse (Maybe Text)
desrsNextToken = lens _desrsNextToken (\s a -> s {_desrsNextToken = a})

-- | Information about the scaling policies.
desrsScalingPolicies :: Lens' DescribeScalingPoliciesResponse [ScalingPolicy]
desrsScalingPolicies = lens _desrsScalingPolicies (\s a -> s {_desrsScalingPolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeScalingPoliciesResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeScalingPoliciesResponse

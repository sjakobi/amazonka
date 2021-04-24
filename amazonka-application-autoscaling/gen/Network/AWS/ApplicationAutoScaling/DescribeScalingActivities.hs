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
-- Module      : Network.AWS.ApplicationAutoScaling.DescribeScalingActivities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.
--
--
-- You can filter the results using @ResourceId@ and @ScalableDimension@ .
--
--
-- This operation returns paginated results.
module Network.AWS.ApplicationAutoScaling.DescribeScalingActivities
  ( -- * Creating a Request
    describeScalingActivities,
    DescribeScalingActivities,

    -- * Request Lenses
    dsasResourceId,
    dsasNextToken,
    dsasMaxResults,
    dsasScalableDimension,
    dsasServiceNamespace,

    -- * Destructuring the Response
    describeScalingActivitiesResponse,
    DescribeScalingActivitiesResponse,

    -- * Response Lenses
    dsarrsNextToken,
    dsarrsScalingActivities,
    dsarrsResponseStatus,
  )
where

import Network.AWS.ApplicationAutoScaling.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScalingActivities' smart constructor.
data DescribeScalingActivities = DescribeScalingActivities'
  { _dsasResourceId ::
      !(Maybe Text),
    _dsasNextToken ::
      !(Maybe Text),
    _dsasMaxResults ::
      !(Maybe Int),
    _dsasScalableDimension ::
      !( Maybe
           ScalableDimension
       ),
    _dsasServiceNamespace ::
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

-- | Creates a value of 'DescribeScalingActivities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsasResourceId' - The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
-- * 'dsasNextToken' - The token for the next set of results.
--
-- * 'dsasMaxResults' - The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50. If this parameter is used, the operation returns up to @MaxResults@ results at a time, along with a @NextToken@ value. To get the next set of results, include the @NextToken@ value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a @NextToken@ value, if applicable.
--
-- * 'dsasScalableDimension' - The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
-- * 'dsasServiceNamespace' - The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
describeScalingActivities ::
  -- | 'dsasServiceNamespace'
  ServiceNamespace ->
  DescribeScalingActivities
describeScalingActivities pServiceNamespace_ =
  DescribeScalingActivities'
    { _dsasResourceId =
        Nothing,
      _dsasNextToken = Nothing,
      _dsasMaxResults = Nothing,
      _dsasScalableDimension = Nothing,
      _dsasServiceNamespace = pServiceNamespace_
    }

-- | The identifier of the resource associated with the scaling activity. This string consists of the resource type and unique identifier.     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
dsasResourceId :: Lens' DescribeScalingActivities (Maybe Text)
dsasResourceId = lens _dsasResourceId (\s a -> s {_dsasResourceId = a})

-- | The token for the next set of results.
dsasNextToken :: Lens' DescribeScalingActivities (Maybe Text)
dsasNextToken = lens _dsasNextToken (\s a -> s {_dsasNextToken = a})

-- | The maximum number of scalable targets. This value can be between 1 and 50. The default value is 50. If this parameter is used, the operation returns up to @MaxResults@ results at a time, along with a @NextToken@ value. To get the next set of results, include the @NextToken@ value in a subsequent call. If this parameter is not used, the operation returns up to 50 results and a @NextToken@ value, if applicable.
dsasMaxResults :: Lens' DescribeScalingActivities (Maybe Int)
dsasMaxResults = lens _dsasMaxResults (\s a -> s {_dsasMaxResults = a})

-- | The scalable dimension. This string consists of the service namespace, resource type, and scaling property. If you specify a scalable dimension, you must also specify a resource ID.     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
dsasScalableDimension :: Lens' DescribeScalingActivities (Maybe ScalableDimension)
dsasScalableDimension = lens _dsasScalableDimension (\s a -> s {_dsasScalableDimension = a})

-- | The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
dsasServiceNamespace :: Lens' DescribeScalingActivities ServiceNamespace
dsasServiceNamespace = lens _dsasServiceNamespace (\s a -> s {_dsasServiceNamespace = a})

instance AWSPager DescribeScalingActivities where
  page rq rs
    | stop (rs ^. dsarrsNextToken) = Nothing
    | stop (rs ^. dsarrsScalingActivities) = Nothing
    | otherwise =
      Just $ rq & dsasNextToken .~ rs ^. dsarrsNextToken

instance AWSRequest DescribeScalingActivities where
  type
    Rs DescribeScalingActivities =
      DescribeScalingActivitiesResponse
  request = postJSON applicationAutoScaling
  response =
    receiveJSON
      ( \s h x ->
          DescribeScalingActivitiesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ScalingActivities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScalingActivities

instance NFData DescribeScalingActivities

instance ToHeaders DescribeScalingActivities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AnyScaleFrontendService.DescribeScalingActivities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeScalingActivities where
  toJSON DescribeScalingActivities' {..} =
    object
      ( catMaybes
          [ ("ResourceId" .=) <$> _dsasResourceId,
            ("NextToken" .=) <$> _dsasNextToken,
            ("MaxResults" .=) <$> _dsasMaxResults,
            ("ScalableDimension" .=) <$> _dsasScalableDimension,
            Just ("ServiceNamespace" .= _dsasServiceNamespace)
          ]
      )

instance ToPath DescribeScalingActivities where
  toPath = const "/"

instance ToQuery DescribeScalingActivities where
  toQuery = const mempty

-- | /See:/ 'describeScalingActivitiesResponse' smart constructor.
data DescribeScalingActivitiesResponse = DescribeScalingActivitiesResponse'
  { _dsarrsNextToken ::
      !( Maybe
           Text
       ),
    _dsarrsScalingActivities ::
      !( Maybe
           [ScalingActivity]
       ),
    _dsarrsResponseStatus ::
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

-- | Creates a value of 'DescribeScalingActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsarrsNextToken' - The token required to get the next set of results. This value is @null@ if there are no more results to return.
--
-- * 'dsarrsScalingActivities' - A list of scaling activity objects.
--
-- * 'dsarrsResponseStatus' - -- | The response status code.
describeScalingActivitiesResponse ::
  -- | 'dsarrsResponseStatus'
  Int ->
  DescribeScalingActivitiesResponse
describeScalingActivitiesResponse pResponseStatus_ =
  DescribeScalingActivitiesResponse'
    { _dsarrsNextToken =
        Nothing,
      _dsarrsScalingActivities = Nothing,
      _dsarrsResponseStatus = pResponseStatus_
    }

-- | The token required to get the next set of results. This value is @null@ if there are no more results to return.
dsarrsNextToken :: Lens' DescribeScalingActivitiesResponse (Maybe Text)
dsarrsNextToken = lens _dsarrsNextToken (\s a -> s {_dsarrsNextToken = a})

-- | A list of scaling activity objects.
dsarrsScalingActivities :: Lens' DescribeScalingActivitiesResponse [ScalingActivity]
dsarrsScalingActivities = lens _dsarrsScalingActivities (\s a -> s {_dsarrsScalingActivities = a}) . _Default . _Coerce

-- | -- | The response status code.
dsarrsResponseStatus :: Lens' DescribeScalingActivitiesResponse Int
dsarrsResponseStatus = lens _dsarrsResponseStatus (\s a -> s {_dsarrsResponseStatus = a})

instance NFData DescribeScalingActivitiesResponse

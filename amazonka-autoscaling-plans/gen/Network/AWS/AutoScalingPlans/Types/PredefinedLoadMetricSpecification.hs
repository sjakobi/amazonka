{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.PredefinedLoadMetricSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.PredefinedLoadMetricSpecification where

import Network.AWS.AutoScalingPlans.Types.LoadMetricType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a predefined metric that can be used for predictive scaling.
--
--
-- After creating your scaling plan, you can use the AWS Auto Scaling console to visualize forecasts for the specified metric. For more information, see <https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource View Scaling Information for a Resource> in the /AWS Auto Scaling User Guide/ .
--
--
-- /See:/ 'predefinedLoadMetricSpecification' smart constructor.
data PredefinedLoadMetricSpecification = PredefinedLoadMetricSpecification'
  { _plmsResourceLabel ::
      !( Maybe
           Text
       ),
    _plmsPredefinedLoadMetricType ::
      !LoadMetricType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PredefinedLoadMetricSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plmsResourceLabel' - Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is @ALBTargetGroupRequestCount@ and there is a target group for an Application Load Balancer attached to the Auto Scaling group. You create the resource label by appending the final portion of the load balancer ARN and the final portion of the target group ARN into a single value, separated by a forward slash (/). The format is app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>, where:     * app/<load-balancer-name>/<load-balancer-id> is the final portion of the load balancer ARN     * targetgroup/<target-group-name>/<target-group-id> is the final portion of the target group ARN. This is an example: app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d. To find the ARN for an Application Load Balancer, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> API operation. To find the ARN for the target group, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html DescribeTargetGroups> API operation.
--
-- * 'plmsPredefinedLoadMetricType' - The metric type.
predefinedLoadMetricSpecification ::
  -- | 'plmsPredefinedLoadMetricType'
  LoadMetricType ->
  PredefinedLoadMetricSpecification
predefinedLoadMetricSpecification
  pPredefinedLoadMetricType_ =
    PredefinedLoadMetricSpecification'
      { _plmsResourceLabel =
          Nothing,
        _plmsPredefinedLoadMetricType =
          pPredefinedLoadMetricType_
      }

-- | Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is @ALBTargetGroupRequestCount@ and there is a target group for an Application Load Balancer attached to the Auto Scaling group. You create the resource label by appending the final portion of the load balancer ARN and the final portion of the target group ARN into a single value, separated by a forward slash (/). The format is app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>, where:     * app/<load-balancer-name>/<load-balancer-id> is the final portion of the load balancer ARN     * targetgroup/<target-group-name>/<target-group-id> is the final portion of the target group ARN. This is an example: app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d. To find the ARN for an Application Load Balancer, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> API operation. To find the ARN for the target group, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html DescribeTargetGroups> API operation.
plmsResourceLabel :: Lens' PredefinedLoadMetricSpecification (Maybe Text)
plmsResourceLabel = lens _plmsResourceLabel (\s a -> s {_plmsResourceLabel = a})

-- | The metric type.
plmsPredefinedLoadMetricType :: Lens' PredefinedLoadMetricSpecification LoadMetricType
plmsPredefinedLoadMetricType = lens _plmsPredefinedLoadMetricType (\s a -> s {_plmsPredefinedLoadMetricType = a})

instance FromJSON PredefinedLoadMetricSpecification where
  parseJSON =
    withObject
      "PredefinedLoadMetricSpecification"
      ( \x ->
          PredefinedLoadMetricSpecification'
            <$> (x .:? "ResourceLabel")
            <*> (x .: "PredefinedLoadMetricType")
      )

instance Hashable PredefinedLoadMetricSpecification

instance NFData PredefinedLoadMetricSpecification

instance ToJSON PredefinedLoadMetricSpecification where
  toJSON PredefinedLoadMetricSpecification' {..} =
    object
      ( catMaybes
          [ ("ResourceLabel" .=) <$> _plmsResourceLabel,
            Just
              ( "PredefinedLoadMetricType"
                  .= _plmsPredefinedLoadMetricType
              )
          ]
      )

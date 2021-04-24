{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.PredefinedScalingMetricSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.PredefinedScalingMetricSpecification where

import Network.AWS.AutoScalingPlans.Types.ScalingMetricType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a predefined metric that can be used for dynamic scaling as part of a target tracking scaling policy.
--
--
--
-- /See:/ 'predefinedScalingMetricSpecification' smart constructor.
data PredefinedScalingMetricSpecification = PredefinedScalingMetricSpecification'
  { _psmsResourceLabel ::
      !( Maybe
           Text
       ),
    _psmsPredefinedScalingMetricType ::
      !ScalingMetricType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PredefinedScalingMetricSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psmsResourceLabel' - Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is @ALBRequestCountPerTarget@ and there is a target group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or ECS service. You create the resource label by appending the final portion of the load balancer ARN and the final portion of the target group ARN into a single value, separated by a forward slash (/). The format is app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>, where:     * app/<load-balancer-name>/<load-balancer-id> is the final portion of the load balancer ARN     * targetgroup/<target-group-name>/<target-group-id> is the final portion of the target group ARN. This is an example: app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d. To find the ARN for an Application Load Balancer, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> API operation. To find the ARN for the target group, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html DescribeTargetGroups> API operation.
--
-- * 'psmsPredefinedScalingMetricType' - The metric type. The @ALBRequestCountPerTarget@ metric type applies only to Auto Scaling groups, Spot Fleet requests, and ECS services.
predefinedScalingMetricSpecification ::
  -- | 'psmsPredefinedScalingMetricType'
  ScalingMetricType ->
  PredefinedScalingMetricSpecification
predefinedScalingMetricSpecification
  pPredefinedScalingMetricType_ =
    PredefinedScalingMetricSpecification'
      { _psmsResourceLabel =
          Nothing,
        _psmsPredefinedScalingMetricType =
          pPredefinedScalingMetricType_
      }

-- | Identifies the resource associated with the metric type. You can't specify a resource label unless the metric type is @ALBRequestCountPerTarget@ and there is a target group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or ECS service. You create the resource label by appending the final portion of the load balancer ARN and the final portion of the target group ARN into a single value, separated by a forward slash (/). The format is app/<load-balancer-name>/<load-balancer-id>/targetgroup/<target-group-name>/<target-group-id>, where:     * app/<load-balancer-name>/<load-balancer-id> is the final portion of the load balancer ARN     * targetgroup/<target-group-name>/<target-group-id> is the final portion of the target group ARN. This is an example: app/EC2Co-EcsEl-1TKLTMITMM0EO/f37c06a68c1748aa/targetgroup/EC2Co-Defau-LDNM7Q3ZH1ZN/6d4ea56ca2d6a18d. To find the ARN for an Application Load Balancer, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html DescribeLoadBalancers> API operation. To find the ARN for the target group, use the <https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html DescribeTargetGroups> API operation.
psmsResourceLabel :: Lens' PredefinedScalingMetricSpecification (Maybe Text)
psmsResourceLabel = lens _psmsResourceLabel (\s a -> s {_psmsResourceLabel = a})

-- | The metric type. The @ALBRequestCountPerTarget@ metric type applies only to Auto Scaling groups, Spot Fleet requests, and ECS services.
psmsPredefinedScalingMetricType :: Lens' PredefinedScalingMetricSpecification ScalingMetricType
psmsPredefinedScalingMetricType = lens _psmsPredefinedScalingMetricType (\s a -> s {_psmsPredefinedScalingMetricType = a})

instance
  FromJSON
    PredefinedScalingMetricSpecification
  where
  parseJSON =
    withObject
      "PredefinedScalingMetricSpecification"
      ( \x ->
          PredefinedScalingMetricSpecification'
            <$> (x .:? "ResourceLabel")
            <*> (x .: "PredefinedScalingMetricType")
      )

instance
  Hashable
    PredefinedScalingMetricSpecification

instance NFData PredefinedScalingMetricSpecification

instance ToJSON PredefinedScalingMetricSpecification where
  toJSON PredefinedScalingMetricSpecification' {..} =
    object
      ( catMaybes
          [ ("ResourceLabel" .=) <$> _psmsResourceLabel,
            Just
              ( "PredefinedScalingMetricType"
                  .= _psmsPredefinedScalingMetricType
              )
          ]
      )

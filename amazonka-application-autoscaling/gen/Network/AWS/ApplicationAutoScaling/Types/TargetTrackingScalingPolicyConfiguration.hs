{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration where

import Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.PredefinedMetricSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a target tracking scaling policy configuration to use with Application Auto Scaling.
--
--
--
-- /See:/ 'targetTrackingScalingPolicyConfiguration' smart constructor.
data TargetTrackingScalingPolicyConfiguration = TargetTrackingScalingPolicyConfiguration'
  { _ttspcDisableScaleIn ::
      !( Maybe
           Bool
       ),
    _ttspcPredefinedMetricSpecification ::
      !( Maybe
           PredefinedMetricSpecification
       ),
    _ttspcScaleOutCooldown ::
      !( Maybe
           Int
       ),
    _ttspcCustomizedMetricSpecification ::
      !( Maybe
           CustomizedMetricSpecification
       ),
    _ttspcScaleInCooldown ::
      !( Maybe
           Int
       ),
    _ttspcTargetValue ::
      !Double
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TargetTrackingScalingPolicyConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttspcDisableScaleIn' - Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy won't remove capacity from the scalable target. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable target. The default value is @false@ .
--
-- * 'ttspcPredefinedMetricSpecification' - A predefined metric. You can specify either a predefined metric or a customized metric.
--
-- * 'ttspcScaleOutCooldown' - The amount of time, in seconds, to wait for a previous scale-out activity to take effect. With the /scale-out cooldown period/ , the intention is to continuously (but not excessively) scale out. After Application Auto Scaling successfully scales out using a target tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't increase the desired capacity again unless either a larger scale out is triggered or the cooldown period ends. While the cooldown period is in effect, the capacity added by the initiating scale-out activity is calculated as part of the desired capacity for the next scale-out activity. Application Auto Scaling provides a default value of 300 for the following scalable targets:     * ECS services     * Spot Fleet requests     * EMR clusters     * AppStream 2.0 fleets     * Aurora DB clusters     * Amazon SageMaker endpoint variants     * Custom resources For all other scalable targets, the default value is 0:     * DynamoDB tables     * DynamoDB global secondary indexes     * Amazon Comprehend document classification and entity recognizer endpoints     * Lambda provisioned concurrency     * Amazon Keyspaces tables     * Amazon MSK broker storage
--
-- * 'ttspcCustomizedMetricSpecification' - A customized metric. You can specify either a predefined metric or a customized metric.
--
-- * 'ttspcScaleInCooldown' - The amount of time, in seconds, after a scale-in activity completes before another scale-in activity can start. With the /scale-in cooldown period/ , the intention is to scale in conservatively to protect your application’s availability, so scale-in activities are blocked until the cooldown period has expired. However, if another alarm triggers a scale-out activity during the scale-in cooldown period, Application Auto Scaling scales out the target immediately. In this case, the scale-in cooldown period stops and doesn't complete. Application Auto Scaling provides a default value of 300 for the following scalable targets:     * ECS services     * Spot Fleet requests     * EMR clusters     * AppStream 2.0 fleets     * Aurora DB clusters     * Amazon SageMaker endpoint variants     * Custom resources For all other scalable targets, the default value is 0:     * DynamoDB tables     * DynamoDB global secondary indexes     * Amazon Comprehend document classification and entity recognizer endpoints     * Lambda provisioned concurrency     * Amazon Keyspaces tables     * Amazon MSK broker storage
--
-- * 'ttspcTargetValue' - The target value for the metric. Although this property accepts numbers of type Double, it won't accept values that are either too small or too large. Values must be in the range of -2^360 to 2^360. The value must be a valid number based on the choice of metric. For example, if the metric is CPU utilization, then the target value is a percent value that represents how much of the CPU can be used before scaling out.
targetTrackingScalingPolicyConfiguration ::
  -- | 'ttspcTargetValue'
  Double ->
  TargetTrackingScalingPolicyConfiguration
targetTrackingScalingPolicyConfiguration
  pTargetValue_ =
    TargetTrackingScalingPolicyConfiguration'
      { _ttspcDisableScaleIn =
          Nothing,
        _ttspcPredefinedMetricSpecification =
          Nothing,
        _ttspcScaleOutCooldown = Nothing,
        _ttspcCustomizedMetricSpecification =
          Nothing,
        _ttspcScaleInCooldown = Nothing,
        _ttspcTargetValue = pTargetValue_
      }

-- | Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy won't remove capacity from the scalable target. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable target. The default value is @false@ .
ttspcDisableScaleIn :: Lens' TargetTrackingScalingPolicyConfiguration (Maybe Bool)
ttspcDisableScaleIn = lens _ttspcDisableScaleIn (\s a -> s {_ttspcDisableScaleIn = a})

-- | A predefined metric. You can specify either a predefined metric or a customized metric.
ttspcPredefinedMetricSpecification :: Lens' TargetTrackingScalingPolicyConfiguration (Maybe PredefinedMetricSpecification)
ttspcPredefinedMetricSpecification = lens _ttspcPredefinedMetricSpecification (\s a -> s {_ttspcPredefinedMetricSpecification = a})

-- | The amount of time, in seconds, to wait for a previous scale-out activity to take effect. With the /scale-out cooldown period/ , the intention is to continuously (but not excessively) scale out. After Application Auto Scaling successfully scales out using a target tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't increase the desired capacity again unless either a larger scale out is triggered or the cooldown period ends. While the cooldown period is in effect, the capacity added by the initiating scale-out activity is calculated as part of the desired capacity for the next scale-out activity. Application Auto Scaling provides a default value of 300 for the following scalable targets:     * ECS services     * Spot Fleet requests     * EMR clusters     * AppStream 2.0 fleets     * Aurora DB clusters     * Amazon SageMaker endpoint variants     * Custom resources For all other scalable targets, the default value is 0:     * DynamoDB tables     * DynamoDB global secondary indexes     * Amazon Comprehend document classification and entity recognizer endpoints     * Lambda provisioned concurrency     * Amazon Keyspaces tables     * Amazon MSK broker storage
ttspcScaleOutCooldown :: Lens' TargetTrackingScalingPolicyConfiguration (Maybe Int)
ttspcScaleOutCooldown = lens _ttspcScaleOutCooldown (\s a -> s {_ttspcScaleOutCooldown = a})

-- | A customized metric. You can specify either a predefined metric or a customized metric.
ttspcCustomizedMetricSpecification :: Lens' TargetTrackingScalingPolicyConfiguration (Maybe CustomizedMetricSpecification)
ttspcCustomizedMetricSpecification = lens _ttspcCustomizedMetricSpecification (\s a -> s {_ttspcCustomizedMetricSpecification = a})

-- | The amount of time, in seconds, after a scale-in activity completes before another scale-in activity can start. With the /scale-in cooldown period/ , the intention is to scale in conservatively to protect your application’s availability, so scale-in activities are blocked until the cooldown period has expired. However, if another alarm triggers a scale-out activity during the scale-in cooldown period, Application Auto Scaling scales out the target immediately. In this case, the scale-in cooldown period stops and doesn't complete. Application Auto Scaling provides a default value of 300 for the following scalable targets:     * ECS services     * Spot Fleet requests     * EMR clusters     * AppStream 2.0 fleets     * Aurora DB clusters     * Amazon SageMaker endpoint variants     * Custom resources For all other scalable targets, the default value is 0:     * DynamoDB tables     * DynamoDB global secondary indexes     * Amazon Comprehend document classification and entity recognizer endpoints     * Lambda provisioned concurrency     * Amazon Keyspaces tables     * Amazon MSK broker storage
ttspcScaleInCooldown :: Lens' TargetTrackingScalingPolicyConfiguration (Maybe Int)
ttspcScaleInCooldown = lens _ttspcScaleInCooldown (\s a -> s {_ttspcScaleInCooldown = a})

-- | The target value for the metric. Although this property accepts numbers of type Double, it won't accept values that are either too small or too large. Values must be in the range of -2^360 to 2^360. The value must be a valid number based on the choice of metric. For example, if the metric is CPU utilization, then the target value is a percent value that represents how much of the CPU can be used before scaling out.
ttspcTargetValue :: Lens' TargetTrackingScalingPolicyConfiguration Double
ttspcTargetValue = lens _ttspcTargetValue (\s a -> s {_ttspcTargetValue = a})

instance
  FromJSON
    TargetTrackingScalingPolicyConfiguration
  where
  parseJSON =
    withObject
      "TargetTrackingScalingPolicyConfiguration"
      ( \x ->
          TargetTrackingScalingPolicyConfiguration'
            <$> (x .:? "DisableScaleIn")
            <*> (x .:? "PredefinedMetricSpecification")
            <*> (x .:? "ScaleOutCooldown")
            <*> (x .:? "CustomizedMetricSpecification")
            <*> (x .:? "ScaleInCooldown")
            <*> (x .: "TargetValue")
      )

instance
  Hashable
    TargetTrackingScalingPolicyConfiguration

instance
  NFData
    TargetTrackingScalingPolicyConfiguration

instance
  ToJSON
    TargetTrackingScalingPolicyConfiguration
  where
  toJSON TargetTrackingScalingPolicyConfiguration' {..} =
    object
      ( catMaybes
          [ ("DisableScaleIn" .=) <$> _ttspcDisableScaleIn,
            ("PredefinedMetricSpecification" .=)
              <$> _ttspcPredefinedMetricSpecification,
            ("ScaleOutCooldown" .=) <$> _ttspcScaleOutCooldown,
            ("CustomizedMetricSpecification" .=)
              <$> _ttspcCustomizedMetricSpecification,
            ("ScaleInCooldown" .=) <$> _ttspcScaleInCooldown,
            Just ("TargetValue" .= _ttspcTargetValue)
          ]
      )

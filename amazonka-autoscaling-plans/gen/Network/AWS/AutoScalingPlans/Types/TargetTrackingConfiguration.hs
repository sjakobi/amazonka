{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.TargetTrackingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.TargetTrackingConfiguration where

import Network.AWS.AutoScalingPlans.Types.CustomizedScalingMetricSpecification
import Network.AWS.AutoScalingPlans.Types.PredefinedScalingMetricSpecification
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a target tracking configuration to use with AWS Auto Scaling. Used with 'ScalingInstruction' and 'ScalingPolicy' .
--
--
--
-- /See:/ 'targetTrackingConfiguration' smart constructor.
data TargetTrackingConfiguration = TargetTrackingConfiguration'
  { _ttcDisableScaleIn ::
      !(Maybe Bool),
    _ttcCustomizedScalingMetricSpecification ::
      !( Maybe
           CustomizedScalingMetricSpecification
       ),
    _ttcPredefinedScalingMetricSpecification ::
      !( Maybe
           PredefinedScalingMetricSpecification
       ),
    _ttcEstimatedInstanceWarmup ::
      !(Maybe Int),
    _ttcScaleOutCooldown ::
      !(Maybe Int),
    _ttcScaleInCooldown ::
      !(Maybe Int),
    _ttcTargetValue ::
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

-- | Creates a value of 'TargetTrackingConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttcDisableScaleIn' - Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.  The default value is @false@ .
--
-- * 'ttcCustomizedScalingMetricSpecification' - A customized metric. You can specify either a predefined metric or a customized metric.
--
-- * 'ttcPredefinedScalingMetricSpecification' - A predefined metric. You can specify either a predefined metric or a customized metric.
--
-- * 'ttcEstimatedInstanceWarmup' - The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.
--
-- * 'ttcScaleOutCooldown' - The amount of time, in seconds, to wait for a previous scale-out activity to take effect. This property is not used if the scalable resource is an Auto Scaling group. With the /scale-out cooldown period/ , the intention is to continuously (but not excessively) scale out. After Auto Scaling successfully scales out using a target tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't increase the desired capacity again unless either a larger scale out is triggered or the cooldown period ends.
--
-- * 'ttcScaleInCooldown' - The amount of time, in seconds, after a scale-in activity completes before another scale-in activity can start. This property is not used if the scalable resource is an Auto Scaling group. With the /scale-in cooldown period/ , the intention is to scale in conservatively to protect your application’s availability, so scale-in activities are blocked until the cooldown period has expired. However, if another alarm triggers a scale-out activity during the scale-in cooldown period, Auto Scaling scales out the target immediately. In this case, the scale-in cooldown period stops and doesn't complete.
--
-- * 'ttcTargetValue' - The target value for the metric. Although this property accepts numbers of type Double, it won't accept values that are either too small or too large. Values must be in the range of -2^360 to 2^360.
targetTrackingConfiguration ::
  -- | 'ttcTargetValue'
  Double ->
  TargetTrackingConfiguration
targetTrackingConfiguration pTargetValue_ =
  TargetTrackingConfiguration'
    { _ttcDisableScaleIn =
        Nothing,
      _ttcCustomizedScalingMetricSpecification =
        Nothing,
      _ttcPredefinedScalingMetricSpecification =
        Nothing,
      _ttcEstimatedInstanceWarmup = Nothing,
      _ttcScaleOutCooldown = Nothing,
      _ttcScaleInCooldown = Nothing,
      _ttcTargetValue = pTargetValue_
    }

-- | Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.  The default value is @false@ .
ttcDisableScaleIn :: Lens' TargetTrackingConfiguration (Maybe Bool)
ttcDisableScaleIn = lens _ttcDisableScaleIn (\s a -> s {_ttcDisableScaleIn = a})

-- | A customized metric. You can specify either a predefined metric or a customized metric.
ttcCustomizedScalingMetricSpecification :: Lens' TargetTrackingConfiguration (Maybe CustomizedScalingMetricSpecification)
ttcCustomizedScalingMetricSpecification = lens _ttcCustomizedScalingMetricSpecification (\s a -> s {_ttcCustomizedScalingMetricSpecification = a})

-- | A predefined metric. You can specify either a predefined metric or a customized metric.
ttcPredefinedScalingMetricSpecification :: Lens' TargetTrackingConfiguration (Maybe PredefinedScalingMetricSpecification)
ttcPredefinedScalingMetricSpecification = lens _ttcPredefinedScalingMetricSpecification (\s a -> s {_ttcPredefinedScalingMetricSpecification = a})

-- | The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.
ttcEstimatedInstanceWarmup :: Lens' TargetTrackingConfiguration (Maybe Int)
ttcEstimatedInstanceWarmup = lens _ttcEstimatedInstanceWarmup (\s a -> s {_ttcEstimatedInstanceWarmup = a})

-- | The amount of time, in seconds, to wait for a previous scale-out activity to take effect. This property is not used if the scalable resource is an Auto Scaling group. With the /scale-out cooldown period/ , the intention is to continuously (but not excessively) scale out. After Auto Scaling successfully scales out using a target tracking scaling policy, it starts to calculate the cooldown time. The scaling policy won't increase the desired capacity again unless either a larger scale out is triggered or the cooldown period ends.
ttcScaleOutCooldown :: Lens' TargetTrackingConfiguration (Maybe Int)
ttcScaleOutCooldown = lens _ttcScaleOutCooldown (\s a -> s {_ttcScaleOutCooldown = a})

-- | The amount of time, in seconds, after a scale-in activity completes before another scale-in activity can start. This property is not used if the scalable resource is an Auto Scaling group. With the /scale-in cooldown period/ , the intention is to scale in conservatively to protect your application’s availability, so scale-in activities are blocked until the cooldown period has expired. However, if another alarm triggers a scale-out activity during the scale-in cooldown period, Auto Scaling scales out the target immediately. In this case, the scale-in cooldown period stops and doesn't complete.
ttcScaleInCooldown :: Lens' TargetTrackingConfiguration (Maybe Int)
ttcScaleInCooldown = lens _ttcScaleInCooldown (\s a -> s {_ttcScaleInCooldown = a})

-- | The target value for the metric. Although this property accepts numbers of type Double, it won't accept values that are either too small or too large. Values must be in the range of -2^360 to 2^360.
ttcTargetValue :: Lens' TargetTrackingConfiguration Double
ttcTargetValue = lens _ttcTargetValue (\s a -> s {_ttcTargetValue = a})

instance FromJSON TargetTrackingConfiguration where
  parseJSON =
    withObject
      "TargetTrackingConfiguration"
      ( \x ->
          TargetTrackingConfiguration'
            <$> (x .:? "DisableScaleIn")
            <*> (x .:? "CustomizedScalingMetricSpecification")
            <*> (x .:? "PredefinedScalingMetricSpecification")
            <*> (x .:? "EstimatedInstanceWarmup")
            <*> (x .:? "ScaleOutCooldown")
            <*> (x .:? "ScaleInCooldown")
            <*> (x .: "TargetValue")
      )

instance Hashable TargetTrackingConfiguration

instance NFData TargetTrackingConfiguration

instance ToJSON TargetTrackingConfiguration where
  toJSON TargetTrackingConfiguration' {..} =
    object
      ( catMaybes
          [ ("DisableScaleIn" .=) <$> _ttcDisableScaleIn,
            ("CustomizedScalingMetricSpecification" .=)
              <$> _ttcCustomizedScalingMetricSpecification,
            ("PredefinedScalingMetricSpecification" .=)
              <$> _ttcPredefinedScalingMetricSpecification,
            ("EstimatedInstanceWarmup" .=)
              <$> _ttcEstimatedInstanceWarmup,
            ("ScaleOutCooldown" .=) <$> _ttcScaleOutCooldown,
            ("ScaleInCooldown" .=) <$> _ttcScaleInCooldown,
            Just ("TargetValue" .= _ttcTargetValue)
          ]
      )

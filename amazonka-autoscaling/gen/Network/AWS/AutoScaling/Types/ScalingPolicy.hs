{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.ScalingPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.ScalingPolicy where

import Network.AWS.AutoScaling.Types.Alarm
import Network.AWS.AutoScaling.Types.StepAdjustment
import Network.AWS.AutoScaling.Types.TargetTrackingConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a scaling policy.
--
--
--
-- /See:/ 'scalingPolicy' smart constructor.
data ScalingPolicy = ScalingPolicy'
  { _sPolicyName ::
      !(Maybe Text),
    _sStepAdjustments ::
      !(Maybe [StepAdjustment]),
    _sTargetTrackingConfiguration ::
      !(Maybe TargetTrackingConfiguration),
    _sMetricAggregationType :: !(Maybe Text),
    _sPolicyType :: !(Maybe Text),
    _sCooldown :: !(Maybe Int),
    _sEnabled :: !(Maybe Bool),
    _sScalingAdjustment :: !(Maybe Int),
    _sAdjustmentType :: !(Maybe Text),
    _sMinAdjustmentStep :: !(Maybe Int),
    _sEstimatedInstanceWarmup :: !(Maybe Int),
    _sMinAdjustmentMagnitude :: !(Maybe Int),
    _sAlarms :: !(Maybe [Alarm]),
    _sPolicyARN :: !(Maybe Text),
    _sAutoScalingGroupName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScalingPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPolicyName' - The name of the scaling policy.
--
-- * 'sStepAdjustments' - A set of adjustments that enable you to scale based on the size of the alarm breach.
--
-- * 'sTargetTrackingConfiguration' - A target tracking scaling policy.
--
-- * 'sMetricAggregationType' - The aggregation type for the CloudWatch metrics. The valid values are @Minimum@ , @Maximum@ , and @Average@ .
--
-- * 'sPolicyType' - One of the following policy types:      * @TargetTrackingScaling@      * @StepScaling@      * @SimpleScaling@ (default) For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html Target tracking scaling policies> and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html Step and simple scaling policies> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- * 'sCooldown' - The duration of the policy's cooldown period, in seconds.
--
-- * 'sEnabled' - Indicates whether the policy is enabled (@true@ ) or disabled (@false@ ).
--
-- * 'sScalingAdjustment' - The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.
--
-- * 'sAdjustmentType' - Specifies how the scaling adjustment is interpreted (for example, an absolute number or a percentage). The valid values are @ChangeInCapacity@ , @ExactCapacity@ , and @PercentChangeInCapacity@ .
--
-- * 'sMinAdjustmentStep' - Available for backward compatibility. Use @MinAdjustmentMagnitude@ instead.
--
-- * 'sEstimatedInstanceWarmup' - The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
--
-- * 'sMinAdjustmentMagnitude' - The minimum value to scale by when the adjustment type is @PercentChangeInCapacity@ .
--
-- * 'sAlarms' - The CloudWatch alarms related to the policy.
--
-- * 'sPolicyARN' - The Amazon Resource Name (ARN) of the policy.
--
-- * 'sAutoScalingGroupName' - The name of the Auto Scaling group.
scalingPolicy ::
  ScalingPolicy
scalingPolicy =
  ScalingPolicy'
    { _sPolicyName = Nothing,
      _sStepAdjustments = Nothing,
      _sTargetTrackingConfiguration = Nothing,
      _sMetricAggregationType = Nothing,
      _sPolicyType = Nothing,
      _sCooldown = Nothing,
      _sEnabled = Nothing,
      _sScalingAdjustment = Nothing,
      _sAdjustmentType = Nothing,
      _sMinAdjustmentStep = Nothing,
      _sEstimatedInstanceWarmup = Nothing,
      _sMinAdjustmentMagnitude = Nothing,
      _sAlarms = Nothing,
      _sPolicyARN = Nothing,
      _sAutoScalingGroupName = Nothing
    }

-- | The name of the scaling policy.
sPolicyName :: Lens' ScalingPolicy (Maybe Text)
sPolicyName = lens _sPolicyName (\s a -> s {_sPolicyName = a})

-- | A set of adjustments that enable you to scale based on the size of the alarm breach.
sStepAdjustments :: Lens' ScalingPolicy [StepAdjustment]
sStepAdjustments = lens _sStepAdjustments (\s a -> s {_sStepAdjustments = a}) . _Default . _Coerce

-- | A target tracking scaling policy.
sTargetTrackingConfiguration :: Lens' ScalingPolicy (Maybe TargetTrackingConfiguration)
sTargetTrackingConfiguration = lens _sTargetTrackingConfiguration (\s a -> s {_sTargetTrackingConfiguration = a})

-- | The aggregation type for the CloudWatch metrics. The valid values are @Minimum@ , @Maximum@ , and @Average@ .
sMetricAggregationType :: Lens' ScalingPolicy (Maybe Text)
sMetricAggregationType = lens _sMetricAggregationType (\s a -> s {_sMetricAggregationType = a})

-- | One of the following policy types:      * @TargetTrackingScaling@      * @StepScaling@      * @SimpleScaling@ (default) For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html Target tracking scaling policies> and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html Step and simple scaling policies> in the /Amazon EC2 Auto Scaling User Guide/ .
sPolicyType :: Lens' ScalingPolicy (Maybe Text)
sPolicyType = lens _sPolicyType (\s a -> s {_sPolicyType = a})

-- | The duration of the policy's cooldown period, in seconds.
sCooldown :: Lens' ScalingPolicy (Maybe Int)
sCooldown = lens _sCooldown (\s a -> s {_sCooldown = a})

-- | Indicates whether the policy is enabled (@true@ ) or disabled (@false@ ).
sEnabled :: Lens' ScalingPolicy (Maybe Bool)
sEnabled = lens _sEnabled (\s a -> s {_sEnabled = a})

-- | The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.
sScalingAdjustment :: Lens' ScalingPolicy (Maybe Int)
sScalingAdjustment = lens _sScalingAdjustment (\s a -> s {_sScalingAdjustment = a})

-- | Specifies how the scaling adjustment is interpreted (for example, an absolute number or a percentage). The valid values are @ChangeInCapacity@ , @ExactCapacity@ , and @PercentChangeInCapacity@ .
sAdjustmentType :: Lens' ScalingPolicy (Maybe Text)
sAdjustmentType = lens _sAdjustmentType (\s a -> s {_sAdjustmentType = a})

-- | Available for backward compatibility. Use @MinAdjustmentMagnitude@ instead.
sMinAdjustmentStep :: Lens' ScalingPolicy (Maybe Int)
sMinAdjustmentStep = lens _sMinAdjustmentStep (\s a -> s {_sMinAdjustmentStep = a})

-- | The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
sEstimatedInstanceWarmup :: Lens' ScalingPolicy (Maybe Int)
sEstimatedInstanceWarmup = lens _sEstimatedInstanceWarmup (\s a -> s {_sEstimatedInstanceWarmup = a})

-- | The minimum value to scale by when the adjustment type is @PercentChangeInCapacity@ .
sMinAdjustmentMagnitude :: Lens' ScalingPolicy (Maybe Int)
sMinAdjustmentMagnitude = lens _sMinAdjustmentMagnitude (\s a -> s {_sMinAdjustmentMagnitude = a})

-- | The CloudWatch alarms related to the policy.
sAlarms :: Lens' ScalingPolicy [Alarm]
sAlarms = lens _sAlarms (\s a -> s {_sAlarms = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the policy.
sPolicyARN :: Lens' ScalingPolicy (Maybe Text)
sPolicyARN = lens _sPolicyARN (\s a -> s {_sPolicyARN = a})

-- | The name of the Auto Scaling group.
sAutoScalingGroupName :: Lens' ScalingPolicy (Maybe Text)
sAutoScalingGroupName = lens _sAutoScalingGroupName (\s a -> s {_sAutoScalingGroupName = a})

instance FromXML ScalingPolicy where
  parseXML x =
    ScalingPolicy'
      <$> (x .@? "PolicyName")
      <*> ( x .@? "StepAdjustments" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "TargetTrackingConfiguration")
      <*> (x .@? "MetricAggregationType")
      <*> (x .@? "PolicyType")
      <*> (x .@? "Cooldown")
      <*> (x .@? "Enabled")
      <*> (x .@? "ScalingAdjustment")
      <*> (x .@? "AdjustmentType")
      <*> (x .@? "MinAdjustmentStep")
      <*> (x .@? "EstimatedInstanceWarmup")
      <*> (x .@? "MinAdjustmentMagnitude")
      <*> ( x .@? "Alarms" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PolicyARN")
      <*> (x .@? "AutoScalingGroupName")

instance Hashable ScalingPolicy

instance NFData ScalingPolicy

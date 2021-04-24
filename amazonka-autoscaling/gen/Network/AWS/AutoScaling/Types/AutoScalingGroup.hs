{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.AutoScalingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.AutoScalingGroup where

import Network.AWS.AutoScaling.Types.EnabledMetric
import Network.AWS.AutoScaling.Types.Instance
import Network.AWS.AutoScaling.Types.LaunchTemplateSpecification
import Network.AWS.AutoScaling.Types.MixedInstancesPolicy
import Network.AWS.AutoScaling.Types.SuspendedProcess
import Network.AWS.AutoScaling.Types.TagDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an Auto Scaling group.
--
--
--
-- /See:/ 'autoScalingGroup' smart constructor.
data AutoScalingGroup = AutoScalingGroup'
  { _asgStatus ::
      !(Maybe Text),
    _asgPlacementGroup :: !(Maybe Text),
    _asgSuspendedProcesses ::
      !(Maybe [SuspendedProcess]),
    _asgMaxInstanceLifetime ::
      !(Maybe Int),
    _asgAutoScalingGroupARN ::
      !(Maybe Text),
    _asgLaunchTemplate ::
      !(Maybe LaunchTemplateSpecification),
    _asgInstances :: !(Maybe [Instance]),
    _asgLaunchConfigurationName ::
      !(Maybe Text),
    _asgMixedInstancesPolicy ::
      !(Maybe MixedInstancesPolicy),
    _asgTags :: !(Maybe [TagDescription]),
    _asgLoadBalancerNames ::
      !(Maybe [Text]),
    _asgVPCZoneIdentifier ::
      !(Maybe Text),
    _asgTargetGroupARNs ::
      !(Maybe [Text]),
    _asgCapacityRebalance ::
      !(Maybe Bool),
    _asgNewInstancesProtectedFromScaleIn ::
      !(Maybe Bool),
    _asgServiceLinkedRoleARN ::
      !(Maybe Text),
    _asgHealthCheckGracePeriod ::
      !(Maybe Int),
    _asgEnabledMetrics ::
      !(Maybe [EnabledMetric]),
    _asgTerminationPolicies ::
      !(Maybe [Text]),
    _asgAutoScalingGroupName :: !Text,
    _asgMinSize :: !Int,
    _asgMaxSize :: !Int,
    _asgDesiredCapacity :: !Int,
    _asgDefaultCooldown :: !Int,
    _asgAvailabilityZones :: ![Text],
    _asgHealthCheckType :: !Text,
    _asgCreatedTime :: !ISO8601
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoScalingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asgStatus' - The current state of the group when the 'DeleteAutoScalingGroup' operation is in progress.
--
-- * 'asgPlacementGroup' - The name of the placement group into which to launch your instances, if any.
--
-- * 'asgSuspendedProcesses' - The suspended processes associated with the group.
--
-- * 'asgMaxInstanceLifetime' - The maximum amount of time, in seconds, that an instance can be in service. Valid Range: Minimum value of 0.
--
-- * 'asgAutoScalingGroupARN' - The Amazon Resource Name (ARN) of the Auto Scaling group.
--
-- * 'asgLaunchTemplate' - The launch template for the group.
--
-- * 'asgInstances' - The EC2 instances associated with the group.
--
-- * 'asgLaunchConfigurationName' - The name of the associated launch configuration.
--
-- * 'asgMixedInstancesPolicy' - The mixed instances policy for the group.
--
-- * 'asgTags' - The tags for the group.
--
-- * 'asgLoadBalancerNames' - One or more load balancers associated with the group.
--
-- * 'asgVPCZoneIdentifier' - One or more subnet IDs, if applicable, separated by commas.
--
-- * 'asgTargetGroupARNs' - The Amazon Resource Names (ARN) of the target groups for your load balancer.
--
-- * 'asgCapacityRebalance' - Indicates whether Capacity Rebalancing is enabled.
--
-- * 'asgNewInstancesProtectedFromScaleIn' - Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
--
-- * 'asgServiceLinkedRoleARN' - The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
--
-- * 'asgHealthCheckGracePeriod' - The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
--
-- * 'asgEnabledMetrics' - The metrics enabled for the group.
--
-- * 'asgTerminationPolicies' - The termination policies for the group.
--
-- * 'asgAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'asgMinSize' - The minimum size of the group.
--
-- * 'asgMaxSize' - The maximum size of the group.
--
-- * 'asgDesiredCapacity' - The desired size of the group.
--
-- * 'asgDefaultCooldown' - The duration of the default cooldown period, in seconds.
--
-- * 'asgAvailabilityZones' - One or more Availability Zones for the group.
--
-- * 'asgHealthCheckType' - The service to use for the health checks. The valid values are @EC2@ and @ELB@ . If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.
--
-- * 'asgCreatedTime' - The date and time the group was created.
autoScalingGroup ::
  -- | 'asgAutoScalingGroupName'
  Text ->
  -- | 'asgMinSize'
  Int ->
  -- | 'asgMaxSize'
  Int ->
  -- | 'asgDesiredCapacity'
  Int ->
  -- | 'asgDefaultCooldown'
  Int ->
  -- | 'asgHealthCheckType'
  Text ->
  -- | 'asgCreatedTime'
  UTCTime ->
  AutoScalingGroup
autoScalingGroup
  pAutoScalingGroupName_
  pMinSize_
  pMaxSize_
  pDesiredCapacity_
  pDefaultCooldown_
  pHealthCheckType_
  pCreatedTime_ =
    AutoScalingGroup'
      { _asgStatus = Nothing,
        _asgPlacementGroup = Nothing,
        _asgSuspendedProcesses = Nothing,
        _asgMaxInstanceLifetime = Nothing,
        _asgAutoScalingGroupARN = Nothing,
        _asgLaunchTemplate = Nothing,
        _asgInstances = Nothing,
        _asgLaunchConfigurationName = Nothing,
        _asgMixedInstancesPolicy = Nothing,
        _asgTags = Nothing,
        _asgLoadBalancerNames = Nothing,
        _asgVPCZoneIdentifier = Nothing,
        _asgTargetGroupARNs = Nothing,
        _asgCapacityRebalance = Nothing,
        _asgNewInstancesProtectedFromScaleIn = Nothing,
        _asgServiceLinkedRoleARN = Nothing,
        _asgHealthCheckGracePeriod = Nothing,
        _asgEnabledMetrics = Nothing,
        _asgTerminationPolicies = Nothing,
        _asgAutoScalingGroupName = pAutoScalingGroupName_,
        _asgMinSize = pMinSize_,
        _asgMaxSize = pMaxSize_,
        _asgDesiredCapacity = pDesiredCapacity_,
        _asgDefaultCooldown = pDefaultCooldown_,
        _asgAvailabilityZones = mempty,
        _asgHealthCheckType = pHealthCheckType_,
        _asgCreatedTime = _Time # pCreatedTime_
      }

-- | The current state of the group when the 'DeleteAutoScalingGroup' operation is in progress.
asgStatus :: Lens' AutoScalingGroup (Maybe Text)
asgStatus = lens _asgStatus (\s a -> s {_asgStatus = a})

-- | The name of the placement group into which to launch your instances, if any.
asgPlacementGroup :: Lens' AutoScalingGroup (Maybe Text)
asgPlacementGroup = lens _asgPlacementGroup (\s a -> s {_asgPlacementGroup = a})

-- | The suspended processes associated with the group.
asgSuspendedProcesses :: Lens' AutoScalingGroup [SuspendedProcess]
asgSuspendedProcesses = lens _asgSuspendedProcesses (\s a -> s {_asgSuspendedProcesses = a}) . _Default . _Coerce

-- | The maximum amount of time, in seconds, that an instance can be in service. Valid Range: Minimum value of 0.
asgMaxInstanceLifetime :: Lens' AutoScalingGroup (Maybe Int)
asgMaxInstanceLifetime = lens _asgMaxInstanceLifetime (\s a -> s {_asgMaxInstanceLifetime = a})

-- | The Amazon Resource Name (ARN) of the Auto Scaling group.
asgAutoScalingGroupARN :: Lens' AutoScalingGroup (Maybe Text)
asgAutoScalingGroupARN = lens _asgAutoScalingGroupARN (\s a -> s {_asgAutoScalingGroupARN = a})

-- | The launch template for the group.
asgLaunchTemplate :: Lens' AutoScalingGroup (Maybe LaunchTemplateSpecification)
asgLaunchTemplate = lens _asgLaunchTemplate (\s a -> s {_asgLaunchTemplate = a})

-- | The EC2 instances associated with the group.
asgInstances :: Lens' AutoScalingGroup [Instance]
asgInstances = lens _asgInstances (\s a -> s {_asgInstances = a}) . _Default . _Coerce

-- | The name of the associated launch configuration.
asgLaunchConfigurationName :: Lens' AutoScalingGroup (Maybe Text)
asgLaunchConfigurationName = lens _asgLaunchConfigurationName (\s a -> s {_asgLaunchConfigurationName = a})

-- | The mixed instances policy for the group.
asgMixedInstancesPolicy :: Lens' AutoScalingGroup (Maybe MixedInstancesPolicy)
asgMixedInstancesPolicy = lens _asgMixedInstancesPolicy (\s a -> s {_asgMixedInstancesPolicy = a})

-- | The tags for the group.
asgTags :: Lens' AutoScalingGroup [TagDescription]
asgTags = lens _asgTags (\s a -> s {_asgTags = a}) . _Default . _Coerce

-- | One or more load balancers associated with the group.
asgLoadBalancerNames :: Lens' AutoScalingGroup [Text]
asgLoadBalancerNames = lens _asgLoadBalancerNames (\s a -> s {_asgLoadBalancerNames = a}) . _Default . _Coerce

-- | One or more subnet IDs, if applicable, separated by commas.
asgVPCZoneIdentifier :: Lens' AutoScalingGroup (Maybe Text)
asgVPCZoneIdentifier = lens _asgVPCZoneIdentifier (\s a -> s {_asgVPCZoneIdentifier = a})

-- | The Amazon Resource Names (ARN) of the target groups for your load balancer.
asgTargetGroupARNs :: Lens' AutoScalingGroup [Text]
asgTargetGroupARNs = lens _asgTargetGroupARNs (\s a -> s {_asgTargetGroupARNs = a}) . _Default . _Coerce

-- | Indicates whether Capacity Rebalancing is enabled.
asgCapacityRebalance :: Lens' AutoScalingGroup (Maybe Bool)
asgCapacityRebalance = lens _asgCapacityRebalance (\s a -> s {_asgCapacityRebalance = a})

-- | Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
asgNewInstancesProtectedFromScaleIn :: Lens' AutoScalingGroup (Maybe Bool)
asgNewInstancesProtectedFromScaleIn = lens _asgNewInstancesProtectedFromScaleIn (\s a -> s {_asgNewInstancesProtectedFromScaleIn = a})

-- | The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
asgServiceLinkedRoleARN :: Lens' AutoScalingGroup (Maybe Text)
asgServiceLinkedRoleARN = lens _asgServiceLinkedRoleARN (\s a -> s {_asgServiceLinkedRoleARN = a})

-- | The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
asgHealthCheckGracePeriod :: Lens' AutoScalingGroup (Maybe Int)
asgHealthCheckGracePeriod = lens _asgHealthCheckGracePeriod (\s a -> s {_asgHealthCheckGracePeriod = a})

-- | The metrics enabled for the group.
asgEnabledMetrics :: Lens' AutoScalingGroup [EnabledMetric]
asgEnabledMetrics = lens _asgEnabledMetrics (\s a -> s {_asgEnabledMetrics = a}) . _Default . _Coerce

-- | The termination policies for the group.
asgTerminationPolicies :: Lens' AutoScalingGroup [Text]
asgTerminationPolicies = lens _asgTerminationPolicies (\s a -> s {_asgTerminationPolicies = a}) . _Default . _Coerce

-- | The name of the Auto Scaling group.
asgAutoScalingGroupName :: Lens' AutoScalingGroup Text
asgAutoScalingGroupName = lens _asgAutoScalingGroupName (\s a -> s {_asgAutoScalingGroupName = a})

-- | The minimum size of the group.
asgMinSize :: Lens' AutoScalingGroup Int
asgMinSize = lens _asgMinSize (\s a -> s {_asgMinSize = a})

-- | The maximum size of the group.
asgMaxSize :: Lens' AutoScalingGroup Int
asgMaxSize = lens _asgMaxSize (\s a -> s {_asgMaxSize = a})

-- | The desired size of the group.
asgDesiredCapacity :: Lens' AutoScalingGroup Int
asgDesiredCapacity = lens _asgDesiredCapacity (\s a -> s {_asgDesiredCapacity = a})

-- | The duration of the default cooldown period, in seconds.
asgDefaultCooldown :: Lens' AutoScalingGroup Int
asgDefaultCooldown = lens _asgDefaultCooldown (\s a -> s {_asgDefaultCooldown = a})

-- | One or more Availability Zones for the group.
asgAvailabilityZones :: Lens' AutoScalingGroup [Text]
asgAvailabilityZones = lens _asgAvailabilityZones (\s a -> s {_asgAvailabilityZones = a}) . _Coerce

-- | The service to use for the health checks. The valid values are @EC2@ and @ELB@ . If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.
asgHealthCheckType :: Lens' AutoScalingGroup Text
asgHealthCheckType = lens _asgHealthCheckType (\s a -> s {_asgHealthCheckType = a})

-- | The date and time the group was created.
asgCreatedTime :: Lens' AutoScalingGroup UTCTime
asgCreatedTime = lens _asgCreatedTime (\s a -> s {_asgCreatedTime = a}) . _Time

instance FromXML AutoScalingGroup where
  parseXML x =
    AutoScalingGroup'
      <$> (x .@? "Status")
      <*> (x .@? "PlacementGroup")
      <*> ( x .@? "SuspendedProcesses" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "MaxInstanceLifetime")
      <*> (x .@? "AutoScalingGroupARN")
      <*> (x .@? "LaunchTemplate")
      <*> ( x .@? "Instances" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "LaunchConfigurationName")
      <*> (x .@? "MixedInstancesPolicy")
      <*> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "LoadBalancerNames" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "VPCZoneIdentifier")
      <*> ( x .@? "TargetGroupARNs" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "CapacityRebalance")
      <*> (x .@? "NewInstancesProtectedFromScaleIn")
      <*> (x .@? "ServiceLinkedRoleARN")
      <*> (x .@? "HealthCheckGracePeriod")
      <*> ( x .@? "EnabledMetrics" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "TerminationPolicies" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@ "AutoScalingGroupName")
      <*> (x .@ "MinSize")
      <*> (x .@ "MaxSize")
      <*> (x .@ "DesiredCapacity")
      <*> (x .@ "DefaultCooldown")
      <*> ( x .@? "AvailabilityZones" .!@ mempty
              >>= parseXMLList "member"
          )
      <*> (x .@ "HealthCheckType")
      <*> (x .@ "CreatedTime")

instance Hashable AutoScalingGroup

instance NFData AutoScalingGroup

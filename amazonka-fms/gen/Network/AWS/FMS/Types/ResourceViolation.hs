{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.ResourceViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.ResourceViolation where

import Network.AWS.FMS.Types.AWSEC2InstanceViolation
import Network.AWS.FMS.Types.AWSEC2NetworkInterfaceViolation
import Network.AWS.FMS.Types.AWSVPCSecurityGroupViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingExpectedRTViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingFirewallViolation
import Network.AWS.FMS.Types.NetworkFirewallMissingSubnetViolation
import Network.AWS.FMS.Types.NetworkFirewallPolicyModifiedViolation
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Violation detail based on resource type.
--
--
--
-- /See:/ 'resourceViolation' smart constructor.
data ResourceViolation = ResourceViolation'
  { _rvNetworkFirewallMissingSubnetViolation ::
      !( Maybe
           NetworkFirewallMissingSubnetViolation
       ),
    _rvAWSEC2NetworkInterfaceViolation ::
      !( Maybe
           AWSEC2NetworkInterfaceViolation
       ),
    _rvNetworkFirewallMissingExpectedRTViolation ::
      !( Maybe
           NetworkFirewallMissingExpectedRTViolation
       ),
    _rvAWSEC2InstanceViolation ::
      !(Maybe AWSEC2InstanceViolation),
    _rvNetworkFirewallMissingFirewallViolation ::
      !( Maybe
           NetworkFirewallMissingFirewallViolation
       ),
    _rvNetworkFirewallPolicyModifiedViolation ::
      !( Maybe
           NetworkFirewallPolicyModifiedViolation
       ),
    _rvAWSVPCSecurityGroupViolation ::
      !( Maybe
           AWSVPCSecurityGroupViolation
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rvNetworkFirewallMissingSubnetViolation' - Violation detail for an Network Firewall policy that indicates that an Availability Zone is missing the expected Firewall Manager managed subnet.
--
-- * 'rvAWSEC2NetworkInterfaceViolation' - Violation details for network interface.
--
-- * 'rvNetworkFirewallMissingExpectedRTViolation' - Violation detail for an Network Firewall policy that indicates that a subnet is not associated with the expected Firewall Manager managed route table.
--
-- * 'rvAWSEC2InstanceViolation' - Violation details for an EC2 instance.
--
-- * 'rvNetworkFirewallMissingFirewallViolation' - Violation detail for an Network Firewall policy that indicates that a subnet has no Firewall Manager managed firewall in its VPC.
--
-- * 'rvNetworkFirewallPolicyModifiedViolation' - Violation detail for an Network Firewall policy that indicates that a firewall policy in an individual account has been modified in a way that makes it noncompliant. For example, the individual account owner might have deleted a rule group, changed the priority of a stateless rule group, or changed a policy default action.
--
-- * 'rvAWSVPCSecurityGroupViolation' - Violation details for security groups.
resourceViolation ::
  ResourceViolation
resourceViolation =
  ResourceViolation'
    { _rvNetworkFirewallMissingSubnetViolation =
        Nothing,
      _rvAWSEC2NetworkInterfaceViolation = Nothing,
      _rvNetworkFirewallMissingExpectedRTViolation =
        Nothing,
      _rvAWSEC2InstanceViolation = Nothing,
      _rvNetworkFirewallMissingFirewallViolation = Nothing,
      _rvNetworkFirewallPolicyModifiedViolation = Nothing,
      _rvAWSVPCSecurityGroupViolation = Nothing
    }

-- | Violation detail for an Network Firewall policy that indicates that an Availability Zone is missing the expected Firewall Manager managed subnet.
rvNetworkFirewallMissingSubnetViolation :: Lens' ResourceViolation (Maybe NetworkFirewallMissingSubnetViolation)
rvNetworkFirewallMissingSubnetViolation = lens _rvNetworkFirewallMissingSubnetViolation (\s a -> s {_rvNetworkFirewallMissingSubnetViolation = a})

-- | Violation details for network interface.
rvAWSEC2NetworkInterfaceViolation :: Lens' ResourceViolation (Maybe AWSEC2NetworkInterfaceViolation)
rvAWSEC2NetworkInterfaceViolation = lens _rvAWSEC2NetworkInterfaceViolation (\s a -> s {_rvAWSEC2NetworkInterfaceViolation = a})

-- | Violation detail for an Network Firewall policy that indicates that a subnet is not associated with the expected Firewall Manager managed route table.
rvNetworkFirewallMissingExpectedRTViolation :: Lens' ResourceViolation (Maybe NetworkFirewallMissingExpectedRTViolation)
rvNetworkFirewallMissingExpectedRTViolation = lens _rvNetworkFirewallMissingExpectedRTViolation (\s a -> s {_rvNetworkFirewallMissingExpectedRTViolation = a})

-- | Violation details for an EC2 instance.
rvAWSEC2InstanceViolation :: Lens' ResourceViolation (Maybe AWSEC2InstanceViolation)
rvAWSEC2InstanceViolation = lens _rvAWSEC2InstanceViolation (\s a -> s {_rvAWSEC2InstanceViolation = a})

-- | Violation detail for an Network Firewall policy that indicates that a subnet has no Firewall Manager managed firewall in its VPC.
rvNetworkFirewallMissingFirewallViolation :: Lens' ResourceViolation (Maybe NetworkFirewallMissingFirewallViolation)
rvNetworkFirewallMissingFirewallViolation = lens _rvNetworkFirewallMissingFirewallViolation (\s a -> s {_rvNetworkFirewallMissingFirewallViolation = a})

-- | Violation detail for an Network Firewall policy that indicates that a firewall policy in an individual account has been modified in a way that makes it noncompliant. For example, the individual account owner might have deleted a rule group, changed the priority of a stateless rule group, or changed a policy default action.
rvNetworkFirewallPolicyModifiedViolation :: Lens' ResourceViolation (Maybe NetworkFirewallPolicyModifiedViolation)
rvNetworkFirewallPolicyModifiedViolation = lens _rvNetworkFirewallPolicyModifiedViolation (\s a -> s {_rvNetworkFirewallPolicyModifiedViolation = a})

-- | Violation details for security groups.
rvAWSVPCSecurityGroupViolation :: Lens' ResourceViolation (Maybe AWSVPCSecurityGroupViolation)
rvAWSVPCSecurityGroupViolation = lens _rvAWSVPCSecurityGroupViolation (\s a -> s {_rvAWSVPCSecurityGroupViolation = a})

instance FromJSON ResourceViolation where
  parseJSON =
    withObject
      "ResourceViolation"
      ( \x ->
          ResourceViolation'
            <$> (x .:? "NetworkFirewallMissingSubnetViolation")
            <*> (x .:? "AwsEc2NetworkInterfaceViolation")
            <*> (x .:? "NetworkFirewallMissingExpectedRTViolation")
            <*> (x .:? "AwsEc2InstanceViolation")
            <*> (x .:? "NetworkFirewallMissingFirewallViolation")
            <*> (x .:? "NetworkFirewallPolicyModifiedViolation")
            <*> (x .:? "AwsVPCSecurityGroupViolation")
      )

instance Hashable ResourceViolation

instance NFData ResourceViolation

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.NetworkFirewallMissingFirewallViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.NetworkFirewallMissingFirewallViolation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Violation details for AWS Network Firewall for a subnet that doesn't have a Firewall Manager managed firewall in its VPC.
--
--
--
-- /See:/ 'networkFirewallMissingFirewallViolation' smart constructor.
data NetworkFirewallMissingFirewallViolation = NetworkFirewallMissingFirewallViolation'
  { _nfmfvTargetViolationReason ::
      !( Maybe
           Text
       ),
    _nfmfvViolationTarget ::
      !( Maybe
           Text
       ),
    _nfmfvAvailabilityZone ::
      !( Maybe
           Text
       ),
    _nfmfvVPC ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NetworkFirewallMissingFirewallViolation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nfmfvTargetViolationReason' - The reason the resource has this violation, if one is available.
--
-- * 'nfmfvViolationTarget' - The ID of the AWS Network Firewall or VPC resource that's in violation.
--
-- * 'nfmfvAvailabilityZone' - The Availability Zone of a violating subnet.
--
-- * 'nfmfvVPC' - The resource ID of the VPC associated with a violating subnet.
networkFirewallMissingFirewallViolation ::
  NetworkFirewallMissingFirewallViolation
networkFirewallMissingFirewallViolation =
  NetworkFirewallMissingFirewallViolation'
    { _nfmfvTargetViolationReason =
        Nothing,
      _nfmfvViolationTarget = Nothing,
      _nfmfvAvailabilityZone = Nothing,
      _nfmfvVPC = Nothing
    }

-- | The reason the resource has this violation, if one is available.
nfmfvTargetViolationReason :: Lens' NetworkFirewallMissingFirewallViolation (Maybe Text)
nfmfvTargetViolationReason = lens _nfmfvTargetViolationReason (\s a -> s {_nfmfvTargetViolationReason = a})

-- | The ID of the AWS Network Firewall or VPC resource that's in violation.
nfmfvViolationTarget :: Lens' NetworkFirewallMissingFirewallViolation (Maybe Text)
nfmfvViolationTarget = lens _nfmfvViolationTarget (\s a -> s {_nfmfvViolationTarget = a})

-- | The Availability Zone of a violating subnet.
nfmfvAvailabilityZone :: Lens' NetworkFirewallMissingFirewallViolation (Maybe Text)
nfmfvAvailabilityZone = lens _nfmfvAvailabilityZone (\s a -> s {_nfmfvAvailabilityZone = a})

-- | The resource ID of the VPC associated with a violating subnet.
nfmfvVPC :: Lens' NetworkFirewallMissingFirewallViolation (Maybe Text)
nfmfvVPC = lens _nfmfvVPC (\s a -> s {_nfmfvVPC = a})

instance
  FromJSON
    NetworkFirewallMissingFirewallViolation
  where
  parseJSON =
    withObject
      "NetworkFirewallMissingFirewallViolation"
      ( \x ->
          NetworkFirewallMissingFirewallViolation'
            <$> (x .:? "TargetViolationReason")
            <*> (x .:? "ViolationTarget")
            <*> (x .:? "AvailabilityZone")
            <*> (x .:? "VPC")
      )

instance
  Hashable
    NetworkFirewallMissingFirewallViolation

instance
  NFData
    NetworkFirewallMissingFirewallViolation

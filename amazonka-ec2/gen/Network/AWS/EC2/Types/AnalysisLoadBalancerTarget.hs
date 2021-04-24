{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisLoadBalancerTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisLoadBalancerTarget where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AnalysisComponent
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a load balancer target.
--
--
--
-- /See:/ 'analysisLoadBalancerTarget' smart constructor.
data AnalysisLoadBalancerTarget = AnalysisLoadBalancerTarget'
  { _albtAddress ::
      !(Maybe Text),
    _albtAvailabilityZone ::
      !(Maybe Text),
    _albtInstance ::
      !( Maybe
           AnalysisComponent
       ),
    _albtPort ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AnalysisLoadBalancerTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'albtAddress' - The IP address.
--
-- * 'albtAvailabilityZone' - The Availability Zone.
--
-- * 'albtInstance' - Information about the instance.
--
-- * 'albtPort' - The port on which the target is listening.
analysisLoadBalancerTarget ::
  AnalysisLoadBalancerTarget
analysisLoadBalancerTarget =
  AnalysisLoadBalancerTarget'
    { _albtAddress = Nothing,
      _albtAvailabilityZone = Nothing,
      _albtInstance = Nothing,
      _albtPort = Nothing
    }

-- | The IP address.
albtAddress :: Lens' AnalysisLoadBalancerTarget (Maybe Text)
albtAddress = lens _albtAddress (\s a -> s {_albtAddress = a})

-- | The Availability Zone.
albtAvailabilityZone :: Lens' AnalysisLoadBalancerTarget (Maybe Text)
albtAvailabilityZone = lens _albtAvailabilityZone (\s a -> s {_albtAvailabilityZone = a})

-- | Information about the instance.
albtInstance :: Lens' AnalysisLoadBalancerTarget (Maybe AnalysisComponent)
albtInstance = lens _albtInstance (\s a -> s {_albtInstance = a})

-- | The port on which the target is listening.
albtPort :: Lens' AnalysisLoadBalancerTarget (Maybe Natural)
albtPort = lens _albtPort (\s a -> s {_albtPort = a}) . mapping _Nat

instance FromXML AnalysisLoadBalancerTarget where
  parseXML x =
    AnalysisLoadBalancerTarget'
      <$> (x .@? "address")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "instance")
      <*> (x .@? "port")

instance Hashable AnalysisLoadBalancerTarget

instance NFData AnalysisLoadBalancerTarget

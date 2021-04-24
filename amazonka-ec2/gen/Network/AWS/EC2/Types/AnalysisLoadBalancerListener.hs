{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AnalysisLoadBalancerListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisLoadBalancerListener where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a load balancer listener.
--
--
--
-- /See:/ 'analysisLoadBalancerListener' smart constructor.
data AnalysisLoadBalancerListener = AnalysisLoadBalancerListener'
  { _alblLoadBalancerPort ::
      !(Maybe Nat),
    _alblInstancePort ::
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

-- | Creates a value of 'AnalysisLoadBalancerListener' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alblLoadBalancerPort' - The port on which the load balancer is listening.
--
-- * 'alblInstancePort' - [Classic Load Balancers] The back-end port for the listener.
analysisLoadBalancerListener ::
  AnalysisLoadBalancerListener
analysisLoadBalancerListener =
  AnalysisLoadBalancerListener'
    { _alblLoadBalancerPort =
        Nothing,
      _alblInstancePort = Nothing
    }

-- | The port on which the load balancer is listening.
alblLoadBalancerPort :: Lens' AnalysisLoadBalancerListener (Maybe Natural)
alblLoadBalancerPort = lens _alblLoadBalancerPort (\s a -> s {_alblLoadBalancerPort = a}) . mapping _Nat

-- | [Classic Load Balancers] The back-end port for the listener.
alblInstancePort :: Lens' AnalysisLoadBalancerListener (Maybe Natural)
alblInstancePort = lens _alblInstancePort (\s a -> s {_alblInstancePort = a}) . mapping _Nat

instance FromXML AnalysisLoadBalancerListener where
  parseXML x =
    AnalysisLoadBalancerListener'
      <$> (x .@? "loadBalancerPort") <*> (x .@? "instancePort")

instance Hashable AnalysisLoadBalancerListener

instance NFData AnalysisLoadBalancerListener

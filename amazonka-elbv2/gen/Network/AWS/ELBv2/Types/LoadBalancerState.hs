{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.LoadBalancerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.LoadBalancerState where

import Network.AWS.ELBv2.Types.LoadBalancerStateEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the state of the load balancer.
--
--
--
-- /See:/ 'loadBalancerState' smart constructor.
data LoadBalancerState = LoadBalancerState'
  { _lbsCode ::
      !(Maybe LoadBalancerStateEnum),
    _lbsReason :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoadBalancerState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsCode' - The state code. The initial state of the load balancer is @provisioning@ . After the load balancer is fully set up and ready to route traffic, its state is @active@ . If load balancer is routing traffic but does not have the resources it needs to scale, its state is@active_impaired@ . If the load balancer could not be set up, its state is @failed@ .
--
-- * 'lbsReason' - A description of the state.
loadBalancerState ::
  LoadBalancerState
loadBalancerState =
  LoadBalancerState'
    { _lbsCode = Nothing,
      _lbsReason = Nothing
    }

-- | The state code. The initial state of the load balancer is @provisioning@ . After the load balancer is fully set up and ready to route traffic, its state is @active@ . If load balancer is routing traffic but does not have the resources it needs to scale, its state is@active_impaired@ . If the load balancer could not be set up, its state is @failed@ .
lbsCode :: Lens' LoadBalancerState (Maybe LoadBalancerStateEnum)
lbsCode = lens _lbsCode (\s a -> s {_lbsCode = a})

-- | A description of the state.
lbsReason :: Lens' LoadBalancerState (Maybe Text)
lbsReason = lens _lbsReason (\s a -> s {_lbsReason = a})

instance FromXML LoadBalancerState where
  parseXML x =
    LoadBalancerState'
      <$> (x .@? "Code") <*> (x .@? "Reason")

instance Hashable LoadBalancerState

instance NFData LoadBalancerState

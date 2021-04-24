{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.Limit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.Limit where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an Elastic Load Balancing resource limit for your AWS account.
--
--
--
-- /See:/ 'limit' smart constructor.
data Limit = Limit'
  { _lName :: !(Maybe Text),
    _lMax :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Limit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName' - The name of the limit. The possible values are:     * application-load-balancers     * condition-values-per-alb-rule     * condition-wildcards-per-alb-rule     * gateway-load-balancers     * gateway-load-balancers-per-vpc     * geneve-target-groups     * listeners-per-application-load-balancer     * listeners-per-network-load-balancer     * network-load-balancers     * rules-per-application-load-balancer     * target-groups     * target-groups-per-action-on-application-load-balancer     * target-groups-per-action-on-network-load-balancer     * target-groups-per-application-load-balancer     * targets-per-application-load-balancer     * targets-per-availability-zone-per-gateway-load-balancer     * targets-per-availability-zone-per-network-load-balancer     * targets-per-network-load-balancer
--
-- * 'lMax' - The maximum value of the limit.
limit ::
  Limit
limit = Limit' {_lName = Nothing, _lMax = Nothing}

-- | The name of the limit. The possible values are:     * application-load-balancers     * condition-values-per-alb-rule     * condition-wildcards-per-alb-rule     * gateway-load-balancers     * gateway-load-balancers-per-vpc     * geneve-target-groups     * listeners-per-application-load-balancer     * listeners-per-network-load-balancer     * network-load-balancers     * rules-per-application-load-balancer     * target-groups     * target-groups-per-action-on-application-load-balancer     * target-groups-per-action-on-network-load-balancer     * target-groups-per-application-load-balancer     * targets-per-application-load-balancer     * targets-per-availability-zone-per-gateway-load-balancer     * targets-per-availability-zone-per-network-load-balancer     * targets-per-network-load-balancer
lName :: Lens' Limit (Maybe Text)
lName = lens _lName (\s a -> s {_lName = a})

-- | The maximum value of the limit.
lMax :: Lens' Limit (Maybe Text)
lMax = lens _lMax (\s a -> s {_lMax = a})

instance FromXML Limit where
  parseXML x =
    Limit' <$> (x .@? "Name") <*> (x .@? "Max")

instance Hashable Limit

instance NFData Limit

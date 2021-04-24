{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.LoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.LoadBalancerAttributes where

import Network.AWS.ELB.Internal
import Network.AWS.ELB.Types.AccessLog
import Network.AWS.ELB.Types.AdditionalAttribute
import Network.AWS.ELB.Types.ConnectionDraining
import Network.AWS.ELB.Types.ConnectionSettings
import Network.AWS.ELB.Types.CrossZoneLoadBalancing
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The attributes for a load balancer.
--
--
--
-- /See:/ 'loadBalancerAttributes' smart constructor.
data LoadBalancerAttributes = LoadBalancerAttributes'
  { _lbaConnectionDraining ::
      !( Maybe
           ConnectionDraining
       ),
    _lbaAdditionalAttributes ::
      !( Maybe
           [AdditionalAttribute]
       ),
    _lbaConnectionSettings ::
      !( Maybe
           ConnectionSettings
       ),
    _lbaAccessLog ::
      !(Maybe AccessLog),
    _lbaCrossZoneLoadBalancing ::
      !( Maybe
           CrossZoneLoadBalancing
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

-- | Creates a value of 'LoadBalancerAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbaConnectionDraining' - If enabled, the load balancer allows existing requests to complete before the load balancer shifts traffic away from a deregistered or unhealthy instance. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Configure Connection Draining> in the /Classic Load Balancers Guide/ .
--
-- * 'lbaAdditionalAttributes' - Any additional attributes.
--
-- * 'lbaConnectionSettings' - If enabled, the load balancer allows the connections to remain idle (no data is sent over the connection) for the specified duration. By default, Elastic Load Balancing maintains a 60-second idle connection timeout for both front-end and back-end connections of your load balancer. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Configure Idle Connection Timeout> in the /Classic Load Balancers Guide/ .
--
-- * 'lbaAccessLog' - If enabled, the load balancer captures detailed information of all requests and delivers the information to the Amazon S3 bucket that you specify. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html Enable Access Logs> in the /Classic Load Balancers Guide/ .
--
-- * 'lbaCrossZoneLoadBalancing' - If enabled, the load balancer routes the request traffic evenly across all instances regardless of the Availability Zones. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Configure Cross-Zone Load Balancing> in the /Classic Load Balancers Guide/ .
loadBalancerAttributes ::
  LoadBalancerAttributes
loadBalancerAttributes =
  LoadBalancerAttributes'
    { _lbaConnectionDraining =
        Nothing,
      _lbaAdditionalAttributes = Nothing,
      _lbaConnectionSettings = Nothing,
      _lbaAccessLog = Nothing,
      _lbaCrossZoneLoadBalancing = Nothing
    }

-- | If enabled, the load balancer allows existing requests to complete before the load balancer shifts traffic away from a deregistered or unhealthy instance. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Configure Connection Draining> in the /Classic Load Balancers Guide/ .
lbaConnectionDraining :: Lens' LoadBalancerAttributes (Maybe ConnectionDraining)
lbaConnectionDraining = lens _lbaConnectionDraining (\s a -> s {_lbaConnectionDraining = a})

-- | Any additional attributes.
lbaAdditionalAttributes :: Lens' LoadBalancerAttributes [AdditionalAttribute]
lbaAdditionalAttributes = lens _lbaAdditionalAttributes (\s a -> s {_lbaAdditionalAttributes = a}) . _Default . _Coerce

-- | If enabled, the load balancer allows the connections to remain idle (no data is sent over the connection) for the specified duration. By default, Elastic Load Balancing maintains a 60-second idle connection timeout for both front-end and back-end connections of your load balancer. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Configure Idle Connection Timeout> in the /Classic Load Balancers Guide/ .
lbaConnectionSettings :: Lens' LoadBalancerAttributes (Maybe ConnectionSettings)
lbaConnectionSettings = lens _lbaConnectionSettings (\s a -> s {_lbaConnectionSettings = a})

-- | If enabled, the load balancer captures detailed information of all requests and delivers the information to the Amazon S3 bucket that you specify. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html Enable Access Logs> in the /Classic Load Balancers Guide/ .
lbaAccessLog :: Lens' LoadBalancerAttributes (Maybe AccessLog)
lbaAccessLog = lens _lbaAccessLog (\s a -> s {_lbaAccessLog = a})

-- | If enabled, the load balancer routes the request traffic evenly across all instances regardless of the Availability Zones. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Configure Cross-Zone Load Balancing> in the /Classic Load Balancers Guide/ .
lbaCrossZoneLoadBalancing :: Lens' LoadBalancerAttributes (Maybe CrossZoneLoadBalancing)
lbaCrossZoneLoadBalancing = lens _lbaCrossZoneLoadBalancing (\s a -> s {_lbaCrossZoneLoadBalancing = a})

instance FromXML LoadBalancerAttributes where
  parseXML x =
    LoadBalancerAttributes'
      <$> (x .@? "ConnectionDraining")
      <*> ( x .@? "AdditionalAttributes" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "ConnectionSettings")
      <*> (x .@? "AccessLog")
      <*> (x .@? "CrossZoneLoadBalancing")

instance Hashable LoadBalancerAttributes

instance NFData LoadBalancerAttributes

instance ToQuery LoadBalancerAttributes where
  toQuery LoadBalancerAttributes' {..} =
    mconcat
      [ "ConnectionDraining" =: _lbaConnectionDraining,
        "AdditionalAttributes"
          =: toQuery
            (toQueryList "member" <$> _lbaAdditionalAttributes),
        "ConnectionSettings" =: _lbaConnectionSettings,
        "AccessLog" =: _lbaAccessLog,
        "CrossZoneLoadBalancing"
          =: _lbaCrossZoneLoadBalancing
      ]

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.Listener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.Listener where

import Network.AWS.ELBv2.Types.Action
import Network.AWS.ELBv2.Types.Certificate
import Network.AWS.ELBv2.Types.ProtocolEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a listener.
--
--
--
-- /See:/ 'listener' smart constructor.
data Listener = Listener'
  { _lLoadBalancerARN ::
      !(Maybe Text),
    _lSSLPolicy :: !(Maybe Text),
    _lPort :: !(Maybe Nat),
    _lDefaultActions :: !(Maybe [Action]),
    _lProtocol :: !(Maybe ProtocolEnum),
    _lCertificates :: !(Maybe [Certificate]),
    _lListenerARN :: !(Maybe Text),
    _lAlpnPolicy :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Listener' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'lSSLPolicy' - [HTTPS or TLS listener] The security policy that defines which protocols and ciphers are supported.
--
-- * 'lPort' - The port on which the load balancer is listening.
--
-- * 'lDefaultActions' - The default actions for the listener.
--
-- * 'lProtocol' - The protocol for connections from clients to the load balancer.
--
-- * 'lCertificates' - [HTTPS or TLS listener] The default certificate for the listener.
--
-- * 'lListenerARN' - The Amazon Resource Name (ARN) of the listener.
--
-- * 'lAlpnPolicy' - [TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN) policy.
listener ::
  Listener
listener =
  Listener'
    { _lLoadBalancerARN = Nothing,
      _lSSLPolicy = Nothing,
      _lPort = Nothing,
      _lDefaultActions = Nothing,
      _lProtocol = Nothing,
      _lCertificates = Nothing,
      _lListenerARN = Nothing,
      _lAlpnPolicy = Nothing
    }

-- | The Amazon Resource Name (ARN) of the load balancer.
lLoadBalancerARN :: Lens' Listener (Maybe Text)
lLoadBalancerARN = lens _lLoadBalancerARN (\s a -> s {_lLoadBalancerARN = a})

-- | [HTTPS or TLS listener] The security policy that defines which protocols and ciphers are supported.
lSSLPolicy :: Lens' Listener (Maybe Text)
lSSLPolicy = lens _lSSLPolicy (\s a -> s {_lSSLPolicy = a})

-- | The port on which the load balancer is listening.
lPort :: Lens' Listener (Maybe Natural)
lPort = lens _lPort (\s a -> s {_lPort = a}) . mapping _Nat

-- | The default actions for the listener.
lDefaultActions :: Lens' Listener [Action]
lDefaultActions = lens _lDefaultActions (\s a -> s {_lDefaultActions = a}) . _Default . _Coerce

-- | The protocol for connections from clients to the load balancer.
lProtocol :: Lens' Listener (Maybe ProtocolEnum)
lProtocol = lens _lProtocol (\s a -> s {_lProtocol = a})

-- | [HTTPS or TLS listener] The default certificate for the listener.
lCertificates :: Lens' Listener [Certificate]
lCertificates = lens _lCertificates (\s a -> s {_lCertificates = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the listener.
lListenerARN :: Lens' Listener (Maybe Text)
lListenerARN = lens _lListenerARN (\s a -> s {_lListenerARN = a})

-- | [TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN) policy.
lAlpnPolicy :: Lens' Listener [Text]
lAlpnPolicy = lens _lAlpnPolicy (\s a -> s {_lAlpnPolicy = a}) . _Default . _Coerce

instance FromXML Listener where
  parseXML x =
    Listener'
      <$> (x .@? "LoadBalancerArn")
      <*> (x .@? "SslPolicy")
      <*> (x .@? "Port")
      <*> ( x .@? "DefaultActions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "Protocol")
      <*> ( x .@? "Certificates" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "ListenerArn")
      <*> ( x .@? "AlpnPolicy" .!@ mempty
              >>= may (parseXMLList "member")
          )

instance Hashable Listener

instance NFData Listener

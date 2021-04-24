{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.ModifyListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the specified properties of the specified listener. Any properties that you do not specify remain unchanged.
--
--
-- Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties.
--
-- To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
module Network.AWS.ELBv2.ModifyListener
  ( -- * Creating a Request
    modifyListener,
    ModifyListener,

    -- * Request Lenses
    mlSSLPolicy,
    mlPort,
    mlDefaultActions,
    mlProtocol,
    mlCertificates,
    mlAlpnPolicy,
    mlListenerARN,

    -- * Destructuring the Response
    modifyListenerResponse,
    ModifyListenerResponse,

    -- * Response Lenses
    mlrrsListeners,
    mlrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyListener' smart constructor.
data ModifyListener = ModifyListener'
  { _mlSSLPolicy ::
      !(Maybe Text),
    _mlPort :: !(Maybe Nat),
    _mlDefaultActions :: !(Maybe [Action]),
    _mlProtocol :: !(Maybe ProtocolEnum),
    _mlCertificates :: !(Maybe [Certificate]),
    _mlAlpnPolicy :: !(Maybe [Text]),
    _mlListenerARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyListener' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlSSLPolicy' - [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies Security policies> in the /Application Load Balancers Guide/ or <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies Security policies> in the /Network Load Balancers Guide/ .
--
-- * 'mlPort' - The port for connections from clients to the load balancer. You cannot specify a port for a Gateway Load Balancer.
--
-- * 'mlDefaultActions' - The actions for the default rule.
--
-- * 'mlProtocol' - The protocol for connections from clients to the load balancer. Application Load Balancers support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
--
-- * 'mlCertificates' - [HTTPS and TLS listeners] The default certificate for the listener. You must provide exactly one certificate. Set @CertificateArn@ to the certificate ARN but do not set @IsDefault@ .
--
-- * 'mlAlpnPolicy' - [TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You can specify one policy name. The following are the possible values:     * @HTTP1Only@      * @HTTP2Only@      * @HTTP2Optional@      * @HTTP2Preferred@      * @None@  For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies ALPN policies> in the /Network Load Balancers Guide/ .
--
-- * 'mlListenerARN' - The Amazon Resource Name (ARN) of the listener.
modifyListener ::
  -- | 'mlListenerARN'
  Text ->
  ModifyListener
modifyListener pListenerARN_ =
  ModifyListener'
    { _mlSSLPolicy = Nothing,
      _mlPort = Nothing,
      _mlDefaultActions = Nothing,
      _mlProtocol = Nothing,
      _mlCertificates = Nothing,
      _mlAlpnPolicy = Nothing,
      _mlListenerARN = pListenerARN_
    }

-- | [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies Security policies> in the /Application Load Balancers Guide/ or <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies Security policies> in the /Network Load Balancers Guide/ .
mlSSLPolicy :: Lens' ModifyListener (Maybe Text)
mlSSLPolicy = lens _mlSSLPolicy (\s a -> s {_mlSSLPolicy = a})

-- | The port for connections from clients to the load balancer. You cannot specify a port for a Gateway Load Balancer.
mlPort :: Lens' ModifyListener (Maybe Natural)
mlPort = lens _mlPort (\s a -> s {_mlPort = a}) . mapping _Nat

-- | The actions for the default rule.
mlDefaultActions :: Lens' ModifyListener [Action]
mlDefaultActions = lens _mlDefaultActions (\s a -> s {_mlDefaultActions = a}) . _Default . _Coerce

-- | The protocol for connections from clients to the load balancer. Application Load Balancers support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
mlProtocol :: Lens' ModifyListener (Maybe ProtocolEnum)
mlProtocol = lens _mlProtocol (\s a -> s {_mlProtocol = a})

-- | [HTTPS and TLS listeners] The default certificate for the listener. You must provide exactly one certificate. Set @CertificateArn@ to the certificate ARN but do not set @IsDefault@ .
mlCertificates :: Lens' ModifyListener [Certificate]
mlCertificates = lens _mlCertificates (\s a -> s {_mlCertificates = a}) . _Default . _Coerce

-- | [TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You can specify one policy name. The following are the possible values:     * @HTTP1Only@      * @HTTP2Only@      * @HTTP2Optional@      * @HTTP2Preferred@      * @None@  For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies ALPN policies> in the /Network Load Balancers Guide/ .
mlAlpnPolicy :: Lens' ModifyListener [Text]
mlAlpnPolicy = lens _mlAlpnPolicy (\s a -> s {_mlAlpnPolicy = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the listener.
mlListenerARN :: Lens' ModifyListener Text
mlListenerARN = lens _mlListenerARN (\s a -> s {_mlListenerARN = a})

instance AWSRequest ModifyListener where
  type Rs ModifyListener = ModifyListenerResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "ModifyListenerResult"
      ( \s h x ->
          ModifyListenerResponse'
            <$> ( x .@? "Listeners" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyListener

instance NFData ModifyListener

instance ToHeaders ModifyListener where
  toHeaders = const mempty

instance ToPath ModifyListener where
  toPath = const "/"

instance ToQuery ModifyListener where
  toQuery ModifyListener' {..} =
    mconcat
      [ "Action" =: ("ModifyListener" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "SslPolicy" =: _mlSSLPolicy,
        "Port" =: _mlPort,
        "DefaultActions"
          =: toQuery (toQueryList "member" <$> _mlDefaultActions),
        "Protocol" =: _mlProtocol,
        "Certificates"
          =: toQuery (toQueryList "member" <$> _mlCertificates),
        "AlpnPolicy"
          =: toQuery (toQueryList "member" <$> _mlAlpnPolicy),
        "ListenerArn" =: _mlListenerARN
      ]

-- | /See:/ 'modifyListenerResponse' smart constructor.
data ModifyListenerResponse = ModifyListenerResponse'
  { _mlrrsListeners ::
      !(Maybe [Listener]),
    _mlrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyListenerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrrsListeners' - Information about the modified listener.
--
-- * 'mlrrsResponseStatus' - -- | The response status code.
modifyListenerResponse ::
  -- | 'mlrrsResponseStatus'
  Int ->
  ModifyListenerResponse
modifyListenerResponse pResponseStatus_ =
  ModifyListenerResponse'
    { _mlrrsListeners = Nothing,
      _mlrrsResponseStatus = pResponseStatus_
    }

-- | Information about the modified listener.
mlrrsListeners :: Lens' ModifyListenerResponse [Listener]
mlrrsListeners = lens _mlrrsListeners (\s a -> s {_mlrrsListeners = a}) . _Default . _Coerce

-- | -- | The response status code.
mlrrsResponseStatus :: Lens' ModifyListenerResponse Int
mlrrsResponseStatus = lens _mlrrsResponseStatus (\s a -> s {_mlrrsResponseStatus = a})

instance NFData ModifyListenerResponse

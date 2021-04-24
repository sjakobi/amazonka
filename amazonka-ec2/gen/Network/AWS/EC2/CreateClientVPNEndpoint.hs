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
-- Module      : Network.AWS.EC2.CreateClientVPNEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Client VPN endpoint. A Client VPN endpoint is the resource you create and configure to enable and manage client VPN sessions. It is the destination endpoint at which all client VPN sessions are terminated.
module Network.AWS.EC2.CreateClientVPNEndpoint
  ( -- * Creating a Request
    createClientVPNEndpoint,
    CreateClientVPNEndpoint,

    -- * Request Lenses
    ccveSecurityGroupIds,
    ccveTagSpecifications,
    ccveDryRun,
    ccveTransportProtocol,
    ccveClientConnectOptions,
    ccveDNSServers,
    ccveVPNPort,
    ccveDescription,
    ccveVPCId,
    ccveSelfServicePortal,
    ccveClientToken,
    ccveSplitTunnel,
    ccveClientCidrBlock,
    ccveServerCertificateARN,
    ccveAuthenticationOptions,
    ccveConnectionLogOptions,

    -- * Destructuring the Response
    createClientVPNEndpointResponse,
    CreateClientVPNEndpointResponse,

    -- * Response Lenses
    ccverrsClientVPNEndpointId,
    ccverrsStatus,
    ccverrsDNSName,
    ccverrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createClientVPNEndpoint' smart constructor.
data CreateClientVPNEndpoint = CreateClientVPNEndpoint'
  { _ccveSecurityGroupIds ::
      !(Maybe [Text]),
    _ccveTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _ccveDryRun ::
      !(Maybe Bool),
    _ccveTransportProtocol ::
      !( Maybe
           TransportProtocol
       ),
    _ccveClientConnectOptions ::
      !( Maybe
           ClientConnectOptions
       ),
    _ccveDNSServers ::
      !(Maybe [Text]),
    _ccveVPNPort ::
      !(Maybe Int),
    _ccveDescription ::
      !(Maybe Text),
    _ccveVPCId ::
      !(Maybe Text),
    _ccveSelfServicePortal ::
      !( Maybe
           SelfServicePortal
       ),
    _ccveClientToken ::
      !(Maybe Text),
    _ccveSplitTunnel ::
      !(Maybe Bool),
    _ccveClientCidrBlock ::
      !Text,
    _ccveServerCertificateARN ::
      !Text,
    _ccveAuthenticationOptions ::
      ![ClientVPNAuthenticationRequest],
    _ccveConnectionLogOptions ::
      !ConnectionLogOptions
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateClientVPNEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccveSecurityGroupIds' - The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
--
-- * 'ccveTagSpecifications' - The tags to apply to the Client VPN endpoint during creation.
--
-- * 'ccveDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ccveTransportProtocol' - The transport protocol to be used by the VPN session. Default value: @udp@
--
-- * 'ccveClientConnectOptions' - The options for managing connection authorization for new client connections.
--
-- * 'ccveDNSServers' - Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address configured on the device is used for the DNS server.
--
-- * 'ccveVPNPort' - The port number to assign to the Client VPN endpoint for TCP and UDP traffic. Valid Values: @443@ | @1194@  Default Value: @443@
--
-- * 'ccveDescription' - A brief description of the Client VPN endpoint.
--
-- * 'ccveVPCId' - The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
--
-- * 'ccveSelfServicePortal' - Specify whether to enable the self-service portal for the Client VPN endpoint. Default Value: @enabled@
--
-- * 'ccveClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ccveSplitTunnel' - Indicates whether split-tunnel is enabled on the AWS Client VPN endpoint. By default, split-tunnel on a VPN endpoint is disabled. For information about split-tunnel VPN endpoints, see <https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html Split-Tunnel AWS Client VPN Endpoint> in the /AWS Client VPN Administrator Guide/ .
--
-- * 'ccveClientCidrBlock' - The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater.
--
-- * 'ccveServerCertificateARN' - The ARN of the server certificate. For more information, see the <https://docs.aws.amazon.com/acm/latest/userguide/ AWS Certificate Manager User Guide> .
--
-- * 'ccveAuthenticationOptions' - Information about the authentication method to be used to authenticate clients.
--
-- * 'ccveConnectionLogOptions' - Information about the client connection logging options. If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:     * Client connection requests     * Client connection results (successful and unsuccessful)     * Reasons for unsuccessful client connection requests     * Client connection termination time
createClientVPNEndpoint ::
  -- | 'ccveClientCidrBlock'
  Text ->
  -- | 'ccveServerCertificateARN'
  Text ->
  -- | 'ccveConnectionLogOptions'
  ConnectionLogOptions ->
  CreateClientVPNEndpoint
createClientVPNEndpoint
  pClientCidrBlock_
  pServerCertificateARN_
  pConnectionLogOptions_ =
    CreateClientVPNEndpoint'
      { _ccveSecurityGroupIds =
          Nothing,
        _ccveTagSpecifications = Nothing,
        _ccveDryRun = Nothing,
        _ccveTransportProtocol = Nothing,
        _ccveClientConnectOptions = Nothing,
        _ccveDNSServers = Nothing,
        _ccveVPNPort = Nothing,
        _ccveDescription = Nothing,
        _ccveVPCId = Nothing,
        _ccveSelfServicePortal = Nothing,
        _ccveClientToken = Nothing,
        _ccveSplitTunnel = Nothing,
        _ccveClientCidrBlock = pClientCidrBlock_,
        _ccveServerCertificateARN = pServerCertificateARN_,
        _ccveAuthenticationOptions = mempty,
        _ccveConnectionLogOptions = pConnectionLogOptions_
      }

-- | The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
ccveSecurityGroupIds :: Lens' CreateClientVPNEndpoint [Text]
ccveSecurityGroupIds = lens _ccveSecurityGroupIds (\s a -> s {_ccveSecurityGroupIds = a}) . _Default . _Coerce

-- | The tags to apply to the Client VPN endpoint during creation.
ccveTagSpecifications :: Lens' CreateClientVPNEndpoint [TagSpecification]
ccveTagSpecifications = lens _ccveTagSpecifications (\s a -> s {_ccveTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ccveDryRun :: Lens' CreateClientVPNEndpoint (Maybe Bool)
ccveDryRun = lens _ccveDryRun (\s a -> s {_ccveDryRun = a})

-- | The transport protocol to be used by the VPN session. Default value: @udp@
ccveTransportProtocol :: Lens' CreateClientVPNEndpoint (Maybe TransportProtocol)
ccveTransportProtocol = lens _ccveTransportProtocol (\s a -> s {_ccveTransportProtocol = a})

-- | The options for managing connection authorization for new client connections.
ccveClientConnectOptions :: Lens' CreateClientVPNEndpoint (Maybe ClientConnectOptions)
ccveClientConnectOptions = lens _ccveClientConnectOptions (\s a -> s {_ccveClientConnectOptions = a})

-- | Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address configured on the device is used for the DNS server.
ccveDNSServers :: Lens' CreateClientVPNEndpoint [Text]
ccveDNSServers = lens _ccveDNSServers (\s a -> s {_ccveDNSServers = a}) . _Default . _Coerce

-- | The port number to assign to the Client VPN endpoint for TCP and UDP traffic. Valid Values: @443@ | @1194@  Default Value: @443@
ccveVPNPort :: Lens' CreateClientVPNEndpoint (Maybe Int)
ccveVPNPort = lens _ccveVPNPort (\s a -> s {_ccveVPNPort = a})

-- | A brief description of the Client VPN endpoint.
ccveDescription :: Lens' CreateClientVPNEndpoint (Maybe Text)
ccveDescription = lens _ccveDescription (\s a -> s {_ccveDescription = a})

-- | The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
ccveVPCId :: Lens' CreateClientVPNEndpoint (Maybe Text)
ccveVPCId = lens _ccveVPCId (\s a -> s {_ccveVPCId = a})

-- | Specify whether to enable the self-service portal for the Client VPN endpoint. Default Value: @enabled@
ccveSelfServicePortal :: Lens' CreateClientVPNEndpoint (Maybe SelfServicePortal)
ccveSelfServicePortal = lens _ccveSelfServicePortal (\s a -> s {_ccveSelfServicePortal = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ccveClientToken :: Lens' CreateClientVPNEndpoint (Maybe Text)
ccveClientToken = lens _ccveClientToken (\s a -> s {_ccveClientToken = a})

-- | Indicates whether split-tunnel is enabled on the AWS Client VPN endpoint. By default, split-tunnel on a VPN endpoint is disabled. For information about split-tunnel VPN endpoints, see <https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html Split-Tunnel AWS Client VPN Endpoint> in the /AWS Client VPN Administrator Guide/ .
ccveSplitTunnel :: Lens' CreateClientVPNEndpoint (Maybe Bool)
ccveSplitTunnel = lens _ccveSplitTunnel (\s a -> s {_ccveSplitTunnel = a})

-- | The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater.
ccveClientCidrBlock :: Lens' CreateClientVPNEndpoint Text
ccveClientCidrBlock = lens _ccveClientCidrBlock (\s a -> s {_ccveClientCidrBlock = a})

-- | The ARN of the server certificate. For more information, see the <https://docs.aws.amazon.com/acm/latest/userguide/ AWS Certificate Manager User Guide> .
ccveServerCertificateARN :: Lens' CreateClientVPNEndpoint Text
ccveServerCertificateARN = lens _ccveServerCertificateARN (\s a -> s {_ccveServerCertificateARN = a})

-- | Information about the authentication method to be used to authenticate clients.
ccveAuthenticationOptions :: Lens' CreateClientVPNEndpoint [ClientVPNAuthenticationRequest]
ccveAuthenticationOptions = lens _ccveAuthenticationOptions (\s a -> s {_ccveAuthenticationOptions = a}) . _Coerce

-- | Information about the client connection logging options. If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:     * Client connection requests     * Client connection results (successful and unsuccessful)     * Reasons for unsuccessful client connection requests     * Client connection termination time
ccveConnectionLogOptions :: Lens' CreateClientVPNEndpoint ConnectionLogOptions
ccveConnectionLogOptions = lens _ccveConnectionLogOptions (\s a -> s {_ccveConnectionLogOptions = a})

instance AWSRequest CreateClientVPNEndpoint where
  type
    Rs CreateClientVPNEndpoint =
      CreateClientVPNEndpointResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateClientVPNEndpointResponse'
            <$> (x .@? "clientVpnEndpointId")
            <*> (x .@? "status")
            <*> (x .@? "dnsName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateClientVPNEndpoint

instance NFData CreateClientVPNEndpoint

instance ToHeaders CreateClientVPNEndpoint where
  toHeaders = const mempty

instance ToPath CreateClientVPNEndpoint where
  toPath = const "/"

instance ToQuery CreateClientVPNEndpoint where
  toQuery CreateClientVPNEndpoint' {..} =
    mconcat
      [ "Action"
          =: ("CreateClientVpnEndpoint" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "SecurityGroupId"
              <$> _ccveSecurityGroupIds
          ),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ccveTagSpecifications
          ),
        "DryRun" =: _ccveDryRun,
        "TransportProtocol" =: _ccveTransportProtocol,
        "ClientConnectOptions" =: _ccveClientConnectOptions,
        toQuery
          (toQueryList "DnsServers" <$> _ccveDNSServers),
        "VpnPort" =: _ccveVPNPort,
        "Description" =: _ccveDescription,
        "VpcId" =: _ccveVPCId,
        "SelfServicePortal" =: _ccveSelfServicePortal,
        "ClientToken" =: _ccveClientToken,
        "SplitTunnel" =: _ccveSplitTunnel,
        "ClientCidrBlock" =: _ccveClientCidrBlock,
        "ServerCertificateArn" =: _ccveServerCertificateARN,
        toQueryList
          "Authentication"
          _ccveAuthenticationOptions,
        "ConnectionLogOptions" =: _ccveConnectionLogOptions
      ]

-- | /See:/ 'createClientVPNEndpointResponse' smart constructor.
data CreateClientVPNEndpointResponse = CreateClientVPNEndpointResponse'
  { _ccverrsClientVPNEndpointId ::
      !( Maybe
           Text
       ),
    _ccverrsStatus ::
      !( Maybe
           ClientVPNEndpointStatus
       ),
    _ccverrsDNSName ::
      !( Maybe
           Text
       ),
    _ccverrsResponseStatus ::
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

-- | Creates a value of 'CreateClientVPNEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccverrsClientVPNEndpointId' - The ID of the Client VPN endpoint.
--
-- * 'ccverrsStatus' - The current state of the Client VPN endpoint.
--
-- * 'ccverrsDNSName' - The DNS name to be used by clients when establishing their VPN session.
--
-- * 'ccverrsResponseStatus' - -- | The response status code.
createClientVPNEndpointResponse ::
  -- | 'ccverrsResponseStatus'
  Int ->
  CreateClientVPNEndpointResponse
createClientVPNEndpointResponse pResponseStatus_ =
  CreateClientVPNEndpointResponse'
    { _ccverrsClientVPNEndpointId =
        Nothing,
      _ccverrsStatus = Nothing,
      _ccverrsDNSName = Nothing,
      _ccverrsResponseStatus = pResponseStatus_
    }

-- | The ID of the Client VPN endpoint.
ccverrsClientVPNEndpointId :: Lens' CreateClientVPNEndpointResponse (Maybe Text)
ccverrsClientVPNEndpointId = lens _ccverrsClientVPNEndpointId (\s a -> s {_ccverrsClientVPNEndpointId = a})

-- | The current state of the Client VPN endpoint.
ccverrsStatus :: Lens' CreateClientVPNEndpointResponse (Maybe ClientVPNEndpointStatus)
ccverrsStatus = lens _ccverrsStatus (\s a -> s {_ccverrsStatus = a})

-- | The DNS name to be used by clients when establishing their VPN session.
ccverrsDNSName :: Lens' CreateClientVPNEndpointResponse (Maybe Text)
ccverrsDNSName = lens _ccverrsDNSName (\s a -> s {_ccverrsDNSName = a})

-- | -- | The response status code.
ccverrsResponseStatus :: Lens' CreateClientVPNEndpointResponse Int
ccverrsResponseStatus = lens _ccverrsResponseStatus (\s a -> s {_ccverrsResponseStatus = a})

instance NFData CreateClientVPNEndpointResponse

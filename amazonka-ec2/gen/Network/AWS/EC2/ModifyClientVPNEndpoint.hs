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
-- Module      : Network.AWS.EC2.ModifyClientVPNEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified Client VPN endpoint. Modifying the DNS server resets existing client connections.
module Network.AWS.EC2.ModifyClientVPNEndpoint
  ( -- * Creating a Request
    modifyClientVPNEndpoint,
    ModifyClientVPNEndpoint,

    -- * Request Lenses
    mcveSecurityGroupIds,
    mcveDryRun,
    mcveServerCertificateARN,
    mcveConnectionLogOptions,
    mcveClientConnectOptions,
    mcveDNSServers,
    mcveVPNPort,
    mcveDescription,
    mcveVPCId,
    mcveSelfServicePortal,
    mcveSplitTunnel,
    mcveClientVPNEndpointId,

    -- * Destructuring the Response
    modifyClientVPNEndpointResponse,
    ModifyClientVPNEndpointResponse,

    -- * Response Lenses
    mcverrsReturn,
    mcverrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyClientVPNEndpoint' smart constructor.
data ModifyClientVPNEndpoint = ModifyClientVPNEndpoint'
  { _mcveSecurityGroupIds ::
      !(Maybe [Text]),
    _mcveDryRun ::
      !(Maybe Bool),
    _mcveServerCertificateARN ::
      !(Maybe Text),
    _mcveConnectionLogOptions ::
      !( Maybe
           ConnectionLogOptions
       ),
    _mcveClientConnectOptions ::
      !( Maybe
           ClientConnectOptions
       ),
    _mcveDNSServers ::
      !( Maybe
           DNSServersOptionsModifyStructure
       ),
    _mcveVPNPort ::
      !(Maybe Int),
    _mcveDescription ::
      !(Maybe Text),
    _mcveVPCId ::
      !(Maybe Text),
    _mcveSelfServicePortal ::
      !( Maybe
           SelfServicePortal
       ),
    _mcveSplitTunnel ::
      !(Maybe Bool),
    _mcveClientVPNEndpointId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyClientVPNEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcveSecurityGroupIds' - The IDs of one or more security groups to apply to the target network.
--
-- * 'mcveDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mcveServerCertificateARN' - The ARN of the server certificate to be used. The server certificate must be provisioned in AWS Certificate Manager (ACM).
--
-- * 'mcveConnectionLogOptions' - Information about the client connection logging options. If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:     * Client connection requests     * Client connection results (successful and unsuccessful)     * Reasons for unsuccessful client connection requests     * Client connection termination time
--
-- * 'mcveClientConnectOptions' - The options for managing connection authorization for new client connections.
--
-- * 'mcveDNSServers' - Information about the DNS servers to be used by Client VPN connections. A Client VPN endpoint can have up to two DNS servers.
--
-- * 'mcveVPNPort' - The port number to assign to the Client VPN endpoint for TCP and UDP traffic. Valid Values: @443@ | @1194@  Default Value: @443@
--
-- * 'mcveDescription' - A brief description of the Client VPN endpoint.
--
-- * 'mcveVPCId' - The ID of the VPC to associate with the Client VPN endpoint.
--
-- * 'mcveSelfServicePortal' - Specify whether to enable the self-service portal for the Client VPN endpoint.
--
-- * 'mcveSplitTunnel' - Indicates whether the VPN is split-tunnel. For information about split-tunnel VPN endpoints, see <https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html Split-Tunnel AWS Client VPN Endpoint> in the /AWS Client VPN Administrator Guide/ .
--
-- * 'mcveClientVPNEndpointId' - The ID of the Client VPN endpoint to modify.
modifyClientVPNEndpoint ::
  -- | 'mcveClientVPNEndpointId'
  Text ->
  ModifyClientVPNEndpoint
modifyClientVPNEndpoint pClientVPNEndpointId_ =
  ModifyClientVPNEndpoint'
    { _mcveSecurityGroupIds =
        Nothing,
      _mcveDryRun = Nothing,
      _mcveServerCertificateARN = Nothing,
      _mcveConnectionLogOptions = Nothing,
      _mcveClientConnectOptions = Nothing,
      _mcveDNSServers = Nothing,
      _mcveVPNPort = Nothing,
      _mcveDescription = Nothing,
      _mcveVPCId = Nothing,
      _mcveSelfServicePortal = Nothing,
      _mcveSplitTunnel = Nothing,
      _mcveClientVPNEndpointId = pClientVPNEndpointId_
    }

-- | The IDs of one or more security groups to apply to the target network.
mcveSecurityGroupIds :: Lens' ModifyClientVPNEndpoint [Text]
mcveSecurityGroupIds = lens _mcveSecurityGroupIds (\s a -> s {_mcveSecurityGroupIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mcveDryRun :: Lens' ModifyClientVPNEndpoint (Maybe Bool)
mcveDryRun = lens _mcveDryRun (\s a -> s {_mcveDryRun = a})

-- | The ARN of the server certificate to be used. The server certificate must be provisioned in AWS Certificate Manager (ACM).
mcveServerCertificateARN :: Lens' ModifyClientVPNEndpoint (Maybe Text)
mcveServerCertificateARN = lens _mcveServerCertificateARN (\s a -> s {_mcveServerCertificateARN = a})

-- | Information about the client connection logging options. If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:     * Client connection requests     * Client connection results (successful and unsuccessful)     * Reasons for unsuccessful client connection requests     * Client connection termination time
mcveConnectionLogOptions :: Lens' ModifyClientVPNEndpoint (Maybe ConnectionLogOptions)
mcveConnectionLogOptions = lens _mcveConnectionLogOptions (\s a -> s {_mcveConnectionLogOptions = a})

-- | The options for managing connection authorization for new client connections.
mcveClientConnectOptions :: Lens' ModifyClientVPNEndpoint (Maybe ClientConnectOptions)
mcveClientConnectOptions = lens _mcveClientConnectOptions (\s a -> s {_mcveClientConnectOptions = a})

-- | Information about the DNS servers to be used by Client VPN connections. A Client VPN endpoint can have up to two DNS servers.
mcveDNSServers :: Lens' ModifyClientVPNEndpoint (Maybe DNSServersOptionsModifyStructure)
mcveDNSServers = lens _mcveDNSServers (\s a -> s {_mcveDNSServers = a})

-- | The port number to assign to the Client VPN endpoint for TCP and UDP traffic. Valid Values: @443@ | @1194@  Default Value: @443@
mcveVPNPort :: Lens' ModifyClientVPNEndpoint (Maybe Int)
mcveVPNPort = lens _mcveVPNPort (\s a -> s {_mcveVPNPort = a})

-- | A brief description of the Client VPN endpoint.
mcveDescription :: Lens' ModifyClientVPNEndpoint (Maybe Text)
mcveDescription = lens _mcveDescription (\s a -> s {_mcveDescription = a})

-- | The ID of the VPC to associate with the Client VPN endpoint.
mcveVPCId :: Lens' ModifyClientVPNEndpoint (Maybe Text)
mcveVPCId = lens _mcveVPCId (\s a -> s {_mcveVPCId = a})

-- | Specify whether to enable the self-service portal for the Client VPN endpoint.
mcveSelfServicePortal :: Lens' ModifyClientVPNEndpoint (Maybe SelfServicePortal)
mcveSelfServicePortal = lens _mcveSelfServicePortal (\s a -> s {_mcveSelfServicePortal = a})

-- | Indicates whether the VPN is split-tunnel. For information about split-tunnel VPN endpoints, see <https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html Split-Tunnel AWS Client VPN Endpoint> in the /AWS Client VPN Administrator Guide/ .
mcveSplitTunnel :: Lens' ModifyClientVPNEndpoint (Maybe Bool)
mcveSplitTunnel = lens _mcveSplitTunnel (\s a -> s {_mcveSplitTunnel = a})

-- | The ID of the Client VPN endpoint to modify.
mcveClientVPNEndpointId :: Lens' ModifyClientVPNEndpoint Text
mcveClientVPNEndpointId = lens _mcveClientVPNEndpointId (\s a -> s {_mcveClientVPNEndpointId = a})

instance AWSRequest ModifyClientVPNEndpoint where
  type
    Rs ModifyClientVPNEndpoint =
      ModifyClientVPNEndpointResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyClientVPNEndpointResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable ModifyClientVPNEndpoint

instance NFData ModifyClientVPNEndpoint

instance ToHeaders ModifyClientVPNEndpoint where
  toHeaders = const mempty

instance ToPath ModifyClientVPNEndpoint where
  toPath = const "/"

instance ToQuery ModifyClientVPNEndpoint where
  toQuery ModifyClientVPNEndpoint' {..} =
    mconcat
      [ "Action"
          =: ("ModifyClientVpnEndpoint" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "SecurityGroupId"
              <$> _mcveSecurityGroupIds
          ),
        "DryRun" =: _mcveDryRun,
        "ServerCertificateArn" =: _mcveServerCertificateARN,
        "ConnectionLogOptions" =: _mcveConnectionLogOptions,
        "ClientConnectOptions" =: _mcveClientConnectOptions,
        "DnsServers" =: _mcveDNSServers,
        "VpnPort" =: _mcveVPNPort,
        "Description" =: _mcveDescription,
        "VpcId" =: _mcveVPCId,
        "SelfServicePortal" =: _mcveSelfServicePortal,
        "SplitTunnel" =: _mcveSplitTunnel,
        "ClientVpnEndpointId" =: _mcveClientVPNEndpointId
      ]

-- | /See:/ 'modifyClientVPNEndpointResponse' smart constructor.
data ModifyClientVPNEndpointResponse = ModifyClientVPNEndpointResponse'
  { _mcverrsReturn ::
      !( Maybe
           Bool
       ),
    _mcverrsResponseStatus ::
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

-- | Creates a value of 'ModifyClientVPNEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcverrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'mcverrsResponseStatus' - -- | The response status code.
modifyClientVPNEndpointResponse ::
  -- | 'mcverrsResponseStatus'
  Int ->
  ModifyClientVPNEndpointResponse
modifyClientVPNEndpointResponse pResponseStatus_ =
  ModifyClientVPNEndpointResponse'
    { _mcverrsReturn =
        Nothing,
      _mcverrsResponseStatus = pResponseStatus_
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
mcverrsReturn :: Lens' ModifyClientVPNEndpointResponse (Maybe Bool)
mcverrsReturn = lens _mcverrsReturn (\s a -> s {_mcverrsReturn = a})

-- | -- | The response status code.
mcverrsResponseStatus :: Lens' ModifyClientVPNEndpointResponse Int
mcverrsResponseStatus = lens _mcverrsResponseStatus (\s a -> s {_mcverrsResponseStatus = a})

instance NFData ModifyClientVPNEndpointResponse

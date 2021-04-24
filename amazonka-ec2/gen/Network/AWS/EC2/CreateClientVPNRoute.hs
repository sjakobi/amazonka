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
-- Module      : Network.AWS.EC2.CreateClientVPNRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a route to a network to a Client VPN endpoint. Each Client VPN endpoint has a route table that describes the available destination network routes. Each route in the route table specifies the path for traﬃc to speciﬁc resources or networks.
module Network.AWS.EC2.CreateClientVPNRoute
  ( -- * Creating a Request
    createClientVPNRoute,
    CreateClientVPNRoute,

    -- * Request Lenses
    ccvrDryRun,
    ccvrDescription,
    ccvrClientToken,
    ccvrClientVPNEndpointId,
    ccvrDestinationCidrBlock,
    ccvrTargetVPCSubnetId,

    -- * Destructuring the Response
    createClientVPNRouteResponse,
    CreateClientVPNRouteResponse,

    -- * Response Lenses
    ccvrrrsStatus,
    ccvrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createClientVPNRoute' smart constructor.
data CreateClientVPNRoute = CreateClientVPNRoute'
  { _ccvrDryRun ::
      !(Maybe Bool),
    _ccvrDescription ::
      !(Maybe Text),
    _ccvrClientToken ::
      !(Maybe Text),
    _ccvrClientVPNEndpointId ::
      !Text,
    _ccvrDestinationCidrBlock ::
      !Text,
    _ccvrTargetVPCSubnetId ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateClientVPNRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ccvrDescription' - A brief description of the route.
--
-- * 'ccvrClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ccvrClientVPNEndpointId' - The ID of the Client VPN endpoint to which to add the route.
--
-- * 'ccvrDestinationCidrBlock' - The IPv4 address range, in CIDR notation, of the route destination. For example:     * To add a route for Internet access, enter @0.0.0.0/0@      * To add a route for a peered VPC, enter the peered VPC's IPv4 CIDR range     * To add a route for an on-premises network, enter the AWS Site-to-Site VPN connection's IPv4 CIDR range     * To add a route for the local network, enter the client CIDR range
--
-- * 'ccvrTargetVPCSubnetId' - The ID of the subnet through which you want to route traffic. The specified subnet must be an existing target network of the Client VPN endpoint. Alternatively, if you're adding a route for the local network, specify @local@ .
createClientVPNRoute ::
  -- | 'ccvrClientVPNEndpointId'
  Text ->
  -- | 'ccvrDestinationCidrBlock'
  Text ->
  -- | 'ccvrTargetVPCSubnetId'
  Text ->
  CreateClientVPNRoute
createClientVPNRoute
  pClientVPNEndpointId_
  pDestinationCidrBlock_
  pTargetVPCSubnetId_ =
    CreateClientVPNRoute'
      { _ccvrDryRun = Nothing,
        _ccvrDescription = Nothing,
        _ccvrClientToken = Nothing,
        _ccvrClientVPNEndpointId = pClientVPNEndpointId_,
        _ccvrDestinationCidrBlock = pDestinationCidrBlock_,
        _ccvrTargetVPCSubnetId = pTargetVPCSubnetId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ccvrDryRun :: Lens' CreateClientVPNRoute (Maybe Bool)
ccvrDryRun = lens _ccvrDryRun (\s a -> s {_ccvrDryRun = a})

-- | A brief description of the route.
ccvrDescription :: Lens' CreateClientVPNRoute (Maybe Text)
ccvrDescription = lens _ccvrDescription (\s a -> s {_ccvrDescription = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ccvrClientToken :: Lens' CreateClientVPNRoute (Maybe Text)
ccvrClientToken = lens _ccvrClientToken (\s a -> s {_ccvrClientToken = a})

-- | The ID of the Client VPN endpoint to which to add the route.
ccvrClientVPNEndpointId :: Lens' CreateClientVPNRoute Text
ccvrClientVPNEndpointId = lens _ccvrClientVPNEndpointId (\s a -> s {_ccvrClientVPNEndpointId = a})

-- | The IPv4 address range, in CIDR notation, of the route destination. For example:     * To add a route for Internet access, enter @0.0.0.0/0@      * To add a route for a peered VPC, enter the peered VPC's IPv4 CIDR range     * To add a route for an on-premises network, enter the AWS Site-to-Site VPN connection's IPv4 CIDR range     * To add a route for the local network, enter the client CIDR range
ccvrDestinationCidrBlock :: Lens' CreateClientVPNRoute Text
ccvrDestinationCidrBlock = lens _ccvrDestinationCidrBlock (\s a -> s {_ccvrDestinationCidrBlock = a})

-- | The ID of the subnet through which you want to route traffic. The specified subnet must be an existing target network of the Client VPN endpoint. Alternatively, if you're adding a route for the local network, specify @local@ .
ccvrTargetVPCSubnetId :: Lens' CreateClientVPNRoute Text
ccvrTargetVPCSubnetId = lens _ccvrTargetVPCSubnetId (\s a -> s {_ccvrTargetVPCSubnetId = a})

instance AWSRequest CreateClientVPNRoute where
  type
    Rs CreateClientVPNRoute =
      CreateClientVPNRouteResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateClientVPNRouteResponse'
            <$> (x .@? "status") <*> (pure (fromEnum s))
      )

instance Hashable CreateClientVPNRoute

instance NFData CreateClientVPNRoute

instance ToHeaders CreateClientVPNRoute where
  toHeaders = const mempty

instance ToPath CreateClientVPNRoute where
  toPath = const "/"

instance ToQuery CreateClientVPNRoute where
  toQuery CreateClientVPNRoute' {..} =
    mconcat
      [ "Action" =: ("CreateClientVpnRoute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _ccvrDryRun,
        "Description" =: _ccvrDescription,
        "ClientToken" =: _ccvrClientToken,
        "ClientVpnEndpointId" =: _ccvrClientVPNEndpointId,
        "DestinationCidrBlock" =: _ccvrDestinationCidrBlock,
        "TargetVpcSubnetId" =: _ccvrTargetVPCSubnetId
      ]

-- | /See:/ 'createClientVPNRouteResponse' smart constructor.
data CreateClientVPNRouteResponse = CreateClientVPNRouteResponse'
  { _ccvrrrsStatus ::
      !( Maybe
           ClientVPNRouteStatus
       ),
    _ccvrrrsResponseStatus ::
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

-- | Creates a value of 'CreateClientVPNRouteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccvrrrsStatus' - The current state of the route.
--
-- * 'ccvrrrsResponseStatus' - -- | The response status code.
createClientVPNRouteResponse ::
  -- | 'ccvrrrsResponseStatus'
  Int ->
  CreateClientVPNRouteResponse
createClientVPNRouteResponse pResponseStatus_ =
  CreateClientVPNRouteResponse'
    { _ccvrrrsStatus =
        Nothing,
      _ccvrrrsResponseStatus = pResponseStatus_
    }

-- | The current state of the route.
ccvrrrsStatus :: Lens' CreateClientVPNRouteResponse (Maybe ClientVPNRouteStatus)
ccvrrrsStatus = lens _ccvrrrsStatus (\s a -> s {_ccvrrrsStatus = a})

-- | -- | The response status code.
ccvrrrsResponseStatus :: Lens' CreateClientVPNRouteResponse Int
ccvrrrsResponseStatus = lens _ccvrrrsResponseStatus (\s a -> s {_ccvrrrsResponseStatus = a})

instance NFData CreateClientVPNRouteResponse

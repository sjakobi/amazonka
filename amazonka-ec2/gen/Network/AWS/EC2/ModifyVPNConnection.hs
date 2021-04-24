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
-- Module      : Network.AWS.EC2.ModifyVPNConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the customer gateway or the target gateway of an AWS Site-to-Site VPN connection. To modify the target gateway, the following migration options are available:
--
--
--     * An existing virtual private gateway to a new virtual private gateway
--
--     * An existing virtual private gateway to a transit gateway
--
--     * An existing transit gateway to a new transit gateway
--
--     * An existing transit gateway to a virtual private gateway
--
--
--
-- Before you perform the migration to the new gateway, you must configure the new gateway. Use 'CreateVpnGateway' to create a virtual private gateway, or 'CreateTransitGateway' to create a transit gateway.
--
-- This step is required when you migrate from a virtual private gateway with static routes to a transit gateway.
--
-- You must delete the static routes before you migrate to the new gateway.
--
-- Keep a copy of the static route before you delete it. You will need to add back these routes to the transit gateway after the VPN connection migration is complete.
--
-- After you migrate to the new gateway, you might need to modify your VPC route table. Use 'CreateRoute' and 'DeleteRoute' to make the changes described in <https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing VPN Gateway Target Modification Required VPC Route Table Updates> in the /AWS Site-to-Site VPN User Guide/ .
--
-- When the new gateway is a transit gateway, modify the transit gateway route table to allow traffic between the VPC and the AWS Site-to-Site VPN connection. Use 'CreateTransitGatewayRoute' to add the routes.
--
-- If you deleted VPN static routes, you must add the static routes to the transit gateway route table.
--
-- After you perform this operation, the AWS VPN endpoint's IP addresses on the AWS side and the tunnel options remain intact. Your AWS Site-to-Site VPN connection will be temporarily unavailable for a brief period while we provision the new endpoints.
module Network.AWS.EC2.ModifyVPNConnection
  ( -- * Creating a Request
    modifyVPNConnection,
    ModifyVPNConnection,

    -- * Request Lenses
    mvcDryRun,
    mvcCustomerGatewayId,
    mvcVPNGatewayId,
    mvcTransitGatewayId,
    mvcVPNConnectionId,

    -- * Destructuring the Response
    modifyVPNConnectionResponse,
    ModifyVPNConnectionResponse,

    -- * Response Lenses
    mvcrrsVPNConnection,
    mvcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyVPNConnection' smart constructor.
data ModifyVPNConnection = ModifyVPNConnection'
  { _mvcDryRun ::
      !(Maybe Bool),
    _mvcCustomerGatewayId ::
      !(Maybe Text),
    _mvcVPNGatewayId ::
      !(Maybe Text),
    _mvcTransitGatewayId ::
      !(Maybe Text),
    _mvcVPNConnectionId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyVPNConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mvcCustomerGatewayId' - The ID of the customer gateway at your end of the VPN connection.
--
-- * 'mvcVPNGatewayId' - The ID of the virtual private gateway at the AWS side of the VPN connection.
--
-- * 'mvcTransitGatewayId' - The ID of the transit gateway.
--
-- * 'mvcVPNConnectionId' - The ID of the VPN connection.
modifyVPNConnection ::
  -- | 'mvcVPNConnectionId'
  Text ->
  ModifyVPNConnection
modifyVPNConnection pVPNConnectionId_ =
  ModifyVPNConnection'
    { _mvcDryRun = Nothing,
      _mvcCustomerGatewayId = Nothing,
      _mvcVPNGatewayId = Nothing,
      _mvcTransitGatewayId = Nothing,
      _mvcVPNConnectionId = pVPNConnectionId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mvcDryRun :: Lens' ModifyVPNConnection (Maybe Bool)
mvcDryRun = lens _mvcDryRun (\s a -> s {_mvcDryRun = a})

-- | The ID of the customer gateway at your end of the VPN connection.
mvcCustomerGatewayId :: Lens' ModifyVPNConnection (Maybe Text)
mvcCustomerGatewayId = lens _mvcCustomerGatewayId (\s a -> s {_mvcCustomerGatewayId = a})

-- | The ID of the virtual private gateway at the AWS side of the VPN connection.
mvcVPNGatewayId :: Lens' ModifyVPNConnection (Maybe Text)
mvcVPNGatewayId = lens _mvcVPNGatewayId (\s a -> s {_mvcVPNGatewayId = a})

-- | The ID of the transit gateway.
mvcTransitGatewayId :: Lens' ModifyVPNConnection (Maybe Text)
mvcTransitGatewayId = lens _mvcTransitGatewayId (\s a -> s {_mvcTransitGatewayId = a})

-- | The ID of the VPN connection.
mvcVPNConnectionId :: Lens' ModifyVPNConnection Text
mvcVPNConnectionId = lens _mvcVPNConnectionId (\s a -> s {_mvcVPNConnectionId = a})

instance AWSRequest ModifyVPNConnection where
  type
    Rs ModifyVPNConnection =
      ModifyVPNConnectionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyVPNConnectionResponse'
            <$> (x .@? "vpnConnection") <*> (pure (fromEnum s))
      )

instance Hashable ModifyVPNConnection

instance NFData ModifyVPNConnection

instance ToHeaders ModifyVPNConnection where
  toHeaders = const mempty

instance ToPath ModifyVPNConnection where
  toPath = const "/"

instance ToQuery ModifyVPNConnection where
  toQuery ModifyVPNConnection' {..} =
    mconcat
      [ "Action" =: ("ModifyVpnConnection" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mvcDryRun,
        "CustomerGatewayId" =: _mvcCustomerGatewayId,
        "VpnGatewayId" =: _mvcVPNGatewayId,
        "TransitGatewayId" =: _mvcTransitGatewayId,
        "VpnConnectionId" =: _mvcVPNConnectionId
      ]

-- | /See:/ 'modifyVPNConnectionResponse' smart constructor.
data ModifyVPNConnectionResponse = ModifyVPNConnectionResponse'
  { _mvcrrsVPNConnection ::
      !( Maybe
           VPNConnection
       ),
    _mvcrrsResponseStatus ::
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

-- | Creates a value of 'ModifyVPNConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvcrrsVPNConnection' - Undocumented member.
--
-- * 'mvcrrsResponseStatus' - -- | The response status code.
modifyVPNConnectionResponse ::
  -- | 'mvcrrsResponseStatus'
  Int ->
  ModifyVPNConnectionResponse
modifyVPNConnectionResponse pResponseStatus_ =
  ModifyVPNConnectionResponse'
    { _mvcrrsVPNConnection =
        Nothing,
      _mvcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mvcrrsVPNConnection :: Lens' ModifyVPNConnectionResponse (Maybe VPNConnection)
mvcrrsVPNConnection = lens _mvcrrsVPNConnection (\s a -> s {_mvcrrsVPNConnection = a})

-- | -- | The response status code.
mvcrrsResponseStatus :: Lens' ModifyVPNConnectionResponse Int
mvcrrsResponseStatus = lens _mvcrrsResponseStatus (\s a -> s {_mvcrrsResponseStatus = a})

instance NFData ModifyVPNConnectionResponse

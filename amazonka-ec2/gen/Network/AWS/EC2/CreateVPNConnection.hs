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
-- Module      : Network.AWS.EC2.CreateVPNConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPN connection between an existing virtual private gateway or transit gateway and a customer gateway. The supported connection type is @ipsec.1@ .
--
--
-- The response includes information that you need to give to your network administrator to configure your customer gateway.
--
-- /Important:/ We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway device.
--
-- If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.
--
-- This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.
--
-- For more information, see <https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html AWS Site-to-Site VPN> in the /AWS Site-to-Site VPN User Guide/ .
module Network.AWS.EC2.CreateVPNConnection
  ( -- * Creating a Request
    createVPNConnection,
    CreateVPNConnection,

    -- * Request Lenses
    cvcTagSpecifications,
    cvcDryRun,
    cvcOptions,
    cvcVPNGatewayId,
    cvcTransitGatewayId,
    cvcCustomerGatewayId,
    cvcType,

    -- * Destructuring the Response
    createVPNConnectionResponse,
    CreateVPNConnectionResponse,

    -- * Response Lenses
    cvcrrsVPNConnection,
    cvcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CreateVpnConnection.
--
--
--
-- /See:/ 'createVPNConnection' smart constructor.
data CreateVPNConnection = CreateVPNConnection'
  { _cvcTagSpecifications ::
      !(Maybe [TagSpecification]),
    _cvcDryRun :: !(Maybe Bool),
    _cvcOptions ::
      !( Maybe
           VPNConnectionOptionsSpecification
       ),
    _cvcVPNGatewayId ::
      !(Maybe Text),
    _cvcTransitGatewayId ::
      !(Maybe Text),
    _cvcCustomerGatewayId :: !Text,
    _cvcType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPNConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvcTagSpecifications' - The tags to apply to the VPN connection.
--
-- * 'cvcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvcOptions' - The options for the VPN connection.
--
-- * 'cvcVPNGatewayId' - The ID of the virtual private gateway. If you specify a virtual private gateway, you cannot specify a transit gateway.
--
-- * 'cvcTransitGatewayId' - The ID of the transit gateway. If you specify a transit gateway, you cannot specify a virtual private gateway.
--
-- * 'cvcCustomerGatewayId' - The ID of the customer gateway.
--
-- * 'cvcType' - The type of VPN connection (@ipsec.1@ ).
createVPNConnection ::
  -- | 'cvcCustomerGatewayId'
  Text ->
  -- | 'cvcType'
  Text ->
  CreateVPNConnection
createVPNConnection pCustomerGatewayId_ pType_ =
  CreateVPNConnection'
    { _cvcTagSpecifications =
        Nothing,
      _cvcDryRun = Nothing,
      _cvcOptions = Nothing,
      _cvcVPNGatewayId = Nothing,
      _cvcTransitGatewayId = Nothing,
      _cvcCustomerGatewayId = pCustomerGatewayId_,
      _cvcType = pType_
    }

-- | The tags to apply to the VPN connection.
cvcTagSpecifications :: Lens' CreateVPNConnection [TagSpecification]
cvcTagSpecifications = lens _cvcTagSpecifications (\s a -> s {_cvcTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvcDryRun :: Lens' CreateVPNConnection (Maybe Bool)
cvcDryRun = lens _cvcDryRun (\s a -> s {_cvcDryRun = a})

-- | The options for the VPN connection.
cvcOptions :: Lens' CreateVPNConnection (Maybe VPNConnectionOptionsSpecification)
cvcOptions = lens _cvcOptions (\s a -> s {_cvcOptions = a})

-- | The ID of the virtual private gateway. If you specify a virtual private gateway, you cannot specify a transit gateway.
cvcVPNGatewayId :: Lens' CreateVPNConnection (Maybe Text)
cvcVPNGatewayId = lens _cvcVPNGatewayId (\s a -> s {_cvcVPNGatewayId = a})

-- | The ID of the transit gateway. If you specify a transit gateway, you cannot specify a virtual private gateway.
cvcTransitGatewayId :: Lens' CreateVPNConnection (Maybe Text)
cvcTransitGatewayId = lens _cvcTransitGatewayId (\s a -> s {_cvcTransitGatewayId = a})

-- | The ID of the customer gateway.
cvcCustomerGatewayId :: Lens' CreateVPNConnection Text
cvcCustomerGatewayId = lens _cvcCustomerGatewayId (\s a -> s {_cvcCustomerGatewayId = a})

-- | The type of VPN connection (@ipsec.1@ ).
cvcType :: Lens' CreateVPNConnection Text
cvcType = lens _cvcType (\s a -> s {_cvcType = a})

instance AWSRequest CreateVPNConnection where
  type
    Rs CreateVPNConnection =
      CreateVPNConnectionResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPNConnectionResponse'
            <$> (x .@? "vpnConnection") <*> (pure (fromEnum s))
      )

instance Hashable CreateVPNConnection

instance NFData CreateVPNConnection

instance ToHeaders CreateVPNConnection where
  toHeaders = const mempty

instance ToPath CreateVPNConnection where
  toPath = const "/"

instance ToQuery CreateVPNConnection where
  toQuery CreateVPNConnection' {..} =
    mconcat
      [ "Action" =: ("CreateVpnConnection" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cvcTagSpecifications
          ),
        "DryRun" =: _cvcDryRun,
        "Options" =: _cvcOptions,
        "VpnGatewayId" =: _cvcVPNGatewayId,
        "TransitGatewayId" =: _cvcTransitGatewayId,
        "CustomerGatewayId" =: _cvcCustomerGatewayId,
        "Type" =: _cvcType
      ]

-- | Contains the output of CreateVpnConnection.
--
--
--
-- /See:/ 'createVPNConnectionResponse' smart constructor.
data CreateVPNConnectionResponse = CreateVPNConnectionResponse'
  { _cvcrrsVPNConnection ::
      !( Maybe
           VPNConnection
       ),
    _cvcrrsResponseStatus ::
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

-- | Creates a value of 'CreateVPNConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvcrrsVPNConnection' - Information about the VPN connection.
--
-- * 'cvcrrsResponseStatus' - -- | The response status code.
createVPNConnectionResponse ::
  -- | 'cvcrrsResponseStatus'
  Int ->
  CreateVPNConnectionResponse
createVPNConnectionResponse pResponseStatus_ =
  CreateVPNConnectionResponse'
    { _cvcrrsVPNConnection =
        Nothing,
      _cvcrrsResponseStatus = pResponseStatus_
    }

-- | Information about the VPN connection.
cvcrrsVPNConnection :: Lens' CreateVPNConnectionResponse (Maybe VPNConnection)
cvcrrsVPNConnection = lens _cvcrrsVPNConnection (\s a -> s {_cvcrrsVPNConnection = a})

-- | -- | The response status code.
cvcrrsResponseStatus :: Lens' CreateVPNConnectionResponse Int
cvcrrsResponseStatus = lens _cvcrrsResponseStatus (\s a -> s {_cvcrrsResponseStatus = a})

instance NFData CreateVPNConnectionResponse

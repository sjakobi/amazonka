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
-- Module      : Network.AWS.EC2.DeleteClientVPNRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a route from a Client VPN endpoint. You can only delete routes that you manually added using the __CreateClientVpnRoute__ action. You cannot delete routes that were automatically added when associating a subnet. To remove routes that have been automatically added, disassociate the target subnet from the Client VPN endpoint.
module Network.AWS.EC2.DeleteClientVPNRoute
  ( -- * Creating a Request
    deleteClientVPNRoute,
    DeleteClientVPNRoute,

    -- * Request Lenses
    dcvpnrDryRun,
    dcvpnrTargetVPCSubnetId,
    dcvpnrClientVPNEndpointId,
    dcvpnrDestinationCidrBlock,

    -- * Destructuring the Response
    deleteClientVPNRouteResponse,
    DeleteClientVPNRouteResponse,

    -- * Response Lenses
    dcvpnrrrsStatus,
    dcvpnrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteClientVPNRoute' smart constructor.
data DeleteClientVPNRoute = DeleteClientVPNRoute'
  { _dcvpnrDryRun ::
      !(Maybe Bool),
    _dcvpnrTargetVPCSubnetId ::
      !(Maybe Text),
    _dcvpnrClientVPNEndpointId ::
      !Text,
    _dcvpnrDestinationCidrBlock ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteClientVPNRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvpnrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvpnrTargetVPCSubnetId' - The ID of the target subnet used by the route.
--
-- * 'dcvpnrClientVPNEndpointId' - The ID of the Client VPN endpoint from which the route is to be deleted.
--
-- * 'dcvpnrDestinationCidrBlock' - The IPv4 address range, in CIDR notation, of the route to be deleted.
deleteClientVPNRoute ::
  -- | 'dcvpnrClientVPNEndpointId'
  Text ->
  -- | 'dcvpnrDestinationCidrBlock'
  Text ->
  DeleteClientVPNRoute
deleteClientVPNRoute
  pClientVPNEndpointId_
  pDestinationCidrBlock_ =
    DeleteClientVPNRoute'
      { _dcvpnrDryRun = Nothing,
        _dcvpnrTargetVPCSubnetId = Nothing,
        _dcvpnrClientVPNEndpointId = pClientVPNEndpointId_,
        _dcvpnrDestinationCidrBlock = pDestinationCidrBlock_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvpnrDryRun :: Lens' DeleteClientVPNRoute (Maybe Bool)
dcvpnrDryRun = lens _dcvpnrDryRun (\s a -> s {_dcvpnrDryRun = a})

-- | The ID of the target subnet used by the route.
dcvpnrTargetVPCSubnetId :: Lens' DeleteClientVPNRoute (Maybe Text)
dcvpnrTargetVPCSubnetId = lens _dcvpnrTargetVPCSubnetId (\s a -> s {_dcvpnrTargetVPCSubnetId = a})

-- | The ID of the Client VPN endpoint from which the route is to be deleted.
dcvpnrClientVPNEndpointId :: Lens' DeleteClientVPNRoute Text
dcvpnrClientVPNEndpointId = lens _dcvpnrClientVPNEndpointId (\s a -> s {_dcvpnrClientVPNEndpointId = a})

-- | The IPv4 address range, in CIDR notation, of the route to be deleted.
dcvpnrDestinationCidrBlock :: Lens' DeleteClientVPNRoute Text
dcvpnrDestinationCidrBlock = lens _dcvpnrDestinationCidrBlock (\s a -> s {_dcvpnrDestinationCidrBlock = a})

instance AWSRequest DeleteClientVPNRoute where
  type
    Rs DeleteClientVPNRoute =
      DeleteClientVPNRouteResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteClientVPNRouteResponse'
            <$> (x .@? "status") <*> (pure (fromEnum s))
      )

instance Hashable DeleteClientVPNRoute

instance NFData DeleteClientVPNRoute

instance ToHeaders DeleteClientVPNRoute where
  toHeaders = const mempty

instance ToPath DeleteClientVPNRoute where
  toPath = const "/"

instance ToQuery DeleteClientVPNRoute where
  toQuery DeleteClientVPNRoute' {..} =
    mconcat
      [ "Action" =: ("DeleteClientVpnRoute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dcvpnrDryRun,
        "TargetVpcSubnetId" =: _dcvpnrTargetVPCSubnetId,
        "ClientVpnEndpointId" =: _dcvpnrClientVPNEndpointId,
        "DestinationCidrBlock"
          =: _dcvpnrDestinationCidrBlock
      ]

-- | /See:/ 'deleteClientVPNRouteResponse' smart constructor.
data DeleteClientVPNRouteResponse = DeleteClientVPNRouteResponse'
  { _dcvpnrrrsStatus ::
      !( Maybe
           ClientVPNRouteStatus
       ),
    _dcvpnrrrsResponseStatus ::
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

-- | Creates a value of 'DeleteClientVPNRouteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvpnrrrsStatus' - The current state of the route.
--
-- * 'dcvpnrrrsResponseStatus' - -- | The response status code.
deleteClientVPNRouteResponse ::
  -- | 'dcvpnrrrsResponseStatus'
  Int ->
  DeleteClientVPNRouteResponse
deleteClientVPNRouteResponse pResponseStatus_ =
  DeleteClientVPNRouteResponse'
    { _dcvpnrrrsStatus =
        Nothing,
      _dcvpnrrrsResponseStatus = pResponseStatus_
    }

-- | The current state of the route.
dcvpnrrrsStatus :: Lens' DeleteClientVPNRouteResponse (Maybe ClientVPNRouteStatus)
dcvpnrrrsStatus = lens _dcvpnrrrsStatus (\s a -> s {_dcvpnrrrsStatus = a})

-- | -- | The response status code.
dcvpnrrrsResponseStatus :: Lens' DeleteClientVPNRouteResponse Int
dcvpnrrrsResponseStatus = lens _dcvpnrrrsResponseStatus (\s a -> s {_dcvpnrrrsResponseStatus = a})

instance NFData DeleteClientVPNRouteResponse

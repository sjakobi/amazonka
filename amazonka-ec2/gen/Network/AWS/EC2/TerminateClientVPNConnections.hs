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
-- Module      : Network.AWS.EC2.TerminateClientVPNConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Terminates active Client VPN endpoint connections. This action can be used to terminate a specific client connection, or up to five connections established by a specific user.
module Network.AWS.EC2.TerminateClientVPNConnections
  ( -- * Creating a Request
    terminateClientVPNConnections,
    TerminateClientVPNConnections,

    -- * Request Lenses
    tcvcDryRun,
    tcvcConnectionId,
    tcvcUsername,
    tcvcClientVPNEndpointId,

    -- * Destructuring the Response
    terminateClientVPNConnectionsResponse,
    TerminateClientVPNConnectionsResponse,

    -- * Response Lenses
    tcvcrrsClientVPNEndpointId,
    tcvcrrsConnectionStatuses,
    tcvcrrsUsername,
    tcvcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'terminateClientVPNConnections' smart constructor.
data TerminateClientVPNConnections = TerminateClientVPNConnections'
  { _tcvcDryRun ::
      !( Maybe
           Bool
       ),
    _tcvcConnectionId ::
      !( Maybe
           Text
       ),
    _tcvcUsername ::
      !( Maybe
           Text
       ),
    _tcvcClientVPNEndpointId ::
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

-- | Creates a value of 'TerminateClientVPNConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcvcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'tcvcConnectionId' - The ID of the client connection to be terminated.
--
-- * 'tcvcUsername' - The name of the user who initiated the connection. Use this option to terminate all active connections for the specified user. This option can only be used if the user has established up to five connections.
--
-- * 'tcvcClientVPNEndpointId' - The ID of the Client VPN endpoint to which the client is connected.
terminateClientVPNConnections ::
  -- | 'tcvcClientVPNEndpointId'
  Text ->
  TerminateClientVPNConnections
terminateClientVPNConnections pClientVPNEndpointId_ =
  TerminateClientVPNConnections'
    { _tcvcDryRun =
        Nothing,
      _tcvcConnectionId = Nothing,
      _tcvcUsername = Nothing,
      _tcvcClientVPNEndpointId =
        pClientVPNEndpointId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
tcvcDryRun :: Lens' TerminateClientVPNConnections (Maybe Bool)
tcvcDryRun = lens _tcvcDryRun (\s a -> s {_tcvcDryRun = a})

-- | The ID of the client connection to be terminated.
tcvcConnectionId :: Lens' TerminateClientVPNConnections (Maybe Text)
tcvcConnectionId = lens _tcvcConnectionId (\s a -> s {_tcvcConnectionId = a})

-- | The name of the user who initiated the connection. Use this option to terminate all active connections for the specified user. This option can only be used if the user has established up to five connections.
tcvcUsername :: Lens' TerminateClientVPNConnections (Maybe Text)
tcvcUsername = lens _tcvcUsername (\s a -> s {_tcvcUsername = a})

-- | The ID of the Client VPN endpoint to which the client is connected.
tcvcClientVPNEndpointId :: Lens' TerminateClientVPNConnections Text
tcvcClientVPNEndpointId = lens _tcvcClientVPNEndpointId (\s a -> s {_tcvcClientVPNEndpointId = a})

instance AWSRequest TerminateClientVPNConnections where
  type
    Rs TerminateClientVPNConnections =
      TerminateClientVPNConnectionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          TerminateClientVPNConnectionsResponse'
            <$> (x .@? "clientVpnEndpointId")
            <*> ( x .@? "connectionStatuses" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "username")
            <*> (pure (fromEnum s))
      )

instance Hashable TerminateClientVPNConnections

instance NFData TerminateClientVPNConnections

instance ToHeaders TerminateClientVPNConnections where
  toHeaders = const mempty

instance ToPath TerminateClientVPNConnections where
  toPath = const "/"

instance ToQuery TerminateClientVPNConnections where
  toQuery TerminateClientVPNConnections' {..} =
    mconcat
      [ "Action"
          =: ("TerminateClientVpnConnections" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _tcvcDryRun,
        "ConnectionId" =: _tcvcConnectionId,
        "Username" =: _tcvcUsername,
        "ClientVpnEndpointId" =: _tcvcClientVPNEndpointId
      ]

-- | /See:/ 'terminateClientVPNConnectionsResponse' smart constructor.
data TerminateClientVPNConnectionsResponse = TerminateClientVPNConnectionsResponse'
  { _tcvcrrsClientVPNEndpointId ::
      !( Maybe
           Text
       ),
    _tcvcrrsConnectionStatuses ::
      !( Maybe
           [TerminateConnectionStatus]
       ),
    _tcvcrrsUsername ::
      !( Maybe
           Text
       ),
    _tcvcrrsResponseStatus ::
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

-- | Creates a value of 'TerminateClientVPNConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcvcrrsClientVPNEndpointId' - The ID of the Client VPN endpoint.
--
-- * 'tcvcrrsConnectionStatuses' - The current state of the client connections.
--
-- * 'tcvcrrsUsername' - The user who established the terminated client connections.
--
-- * 'tcvcrrsResponseStatus' - -- | The response status code.
terminateClientVPNConnectionsResponse ::
  -- | 'tcvcrrsResponseStatus'
  Int ->
  TerminateClientVPNConnectionsResponse
terminateClientVPNConnectionsResponse
  pResponseStatus_ =
    TerminateClientVPNConnectionsResponse'
      { _tcvcrrsClientVPNEndpointId =
          Nothing,
        _tcvcrrsConnectionStatuses = Nothing,
        _tcvcrrsUsername = Nothing,
        _tcvcrrsResponseStatus =
          pResponseStatus_
      }

-- | The ID of the Client VPN endpoint.
tcvcrrsClientVPNEndpointId :: Lens' TerminateClientVPNConnectionsResponse (Maybe Text)
tcvcrrsClientVPNEndpointId = lens _tcvcrrsClientVPNEndpointId (\s a -> s {_tcvcrrsClientVPNEndpointId = a})

-- | The current state of the client connections.
tcvcrrsConnectionStatuses :: Lens' TerminateClientVPNConnectionsResponse [TerminateConnectionStatus]
tcvcrrsConnectionStatuses = lens _tcvcrrsConnectionStatuses (\s a -> s {_tcvcrrsConnectionStatuses = a}) . _Default . _Coerce

-- | The user who established the terminated client connections.
tcvcrrsUsername :: Lens' TerminateClientVPNConnectionsResponse (Maybe Text)
tcvcrrsUsername = lens _tcvcrrsUsername (\s a -> s {_tcvcrrsUsername = a})

-- | -- | The response status code.
tcvcrrsResponseStatus :: Lens' TerminateClientVPNConnectionsResponse Int
tcvcrrsResponseStatus = lens _tcvcrrsResponseStatus (\s a -> s {_tcvcrrsResponseStatus = a})

instance NFData TerminateClientVPNConnectionsResponse

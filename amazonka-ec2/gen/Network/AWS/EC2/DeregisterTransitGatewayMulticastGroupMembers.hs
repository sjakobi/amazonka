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
-- Module      : Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupMembers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified members (network interfaces) from the transit gateway multicast group.
module Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupMembers
  ( -- * Creating a Request
    deregisterTransitGatewayMulticastGroupMembers,
    DeregisterTransitGatewayMulticastGroupMembers,

    -- * Request Lenses
    dtgmgmDryRun,
    dtgmgmTransitGatewayMulticastDomainId,
    dtgmgmNetworkInterfaceIds,
    dtgmgmGroupIPAddress,

    -- * Destructuring the Response
    deregisterTransitGatewayMulticastGroupMembersResponse,
    DeregisterTransitGatewayMulticastGroupMembersResponse,

    -- * Response Lenses
    dtgmgmrrsDeregisteredMulticastGroupMembers,
    dtgmgmrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterTransitGatewayMulticastGroupMembers' smart constructor.
data DeregisterTransitGatewayMulticastGroupMembers = DeregisterTransitGatewayMulticastGroupMembers'
  { _dtgmgmDryRun ::
      !( Maybe
           Bool
       ),
    _dtgmgmTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _dtgmgmNetworkInterfaceIds ::
      !( Maybe
           [Text]
       ),
    _dtgmgmGroupIPAddress ::
      !( Maybe
           Text
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

-- | Creates a value of 'DeregisterTransitGatewayMulticastGroupMembers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmgmDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgmgmTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'dtgmgmNetworkInterfaceIds' - The IDs of the group members' network interfaces.
--
-- * 'dtgmgmGroupIPAddress' - The IP address assigned to the transit gateway multicast group.
deregisterTransitGatewayMulticastGroupMembers ::
  DeregisterTransitGatewayMulticastGroupMembers
deregisterTransitGatewayMulticastGroupMembers =
  DeregisterTransitGatewayMulticastGroupMembers'
    { _dtgmgmDryRun =
        Nothing,
      _dtgmgmTransitGatewayMulticastDomainId =
        Nothing,
      _dtgmgmNetworkInterfaceIds =
        Nothing,
      _dtgmgmGroupIPAddress =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgmgmDryRun :: Lens' DeregisterTransitGatewayMulticastGroupMembers (Maybe Bool)
dtgmgmDryRun = lens _dtgmgmDryRun (\s a -> s {_dtgmgmDryRun = a})

-- | The ID of the transit gateway multicast domain.
dtgmgmTransitGatewayMulticastDomainId :: Lens' DeregisterTransitGatewayMulticastGroupMembers (Maybe Text)
dtgmgmTransitGatewayMulticastDomainId = lens _dtgmgmTransitGatewayMulticastDomainId (\s a -> s {_dtgmgmTransitGatewayMulticastDomainId = a})

-- | The IDs of the group members' network interfaces.
dtgmgmNetworkInterfaceIds :: Lens' DeregisterTransitGatewayMulticastGroupMembers [Text]
dtgmgmNetworkInterfaceIds = lens _dtgmgmNetworkInterfaceIds (\s a -> s {_dtgmgmNetworkInterfaceIds = a}) . _Default . _Coerce

-- | The IP address assigned to the transit gateway multicast group.
dtgmgmGroupIPAddress :: Lens' DeregisterTransitGatewayMulticastGroupMembers (Maybe Text)
dtgmgmGroupIPAddress = lens _dtgmgmGroupIPAddress (\s a -> s {_dtgmgmGroupIPAddress = a})

instance
  AWSRequest
    DeregisterTransitGatewayMulticastGroupMembers
  where
  type
    Rs DeregisterTransitGatewayMulticastGroupMembers =
      DeregisterTransitGatewayMulticastGroupMembersResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeregisterTransitGatewayMulticastGroupMembersResponse'
            <$> (x .@? "deregisteredMulticastGroupMembers")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeregisterTransitGatewayMulticastGroupMembers

instance
  NFData
    DeregisterTransitGatewayMulticastGroupMembers

instance
  ToHeaders
    DeregisterTransitGatewayMulticastGroupMembers
  where
  toHeaders = const mempty

instance
  ToPath
    DeregisterTransitGatewayMulticastGroupMembers
  where
  toPath = const "/"

instance
  ToQuery
    DeregisterTransitGatewayMulticastGroupMembers
  where
  toQuery
    DeregisterTransitGatewayMulticastGroupMembers' {..} =
      mconcat
        [ "Action"
            =: ( "DeregisterTransitGatewayMulticastGroupMembers" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _dtgmgmDryRun,
          "TransitGatewayMulticastDomainId"
            =: _dtgmgmTransitGatewayMulticastDomainId,
          toQuery
            ( toQueryList "NetworkInterfaceIds"
                <$> _dtgmgmNetworkInterfaceIds
            ),
          "GroupIpAddress" =: _dtgmgmGroupIPAddress
        ]

-- | /See:/ 'deregisterTransitGatewayMulticastGroupMembersResponse' smart constructor.
data DeregisterTransitGatewayMulticastGroupMembersResponse = DeregisterTransitGatewayMulticastGroupMembersResponse'
  { _dtgmgmrrsDeregisteredMulticastGroupMembers ::
      !( Maybe
           TransitGatewayMulticastDeregisteredGroupMembers
       ),
    _dtgmgmrrsResponseStatus ::
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

-- | Creates a value of 'DeregisterTransitGatewayMulticastGroupMembersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmgmrrsDeregisteredMulticastGroupMembers' - Information about the deregistered members.
--
-- * 'dtgmgmrrsResponseStatus' - -- | The response status code.
deregisterTransitGatewayMulticastGroupMembersResponse ::
  -- | 'dtgmgmrrsResponseStatus'
  Int ->
  DeregisterTransitGatewayMulticastGroupMembersResponse
deregisterTransitGatewayMulticastGroupMembersResponse
  pResponseStatus_ =
    DeregisterTransitGatewayMulticastGroupMembersResponse'
      { _dtgmgmrrsDeregisteredMulticastGroupMembers =
          Nothing,
        _dtgmgmrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the deregistered members.
dtgmgmrrsDeregisteredMulticastGroupMembers :: Lens' DeregisterTransitGatewayMulticastGroupMembersResponse (Maybe TransitGatewayMulticastDeregisteredGroupMembers)
dtgmgmrrsDeregisteredMulticastGroupMembers = lens _dtgmgmrrsDeregisteredMulticastGroupMembers (\s a -> s {_dtgmgmrrsDeregisteredMulticastGroupMembers = a})

-- | -- | The response status code.
dtgmgmrrsResponseStatus :: Lens' DeregisterTransitGatewayMulticastGroupMembersResponse Int
dtgmgmrrsResponseStatus = lens _dtgmgmrrsResponseStatus (\s a -> s {_dtgmgmrrsResponseStatus = a})

instance
  NFData
    DeregisterTransitGatewayMulticastGroupMembersResponse

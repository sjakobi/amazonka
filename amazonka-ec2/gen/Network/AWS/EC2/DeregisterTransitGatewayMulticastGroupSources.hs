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
-- Module      : Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified sources (network interfaces) from the transit gateway multicast group.
module Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupSources
  ( -- * Creating a Request
    deregisterTransitGatewayMulticastGroupSources,
    DeregisterTransitGatewayMulticastGroupSources,

    -- * Request Lenses
    dtgmgsDryRun,
    dtgmgsTransitGatewayMulticastDomainId,
    dtgmgsNetworkInterfaceIds,
    dtgmgsGroupIPAddress,

    -- * Destructuring the Response
    deregisterTransitGatewayMulticastGroupSourcesResponse,
    DeregisterTransitGatewayMulticastGroupSourcesResponse,

    -- * Response Lenses
    dtgmgsrrsDeregisteredMulticastGroupSources,
    dtgmgsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterTransitGatewayMulticastGroupSources' smart constructor.
data DeregisterTransitGatewayMulticastGroupSources = DeregisterTransitGatewayMulticastGroupSources'
  { _dtgmgsDryRun ::
      !( Maybe
           Bool
       ),
    _dtgmgsTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _dtgmgsNetworkInterfaceIds ::
      !( Maybe
           [Text]
       ),
    _dtgmgsGroupIPAddress ::
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

-- | Creates a value of 'DeregisterTransitGatewayMulticastGroupSources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmgsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgmgsTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'dtgmgsNetworkInterfaceIds' - The IDs of the group sources' network interfaces.
--
-- * 'dtgmgsGroupIPAddress' - The IP address assigned to the transit gateway multicast group.
deregisterTransitGatewayMulticastGroupSources ::
  DeregisterTransitGatewayMulticastGroupSources
deregisterTransitGatewayMulticastGroupSources =
  DeregisterTransitGatewayMulticastGroupSources'
    { _dtgmgsDryRun =
        Nothing,
      _dtgmgsTransitGatewayMulticastDomainId =
        Nothing,
      _dtgmgsNetworkInterfaceIds =
        Nothing,
      _dtgmgsGroupIPAddress =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgmgsDryRun :: Lens' DeregisterTransitGatewayMulticastGroupSources (Maybe Bool)
dtgmgsDryRun = lens _dtgmgsDryRun (\s a -> s {_dtgmgsDryRun = a})

-- | The ID of the transit gateway multicast domain.
dtgmgsTransitGatewayMulticastDomainId :: Lens' DeregisterTransitGatewayMulticastGroupSources (Maybe Text)
dtgmgsTransitGatewayMulticastDomainId = lens _dtgmgsTransitGatewayMulticastDomainId (\s a -> s {_dtgmgsTransitGatewayMulticastDomainId = a})

-- | The IDs of the group sources' network interfaces.
dtgmgsNetworkInterfaceIds :: Lens' DeregisterTransitGatewayMulticastGroupSources [Text]
dtgmgsNetworkInterfaceIds = lens _dtgmgsNetworkInterfaceIds (\s a -> s {_dtgmgsNetworkInterfaceIds = a}) . _Default . _Coerce

-- | The IP address assigned to the transit gateway multicast group.
dtgmgsGroupIPAddress :: Lens' DeregisterTransitGatewayMulticastGroupSources (Maybe Text)
dtgmgsGroupIPAddress = lens _dtgmgsGroupIPAddress (\s a -> s {_dtgmgsGroupIPAddress = a})

instance
  AWSRequest
    DeregisterTransitGatewayMulticastGroupSources
  where
  type
    Rs DeregisterTransitGatewayMulticastGroupSources =
      DeregisterTransitGatewayMulticastGroupSourcesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeregisterTransitGatewayMulticastGroupSourcesResponse'
            <$> (x .@? "deregisteredMulticastGroupSources")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeregisterTransitGatewayMulticastGroupSources

instance
  NFData
    DeregisterTransitGatewayMulticastGroupSources

instance
  ToHeaders
    DeregisterTransitGatewayMulticastGroupSources
  where
  toHeaders = const mempty

instance
  ToPath
    DeregisterTransitGatewayMulticastGroupSources
  where
  toPath = const "/"

instance
  ToQuery
    DeregisterTransitGatewayMulticastGroupSources
  where
  toQuery
    DeregisterTransitGatewayMulticastGroupSources' {..} =
      mconcat
        [ "Action"
            =: ( "DeregisterTransitGatewayMulticastGroupSources" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _dtgmgsDryRun,
          "TransitGatewayMulticastDomainId"
            =: _dtgmgsTransitGatewayMulticastDomainId,
          toQuery
            ( toQueryList "NetworkInterfaceIds"
                <$> _dtgmgsNetworkInterfaceIds
            ),
          "GroupIpAddress" =: _dtgmgsGroupIPAddress
        ]

-- | /See:/ 'deregisterTransitGatewayMulticastGroupSourcesResponse' smart constructor.
data DeregisterTransitGatewayMulticastGroupSourcesResponse = DeregisterTransitGatewayMulticastGroupSourcesResponse'
  { _dtgmgsrrsDeregisteredMulticastGroupSources ::
      !( Maybe
           TransitGatewayMulticastDeregisteredGroupSources
       ),
    _dtgmgsrrsResponseStatus ::
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

-- | Creates a value of 'DeregisterTransitGatewayMulticastGroupSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgmgsrrsDeregisteredMulticastGroupSources' - Information about the deregistered group sources.
--
-- * 'dtgmgsrrsResponseStatus' - -- | The response status code.
deregisterTransitGatewayMulticastGroupSourcesResponse ::
  -- | 'dtgmgsrrsResponseStatus'
  Int ->
  DeregisterTransitGatewayMulticastGroupSourcesResponse
deregisterTransitGatewayMulticastGroupSourcesResponse
  pResponseStatus_ =
    DeregisterTransitGatewayMulticastGroupSourcesResponse'
      { _dtgmgsrrsDeregisteredMulticastGroupSources =
          Nothing,
        _dtgmgsrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the deregistered group sources.
dtgmgsrrsDeregisteredMulticastGroupSources :: Lens' DeregisterTransitGatewayMulticastGroupSourcesResponse (Maybe TransitGatewayMulticastDeregisteredGroupSources)
dtgmgsrrsDeregisteredMulticastGroupSources = lens _dtgmgsrrsDeregisteredMulticastGroupSources (\s a -> s {_dtgmgsrrsDeregisteredMulticastGroupSources = a})

-- | -- | The response status code.
dtgmgsrrsResponseStatus :: Lens' DeregisterTransitGatewayMulticastGroupSourcesResponse Int
dtgmgsrrsResponseStatus = lens _dtgmgsrrsResponseStatus (\s a -> s {_dtgmgsrrsResponseStatus = a})

instance
  NFData
    DeregisterTransitGatewayMulticastGroupSourcesResponse

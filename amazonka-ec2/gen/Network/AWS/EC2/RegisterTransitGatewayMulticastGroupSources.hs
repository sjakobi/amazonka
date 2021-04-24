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
-- Module      : Network.AWS.EC2.RegisterTransitGatewayMulticastGroupSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers sources (network interfaces) with the specified transit gateway multicast group.
--
--
-- A multicast source is a network interface attached to a supported instance that sends multicast traffic. For information about supported instances, see <https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits Multicast Considerations> in /Amazon VPC Transit Gateways/ .
--
-- After you add the source, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html SearchTransitGatewayMulticastGroups> to verify that the source was added to the multicast group.
module Network.AWS.EC2.RegisterTransitGatewayMulticastGroupSources
  ( -- * Creating a Request
    registerTransitGatewayMulticastGroupSources,
    RegisterTransitGatewayMulticastGroupSources,

    -- * Request Lenses
    rtgmgsDryRun,
    rtgmgsTransitGatewayMulticastDomainId,
    rtgmgsNetworkInterfaceIds,
    rtgmgsGroupIPAddress,

    -- * Destructuring the Response
    registerTransitGatewayMulticastGroupSourcesResponse,
    RegisterTransitGatewayMulticastGroupSourcesResponse,

    -- * Response Lenses
    rtgmgsrrsRegisteredMulticastGroupSources,
    rtgmgsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'registerTransitGatewayMulticastGroupSources' smart constructor.
data RegisterTransitGatewayMulticastGroupSources = RegisterTransitGatewayMulticastGroupSources'
  { _rtgmgsDryRun ::
      !( Maybe
           Bool
       ),
    _rtgmgsTransitGatewayMulticastDomainId ::
      !( Maybe
           Text
       ),
    _rtgmgsNetworkInterfaceIds ::
      !( Maybe
           [Text]
       ),
    _rtgmgsGroupIPAddress ::
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

-- | Creates a value of 'RegisterTransitGatewayMulticastGroupSources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtgmgsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rtgmgsTransitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- * 'rtgmgsNetworkInterfaceIds' - The group sources' network interface IDs to register with the transit gateway multicast group.
--
-- * 'rtgmgsGroupIPAddress' - The IP address assigned to the transit gateway multicast group.
registerTransitGatewayMulticastGroupSources ::
  RegisterTransitGatewayMulticastGroupSources
registerTransitGatewayMulticastGroupSources =
  RegisterTransitGatewayMulticastGroupSources'
    { _rtgmgsDryRun =
        Nothing,
      _rtgmgsTransitGatewayMulticastDomainId =
        Nothing,
      _rtgmgsNetworkInterfaceIds =
        Nothing,
      _rtgmgsGroupIPAddress =
        Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rtgmgsDryRun :: Lens' RegisterTransitGatewayMulticastGroupSources (Maybe Bool)
rtgmgsDryRun = lens _rtgmgsDryRun (\s a -> s {_rtgmgsDryRun = a})

-- | The ID of the transit gateway multicast domain.
rtgmgsTransitGatewayMulticastDomainId :: Lens' RegisterTransitGatewayMulticastGroupSources (Maybe Text)
rtgmgsTransitGatewayMulticastDomainId = lens _rtgmgsTransitGatewayMulticastDomainId (\s a -> s {_rtgmgsTransitGatewayMulticastDomainId = a})

-- | The group sources' network interface IDs to register with the transit gateway multicast group.
rtgmgsNetworkInterfaceIds :: Lens' RegisterTransitGatewayMulticastGroupSources [Text]
rtgmgsNetworkInterfaceIds = lens _rtgmgsNetworkInterfaceIds (\s a -> s {_rtgmgsNetworkInterfaceIds = a}) . _Default . _Coerce

-- | The IP address assigned to the transit gateway multicast group.
rtgmgsGroupIPAddress :: Lens' RegisterTransitGatewayMulticastGroupSources (Maybe Text)
rtgmgsGroupIPAddress = lens _rtgmgsGroupIPAddress (\s a -> s {_rtgmgsGroupIPAddress = a})

instance
  AWSRequest
    RegisterTransitGatewayMulticastGroupSources
  where
  type
    Rs RegisterTransitGatewayMulticastGroupSources =
      RegisterTransitGatewayMulticastGroupSourcesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          RegisterTransitGatewayMulticastGroupSourcesResponse'
            <$> (x .@? "registeredMulticastGroupSources")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    RegisterTransitGatewayMulticastGroupSources

instance
  NFData
    RegisterTransitGatewayMulticastGroupSources

instance
  ToHeaders
    RegisterTransitGatewayMulticastGroupSources
  where
  toHeaders = const mempty

instance
  ToPath
    RegisterTransitGatewayMulticastGroupSources
  where
  toPath = const "/"

instance
  ToQuery
    RegisterTransitGatewayMulticastGroupSources
  where
  toQuery
    RegisterTransitGatewayMulticastGroupSources' {..} =
      mconcat
        [ "Action"
            =: ( "RegisterTransitGatewayMulticastGroupSources" ::
                   ByteString
               ),
          "Version" =: ("2016-11-15" :: ByteString),
          "DryRun" =: _rtgmgsDryRun,
          "TransitGatewayMulticastDomainId"
            =: _rtgmgsTransitGatewayMulticastDomainId,
          toQuery
            ( toQueryList "NetworkInterfaceIds"
                <$> _rtgmgsNetworkInterfaceIds
            ),
          "GroupIpAddress" =: _rtgmgsGroupIPAddress
        ]

-- | /See:/ 'registerTransitGatewayMulticastGroupSourcesResponse' smart constructor.
data RegisterTransitGatewayMulticastGroupSourcesResponse = RegisterTransitGatewayMulticastGroupSourcesResponse'
  { _rtgmgsrrsRegisteredMulticastGroupSources ::
      !( Maybe
           TransitGatewayMulticastRegisteredGroupSources
       ),
    _rtgmgsrrsResponseStatus ::
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

-- | Creates a value of 'RegisterTransitGatewayMulticastGroupSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtgmgsrrsRegisteredMulticastGroupSources' - Information about the transit gateway multicast group sources.
--
-- * 'rtgmgsrrsResponseStatus' - -- | The response status code.
registerTransitGatewayMulticastGroupSourcesResponse ::
  -- | 'rtgmgsrrsResponseStatus'
  Int ->
  RegisterTransitGatewayMulticastGroupSourcesResponse
registerTransitGatewayMulticastGroupSourcesResponse
  pResponseStatus_ =
    RegisterTransitGatewayMulticastGroupSourcesResponse'
      { _rtgmgsrrsRegisteredMulticastGroupSources =
          Nothing,
        _rtgmgsrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the transit gateway multicast group sources.
rtgmgsrrsRegisteredMulticastGroupSources :: Lens' RegisterTransitGatewayMulticastGroupSourcesResponse (Maybe TransitGatewayMulticastRegisteredGroupSources)
rtgmgsrrsRegisteredMulticastGroupSources = lens _rtgmgsrrsRegisteredMulticastGroupSources (\s a -> s {_rtgmgsrrsRegisteredMulticastGroupSources = a})

-- | -- | The response status code.
rtgmgsrrsResponseStatus :: Lens' RegisterTransitGatewayMulticastGroupSourcesResponse Int
rtgmgsrrsResponseStatus = lens _rtgmgsrrsResponseStatus (\s a -> s {_rtgmgsrrsResponseStatus = a})

instance
  NFData
    RegisterTransitGatewayMulticastGroupSourcesResponse

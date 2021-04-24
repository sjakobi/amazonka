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
-- Module      : Network.AWS.EC2.ReplaceTransitGatewayRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the specified route in the specified transit gateway route table.
module Network.AWS.EC2.ReplaceTransitGatewayRoute
  ( -- * Creating a Request
    replaceTransitGatewayRoute,
    ReplaceTransitGatewayRoute,

    -- * Request Lenses
    rtgrDryRun,
    rtgrBlackhole,
    rtgrTransitGatewayAttachmentId,
    rtgrDestinationCidrBlock,
    rtgrTransitGatewayRouteTableId,

    -- * Destructuring the Response
    replaceTransitGatewayRouteResponse,
    ReplaceTransitGatewayRouteResponse,

    -- * Response Lenses
    rtgrrrsRoute,
    rtgrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'replaceTransitGatewayRoute' smart constructor.
data ReplaceTransitGatewayRoute = ReplaceTransitGatewayRoute'
  { _rtgrDryRun ::
      !(Maybe Bool),
    _rtgrBlackhole ::
      !(Maybe Bool),
    _rtgrTransitGatewayAttachmentId ::
      !(Maybe Text),
    _rtgrDestinationCidrBlock ::
      !Text,
    _rtgrTransitGatewayRouteTableId ::
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

-- | Creates a value of 'ReplaceTransitGatewayRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtgrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rtgrBlackhole' - Indicates whether traffic matching this route is to be dropped.
--
-- * 'rtgrTransitGatewayAttachmentId' - The ID of the attachment.
--
-- * 'rtgrDestinationCidrBlock' - The CIDR range used for the destination match. Routing decisions are based on the most specific match.
--
-- * 'rtgrTransitGatewayRouteTableId' - The ID of the route table.
replaceTransitGatewayRoute ::
  -- | 'rtgrDestinationCidrBlock'
  Text ->
  -- | 'rtgrTransitGatewayRouteTableId'
  Text ->
  ReplaceTransitGatewayRoute
replaceTransitGatewayRoute
  pDestinationCidrBlock_
  pTransitGatewayRouteTableId_ =
    ReplaceTransitGatewayRoute'
      { _rtgrDryRun = Nothing,
        _rtgrBlackhole = Nothing,
        _rtgrTransitGatewayAttachmentId = Nothing,
        _rtgrDestinationCidrBlock =
          pDestinationCidrBlock_,
        _rtgrTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rtgrDryRun :: Lens' ReplaceTransitGatewayRoute (Maybe Bool)
rtgrDryRun = lens _rtgrDryRun (\s a -> s {_rtgrDryRun = a})

-- | Indicates whether traffic matching this route is to be dropped.
rtgrBlackhole :: Lens' ReplaceTransitGatewayRoute (Maybe Bool)
rtgrBlackhole = lens _rtgrBlackhole (\s a -> s {_rtgrBlackhole = a})

-- | The ID of the attachment.
rtgrTransitGatewayAttachmentId :: Lens' ReplaceTransitGatewayRoute (Maybe Text)
rtgrTransitGatewayAttachmentId = lens _rtgrTransitGatewayAttachmentId (\s a -> s {_rtgrTransitGatewayAttachmentId = a})

-- | The CIDR range used for the destination match. Routing decisions are based on the most specific match.
rtgrDestinationCidrBlock :: Lens' ReplaceTransitGatewayRoute Text
rtgrDestinationCidrBlock = lens _rtgrDestinationCidrBlock (\s a -> s {_rtgrDestinationCidrBlock = a})

-- | The ID of the route table.
rtgrTransitGatewayRouteTableId :: Lens' ReplaceTransitGatewayRoute Text
rtgrTransitGatewayRouteTableId = lens _rtgrTransitGatewayRouteTableId (\s a -> s {_rtgrTransitGatewayRouteTableId = a})

instance AWSRequest ReplaceTransitGatewayRoute where
  type
    Rs ReplaceTransitGatewayRoute =
      ReplaceTransitGatewayRouteResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ReplaceTransitGatewayRouteResponse'
            <$> (x .@? "route") <*> (pure (fromEnum s))
      )

instance Hashable ReplaceTransitGatewayRoute

instance NFData ReplaceTransitGatewayRoute

instance ToHeaders ReplaceTransitGatewayRoute where
  toHeaders = const mempty

instance ToPath ReplaceTransitGatewayRoute where
  toPath = const "/"

instance ToQuery ReplaceTransitGatewayRoute where
  toQuery ReplaceTransitGatewayRoute' {..} =
    mconcat
      [ "Action"
          =: ("ReplaceTransitGatewayRoute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _rtgrDryRun,
        "Blackhole" =: _rtgrBlackhole,
        "TransitGatewayAttachmentId"
          =: _rtgrTransitGatewayAttachmentId,
        "DestinationCidrBlock" =: _rtgrDestinationCidrBlock,
        "TransitGatewayRouteTableId"
          =: _rtgrTransitGatewayRouteTableId
      ]

-- | /See:/ 'replaceTransitGatewayRouteResponse' smart constructor.
data ReplaceTransitGatewayRouteResponse = ReplaceTransitGatewayRouteResponse'
  { _rtgrrrsRoute ::
      !( Maybe
           TransitGatewayRoute
       ),
    _rtgrrrsResponseStatus ::
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

-- | Creates a value of 'ReplaceTransitGatewayRouteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtgrrrsRoute' - Information about the modified route.
--
-- * 'rtgrrrsResponseStatus' - -- | The response status code.
replaceTransitGatewayRouteResponse ::
  -- | 'rtgrrrsResponseStatus'
  Int ->
  ReplaceTransitGatewayRouteResponse
replaceTransitGatewayRouteResponse pResponseStatus_ =
  ReplaceTransitGatewayRouteResponse'
    { _rtgrrrsRoute =
        Nothing,
      _rtgrrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the modified route.
rtgrrrsRoute :: Lens' ReplaceTransitGatewayRouteResponse (Maybe TransitGatewayRoute)
rtgrrrsRoute = lens _rtgrrrsRoute (\s a -> s {_rtgrrrsRoute = a})

-- | -- | The response status code.
rtgrrrsResponseStatus :: Lens' ReplaceTransitGatewayRouteResponse Int
rtgrrrsResponseStatus = lens _rtgrrrsResponseStatus (\s a -> s {_rtgrrrsResponseStatus = a})

instance NFData ReplaceTransitGatewayRouteResponse

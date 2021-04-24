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
-- Module      : Network.AWS.EC2.CreateTransitGatewayRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a static route for the specified transit gateway route table.
module Network.AWS.EC2.CreateTransitGatewayRoute
  ( -- * Creating a Request
    createTransitGatewayRoute,
    CreateTransitGatewayRoute,

    -- * Request Lenses
    ctgrDryRun,
    ctgrBlackhole,
    ctgrTransitGatewayAttachmentId,
    ctgrDestinationCidrBlock,
    ctgrTransitGatewayRouteTableId,

    -- * Destructuring the Response
    createTransitGatewayRouteResponse,
    CreateTransitGatewayRouteResponse,

    -- * Response Lenses
    ctgrrrsRoute,
    ctgrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTransitGatewayRoute' smart constructor.
data CreateTransitGatewayRoute = CreateTransitGatewayRoute'
  { _ctgrDryRun ::
      !(Maybe Bool),
    _ctgrBlackhole ::
      !(Maybe Bool),
    _ctgrTransitGatewayAttachmentId ::
      !(Maybe Text),
    _ctgrDestinationCidrBlock ::
      !Text,
    _ctgrTransitGatewayRouteTableId ::
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

-- | Creates a value of 'CreateTransitGatewayRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ctgrBlackhole' - Indicates whether to drop traffic that matches this route.
--
-- * 'ctgrTransitGatewayAttachmentId' - The ID of the attachment.
--
-- * 'ctgrDestinationCidrBlock' - The CIDR range used for destination matches. Routing decisions are based on the most specific match.
--
-- * 'ctgrTransitGatewayRouteTableId' - The ID of the transit gateway route table.
createTransitGatewayRoute ::
  -- | 'ctgrDestinationCidrBlock'
  Text ->
  -- | 'ctgrTransitGatewayRouteTableId'
  Text ->
  CreateTransitGatewayRoute
createTransitGatewayRoute
  pDestinationCidrBlock_
  pTransitGatewayRouteTableId_ =
    CreateTransitGatewayRoute'
      { _ctgrDryRun = Nothing,
        _ctgrBlackhole = Nothing,
        _ctgrTransitGatewayAttachmentId = Nothing,
        _ctgrDestinationCidrBlock =
          pDestinationCidrBlock_,
        _ctgrTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ctgrDryRun :: Lens' CreateTransitGatewayRoute (Maybe Bool)
ctgrDryRun = lens _ctgrDryRun (\s a -> s {_ctgrDryRun = a})

-- | Indicates whether to drop traffic that matches this route.
ctgrBlackhole :: Lens' CreateTransitGatewayRoute (Maybe Bool)
ctgrBlackhole = lens _ctgrBlackhole (\s a -> s {_ctgrBlackhole = a})

-- | The ID of the attachment.
ctgrTransitGatewayAttachmentId :: Lens' CreateTransitGatewayRoute (Maybe Text)
ctgrTransitGatewayAttachmentId = lens _ctgrTransitGatewayAttachmentId (\s a -> s {_ctgrTransitGatewayAttachmentId = a})

-- | The CIDR range used for destination matches. Routing decisions are based on the most specific match.
ctgrDestinationCidrBlock :: Lens' CreateTransitGatewayRoute Text
ctgrDestinationCidrBlock = lens _ctgrDestinationCidrBlock (\s a -> s {_ctgrDestinationCidrBlock = a})

-- | The ID of the transit gateway route table.
ctgrTransitGatewayRouteTableId :: Lens' CreateTransitGatewayRoute Text
ctgrTransitGatewayRouteTableId = lens _ctgrTransitGatewayRouteTableId (\s a -> s {_ctgrTransitGatewayRouteTableId = a})

instance AWSRequest CreateTransitGatewayRoute where
  type
    Rs CreateTransitGatewayRoute =
      CreateTransitGatewayRouteResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateTransitGatewayRouteResponse'
            <$> (x .@? "route") <*> (pure (fromEnum s))
      )

instance Hashable CreateTransitGatewayRoute

instance NFData CreateTransitGatewayRoute

instance ToHeaders CreateTransitGatewayRoute where
  toHeaders = const mempty

instance ToPath CreateTransitGatewayRoute where
  toPath = const "/"

instance ToQuery CreateTransitGatewayRoute where
  toQuery CreateTransitGatewayRoute' {..} =
    mconcat
      [ "Action"
          =: ("CreateTransitGatewayRoute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _ctgrDryRun,
        "Blackhole" =: _ctgrBlackhole,
        "TransitGatewayAttachmentId"
          =: _ctgrTransitGatewayAttachmentId,
        "DestinationCidrBlock" =: _ctgrDestinationCidrBlock,
        "TransitGatewayRouteTableId"
          =: _ctgrTransitGatewayRouteTableId
      ]

-- | /See:/ 'createTransitGatewayRouteResponse' smart constructor.
data CreateTransitGatewayRouteResponse = CreateTransitGatewayRouteResponse'
  { _ctgrrrsRoute ::
      !( Maybe
           TransitGatewayRoute
       ),
    _ctgrrrsResponseStatus ::
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

-- | Creates a value of 'CreateTransitGatewayRouteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgrrrsRoute' - Information about the route.
--
-- * 'ctgrrrsResponseStatus' - -- | The response status code.
createTransitGatewayRouteResponse ::
  -- | 'ctgrrrsResponseStatus'
  Int ->
  CreateTransitGatewayRouteResponse
createTransitGatewayRouteResponse pResponseStatus_ =
  CreateTransitGatewayRouteResponse'
    { _ctgrrrsRoute =
        Nothing,
      _ctgrrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the route.
ctgrrrsRoute :: Lens' CreateTransitGatewayRouteResponse (Maybe TransitGatewayRoute)
ctgrrrsRoute = lens _ctgrrrsRoute (\s a -> s {_ctgrrrsRoute = a})

-- | -- | The response status code.
ctgrrrsResponseStatus :: Lens' CreateTransitGatewayRouteResponse Int
ctgrrrsResponseStatus = lens _ctgrrrsResponseStatus (\s a -> s {_ctgrrrsResponseStatus = a})

instance NFData CreateTransitGatewayRouteResponse

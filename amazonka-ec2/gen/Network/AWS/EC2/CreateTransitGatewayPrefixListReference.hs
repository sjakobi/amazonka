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
-- Module      : Network.AWS.EC2.CreateTransitGatewayPrefixListReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a reference (route) to a prefix list in a specified transit gateway route table.
module Network.AWS.EC2.CreateTransitGatewayPrefixListReference
  ( -- * Creating a Request
    createTransitGatewayPrefixListReference,
    CreateTransitGatewayPrefixListReference,

    -- * Request Lenses
    ctgplrDryRun,
    ctgplrBlackhole,
    ctgplrTransitGatewayAttachmentId,
    ctgplrTransitGatewayRouteTableId,
    ctgplrPrefixListId,

    -- * Destructuring the Response
    createTransitGatewayPrefixListReferenceResponse,
    CreateTransitGatewayPrefixListReferenceResponse,

    -- * Response Lenses
    ctgplrrrsTransitGatewayPrefixListReference,
    ctgplrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTransitGatewayPrefixListReference' smart constructor.
data CreateTransitGatewayPrefixListReference = CreateTransitGatewayPrefixListReference'
  { _ctgplrDryRun ::
      !( Maybe
           Bool
       ),
    _ctgplrBlackhole ::
      !( Maybe
           Bool
       ),
    _ctgplrTransitGatewayAttachmentId ::
      !( Maybe
           Text
       ),
    _ctgplrTransitGatewayRouteTableId ::
      !Text,
    _ctgplrPrefixListId ::
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

-- | Creates a value of 'CreateTransitGatewayPrefixListReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgplrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ctgplrBlackhole' - Indicates whether to drop traffic that matches this route.
--
-- * 'ctgplrTransitGatewayAttachmentId' - The ID of the attachment to which traffic is routed.
--
-- * 'ctgplrTransitGatewayRouteTableId' - The ID of the transit gateway route table.
--
-- * 'ctgplrPrefixListId' - The ID of the prefix list that is used for destination matches.
createTransitGatewayPrefixListReference ::
  -- | 'ctgplrTransitGatewayRouteTableId'
  Text ->
  -- | 'ctgplrPrefixListId'
  Text ->
  CreateTransitGatewayPrefixListReference
createTransitGatewayPrefixListReference
  pTransitGatewayRouteTableId_
  pPrefixListId_ =
    CreateTransitGatewayPrefixListReference'
      { _ctgplrDryRun =
          Nothing,
        _ctgplrBlackhole = Nothing,
        _ctgplrTransitGatewayAttachmentId =
          Nothing,
        _ctgplrTransitGatewayRouteTableId =
          pTransitGatewayRouteTableId_,
        _ctgplrPrefixListId =
          pPrefixListId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ctgplrDryRun :: Lens' CreateTransitGatewayPrefixListReference (Maybe Bool)
ctgplrDryRun = lens _ctgplrDryRun (\s a -> s {_ctgplrDryRun = a})

-- | Indicates whether to drop traffic that matches this route.
ctgplrBlackhole :: Lens' CreateTransitGatewayPrefixListReference (Maybe Bool)
ctgplrBlackhole = lens _ctgplrBlackhole (\s a -> s {_ctgplrBlackhole = a})

-- | The ID of the attachment to which traffic is routed.
ctgplrTransitGatewayAttachmentId :: Lens' CreateTransitGatewayPrefixListReference (Maybe Text)
ctgplrTransitGatewayAttachmentId = lens _ctgplrTransitGatewayAttachmentId (\s a -> s {_ctgplrTransitGatewayAttachmentId = a})

-- | The ID of the transit gateway route table.
ctgplrTransitGatewayRouteTableId :: Lens' CreateTransitGatewayPrefixListReference Text
ctgplrTransitGatewayRouteTableId = lens _ctgplrTransitGatewayRouteTableId (\s a -> s {_ctgplrTransitGatewayRouteTableId = a})

-- | The ID of the prefix list that is used for destination matches.
ctgplrPrefixListId :: Lens' CreateTransitGatewayPrefixListReference Text
ctgplrPrefixListId = lens _ctgplrPrefixListId (\s a -> s {_ctgplrPrefixListId = a})

instance
  AWSRequest
    CreateTransitGatewayPrefixListReference
  where
  type
    Rs CreateTransitGatewayPrefixListReference =
      CreateTransitGatewayPrefixListReferenceResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateTransitGatewayPrefixListReferenceResponse'
            <$> (x .@? "transitGatewayPrefixListReference")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateTransitGatewayPrefixListReference

instance
  NFData
    CreateTransitGatewayPrefixListReference

instance
  ToHeaders
    CreateTransitGatewayPrefixListReference
  where
  toHeaders = const mempty

instance
  ToPath
    CreateTransitGatewayPrefixListReference
  where
  toPath = const "/"

instance
  ToQuery
    CreateTransitGatewayPrefixListReference
  where
  toQuery CreateTransitGatewayPrefixListReference' {..} =
    mconcat
      [ "Action"
          =: ( "CreateTransitGatewayPrefixListReference" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _ctgplrDryRun,
        "Blackhole" =: _ctgplrBlackhole,
        "TransitGatewayAttachmentId"
          =: _ctgplrTransitGatewayAttachmentId,
        "TransitGatewayRouteTableId"
          =: _ctgplrTransitGatewayRouteTableId,
        "PrefixListId" =: _ctgplrPrefixListId
      ]

-- | /See:/ 'createTransitGatewayPrefixListReferenceResponse' smart constructor.
data CreateTransitGatewayPrefixListReferenceResponse = CreateTransitGatewayPrefixListReferenceResponse'
  { _ctgplrrrsTransitGatewayPrefixListReference ::
      !( Maybe
           TransitGatewayPrefixListReference
       ),
    _ctgplrrrsResponseStatus ::
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

-- | Creates a value of 'CreateTransitGatewayPrefixListReferenceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgplrrrsTransitGatewayPrefixListReference' - Information about the prefix list reference.
--
-- * 'ctgplrrrsResponseStatus' - -- | The response status code.
createTransitGatewayPrefixListReferenceResponse ::
  -- | 'ctgplrrrsResponseStatus'
  Int ->
  CreateTransitGatewayPrefixListReferenceResponse
createTransitGatewayPrefixListReferenceResponse
  pResponseStatus_ =
    CreateTransitGatewayPrefixListReferenceResponse'
      { _ctgplrrrsTransitGatewayPrefixListReference =
          Nothing,
        _ctgplrrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the prefix list reference.
ctgplrrrsTransitGatewayPrefixListReference :: Lens' CreateTransitGatewayPrefixListReferenceResponse (Maybe TransitGatewayPrefixListReference)
ctgplrrrsTransitGatewayPrefixListReference = lens _ctgplrrrsTransitGatewayPrefixListReference (\s a -> s {_ctgplrrrsTransitGatewayPrefixListReference = a})

-- | -- | The response status code.
ctgplrrrsResponseStatus :: Lens' CreateTransitGatewayPrefixListReferenceResponse Int
ctgplrrrsResponseStatus = lens _ctgplrrrsResponseStatus (\s a -> s {_ctgplrrrsResponseStatus = a})

instance
  NFData
    CreateTransitGatewayPrefixListReferenceResponse

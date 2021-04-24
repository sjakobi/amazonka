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
-- Module      : Network.AWS.EC2.DeleteTransitGatewayConnectPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Connect peer.
module Network.AWS.EC2.DeleteTransitGatewayConnectPeer
  ( -- * Creating a Request
    deleteTransitGatewayConnectPeer,
    DeleteTransitGatewayConnectPeer,

    -- * Request Lenses
    dtgcptDryRun,
    dtgcptTransitGatewayConnectPeerId,

    -- * Destructuring the Response
    deleteTransitGatewayConnectPeerResponse,
    DeleteTransitGatewayConnectPeerResponse,

    -- * Response Lenses
    dtgcprrsTransitGatewayConnectPeer,
    dtgcprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGatewayConnectPeer' smart constructor.
data DeleteTransitGatewayConnectPeer = DeleteTransitGatewayConnectPeer'
  { _dtgcptDryRun ::
      !( Maybe
           Bool
       ),
    _dtgcptTransitGatewayConnectPeerId ::
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

-- | Creates a value of 'DeleteTransitGatewayConnectPeer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcptDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgcptTransitGatewayConnectPeerId' - The ID of the Connect peer.
deleteTransitGatewayConnectPeer ::
  -- | 'dtgcptTransitGatewayConnectPeerId'
  Text ->
  DeleteTransitGatewayConnectPeer
deleteTransitGatewayConnectPeer
  pTransitGatewayConnectPeerId_ =
    DeleteTransitGatewayConnectPeer'
      { _dtgcptDryRun =
          Nothing,
        _dtgcptTransitGatewayConnectPeerId =
          pTransitGatewayConnectPeerId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgcptDryRun :: Lens' DeleteTransitGatewayConnectPeer (Maybe Bool)
dtgcptDryRun = lens _dtgcptDryRun (\s a -> s {_dtgcptDryRun = a})

-- | The ID of the Connect peer.
dtgcptTransitGatewayConnectPeerId :: Lens' DeleteTransitGatewayConnectPeer Text
dtgcptTransitGatewayConnectPeerId = lens _dtgcptTransitGatewayConnectPeerId (\s a -> s {_dtgcptTransitGatewayConnectPeerId = a})

instance AWSRequest DeleteTransitGatewayConnectPeer where
  type
    Rs DeleteTransitGatewayConnectPeer =
      DeleteTransitGatewayConnectPeerResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayConnectPeerResponse'
            <$> (x .@? "transitGatewayConnectPeer")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTransitGatewayConnectPeer

instance NFData DeleteTransitGatewayConnectPeer

instance ToHeaders DeleteTransitGatewayConnectPeer where
  toHeaders = const mempty

instance ToPath DeleteTransitGatewayConnectPeer where
  toPath = const "/"

instance ToQuery DeleteTransitGatewayConnectPeer where
  toQuery DeleteTransitGatewayConnectPeer' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTransitGatewayConnectPeer" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtgcptDryRun,
        "TransitGatewayConnectPeerId"
          =: _dtgcptTransitGatewayConnectPeerId
      ]

-- | /See:/ 'deleteTransitGatewayConnectPeerResponse' smart constructor.
data DeleteTransitGatewayConnectPeerResponse = DeleteTransitGatewayConnectPeerResponse'
  { _dtgcprrsTransitGatewayConnectPeer ::
      !( Maybe
           TransitGatewayConnectPeer
       ),
    _dtgcprrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayConnectPeerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcprrsTransitGatewayConnectPeer' - Information about the deleted Connect peer.
--
-- * 'dtgcprrsResponseStatus' - -- | The response status code.
deleteTransitGatewayConnectPeerResponse ::
  -- | 'dtgcprrsResponseStatus'
  Int ->
  DeleteTransitGatewayConnectPeerResponse
deleteTransitGatewayConnectPeerResponse
  pResponseStatus_ =
    DeleteTransitGatewayConnectPeerResponse'
      { _dtgcprrsTransitGatewayConnectPeer =
          Nothing,
        _dtgcprrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the deleted Connect peer.
dtgcprrsTransitGatewayConnectPeer :: Lens' DeleteTransitGatewayConnectPeerResponse (Maybe TransitGatewayConnectPeer)
dtgcprrsTransitGatewayConnectPeer = lens _dtgcprrsTransitGatewayConnectPeer (\s a -> s {_dtgcprrsTransitGatewayConnectPeer = a})

-- | -- | The response status code.
dtgcprrsResponseStatus :: Lens' DeleteTransitGatewayConnectPeerResponse Int
dtgcprrsResponseStatus = lens _dtgcprrsResponseStatus (\s a -> s {_dtgcprrsResponseStatus = a})

instance
  NFData
    DeleteTransitGatewayConnectPeerResponse

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
-- Module      : Network.AWS.EC2.DeleteTransitGatewayPeeringAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a transit gateway peering attachment.
module Network.AWS.EC2.DeleteTransitGatewayPeeringAttachment
  ( -- * Creating a Request
    deleteTransitGatewayPeeringAttachment,
    DeleteTransitGatewayPeeringAttachment,

    -- * Request Lenses
    dtgpaDryRun,
    dtgpaTransitGatewayAttachmentId,

    -- * Destructuring the Response
    deleteTransitGatewayPeeringAttachmentResponse,
    DeleteTransitGatewayPeeringAttachmentResponse,

    -- * Response Lenses
    dtgparrsTransitGatewayPeeringAttachment,
    dtgparrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGatewayPeeringAttachment' smart constructor.
data DeleteTransitGatewayPeeringAttachment = DeleteTransitGatewayPeeringAttachment'
  { _dtgpaDryRun ::
      !( Maybe
           Bool
       ),
    _dtgpaTransitGatewayAttachmentId ::
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

-- | Creates a value of 'DeleteTransitGatewayPeeringAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgpaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgpaTransitGatewayAttachmentId' - The ID of the transit gateway peering attachment.
deleteTransitGatewayPeeringAttachment ::
  -- | 'dtgpaTransitGatewayAttachmentId'
  Text ->
  DeleteTransitGatewayPeeringAttachment
deleteTransitGatewayPeeringAttachment
  pTransitGatewayAttachmentId_ =
    DeleteTransitGatewayPeeringAttachment'
      { _dtgpaDryRun =
          Nothing,
        _dtgpaTransitGatewayAttachmentId =
          pTransitGatewayAttachmentId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgpaDryRun :: Lens' DeleteTransitGatewayPeeringAttachment (Maybe Bool)
dtgpaDryRun = lens _dtgpaDryRun (\s a -> s {_dtgpaDryRun = a})

-- | The ID of the transit gateway peering attachment.
dtgpaTransitGatewayAttachmentId :: Lens' DeleteTransitGatewayPeeringAttachment Text
dtgpaTransitGatewayAttachmentId = lens _dtgpaTransitGatewayAttachmentId (\s a -> s {_dtgpaTransitGatewayAttachmentId = a})

instance
  AWSRequest
    DeleteTransitGatewayPeeringAttachment
  where
  type
    Rs DeleteTransitGatewayPeeringAttachment =
      DeleteTransitGatewayPeeringAttachmentResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayPeeringAttachmentResponse'
            <$> (x .@? "transitGatewayPeeringAttachment")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DeleteTransitGatewayPeeringAttachment

instance NFData DeleteTransitGatewayPeeringAttachment

instance
  ToHeaders
    DeleteTransitGatewayPeeringAttachment
  where
  toHeaders = const mempty

instance ToPath DeleteTransitGatewayPeeringAttachment where
  toPath = const "/"

instance
  ToQuery
    DeleteTransitGatewayPeeringAttachment
  where
  toQuery DeleteTransitGatewayPeeringAttachment' {..} =
    mconcat
      [ "Action"
          =: ( "DeleteTransitGatewayPeeringAttachment" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtgpaDryRun,
        "TransitGatewayAttachmentId"
          =: _dtgpaTransitGatewayAttachmentId
      ]

-- | /See:/ 'deleteTransitGatewayPeeringAttachmentResponse' smart constructor.
data DeleteTransitGatewayPeeringAttachmentResponse = DeleteTransitGatewayPeeringAttachmentResponse'
  { _dtgparrsTransitGatewayPeeringAttachment ::
      !( Maybe
           TransitGatewayPeeringAttachment
       ),
    _dtgparrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayPeeringAttachmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgparrsTransitGatewayPeeringAttachment' - The transit gateway peering attachment.
--
-- * 'dtgparrsResponseStatus' - -- | The response status code.
deleteTransitGatewayPeeringAttachmentResponse ::
  -- | 'dtgparrsResponseStatus'
  Int ->
  DeleteTransitGatewayPeeringAttachmentResponse
deleteTransitGatewayPeeringAttachmentResponse
  pResponseStatus_ =
    DeleteTransitGatewayPeeringAttachmentResponse'
      { _dtgparrsTransitGatewayPeeringAttachment =
          Nothing,
        _dtgparrsResponseStatus =
          pResponseStatus_
      }

-- | The transit gateway peering attachment.
dtgparrsTransitGatewayPeeringAttachment :: Lens' DeleteTransitGatewayPeeringAttachmentResponse (Maybe TransitGatewayPeeringAttachment)
dtgparrsTransitGatewayPeeringAttachment = lens _dtgparrsTransitGatewayPeeringAttachment (\s a -> s {_dtgparrsTransitGatewayPeeringAttachment = a})

-- | -- | The response status code.
dtgparrsResponseStatus :: Lens' DeleteTransitGatewayPeeringAttachmentResponse Int
dtgparrsResponseStatus = lens _dtgparrsResponseStatus (\s a -> s {_dtgparrsResponseStatus = a})

instance
  NFData
    DeleteTransitGatewayPeeringAttachmentResponse

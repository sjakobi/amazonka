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
-- Module      : Network.AWS.EC2.DeleteTransitGatewayVPCAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified VPC attachment.
module Network.AWS.EC2.DeleteTransitGatewayVPCAttachment
  ( -- * Creating a Request
    deleteTransitGatewayVPCAttachment,
    DeleteTransitGatewayVPCAttachment,

    -- * Request Lenses
    dtgvpcaDryRun,
    dtgvpcaTransitGatewayAttachmentId,

    -- * Destructuring the Response
    deleteTransitGatewayVPCAttachmentResponse,
    DeleteTransitGatewayVPCAttachmentResponse,

    -- * Response Lenses
    dtgvarrsTransitGatewayVPCAttachment,
    dtgvarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGatewayVPCAttachment' smart constructor.
data DeleteTransitGatewayVPCAttachment = DeleteTransitGatewayVPCAttachment'
  { _dtgvpcaDryRun ::
      !( Maybe
           Bool
       ),
    _dtgvpcaTransitGatewayAttachmentId ::
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

-- | Creates a value of 'DeleteTransitGatewayVPCAttachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgvpcaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgvpcaTransitGatewayAttachmentId' - The ID of the attachment.
deleteTransitGatewayVPCAttachment ::
  -- | 'dtgvpcaTransitGatewayAttachmentId'
  Text ->
  DeleteTransitGatewayVPCAttachment
deleteTransitGatewayVPCAttachment
  pTransitGatewayAttachmentId_ =
    DeleteTransitGatewayVPCAttachment'
      { _dtgvpcaDryRun =
          Nothing,
        _dtgvpcaTransitGatewayAttachmentId =
          pTransitGatewayAttachmentId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgvpcaDryRun :: Lens' DeleteTransitGatewayVPCAttachment (Maybe Bool)
dtgvpcaDryRun = lens _dtgvpcaDryRun (\s a -> s {_dtgvpcaDryRun = a})

-- | The ID of the attachment.
dtgvpcaTransitGatewayAttachmentId :: Lens' DeleteTransitGatewayVPCAttachment Text
dtgvpcaTransitGatewayAttachmentId = lens _dtgvpcaTransitGatewayAttachmentId (\s a -> s {_dtgvpcaTransitGatewayAttachmentId = a})

instance AWSRequest DeleteTransitGatewayVPCAttachment where
  type
    Rs DeleteTransitGatewayVPCAttachment =
      DeleteTransitGatewayVPCAttachmentResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayVPCAttachmentResponse'
            <$> (x .@? "transitGatewayVpcAttachment")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTransitGatewayVPCAttachment

instance NFData DeleteTransitGatewayVPCAttachment

instance ToHeaders DeleteTransitGatewayVPCAttachment where
  toHeaders = const mempty

instance ToPath DeleteTransitGatewayVPCAttachment where
  toPath = const "/"

instance ToQuery DeleteTransitGatewayVPCAttachment where
  toQuery DeleteTransitGatewayVPCAttachment' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTransitGatewayVpcAttachment" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtgvpcaDryRun,
        "TransitGatewayAttachmentId"
          =: _dtgvpcaTransitGatewayAttachmentId
      ]

-- | /See:/ 'deleteTransitGatewayVPCAttachmentResponse' smart constructor.
data DeleteTransitGatewayVPCAttachmentResponse = DeleteTransitGatewayVPCAttachmentResponse'
  { _dtgvarrsTransitGatewayVPCAttachment ::
      !( Maybe
           TransitGatewayVPCAttachment
       ),
    _dtgvarrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayVPCAttachmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgvarrsTransitGatewayVPCAttachment' - Information about the deleted VPC attachment.
--
-- * 'dtgvarrsResponseStatus' - -- | The response status code.
deleteTransitGatewayVPCAttachmentResponse ::
  -- | 'dtgvarrsResponseStatus'
  Int ->
  DeleteTransitGatewayVPCAttachmentResponse
deleteTransitGatewayVPCAttachmentResponse
  pResponseStatus_ =
    DeleteTransitGatewayVPCAttachmentResponse'
      { _dtgvarrsTransitGatewayVPCAttachment =
          Nothing,
        _dtgvarrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the deleted VPC attachment.
dtgvarrsTransitGatewayVPCAttachment :: Lens' DeleteTransitGatewayVPCAttachmentResponse (Maybe TransitGatewayVPCAttachment)
dtgvarrsTransitGatewayVPCAttachment = lens _dtgvarrsTransitGatewayVPCAttachment (\s a -> s {_dtgvarrsTransitGatewayVPCAttachment = a})

-- | -- | The response status code.
dtgvarrsResponseStatus :: Lens' DeleteTransitGatewayVPCAttachmentResponse Int
dtgvarrsResponseStatus = lens _dtgvarrsResponseStatus (\s a -> s {_dtgvarrsResponseStatus = a})

instance
  NFData
    DeleteTransitGatewayVPCAttachmentResponse

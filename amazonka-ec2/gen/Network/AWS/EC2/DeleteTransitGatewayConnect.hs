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
-- Module      : Network.AWS.EC2.DeleteTransitGatewayConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Connect attachment. You must first delete any Connect peers for the attachment.
module Network.AWS.EC2.DeleteTransitGatewayConnect
  ( -- * Creating a Request
    deleteTransitGatewayConnect,
    DeleteTransitGatewayConnect,

    -- * Request Lenses
    dtgctDryRun,
    dtgctTransitGatewayAttachmentId,

    -- * Destructuring the Response
    deleteTransitGatewayConnectResponse,
    DeleteTransitGatewayConnectResponse,

    -- * Response Lenses
    dtgcrtrsTransitGatewayConnect,
    dtgcrtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTransitGatewayConnect' smart constructor.
data DeleteTransitGatewayConnect = DeleteTransitGatewayConnect'
  { _dtgctDryRun ::
      !(Maybe Bool),
    _dtgctTransitGatewayAttachmentId ::
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

-- | Creates a value of 'DeleteTransitGatewayConnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgctDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgctTransitGatewayAttachmentId' - The ID of the Connect attachment.
deleteTransitGatewayConnect ::
  -- | 'dtgctTransitGatewayAttachmentId'
  Text ->
  DeleteTransitGatewayConnect
deleteTransitGatewayConnect
  pTransitGatewayAttachmentId_ =
    DeleteTransitGatewayConnect'
      { _dtgctDryRun =
          Nothing,
        _dtgctTransitGatewayAttachmentId =
          pTransitGatewayAttachmentId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgctDryRun :: Lens' DeleteTransitGatewayConnect (Maybe Bool)
dtgctDryRun = lens _dtgctDryRun (\s a -> s {_dtgctDryRun = a})

-- | The ID of the Connect attachment.
dtgctTransitGatewayAttachmentId :: Lens' DeleteTransitGatewayConnect Text
dtgctTransitGatewayAttachmentId = lens _dtgctTransitGatewayAttachmentId (\s a -> s {_dtgctTransitGatewayAttachmentId = a})

instance AWSRequest DeleteTransitGatewayConnect where
  type
    Rs DeleteTransitGatewayConnect =
      DeleteTransitGatewayConnectResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteTransitGatewayConnectResponse'
            <$> (x .@? "transitGatewayConnect")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteTransitGatewayConnect

instance NFData DeleteTransitGatewayConnect

instance ToHeaders DeleteTransitGatewayConnect where
  toHeaders = const mempty

instance ToPath DeleteTransitGatewayConnect where
  toPath = const "/"

instance ToQuery DeleteTransitGatewayConnect where
  toQuery DeleteTransitGatewayConnect' {..} =
    mconcat
      [ "Action"
          =: ("DeleteTransitGatewayConnect" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dtgctDryRun,
        "TransitGatewayAttachmentId"
          =: _dtgctTransitGatewayAttachmentId
      ]

-- | /See:/ 'deleteTransitGatewayConnectResponse' smart constructor.
data DeleteTransitGatewayConnectResponse = DeleteTransitGatewayConnectResponse'
  { _dtgcrtrsTransitGatewayConnect ::
      !( Maybe
           TransitGatewayConnect
       ),
    _dtgcrtrsResponseStatus ::
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

-- | Creates a value of 'DeleteTransitGatewayConnectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcrtrsTransitGatewayConnect' - Information about the deleted Connect attachment.
--
-- * 'dtgcrtrsResponseStatus' - -- | The response status code.
deleteTransitGatewayConnectResponse ::
  -- | 'dtgcrtrsResponseStatus'
  Int ->
  DeleteTransitGatewayConnectResponse
deleteTransitGatewayConnectResponse pResponseStatus_ =
  DeleteTransitGatewayConnectResponse'
    { _dtgcrtrsTransitGatewayConnect =
        Nothing,
      _dtgcrtrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the deleted Connect attachment.
dtgcrtrsTransitGatewayConnect :: Lens' DeleteTransitGatewayConnectResponse (Maybe TransitGatewayConnect)
dtgcrtrsTransitGatewayConnect = lens _dtgcrtrsTransitGatewayConnect (\s a -> s {_dtgcrtrsTransitGatewayConnect = a})

-- | -- | The response status code.
dtgcrtrsResponseStatus :: Lens' DeleteTransitGatewayConnectResponse Int
dtgcrtrsResponseStatus = lens _dtgcrtrsResponseStatus (\s a -> s {_dtgcrtrsResponseStatus = a})

instance NFData DeleteTransitGatewayConnectResponse

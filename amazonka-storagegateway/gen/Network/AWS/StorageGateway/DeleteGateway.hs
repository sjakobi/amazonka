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
-- Module      : Network.AWS.StorageGateway.DeleteGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name (ARN) of the gateway in your request. The operation deletes the gateway; however, it does not delete the gateway virtual machine (VM) from your host computer.
--
--
-- After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway volumes are not deleted upon deleting the gateway, however, pending snapshots will not complete. After you delete a gateway, your next step is to remove it from your environment.
--
-- /Important:/ You no longer pay software charges after the gateway is deleted; however, your existing Amazon EBS snapshots persist and you will continue to be billed for these snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you can delete your snapshots using the Amazon EC2 console. For more information, see the <http://aws.amazon.com/storagegateway AWS Storage Gateway detail page> .
module Network.AWS.StorageGateway.DeleteGateway
  ( -- * Creating a Request
    deleteGateway,
    DeleteGateway,

    -- * Request Lenses
    delGatewayARN,

    -- * Destructuring the Response
    deleteGatewayResponse,
    DeleteGatewayResponse,

    -- * Response Lenses
    dgrgrsGatewayARN,
    dgrgrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the ID of the gateway to delete.
--
--
--
-- /See:/ 'deleteGateway' smart constructor.
newtype DeleteGateway = DeleteGateway'
  { _delGatewayARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delGatewayARN' - Undocumented member.
deleteGateway ::
  -- | 'delGatewayARN'
  Text ->
  DeleteGateway
deleteGateway pGatewayARN_ =
  DeleteGateway' {_delGatewayARN = pGatewayARN_}

-- | Undocumented member.
delGatewayARN :: Lens' DeleteGateway Text
delGatewayARN = lens _delGatewayARN (\s a -> s {_delGatewayARN = a})

instance AWSRequest DeleteGateway where
  type Rs DeleteGateway = DeleteGatewayResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DeleteGatewayResponse'
            <$> (x .?> "GatewayARN") <*> (pure (fromEnum s))
      )

instance Hashable DeleteGateway

instance NFData DeleteGateway

instance ToHeaders DeleteGateway where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DeleteGateway" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteGateway where
  toJSON DeleteGateway' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _delGatewayARN)])

instance ToPath DeleteGateway where
  toPath = const "/"

instance ToQuery DeleteGateway where
  toQuery = const mempty

-- | A JSON object containing the ID of the deleted gateway.
--
--
--
-- /See:/ 'deleteGatewayResponse' smart constructor.
data DeleteGatewayResponse = DeleteGatewayResponse'
  { _dgrgrsGatewayARN ::
      !(Maybe Text),
    _dgrgrsResponseStatus ::
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

-- | Creates a value of 'DeleteGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrgrsGatewayARN' - Undocumented member.
--
-- * 'dgrgrsResponseStatus' - -- | The response status code.
deleteGatewayResponse ::
  -- | 'dgrgrsResponseStatus'
  Int ->
  DeleteGatewayResponse
deleteGatewayResponse pResponseStatus_ =
  DeleteGatewayResponse'
    { _dgrgrsGatewayARN = Nothing,
      _dgrgrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dgrgrsGatewayARN :: Lens' DeleteGatewayResponse (Maybe Text)
dgrgrsGatewayARN = lens _dgrgrsGatewayARN (\s a -> s {_dgrgrsGatewayARN = a})

-- | -- | The response status code.
dgrgrsResponseStatus :: Lens' DeleteGatewayResponse Int
dgrgrsResponseStatus = lens _dgrgrsResponseStatus (\s a -> s {_dgrgrsResponseStatus = a})

instance NFData DeleteGatewayResponse

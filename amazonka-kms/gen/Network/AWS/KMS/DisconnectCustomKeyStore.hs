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
-- Module      : Network.AWS.KMS.DisconnectCustomKeyStore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disconnects the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store> from its associated AWS CloudHSM cluster. While a custom key store is disconnected, you can manage the custom key store and its customer master keys (CMKs), but you cannot create or use CMKs in the custom key store. You can reconnect the custom key store at any time.
--
--
--
--
-- To find the connection state of a custom key store, use the 'DescribeCustomKeyStores' operation. To reconnect a custom key store, use the 'ConnectCustomKeyStore' operation.
--
-- If the operation succeeds, it returns a JSON object with no properties.
--
-- This operation is part of the <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html Custom Key Store feature> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.
--
-- __Cross-account use__ : No. You cannot perform this operation on a custom key store in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:DisconnectCustomKeyStore> (IAM policy)
--
-- __Related operations:__
--
--     * 'ConnectCustomKeyStore'
--
--     * 'CreateCustomKeyStore'
--
--     * 'DeleteCustomKeyStore'
--
--     * 'DescribeCustomKeyStores'
--
--     * 'UpdateCustomKeyStore'
module Network.AWS.KMS.DisconnectCustomKeyStore
  ( -- * Creating a Request
    disconnectCustomKeyStore,
    DisconnectCustomKeyStore,

    -- * Request Lenses
    dcksCustomKeyStoreId,

    -- * Destructuring the Response
    disconnectCustomKeyStoreResponse,
    DisconnectCustomKeyStoreResponse,

    -- * Response Lenses
    disrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disconnectCustomKeyStore' smart constructor.
newtype DisconnectCustomKeyStore = DisconnectCustomKeyStore'
  { _dcksCustomKeyStoreId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisconnectCustomKeyStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcksCustomKeyStoreId' - Enter the ID of the custom key store you want to disconnect. To find the ID of a custom key store, use the 'DescribeCustomKeyStores' operation.
disconnectCustomKeyStore ::
  -- | 'dcksCustomKeyStoreId'
  Text ->
  DisconnectCustomKeyStore
disconnectCustomKeyStore pCustomKeyStoreId_ =
  DisconnectCustomKeyStore'
    { _dcksCustomKeyStoreId =
        pCustomKeyStoreId_
    }

-- | Enter the ID of the custom key store you want to disconnect. To find the ID of a custom key store, use the 'DescribeCustomKeyStores' operation.
dcksCustomKeyStoreId :: Lens' DisconnectCustomKeyStore Text
dcksCustomKeyStoreId = lens _dcksCustomKeyStoreId (\s a -> s {_dcksCustomKeyStoreId = a})

instance AWSRequest DisconnectCustomKeyStore where
  type
    Rs DisconnectCustomKeyStore =
      DisconnectCustomKeyStoreResponse
  request = postJSON kms
  response =
    receiveEmpty
      ( \s h x ->
          DisconnectCustomKeyStoreResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DisconnectCustomKeyStore

instance NFData DisconnectCustomKeyStore

instance ToHeaders DisconnectCustomKeyStore where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "TrentService.DisconnectCustomKeyStore" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisconnectCustomKeyStore where
  toJSON DisconnectCustomKeyStore' {..} =
    object
      ( catMaybes
          [Just ("CustomKeyStoreId" .= _dcksCustomKeyStoreId)]
      )

instance ToPath DisconnectCustomKeyStore where
  toPath = const "/"

instance ToQuery DisconnectCustomKeyStore where
  toQuery = const mempty

-- | /See:/ 'disconnectCustomKeyStoreResponse' smart constructor.
newtype DisconnectCustomKeyStoreResponse = DisconnectCustomKeyStoreResponse'
  { _disrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisconnectCustomKeyStoreResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disrsResponseStatus' - -- | The response status code.
disconnectCustomKeyStoreResponse ::
  -- | 'disrsResponseStatus'
  Int ->
  DisconnectCustomKeyStoreResponse
disconnectCustomKeyStoreResponse pResponseStatus_ =
  DisconnectCustomKeyStoreResponse'
    { _disrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
disrsResponseStatus :: Lens' DisconnectCustomKeyStoreResponse Int
disrsResponseStatus = lens _disrsResponseStatus (\s a -> s {_disrsResponseStatus = a})

instance NFData DisconnectCustomKeyStoreResponse

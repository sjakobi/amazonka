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
-- Module      : Network.AWS.StorageGateway.DeleteTape
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified virtual tape. This operation is only supported in the tape gateway type.
module Network.AWS.StorageGateway.DeleteTape
  ( -- * Creating a Request
    deleteTape,
    DeleteTape,

    -- * Request Lenses
    dBypassGovernanceRetention,
    dGatewayARN,
    dTapeARN,

    -- * Destructuring the Response
    deleteTapeResponse,
    DeleteTapeResponse,

    -- * Response Lenses
    dtrtrsTapeARN,
    dtrtrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DeleteTapeInput
--
--
--
-- /See:/ 'deleteTape' smart constructor.
data DeleteTape = DeleteTape'
  { _dBypassGovernanceRetention ::
      !(Maybe Bool),
    _dGatewayARN :: !Text,
    _dTapeARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTape' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBypassGovernanceRetention' - Set to @TRUE@ to delete an archived tape that belongs to a custom pool with tape retention lock. Only archived tapes with tape retention lock set to @governance@ can be deleted. Archived tapes with tape retention lock set to @compliance@ can't be deleted.
--
-- * 'dGatewayARN' - The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is associated with. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region.
--
-- * 'dTapeARN' - The Amazon Resource Name (ARN) of the virtual tape to delete.
deleteTape ::
  -- | 'dGatewayARN'
  Text ->
  -- | 'dTapeARN'
  Text ->
  DeleteTape
deleteTape pGatewayARN_ pTapeARN_ =
  DeleteTape'
    { _dBypassGovernanceRetention = Nothing,
      _dGatewayARN = pGatewayARN_,
      _dTapeARN = pTapeARN_
    }

-- | Set to @TRUE@ to delete an archived tape that belongs to a custom pool with tape retention lock. Only archived tapes with tape retention lock set to @governance@ can be deleted. Archived tapes with tape retention lock set to @compliance@ can't be deleted.
dBypassGovernanceRetention :: Lens' DeleteTape (Maybe Bool)
dBypassGovernanceRetention = lens _dBypassGovernanceRetention (\s a -> s {_dBypassGovernanceRetention = a})

-- | The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is associated with. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region.
dGatewayARN :: Lens' DeleteTape Text
dGatewayARN = lens _dGatewayARN (\s a -> s {_dGatewayARN = a})

-- | The Amazon Resource Name (ARN) of the virtual tape to delete.
dTapeARN :: Lens' DeleteTape Text
dTapeARN = lens _dTapeARN (\s a -> s {_dTapeARN = a})

instance AWSRequest DeleteTape where
  type Rs DeleteTape = DeleteTapeResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DeleteTapeResponse'
            <$> (x .?> "TapeARN") <*> (pure (fromEnum s))
      )

instance Hashable DeleteTape

instance NFData DeleteTape

instance ToHeaders DeleteTape where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("StorageGateway_20130630.DeleteTape" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTape where
  toJSON DeleteTape' {..} =
    object
      ( catMaybes
          [ ("BypassGovernanceRetention" .=)
              <$> _dBypassGovernanceRetention,
            Just ("GatewayARN" .= _dGatewayARN),
            Just ("TapeARN" .= _dTapeARN)
          ]
      )

instance ToPath DeleteTape where
  toPath = const "/"

instance ToQuery DeleteTape where
  toQuery = const mempty

-- | DeleteTapeOutput
--
--
--
-- /See:/ 'deleteTapeResponse' smart constructor.
data DeleteTapeResponse = DeleteTapeResponse'
  { _dtrtrsTapeARN ::
      !(Maybe Text),
    _dtrtrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTapeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrtrsTapeARN' - The Amazon Resource Name (ARN) of the deleted virtual tape.
--
-- * 'dtrtrsResponseStatus' - -- | The response status code.
deleteTapeResponse ::
  -- | 'dtrtrsResponseStatus'
  Int ->
  DeleteTapeResponse
deleteTapeResponse pResponseStatus_ =
  DeleteTapeResponse'
    { _dtrtrsTapeARN = Nothing,
      _dtrtrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the deleted virtual tape.
dtrtrsTapeARN :: Lens' DeleteTapeResponse (Maybe Text)
dtrtrsTapeARN = lens _dtrtrsTapeARN (\s a -> s {_dtrtrsTapeARN = a})

-- | -- | The response status code.
dtrtrsResponseStatus :: Lens' DeleteTapeResponse Int
dtrtrsResponseStatus = lens _dtrtrsResponseStatus (\s a -> s {_dtrtrsResponseStatus = a})

instance NFData DeleteTapeResponse

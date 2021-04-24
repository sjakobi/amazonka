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
-- Module      : Network.AWS.StorageGateway.CancelArchival
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated. This operation is only supported in the tape gateway type.
module Network.AWS.StorageGateway.CancelArchival
  ( -- * Creating a Request
    cancelArchival,
    CancelArchival,

    -- * Request Lenses
    caGatewayARN,
    caTapeARN,

    -- * Destructuring the Response
    cancelArchivalResponse,
    CancelArchivalResponse,

    -- * Response Lenses
    carrsTapeARN,
    carrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | CancelArchivalInput
--
--
--
-- /See:/ 'cancelArchival' smart constructor.
data CancelArchival = CancelArchival'
  { _caGatewayARN ::
      !Text,
    _caTapeARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelArchival' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caGatewayARN' - Undocumented member.
--
-- * 'caTapeARN' - The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving for.
cancelArchival ::
  -- | 'caGatewayARN'
  Text ->
  -- | 'caTapeARN'
  Text ->
  CancelArchival
cancelArchival pGatewayARN_ pTapeARN_ =
  CancelArchival'
    { _caGatewayARN = pGatewayARN_,
      _caTapeARN = pTapeARN_
    }

-- | Undocumented member.
caGatewayARN :: Lens' CancelArchival Text
caGatewayARN = lens _caGatewayARN (\s a -> s {_caGatewayARN = a})

-- | The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving for.
caTapeARN :: Lens' CancelArchival Text
caTapeARN = lens _caTapeARN (\s a -> s {_caTapeARN = a})

instance AWSRequest CancelArchival where
  type Rs CancelArchival = CancelArchivalResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          CancelArchivalResponse'
            <$> (x .?> "TapeARN") <*> (pure (fromEnum s))
      )

instance Hashable CancelArchival

instance NFData CancelArchival

instance ToHeaders CancelArchival where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.CancelArchival" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CancelArchival where
  toJSON CancelArchival' {..} =
    object
      ( catMaybes
          [ Just ("GatewayARN" .= _caGatewayARN),
            Just ("TapeARN" .= _caTapeARN)
          ]
      )

instance ToPath CancelArchival where
  toPath = const "/"

instance ToQuery CancelArchival where
  toQuery = const mempty

-- | CancelArchivalOutput
--
--
--
-- /See:/ 'cancelArchivalResponse' smart constructor.
data CancelArchivalResponse = CancelArchivalResponse'
  { _carrsTapeARN ::
      !(Maybe Text),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CancelArchivalResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsTapeARN' - The Amazon Resource Name (ARN) of the virtual tape for which archiving was canceled.
--
-- * 'carrsResponseStatus' - -- | The response status code.
cancelArchivalResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CancelArchivalResponse
cancelArchivalResponse pResponseStatus_ =
  CancelArchivalResponse'
    { _carrsTapeARN = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the virtual tape for which archiving was canceled.
carrsTapeARN :: Lens' CancelArchivalResponse (Maybe Text)
carrsTapeARN = lens _carrsTapeARN (\s a -> s {_carrsTapeARN = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CancelArchivalResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CancelArchivalResponse

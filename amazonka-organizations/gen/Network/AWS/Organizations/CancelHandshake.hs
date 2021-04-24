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
-- Module      : Network.AWS.Organizations.CancelHandshake
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a handshake. Canceling a handshake sets the handshake state to @CANCELED@ .
--
--
-- This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use 'DeclineHandshake' instead. After a handshake is canceled, the recipient can no longer respond to that handshake.
--
-- After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that, it's deleted.
module Network.AWS.Organizations.CancelHandshake
  ( -- * Creating a Request
    cancelHandshake,
    CancelHandshake,

    -- * Request Lenses
    chHandshakeId,

    -- * Destructuring the Response
    cancelHandshakeResponse,
    CancelHandshakeResponse,

    -- * Response Lenses
    chrrsHandshake,
    chrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelHandshake' smart constructor.
newtype CancelHandshake = CancelHandshake'
  { _chHandshakeId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelHandshake' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chHandshakeId' - The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the 'ListHandshakesForOrganization' operation. The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID string requires "h-" followed by from 8 to 32 lowercase letters or digits.
cancelHandshake ::
  -- | 'chHandshakeId'
  Text ->
  CancelHandshake
cancelHandshake pHandshakeId_ =
  CancelHandshake' {_chHandshakeId = pHandshakeId_}

-- | The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the 'ListHandshakesForOrganization' operation. The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID string requires "h-" followed by from 8 to 32 lowercase letters or digits.
chHandshakeId :: Lens' CancelHandshake Text
chHandshakeId = lens _chHandshakeId (\s a -> s {_chHandshakeId = a})

instance AWSRequest CancelHandshake where
  type Rs CancelHandshake = CancelHandshakeResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          CancelHandshakeResponse'
            <$> (x .?> "Handshake") <*> (pure (fromEnum s))
      )

instance Hashable CancelHandshake

instance NFData CancelHandshake

instance ToHeaders CancelHandshake where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.CancelHandshake" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CancelHandshake where
  toJSON CancelHandshake' {..} =
    object
      (catMaybes [Just ("HandshakeId" .= _chHandshakeId)])

instance ToPath CancelHandshake where
  toPath = const "/"

instance ToQuery CancelHandshake where
  toQuery = const mempty

-- | /See:/ 'cancelHandshakeResponse' smart constructor.
data CancelHandshakeResponse = CancelHandshakeResponse'
  { _chrrsHandshake ::
      !(Maybe Handshake),
    _chrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelHandshakeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chrrsHandshake' - A structure that contains details about the handshake that you canceled.
--
-- * 'chrrsResponseStatus' - -- | The response status code.
cancelHandshakeResponse ::
  -- | 'chrrsResponseStatus'
  Int ->
  CancelHandshakeResponse
cancelHandshakeResponse pResponseStatus_ =
  CancelHandshakeResponse'
    { _chrrsHandshake = Nothing,
      _chrrsResponseStatus = pResponseStatus_
    }

-- | A structure that contains details about the handshake that you canceled.
chrrsHandshake :: Lens' CancelHandshakeResponse (Maybe Handshake)
chrrsHandshake = lens _chrrsHandshake (\s a -> s {_chrrsHandshake = a})

-- | -- | The response status code.
chrrsResponseStatus :: Lens' CancelHandshakeResponse Int
chrrsResponseStatus = lens _chrrsResponseStatus (\s a -> s {_chrrsResponseStatus = a})

instance NFData CancelHandshakeResponse

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
-- Module      : Network.AWS.StorageGateway.RetrieveTapeArchive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway. Virtual tapes archived in the VTS are not associated with any gateway. However after a tape is retrieved, it is associated with a gateway, even though it is also listed in the VTS, that is, archive. This operation is only supported in the tape gateway type.
--
--
-- Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to another gateway. You must archive the tape again before you can retrieve it to another gateway. This operation is only supported in the tape gateway type.
module Network.AWS.StorageGateway.RetrieveTapeArchive
  ( -- * Creating a Request
    retrieveTapeArchive,
    RetrieveTapeArchive,

    -- * Request Lenses
    rtaTapeARN,
    rtaGatewayARN,

    -- * Destructuring the Response
    retrieveTapeArchiveResponse,
    RetrieveTapeArchiveResponse,

    -- * Response Lenses
    rtarrsTapeARN,
    rtarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | RetrieveTapeArchiveInput
--
--
--
-- /See:/ 'retrieveTapeArchive' smart constructor.
data RetrieveTapeArchive = RetrieveTapeArchive'
  { _rtaTapeARN ::
      !Text,
    _rtaGatewayARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RetrieveTapeArchive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtaTapeARN' - The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual tape shelf (VTS).
--
-- * 'rtaGatewayARN' - The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region. You retrieve archived virtual tapes to only one gateway and the gateway must be a tape gateway.
retrieveTapeArchive ::
  -- | 'rtaTapeARN'
  Text ->
  -- | 'rtaGatewayARN'
  Text ->
  RetrieveTapeArchive
retrieveTapeArchive pTapeARN_ pGatewayARN_ =
  RetrieveTapeArchive'
    { _rtaTapeARN = pTapeARN_,
      _rtaGatewayARN = pGatewayARN_
    }

-- | The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual tape shelf (VTS).
rtaTapeARN :: Lens' RetrieveTapeArchive Text
rtaTapeARN = lens _rtaTapeARN (\s a -> s {_rtaTapeARN = a})

-- | The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to. Use the 'ListGateways' operation to return a list of gateways for your account and AWS Region. You retrieve archived virtual tapes to only one gateway and the gateway must be a tape gateway.
rtaGatewayARN :: Lens' RetrieveTapeArchive Text
rtaGatewayARN = lens _rtaGatewayARN (\s a -> s {_rtaGatewayARN = a})

instance AWSRequest RetrieveTapeArchive where
  type
    Rs RetrieveTapeArchive =
      RetrieveTapeArchiveResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          RetrieveTapeArchiveResponse'
            <$> (x .?> "TapeARN") <*> (pure (fromEnum s))
      )

instance Hashable RetrieveTapeArchive

instance NFData RetrieveTapeArchive

instance ToHeaders RetrieveTapeArchive where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.RetrieveTapeArchive" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RetrieveTapeArchive where
  toJSON RetrieveTapeArchive' {..} =
    object
      ( catMaybes
          [ Just ("TapeARN" .= _rtaTapeARN),
            Just ("GatewayARN" .= _rtaGatewayARN)
          ]
      )

instance ToPath RetrieveTapeArchive where
  toPath = const "/"

instance ToQuery RetrieveTapeArchive where
  toQuery = const mempty

-- | RetrieveTapeArchiveOutput
--
--
--
-- /See:/ 'retrieveTapeArchiveResponse' smart constructor.
data RetrieveTapeArchiveResponse = RetrieveTapeArchiveResponse'
  { _rtarrsTapeARN ::
      !(Maybe Text),
    _rtarrsResponseStatus ::
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

-- | Creates a value of 'RetrieveTapeArchiveResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtarrsTapeARN' - The Amazon Resource Name (ARN) of the retrieved virtual tape.
--
-- * 'rtarrsResponseStatus' - -- | The response status code.
retrieveTapeArchiveResponse ::
  -- | 'rtarrsResponseStatus'
  Int ->
  RetrieveTapeArchiveResponse
retrieveTapeArchiveResponse pResponseStatus_ =
  RetrieveTapeArchiveResponse'
    { _rtarrsTapeARN =
        Nothing,
      _rtarrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the retrieved virtual tape.
rtarrsTapeARN :: Lens' RetrieveTapeArchiveResponse (Maybe Text)
rtarrsTapeARN = lens _rtarrsTapeARN (\s a -> s {_rtarrsTapeARN = a})

-- | -- | The response status code.
rtarrsResponseStatus :: Lens' RetrieveTapeArchiveResponse Int
rtarrsResponseStatus = lens _rtarrsResponseStatus (\s a -> s {_rtarrsResponseStatus = a})

instance NFData RetrieveTapeArchiveResponse

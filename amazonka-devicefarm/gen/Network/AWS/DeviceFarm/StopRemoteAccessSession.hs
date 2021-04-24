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
-- Module      : Network.AWS.DeviceFarm.StopRemoteAccessSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Ends a specified remote access session.
module Network.AWS.DeviceFarm.StopRemoteAccessSession
  ( -- * Creating a Request
    stopRemoteAccessSession,
    StopRemoteAccessSession,

    -- * Request Lenses
    srasArn,

    -- * Destructuring the Response
    stopRemoteAccessSessionResponse,
    StopRemoteAccessSessionResponse,

    -- * Response Lenses
    srasrrsRemoteAccessSession,
    srasrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to stop the remote access session.
--
--
--
-- /See:/ 'stopRemoteAccessSession' smart constructor.
newtype StopRemoteAccessSession = StopRemoteAccessSession'
  { _srasArn ::
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

-- | Creates a value of 'StopRemoteAccessSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srasArn' - The Amazon Resource Name (ARN) of the remote access session to stop.
stopRemoteAccessSession ::
  -- | 'srasArn'
  Text ->
  StopRemoteAccessSession
stopRemoteAccessSession pArn_ =
  StopRemoteAccessSession' {_srasArn = pArn_}

-- | The Amazon Resource Name (ARN) of the remote access session to stop.
srasArn :: Lens' StopRemoteAccessSession Text
srasArn = lens _srasArn (\s a -> s {_srasArn = a})

instance AWSRequest StopRemoteAccessSession where
  type
    Rs StopRemoteAccessSession =
      StopRemoteAccessSessionResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          StopRemoteAccessSessionResponse'
            <$> (x .?> "remoteAccessSession")
            <*> (pure (fromEnum s))
      )

instance Hashable StopRemoteAccessSession

instance NFData StopRemoteAccessSession

instance ToHeaders StopRemoteAccessSession where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.StopRemoteAccessSession" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopRemoteAccessSession where
  toJSON StopRemoteAccessSession' {..} =
    object (catMaybes [Just ("arn" .= _srasArn)])

instance ToPath StopRemoteAccessSession where
  toPath = const "/"

instance ToQuery StopRemoteAccessSession where
  toQuery = const mempty

-- | Represents the response from the server that describes the remote access session when AWS Device Farm stops the session.
--
--
--
-- /See:/ 'stopRemoteAccessSessionResponse' smart constructor.
data StopRemoteAccessSessionResponse = StopRemoteAccessSessionResponse'
  { _srasrrsRemoteAccessSession ::
      !( Maybe
           RemoteAccessSession
       ),
    _srasrrsResponseStatus ::
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

-- | Creates a value of 'StopRemoteAccessSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srasrrsRemoteAccessSession' - A container that represents the metadata from the service about the remote access session you are stopping.
--
-- * 'srasrrsResponseStatus' - -- | The response status code.
stopRemoteAccessSessionResponse ::
  -- | 'srasrrsResponseStatus'
  Int ->
  StopRemoteAccessSessionResponse
stopRemoteAccessSessionResponse pResponseStatus_ =
  StopRemoteAccessSessionResponse'
    { _srasrrsRemoteAccessSession =
        Nothing,
      _srasrrsResponseStatus = pResponseStatus_
    }

-- | A container that represents the metadata from the service about the remote access session you are stopping.
srasrrsRemoteAccessSession :: Lens' StopRemoteAccessSessionResponse (Maybe RemoteAccessSession)
srasrrsRemoteAccessSession = lens _srasrrsRemoteAccessSession (\s a -> s {_srasrrsRemoteAccessSession = a})

-- | -- | The response status code.
srasrrsResponseStatus :: Lens' StopRemoteAccessSessionResponse Int
srasrrsResponseStatus = lens _srasrrsResponseStatus (\s a -> s {_srasrrsResponseStatus = a})

instance NFData StopRemoteAccessSessionResponse

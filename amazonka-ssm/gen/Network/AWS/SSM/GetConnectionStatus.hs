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
-- Module      : Network.AWS.SSM.GetConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Session Manager connection status for an instance to determine whether it is running and ready to receive Session Manager connections.
module Network.AWS.SSM.GetConnectionStatus
  ( -- * Creating a Request
    getConnectionStatus,
    GetConnectionStatus,

    -- * Request Lenses
    gcsTarget,

    -- * Destructuring the Response
    getConnectionStatusResponse,
    GetConnectionStatusResponse,

    -- * Response Lenses
    getrsStatus,
    getrsTarget,
    getrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getConnectionStatus' smart constructor.
newtype GetConnectionStatus = GetConnectionStatus'
  { _gcsTarget ::
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

-- | Creates a value of 'GetConnectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsTarget' - The ID of the instance.
getConnectionStatus ::
  -- | 'gcsTarget'
  Text ->
  GetConnectionStatus
getConnectionStatus pTarget_ =
  GetConnectionStatus' {_gcsTarget = pTarget_}

-- | The ID of the instance.
gcsTarget :: Lens' GetConnectionStatus Text
gcsTarget = lens _gcsTarget (\s a -> s {_gcsTarget = a})

instance AWSRequest GetConnectionStatus where
  type
    Rs GetConnectionStatus =
      GetConnectionStatusResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetConnectionStatusResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Target")
            <*> (pure (fromEnum s))
      )

instance Hashable GetConnectionStatus

instance NFData GetConnectionStatus

instance ToHeaders GetConnectionStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetConnectionStatus" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetConnectionStatus where
  toJSON GetConnectionStatus' {..} =
    object (catMaybes [Just ("Target" .= _gcsTarget)])

instance ToPath GetConnectionStatus where
  toPath = const "/"

instance ToQuery GetConnectionStatus where
  toQuery = const mempty

-- | /See:/ 'getConnectionStatusResponse' smart constructor.
data GetConnectionStatusResponse = GetConnectionStatusResponse'
  { _getrsStatus ::
      !( Maybe
           ConnectionStatus
       ),
    _getrsTarget ::
      !(Maybe Text),
    _getrsResponseStatus ::
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

-- | Creates a value of 'GetConnectionStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsStatus' - The status of the connection to the instance. For example, 'Connected' or 'Not Connected'.
--
-- * 'getrsTarget' - The ID of the instance to check connection status.
--
-- * 'getrsResponseStatus' - -- | The response status code.
getConnectionStatusResponse ::
  -- | 'getrsResponseStatus'
  Int ->
  GetConnectionStatusResponse
getConnectionStatusResponse pResponseStatus_ =
  GetConnectionStatusResponse'
    { _getrsStatus =
        Nothing,
      _getrsTarget = Nothing,
      _getrsResponseStatus = pResponseStatus_
    }

-- | The status of the connection to the instance. For example, 'Connected' or 'Not Connected'.
getrsStatus :: Lens' GetConnectionStatusResponse (Maybe ConnectionStatus)
getrsStatus = lens _getrsStatus (\s a -> s {_getrsStatus = a})

-- | The ID of the instance to check connection status.
getrsTarget :: Lens' GetConnectionStatusResponse (Maybe Text)
getrsTarget = lens _getrsTarget (\s a -> s {_getrsTarget = a})

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetConnectionStatusResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\s a -> s {_getrsResponseStatus = a})

instance NFData GetConnectionStatusResponse

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
-- Module      : Network.AWS.APIGatewayManagementAPI.GetConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about the connection with the provided id.
module Network.AWS.APIGatewayManagementAPI.GetConnection
  ( -- * Creating a Request
    getConnection,
    GetConnection,

    -- * Request Lenses
    gcConnectionId,

    -- * Destructuring the Response
    getConnectionResponse,
    GetConnectionResponse,

    -- * Response Lenses
    gcrrsIdentity,
    gcrrsLastActiveAt,
    gcrrsConnectedAt,
    gcrrsResponseStatus,
  )
where

import Network.AWS.APIGatewayManagementAPI.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnection' smart constructor.
newtype GetConnection = GetConnection'
  { _gcConnectionId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcConnectionId' - Undocumented member.
getConnection ::
  -- | 'gcConnectionId'
  Text ->
  GetConnection
getConnection pConnectionId_ =
  GetConnection' {_gcConnectionId = pConnectionId_}

-- | Undocumented member.
gcConnectionId :: Lens' GetConnection Text
gcConnectionId = lens _gcConnectionId (\s a -> s {_gcConnectionId = a})

instance AWSRequest GetConnection where
  type Rs GetConnection = GetConnectionResponse
  request = get apiGatewayManagementAPI
  response =
    receiveJSON
      ( \s h x ->
          GetConnectionResponse'
            <$> (x .?> "identity")
            <*> (x .?> "lastActiveAt")
            <*> (x .?> "connectedAt")
            <*> (pure (fromEnum s))
      )

instance Hashable GetConnection

instance NFData GetConnection

instance ToHeaders GetConnection where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetConnection where
  toPath GetConnection' {..} =
    mconcat ["/@connections/", toBS _gcConnectionId]

instance ToQuery GetConnection where
  toQuery = const mempty

-- | /See:/ 'getConnectionResponse' smart constructor.
data GetConnectionResponse = GetConnectionResponse'
  { _gcrrsIdentity ::
      !(Maybe Identity),
    _gcrrsLastActiveAt ::
      !(Maybe POSIX),
    _gcrrsConnectedAt ::
      !(Maybe POSIX),
    _gcrrsResponseStatus ::
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

-- | Creates a value of 'GetConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsIdentity' - Undocumented member.
--
-- * 'gcrrsLastActiveAt' - The time in ISO 8601 format for when the connection was last active.
--
-- * 'gcrrsConnectedAt' - The time in ISO 8601 format for when the connection was established.
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
getConnectionResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  GetConnectionResponse
getConnectionResponse pResponseStatus_ =
  GetConnectionResponse'
    { _gcrrsIdentity = Nothing,
      _gcrrsLastActiveAt = Nothing,
      _gcrrsConnectedAt = Nothing,
      _gcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
gcrrsIdentity :: Lens' GetConnectionResponse (Maybe Identity)
gcrrsIdentity = lens _gcrrsIdentity (\s a -> s {_gcrrsIdentity = a})

-- | The time in ISO 8601 format for when the connection was last active.
gcrrsLastActiveAt :: Lens' GetConnectionResponse (Maybe UTCTime)
gcrrsLastActiveAt = lens _gcrrsLastActiveAt (\s a -> s {_gcrrsLastActiveAt = a}) . mapping _Time

-- | The time in ISO 8601 format for when the connection was established.
gcrrsConnectedAt :: Lens' GetConnectionResponse (Maybe UTCTime)
gcrrsConnectedAt = lens _gcrrsConnectedAt (\s a -> s {_gcrrsConnectedAt = a}) . mapping _Time

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetConnectionResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetConnectionResponse

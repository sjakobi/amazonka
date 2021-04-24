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
-- Module      : Network.AWS.DMS.TestConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the connection between the replication instance and the endpoint.
module Network.AWS.DMS.TestConnection
  ( -- * Creating a Request
    testConnection,
    TestConnection,

    -- * Request Lenses
    tcReplicationInstanceARN,
    tcEndpointARN,

    -- * Destructuring the Response
    testConnectionResponse,
    TestConnectionResponse,

    -- * Response Lenses
    tcrrsConnection,
    tcrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'testConnection' smart constructor.
data TestConnection = TestConnection'
  { _tcReplicationInstanceARN ::
      !Text,
    _tcEndpointARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
--
-- * 'tcEndpointARN' - The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
testConnection ::
  -- | 'tcReplicationInstanceARN'
  Text ->
  -- | 'tcEndpointARN'
  Text ->
  TestConnection
testConnection pReplicationInstanceARN_ pEndpointARN_ =
  TestConnection'
    { _tcReplicationInstanceARN =
        pReplicationInstanceARN_,
      _tcEndpointARN = pEndpointARN_
    }

-- | The Amazon Resource Name (ARN) of the replication instance.
tcReplicationInstanceARN :: Lens' TestConnection Text
tcReplicationInstanceARN = lens _tcReplicationInstanceARN (\s a -> s {_tcReplicationInstanceARN = a})

-- | The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.
tcEndpointARN :: Lens' TestConnection Text
tcEndpointARN = lens _tcEndpointARN (\s a -> s {_tcEndpointARN = a})

instance AWSRequest TestConnection where
  type Rs TestConnection = TestConnectionResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          TestConnectionResponse'
            <$> (x .?> "Connection") <*> (pure (fromEnum s))
      )

instance Hashable TestConnection

instance NFData TestConnection

instance ToHeaders TestConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDMSv20160101.TestConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TestConnection where
  toJSON TestConnection' {..} =
    object
      ( catMaybes
          [ Just
              ( "ReplicationInstanceArn"
                  .= _tcReplicationInstanceARN
              ),
            Just ("EndpointArn" .= _tcEndpointARN)
          ]
      )

instance ToPath TestConnection where
  toPath = const "/"

instance ToQuery TestConnection where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'testConnectionResponse' smart constructor.
data TestConnectionResponse = TestConnectionResponse'
  { _tcrrsConnection ::
      !(Maybe Connection),
    _tcrrsResponseStatus ::
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

-- | Creates a value of 'TestConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcrrsConnection' - The connection tested.
--
-- * 'tcrrsResponseStatus' - -- | The response status code.
testConnectionResponse ::
  -- | 'tcrrsResponseStatus'
  Int ->
  TestConnectionResponse
testConnectionResponse pResponseStatus_ =
  TestConnectionResponse'
    { _tcrrsConnection = Nothing,
      _tcrrsResponseStatus = pResponseStatus_
    }

-- | The connection tested.
tcrrsConnection :: Lens' TestConnectionResponse (Maybe Connection)
tcrrsConnection = lens _tcrrsConnection (\s a -> s {_tcrrsConnection = a})

-- | -- | The response status code.
tcrrsResponseStatus :: Lens' TestConnectionResponse Int
tcrrsResponseStatus = lens _tcrrsResponseStatus (\s a -> s {_tcrrsResponseStatus = a})

instance NFData TestConnectionResponse

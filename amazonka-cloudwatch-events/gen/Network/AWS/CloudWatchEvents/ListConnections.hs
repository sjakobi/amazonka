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
-- Module      : Network.AWS.CloudWatchEvents.ListConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of connections from the account.
module Network.AWS.CloudWatchEvents.ListConnections
  ( -- * Creating a Request
    listConnections,
    ListConnections,

    -- * Request Lenses
    lcNextToken,
    lcConnectionState,
    lcNamePrefix,
    lcLimit,

    -- * Destructuring the Response
    listConnectionsResponse,
    ListConnectionsResponse,

    -- * Response Lenses
    lcrrsNextToken,
    lcrrsConnections,
    lcrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listConnections' smart constructor.
data ListConnections = ListConnections'
  { _lcNextToken ::
      !(Maybe Text),
    _lcConnectionState ::
      !(Maybe ConnectionState),
    _lcNamePrefix :: !(Maybe Text),
    _lcLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'lcConnectionState' - The state of the connection.
--
-- * 'lcNamePrefix' - A name prefix to filter results returned. Only connections with a name that starts with the prefix are returned.
--
-- * 'lcLimit' - The maximum number of connections to return.
listConnections ::
  ListConnections
listConnections =
  ListConnections'
    { _lcNextToken = Nothing,
      _lcConnectionState = Nothing,
      _lcNamePrefix = Nothing,
      _lcLimit = Nothing
    }

-- | The token returned by a previous call to retrieve the next set of results.
lcNextToken :: Lens' ListConnections (Maybe Text)
lcNextToken = lens _lcNextToken (\s a -> s {_lcNextToken = a})

-- | The state of the connection.
lcConnectionState :: Lens' ListConnections (Maybe ConnectionState)
lcConnectionState = lens _lcConnectionState (\s a -> s {_lcConnectionState = a})

-- | A name prefix to filter results returned. Only connections with a name that starts with the prefix are returned.
lcNamePrefix :: Lens' ListConnections (Maybe Text)
lcNamePrefix = lens _lcNamePrefix (\s a -> s {_lcNamePrefix = a})

-- | The maximum number of connections to return.
lcLimit :: Lens' ListConnections (Maybe Natural)
lcLimit = lens _lcLimit (\s a -> s {_lcLimit = a}) . mapping _Nat

instance AWSRequest ListConnections where
  type Rs ListConnections = ListConnectionsResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListConnectionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Connections" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListConnections

instance NFData ListConnections

instance ToHeaders ListConnections where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListConnections" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListConnections where
  toJSON ListConnections' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcNextToken,
            ("ConnectionState" .=) <$> _lcConnectionState,
            ("NamePrefix" .=) <$> _lcNamePrefix,
            ("Limit" .=) <$> _lcLimit
          ]
      )

instance ToPath ListConnections where
  toPath = const "/"

instance ToQuery ListConnections where
  toQuery = const mempty

-- | /See:/ 'listConnectionsResponse' smart constructor.
data ListConnectionsResponse = ListConnectionsResponse'
  { _lcrrsNextToken ::
      !(Maybe Text),
    _lcrrsConnections ::
      !(Maybe [Connection]),
    _lcrrsResponseStatus ::
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

-- | Creates a value of 'ListConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextToken' - A token you can use in a subsequent request to retrieve the next set of results.
--
-- * 'lcrrsConnections' - An array of connections objects that include details about the connections.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listConnectionsResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListConnectionsResponse
listConnectionsResponse pResponseStatus_ =
  ListConnectionsResponse'
    { _lcrrsNextToken = Nothing,
      _lcrrsConnections = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | A token you can use in a subsequent request to retrieve the next set of results.
lcrrsNextToken :: Lens' ListConnectionsResponse (Maybe Text)
lcrrsNextToken = lens _lcrrsNextToken (\s a -> s {_lcrrsNextToken = a})

-- | An array of connections objects that include details about the connections.
lcrrsConnections :: Lens' ListConnectionsResponse [Connection]
lcrrsConnections = lens _lcrrsConnections (\s a -> s {_lcrrsConnections = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListConnectionsResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListConnectionsResponse

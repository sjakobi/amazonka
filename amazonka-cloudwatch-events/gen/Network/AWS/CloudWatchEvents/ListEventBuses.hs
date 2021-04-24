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
-- Module      : Network.AWS.CloudWatchEvents.ListEventBuses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the event buses in your account, including the default event bus, custom event buses, and partner event buses.
module Network.AWS.CloudWatchEvents.ListEventBuses
  ( -- * Creating a Request
    listEventBuses,
    ListEventBuses,

    -- * Request Lenses
    lebNextToken,
    lebNamePrefix,
    lebLimit,

    -- * Destructuring the Response
    listEventBusesResponse,
    ListEventBusesResponse,

    -- * Response Lenses
    lebrrsNextToken,
    lebrrsEventBuses,
    lebrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEventBuses' smart constructor.
data ListEventBuses = ListEventBuses'
  { _lebNextToken ::
      !(Maybe Text),
    _lebNamePrefix :: !(Maybe Text),
    _lebLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListEventBuses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lebNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'lebNamePrefix' - Specifying this limits the results to only those event buses with names that start with the specified prefix.
--
-- * 'lebLimit' - Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.
listEventBuses ::
  ListEventBuses
listEventBuses =
  ListEventBuses'
    { _lebNextToken = Nothing,
      _lebNamePrefix = Nothing,
      _lebLimit = Nothing
    }

-- | The token returned by a previous call to retrieve the next set of results.
lebNextToken :: Lens' ListEventBuses (Maybe Text)
lebNextToken = lens _lebNextToken (\s a -> s {_lebNextToken = a})

-- | Specifying this limits the results to only those event buses with names that start with the specified prefix.
lebNamePrefix :: Lens' ListEventBuses (Maybe Text)
lebNamePrefix = lens _lebNamePrefix (\s a -> s {_lebNamePrefix = a})

-- | Specifying this limits the number of results returned by this operation. The operation also returns a NextToken which you can use in a subsequent operation to retrieve the next set of results.
lebLimit :: Lens' ListEventBuses (Maybe Natural)
lebLimit = lens _lebLimit (\s a -> s {_lebLimit = a}) . mapping _Nat

instance AWSRequest ListEventBuses where
  type Rs ListEventBuses = ListEventBusesResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListEventBusesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EventBuses" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListEventBuses

instance NFData ListEventBuses

instance ToHeaders ListEventBuses where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListEventBuses" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEventBuses where
  toJSON ListEventBuses' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lebNextToken,
            ("NamePrefix" .=) <$> _lebNamePrefix,
            ("Limit" .=) <$> _lebLimit
          ]
      )

instance ToPath ListEventBuses where
  toPath = const "/"

instance ToQuery ListEventBuses where
  toQuery = const mempty

-- | /See:/ 'listEventBusesResponse' smart constructor.
data ListEventBusesResponse = ListEventBusesResponse'
  { _lebrrsNextToken ::
      !(Maybe Text),
    _lebrrsEventBuses ::
      !(Maybe [EventBus]),
    _lebrrsResponseStatus ::
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

-- | Creates a value of 'ListEventBusesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lebrrsNextToken' - A token you can use in a subsequent operation to retrieve the next set of results.
--
-- * 'lebrrsEventBuses' - This list of event buses.
--
-- * 'lebrrsResponseStatus' - -- | The response status code.
listEventBusesResponse ::
  -- | 'lebrrsResponseStatus'
  Int ->
  ListEventBusesResponse
listEventBusesResponse pResponseStatus_ =
  ListEventBusesResponse'
    { _lebrrsNextToken = Nothing,
      _lebrrsEventBuses = Nothing,
      _lebrrsResponseStatus = pResponseStatus_
    }

-- | A token you can use in a subsequent operation to retrieve the next set of results.
lebrrsNextToken :: Lens' ListEventBusesResponse (Maybe Text)
lebrrsNextToken = lens _lebrrsNextToken (\s a -> s {_lebrrsNextToken = a})

-- | This list of event buses.
lebrrsEventBuses :: Lens' ListEventBusesResponse [EventBus]
lebrrsEventBuses = lens _lebrrsEventBuses (\s a -> s {_lebrrsEventBuses = a}) . _Default . _Coerce

-- | -- | The response status code.
lebrrsResponseStatus :: Lens' ListEventBusesResponse Int
lebrrsResponseStatus = lens _lebrrsResponseStatus (\s a -> s {_lebrrsResponseStatus = a})

instance NFData ListEventBusesResponse

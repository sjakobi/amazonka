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
-- Module      : Network.AWS.CloudWatchEvents.PutEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends custom events to Amazon EventBridge so that they can be matched to rules.
module Network.AWS.CloudWatchEvents.PutEvents
  ( -- * Creating a Request
    putEvents,
    PutEvents,

    -- * Request Lenses
    peEntries,

    -- * Destructuring the Response
    putEventsResponse,
    PutEventsResponse,

    -- * Response Lenses
    perrsFailedEntryCount,
    perrsEntries,
    perrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putEvents' smart constructor.
newtype PutEvents = PutEvents'
  { _peEntries ::
      List1 PutEventsRequestEntry
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'peEntries' - The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.
putEvents ::
  -- | 'peEntries'
  NonEmpty PutEventsRequestEntry ->
  PutEvents
putEvents pEntries_ =
  PutEvents' {_peEntries = _List1 # pEntries_}

-- | The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.
peEntries :: Lens' PutEvents (NonEmpty PutEventsRequestEntry)
peEntries = lens _peEntries (\s a -> s {_peEntries = a}) . _List1

instance AWSRequest PutEvents where
  type Rs PutEvents = PutEventsResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          PutEventsResponse'
            <$> (x .?> "FailedEntryCount")
            <*> (x .?> "Entries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable PutEvents

instance NFData PutEvents

instance ToHeaders PutEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.PutEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutEvents where
  toJSON PutEvents' {..} =
    object (catMaybes [Just ("Entries" .= _peEntries)])

instance ToPath PutEvents where
  toPath = const "/"

instance ToQuery PutEvents where
  toQuery = const mempty

-- | /See:/ 'putEventsResponse' smart constructor.
data PutEventsResponse = PutEventsResponse'
  { _perrsFailedEntryCount ::
      !(Maybe Int),
    _perrsEntries ::
      !(Maybe [PutEventsResultEntry]),
    _perrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'perrsFailedEntryCount' - The number of failed entries.
--
-- * 'perrsEntries' - The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.
--
-- * 'perrsResponseStatus' - -- | The response status code.
putEventsResponse ::
  -- | 'perrsResponseStatus'
  Int ->
  PutEventsResponse
putEventsResponse pResponseStatus_ =
  PutEventsResponse'
    { _perrsFailedEntryCount =
        Nothing,
      _perrsEntries = Nothing,
      _perrsResponseStatus = pResponseStatus_
    }

-- | The number of failed entries.
perrsFailedEntryCount :: Lens' PutEventsResponse (Maybe Int)
perrsFailedEntryCount = lens _perrsFailedEntryCount (\s a -> s {_perrsFailedEntryCount = a})

-- | The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.
perrsEntries :: Lens' PutEventsResponse [PutEventsResultEntry]
perrsEntries = lens _perrsEntries (\s a -> s {_perrsEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
perrsResponseStatus :: Lens' PutEventsResponse Int
perrsResponseStatus = lens _perrsResponseStatus (\s a -> s {_perrsResponseStatus = a})

instance NFData PutEventsResponse

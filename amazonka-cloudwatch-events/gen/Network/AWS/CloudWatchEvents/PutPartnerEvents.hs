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
-- Module      : Network.AWS.CloudWatchEvents.PutPartnerEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is used by SaaS partners to write events to a customer's partner event bus. AWS customers do not use this operation.
module Network.AWS.CloudWatchEvents.PutPartnerEvents
  ( -- * Creating a Request
    putPartnerEvents,
    PutPartnerEvents,

    -- * Request Lenses
    ppeEntries,

    -- * Destructuring the Response
    putPartnerEventsResponse,
    PutPartnerEventsResponse,

    -- * Response Lenses
    pperrsFailedEntryCount,
    pperrsEntries,
    pperrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putPartnerEvents' smart constructor.
newtype PutPartnerEvents = PutPartnerEvents'
  { _ppeEntries ::
      List1 PutPartnerEventsRequestEntry
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutPartnerEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppeEntries' - The list of events to write to the event bus.
putPartnerEvents ::
  -- | 'ppeEntries'
  NonEmpty PutPartnerEventsRequestEntry ->
  PutPartnerEvents
putPartnerEvents pEntries_ =
  PutPartnerEvents' {_ppeEntries = _List1 # pEntries_}

-- | The list of events to write to the event bus.
ppeEntries :: Lens' PutPartnerEvents (NonEmpty PutPartnerEventsRequestEntry)
ppeEntries = lens _ppeEntries (\s a -> s {_ppeEntries = a}) . _List1

instance AWSRequest PutPartnerEvents where
  type Rs PutPartnerEvents = PutPartnerEventsResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          PutPartnerEventsResponse'
            <$> (x .?> "FailedEntryCount")
            <*> (x .?> "Entries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable PutPartnerEvents

instance NFData PutPartnerEvents

instance ToHeaders PutPartnerEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.PutPartnerEvents" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutPartnerEvents where
  toJSON PutPartnerEvents' {..} =
    object
      (catMaybes [Just ("Entries" .= _ppeEntries)])

instance ToPath PutPartnerEvents where
  toPath = const "/"

instance ToQuery PutPartnerEvents where
  toQuery = const mempty

-- | /See:/ 'putPartnerEventsResponse' smart constructor.
data PutPartnerEventsResponse = PutPartnerEventsResponse'
  { _pperrsFailedEntryCount ::
      !(Maybe Int),
    _pperrsEntries ::
      !( Maybe
           [PutPartnerEventsResultEntry]
       ),
    _pperrsResponseStatus ::
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

-- | Creates a value of 'PutPartnerEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pperrsFailedEntryCount' - The number of events from this operation that could not be written to the partner event bus.
--
-- * 'pperrsEntries' - The list of events from this operation that were successfully written to the partner event bus.
--
-- * 'pperrsResponseStatus' - -- | The response status code.
putPartnerEventsResponse ::
  -- | 'pperrsResponseStatus'
  Int ->
  PutPartnerEventsResponse
putPartnerEventsResponse pResponseStatus_ =
  PutPartnerEventsResponse'
    { _pperrsFailedEntryCount =
        Nothing,
      _pperrsEntries = Nothing,
      _pperrsResponseStatus = pResponseStatus_
    }

-- | The number of events from this operation that could not be written to the partner event bus.
pperrsFailedEntryCount :: Lens' PutPartnerEventsResponse (Maybe Int)
pperrsFailedEntryCount = lens _pperrsFailedEntryCount (\s a -> s {_pperrsFailedEntryCount = a})

-- | The list of events from this operation that were successfully written to the partner event bus.
pperrsEntries :: Lens' PutPartnerEventsResponse [PutPartnerEventsResultEntry]
pperrsEntries = lens _pperrsEntries (\s a -> s {_pperrsEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
pperrsResponseStatus :: Lens' PutPartnerEventsResponse Int
pperrsResponseStatus = lens _pperrsResponseStatus (\s a -> s {_pperrsResponseStatus = a})

instance NFData PutPartnerEventsResponse

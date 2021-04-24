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
-- Module      : Network.AWS.MediaLive.BatchStart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts existing resources
module Network.AWS.MediaLive.BatchStart
  ( -- * Creating a Request
    batchStart',
    BatchStart',

    -- * Request Lenses
    batMultiplexIds,
    batChannelIds,

    -- * Destructuring the Response
    batchStartResponse,
    BatchStartResponse,

    -- * Response Lenses
    bsrrsSuccessful,
    bsrrsFailed,
    bsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to start resources
--
-- /See:/ 'batchStart'' smart constructor.
data BatchStart' = BatchStart''
  { _batMultiplexIds ::
      !(Maybe [Text]),
    _batChannelIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'batMultiplexIds' - List of multiplex IDs
--
-- * 'batChannelIds' - List of channel IDs
batchStart' ::
  BatchStart'
batchStart' =
  BatchStart''
    { _batMultiplexIds = Nothing,
      _batChannelIds = Nothing
    }

-- | List of multiplex IDs
batMultiplexIds :: Lens' BatchStart' [Text]
batMultiplexIds = lens _batMultiplexIds (\s a -> s {_batMultiplexIds = a}) . _Default . _Coerce

-- | List of channel IDs
batChannelIds :: Lens' BatchStart' [Text]
batChannelIds = lens _batChannelIds (\s a -> s {_batChannelIds = a}) . _Default . _Coerce

instance AWSRequest BatchStart' where
  type Rs BatchStart' = BatchStartResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          BatchStartResponse'
            <$> (x .?> "successful" .!@ mempty)
            <*> (x .?> "failed" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchStart'

instance NFData BatchStart'

instance ToHeaders BatchStart' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchStart' where
  toJSON BatchStart'' {..} =
    object
      ( catMaybes
          [ ("multiplexIds" .=) <$> _batMultiplexIds,
            ("channelIds" .=) <$> _batChannelIds
          ]
      )

instance ToPath BatchStart' where
  toPath = const "/prod/batch/start"

instance ToQuery BatchStart' where
  toQuery = const mempty

-- | Placeholder documentation for BatchStartResponse
--
-- /See:/ 'batchStartResponse' smart constructor.
data BatchStartResponse = BatchStartResponse'
  { _bsrrsSuccessful ::
      !( Maybe
           [BatchSuccessfulResultModel]
       ),
    _bsrrsFailed ::
      !(Maybe [BatchFailedResultModel]),
    _bsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchStartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsrrsSuccessful' - List of successful operations
--
-- * 'bsrrsFailed' - List of failed operations
--
-- * 'bsrrsResponseStatus' - -- | The response status code.
batchStartResponse ::
  -- | 'bsrrsResponseStatus'
  Int ->
  BatchStartResponse
batchStartResponse pResponseStatus_ =
  BatchStartResponse'
    { _bsrrsSuccessful = Nothing,
      _bsrrsFailed = Nothing,
      _bsrrsResponseStatus = pResponseStatus_
    }

-- | List of successful operations
bsrrsSuccessful :: Lens' BatchStartResponse [BatchSuccessfulResultModel]
bsrrsSuccessful = lens _bsrrsSuccessful (\s a -> s {_bsrrsSuccessful = a}) . _Default . _Coerce

-- | List of failed operations
bsrrsFailed :: Lens' BatchStartResponse [BatchFailedResultModel]
bsrrsFailed = lens _bsrrsFailed (\s a -> s {_bsrrsFailed = a}) . _Default . _Coerce

-- | -- | The response status code.
bsrrsResponseStatus :: Lens' BatchStartResponse Int
bsrrsResponseStatus = lens _bsrrsResponseStatus (\s a -> s {_bsrrsResponseStatus = a})

instance NFData BatchStartResponse

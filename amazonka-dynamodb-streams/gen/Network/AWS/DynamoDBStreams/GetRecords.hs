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
-- Module      : Network.AWS.DynamoDBStreams.GetRecords
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the stream records from a given shard.
--
--
-- Specify a shard iterator using the @ShardIterator@ parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, @GetRecords@ returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.
module Network.AWS.DynamoDBStreams.GetRecords
  ( -- * Creating a Request
    getRecords,
    GetRecords,

    -- * Request Lenses
    grLimit,
    grShardIterator,

    -- * Destructuring the Response
    getRecordsResponse,
    GetRecordsResponse,

    -- * Response Lenses
    grrrsRecords,
    grrrsNextShardIterator,
    grrrsResponseStatus,
  )
where

import Network.AWS.DynamoDBStreams.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @GetRecords@ operation.
--
--
--
-- /See:/ 'getRecords' smart constructor.
data GetRecords = GetRecords'
  { _grLimit ::
      !(Maybe Nat),
    _grShardIterator :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRecords' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grLimit' - The maximum number of records to return from the shard. The upper limit is 1000.
--
-- * 'grShardIterator' - A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
getRecords ::
  -- | 'grShardIterator'
  Text ->
  GetRecords
getRecords pShardIterator_ =
  GetRecords'
    { _grLimit = Nothing,
      _grShardIterator = pShardIterator_
    }

-- | The maximum number of records to return from the shard. The upper limit is 1000.
grLimit :: Lens' GetRecords (Maybe Natural)
grLimit = lens _grLimit (\s a -> s {_grLimit = a}) . mapping _Nat

-- | A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
grShardIterator :: Lens' GetRecords Text
grShardIterator = lens _grShardIterator (\s a -> s {_grShardIterator = a})

instance AWSRequest GetRecords where
  type Rs GetRecords = GetRecordsResponse
  request = postJSON dynamoDBStreams
  response =
    receiveJSON
      ( \s h x ->
          GetRecordsResponse'
            <$> (x .?> "Records" .!@ mempty)
            <*> (x .?> "NextShardIterator")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRecords

instance NFData GetRecords

instance ToHeaders GetRecords where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDBStreams_20120810.GetRecords" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON GetRecords where
  toJSON GetRecords' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _grLimit,
            Just ("ShardIterator" .= _grShardIterator)
          ]
      )

instance ToPath GetRecords where
  toPath = const "/"

instance ToQuery GetRecords where
  toQuery = const mempty

-- | Represents the output of a @GetRecords@ operation.
--
--
--
-- /See:/ 'getRecordsResponse' smart constructor.
data GetRecordsResponse = GetRecordsResponse'
  { _grrrsRecords ::
      !(Maybe [Record]),
    _grrrsNextShardIterator ::
      !(Maybe Text),
    _grrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRecordsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsRecords' - The stream records from the shard, which were retrieved using the shard iterator.
--
-- * 'grrrsNextShardIterator' - The next position in the shard from which to start sequentially reading stream records. If set to @null@ , the shard has been closed and the requested iterator will not return any more data.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
getRecordsResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GetRecordsResponse
getRecordsResponse pResponseStatus_ =
  GetRecordsResponse'
    { _grrrsRecords = Nothing,
      _grrrsNextShardIterator = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | The stream records from the shard, which were retrieved using the shard iterator.
grrrsRecords :: Lens' GetRecordsResponse [Record]
grrrsRecords = lens _grrrsRecords (\s a -> s {_grrrsRecords = a}) . _Default . _Coerce

-- | The next position in the shard from which to start sequentially reading stream records. If set to @null@ , the shard has been closed and the requested iterator will not return any more data.
grrrsNextShardIterator :: Lens' GetRecordsResponse (Maybe Text)
grrrsNextShardIterator = lens _grrrsNextShardIterator (\s a -> s {_grrrsNextShardIterator = a})

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GetRecordsResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GetRecordsResponse

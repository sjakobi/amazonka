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
-- Module      : Network.AWS.Kinesis.DescribeStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified Kinesis data stream.
--
--
-- The information returned includes the stream name, Amazon Resource Name (ARN), creation time, enhanced metric configuration, and shard map. The shard map is an array of shard objects. For each shard object, there is the hash key and sequence number ranges that the shard spans, and the IDs of any earlier shards that played in a role in creating the shard. Every record ingested in the stream is identified by a sequence number, which is assigned when the record is put into the stream.
--
-- You can limit the number of shards returned by each call. For more information, see <https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html Retrieving Shards from a Stream> in the /Amazon Kinesis Data Streams Developer Guide/ .
--
-- There are no guarantees about the chronological order shards returned. To process shards in chronological order, use the ID of the parent shard to track the lineage to the oldest shard.
--
-- This operation has a limit of 10 transactions per second per account.
--
--
-- This operation returns paginated results.
module Network.AWS.Kinesis.DescribeStream
  ( -- * Creating a Request
    describeStream,
    DescribeStream,

    -- * Request Lenses
    dExclusiveStartShardId,
    dLimit,
    dStreamName,

    -- * Destructuring the Response
    describeStreamResponse,
    DescribeStreamResponse,

    -- * Response Lenses
    dsrrsResponseStatus,
    dsrrsStreamDescription,
  )
where

import Network.AWS.Kinesis.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for @DescribeStream@ .
--
--
--
-- /See:/ 'describeStream' smart constructor.
data DescribeStream = DescribeStream'
  { _dExclusiveStartShardId ::
      !(Maybe Text),
    _dLimit :: !(Maybe Nat),
    _dStreamName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dExclusiveStartShardId' - The shard ID of the shard to start with.
--
-- * 'dLimit' - The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.
--
-- * 'dStreamName' - The name of the stream to describe.
describeStream ::
  -- | 'dStreamName'
  Text ->
  DescribeStream
describeStream pStreamName_ =
  DescribeStream'
    { _dExclusiveStartShardId = Nothing,
      _dLimit = Nothing,
      _dStreamName = pStreamName_
    }

-- | The shard ID of the shard to start with.
dExclusiveStartShardId :: Lens' DescribeStream (Maybe Text)
dExclusiveStartShardId = lens _dExclusiveStartShardId (\s a -> s {_dExclusiveStartShardId = a})

-- | The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.
dLimit :: Lens' DescribeStream (Maybe Natural)
dLimit = lens _dLimit (\s a -> s {_dLimit = a}) . mapping _Nat

-- | The name of the stream to describe.
dStreamName :: Lens' DescribeStream Text
dStreamName = lens _dStreamName (\s a -> s {_dStreamName = a})

instance AWSPager DescribeStream where
  page rq rs
    | stop
        (rs ^. dsrrsStreamDescription . sdHasMoreShards) =
      Nothing
    | isNothing
        ( rs
            ^? dsrrsStreamDescription . sdShards . _last . sShardId
        ) =
      Nothing
    | otherwise =
      Just $
        rq
          & dExclusiveStartShardId
          .~ rs
          ^? dsrrsStreamDescription . sdShards . _last . sShardId

instance AWSRequest DescribeStream where
  type Rs DescribeStream = DescribeStreamResponse
  request = postJSON kinesis
  response =
    receiveJSON
      ( \s h x ->
          DescribeStreamResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "StreamDescription")
      )

instance Hashable DescribeStream

instance NFData DescribeStream

instance ToHeaders DescribeStream where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Kinesis_20131202.DescribeStream" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStream where
  toJSON DescribeStream' {..} =
    object
      ( catMaybes
          [ ("ExclusiveStartShardId" .=)
              <$> _dExclusiveStartShardId,
            ("Limit" .=) <$> _dLimit,
            Just ("StreamName" .= _dStreamName)
          ]
      )

instance ToPath DescribeStream where
  toPath = const "/"

instance ToQuery DescribeStream where
  toQuery = const mempty

-- | Represents the output for @DescribeStream@ .
--
--
--
-- /See:/ 'describeStreamResponse' smart constructor.
data DescribeStreamResponse = DescribeStreamResponse'
  { _dsrrsResponseStatus ::
      !Int,
    _dsrrsStreamDescription ::
      !StreamDescription
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
--
-- * 'dsrrsStreamDescription' - The current status of the stream, the stream Amazon Resource Name (ARN), an array of shard objects that comprise the stream, and whether there are more shards available.
describeStreamResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  -- | 'dsrrsStreamDescription'
  StreamDescription ->
  DescribeStreamResponse
describeStreamResponse
  pResponseStatus_
  pStreamDescription_ =
    DescribeStreamResponse'
      { _dsrrsResponseStatus =
          pResponseStatus_,
        _dsrrsStreamDescription = pStreamDescription_
      }

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DescribeStreamResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

-- | The current status of the stream, the stream Amazon Resource Name (ARN), an array of shard objects that comprise the stream, and whether there are more shards available.
dsrrsStreamDescription :: Lens' DescribeStreamResponse StreamDescription
dsrrsStreamDescription = lens _dsrrsStreamDescription (\s a -> s {_dsrrsStreamDescription = a})

instance NFData DescribeStreamResponse

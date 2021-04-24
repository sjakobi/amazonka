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
-- Module      : Network.AWS.Kinesis.ListTagsForStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags for the specified Kinesis data stream. This operation has a limit of five transactions per second per account.
module Network.AWS.Kinesis.ListTagsForStream
  ( -- * Creating a Request
    listTagsForStream,
    ListTagsForStream,

    -- * Request Lenses
    ltfsExclusiveStartTagKey,
    ltfsLimit,
    ltfsStreamName,

    -- * Destructuring the Response
    listTagsForStreamResponse,
    ListTagsForStreamResponse,

    -- * Response Lenses
    ltfsrrsResponseStatus,
    ltfsrrsTags,
    ltfsrrsHasMoreTags,
  )
where

import Network.AWS.Kinesis.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for @ListTagsForStream@ .
--
--
--
-- /See:/ 'listTagsForStream' smart constructor.
data ListTagsForStream = ListTagsForStream'
  { _ltfsExclusiveStartTagKey ::
      !(Maybe Text),
    _ltfsLimit :: !(Maybe Nat),
    _ltfsStreamName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfsExclusiveStartTagKey' - The key to use as the starting point for the list of tags. If this parameter is set, @ListTagsForStream@ gets all tags that occur after @ExclusiveStartTagKey@ .
--
-- * 'ltfsLimit' - The number of tags to return. If this number is less than the total number of tags associated with the stream, @HasMoreTags@ is set to @true@ . To list additional tags, set @ExclusiveStartTagKey@ to the last key in the response.
--
-- * 'ltfsStreamName' - The name of the stream.
listTagsForStream ::
  -- | 'ltfsStreamName'
  Text ->
  ListTagsForStream
listTagsForStream pStreamName_ =
  ListTagsForStream'
    { _ltfsExclusiveStartTagKey =
        Nothing,
      _ltfsLimit = Nothing,
      _ltfsStreamName = pStreamName_
    }

-- | The key to use as the starting point for the list of tags. If this parameter is set, @ListTagsForStream@ gets all tags that occur after @ExclusiveStartTagKey@ .
ltfsExclusiveStartTagKey :: Lens' ListTagsForStream (Maybe Text)
ltfsExclusiveStartTagKey = lens _ltfsExclusiveStartTagKey (\s a -> s {_ltfsExclusiveStartTagKey = a})

-- | The number of tags to return. If this number is less than the total number of tags associated with the stream, @HasMoreTags@ is set to @true@ . To list additional tags, set @ExclusiveStartTagKey@ to the last key in the response.
ltfsLimit :: Lens' ListTagsForStream (Maybe Natural)
ltfsLimit = lens _ltfsLimit (\s a -> s {_ltfsLimit = a}) . mapping _Nat

-- | The name of the stream.
ltfsStreamName :: Lens' ListTagsForStream Text
ltfsStreamName = lens _ltfsStreamName (\s a -> s {_ltfsStreamName = a})

instance AWSRequest ListTagsForStream where
  type Rs ListTagsForStream = ListTagsForStreamResponse
  request = postJSON kinesis
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForStreamResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .:> "HasMoreTags")
      )

instance Hashable ListTagsForStream

instance NFData ListTagsForStream

instance ToHeaders ListTagsForStream where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Kinesis_20131202.ListTagsForStream" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagsForStream where
  toJSON ListTagsForStream' {..} =
    object
      ( catMaybes
          [ ("ExclusiveStartTagKey" .=)
              <$> _ltfsExclusiveStartTagKey,
            ("Limit" .=) <$> _ltfsLimit,
            Just ("StreamName" .= _ltfsStreamName)
          ]
      )

instance ToPath ListTagsForStream where
  toPath = const "/"

instance ToQuery ListTagsForStream where
  toQuery = const mempty

-- | Represents the output for @ListTagsForStream@ .
--
--
--
-- /See:/ 'listTagsForStreamResponse' smart constructor.
data ListTagsForStreamResponse = ListTagsForStreamResponse'
  { _ltfsrrsResponseStatus ::
      !Int,
    _ltfsrrsTags ::
      ![Tag],
    _ltfsrrsHasMoreTags ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTagsForStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfsrrsResponseStatus' - -- | The response status code.
--
-- * 'ltfsrrsTags' - A list of tags associated with @StreamName@ , starting with the first tag after @ExclusiveStartTagKey@ and up to the specified @Limit@ .
--
-- * 'ltfsrrsHasMoreTags' - If set to @true@ , more tags are available. To request additional tags, set @ExclusiveStartTagKey@ to the key of the last tag returned.
listTagsForStreamResponse ::
  -- | 'ltfsrrsResponseStatus'
  Int ->
  -- | 'ltfsrrsHasMoreTags'
  Bool ->
  ListTagsForStreamResponse
listTagsForStreamResponse
  pResponseStatus_
  pHasMoreTags_ =
    ListTagsForStreamResponse'
      { _ltfsrrsResponseStatus =
          pResponseStatus_,
        _ltfsrrsTags = mempty,
        _ltfsrrsHasMoreTags = pHasMoreTags_
      }

-- | -- | The response status code.
ltfsrrsResponseStatus :: Lens' ListTagsForStreamResponse Int
ltfsrrsResponseStatus = lens _ltfsrrsResponseStatus (\s a -> s {_ltfsrrsResponseStatus = a})

-- | A list of tags associated with @StreamName@ , starting with the first tag after @ExclusiveStartTagKey@ and up to the specified @Limit@ .
ltfsrrsTags :: Lens' ListTagsForStreamResponse [Tag]
ltfsrrsTags = lens _ltfsrrsTags (\s a -> s {_ltfsrrsTags = a}) . _Coerce

-- | If set to @true@ , more tags are available. To request additional tags, set @ExclusiveStartTagKey@ to the key of the last tag returned.
ltfsrrsHasMoreTags :: Lens' ListTagsForStreamResponse Bool
ltfsrrsHasMoreTags = lens _ltfsrrsHasMoreTags (\s a -> s {_ltfsrrsHasMoreTags = a})

instance NFData ListTagsForStreamResponse

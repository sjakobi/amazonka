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
-- Module      : Network.AWS.KinesisVideo.ListTagsForStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of tags associated with the specified stream.
--
--
-- In the request, you must specify either the @StreamName@ or the @StreamARN@ .
module Network.AWS.KinesisVideo.ListTagsForStream
  ( -- * Creating a Request
    listTagsForStream,
    ListTagsForStream,

    -- * Request Lenses
    ltfsNextToken,
    ltfsStreamARN,
    ltfsStreamName,

    -- * Destructuring the Response
    listTagsForStreamResponse,
    ListTagsForStreamResponse,

    -- * Response Lenses
    ltfsrrsNextToken,
    ltfsrrsTags,
    ltfsrrsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTagsForStream' smart constructor.
data ListTagsForStream = ListTagsForStream'
  { _ltfsNextToken ::
      !(Maybe Text),
    _ltfsStreamARN :: !(Maybe Text),
    _ltfsStreamName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfsNextToken' - If you specify this parameter and the result of a @ListTagsForStream@ call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.
--
-- * 'ltfsStreamARN' - The Amazon Resource Name (ARN) of the stream that you want to list tags for.
--
-- * 'ltfsStreamName' - The name of the stream that you want to list tags for.
listTagsForStream ::
  ListTagsForStream
listTagsForStream =
  ListTagsForStream'
    { _ltfsNextToken = Nothing,
      _ltfsStreamARN = Nothing,
      _ltfsStreamName = Nothing
    }

-- | If you specify this parameter and the result of a @ListTagsForStream@ call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.
ltfsNextToken :: Lens' ListTagsForStream (Maybe Text)
ltfsNextToken = lens _ltfsNextToken (\s a -> s {_ltfsNextToken = a})

-- | The Amazon Resource Name (ARN) of the stream that you want to list tags for.
ltfsStreamARN :: Lens' ListTagsForStream (Maybe Text)
ltfsStreamARN = lens _ltfsStreamARN (\s a -> s {_ltfsStreamARN = a})

-- | The name of the stream that you want to list tags for.
ltfsStreamName :: Lens' ListTagsForStream (Maybe Text)
ltfsStreamName = lens _ltfsStreamName (\s a -> s {_ltfsStreamName = a})

instance AWSRequest ListTagsForStream where
  type Rs ListTagsForStream = ListTagsForStreamResponse
  request = postJSON kinesisVideo
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForStreamResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagsForStream

instance NFData ListTagsForStream

instance ToHeaders ListTagsForStream where
  toHeaders = const mempty

instance ToJSON ListTagsForStream where
  toJSON ListTagsForStream' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltfsNextToken,
            ("StreamARN" .=) <$> _ltfsStreamARN,
            ("StreamName" .=) <$> _ltfsStreamName
          ]
      )

instance ToPath ListTagsForStream where
  toPath = const "/listTagsForStream"

instance ToQuery ListTagsForStream where
  toQuery = const mempty

-- | /See:/ 'listTagsForStreamResponse' smart constructor.
data ListTagsForStreamResponse = ListTagsForStreamResponse'
  { _ltfsrrsNextToken ::
      !(Maybe Text),
    _ltfsrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _ltfsrrsResponseStatus ::
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

-- | Creates a value of 'ListTagsForStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfsrrsNextToken' - If you specify this parameter and the result of a @ListTags@ call is truncated, the response includes a token that you can use in the next request to fetch the next set of tags.
--
-- * 'ltfsrrsTags' - A map of tag keys and values associated with the specified stream.
--
-- * 'ltfsrrsResponseStatus' - -- | The response status code.
listTagsForStreamResponse ::
  -- | 'ltfsrrsResponseStatus'
  Int ->
  ListTagsForStreamResponse
listTagsForStreamResponse pResponseStatus_ =
  ListTagsForStreamResponse'
    { _ltfsrrsNextToken =
        Nothing,
      _ltfsrrsTags = Nothing,
      _ltfsrrsResponseStatus = pResponseStatus_
    }

-- | If you specify this parameter and the result of a @ListTags@ call is truncated, the response includes a token that you can use in the next request to fetch the next set of tags.
ltfsrrsNextToken :: Lens' ListTagsForStreamResponse (Maybe Text)
ltfsrrsNextToken = lens _ltfsrrsNextToken (\s a -> s {_ltfsrrsNextToken = a})

-- | A map of tag keys and values associated with the specified stream.
ltfsrrsTags :: Lens' ListTagsForStreamResponse (HashMap Text Text)
ltfsrrsTags = lens _ltfsrrsTags (\s a -> s {_ltfsrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
ltfsrrsResponseStatus :: Lens' ListTagsForStreamResponse Int
ltfsrrsResponseStatus = lens _ltfsrrsResponseStatus (\s a -> s {_ltfsrrsResponseStatus = a})

instance NFData ListTagsForStreamResponse

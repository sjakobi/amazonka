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
-- Module      : Network.AWS.KinesisVideo.ListStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @StreamInfo@ objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a @StreamNameCondition@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.KinesisVideo.ListStreams
  ( -- * Creating a Request
    listStreams,
    ListStreams,

    -- * Request Lenses
    lsNextToken,
    lsMaxResults,
    lsStreamNameCondition,

    -- * Destructuring the Response
    listStreamsResponse,
    ListStreamsResponse,

    -- * Response Lenses
    lsrrsNextToken,
    lsrrsStreamInfoList,
    lsrrsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStreams' smart constructor.
data ListStreams = ListStreams'
  { _lsNextToken ::
      !(Maybe Text),
    _lsMaxResults :: !(Maybe Nat),
    _lsStreamNameCondition ::
      !(Maybe StreamNameCondition)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsNextToken' - If you specify this parameter, when the result of a @ListStreams@ operation is truncated, the call returns the @NextToken@ in the response. To get another batch of streams, provide this token in your next request.
--
-- * 'lsMaxResults' - The maximum number of streams to return in the response. The default is 10,000.
--
-- * 'lsStreamNameCondition' - Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition.
listStreams ::
  ListStreams
listStreams =
  ListStreams'
    { _lsNextToken = Nothing,
      _lsMaxResults = Nothing,
      _lsStreamNameCondition = Nothing
    }

-- | If you specify this parameter, when the result of a @ListStreams@ operation is truncated, the call returns the @NextToken@ in the response. To get another batch of streams, provide this token in your next request.
lsNextToken :: Lens' ListStreams (Maybe Text)
lsNextToken = lens _lsNextToken (\s a -> s {_lsNextToken = a})

-- | The maximum number of streams to return in the response. The default is 10,000.
lsMaxResults :: Lens' ListStreams (Maybe Natural)
lsMaxResults = lens _lsMaxResults (\s a -> s {_lsMaxResults = a}) . mapping _Nat

-- | Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition.
lsStreamNameCondition :: Lens' ListStreams (Maybe StreamNameCondition)
lsStreamNameCondition = lens _lsStreamNameCondition (\s a -> s {_lsStreamNameCondition = a})

instance AWSPager ListStreams where
  page rq rs
    | stop (rs ^. lsrrsNextToken) = Nothing
    | stop (rs ^. lsrrsStreamInfoList) = Nothing
    | otherwise =
      Just $ rq & lsNextToken .~ rs ^. lsrrsNextToken

instance AWSRequest ListStreams where
  type Rs ListStreams = ListStreamsResponse
  request = postJSON kinesisVideo
  response =
    receiveJSON
      ( \s h x ->
          ListStreamsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "StreamInfoList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListStreams

instance NFData ListStreams

instance ToHeaders ListStreams where
  toHeaders = const mempty

instance ToJSON ListStreams where
  toJSON ListStreams' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsNextToken,
            ("MaxResults" .=) <$> _lsMaxResults,
            ("StreamNameCondition" .=)
              <$> _lsStreamNameCondition
          ]
      )

instance ToPath ListStreams where
  toPath = const "/listStreams"

instance ToQuery ListStreams where
  toQuery = const mempty

-- | /See:/ 'listStreamsResponse' smart constructor.
data ListStreamsResponse = ListStreamsResponse'
  { _lsrrsNextToken ::
      !(Maybe Text),
    _lsrrsStreamInfoList ::
      !(Maybe [StreamInfo]),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsNextToken' - If the response is truncated, the call returns this element with a token. To get the next batch of streams, use this token in your next request.
--
-- * 'lsrrsStreamInfoList' - An array of @StreamInfo@ objects.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listStreamsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListStreamsResponse
listStreamsResponse pResponseStatus_ =
  ListStreamsResponse'
    { _lsrrsNextToken = Nothing,
      _lsrrsStreamInfoList = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | If the response is truncated, the call returns this element with a token. To get the next batch of streams, use this token in your next request.
lsrrsNextToken :: Lens' ListStreamsResponse (Maybe Text)
lsrrsNextToken = lens _lsrrsNextToken (\s a -> s {_lsrrsNextToken = a})

-- | An array of @StreamInfo@ objects.
lsrrsStreamInfoList :: Lens' ListStreamsResponse [StreamInfo]
lsrrsStreamInfoList = lens _lsrrsStreamInfoList (\s a -> s {_lsrrsStreamInfoList = a}) . _Default . _Coerce

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListStreamsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListStreamsResponse

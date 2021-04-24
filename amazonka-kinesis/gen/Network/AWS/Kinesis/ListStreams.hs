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
-- Module      : Network.AWS.Kinesis.ListStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your Kinesis data streams.
--
--
-- The number of streams may be too large to return from a single call to @ListStreams@ . You can limit the number of returned streams using the @Limit@ parameter. If you do not specify a value for the @Limit@ parameter, Kinesis Data Streams uses the default limit, which is currently 10.
--
-- You can detect if there are more streams available to list by using the @HasMoreStreams@ flag from the returned output. If there are more streams available, you can request more streams by using the name of the last stream returned by the @ListStreams@ request in the @ExclusiveStartStreamName@ parameter in a subsequent request to @ListStreams@ . The group of stream names returned by the subsequent request is then added to the list. You can continue this process until all the stream names have been collected in the list.
--
-- 'ListStreams' has a limit of five transactions per second per account.
--
--
-- This operation returns paginated results.
module Network.AWS.Kinesis.ListStreams
  ( -- * Creating a Request
    listStreams,
    ListStreams,

    -- * Request Lenses
    lsExclusiveStartStreamName,
    lsLimit,

    -- * Destructuring the Response
    listStreamsResponse,
    ListStreamsResponse,

    -- * Response Lenses
    lsrrsResponseStatus,
    lsrrsStreamNames,
    lsrrsHasMoreStreams,
  )
where

import Network.AWS.Kinesis.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for @ListStreams@ .
--
--
--
-- /See:/ 'listStreams' smart constructor.
data ListStreams = ListStreams'
  { _lsExclusiveStartStreamName ::
      !(Maybe Text),
    _lsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsExclusiveStartStreamName' - The name of the stream to start the list with.
--
-- * 'lsLimit' - The maximum number of streams to list.
listStreams ::
  ListStreams
listStreams =
  ListStreams'
    { _lsExclusiveStartStreamName = Nothing,
      _lsLimit = Nothing
    }

-- | The name of the stream to start the list with.
lsExclusiveStartStreamName :: Lens' ListStreams (Maybe Text)
lsExclusiveStartStreamName = lens _lsExclusiveStartStreamName (\s a -> s {_lsExclusiveStartStreamName = a})

-- | The maximum number of streams to list.
lsLimit :: Lens' ListStreams (Maybe Natural)
lsLimit = lens _lsLimit (\s a -> s {_lsLimit = a}) . mapping _Nat

instance AWSPager ListStreams where
  page rq rs
    | stop (rs ^. lsrrsHasMoreStreams) = Nothing
    | isNothing (rs ^? lsrrsStreamNames . _last) =
      Nothing
    | otherwise =
      Just $
        rq
          & lsExclusiveStartStreamName
          .~ rs ^? lsrrsStreamNames . _last

instance AWSRequest ListStreams where
  type Rs ListStreams = ListStreamsResponse
  request = postJSON kinesis
  response =
    receiveJSON
      ( \s h x ->
          ListStreamsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "StreamNames" .!@ mempty)
            <*> (x .:> "HasMoreStreams")
      )

instance Hashable ListStreams

instance NFData ListStreams

instance ToHeaders ListStreams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Kinesis_20131202.ListStreams" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListStreams where
  toJSON ListStreams' {..} =
    object
      ( catMaybes
          [ ("ExclusiveStartStreamName" .=)
              <$> _lsExclusiveStartStreamName,
            ("Limit" .=) <$> _lsLimit
          ]
      )

instance ToPath ListStreams where
  toPath = const "/"

instance ToQuery ListStreams where
  toQuery = const mempty

-- | Represents the output for @ListStreams@ .
--
--
--
-- /See:/ 'listStreamsResponse' smart constructor.
data ListStreamsResponse = ListStreamsResponse'
  { _lsrrsResponseStatus ::
      !Int,
    _lsrrsStreamNames :: ![Text],
    _lsrrsHasMoreStreams :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
--
-- * 'lsrrsStreamNames' - The names of the streams that are associated with the AWS account making the @ListStreams@ request.
--
-- * 'lsrrsHasMoreStreams' - If set to @true@ , there are more streams available to list.
listStreamsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  -- | 'lsrrsHasMoreStreams'
  Bool ->
  ListStreamsResponse
listStreamsResponse pResponseStatus_ pHasMoreStreams_ =
  ListStreamsResponse'
    { _lsrrsResponseStatus =
        pResponseStatus_,
      _lsrrsStreamNames = mempty,
      _lsrrsHasMoreStreams = pHasMoreStreams_
    }

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListStreamsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

-- | The names of the streams that are associated with the AWS account making the @ListStreams@ request.
lsrrsStreamNames :: Lens' ListStreamsResponse [Text]
lsrrsStreamNames = lens _lsrrsStreamNames (\s a -> s {_lsrrsStreamNames = a}) . _Coerce

-- | If set to @true@ , there are more streams available to list.
lsrrsHasMoreStreams :: Lens' ListStreamsResponse Bool
lsrrsHasMoreStreams = lens _lsrrsHasMoreStreams (\s a -> s {_lsrrsHasMoreStreams = a})

instance NFData ListStreamsResponse

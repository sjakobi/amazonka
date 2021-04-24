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
-- Module      : Network.AWS.DynamoDBStreams.ListStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of stream ARNs associated with the current account and endpoint. If the @TableName@ parameter is present, then @ListStreams@ will return only the streams ARNs for that table.
module Network.AWS.DynamoDBStreams.ListStreams
  ( -- * Creating a Request
    listStreams,
    ListStreams,

    -- * Request Lenses
    lsTableName,
    lsExclusiveStartStreamARN,
    lsLimit,

    -- * Destructuring the Response
    listStreamsResponse,
    ListStreamsResponse,

    -- * Response Lenses
    lsrrsStreams,
    lsrrsLastEvaluatedStreamARN,
    lsrrsResponseStatus,
  )
where

import Network.AWS.DynamoDBStreams.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @ListStreams@ operation.
--
--
--
-- /See:/ 'listStreams' smart constructor.
data ListStreams = ListStreams'
  { _lsTableName ::
      !(Maybe Text),
    _lsExclusiveStartStreamARN :: !(Maybe Text),
    _lsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsTableName' - If this parameter is provided, then only the streams associated with this table name are returned.
--
-- * 'lsExclusiveStartStreamARN' - The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for @LastEvaluatedStreamArn@ in the previous operation.
--
-- * 'lsLimit' - The maximum number of streams to return. The upper limit is 100.
listStreams ::
  ListStreams
listStreams =
  ListStreams'
    { _lsTableName = Nothing,
      _lsExclusiveStartStreamARN = Nothing,
      _lsLimit = Nothing
    }

-- | If this parameter is provided, then only the streams associated with this table name are returned.
lsTableName :: Lens' ListStreams (Maybe Text)
lsTableName = lens _lsTableName (\s a -> s {_lsTableName = a})

-- | The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for @LastEvaluatedStreamArn@ in the previous operation.
lsExclusiveStartStreamARN :: Lens' ListStreams (Maybe Text)
lsExclusiveStartStreamARN = lens _lsExclusiveStartStreamARN (\s a -> s {_lsExclusiveStartStreamARN = a})

-- | The maximum number of streams to return. The upper limit is 100.
lsLimit :: Lens' ListStreams (Maybe Natural)
lsLimit = lens _lsLimit (\s a -> s {_lsLimit = a}) . mapping _Nat

instance AWSRequest ListStreams where
  type Rs ListStreams = ListStreamsResponse
  request = postJSON dynamoDBStreams
  response =
    receiveJSON
      ( \s h x ->
          ListStreamsResponse'
            <$> (x .?> "Streams" .!@ mempty)
            <*> (x .?> "LastEvaluatedStreamArn")
            <*> (pure (fromEnum s))
      )

instance Hashable ListStreams

instance NFData ListStreams

instance ToHeaders ListStreams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDBStreams_20120810.ListStreams" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON ListStreams where
  toJSON ListStreams' {..} =
    object
      ( catMaybes
          [ ("TableName" .=) <$> _lsTableName,
            ("ExclusiveStartStreamArn" .=)
              <$> _lsExclusiveStartStreamARN,
            ("Limit" .=) <$> _lsLimit
          ]
      )

instance ToPath ListStreams where
  toPath = const "/"

instance ToQuery ListStreams where
  toQuery = const mempty

-- | Represents the output of a @ListStreams@ operation.
--
--
--
-- /See:/ 'listStreamsResponse' smart constructor.
data ListStreamsResponse = ListStreamsResponse'
  { _lsrrsStreams ::
      !(Maybe [Stream]),
    _lsrrsLastEvaluatedStreamARN ::
      !(Maybe Text),
    _lsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrsStreams' - A list of stream descriptors associated with the current account and endpoint.
--
-- * 'lsrrsLastEvaluatedStreamARN' - The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If @LastEvaluatedStreamArn@ is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If @LastEvaluatedStreamArn@ is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when @LastEvaluatedStreamArn@ is empty.
--
-- * 'lsrrsResponseStatus' - -- | The response status code.
listStreamsResponse ::
  -- | 'lsrrsResponseStatus'
  Int ->
  ListStreamsResponse
listStreamsResponse pResponseStatus_ =
  ListStreamsResponse'
    { _lsrrsStreams = Nothing,
      _lsrrsLastEvaluatedStreamARN = Nothing,
      _lsrrsResponseStatus = pResponseStatus_
    }

-- | A list of stream descriptors associated with the current account and endpoint.
lsrrsStreams :: Lens' ListStreamsResponse [Stream]
lsrrsStreams = lens _lsrrsStreams (\s a -> s {_lsrrsStreams = a}) . _Default . _Coerce

-- | The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If @LastEvaluatedStreamArn@ is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If @LastEvaluatedStreamArn@ is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when @LastEvaluatedStreamArn@ is empty.
lsrrsLastEvaluatedStreamARN :: Lens' ListStreamsResponse (Maybe Text)
lsrrsLastEvaluatedStreamARN = lens _lsrrsLastEvaluatedStreamARN (\s a -> s {_lsrrsLastEvaluatedStreamARN = a})

-- | -- | The response status code.
lsrrsResponseStatus :: Lens' ListStreamsResponse Int
lsrrsResponseStatus = lens _lsrrsResponseStatus (\s a -> s {_lsrrsResponseStatus = a})

instance NFData ListStreamsResponse

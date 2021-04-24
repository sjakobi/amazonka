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
-- Module      : Network.AWS.Lambda.ListEventSourceMappings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists event source mappings. Specify an @EventSourceArn@ to only show event source mappings for a single event source.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListEventSourceMappings
  ( -- * Creating a Request
    listEventSourceMappings,
    ListEventSourceMappings,

    -- * Request Lenses
    lesmEventSourceARN,
    lesmFunctionName,
    lesmMaxItems,
    lesmMarker,

    -- * Destructuring the Response
    listEventSourceMappingsResponse,
    ListEventSourceMappingsResponse,

    -- * Response Lenses
    lesmrrsEventSourceMappings,
    lesmrrsNextMarker,
    lesmrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEventSourceMappings' smart constructor.
data ListEventSourceMappings = ListEventSourceMappings'
  { _lesmEventSourceARN ::
      !(Maybe Text),
    _lesmFunctionName ::
      !(Maybe Text),
    _lesmMaxItems ::
      !(Maybe Nat),
    _lesmMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEventSourceMappings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lesmEventSourceARN' - The Amazon Resource Name (ARN) of the event source.     * __Amazon Kinesis__ - The ARN of the data stream or a stream consumer.     * __Amazon DynamoDB Streams__ - The ARN of the stream.     * __Amazon Simple Queue Service__ - The ARN of the queue.     * __Amazon Managed Streaming for Apache Kafka__ - The ARN of the cluster.
--
-- * 'lesmFunctionName' - The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Version or Alias ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.
--
-- * 'lesmMaxItems' - The maximum number of event source mappings to return.
--
-- * 'lesmMarker' - A pagination token returned by a previous call.
listEventSourceMappings ::
  ListEventSourceMappings
listEventSourceMappings =
  ListEventSourceMappings'
    { _lesmEventSourceARN =
        Nothing,
      _lesmFunctionName = Nothing,
      _lesmMaxItems = Nothing,
      _lesmMarker = Nothing
    }

-- | The Amazon Resource Name (ARN) of the event source.     * __Amazon Kinesis__ - The ARN of the data stream or a stream consumer.     * __Amazon DynamoDB Streams__ - The ARN of the stream.     * __Amazon Simple Queue Service__ - The ARN of the queue.     * __Amazon Managed Streaming for Apache Kafka__ - The ARN of the cluster.
lesmEventSourceARN :: Lens' ListEventSourceMappings (Maybe Text)
lesmEventSourceARN = lens _lesmEventSourceARN (\s a -> s {_lesmEventSourceARN = a})

-- | The name of the Lambda function. __Name formats__      * __Function name__ - @MyFunction@ .     * __Function ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction@ .     * __Version or Alias ARN__ - @arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD@ .     * __Partial ARN__ - @123456789012:function:MyFunction@ . The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64 characters in length.
lesmFunctionName :: Lens' ListEventSourceMappings (Maybe Text)
lesmFunctionName = lens _lesmFunctionName (\s a -> s {_lesmFunctionName = a})

-- | The maximum number of event source mappings to return.
lesmMaxItems :: Lens' ListEventSourceMappings (Maybe Natural)
lesmMaxItems = lens _lesmMaxItems (\s a -> s {_lesmMaxItems = a}) . mapping _Nat

-- | A pagination token returned by a previous call.
lesmMarker :: Lens' ListEventSourceMappings (Maybe Text)
lesmMarker = lens _lesmMarker (\s a -> s {_lesmMarker = a})

instance AWSPager ListEventSourceMappings where
  page rq rs
    | stop (rs ^. lesmrrsNextMarker) = Nothing
    | stop (rs ^. lesmrrsEventSourceMappings) = Nothing
    | otherwise =
      Just $ rq & lesmMarker .~ rs ^. lesmrrsNextMarker

instance AWSRequest ListEventSourceMappings where
  type
    Rs ListEventSourceMappings =
      ListEventSourceMappingsResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          ListEventSourceMappingsResponse'
            <$> (x .?> "EventSourceMappings" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListEventSourceMappings

instance NFData ListEventSourceMappings

instance ToHeaders ListEventSourceMappings where
  toHeaders = const mempty

instance ToPath ListEventSourceMappings where
  toPath = const "/2015-03-31/event-source-mappings/"

instance ToQuery ListEventSourceMappings where
  toQuery ListEventSourceMappings' {..} =
    mconcat
      [ "EventSourceArn" =: _lesmEventSourceARN,
        "FunctionName" =: _lesmFunctionName,
        "MaxItems" =: _lesmMaxItems,
        "Marker" =: _lesmMarker
      ]

-- | /See:/ 'listEventSourceMappingsResponse' smart constructor.
data ListEventSourceMappingsResponse = ListEventSourceMappingsResponse'
  { _lesmrrsEventSourceMappings ::
      !( Maybe
           [EventSourceMappingConfiguration]
       ),
    _lesmrrsNextMarker ::
      !( Maybe
           Text
       ),
    _lesmrrsResponseStatus ::
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

-- | Creates a value of 'ListEventSourceMappingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lesmrrsEventSourceMappings' - A list of event source mappings.
--
-- * 'lesmrrsNextMarker' - A pagination token that's returned when the response doesn't contain all event source mappings.
--
-- * 'lesmrrsResponseStatus' - -- | The response status code.
listEventSourceMappingsResponse ::
  -- | 'lesmrrsResponseStatus'
  Int ->
  ListEventSourceMappingsResponse
listEventSourceMappingsResponse pResponseStatus_ =
  ListEventSourceMappingsResponse'
    { _lesmrrsEventSourceMappings =
        Nothing,
      _lesmrrsNextMarker = Nothing,
      _lesmrrsResponseStatus = pResponseStatus_
    }

-- | A list of event source mappings.
lesmrrsEventSourceMappings :: Lens' ListEventSourceMappingsResponse [EventSourceMappingConfiguration]
lesmrrsEventSourceMappings = lens _lesmrrsEventSourceMappings (\s a -> s {_lesmrrsEventSourceMappings = a}) . _Default . _Coerce

-- | A pagination token that's returned when the response doesn't contain all event source mappings.
lesmrrsNextMarker :: Lens' ListEventSourceMappingsResponse (Maybe Text)
lesmrrsNextMarker = lens _lesmrrsNextMarker (\s a -> s {_lesmrrsNextMarker = a})

-- | -- | The response status code.
lesmrrsResponseStatus :: Lens' ListEventSourceMappingsResponse Int
lesmrrsResponseStatus = lens _lesmrrsResponseStatus (\s a -> s {_lesmrrsResponseStatus = a})

instance NFData ListEventSourceMappingsResponse

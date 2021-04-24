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
-- Module      : Network.AWS.Firehose.ListTagsForDeliveryStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags for the specified delivery stream. This operation has a limit of five transactions per second per account.
module Network.AWS.Firehose.ListTagsForDeliveryStream
  ( -- * Creating a Request
    listTagsForDeliveryStream,
    ListTagsForDeliveryStream,

    -- * Request Lenses
    ltfdsExclusiveStartTagKey,
    ltfdsLimit,
    ltfdsDeliveryStreamName,

    -- * Destructuring the Response
    listTagsForDeliveryStreamResponse,
    ListTagsForDeliveryStreamResponse,

    -- * Response Lenses
    ltfdsrrsResponseStatus,
    ltfdsrrsTags,
    ltfdsrrsHasMoreTags,
  )
where

import Network.AWS.Firehose.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTagsForDeliveryStream' smart constructor.
data ListTagsForDeliveryStream = ListTagsForDeliveryStream'
  { _ltfdsExclusiveStartTagKey ::
      !(Maybe Text),
    _ltfdsLimit ::
      !(Maybe Nat),
    _ltfdsDeliveryStreamName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTagsForDeliveryStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfdsExclusiveStartTagKey' - The key to use as the starting point for the list of tags. If you set this parameter, @ListTagsForDeliveryStream@ gets all tags that occur after @ExclusiveStartTagKey@ .
--
-- * 'ltfdsLimit' - The number of tags to return. If this number is less than the total number of tags associated with the delivery stream, @HasMoreTags@ is set to @true@ in the response. To list additional tags, set @ExclusiveStartTagKey@ to the last key in the response.
--
-- * 'ltfdsDeliveryStreamName' - The name of the delivery stream whose tags you want to list.
listTagsForDeliveryStream ::
  -- | 'ltfdsDeliveryStreamName'
  Text ->
  ListTagsForDeliveryStream
listTagsForDeliveryStream pDeliveryStreamName_ =
  ListTagsForDeliveryStream'
    { _ltfdsExclusiveStartTagKey =
        Nothing,
      _ltfdsLimit = Nothing,
      _ltfdsDeliveryStreamName = pDeliveryStreamName_
    }

-- | The key to use as the starting point for the list of tags. If you set this parameter, @ListTagsForDeliveryStream@ gets all tags that occur after @ExclusiveStartTagKey@ .
ltfdsExclusiveStartTagKey :: Lens' ListTagsForDeliveryStream (Maybe Text)
ltfdsExclusiveStartTagKey = lens _ltfdsExclusiveStartTagKey (\s a -> s {_ltfdsExclusiveStartTagKey = a})

-- | The number of tags to return. If this number is less than the total number of tags associated with the delivery stream, @HasMoreTags@ is set to @true@ in the response. To list additional tags, set @ExclusiveStartTagKey@ to the last key in the response.
ltfdsLimit :: Lens' ListTagsForDeliveryStream (Maybe Natural)
ltfdsLimit = lens _ltfdsLimit (\s a -> s {_ltfdsLimit = a}) . mapping _Nat

-- | The name of the delivery stream whose tags you want to list.
ltfdsDeliveryStreamName :: Lens' ListTagsForDeliveryStream Text
ltfdsDeliveryStreamName = lens _ltfdsDeliveryStreamName (\s a -> s {_ltfdsDeliveryStreamName = a})

instance AWSRequest ListTagsForDeliveryStream where
  type
    Rs ListTagsForDeliveryStream =
      ListTagsForDeliveryStreamResponse
  request = postJSON firehose
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForDeliveryStreamResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .:> "HasMoreTags")
      )

instance Hashable ListTagsForDeliveryStream

instance NFData ListTagsForDeliveryStream

instance ToHeaders ListTagsForDeliveryStream where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Firehose_20150804.ListTagsForDeliveryStream" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagsForDeliveryStream where
  toJSON ListTagsForDeliveryStream' {..} =
    object
      ( catMaybes
          [ ("ExclusiveStartTagKey" .=)
              <$> _ltfdsExclusiveStartTagKey,
            ("Limit" .=) <$> _ltfdsLimit,
            Just
              ("DeliveryStreamName" .= _ltfdsDeliveryStreamName)
          ]
      )

instance ToPath ListTagsForDeliveryStream where
  toPath = const "/"

instance ToQuery ListTagsForDeliveryStream where
  toQuery = const mempty

-- | /See:/ 'listTagsForDeliveryStreamResponse' smart constructor.
data ListTagsForDeliveryStreamResponse = ListTagsForDeliveryStreamResponse'
  { _ltfdsrrsResponseStatus ::
      !Int,
    _ltfdsrrsTags ::
      ![Tag],
    _ltfdsrrsHasMoreTags ::
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

-- | Creates a value of 'ListTagsForDeliveryStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfdsrrsResponseStatus' - -- | The response status code.
--
-- * 'ltfdsrrsTags' - A list of tags associated with @DeliveryStreamName@ , starting with the first tag after @ExclusiveStartTagKey@ and up to the specified @Limit@ .
--
-- * 'ltfdsrrsHasMoreTags' - If this is @true@ in the response, more tags are available. To list the remaining tags, set @ExclusiveStartTagKey@ to the key of the last tag returned and call @ListTagsForDeliveryStream@ again.
listTagsForDeliveryStreamResponse ::
  -- | 'ltfdsrrsResponseStatus'
  Int ->
  -- | 'ltfdsrrsHasMoreTags'
  Bool ->
  ListTagsForDeliveryStreamResponse
listTagsForDeliveryStreamResponse
  pResponseStatus_
  pHasMoreTags_ =
    ListTagsForDeliveryStreamResponse'
      { _ltfdsrrsResponseStatus =
          pResponseStatus_,
        _ltfdsrrsTags = mempty,
        _ltfdsrrsHasMoreTags = pHasMoreTags_
      }

-- | -- | The response status code.
ltfdsrrsResponseStatus :: Lens' ListTagsForDeliveryStreamResponse Int
ltfdsrrsResponseStatus = lens _ltfdsrrsResponseStatus (\s a -> s {_ltfdsrrsResponseStatus = a})

-- | A list of tags associated with @DeliveryStreamName@ , starting with the first tag after @ExclusiveStartTagKey@ and up to the specified @Limit@ .
ltfdsrrsTags :: Lens' ListTagsForDeliveryStreamResponse [Tag]
ltfdsrrsTags = lens _ltfdsrrsTags (\s a -> s {_ltfdsrrsTags = a}) . _Coerce

-- | If this is @true@ in the response, more tags are available. To list the remaining tags, set @ExclusiveStartTagKey@ to the key of the last tag returned and call @ListTagsForDeliveryStream@ again.
ltfdsrrsHasMoreTags :: Lens' ListTagsForDeliveryStreamResponse Bool
ltfdsrrsHasMoreTags = lens _ltfdsrrsHasMoreTags (\s a -> s {_ltfdsrrsHasMoreTags = a})

instance NFData ListTagsForDeliveryStreamResponse

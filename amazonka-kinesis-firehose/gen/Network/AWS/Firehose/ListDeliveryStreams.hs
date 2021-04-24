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
-- Module      : Network.AWS.Firehose.ListDeliveryStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your delivery streams in alphabetical order of their names.
--
--
-- The number of delivery streams might be too large to return using a single call to @ListDeliveryStreams@ . You can limit the number of delivery streams returned, using the @Limit@ parameter. To determine whether there are more delivery streams to list, check the value of @HasMoreDeliveryStreams@ in the output. If there are more delivery streams to list, you can request them by calling this operation again and setting the @ExclusiveStartDeliveryStreamName@ parameter to the name of the last delivery stream returned in the last call.
module Network.AWS.Firehose.ListDeliveryStreams
  ( -- * Creating a Request
    listDeliveryStreams,
    ListDeliveryStreams,

    -- * Request Lenses
    ldsExclusiveStartDeliveryStreamName,
    ldsDeliveryStreamType,
    ldsLimit,

    -- * Destructuring the Response
    listDeliveryStreamsResponse,
    ListDeliveryStreamsResponse,

    -- * Response Lenses
    ldsrrsResponseStatus,
    ldsrrsDeliveryStreamNames,
    ldsrrsHasMoreDeliveryStreams,
  )
where

import Network.AWS.Firehose.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDeliveryStreams' smart constructor.
data ListDeliveryStreams = ListDeliveryStreams'
  { _ldsExclusiveStartDeliveryStreamName ::
      !(Maybe Text),
    _ldsDeliveryStreamType ::
      !(Maybe DeliveryStreamType),
    _ldsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDeliveryStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsExclusiveStartDeliveryStreamName' - The list of delivery streams returned by this call to @ListDeliveryStreams@ will start with the delivery stream whose name comes alphabetically immediately after the name you specify in @ExclusiveStartDeliveryStreamName@ .
--
-- * 'ldsDeliveryStreamType' - The delivery stream type. This can be one of the following values:     * @DirectPut@ : Provider applications access the delivery stream directly.     * @KinesisStreamAsSource@ : The delivery stream uses a Kinesis data stream as a source. This parameter is optional. If this parameter is omitted, delivery streams of all types are returned.
--
-- * 'ldsLimit' - The maximum number of delivery streams to list. The default value is 10.
listDeliveryStreams ::
  ListDeliveryStreams
listDeliveryStreams =
  ListDeliveryStreams'
    { _ldsExclusiveStartDeliveryStreamName =
        Nothing,
      _ldsDeliveryStreamType = Nothing,
      _ldsLimit = Nothing
    }

-- | The list of delivery streams returned by this call to @ListDeliveryStreams@ will start with the delivery stream whose name comes alphabetically immediately after the name you specify in @ExclusiveStartDeliveryStreamName@ .
ldsExclusiveStartDeliveryStreamName :: Lens' ListDeliveryStreams (Maybe Text)
ldsExclusiveStartDeliveryStreamName = lens _ldsExclusiveStartDeliveryStreamName (\s a -> s {_ldsExclusiveStartDeliveryStreamName = a})

-- | The delivery stream type. This can be one of the following values:     * @DirectPut@ : Provider applications access the delivery stream directly.     * @KinesisStreamAsSource@ : The delivery stream uses a Kinesis data stream as a source. This parameter is optional. If this parameter is omitted, delivery streams of all types are returned.
ldsDeliveryStreamType :: Lens' ListDeliveryStreams (Maybe DeliveryStreamType)
ldsDeliveryStreamType = lens _ldsDeliveryStreamType (\s a -> s {_ldsDeliveryStreamType = a})

-- | The maximum number of delivery streams to list. The default value is 10.
ldsLimit :: Lens' ListDeliveryStreams (Maybe Natural)
ldsLimit = lens _ldsLimit (\s a -> s {_ldsLimit = a}) . mapping _Nat

instance AWSRequest ListDeliveryStreams where
  type
    Rs ListDeliveryStreams =
      ListDeliveryStreamsResponse
  request = postJSON firehose
  response =
    receiveJSON
      ( \s h x ->
          ListDeliveryStreamsResponse'
            <$> (pure (fromEnum s))
            <*> (x .?> "DeliveryStreamNames" .!@ mempty)
            <*> (x .:> "HasMoreDeliveryStreams")
      )

instance Hashable ListDeliveryStreams

instance NFData ListDeliveryStreams

instance ToHeaders ListDeliveryStreams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Firehose_20150804.ListDeliveryStreams" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDeliveryStreams where
  toJSON ListDeliveryStreams' {..} =
    object
      ( catMaybes
          [ ("ExclusiveStartDeliveryStreamName" .=)
              <$> _ldsExclusiveStartDeliveryStreamName,
            ("DeliveryStreamType" .=) <$> _ldsDeliveryStreamType,
            ("Limit" .=) <$> _ldsLimit
          ]
      )

instance ToPath ListDeliveryStreams where
  toPath = const "/"

instance ToQuery ListDeliveryStreams where
  toQuery = const mempty

-- | /See:/ 'listDeliveryStreamsResponse' smart constructor.
data ListDeliveryStreamsResponse = ListDeliveryStreamsResponse'
  { _ldsrrsResponseStatus ::
      !Int,
    _ldsrrsDeliveryStreamNames ::
      ![Text],
    _ldsrrsHasMoreDeliveryStreams ::
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

-- | Creates a value of 'ListDeliveryStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrrsResponseStatus' - -- | The response status code.
--
-- * 'ldsrrsDeliveryStreamNames' - The names of the delivery streams.
--
-- * 'ldsrrsHasMoreDeliveryStreams' - Indicates whether there are more delivery streams available to list.
listDeliveryStreamsResponse ::
  -- | 'ldsrrsResponseStatus'
  Int ->
  -- | 'ldsrrsHasMoreDeliveryStreams'
  Bool ->
  ListDeliveryStreamsResponse
listDeliveryStreamsResponse
  pResponseStatus_
  pHasMoreDeliveryStreams_ =
    ListDeliveryStreamsResponse'
      { _ldsrrsResponseStatus =
          pResponseStatus_,
        _ldsrrsDeliveryStreamNames = mempty,
        _ldsrrsHasMoreDeliveryStreams =
          pHasMoreDeliveryStreams_
      }

-- | -- | The response status code.
ldsrrsResponseStatus :: Lens' ListDeliveryStreamsResponse Int
ldsrrsResponseStatus = lens _ldsrrsResponseStatus (\s a -> s {_ldsrrsResponseStatus = a})

-- | The names of the delivery streams.
ldsrrsDeliveryStreamNames :: Lens' ListDeliveryStreamsResponse [Text]
ldsrrsDeliveryStreamNames = lens _ldsrrsDeliveryStreamNames (\s a -> s {_ldsrrsDeliveryStreamNames = a}) . _Coerce

-- | Indicates whether there are more delivery streams available to list.
ldsrrsHasMoreDeliveryStreams :: Lens' ListDeliveryStreamsResponse Bool
ldsrrsHasMoreDeliveryStreams = lens _ldsrrsHasMoreDeliveryStreams (\s a -> s {_ldsrrsHasMoreDeliveryStreams = a})

instance NFData ListDeliveryStreamsResponse

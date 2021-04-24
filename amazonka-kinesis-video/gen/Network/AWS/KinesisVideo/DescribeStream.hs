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
-- Module      : Network.AWS.KinesisVideo.DescribeStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the most current information about the specified stream. You must specify either the @StreamName@ or the @StreamARN@ .
module Network.AWS.KinesisVideo.DescribeStream
  ( -- * Creating a Request
    describeStream,
    DescribeStream,

    -- * Request Lenses
    dStreamARN,
    dStreamName,

    -- * Destructuring the Response
    describeStreamResponse,
    DescribeStreamResponse,

    -- * Response Lenses
    desrsStreamInfo,
    desrsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStream' smart constructor.
data DescribeStream = DescribeStream'
  { _dStreamARN ::
      !(Maybe Text),
    _dStreamName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStreamARN' - The Amazon Resource Name (ARN) of the stream.
--
-- * 'dStreamName' - The name of the stream.
describeStream ::
  DescribeStream
describeStream =
  DescribeStream'
    { _dStreamARN = Nothing,
      _dStreamName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the stream.
dStreamARN :: Lens' DescribeStream (Maybe Text)
dStreamARN = lens _dStreamARN (\s a -> s {_dStreamARN = a})

-- | The name of the stream.
dStreamName :: Lens' DescribeStream (Maybe Text)
dStreamName = lens _dStreamName (\s a -> s {_dStreamName = a})

instance AWSRequest DescribeStream where
  type Rs DescribeStream = DescribeStreamResponse
  request = postJSON kinesisVideo
  response =
    receiveJSON
      ( \s h x ->
          DescribeStreamResponse'
            <$> (x .?> "StreamInfo") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStream

instance NFData DescribeStream

instance ToHeaders DescribeStream where
  toHeaders = const mempty

instance ToJSON DescribeStream where
  toJSON DescribeStream' {..} =
    object
      ( catMaybes
          [ ("StreamARN" .=) <$> _dStreamARN,
            ("StreamName" .=) <$> _dStreamName
          ]
      )

instance ToPath DescribeStream where
  toPath = const "/describeStream"

instance ToQuery DescribeStream where
  toQuery = const mempty

-- | /See:/ 'describeStreamResponse' smart constructor.
data DescribeStreamResponse = DescribeStreamResponse'
  { _desrsStreamInfo ::
      !(Maybe StreamInfo),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsStreamInfo' - An object that describes the stream.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeStreamResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeStreamResponse
describeStreamResponse pResponseStatus_ =
  DescribeStreamResponse'
    { _desrsStreamInfo = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | An object that describes the stream.
desrsStreamInfo :: Lens' DescribeStreamResponse (Maybe StreamInfo)
desrsStreamInfo = lens _desrsStreamInfo (\s a -> s {_desrsStreamInfo = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeStreamResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeStreamResponse

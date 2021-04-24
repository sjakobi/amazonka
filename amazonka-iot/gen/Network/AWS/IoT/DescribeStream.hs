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
-- Module      : Network.AWS.IoT.DescribeStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a stream.
module Network.AWS.IoT.DescribeStream
  ( -- * Creating a Request
    describeStream,
    DescribeStream,

    -- * Request Lenses
    dStreamId,

    -- * Destructuring the Response
    describeStreamResponse,
    DescribeStreamResponse,

    -- * Response Lenses
    dsrsrsStreamInfo,
    dsrsrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStream' smart constructor.
newtype DescribeStream = DescribeStream'
  { _dStreamId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStreamId' - The stream ID.
describeStream ::
  -- | 'dStreamId'
  Text ->
  DescribeStream
describeStream pStreamId_ =
  DescribeStream' {_dStreamId = pStreamId_}

-- | The stream ID.
dStreamId :: Lens' DescribeStream Text
dStreamId = lens _dStreamId (\s a -> s {_dStreamId = a})

instance AWSRequest DescribeStream where
  type Rs DescribeStream = DescribeStreamResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeStreamResponse'
            <$> (x .?> "streamInfo") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStream

instance NFData DescribeStream

instance ToHeaders DescribeStream where
  toHeaders = const mempty

instance ToPath DescribeStream where
  toPath DescribeStream' {..} =
    mconcat ["/streams/", toBS _dStreamId]

instance ToQuery DescribeStream where
  toQuery = const mempty

-- | /See:/ 'describeStreamResponse' smart constructor.
data DescribeStreamResponse = DescribeStreamResponse'
  { _dsrsrsStreamInfo ::
      !(Maybe StreamInfo),
    _dsrsrsResponseStatus ::
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
-- * 'dsrsrsStreamInfo' - Information about the stream.
--
-- * 'dsrsrsResponseStatus' - -- | The response status code.
describeStreamResponse ::
  -- | 'dsrsrsResponseStatus'
  Int ->
  DescribeStreamResponse
describeStreamResponse pResponseStatus_ =
  DescribeStreamResponse'
    { _dsrsrsStreamInfo =
        Nothing,
      _dsrsrsResponseStatus = pResponseStatus_
    }

-- | Information about the stream.
dsrsrsStreamInfo :: Lens' DescribeStreamResponse (Maybe StreamInfo)
dsrsrsStreamInfo = lens _dsrsrsStreamInfo (\s a -> s {_dsrsrsStreamInfo = a})

-- | -- | The response status code.
dsrsrsResponseStatus :: Lens' DescribeStreamResponse Int
dsrsrsResponseStatus = lens _dsrsrsResponseStatus (\s a -> s {_dsrsrsResponseStatus = a})

instance NFData DescribeStreamResponse

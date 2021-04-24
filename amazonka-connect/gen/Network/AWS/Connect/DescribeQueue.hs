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
-- Module      : Network.AWS.Connect.DescribeQueue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Describes the specified queue.
module Network.AWS.Connect.DescribeQueue
  ( -- * Creating a Request
    describeQueue,
    DescribeQueue,

    -- * Request Lenses
    dqInstanceId,
    dqQueueId,

    -- * Destructuring the Response
    describeQueueResponse,
    DescribeQueueResponse,

    -- * Response Lenses
    dqrrsQueue,
    dqrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeQueue' smart constructor.
data DescribeQueue = DescribeQueue'
  { _dqInstanceId ::
      !Text,
    _dqQueueId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'dqQueueId' - The identifier for the queue.
describeQueue ::
  -- | 'dqInstanceId'
  Text ->
  -- | 'dqQueueId'
  Text ->
  DescribeQueue
describeQueue pInstanceId_ pQueueId_ =
  DescribeQueue'
    { _dqInstanceId = pInstanceId_,
      _dqQueueId = pQueueId_
    }

-- | The identifier of the Amazon Connect instance.
dqInstanceId :: Lens' DescribeQueue Text
dqInstanceId = lens _dqInstanceId (\s a -> s {_dqInstanceId = a})

-- | The identifier for the queue.
dqQueueId :: Lens' DescribeQueue Text
dqQueueId = lens _dqQueueId (\s a -> s {_dqQueueId = a})

instance AWSRequest DescribeQueue where
  type Rs DescribeQueue = DescribeQueueResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeQueueResponse'
            <$> (x .?> "Queue") <*> (pure (fromEnum s))
      )

instance Hashable DescribeQueue

instance NFData DescribeQueue

instance ToHeaders DescribeQueue where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeQueue where
  toPath DescribeQueue' {..} =
    mconcat
      [ "/queues/",
        toBS _dqInstanceId,
        "/",
        toBS _dqQueueId
      ]

instance ToQuery DescribeQueue where
  toQuery = const mempty

-- | /See:/ 'describeQueueResponse' smart constructor.
data DescribeQueueResponse = DescribeQueueResponse'
  { _dqrrsQueue ::
      !(Maybe Queue),
    _dqrrsResponseStatus ::
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

-- | Creates a value of 'DescribeQueueResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dqrrsQueue' - The name of the queue.
--
-- * 'dqrrsResponseStatus' - -- | The response status code.
describeQueueResponse ::
  -- | 'dqrrsResponseStatus'
  Int ->
  DescribeQueueResponse
describeQueueResponse pResponseStatus_ =
  DescribeQueueResponse'
    { _dqrrsQueue = Nothing,
      _dqrrsResponseStatus = pResponseStatus_
    }

-- | The name of the queue.
dqrrsQueue :: Lens' DescribeQueueResponse (Maybe Queue)
dqrrsQueue = lens _dqrrsQueue (\s a -> s {_dqrrsQueue = a})

-- | -- | The response status code.
dqrrsResponseStatus :: Lens' DescribeQueueResponse Int
dqrrsResponseStatus = lens _dqrrsResponseStatus (\s a -> s {_dqrrsResponseStatus = a})

instance NFData DescribeQueueResponse

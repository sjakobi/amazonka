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
-- Module      : Network.AWS.CloudWatchEvents.DescribeEventSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists details about a partner event source that is shared with your account.
module Network.AWS.CloudWatchEvents.DescribeEventSource
  ( -- * Creating a Request
    describeEventSource,
    DescribeEventSource,

    -- * Request Lenses
    desName,

    -- * Destructuring the Response
    describeEventSourceResponse,
    DescribeEventSourceResponse,

    -- * Response Lenses
    desrrsCreationTime,
    desrrsExpirationTime,
    desrrsARN,
    desrrsState,
    desrrsName,
    desrrsCreatedBy,
    desrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEventSource' smart constructor.
newtype DescribeEventSource = DescribeEventSource'
  { _desName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEventSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desName' - The name of the partner event source to display the details of.
describeEventSource ::
  -- | 'desName'
  Text ->
  DescribeEventSource
describeEventSource pName_ =
  DescribeEventSource' {_desName = pName_}

-- | The name of the partner event source to display the details of.
desName :: Lens' DescribeEventSource Text
desName = lens _desName (\s a -> s {_desName = a})

instance AWSRequest DescribeEventSource where
  type
    Rs DescribeEventSource =
      DescribeEventSourceResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventSourceResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ExpirationTime")
            <*> (x .?> "Arn")
            <*> (x .?> "State")
            <*> (x .?> "Name")
            <*> (x .?> "CreatedBy")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventSource

instance NFData DescribeEventSource

instance ToHeaders DescribeEventSource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DescribeEventSource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEventSource where
  toJSON DescribeEventSource' {..} =
    object (catMaybes [Just ("Name" .= _desName)])

instance ToPath DescribeEventSource where
  toPath = const "/"

instance ToQuery DescribeEventSource where
  toQuery = const mempty

-- | /See:/ 'describeEventSourceResponse' smart constructor.
data DescribeEventSourceResponse = DescribeEventSourceResponse'
  { _desrrsCreationTime ::
      !(Maybe POSIX),
    _desrrsExpirationTime ::
      !(Maybe POSIX),
    _desrrsARN ::
      !(Maybe Text),
    _desrrsState ::
      !( Maybe
           EventSourceState
       ),
    _desrrsName ::
      !(Maybe Text),
    _desrrsCreatedBy ::
      !(Maybe Text),
    _desrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrrsCreationTime' - The date and time that the event source was created.
--
-- * 'desrrsExpirationTime' - The date and time that the event source will expire if you do not create a matching event bus.
--
-- * 'desrrsARN' - The ARN of the partner event source.
--
-- * 'desrrsState' - The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.
--
-- * 'desrrsName' - The name of the partner event source.
--
-- * 'desrrsCreatedBy' - The name of the SaaS partner that created the event source.
--
-- * 'desrrsResponseStatus' - -- | The response status code.
describeEventSourceResponse ::
  -- | 'desrrsResponseStatus'
  Int ->
  DescribeEventSourceResponse
describeEventSourceResponse pResponseStatus_ =
  DescribeEventSourceResponse'
    { _desrrsCreationTime =
        Nothing,
      _desrrsExpirationTime = Nothing,
      _desrrsARN = Nothing,
      _desrrsState = Nothing,
      _desrrsName = Nothing,
      _desrrsCreatedBy = Nothing,
      _desrrsResponseStatus = pResponseStatus_
    }

-- | The date and time that the event source was created.
desrrsCreationTime :: Lens' DescribeEventSourceResponse (Maybe UTCTime)
desrrsCreationTime = lens _desrrsCreationTime (\s a -> s {_desrrsCreationTime = a}) . mapping _Time

-- | The date and time that the event source will expire if you do not create a matching event bus.
desrrsExpirationTime :: Lens' DescribeEventSourceResponse (Maybe UTCTime)
desrrsExpirationTime = lens _desrrsExpirationTime (\s a -> s {_desrrsExpirationTime = a}) . mapping _Time

-- | The ARN of the partner event source.
desrrsARN :: Lens' DescribeEventSourceResponse (Maybe Text)
desrrsARN = lens _desrrsARN (\s a -> s {_desrrsARN = a})

-- | The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.
desrrsState :: Lens' DescribeEventSourceResponse (Maybe EventSourceState)
desrrsState = lens _desrrsState (\s a -> s {_desrrsState = a})

-- | The name of the partner event source.
desrrsName :: Lens' DescribeEventSourceResponse (Maybe Text)
desrrsName = lens _desrrsName (\s a -> s {_desrrsName = a})

-- | The name of the SaaS partner that created the event source.
desrrsCreatedBy :: Lens' DescribeEventSourceResponse (Maybe Text)
desrrsCreatedBy = lens _desrrsCreatedBy (\s a -> s {_desrrsCreatedBy = a})

-- | -- | The response status code.
desrrsResponseStatus :: Lens' DescribeEventSourceResponse Int
desrrsResponseStatus = lens _desrrsResponseStatus (\s a -> s {_desrrsResponseStatus = a})

instance NFData DescribeEventSourceResponse

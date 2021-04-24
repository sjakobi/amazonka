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
-- Module      : Network.AWS.CloudWatchEvents.DescribeReplay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a replay. Use @DescribeReplay@ to determine the progress of a running replay. A replay processes events to replay based on the time in the event, and replays them using 1 minute intervals. If you use @StartReplay@ and specify an @EventStartTime@ and an @EventEndTime@ that covers a 20 minute time range, the events are replayed from the first minute of that 20 minute range first. Then the events from the second minute are replayed. You can use @DescribeReplay@ to determine the progress of a replay. The value returned for @EventLastReplayedTime@ indicates the time within the specified time range associated with the last event replayed.
module Network.AWS.CloudWatchEvents.DescribeReplay
  ( -- * Creating a Request
    describeReplay,
    DescribeReplay,

    -- * Request Lenses
    drReplayName,

    -- * Destructuring the Response
    describeReplayResponse,
    DescribeReplayResponse,

    -- * Response Lenses
    desrsEventSourceARN,
    desrsEventStartTime,
    desrsReplayStartTime,
    desrsReplayARN,
    desrsStateReason,
    desrsState,
    desrsDestination,
    desrsReplayName,
    desrsEventLastReplayedTime,
    desrsReplayEndTime,
    desrsEventEndTime,
    desrsDescription,
    desrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeReplay' smart constructor.
newtype DescribeReplay = DescribeReplay'
  { _drReplayName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeReplay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drReplayName' - The name of the replay to retrieve.
describeReplay ::
  -- | 'drReplayName'
  Text ->
  DescribeReplay
describeReplay pReplayName_ =
  DescribeReplay' {_drReplayName = pReplayName_}

-- | The name of the replay to retrieve.
drReplayName :: Lens' DescribeReplay Text
drReplayName = lens _drReplayName (\s a -> s {_drReplayName = a})

instance AWSRequest DescribeReplay where
  type Rs DescribeReplay = DescribeReplayResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribeReplayResponse'
            <$> (x .?> "EventSourceArn")
            <*> (x .?> "EventStartTime")
            <*> (x .?> "ReplayStartTime")
            <*> (x .?> "ReplayArn")
            <*> (x .?> "StateReason")
            <*> (x .?> "State")
            <*> (x .?> "Destination")
            <*> (x .?> "ReplayName")
            <*> (x .?> "EventLastReplayedTime")
            <*> (x .?> "ReplayEndTime")
            <*> (x .?> "EventEndTime")
            <*> (x .?> "Description")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReplay

instance NFData DescribeReplay

instance ToHeaders DescribeReplay where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DescribeReplay" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReplay where
  toJSON DescribeReplay' {..} =
    object
      (catMaybes [Just ("ReplayName" .= _drReplayName)])

instance ToPath DescribeReplay where
  toPath = const "/"

instance ToQuery DescribeReplay where
  toQuery = const mempty

-- | /See:/ 'describeReplayResponse' smart constructor.
data DescribeReplayResponse = DescribeReplayResponse'
  { _desrsEventSourceARN ::
      !(Maybe Text),
    _desrsEventStartTime ::
      !(Maybe POSIX),
    _desrsReplayStartTime ::
      !(Maybe POSIX),
    _desrsReplayARN ::
      !(Maybe Text),
    _desrsStateReason ::
      !(Maybe Text),
    _desrsState ::
      !(Maybe ReplayState),
    _desrsDestination ::
      !( Maybe
           ReplayDestination
       ),
    _desrsReplayName ::
      !(Maybe Text),
    _desrsEventLastReplayedTime ::
      !(Maybe POSIX),
    _desrsReplayEndTime ::
      !(Maybe POSIX),
    _desrsEventEndTime ::
      !(Maybe POSIX),
    _desrsDescription ::
      !(Maybe Text),
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

-- | Creates a value of 'DescribeReplayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsEventSourceARN' - The ARN of the archive events were replayed from.
--
-- * 'desrsEventStartTime' - The time stamp of the first event that was last replayed from the archive.
--
-- * 'desrsReplayStartTime' - A time stamp for the time that the replay started.
--
-- * 'desrsReplayARN' - The ARN of the replay.
--
-- * 'desrsStateReason' - The reason that the replay is in the current state.
--
-- * 'desrsState' - The current state of the replay.
--
-- * 'desrsDestination' - A @ReplayDestination@ object that contains details about the replay.
--
-- * 'desrsReplayName' - The name of the replay.
--
-- * 'desrsEventLastReplayedTime' - The time that the event was last replayed.
--
-- * 'desrsReplayEndTime' - A time stamp for the time that the replay stopped.
--
-- * 'desrsEventEndTime' - The time stamp for the last event that was replayed from the archive.
--
-- * 'desrsDescription' - The description of the replay.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeReplayResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeReplayResponse
describeReplayResponse pResponseStatus_ =
  DescribeReplayResponse'
    { _desrsEventSourceARN =
        Nothing,
      _desrsEventStartTime = Nothing,
      _desrsReplayStartTime = Nothing,
      _desrsReplayARN = Nothing,
      _desrsStateReason = Nothing,
      _desrsState = Nothing,
      _desrsDestination = Nothing,
      _desrsReplayName = Nothing,
      _desrsEventLastReplayedTime = Nothing,
      _desrsReplayEndTime = Nothing,
      _desrsEventEndTime = Nothing,
      _desrsDescription = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the archive events were replayed from.
desrsEventSourceARN :: Lens' DescribeReplayResponse (Maybe Text)
desrsEventSourceARN = lens _desrsEventSourceARN (\s a -> s {_desrsEventSourceARN = a})

-- | The time stamp of the first event that was last replayed from the archive.
desrsEventStartTime :: Lens' DescribeReplayResponse (Maybe UTCTime)
desrsEventStartTime = lens _desrsEventStartTime (\s a -> s {_desrsEventStartTime = a}) . mapping _Time

-- | A time stamp for the time that the replay started.
desrsReplayStartTime :: Lens' DescribeReplayResponse (Maybe UTCTime)
desrsReplayStartTime = lens _desrsReplayStartTime (\s a -> s {_desrsReplayStartTime = a}) . mapping _Time

-- | The ARN of the replay.
desrsReplayARN :: Lens' DescribeReplayResponse (Maybe Text)
desrsReplayARN = lens _desrsReplayARN (\s a -> s {_desrsReplayARN = a})

-- | The reason that the replay is in the current state.
desrsStateReason :: Lens' DescribeReplayResponse (Maybe Text)
desrsStateReason = lens _desrsStateReason (\s a -> s {_desrsStateReason = a})

-- | The current state of the replay.
desrsState :: Lens' DescribeReplayResponse (Maybe ReplayState)
desrsState = lens _desrsState (\s a -> s {_desrsState = a})

-- | A @ReplayDestination@ object that contains details about the replay.
desrsDestination :: Lens' DescribeReplayResponse (Maybe ReplayDestination)
desrsDestination = lens _desrsDestination (\s a -> s {_desrsDestination = a})

-- | The name of the replay.
desrsReplayName :: Lens' DescribeReplayResponse (Maybe Text)
desrsReplayName = lens _desrsReplayName (\s a -> s {_desrsReplayName = a})

-- | The time that the event was last replayed.
desrsEventLastReplayedTime :: Lens' DescribeReplayResponse (Maybe UTCTime)
desrsEventLastReplayedTime = lens _desrsEventLastReplayedTime (\s a -> s {_desrsEventLastReplayedTime = a}) . mapping _Time

-- | A time stamp for the time that the replay stopped.
desrsReplayEndTime :: Lens' DescribeReplayResponse (Maybe UTCTime)
desrsReplayEndTime = lens _desrsReplayEndTime (\s a -> s {_desrsReplayEndTime = a}) . mapping _Time

-- | The time stamp for the last event that was replayed from the archive.
desrsEventEndTime :: Lens' DescribeReplayResponse (Maybe UTCTime)
desrsEventEndTime = lens _desrsEventEndTime (\s a -> s {_desrsEventEndTime = a}) . mapping _Time

-- | The description of the replay.
desrsDescription :: Lens' DescribeReplayResponse (Maybe Text)
desrsDescription = lens _desrsDescription (\s a -> s {_desrsDescription = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeReplayResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeReplayResponse

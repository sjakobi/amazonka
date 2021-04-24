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
-- Module      : Network.AWS.CloudWatchEvents.StartReplay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified replay. Events are not necessarily replayed in the exact same order that they were added to the archive. A replay processes events to replay based on the time in the event, and replays them using 1 minute intervals. If you specify an @EventStartTime@ and an @EventEndTime@ that covers a 20 minute time range, the events are replayed from the first minute of that 20 minute range first. Then the events from the second minute are replayed. You can use @DescribeReplay@ to determine the progress of a replay. The value returned for @EventLastReplayedTime@ indicates the time within the specified time range associated with the last event replayed.
module Network.AWS.CloudWatchEvents.StartReplay
  ( -- * Creating a Request
    startReplay,
    StartReplay,

    -- * Request Lenses
    srDescription,
    srReplayName,
    srEventSourceARN,
    srEventStartTime,
    srEventEndTime,
    srDestination,

    -- * Destructuring the Response
    startReplayResponse,
    StartReplayResponse,

    -- * Response Lenses
    srrrsReplayStartTime,
    srrrsReplayARN,
    srrrsStateReason,
    srrrsState,
    srrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startReplay' smart constructor.
data StartReplay = StartReplay'
  { _srDescription ::
      !(Maybe Text),
    _srReplayName :: !Text,
    _srEventSourceARN :: !Text,
    _srEventStartTime :: !POSIX,
    _srEventEndTime :: !POSIX,
    _srDestination :: !ReplayDestination
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartReplay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srDescription' - A description for the replay to start.
--
-- * 'srReplayName' - The name of the replay to start.
--
-- * 'srEventSourceARN' - The ARN of the archive to replay events from.
--
-- * 'srEventStartTime' - A time stamp for the time to start replaying events. Only events that occurred between the @EventStartTime@ and @EventEndTime@ are replayed.
--
-- * 'srEventEndTime' - A time stamp for the time to stop replaying events. Only events that occurred between the @EventStartTime@ and @EventEndTime@ are replayed.
--
-- * 'srDestination' - A @ReplayDestination@ object that includes details about the destination for the replay.
startReplay ::
  -- | 'srReplayName'
  Text ->
  -- | 'srEventSourceARN'
  Text ->
  -- | 'srEventStartTime'
  UTCTime ->
  -- | 'srEventEndTime'
  UTCTime ->
  -- | 'srDestination'
  ReplayDestination ->
  StartReplay
startReplay
  pReplayName_
  pEventSourceARN_
  pEventStartTime_
  pEventEndTime_
  pDestination_ =
    StartReplay'
      { _srDescription = Nothing,
        _srReplayName = pReplayName_,
        _srEventSourceARN = pEventSourceARN_,
        _srEventStartTime = _Time # pEventStartTime_,
        _srEventEndTime = _Time # pEventEndTime_,
        _srDestination = pDestination_
      }

-- | A description for the replay to start.
srDescription :: Lens' StartReplay (Maybe Text)
srDescription = lens _srDescription (\s a -> s {_srDescription = a})

-- | The name of the replay to start.
srReplayName :: Lens' StartReplay Text
srReplayName = lens _srReplayName (\s a -> s {_srReplayName = a})

-- | The ARN of the archive to replay events from.
srEventSourceARN :: Lens' StartReplay Text
srEventSourceARN = lens _srEventSourceARN (\s a -> s {_srEventSourceARN = a})

-- | A time stamp for the time to start replaying events. Only events that occurred between the @EventStartTime@ and @EventEndTime@ are replayed.
srEventStartTime :: Lens' StartReplay UTCTime
srEventStartTime = lens _srEventStartTime (\s a -> s {_srEventStartTime = a}) . _Time

-- | A time stamp for the time to stop replaying events. Only events that occurred between the @EventStartTime@ and @EventEndTime@ are replayed.
srEventEndTime :: Lens' StartReplay UTCTime
srEventEndTime = lens _srEventEndTime (\s a -> s {_srEventEndTime = a}) . _Time

-- | A @ReplayDestination@ object that includes details about the destination for the replay.
srDestination :: Lens' StartReplay ReplayDestination
srDestination = lens _srDestination (\s a -> s {_srDestination = a})

instance AWSRequest StartReplay where
  type Rs StartReplay = StartReplayResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          StartReplayResponse'
            <$> (x .?> "ReplayStartTime")
            <*> (x .?> "ReplayArn")
            <*> (x .?> "StateReason")
            <*> (x .?> "State")
            <*> (pure (fromEnum s))
      )

instance Hashable StartReplay

instance NFData StartReplay

instance ToHeaders StartReplay where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.StartReplay" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartReplay where
  toJSON StartReplay' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _srDescription,
            Just ("ReplayName" .= _srReplayName),
            Just ("EventSourceArn" .= _srEventSourceARN),
            Just ("EventStartTime" .= _srEventStartTime),
            Just ("EventEndTime" .= _srEventEndTime),
            Just ("Destination" .= _srDestination)
          ]
      )

instance ToPath StartReplay where
  toPath = const "/"

instance ToQuery StartReplay where
  toQuery = const mempty

-- | /See:/ 'startReplayResponse' smart constructor.
data StartReplayResponse = StartReplayResponse'
  { _srrrsReplayStartTime ::
      !(Maybe POSIX),
    _srrrsReplayARN ::
      !(Maybe Text),
    _srrrsStateReason ::
      !(Maybe Text),
    _srrrsState ::
      !(Maybe ReplayState),
    _srrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartReplayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrrsReplayStartTime' - The time at which the replay started.
--
-- * 'srrrsReplayARN' - The ARN of the replay.
--
-- * 'srrrsStateReason' - The reason that the replay is in the state.
--
-- * 'srrrsState' - The state of the replay.
--
-- * 'srrrsResponseStatus' - -- | The response status code.
startReplayResponse ::
  -- | 'srrrsResponseStatus'
  Int ->
  StartReplayResponse
startReplayResponse pResponseStatus_ =
  StartReplayResponse'
    { _srrrsReplayStartTime =
        Nothing,
      _srrrsReplayARN = Nothing,
      _srrrsStateReason = Nothing,
      _srrrsState = Nothing,
      _srrrsResponseStatus = pResponseStatus_
    }

-- | The time at which the replay started.
srrrsReplayStartTime :: Lens' StartReplayResponse (Maybe UTCTime)
srrrsReplayStartTime = lens _srrrsReplayStartTime (\s a -> s {_srrrsReplayStartTime = a}) . mapping _Time

-- | The ARN of the replay.
srrrsReplayARN :: Lens' StartReplayResponse (Maybe Text)
srrrsReplayARN = lens _srrrsReplayARN (\s a -> s {_srrrsReplayARN = a})

-- | The reason that the replay is in the state.
srrrsStateReason :: Lens' StartReplayResponse (Maybe Text)
srrrsStateReason = lens _srrrsStateReason (\s a -> s {_srrrsStateReason = a})

-- | The state of the replay.
srrrsState :: Lens' StartReplayResponse (Maybe ReplayState)
srrrsState = lens _srrrsState (\s a -> s {_srrrsState = a})

-- | -- | The response status code.
srrrsResponseStatus :: Lens' StartReplayResponse Int
srrrsResponseStatus = lens _srrrsResponseStatus (\s a -> s {_srrrsResponseStatus = a})

instance NFData StartReplayResponse

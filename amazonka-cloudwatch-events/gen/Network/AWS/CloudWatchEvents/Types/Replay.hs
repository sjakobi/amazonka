{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.Replay
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.Replay where

import Network.AWS.CloudWatchEvents.Types.ReplayState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A @Replay@ object that contains details about a replay.
--
--
--
-- /See:/ 'replay' smart constructor.
data Replay = Replay'
  { _rEventSourceARN ::
      !(Maybe Text),
    _rEventStartTime :: !(Maybe POSIX),
    _rReplayStartTime :: !(Maybe POSIX),
    _rStateReason :: !(Maybe Text),
    _rState :: !(Maybe ReplayState),
    _rReplayName :: !(Maybe Text),
    _rEventLastReplayedTime :: !(Maybe POSIX),
    _rReplayEndTime :: !(Maybe POSIX),
    _rEventEndTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Replay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEventSourceARN' - The ARN of the archive to replay event from.
--
-- * 'rEventStartTime' - A time stamp for the time to start replaying events. This is determined by the time in the event as described in <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEventsRequestEntry.html#eventbridge-Type-PutEventsRequestEntry-Time Time> .
--
-- * 'rReplayStartTime' - A time stamp for the time that the replay started.
--
-- * 'rStateReason' - A description of why the replay is in the current state.
--
-- * 'rState' - The current state of the replay.
--
-- * 'rReplayName' - The name of the replay.
--
-- * 'rEventLastReplayedTime' - A time stamp for the time that the last event was replayed.
--
-- * 'rReplayEndTime' - A time stamp for the time that the replay completed.
--
-- * 'rEventEndTime' - A time stamp for the time to start replaying events. Any event with a creation time prior to the @EventEndTime@ specified is replayed.
replay ::
  Replay
replay =
  Replay'
    { _rEventSourceARN = Nothing,
      _rEventStartTime = Nothing,
      _rReplayStartTime = Nothing,
      _rStateReason = Nothing,
      _rState = Nothing,
      _rReplayName = Nothing,
      _rEventLastReplayedTime = Nothing,
      _rReplayEndTime = Nothing,
      _rEventEndTime = Nothing
    }

-- | The ARN of the archive to replay event from.
rEventSourceARN :: Lens' Replay (Maybe Text)
rEventSourceARN = lens _rEventSourceARN (\s a -> s {_rEventSourceARN = a})

-- | A time stamp for the time to start replaying events. This is determined by the time in the event as described in <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEventsRequestEntry.html#eventbridge-Type-PutEventsRequestEntry-Time Time> .
rEventStartTime :: Lens' Replay (Maybe UTCTime)
rEventStartTime = lens _rEventStartTime (\s a -> s {_rEventStartTime = a}) . mapping _Time

-- | A time stamp for the time that the replay started.
rReplayStartTime :: Lens' Replay (Maybe UTCTime)
rReplayStartTime = lens _rReplayStartTime (\s a -> s {_rReplayStartTime = a}) . mapping _Time

-- | A description of why the replay is in the current state.
rStateReason :: Lens' Replay (Maybe Text)
rStateReason = lens _rStateReason (\s a -> s {_rStateReason = a})

-- | The current state of the replay.
rState :: Lens' Replay (Maybe ReplayState)
rState = lens _rState (\s a -> s {_rState = a})

-- | The name of the replay.
rReplayName :: Lens' Replay (Maybe Text)
rReplayName = lens _rReplayName (\s a -> s {_rReplayName = a})

-- | A time stamp for the time that the last event was replayed.
rEventLastReplayedTime :: Lens' Replay (Maybe UTCTime)
rEventLastReplayedTime = lens _rEventLastReplayedTime (\s a -> s {_rEventLastReplayedTime = a}) . mapping _Time

-- | A time stamp for the time that the replay completed.
rReplayEndTime :: Lens' Replay (Maybe UTCTime)
rReplayEndTime = lens _rReplayEndTime (\s a -> s {_rReplayEndTime = a}) . mapping _Time

-- | A time stamp for the time to start replaying events. Any event with a creation time prior to the @EventEndTime@ specified is replayed.
rEventEndTime :: Lens' Replay (Maybe UTCTime)
rEventEndTime = lens _rEventEndTime (\s a -> s {_rEventEndTime = a}) . mapping _Time

instance FromJSON Replay where
  parseJSON =
    withObject
      "Replay"
      ( \x ->
          Replay'
            <$> (x .:? "EventSourceArn")
            <*> (x .:? "EventStartTime")
            <*> (x .:? "ReplayStartTime")
            <*> (x .:? "StateReason")
            <*> (x .:? "State")
            <*> (x .:? "ReplayName")
            <*> (x .:? "EventLastReplayedTime")
            <*> (x .:? "ReplayEndTime")
            <*> (x .:? "EventEndTime")
      )

instance Hashable Replay

instance NFData Replay

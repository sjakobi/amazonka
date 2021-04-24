{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.FilteredLogEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.FilteredLogEvent where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a matched event.
--
--
--
-- /See:/ 'filteredLogEvent' smart constructor.
data FilteredLogEvent = FilteredLogEvent'
  { _fleLogStreamName ::
      !(Maybe Text),
    _fleEventId :: !(Maybe Text),
    _fleMessage :: !(Maybe Text),
    _fleIngestionTime :: !(Maybe Nat),
    _fleTimestamp :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FilteredLogEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fleLogStreamName' - The name of the log stream to which this event belongs.
--
-- * 'fleEventId' - The ID of the event.
--
-- * 'fleMessage' - The data contained in the log event.
--
-- * 'fleIngestionTime' - The time the event was ingested, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
--
-- * 'fleTimestamp' - The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
filteredLogEvent ::
  FilteredLogEvent
filteredLogEvent =
  FilteredLogEvent'
    { _fleLogStreamName = Nothing,
      _fleEventId = Nothing,
      _fleMessage = Nothing,
      _fleIngestionTime = Nothing,
      _fleTimestamp = Nothing
    }

-- | The name of the log stream to which this event belongs.
fleLogStreamName :: Lens' FilteredLogEvent (Maybe Text)
fleLogStreamName = lens _fleLogStreamName (\s a -> s {_fleLogStreamName = a})

-- | The ID of the event.
fleEventId :: Lens' FilteredLogEvent (Maybe Text)
fleEventId = lens _fleEventId (\s a -> s {_fleEventId = a})

-- | The data contained in the log event.
fleMessage :: Lens' FilteredLogEvent (Maybe Text)
fleMessage = lens _fleMessage (\s a -> s {_fleMessage = a})

-- | The time the event was ingested, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
fleIngestionTime :: Lens' FilteredLogEvent (Maybe Natural)
fleIngestionTime = lens _fleIngestionTime (\s a -> s {_fleIngestionTime = a}) . mapping _Nat

-- | The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
fleTimestamp :: Lens' FilteredLogEvent (Maybe Natural)
fleTimestamp = lens _fleTimestamp (\s a -> s {_fleTimestamp = a}) . mapping _Nat

instance FromJSON FilteredLogEvent where
  parseJSON =
    withObject
      "FilteredLogEvent"
      ( \x ->
          FilteredLogEvent'
            <$> (x .:? "logStreamName")
            <*> (x .:? "eventId")
            <*> (x .:? "message")
            <*> (x .:? "ingestionTime")
            <*> (x .:? "timestamp")
      )

instance Hashable FilteredLogEvent

instance NFData FilteredLogEvent

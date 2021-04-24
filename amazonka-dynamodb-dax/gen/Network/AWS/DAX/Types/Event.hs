{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.Event
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.Event where

import Network.AWS.DAX.Types.SourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.
--
--
--
-- /See:/ 'event' smart constructor.
data Event = Event'
  { _eMessage :: !(Maybe Text),
    _eSourceName :: !(Maybe Text),
    _eDate :: !(Maybe POSIX),
    _eSourceType :: !(Maybe SourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eMessage' - A user-defined message associated with the event.
--
-- * 'eSourceName' - The source of the event. For example, if the event occurred at the node level, the source would be the node ID.
--
-- * 'eDate' - The date and time when the event occurred.
--
-- * 'eSourceType' - Specifies the origin of this event - a cluster, a parameter group, a node ID, etc.
event ::
  Event
event =
  Event'
    { _eMessage = Nothing,
      _eSourceName = Nothing,
      _eDate = Nothing,
      _eSourceType = Nothing
    }

-- | A user-defined message associated with the event.
eMessage :: Lens' Event (Maybe Text)
eMessage = lens _eMessage (\s a -> s {_eMessage = a})

-- | The source of the event. For example, if the event occurred at the node level, the source would be the node ID.
eSourceName :: Lens' Event (Maybe Text)
eSourceName = lens _eSourceName (\s a -> s {_eSourceName = a})

-- | The date and time when the event occurred.
eDate :: Lens' Event (Maybe UTCTime)
eDate = lens _eDate (\s a -> s {_eDate = a}) . mapping _Time

-- | Specifies the origin of this event - a cluster, a parameter group, a node ID, etc.
eSourceType :: Lens' Event (Maybe SourceType)
eSourceType = lens _eSourceType (\s a -> s {_eSourceType = a})

instance FromJSON Event where
  parseJSON =
    withObject
      "Event"
      ( \x ->
          Event'
            <$> (x .:? "Message")
            <*> (x .:? "SourceName")
            <*> (x .:? "Date")
            <*> (x .:? "SourceType")
      )

instance Hashable Event

instance NFData Event

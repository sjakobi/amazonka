{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.Event
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.Event where

import Network.AWS.DMS.Types.SourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an identifiable significant activity that affects a replication instance or task. This object can provide the message, the available event categories, the date and source of the event, and the AWS DMS resource type.
--
--
--
-- /See:/ 'event' smart constructor.
data Event = Event'
  { _eMessage :: !(Maybe Text),
    _eEventCategories :: !(Maybe [Text]),
    _eDate :: !(Maybe POSIX),
    _eSourceIdentifier :: !(Maybe Text),
    _eSourceType :: !(Maybe SourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eMessage' - The event message.
--
-- * 'eEventCategories' - The event categories available for the specified source type.
--
-- * 'eDate' - The date of the event.
--
-- * 'eSourceIdentifier' - The identifier of an event source.
--
-- * 'eSourceType' - The type of AWS DMS resource that generates events.  Valid values: replication-instance | endpoint | replication-task
event ::
  Event
event =
  Event'
    { _eMessage = Nothing,
      _eEventCategories = Nothing,
      _eDate = Nothing,
      _eSourceIdentifier = Nothing,
      _eSourceType = Nothing
    }

-- | The event message.
eMessage :: Lens' Event (Maybe Text)
eMessage = lens _eMessage (\s a -> s {_eMessage = a})

-- | The event categories available for the specified source type.
eEventCategories :: Lens' Event [Text]
eEventCategories = lens _eEventCategories (\s a -> s {_eEventCategories = a}) . _Default . _Coerce

-- | The date of the event.
eDate :: Lens' Event (Maybe UTCTime)
eDate = lens _eDate (\s a -> s {_eDate = a}) . mapping _Time

-- | The identifier of an event source.
eSourceIdentifier :: Lens' Event (Maybe Text)
eSourceIdentifier = lens _eSourceIdentifier (\s a -> s {_eSourceIdentifier = a})

-- | The type of AWS DMS resource that generates events.  Valid values: replication-instance | endpoint | replication-task
eSourceType :: Lens' Event (Maybe SourceType)
eSourceType = lens _eSourceType (\s a -> s {_eSourceType = a})

instance FromJSON Event where
  parseJSON =
    withObject
      "Event"
      ( \x ->
          Event'
            <$> (x .:? "Message")
            <*> (x .:? "EventCategories" .!= mempty)
            <*> (x .:? "Date")
            <*> (x .:? "SourceIdentifier")
            <*> (x .:? "SourceType")
      )

instance Hashable Event

instance NFData Event

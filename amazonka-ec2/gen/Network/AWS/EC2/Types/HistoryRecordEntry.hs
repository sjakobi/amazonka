{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HistoryRecordEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HistoryRecordEntry where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EventInformation
import Network.AWS.EC2.Types.FleetEventType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an event in the history of an EC2 Fleet.
--
--
--
-- /See:/ 'historyRecordEntry' smart constructor.
data HistoryRecordEntry = HistoryRecordEntry'
  { _hreEventType ::
      !(Maybe FleetEventType),
    _hreTimestamp :: !(Maybe ISO8601),
    _hreEventInformation ::
      !(Maybe EventInformation)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HistoryRecordEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hreEventType' - The event type.
--
-- * 'hreTimestamp' - The date and time of the event, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
-- * 'hreEventInformation' - Information about the event.
historyRecordEntry ::
  HistoryRecordEntry
historyRecordEntry =
  HistoryRecordEntry'
    { _hreEventType = Nothing,
      _hreTimestamp = Nothing,
      _hreEventInformation = Nothing
    }

-- | The event type.
hreEventType :: Lens' HistoryRecordEntry (Maybe FleetEventType)
hreEventType = lens _hreEventType (\s a -> s {_hreEventType = a})

-- | The date and time of the event, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
hreTimestamp :: Lens' HistoryRecordEntry (Maybe UTCTime)
hreTimestamp = lens _hreTimestamp (\s a -> s {_hreTimestamp = a}) . mapping _Time

-- | Information about the event.
hreEventInformation :: Lens' HistoryRecordEntry (Maybe EventInformation)
hreEventInformation = lens _hreEventInformation (\s a -> s {_hreEventInformation = a})

instance FromXML HistoryRecordEntry where
  parseXML x =
    HistoryRecordEntry'
      <$> (x .@? "eventType")
      <*> (x .@? "timestamp")
      <*> (x .@? "eventInformation")

instance Hashable HistoryRecordEntry

instance NFData HistoryRecordEntry

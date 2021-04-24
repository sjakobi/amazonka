{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.Event
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.Event where

import Network.AWS.ElastiCache.Types.SourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a single occurrence of something interesting within the system. Some examples of events are creating a cluster, adding or removing a cache node, or rebooting a node.
--
--
--
-- /See:/ 'event' smart constructor.
data Event = Event'
  { _eMessage :: !(Maybe Text),
    _eDate :: !(Maybe ISO8601),
    _eSourceIdentifier :: !(Maybe Text),
    _eSourceType :: !(Maybe SourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eMessage' - The text of the event.
--
-- * 'eDate' - The date and time when the event occurred.
--
-- * 'eSourceIdentifier' - The identifier for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.
--
-- * 'eSourceType' - Specifies the origin of this event - a cluster, a parameter group, a security group, etc.
event ::
  Event
event =
  Event'
    { _eMessage = Nothing,
      _eDate = Nothing,
      _eSourceIdentifier = Nothing,
      _eSourceType = Nothing
    }

-- | The text of the event.
eMessage :: Lens' Event (Maybe Text)
eMessage = lens _eMessage (\s a -> s {_eMessage = a})

-- | The date and time when the event occurred.
eDate :: Lens' Event (Maybe UTCTime)
eDate = lens _eDate (\s a -> s {_eDate = a}) . mapping _Time

-- | The identifier for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.
eSourceIdentifier :: Lens' Event (Maybe Text)
eSourceIdentifier = lens _eSourceIdentifier (\s a -> s {_eSourceIdentifier = a})

-- | Specifies the origin of this event - a cluster, a parameter group, a security group, etc.
eSourceType :: Lens' Event (Maybe SourceType)
eSourceType = lens _eSourceType (\s a -> s {_eSourceType = a})

instance FromXML Event where
  parseXML x =
    Event'
      <$> (x .@? "Message")
      <*> (x .@? "Date")
      <*> (x .@? "SourceIdentifier")
      <*> (x .@? "SourceType")

instance Hashable Event

instance NFData Event

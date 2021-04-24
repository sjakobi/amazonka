{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeStatusEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeStatusEvent where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a volume status event.
--
--
--
-- /See:/ 'volumeStatusEvent' smart constructor.
data VolumeStatusEvent = VolumeStatusEvent'
  { _vseNotBefore ::
      !(Maybe ISO8601),
    _vseEventType :: !(Maybe Text),
    _vseInstanceId :: !(Maybe Text),
    _vseEventId :: !(Maybe Text),
    _vseNotAfter :: !(Maybe ISO8601),
    _vseDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VolumeStatusEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vseNotBefore' - The earliest start time of the event.
--
-- * 'vseEventType' - The type of this event.
--
-- * 'vseInstanceId' - The ID of the instance associated with the event.
--
-- * 'vseEventId' - The ID of this event.
--
-- * 'vseNotAfter' - The latest end time of the event.
--
-- * 'vseDescription' - A description of the event.
volumeStatusEvent ::
  VolumeStatusEvent
volumeStatusEvent =
  VolumeStatusEvent'
    { _vseNotBefore = Nothing,
      _vseEventType = Nothing,
      _vseInstanceId = Nothing,
      _vseEventId = Nothing,
      _vseNotAfter = Nothing,
      _vseDescription = Nothing
    }

-- | The earliest start time of the event.
vseNotBefore :: Lens' VolumeStatusEvent (Maybe UTCTime)
vseNotBefore = lens _vseNotBefore (\s a -> s {_vseNotBefore = a}) . mapping _Time

-- | The type of this event.
vseEventType :: Lens' VolumeStatusEvent (Maybe Text)
vseEventType = lens _vseEventType (\s a -> s {_vseEventType = a})

-- | The ID of the instance associated with the event.
vseInstanceId :: Lens' VolumeStatusEvent (Maybe Text)
vseInstanceId = lens _vseInstanceId (\s a -> s {_vseInstanceId = a})

-- | The ID of this event.
vseEventId :: Lens' VolumeStatusEvent (Maybe Text)
vseEventId = lens _vseEventId (\s a -> s {_vseEventId = a})

-- | The latest end time of the event.
vseNotAfter :: Lens' VolumeStatusEvent (Maybe UTCTime)
vseNotAfter = lens _vseNotAfter (\s a -> s {_vseNotAfter = a}) . mapping _Time

-- | A description of the event.
vseDescription :: Lens' VolumeStatusEvent (Maybe Text)
vseDescription = lens _vseDescription (\s a -> s {_vseDescription = a})

instance FromXML VolumeStatusEvent where
  parseXML x =
    VolumeStatusEvent'
      <$> (x .@? "notBefore")
      <*> (x .@? "eventType")
      <*> (x .@? "instanceId")
      <*> (x .@? "eventId")
      <*> (x .@? "notAfter")
      <*> (x .@? "description")

instance Hashable VolumeStatusEvent

instance NFData VolumeStatusEvent

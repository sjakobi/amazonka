{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.MeetingRoomConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.MeetingRoomConfiguration where

import Network.AWS.AlexaBusiness.Types.EndOfMeetingReminder
import Network.AWS.AlexaBusiness.Types.InstantBooking
import Network.AWS.AlexaBusiness.Types.RequireCheckIn
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Meeting room settings of a room profile.
--
--
--
-- /See:/ 'meetingRoomConfiguration' smart constructor.
data MeetingRoomConfiguration = MeetingRoomConfiguration'
  { _mrcRoomUtilizationMetricsEnabled ::
      !(Maybe Bool),
    _mrcEndOfMeetingReminder ::
      !( Maybe
           EndOfMeetingReminder
       ),
    _mrcInstantBooking ::
      !( Maybe
           InstantBooking
       ),
    _mrcRequireCheckIn ::
      !( Maybe
           RequireCheckIn
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MeetingRoomConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrcRoomUtilizationMetricsEnabled' - Whether room utilization metrics are enabled or not.
--
-- * 'mrcEndOfMeetingReminder' - Settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending.
--
-- * 'mrcInstantBooking' - Settings to automatically book the room if available for a configured duration when joining a meeting with Alexa.
--
-- * 'mrcRequireCheckIn' - Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into. This makes the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.”
meetingRoomConfiguration ::
  MeetingRoomConfiguration
meetingRoomConfiguration =
  MeetingRoomConfiguration'
    { _mrcRoomUtilizationMetricsEnabled =
        Nothing,
      _mrcEndOfMeetingReminder = Nothing,
      _mrcInstantBooking = Nothing,
      _mrcRequireCheckIn = Nothing
    }

-- | Whether room utilization metrics are enabled or not.
mrcRoomUtilizationMetricsEnabled :: Lens' MeetingRoomConfiguration (Maybe Bool)
mrcRoomUtilizationMetricsEnabled = lens _mrcRoomUtilizationMetricsEnabled (\s a -> s {_mrcRoomUtilizationMetricsEnabled = a})

-- | Settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending.
mrcEndOfMeetingReminder :: Lens' MeetingRoomConfiguration (Maybe EndOfMeetingReminder)
mrcEndOfMeetingReminder = lens _mrcEndOfMeetingReminder (\s a -> s {_mrcEndOfMeetingReminder = a})

-- | Settings to automatically book the room if available for a configured duration when joining a meeting with Alexa.
mrcInstantBooking :: Lens' MeetingRoomConfiguration (Maybe InstantBooking)
mrcInstantBooking = lens _mrcInstantBooking (\s a -> s {_mrcInstantBooking = a})

-- | Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into. This makes the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.”
mrcRequireCheckIn :: Lens' MeetingRoomConfiguration (Maybe RequireCheckIn)
mrcRequireCheckIn = lens _mrcRequireCheckIn (\s a -> s {_mrcRequireCheckIn = a})

instance FromJSON MeetingRoomConfiguration where
  parseJSON =
    withObject
      "MeetingRoomConfiguration"
      ( \x ->
          MeetingRoomConfiguration'
            <$> (x .:? "RoomUtilizationMetricsEnabled")
            <*> (x .:? "EndOfMeetingReminder")
            <*> (x .:? "InstantBooking")
            <*> (x .:? "RequireCheckIn")
      )

instance Hashable MeetingRoomConfiguration

instance NFData MeetingRoomConfiguration

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JourneyResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneyResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Activity
import Network.AWS.Pinpoint.Types.JourneyLimits
import Network.AWS.Pinpoint.Types.JourneySchedule
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Pinpoint.Types.StartCondition
import Network.AWS.Pinpoint.Types.State
import Network.AWS.Prelude

-- | Provides information about the status, configuration, and other settings for a journey.
--
--
--
-- /See:/ 'journeyResponse' smart constructor.
data JourneyResponse = JourneyResponse'
  { _jrLastModifiedDate ::
      !(Maybe Text),
    _jrActivities ::
      !(Maybe (Map Text Activity)),
    _jrCreationDate :: !(Maybe Text),
    _jrState :: !(Maybe State),
    _jrTags :: !(Maybe (Map Text Text)),
    _jrQuietTime :: !(Maybe QuietTime),
    _jrRefreshFrequency :: !(Maybe Text),
    _jrLimits :: !(Maybe JourneyLimits),
    _jrStartCondition ::
      !(Maybe StartCondition),
    _jrLocalTime :: !(Maybe Bool),
    _jrStartActivity :: !(Maybe Text),
    _jrSchedule :: !(Maybe JourneySchedule),
    _jrName :: !Text,
    _jrId :: !Text,
    _jrApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JourneyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrLastModifiedDate' - The date, in ISO 8601 format, when the journey was last modified.
--
-- * 'jrActivities' - A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity.
--
-- * 'jrCreationDate' - The date, in ISO 8601 format, when the journey was created.
--
-- * 'jrState' - The current status of the journey. Possible values are:     * DRAFT - The journey is being developed and hasn't been published yet.     * ACTIVE - The journey has been developed and published. Depending on the journey's schedule, the journey may currently be running or scheduled to start running at a later time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.     * COMPLETED - The journey has been published and has finished running. All participants have entered the journey and no participants are waiting to complete the journey or any activities in the journey.     * CANCELLED - The journey has been stopped. If a journey's status is CANCELLED, you can't add, change, or remove activities or segment settings from the journey.     * CLOSED - The journey has been published and has started running. It may have also passed its scheduled end time, or passed its scheduled start time and a refresh frequency hasn't been specified for it. If a journey's status is CLOSED, you can't add participants to it, and no existing participants can enter the journey for the first time. However, any existing participants who are currently waiting to start an activity may continue the journey.
--
-- * 'jrTags' - This object is not used or supported.
--
-- * 'jrQuietTime' - The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:     * The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.     * The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.     * The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey. If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.
--
-- * 'jrRefreshFrequency' - The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.
--
-- * 'jrLimits' - The messaging and entry limits for the journey.
--
-- * 'jrStartCondition' - The segment that defines which users are participants in the journey.
--
-- * 'jrLocalTime' - Specifies whether the journey's scheduled start and end times use each participant's local time. If this value is true, the schedule uses each participant's local time.
--
-- * 'jrStartActivity' - The unique identifier for the first activity in the journey.
--
-- * 'jrSchedule' - The schedule settings for the journey.
--
-- * 'jrName' - The name of the journey.
--
-- * 'jrId' - The unique identifier for the journey.
--
-- * 'jrApplicationId' - The unique identifier for the application that the journey applies to.
journeyResponse ::
  -- | 'jrName'
  Text ->
  -- | 'jrId'
  Text ->
  -- | 'jrApplicationId'
  Text ->
  JourneyResponse
journeyResponse pName_ pId_ pApplicationId_ =
  JourneyResponse'
    { _jrLastModifiedDate = Nothing,
      _jrActivities = Nothing,
      _jrCreationDate = Nothing,
      _jrState = Nothing,
      _jrTags = Nothing,
      _jrQuietTime = Nothing,
      _jrRefreshFrequency = Nothing,
      _jrLimits = Nothing,
      _jrStartCondition = Nothing,
      _jrLocalTime = Nothing,
      _jrStartActivity = Nothing,
      _jrSchedule = Nothing,
      _jrName = pName_,
      _jrId = pId_,
      _jrApplicationId = pApplicationId_
    }

-- | The date, in ISO 8601 format, when the journey was last modified.
jrLastModifiedDate :: Lens' JourneyResponse (Maybe Text)
jrLastModifiedDate = lens _jrLastModifiedDate (\s a -> s {_jrLastModifiedDate = a})

-- | A map that contains a set of Activity objects, one object for each activity in the journey. For each Activity object, the key is the unique identifier (string) for an activity and the value is the settings for the activity.
jrActivities :: Lens' JourneyResponse (HashMap Text Activity)
jrActivities = lens _jrActivities (\s a -> s {_jrActivities = a}) . _Default . _Map

-- | The date, in ISO 8601 format, when the journey was created.
jrCreationDate :: Lens' JourneyResponse (Maybe Text)
jrCreationDate = lens _jrCreationDate (\s a -> s {_jrCreationDate = a})

-- | The current status of the journey. Possible values are:     * DRAFT - The journey is being developed and hasn't been published yet.     * ACTIVE - The journey has been developed and published. Depending on the journey's schedule, the journey may currently be running or scheduled to start running at a later time. If a journey's status is ACTIVE, you can't add, change, or remove activities from it.     * COMPLETED - The journey has been published and has finished running. All participants have entered the journey and no participants are waiting to complete the journey or any activities in the journey.     * CANCELLED - The journey has been stopped. If a journey's status is CANCELLED, you can't add, change, or remove activities or segment settings from the journey.     * CLOSED - The journey has been published and has started running. It may have also passed its scheduled end time, or passed its scheduled start time and a refresh frequency hasn't been specified for it. If a journey's status is CLOSED, you can't add participants to it, and no existing participants can enter the journey for the first time. However, any existing participants who are currently waiting to start an activity may continue the journey.
jrState :: Lens' JourneyResponse (Maybe State)
jrState = lens _jrState (\s a -> s {_jrState = a})

-- | This object is not used or supported.
jrTags :: Lens' JourneyResponse (HashMap Text Text)
jrTags = lens _jrTags (\s a -> s {_jrTags = a}) . _Default . _Map

-- | The quiet time settings for the journey. Quiet time is a specific time range when a journey doesn't send messages to participants, if all the following conditions are met:     * The EndpointDemographic.Timezone property of the endpoint for the participant is set to a valid value.     * The current time in the participant's time zone is later than or equal to the time specified by the QuietTime.Start property for the journey.     * The current time in the participant's time zone is earlier than or equal to the time specified by the QuietTime.End property for the journey. If any of the preceding conditions isn't met, the participant will receive messages from the journey, even if quiet time is enabled.
jrQuietTime :: Lens' JourneyResponse (Maybe QuietTime)
jrQuietTime = lens _jrQuietTime (\s a -> s {_jrQuietTime = a})

-- | The frequency with which Amazon Pinpoint evaluates segment and event data for the journey, as a duration in ISO 8601 format.
jrRefreshFrequency :: Lens' JourneyResponse (Maybe Text)
jrRefreshFrequency = lens _jrRefreshFrequency (\s a -> s {_jrRefreshFrequency = a})

-- | The messaging and entry limits for the journey.
jrLimits :: Lens' JourneyResponse (Maybe JourneyLimits)
jrLimits = lens _jrLimits (\s a -> s {_jrLimits = a})

-- | The segment that defines which users are participants in the journey.
jrStartCondition :: Lens' JourneyResponse (Maybe StartCondition)
jrStartCondition = lens _jrStartCondition (\s a -> s {_jrStartCondition = a})

-- | Specifies whether the journey's scheduled start and end times use each participant's local time. If this value is true, the schedule uses each participant's local time.
jrLocalTime :: Lens' JourneyResponse (Maybe Bool)
jrLocalTime = lens _jrLocalTime (\s a -> s {_jrLocalTime = a})

-- | The unique identifier for the first activity in the journey.
jrStartActivity :: Lens' JourneyResponse (Maybe Text)
jrStartActivity = lens _jrStartActivity (\s a -> s {_jrStartActivity = a})

-- | The schedule settings for the journey.
jrSchedule :: Lens' JourneyResponse (Maybe JourneySchedule)
jrSchedule = lens _jrSchedule (\s a -> s {_jrSchedule = a})

-- | The name of the journey.
jrName :: Lens' JourneyResponse Text
jrName = lens _jrName (\s a -> s {_jrName = a})

-- | The unique identifier for the journey.
jrId :: Lens' JourneyResponse Text
jrId = lens _jrId (\s a -> s {_jrId = a})

-- | The unique identifier for the application that the journey applies to.
jrApplicationId :: Lens' JourneyResponse Text
jrApplicationId = lens _jrApplicationId (\s a -> s {_jrApplicationId = a})

instance FromJSON JourneyResponse where
  parseJSON =
    withObject
      "JourneyResponse"
      ( \x ->
          JourneyResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "Activities" .!= mempty)
            <*> (x .:? "CreationDate")
            <*> (x .:? "State")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "QuietTime")
            <*> (x .:? "RefreshFrequency")
            <*> (x .:? "Limits")
            <*> (x .:? "StartCondition")
            <*> (x .:? "LocalTime")
            <*> (x .:? "StartActivity")
            <*> (x .:? "Schedule")
            <*> (x .: "Name")
            <*> (x .: "Id")
            <*> (x .: "ApplicationId")
      )

instance Hashable JourneyResponse

instance NFData JourneyResponse

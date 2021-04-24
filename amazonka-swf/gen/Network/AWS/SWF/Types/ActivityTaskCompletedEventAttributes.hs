{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ActivityTaskCompletedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ActivityTaskCompletedEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of the @ActivityTaskCompleted@ event.
--
--
--
-- /See:/ 'activityTaskCompletedEventAttributes' smart constructor.
data ActivityTaskCompletedEventAttributes = ActivityTaskCompletedEventAttributes'
  { _aResult ::
      !( Maybe
           Text
       ),
    _aScheduledEventId ::
      !Integer,
    _aStartedEventId ::
      !Integer
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ActivityTaskCompletedEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aResult' - The results of the activity task.
--
-- * 'aScheduledEventId' - The ID of the @ActivityTaskScheduled@ event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'aStartedEventId' - The ID of the @ActivityTaskStarted@ event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
activityTaskCompletedEventAttributes ::
  -- | 'aScheduledEventId'
  Integer ->
  -- | 'aStartedEventId'
  Integer ->
  ActivityTaskCompletedEventAttributes
activityTaskCompletedEventAttributes
  pScheduledEventId_
  pStartedEventId_ =
    ActivityTaskCompletedEventAttributes'
      { _aResult =
          Nothing,
        _aScheduledEventId =
          pScheduledEventId_,
        _aStartedEventId = pStartedEventId_
      }

-- | The results of the activity task.
aResult :: Lens' ActivityTaskCompletedEventAttributes (Maybe Text)
aResult = lens _aResult (\s a -> s {_aResult = a})

-- | The ID of the @ActivityTaskScheduled@ event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
aScheduledEventId :: Lens' ActivityTaskCompletedEventAttributes Integer
aScheduledEventId = lens _aScheduledEventId (\s a -> s {_aScheduledEventId = a})

-- | The ID of the @ActivityTaskStarted@ event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
aStartedEventId :: Lens' ActivityTaskCompletedEventAttributes Integer
aStartedEventId = lens _aStartedEventId (\s a -> s {_aStartedEventId = a})

instance
  FromJSON
    ActivityTaskCompletedEventAttributes
  where
  parseJSON =
    withObject
      "ActivityTaskCompletedEventAttributes"
      ( \x ->
          ActivityTaskCompletedEventAttributes'
            <$> (x .:? "result")
            <*> (x .: "scheduledEventId")
            <*> (x .: "startedEventId")
      )

instance
  Hashable
    ActivityTaskCompletedEventAttributes

instance NFData ActivityTaskCompletedEventAttributes

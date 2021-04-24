{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ActivityTaskCanceledEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ActivityTaskCanceledEventAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides the details of the @ActivityTaskCanceled@ event.
--
--
--
-- /See:/ 'activityTaskCanceledEventAttributes' smart constructor.
data ActivityTaskCanceledEventAttributes = ActivityTaskCanceledEventAttributes'
  { _atceaLatestCancelRequestedEventId ::
      !( Maybe
           Integer
       ),
    _atceaDetails ::
      !( Maybe
           Text
       ),
    _atceaScheduledEventId ::
      !Integer,
    _atceaStartedEventId ::
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

-- | Creates a value of 'ActivityTaskCanceledEventAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atceaLatestCancelRequestedEventId' - If set, contains the ID of the last @ActivityTaskCancelRequested@ event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'atceaDetails' - Details of the cancellation.
--
-- * 'atceaScheduledEventId' - The ID of the @ActivityTaskScheduled@ event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- * 'atceaStartedEventId' - The ID of the @ActivityTaskStarted@ event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
activityTaskCanceledEventAttributes ::
  -- | 'atceaScheduledEventId'
  Integer ->
  -- | 'atceaStartedEventId'
  Integer ->
  ActivityTaskCanceledEventAttributes
activityTaskCanceledEventAttributes
  pScheduledEventId_
  pStartedEventId_ =
    ActivityTaskCanceledEventAttributes'
      { _atceaLatestCancelRequestedEventId =
          Nothing,
        _atceaDetails = Nothing,
        _atceaScheduledEventId =
          pScheduledEventId_,
        _atceaStartedEventId =
          pStartedEventId_
      }

-- | If set, contains the ID of the last @ActivityTaskCancelRequested@ event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
atceaLatestCancelRequestedEventId :: Lens' ActivityTaskCanceledEventAttributes (Maybe Integer)
atceaLatestCancelRequestedEventId = lens _atceaLatestCancelRequestedEventId (\s a -> s {_atceaLatestCancelRequestedEventId = a})

-- | Details of the cancellation.
atceaDetails :: Lens' ActivityTaskCanceledEventAttributes (Maybe Text)
atceaDetails = lens _atceaDetails (\s a -> s {_atceaDetails = a})

-- | The ID of the @ActivityTaskScheduled@ event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
atceaScheduledEventId :: Lens' ActivityTaskCanceledEventAttributes Integer
atceaScheduledEventId = lens _atceaScheduledEventId (\s a -> s {_atceaScheduledEventId = a})

-- | The ID of the @ActivityTaskStarted@ event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
atceaStartedEventId :: Lens' ActivityTaskCanceledEventAttributes Integer
atceaStartedEventId = lens _atceaStartedEventId (\s a -> s {_atceaStartedEventId = a})

instance FromJSON ActivityTaskCanceledEventAttributes where
  parseJSON =
    withObject
      "ActivityTaskCanceledEventAttributes"
      ( \x ->
          ActivityTaskCanceledEventAttributes'
            <$> (x .:? "latestCancelRequestedEventId")
            <*> (x .:? "details")
            <*> (x .: "scheduledEventId")
            <*> (x .: "startedEventId")
      )

instance Hashable ActivityTaskCanceledEventAttributes

instance NFData ActivityTaskCanceledEventAttributes

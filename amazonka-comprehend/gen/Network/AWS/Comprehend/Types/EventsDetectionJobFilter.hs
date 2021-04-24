{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EventsDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EventsDetectionJobFilter where

import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information for filtering a list of event detection jobs.
--
--
--
-- /See:/ 'eventsDetectionJobFilter' smart constructor.
data EventsDetectionJobFilter = EventsDetectionJobFilter'
  { _edjfJobStatus ::
      !(Maybe JobStatus),
    _edjfSubmitTimeBefore ::
      !(Maybe POSIX),
    _edjfSubmitTimeAfter ::
      !(Maybe POSIX),
    _edjfJobName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EventsDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
--
-- * 'edjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'edjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'edjfJobName' - Filters on the name of the events detection job.
eventsDetectionJobFilter ::
  EventsDetectionJobFilter
eventsDetectionJobFilter =
  EventsDetectionJobFilter'
    { _edjfJobStatus = Nothing,
      _edjfSubmitTimeBefore = Nothing,
      _edjfSubmitTimeAfter = Nothing,
      _edjfJobName = Nothing
    }

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
edjfJobStatus :: Lens' EventsDetectionJobFilter (Maybe JobStatus)
edjfJobStatus = lens _edjfJobStatus (\s a -> s {_edjfJobStatus = a})

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
edjfSubmitTimeBefore :: Lens' EventsDetectionJobFilter (Maybe UTCTime)
edjfSubmitTimeBefore = lens _edjfSubmitTimeBefore (\s a -> s {_edjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
edjfSubmitTimeAfter :: Lens' EventsDetectionJobFilter (Maybe UTCTime)
edjfSubmitTimeAfter = lens _edjfSubmitTimeAfter (\s a -> s {_edjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters on the name of the events detection job.
edjfJobName :: Lens' EventsDetectionJobFilter (Maybe Text)
edjfJobName = lens _edjfJobName (\s a -> s {_edjfJobName = a})

instance Hashable EventsDetectionJobFilter

instance NFData EventsDetectionJobFilter

instance ToJSON EventsDetectionJobFilter where
  toJSON EventsDetectionJobFilter' {..} =
    object
      ( catMaybes
          [ ("JobStatus" .=) <$> _edjfJobStatus,
            ("SubmitTimeBefore" .=) <$> _edjfSubmitTimeBefore,
            ("SubmitTimeAfter" .=) <$> _edjfSubmitTimeAfter,
            ("JobName" .=) <$> _edjfJobName
          ]
      )

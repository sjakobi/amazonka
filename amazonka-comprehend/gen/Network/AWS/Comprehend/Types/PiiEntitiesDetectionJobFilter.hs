{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionJobFilter where

import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information for filtering a list of PII entity detection jobs.
--
--
--
-- /See:/ 'piiEntitiesDetectionJobFilter' smart constructor.
data PiiEntitiesDetectionJobFilter = PiiEntitiesDetectionJobFilter'
  { _pedjfJobStatus ::
      !( Maybe
           JobStatus
       ),
    _pedjfSubmitTimeBefore ::
      !( Maybe
           POSIX
       ),
    _pedjfSubmitTimeAfter ::
      !( Maybe
           POSIX
       ),
    _pedjfJobName ::
      !( Maybe
           Text
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

-- | Creates a value of 'PiiEntitiesDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pedjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
--
-- * 'pedjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'pedjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'pedjfJobName' - Filters on the name of the job.
piiEntitiesDetectionJobFilter ::
  PiiEntitiesDetectionJobFilter
piiEntitiesDetectionJobFilter =
  PiiEntitiesDetectionJobFilter'
    { _pedjfJobStatus =
        Nothing,
      _pedjfSubmitTimeBefore = Nothing,
      _pedjfSubmitTimeAfter = Nothing,
      _pedjfJobName = Nothing
    }

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
pedjfJobStatus :: Lens' PiiEntitiesDetectionJobFilter (Maybe JobStatus)
pedjfJobStatus = lens _pedjfJobStatus (\s a -> s {_pedjfJobStatus = a})

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
pedjfSubmitTimeBefore :: Lens' PiiEntitiesDetectionJobFilter (Maybe UTCTime)
pedjfSubmitTimeBefore = lens _pedjfSubmitTimeBefore (\s a -> s {_pedjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
pedjfSubmitTimeAfter :: Lens' PiiEntitiesDetectionJobFilter (Maybe UTCTime)
pedjfSubmitTimeAfter = lens _pedjfSubmitTimeAfter (\s a -> s {_pedjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters on the name of the job.
pedjfJobName :: Lens' PiiEntitiesDetectionJobFilter (Maybe Text)
pedjfJobName = lens _pedjfJobName (\s a -> s {_pedjfJobName = a})

instance Hashable PiiEntitiesDetectionJobFilter

instance NFData PiiEntitiesDetectionJobFilter

instance ToJSON PiiEntitiesDetectionJobFilter where
  toJSON PiiEntitiesDetectionJobFilter' {..} =
    object
      ( catMaybes
          [ ("JobStatus" .=) <$> _pedjfJobStatus,
            ("SubmitTimeBefore" .=) <$> _pedjfSubmitTimeBefore,
            ("SubmitTimeAfter" .=) <$> _pedjfSubmitTimeAfter,
            ("JobName" .=) <$> _pedjfJobName
          ]
      )

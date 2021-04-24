{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.DominantLanguageDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DominantLanguageDetectionJobFilter where

import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
--
--
-- /See:/ 'dominantLanguageDetectionJobFilter' smart constructor.
data DominantLanguageDetectionJobFilter = DominantLanguageDetectionJobFilter'
  { _dldjfJobStatus ::
      !( Maybe
           JobStatus
       ),
    _dldjfSubmitTimeBefore ::
      !( Maybe
           POSIX
       ),
    _dldjfSubmitTimeAfter ::
      !( Maybe
           POSIX
       ),
    _dldjfJobName ::
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

-- | Creates a value of 'DominantLanguageDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dldjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
--
-- * 'dldjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'dldjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'dldjfJobName' - Filters on the name of the job.
dominantLanguageDetectionJobFilter ::
  DominantLanguageDetectionJobFilter
dominantLanguageDetectionJobFilter =
  DominantLanguageDetectionJobFilter'
    { _dldjfJobStatus =
        Nothing,
      _dldjfSubmitTimeBefore = Nothing,
      _dldjfSubmitTimeAfter = Nothing,
      _dldjfJobName = Nothing
    }

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
dldjfJobStatus :: Lens' DominantLanguageDetectionJobFilter (Maybe JobStatus)
dldjfJobStatus = lens _dldjfJobStatus (\s a -> s {_dldjfJobStatus = a})

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
dldjfSubmitTimeBefore :: Lens' DominantLanguageDetectionJobFilter (Maybe UTCTime)
dldjfSubmitTimeBefore = lens _dldjfSubmitTimeBefore (\s a -> s {_dldjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
dldjfSubmitTimeAfter :: Lens' DominantLanguageDetectionJobFilter (Maybe UTCTime)
dldjfSubmitTimeAfter = lens _dldjfSubmitTimeAfter (\s a -> s {_dldjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters on the name of the job.
dldjfJobName :: Lens' DominantLanguageDetectionJobFilter (Maybe Text)
dldjfJobName = lens _dldjfJobName (\s a -> s {_dldjfJobName = a})

instance Hashable DominantLanguageDetectionJobFilter

instance NFData DominantLanguageDetectionJobFilter

instance ToJSON DominantLanguageDetectionJobFilter where
  toJSON DominantLanguageDetectionJobFilter' {..} =
    object
      ( catMaybes
          [ ("JobStatus" .=) <$> _dldjfJobStatus,
            ("SubmitTimeBefore" .=) <$> _dldjfSubmitTimeBefore,
            ("SubmitTimeAfter" .=) <$> _dldjfSubmitTimeAfter,
            ("JobName" .=) <$> _dldjfJobName
          ]
      )

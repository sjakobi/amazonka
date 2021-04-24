{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EntitiesDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntitiesDetectionJobFilter where

import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
--
--
-- /See:/ 'entitiesDetectionJobFilter' smart constructor.
data EntitiesDetectionJobFilter = EntitiesDetectionJobFilter'
  { _eJobStatus ::
      !( Maybe
           JobStatus
       ),
    _eSubmitTimeBefore ::
      !(Maybe POSIX),
    _eSubmitTimeAfter ::
      !(Maybe POSIX),
    _eJobName ::
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

-- | Creates a value of 'EntitiesDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
--
-- * 'eSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'eSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'eJobName' - Filters on the name of the job.
entitiesDetectionJobFilter ::
  EntitiesDetectionJobFilter
entitiesDetectionJobFilter =
  EntitiesDetectionJobFilter'
    { _eJobStatus = Nothing,
      _eSubmitTimeBefore = Nothing,
      _eSubmitTimeAfter = Nothing,
      _eJobName = Nothing
    }

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
eJobStatus :: Lens' EntitiesDetectionJobFilter (Maybe JobStatus)
eJobStatus = lens _eJobStatus (\s a -> s {_eJobStatus = a})

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
eSubmitTimeBefore :: Lens' EntitiesDetectionJobFilter (Maybe UTCTime)
eSubmitTimeBefore = lens _eSubmitTimeBefore (\s a -> s {_eSubmitTimeBefore = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
eSubmitTimeAfter :: Lens' EntitiesDetectionJobFilter (Maybe UTCTime)
eSubmitTimeAfter = lens _eSubmitTimeAfter (\s a -> s {_eSubmitTimeAfter = a}) . mapping _Time

-- | Filters on the name of the job.
eJobName :: Lens' EntitiesDetectionJobFilter (Maybe Text)
eJobName = lens _eJobName (\s a -> s {_eJobName = a})

instance Hashable EntitiesDetectionJobFilter

instance NFData EntitiesDetectionJobFilter

instance ToJSON EntitiesDetectionJobFilter where
  toJSON EntitiesDetectionJobFilter' {..} =
    object
      ( catMaybes
          [ ("JobStatus" .=) <$> _eJobStatus,
            ("SubmitTimeBefore" .=) <$> _eSubmitTimeBefore,
            ("SubmitTimeAfter" .=) <$> _eSubmitTimeAfter,
            ("JobName" .=) <$> _eJobName
          ]
      )

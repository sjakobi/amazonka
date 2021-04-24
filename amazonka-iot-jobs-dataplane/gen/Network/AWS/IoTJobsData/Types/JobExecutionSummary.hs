{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTJobsData.Types.JobExecutionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTJobsData.Types.JobExecutionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains a subset of information about a job execution.
--
--
--
-- /See:/ 'jobExecutionSummary' smart constructor.
data JobExecutionSummary = JobExecutionSummary'
  { _jStartedAt ::
      !(Maybe Integer),
    _jQueuedAt :: !(Maybe Integer),
    _jVersionNumber ::
      !(Maybe Integer),
    _jExecutionNumber ::
      !(Maybe Integer),
    _jLastUpdatedAt ::
      !(Maybe Integer),
    _jJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobExecutionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jStartedAt' - The time, in milliseconds since the epoch, when the job execution started.
--
-- * 'jQueuedAt' - The time, in milliseconds since the epoch, when the job execution was enqueued.
--
-- * 'jVersionNumber' - The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.
--
-- * 'jExecutionNumber' - A number that identifies a particular job execution on a particular device.
--
-- * 'jLastUpdatedAt' - The time, in milliseconds since the epoch, when the job execution was last updated.
--
-- * 'jJobId' - The unique identifier you assigned to this job when it was created.
jobExecutionSummary ::
  JobExecutionSummary
jobExecutionSummary =
  JobExecutionSummary'
    { _jStartedAt = Nothing,
      _jQueuedAt = Nothing,
      _jVersionNumber = Nothing,
      _jExecutionNumber = Nothing,
      _jLastUpdatedAt = Nothing,
      _jJobId = Nothing
    }

-- | The time, in milliseconds since the epoch, when the job execution started.
jStartedAt :: Lens' JobExecutionSummary (Maybe Integer)
jStartedAt = lens _jStartedAt (\s a -> s {_jStartedAt = a})

-- | The time, in milliseconds since the epoch, when the job execution was enqueued.
jQueuedAt :: Lens' JobExecutionSummary (Maybe Integer)
jQueuedAt = lens _jQueuedAt (\s a -> s {_jQueuedAt = a})

-- | The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.
jVersionNumber :: Lens' JobExecutionSummary (Maybe Integer)
jVersionNumber = lens _jVersionNumber (\s a -> s {_jVersionNumber = a})

-- | A number that identifies a particular job execution on a particular device.
jExecutionNumber :: Lens' JobExecutionSummary (Maybe Integer)
jExecutionNumber = lens _jExecutionNumber (\s a -> s {_jExecutionNumber = a})

-- | The time, in milliseconds since the epoch, when the job execution was last updated.
jLastUpdatedAt :: Lens' JobExecutionSummary (Maybe Integer)
jLastUpdatedAt = lens _jLastUpdatedAt (\s a -> s {_jLastUpdatedAt = a})

-- | The unique identifier you assigned to this job when it was created.
jJobId :: Lens' JobExecutionSummary (Maybe Text)
jJobId = lens _jJobId (\s a -> s {_jJobId = a})

instance FromJSON JobExecutionSummary where
  parseJSON =
    withObject
      "JobExecutionSummary"
      ( \x ->
          JobExecutionSummary'
            <$> (x .:? "startedAt")
            <*> (x .:? "queuedAt")
            <*> (x .:? "versionNumber")
            <*> (x .:? "executionNumber")
            <*> (x .:? "lastUpdatedAt")
            <*> (x .:? "jobId")
      )

instance Hashable JobExecutionSummary

instance NFData JobExecutionSummary

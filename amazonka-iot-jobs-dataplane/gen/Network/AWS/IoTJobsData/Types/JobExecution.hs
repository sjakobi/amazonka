{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTJobsData.Types.JobExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTJobsData.Types.JobExecution where

import Network.AWS.IoTJobsData.Types.JobExecutionStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains data about a job execution.
--
--
--
-- /See:/ 'jobExecution' smart constructor.
data JobExecution = JobExecution'
  { _jeStartedAt ::
      !(Maybe Integer),
    _jeStatus :: !(Maybe JobExecutionStatus),
    _jeStatusDetails :: !(Maybe (Map Text Text)),
    _jeThingName :: !(Maybe Text),
    _jeQueuedAt :: !(Maybe Integer),
    _jeVersionNumber :: !(Maybe Integer),
    _jeExecutionNumber :: !(Maybe Integer),
    _jeJobDocument :: !(Maybe Text),
    _jeApproximateSecondsBeforeTimedOut ::
      !(Maybe Integer),
    _jeLastUpdatedAt :: !(Maybe Integer),
    _jeJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeStartedAt' - The time, in milliseconds since the epoch, when the job execution was started.
--
-- * 'jeStatus' - The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
--
-- * 'jeStatusDetails' - A collection of name/value pairs that describe the status of the job execution.
--
-- * 'jeThingName' - The name of the thing that is executing the job.
--
-- * 'jeQueuedAt' - The time, in milliseconds since the epoch, when the job execution was enqueued.
--
-- * 'jeVersionNumber' - The version of the job execution. Job execution versions are incremented each time they are updated by a device.
--
-- * 'jeExecutionNumber' - A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.
--
-- * 'jeJobDocument' - The content of the job document.
--
-- * 'jeApproximateSecondsBeforeTimedOut' - The estimated number of seconds that remain before the job execution status will be changed to @TIMED_OUT@ .
--
-- * 'jeLastUpdatedAt' - The time, in milliseconds since the epoch, when the job execution was last updated.
--
-- * 'jeJobId' - The unique identifier you assigned to this job when it was created.
jobExecution ::
  JobExecution
jobExecution =
  JobExecution'
    { _jeStartedAt = Nothing,
      _jeStatus = Nothing,
      _jeStatusDetails = Nothing,
      _jeThingName = Nothing,
      _jeQueuedAt = Nothing,
      _jeVersionNumber = Nothing,
      _jeExecutionNumber = Nothing,
      _jeJobDocument = Nothing,
      _jeApproximateSecondsBeforeTimedOut = Nothing,
      _jeLastUpdatedAt = Nothing,
      _jeJobId = Nothing
    }

-- | The time, in milliseconds since the epoch, when the job execution was started.
jeStartedAt :: Lens' JobExecution (Maybe Integer)
jeStartedAt = lens _jeStartedAt (\s a -> s {_jeStartedAt = a})

-- | The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
jeStatus :: Lens' JobExecution (Maybe JobExecutionStatus)
jeStatus = lens _jeStatus (\s a -> s {_jeStatus = a})

-- | A collection of name/value pairs that describe the status of the job execution.
jeStatusDetails :: Lens' JobExecution (HashMap Text Text)
jeStatusDetails = lens _jeStatusDetails (\s a -> s {_jeStatusDetails = a}) . _Default . _Map

-- | The name of the thing that is executing the job.
jeThingName :: Lens' JobExecution (Maybe Text)
jeThingName = lens _jeThingName (\s a -> s {_jeThingName = a})

-- | The time, in milliseconds since the epoch, when the job execution was enqueued.
jeQueuedAt :: Lens' JobExecution (Maybe Integer)
jeQueuedAt = lens _jeQueuedAt (\s a -> s {_jeQueuedAt = a})

-- | The version of the job execution. Job execution versions are incremented each time they are updated by a device.
jeVersionNumber :: Lens' JobExecution (Maybe Integer)
jeVersionNumber = lens _jeVersionNumber (\s a -> s {_jeVersionNumber = a})

-- | A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.
jeExecutionNumber :: Lens' JobExecution (Maybe Integer)
jeExecutionNumber = lens _jeExecutionNumber (\s a -> s {_jeExecutionNumber = a})

-- | The content of the job document.
jeJobDocument :: Lens' JobExecution (Maybe Text)
jeJobDocument = lens _jeJobDocument (\s a -> s {_jeJobDocument = a})

-- | The estimated number of seconds that remain before the job execution status will be changed to @TIMED_OUT@ .
jeApproximateSecondsBeforeTimedOut :: Lens' JobExecution (Maybe Integer)
jeApproximateSecondsBeforeTimedOut = lens _jeApproximateSecondsBeforeTimedOut (\s a -> s {_jeApproximateSecondsBeforeTimedOut = a})

-- | The time, in milliseconds since the epoch, when the job execution was last updated.
jeLastUpdatedAt :: Lens' JobExecution (Maybe Integer)
jeLastUpdatedAt = lens _jeLastUpdatedAt (\s a -> s {_jeLastUpdatedAt = a})

-- | The unique identifier you assigned to this job when it was created.
jeJobId :: Lens' JobExecution (Maybe Text)
jeJobId = lens _jeJobId (\s a -> s {_jeJobId = a})

instance FromJSON JobExecution where
  parseJSON =
    withObject
      "JobExecution"
      ( \x ->
          JobExecution'
            <$> (x .:? "startedAt")
            <*> (x .:? "status")
            <*> (x .:? "statusDetails" .!= mempty)
            <*> (x .:? "thingName")
            <*> (x .:? "queuedAt")
            <*> (x .:? "versionNumber")
            <*> (x .:? "executionNumber")
            <*> (x .:? "jobDocument")
            <*> (x .:? "approximateSecondsBeforeTimedOut")
            <*> (x .:? "lastUpdatedAt")
            <*> (x .:? "jobId")
      )

instance Hashable JobExecution

instance NFData JobExecution

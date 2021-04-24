{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobExecution where

import Network.AWS.IoT.Types.JobExecutionStatus
import Network.AWS.IoT.Types.JobExecutionStatusDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The job execution object represents the execution of a job on a particular device.
--
--
--
-- /See:/ 'jobExecution' smart constructor.
data JobExecution = JobExecution'
  { _jeStartedAt ::
      !(Maybe POSIX),
    _jeStatus :: !(Maybe JobExecutionStatus),
    _jeThingARN :: !(Maybe Text),
    _jeStatusDetails ::
      !(Maybe JobExecutionStatusDetails),
    _jeQueuedAt :: !(Maybe POSIX),
    _jeForceCanceled :: !(Maybe Bool),
    _jeVersionNumber :: !(Maybe Integer),
    _jeExecutionNumber :: !(Maybe Integer),
    _jeApproximateSecondsBeforeTimedOut ::
      !(Maybe Integer),
    _jeLastUpdatedAt :: !(Maybe POSIX),
    _jeJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jeStartedAt' - The time, in seconds since the epoch, when the job execution started.
--
-- * 'jeStatus' - The status of the job execution (IN_PROGRESS, QUEUED, FAILED, SUCCEEDED, TIMED_OUT, CANCELED, or REJECTED).
--
-- * 'jeThingARN' - The ARN of the thing on which the job execution is running.
--
-- * 'jeStatusDetails' - A collection of name/value pairs that describe the status of the job execution.
--
-- * 'jeQueuedAt' - The time, in seconds since the epoch, when the job execution was queued.
--
-- * 'jeForceCanceled' - Will be @true@ if the job execution was canceled with the optional @force@ parameter set to @true@ .
--
-- * 'jeVersionNumber' - The version of the job execution. Job execution versions are incremented each time they are updated by a device.
--
-- * 'jeExecutionNumber' - A string (consisting of the digits "0" through "9") which identifies this particular job execution on this particular device. It can be used in commands which return or update job execution information.
--
-- * 'jeApproximateSecondsBeforeTimedOut' - The estimated number of seconds that remain before the job execution status will be changed to @TIMED_OUT@ . The timeout interval can be anywhere between 1 minute and 7 days (1 to 10080 minutes). The actual job execution timeout can occur up to 60 seconds later than the estimated duration. This value will not be included if the job execution has reached a terminal status.
--
-- * 'jeLastUpdatedAt' - The time, in seconds since the epoch, when the job execution was last updated.
--
-- * 'jeJobId' - The unique identifier you assigned to the job when it was created.
jobExecution ::
  JobExecution
jobExecution =
  JobExecution'
    { _jeStartedAt = Nothing,
      _jeStatus = Nothing,
      _jeThingARN = Nothing,
      _jeStatusDetails = Nothing,
      _jeQueuedAt = Nothing,
      _jeForceCanceled = Nothing,
      _jeVersionNumber = Nothing,
      _jeExecutionNumber = Nothing,
      _jeApproximateSecondsBeforeTimedOut = Nothing,
      _jeLastUpdatedAt = Nothing,
      _jeJobId = Nothing
    }

-- | The time, in seconds since the epoch, when the job execution started.
jeStartedAt :: Lens' JobExecution (Maybe UTCTime)
jeStartedAt = lens _jeStartedAt (\s a -> s {_jeStartedAt = a}) . mapping _Time

-- | The status of the job execution (IN_PROGRESS, QUEUED, FAILED, SUCCEEDED, TIMED_OUT, CANCELED, or REJECTED).
jeStatus :: Lens' JobExecution (Maybe JobExecutionStatus)
jeStatus = lens _jeStatus (\s a -> s {_jeStatus = a})

-- | The ARN of the thing on which the job execution is running.
jeThingARN :: Lens' JobExecution (Maybe Text)
jeThingARN = lens _jeThingARN (\s a -> s {_jeThingARN = a})

-- | A collection of name/value pairs that describe the status of the job execution.
jeStatusDetails :: Lens' JobExecution (Maybe JobExecutionStatusDetails)
jeStatusDetails = lens _jeStatusDetails (\s a -> s {_jeStatusDetails = a})

-- | The time, in seconds since the epoch, when the job execution was queued.
jeQueuedAt :: Lens' JobExecution (Maybe UTCTime)
jeQueuedAt = lens _jeQueuedAt (\s a -> s {_jeQueuedAt = a}) . mapping _Time

-- | Will be @true@ if the job execution was canceled with the optional @force@ parameter set to @true@ .
jeForceCanceled :: Lens' JobExecution (Maybe Bool)
jeForceCanceled = lens _jeForceCanceled (\s a -> s {_jeForceCanceled = a})

-- | The version of the job execution. Job execution versions are incremented each time they are updated by a device.
jeVersionNumber :: Lens' JobExecution (Maybe Integer)
jeVersionNumber = lens _jeVersionNumber (\s a -> s {_jeVersionNumber = a})

-- | A string (consisting of the digits "0" through "9") which identifies this particular job execution on this particular device. It can be used in commands which return or update job execution information.
jeExecutionNumber :: Lens' JobExecution (Maybe Integer)
jeExecutionNumber = lens _jeExecutionNumber (\s a -> s {_jeExecutionNumber = a})

-- | The estimated number of seconds that remain before the job execution status will be changed to @TIMED_OUT@ . The timeout interval can be anywhere between 1 minute and 7 days (1 to 10080 minutes). The actual job execution timeout can occur up to 60 seconds later than the estimated duration. This value will not be included if the job execution has reached a terminal status.
jeApproximateSecondsBeforeTimedOut :: Lens' JobExecution (Maybe Integer)
jeApproximateSecondsBeforeTimedOut = lens _jeApproximateSecondsBeforeTimedOut (\s a -> s {_jeApproximateSecondsBeforeTimedOut = a})

-- | The time, in seconds since the epoch, when the job execution was last updated.
jeLastUpdatedAt :: Lens' JobExecution (Maybe UTCTime)
jeLastUpdatedAt = lens _jeLastUpdatedAt (\s a -> s {_jeLastUpdatedAt = a}) . mapping _Time

-- | The unique identifier you assigned to the job when it was created.
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
            <*> (x .:? "thingArn")
            <*> (x .:? "statusDetails")
            <*> (x .:? "queuedAt")
            <*> (x .:? "forceCanceled")
            <*> (x .:? "versionNumber")
            <*> (x .:? "executionNumber")
            <*> (x .:? "approximateSecondsBeforeTimedOut")
            <*> (x .:? "lastUpdatedAt")
            <*> (x .:? "jobId")
      )

instance Hashable JobExecution

instance NFData JobExecution

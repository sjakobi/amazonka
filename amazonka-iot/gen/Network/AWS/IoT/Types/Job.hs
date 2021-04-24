{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.Job
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.Job where

import Network.AWS.IoT.Types.AbortConfig
import Network.AWS.IoT.Types.JobExecutionsRolloutConfig
import Network.AWS.IoT.Types.JobProcessDetails
import Network.AWS.IoT.Types.JobStatus
import Network.AWS.IoT.Types.PresignedURLConfig
import Network.AWS.IoT.Types.TargetSelection
import Network.AWS.IoT.Types.TimeoutConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The @Job@ object contains details about a job.
--
--
--
-- /See:/ 'job' smart constructor.
data Job = Job'
  { _jobJobExecutionsRolloutConfig ::
      !(Maybe JobExecutionsRolloutConfig),
    _jobStatus :: !(Maybe JobStatus),
    _jobTargetSelection :: !(Maybe TargetSelection),
    _jobTimeoutConfig :: !(Maybe TimeoutConfig),
    _jobReasonCode :: !(Maybe Text),
    _jobNamespaceId :: !(Maybe Text),
    _jobJobProcessDetails :: !(Maybe JobProcessDetails),
    _jobComment :: !(Maybe Text),
    _jobCompletedAt :: !(Maybe POSIX),
    _jobCreatedAt :: !(Maybe POSIX),
    _jobJobARN :: !(Maybe Text),
    _jobTargets :: !(Maybe (List1 Text)),
    _jobForceCanceled :: !(Maybe Bool),
    _jobPresignedURLConfig ::
      !(Maybe PresignedURLConfig),
    _jobDescription :: !(Maybe Text),
    _jobAbortConfig :: !(Maybe AbortConfig),
    _jobLastUpdatedAt :: !(Maybe POSIX),
    _jobJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobJobExecutionsRolloutConfig' - Allows you to create a staged rollout of a job.
--
-- * 'jobStatus' - The status of the job, one of @IN_PROGRESS@ , @CANCELED@ , @DELETION_IN_PROGRESS@ or @COMPLETED@ .
--
-- * 'jobTargetSelection' - Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a device when the thing representing the device is added to a target group, even after the job was completed by all things originally in the group.
--
-- * 'jobTimeoutConfig' - Specifies the amount of time each device has to finish its execution of the job. A timer is started when the job execution status is set to @IN_PROGRESS@ . If the job execution status is not set to another terminal state before the timer expires, it will be automatically set to @TIMED_OUT@ .
--
-- * 'jobReasonCode' - If the job was updated, provides the reason code for the update.
--
-- * 'jobNamespaceId' - The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
--
-- * 'jobJobProcessDetails' - Details about the job process.
--
-- * 'jobComment' - If the job was updated, describes the reason for the update.
--
-- * 'jobCompletedAt' - The time, in seconds since the epoch, when the job was completed.
--
-- * 'jobCreatedAt' - The time, in seconds since the epoch, when the job was created.
--
-- * 'jobJobARN' - An ARN identifying the job with format "arn:aws:iot:region:account:job/jobId".
--
-- * 'jobTargets' - A list of IoT things and thing groups to which the job should be sent.
--
-- * 'jobForceCanceled' - Will be @true@ if the job was canceled with the optional @force@ parameter set to @true@ .
--
-- * 'jobPresignedURLConfig' - Configuration for pre-signed S3 URLs.
--
-- * 'jobDescription' - A short text description of the job.
--
-- * 'jobAbortConfig' - Configuration for criteria to abort the job.
--
-- * 'jobLastUpdatedAt' - The time, in seconds since the epoch, when the job was last updated.
--
-- * 'jobJobId' - The unique identifier you assigned to this job when it was created.
job ::
  Job
job =
  Job'
    { _jobJobExecutionsRolloutConfig = Nothing,
      _jobStatus = Nothing,
      _jobTargetSelection = Nothing,
      _jobTimeoutConfig = Nothing,
      _jobReasonCode = Nothing,
      _jobNamespaceId = Nothing,
      _jobJobProcessDetails = Nothing,
      _jobComment = Nothing,
      _jobCompletedAt = Nothing,
      _jobCreatedAt = Nothing,
      _jobJobARN = Nothing,
      _jobTargets = Nothing,
      _jobForceCanceled = Nothing,
      _jobPresignedURLConfig = Nothing,
      _jobDescription = Nothing,
      _jobAbortConfig = Nothing,
      _jobLastUpdatedAt = Nothing,
      _jobJobId = Nothing
    }

-- | Allows you to create a staged rollout of a job.
jobJobExecutionsRolloutConfig :: Lens' Job (Maybe JobExecutionsRolloutConfig)
jobJobExecutionsRolloutConfig = lens _jobJobExecutionsRolloutConfig (\s a -> s {_jobJobExecutionsRolloutConfig = a})

-- | The status of the job, one of @IN_PROGRESS@ , @CANCELED@ , @DELETION_IN_PROGRESS@ or @COMPLETED@ .
jobStatus :: Lens' Job (Maybe JobStatus)
jobStatus = lens _jobStatus (\s a -> s {_jobStatus = a})

-- | Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a device when the thing representing the device is added to a target group, even after the job was completed by all things originally in the group.
jobTargetSelection :: Lens' Job (Maybe TargetSelection)
jobTargetSelection = lens _jobTargetSelection (\s a -> s {_jobTargetSelection = a})

-- | Specifies the amount of time each device has to finish its execution of the job. A timer is started when the job execution status is set to @IN_PROGRESS@ . If the job execution status is not set to another terminal state before the timer expires, it will be automatically set to @TIMED_OUT@ .
jobTimeoutConfig :: Lens' Job (Maybe TimeoutConfig)
jobTimeoutConfig = lens _jobTimeoutConfig (\s a -> s {_jobTimeoutConfig = a})

-- | If the job was updated, provides the reason code for the update.
jobReasonCode :: Lens' Job (Maybe Text)
jobReasonCode = lens _jobReasonCode (\s a -> s {_jobReasonCode = a})

-- | The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
jobNamespaceId :: Lens' Job (Maybe Text)
jobNamespaceId = lens _jobNamespaceId (\s a -> s {_jobNamespaceId = a})

-- | Details about the job process.
jobJobProcessDetails :: Lens' Job (Maybe JobProcessDetails)
jobJobProcessDetails = lens _jobJobProcessDetails (\s a -> s {_jobJobProcessDetails = a})

-- | If the job was updated, describes the reason for the update.
jobComment :: Lens' Job (Maybe Text)
jobComment = lens _jobComment (\s a -> s {_jobComment = a})

-- | The time, in seconds since the epoch, when the job was completed.
jobCompletedAt :: Lens' Job (Maybe UTCTime)
jobCompletedAt = lens _jobCompletedAt (\s a -> s {_jobCompletedAt = a}) . mapping _Time

-- | The time, in seconds since the epoch, when the job was created.
jobCreatedAt :: Lens' Job (Maybe UTCTime)
jobCreatedAt = lens _jobCreatedAt (\s a -> s {_jobCreatedAt = a}) . mapping _Time

-- | An ARN identifying the job with format "arn:aws:iot:region:account:job/jobId".
jobJobARN :: Lens' Job (Maybe Text)
jobJobARN = lens _jobJobARN (\s a -> s {_jobJobARN = a})

-- | A list of IoT things and thing groups to which the job should be sent.
jobTargets :: Lens' Job (Maybe (NonEmpty Text))
jobTargets = lens _jobTargets (\s a -> s {_jobTargets = a}) . mapping _List1

-- | Will be @true@ if the job was canceled with the optional @force@ parameter set to @true@ .
jobForceCanceled :: Lens' Job (Maybe Bool)
jobForceCanceled = lens _jobForceCanceled (\s a -> s {_jobForceCanceled = a})

-- | Configuration for pre-signed S3 URLs.
jobPresignedURLConfig :: Lens' Job (Maybe PresignedURLConfig)
jobPresignedURLConfig = lens _jobPresignedURLConfig (\s a -> s {_jobPresignedURLConfig = a})

-- | A short text description of the job.
jobDescription :: Lens' Job (Maybe Text)
jobDescription = lens _jobDescription (\s a -> s {_jobDescription = a})

-- | Configuration for criteria to abort the job.
jobAbortConfig :: Lens' Job (Maybe AbortConfig)
jobAbortConfig = lens _jobAbortConfig (\s a -> s {_jobAbortConfig = a})

-- | The time, in seconds since the epoch, when the job was last updated.
jobLastUpdatedAt :: Lens' Job (Maybe UTCTime)
jobLastUpdatedAt = lens _jobLastUpdatedAt (\s a -> s {_jobLastUpdatedAt = a}) . mapping _Time

-- | The unique identifier you assigned to this job when it was created.
jobJobId :: Lens' Job (Maybe Text)
jobJobId = lens _jobJobId (\s a -> s {_jobJobId = a})

instance FromJSON Job where
  parseJSON =
    withObject
      "Job"
      ( \x ->
          Job'
            <$> (x .:? "jobExecutionsRolloutConfig")
            <*> (x .:? "status")
            <*> (x .:? "targetSelection")
            <*> (x .:? "timeoutConfig")
            <*> (x .:? "reasonCode")
            <*> (x .:? "namespaceId")
            <*> (x .:? "jobProcessDetails")
            <*> (x .:? "comment")
            <*> (x .:? "completedAt")
            <*> (x .:? "createdAt")
            <*> (x .:? "jobArn")
            <*> (x .:? "targets")
            <*> (x .:? "forceCanceled")
            <*> (x .:? "presignedUrlConfig")
            <*> (x .:? "description")
            <*> (x .:? "abortConfig")
            <*> (x .:? "lastUpdatedAt")
            <*> (x .:? "jobId")
      )

instance Hashable Job

instance NFData Job

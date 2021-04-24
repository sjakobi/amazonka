{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Job
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Job where

import Network.AWS.DeviceFarm.Types.Counters
import Network.AWS.DeviceFarm.Types.Device
import Network.AWS.DeviceFarm.Types.DeviceMinutes
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ExecutionStatus
import Network.AWS.DeviceFarm.Types.TestType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a device.
--
--
--
-- /See:/ 'job' smart constructor.
data Job = Job'
  { _jobCounters :: !(Maybe Counters),
    _jobStatus :: !(Maybe ExecutionStatus),
    _jobResult :: !(Maybe ExecutionResult),
    _jobStarted :: !(Maybe POSIX),
    _jobMessage :: !(Maybe Text),
    _jobDevice :: !(Maybe Device),
    _jobVideoCapture :: !(Maybe Bool),
    _jobArn :: !(Maybe Text),
    _jobVideoEndpoint :: !(Maybe Text),
    _jobName :: !(Maybe Text),
    _jobInstanceARN :: !(Maybe Text),
    _jobStopped :: !(Maybe POSIX),
    _jobCreated :: !(Maybe POSIX),
    _jobType :: !(Maybe TestType),
    _jobDeviceMinutes :: !(Maybe DeviceMinutes)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobCounters' - The job's result counters.
--
-- * 'jobStatus' - The job's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
--
-- * 'jobResult' - The job's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
--
-- * 'jobStarted' - The job's start time.
--
-- * 'jobMessage' - A message about the job's result.
--
-- * 'jobDevice' - The device (phone or tablet).
--
-- * 'jobVideoCapture' - This value is set to true if video capture is enabled. Otherwise, it is set to false.
--
-- * 'jobArn' - The job's ARN.
--
-- * 'jobVideoEndpoint' - The endpoint for streaming device video.
--
-- * 'jobName' - The job's name.
--
-- * 'jobInstanceARN' - The ARN of the instance.
--
-- * 'jobStopped' - The job's stop time.
--
-- * 'jobCreated' - When the job was created.
--
-- * 'jobType' - The job's type. Allowed values include the following:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.     * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
--
-- * 'jobDeviceMinutes' - Represents the total (metered or unmetered) minutes used by the job.
job ::
  Job
job =
  Job'
    { _jobCounters = Nothing,
      _jobStatus = Nothing,
      _jobResult = Nothing,
      _jobStarted = Nothing,
      _jobMessage = Nothing,
      _jobDevice = Nothing,
      _jobVideoCapture = Nothing,
      _jobArn = Nothing,
      _jobVideoEndpoint = Nothing,
      _jobName = Nothing,
      _jobInstanceARN = Nothing,
      _jobStopped = Nothing,
      _jobCreated = Nothing,
      _jobType = Nothing,
      _jobDeviceMinutes = Nothing
    }

-- | The job's result counters.
jobCounters :: Lens' Job (Maybe Counters)
jobCounters = lens _jobCounters (\s a -> s {_jobCounters = a})

-- | The job's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
jobStatus :: Lens' Job (Maybe ExecutionStatus)
jobStatus = lens _jobStatus (\s a -> s {_jobStatus = a})

-- | The job's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
jobResult :: Lens' Job (Maybe ExecutionResult)
jobResult = lens _jobResult (\s a -> s {_jobResult = a})

-- | The job's start time.
jobStarted :: Lens' Job (Maybe UTCTime)
jobStarted = lens _jobStarted (\s a -> s {_jobStarted = a}) . mapping _Time

-- | A message about the job's result.
jobMessage :: Lens' Job (Maybe Text)
jobMessage = lens _jobMessage (\s a -> s {_jobMessage = a})

-- | The device (phone or tablet).
jobDevice :: Lens' Job (Maybe Device)
jobDevice = lens _jobDevice (\s a -> s {_jobDevice = a})

-- | This value is set to true if video capture is enabled. Otherwise, it is set to false.
jobVideoCapture :: Lens' Job (Maybe Bool)
jobVideoCapture = lens _jobVideoCapture (\s a -> s {_jobVideoCapture = a})

-- | The job's ARN.
jobArn :: Lens' Job (Maybe Text)
jobArn = lens _jobArn (\s a -> s {_jobArn = a})

-- | The endpoint for streaming device video.
jobVideoEndpoint :: Lens' Job (Maybe Text)
jobVideoEndpoint = lens _jobVideoEndpoint (\s a -> s {_jobVideoEndpoint = a})

-- | The job's name.
jobName :: Lens' Job (Maybe Text)
jobName = lens _jobName (\s a -> s {_jobName = a})

-- | The ARN of the instance.
jobInstanceARN :: Lens' Job (Maybe Text)
jobInstanceARN = lens _jobInstanceARN (\s a -> s {_jobInstanceARN = a})

-- | The job's stop time.
jobStopped :: Lens' Job (Maybe UTCTime)
jobStopped = lens _jobStopped (\s a -> s {_jobStopped = a}) . mapping _Time

-- | When the job was created.
jobCreated :: Lens' Job (Maybe UTCTime)
jobCreated = lens _jobCreated (\s a -> s {_jobCreated = a}) . mapping _Time

-- | The job's type. Allowed values include the following:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.     * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
jobType :: Lens' Job (Maybe TestType)
jobType = lens _jobType (\s a -> s {_jobType = a})

-- | Represents the total (metered or unmetered) minutes used by the job.
jobDeviceMinutes :: Lens' Job (Maybe DeviceMinutes)
jobDeviceMinutes = lens _jobDeviceMinutes (\s a -> s {_jobDeviceMinutes = a})

instance FromJSON Job where
  parseJSON =
    withObject
      "Job"
      ( \x ->
          Job'
            <$> (x .:? "counters")
            <*> (x .:? "status")
            <*> (x .:? "result")
            <*> (x .:? "started")
            <*> (x .:? "message")
            <*> (x .:? "device")
            <*> (x .:? "videoCapture")
            <*> (x .:? "arn")
            <*> (x .:? "videoEndpoint")
            <*> (x .:? "name")
            <*> (x .:? "instanceArn")
            <*> (x .:? "stopped")
            <*> (x .:? "created")
            <*> (x .:? "type")
            <*> (x .:? "deviceMinutes")
      )

instance Hashable Job

instance NFData Job

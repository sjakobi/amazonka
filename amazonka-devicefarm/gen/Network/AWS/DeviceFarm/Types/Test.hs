{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Test
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Test where

import Network.AWS.DeviceFarm.Types.Counters
import Network.AWS.DeviceFarm.Types.DeviceMinutes
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ExecutionStatus
import Network.AWS.DeviceFarm.Types.TestType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a condition that is evaluated.
--
--
--
-- /See:/ 'test' smart constructor.
data Test = Test'
  { _tCounters :: !(Maybe Counters),
    _tStatus :: !(Maybe ExecutionStatus),
    _tResult :: !(Maybe ExecutionResult),
    _tStarted :: !(Maybe POSIX),
    _tMessage :: !(Maybe Text),
    _tArn :: !(Maybe Text),
    _tName :: !(Maybe Text),
    _tStopped :: !(Maybe POSIX),
    _tCreated :: !(Maybe POSIX),
    _tType :: !(Maybe TestType),
    _tDeviceMinutes :: !(Maybe DeviceMinutes)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Test' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCounters' - The test's result counters.
--
-- * 'tStatus' - The test's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
--
-- * 'tResult' - The test's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
--
-- * 'tStarted' - The test's start time.
--
-- * 'tMessage' - A message about the test's result.
--
-- * 'tArn' - The test's ARN.
--
-- * 'tName' - The test's name.
--
-- * 'tStopped' - The test's stop time.
--
-- * 'tCreated' - When the test was created.
--
-- * 'tType' - The test's type. Must be one of the following values:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER     * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
--
-- * 'tDeviceMinutes' - Represents the total (metered or unmetered) minutes used by the test.
test ::
  Test
test =
  Test'
    { _tCounters = Nothing,
      _tStatus = Nothing,
      _tResult = Nothing,
      _tStarted = Nothing,
      _tMessage = Nothing,
      _tArn = Nothing,
      _tName = Nothing,
      _tStopped = Nothing,
      _tCreated = Nothing,
      _tType = Nothing,
      _tDeviceMinutes = Nothing
    }

-- | The test's result counters.
tCounters :: Lens' Test (Maybe Counters)
tCounters = lens _tCounters (\s a -> s {_tCounters = a})

-- | The test's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
tStatus :: Lens' Test (Maybe ExecutionStatus)
tStatus = lens _tStatus (\s a -> s {_tStatus = a})

-- | The test's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
tResult :: Lens' Test (Maybe ExecutionResult)
tResult = lens _tResult (\s a -> s {_tResult = a})

-- | The test's start time.
tStarted :: Lens' Test (Maybe UTCTime)
tStarted = lens _tStarted (\s a -> s {_tStarted = a}) . mapping _Time

-- | A message about the test's result.
tMessage :: Lens' Test (Maybe Text)
tMessage = lens _tMessage (\s a -> s {_tMessage = a})

-- | The test's ARN.
tArn :: Lens' Test (Maybe Text)
tArn = lens _tArn (\s a -> s {_tArn = a})

-- | The test's name.
tName :: Lens' Test (Maybe Text)
tName = lens _tName (\s a -> s {_tName = a})

-- | The test's stop time.
tStopped :: Lens' Test (Maybe UTCTime)
tStopped = lens _tStopped (\s a -> s {_tStopped = a}) . mapping _Time

-- | When the test was created.
tCreated :: Lens' Test (Maybe UTCTime)
tCreated = lens _tCreated (\s a -> s {_tCreated = a}) . mapping _Time

-- | The test's type. Must be one of the following values:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER     * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
tType :: Lens' Test (Maybe TestType)
tType = lens _tType (\s a -> s {_tType = a})

-- | Represents the total (metered or unmetered) minutes used by the test.
tDeviceMinutes :: Lens' Test (Maybe DeviceMinutes)
tDeviceMinutes = lens _tDeviceMinutes (\s a -> s {_tDeviceMinutes = a})

instance FromJSON Test where
  parseJSON =
    withObject
      "Test"
      ( \x ->
          Test'
            <$> (x .:? "counters")
            <*> (x .:? "status")
            <*> (x .:? "result")
            <*> (x .:? "started")
            <*> (x .:? "message")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "stopped")
            <*> (x .:? "created")
            <*> (x .:? "type")
            <*> (x .:? "deviceMinutes")
      )

instance Hashable Test

instance NFData Test

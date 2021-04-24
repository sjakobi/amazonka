{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Suite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Suite where

import Network.AWS.DeviceFarm.Types.Counters
import Network.AWS.DeviceFarm.Types.DeviceMinutes
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ExecutionStatus
import Network.AWS.DeviceFarm.Types.TestType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a collection of one or more tests.
--
--
--
-- /See:/ 'suite' smart constructor.
data Suite = Suite'
  { _suiCounters ::
      !(Maybe Counters),
    _suiStatus :: !(Maybe ExecutionStatus),
    _suiResult :: !(Maybe ExecutionResult),
    _suiStarted :: !(Maybe POSIX),
    _suiMessage :: !(Maybe Text),
    _suiArn :: !(Maybe Text),
    _suiName :: !(Maybe Text),
    _suiStopped :: !(Maybe POSIX),
    _suiCreated :: !(Maybe POSIX),
    _suiType :: !(Maybe TestType),
    _suiDeviceMinutes :: !(Maybe DeviceMinutes)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Suite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suiCounters' - The suite's result counters.
--
-- * 'suiStatus' - The suite's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
--
-- * 'suiResult' - The suite's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
--
-- * 'suiStarted' - The suite's start time.
--
-- * 'suiMessage' - A message about the suite's result.
--
-- * 'suiArn' - The suite's ARN.
--
-- * 'suiName' - The suite's name.
--
-- * 'suiStopped' - The suite's stop time.
--
-- * 'suiCreated' - When the suite was created.
--
-- * 'suiType' - The suite's type. Must be one of the following values:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER      * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
--
-- * 'suiDeviceMinutes' - Represents the total (metered or unmetered) minutes used by the test suite.
suite ::
  Suite
suite =
  Suite'
    { _suiCounters = Nothing,
      _suiStatus = Nothing,
      _suiResult = Nothing,
      _suiStarted = Nothing,
      _suiMessage = Nothing,
      _suiArn = Nothing,
      _suiName = Nothing,
      _suiStopped = Nothing,
      _suiCreated = Nothing,
      _suiType = Nothing,
      _suiDeviceMinutes = Nothing
    }

-- | The suite's result counters.
suiCounters :: Lens' Suite (Maybe Counters)
suiCounters = lens _suiCounters (\s a -> s {_suiCounters = a})

-- | The suite's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
suiStatus :: Lens' Suite (Maybe ExecutionStatus)
suiStatus = lens _suiStatus (\s a -> s {_suiStatus = a})

-- | The suite's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
suiResult :: Lens' Suite (Maybe ExecutionResult)
suiResult = lens _suiResult (\s a -> s {_suiResult = a})

-- | The suite's start time.
suiStarted :: Lens' Suite (Maybe UTCTime)
suiStarted = lens _suiStarted (\s a -> s {_suiStarted = a}) . mapping _Time

-- | A message about the suite's result.
suiMessage :: Lens' Suite (Maybe Text)
suiMessage = lens _suiMessage (\s a -> s {_suiMessage = a})

-- | The suite's ARN.
suiArn :: Lens' Suite (Maybe Text)
suiArn = lens _suiArn (\s a -> s {_suiArn = a})

-- | The suite's name.
suiName :: Lens' Suite (Maybe Text)
suiName = lens _suiName (\s a -> s {_suiName = a})

-- | The suite's stop time.
suiStopped :: Lens' Suite (Maybe UTCTime)
suiStopped = lens _suiStopped (\s a -> s {_suiStopped = a}) . mapping _Time

-- | When the suite was created.
suiCreated :: Lens' Suite (Maybe UTCTime)
suiCreated = lens _suiCreated (\s a -> s {_suiCreated = a}) . mapping _Time

-- | The suite's type. Must be one of the following values:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER      * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
suiType :: Lens' Suite (Maybe TestType)
suiType = lens _suiType (\s a -> s {_suiType = a})

-- | Represents the total (metered or unmetered) minutes used by the test suite.
suiDeviceMinutes :: Lens' Suite (Maybe DeviceMinutes)
suiDeviceMinutes = lens _suiDeviceMinutes (\s a -> s {_suiDeviceMinutes = a})

instance FromJSON Suite where
  parseJSON =
    withObject
      "Suite"
      ( \x ->
          Suite'
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

instance Hashable Suite

instance NFData Suite

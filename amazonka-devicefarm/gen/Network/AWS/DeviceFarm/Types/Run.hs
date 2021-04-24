{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Run
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Run where

import Network.AWS.DeviceFarm.Types.BillingMethod
import Network.AWS.DeviceFarm.Types.Counters
import Network.AWS.DeviceFarm.Types.CustomerArtifactPaths
import Network.AWS.DeviceFarm.Types.DeviceMinutes
import Network.AWS.DeviceFarm.Types.DevicePlatform
import Network.AWS.DeviceFarm.Types.DeviceSelectionResult
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ExecutionResultCode
import Network.AWS.DeviceFarm.Types.ExecutionStatus
import Network.AWS.DeviceFarm.Types.Location
import Network.AWS.DeviceFarm.Types.NetworkProfile
import Network.AWS.DeviceFarm.Types.Radios
import Network.AWS.DeviceFarm.Types.TestType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a test run on a set of devices with a given app package, test parameters, and so on.
--
--
--
-- /See:/ 'run' smart constructor.
data Run = Run'
  { _runSeed :: !(Maybe Int),
    _runEventCount :: !(Maybe Int),
    _runCounters :: !(Maybe Counters),
    _runPlatform :: !(Maybe DevicePlatform),
    _runStatus :: !(Maybe ExecutionStatus),
    _runResult :: !(Maybe ExecutionResult),
    _runDevicePoolARN :: !(Maybe Text),
    _runDeviceSelectionResult ::
      !(Maybe DeviceSelectionResult),
    _runStarted :: !(Maybe POSIX),
    _runTestSpecARN :: !(Maybe Text),
    _runMessage :: !(Maybe Text),
    _runLocale :: !(Maybe Text),
    _runArn :: !(Maybe Text),
    _runNetworkProfile :: !(Maybe NetworkProfile),
    _runAppUpload :: !(Maybe Text),
    _runRadios :: !(Maybe Radios),
    _runName :: !(Maybe Text),
    _runBillingMethod :: !(Maybe BillingMethod),
    _runCustomerArtifactPaths ::
      !(Maybe CustomerArtifactPaths),
    _runResultCode :: !(Maybe ExecutionResultCode),
    _runSkipAppResign :: !(Maybe Bool),
    _runCompletedJobs :: !(Maybe Int),
    _runStopped :: !(Maybe POSIX),
    _runJobTimeoutMinutes :: !(Maybe Int),
    _runTotalJobs :: !(Maybe Int),
    _runWebURL :: !(Maybe Text),
    _runCreated :: !(Maybe POSIX),
    _runType :: !(Maybe TestType),
    _runDeviceMinutes :: !(Maybe DeviceMinutes),
    _runLocation :: !(Maybe Location),
    _runParsingResultURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Run' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'runSeed' - For fuzz tests, this is a seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.
--
-- * 'runEventCount' - For fuzz tests, this is the number of events, between 1 and 10000, that the UI fuzz test should perform.
--
-- * 'runCounters' - The run's result counters.
--
-- * 'runPlatform' - The run's platform. Allowed values include:     * ANDROID     * IOS
--
-- * 'runStatus' - The run's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
--
-- * 'runResult' - The run's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
--
-- * 'runDevicePoolARN' - The ARN of the device pool for the run.
--
-- * 'runDeviceSelectionResult' - The results of a device filter used to select the devices for a test run.
--
-- * 'runStarted' - The run's start time.
--
-- * 'runTestSpecARN' - The ARN of the YAML-formatted test specification for the run.
--
-- * 'runMessage' - A message about the run's result.
--
-- * 'runLocale' - Information about the locale that is used for the run.
--
-- * 'runArn' - The run's ARN.
--
-- * 'runNetworkProfile' - The network profile being used for a test run.
--
-- * 'runAppUpload' - An app to upload or that has been uploaded.
--
-- * 'runRadios' - Information about the radio states for the run.
--
-- * 'runName' - The run's name.
--
-- * 'runBillingMethod' - Specifies the billing method for a test run: @metered@ or @unmetered@ . If the parameter is not specified, the default value is @metered@ .
--
-- * 'runCustomerArtifactPaths' - Output @CustomerArtifactPaths@ object for the test run.
--
-- * 'runResultCode' - Supporting field for the result field. Set only if @result@ is @SKIPPED@ . @PARSING_FAILED@ if the result is skipped because of test package parsing failure.
--
-- * 'runSkipAppResign' - When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information about how Device Farm re-signs your apps, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the /AWS Device Farm FAQs/ .
--
-- * 'runCompletedJobs' - The total number of completed jobs.
--
-- * 'runStopped' - The run's stop time.
--
-- * 'runJobTimeoutMinutes' - The number of minutes the job executes before it times out.
--
-- * 'runTotalJobs' - The total number of jobs for the run.
--
-- * 'runWebURL' - The Device Farm console URL for the recording of the run.
--
-- * 'runCreated' - When the run was created.
--
-- * 'runType' - The run's type. Must be one of the following values:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER     * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
--
-- * 'runDeviceMinutes' - Represents the total (metered or unmetered) minutes used by the test run.
--
-- * 'runLocation' - Information about the location that is used for the run.
--
-- * 'runParsingResultURL' - Read-only URL for an object in an S3 bucket where you can get the parsing results of the test package. If the test package doesn't parse, the reason why it doesn't parse appears in the file that this URL points to.
run ::
  Run
run =
  Run'
    { _runSeed = Nothing,
      _runEventCount = Nothing,
      _runCounters = Nothing,
      _runPlatform = Nothing,
      _runStatus = Nothing,
      _runResult = Nothing,
      _runDevicePoolARN = Nothing,
      _runDeviceSelectionResult = Nothing,
      _runStarted = Nothing,
      _runTestSpecARN = Nothing,
      _runMessage = Nothing,
      _runLocale = Nothing,
      _runArn = Nothing,
      _runNetworkProfile = Nothing,
      _runAppUpload = Nothing,
      _runRadios = Nothing,
      _runName = Nothing,
      _runBillingMethod = Nothing,
      _runCustomerArtifactPaths = Nothing,
      _runResultCode = Nothing,
      _runSkipAppResign = Nothing,
      _runCompletedJobs = Nothing,
      _runStopped = Nothing,
      _runJobTimeoutMinutes = Nothing,
      _runTotalJobs = Nothing,
      _runWebURL = Nothing,
      _runCreated = Nothing,
      _runType = Nothing,
      _runDeviceMinutes = Nothing,
      _runLocation = Nothing,
      _runParsingResultURL = Nothing
    }

-- | For fuzz tests, this is a seed to use for randomizing the UI fuzz test. Using the same seed value between tests ensures identical event sequences.
runSeed :: Lens' Run (Maybe Int)
runSeed = lens _runSeed (\s a -> s {_runSeed = a})

-- | For fuzz tests, this is the number of events, between 1 and 10000, that the UI fuzz test should perform.
runEventCount :: Lens' Run (Maybe Int)
runEventCount = lens _runEventCount (\s a -> s {_runEventCount = a})

-- | The run's result counters.
runCounters :: Lens' Run (Maybe Counters)
runCounters = lens _runCounters (\s a -> s {_runCounters = a})

-- | The run's platform. Allowed values include:     * ANDROID     * IOS
runPlatform :: Lens' Run (Maybe DevicePlatform)
runPlatform = lens _runPlatform (\s a -> s {_runPlatform = a})

-- | The run's status. Allowed values include:     * PENDING     * PENDING_CONCURRENCY     * PENDING_DEVICE     * PROCESSING     * SCHEDULING     * PREPARING     * RUNNING     * COMPLETED     * STOPPING
runStatus :: Lens' Run (Maybe ExecutionStatus)
runStatus = lens _runStatus (\s a -> s {_runStatus = a})

-- | The run's result. Allowed values include:     * PENDING     * PASSED     * WARNED     * FAILED     * SKIPPED     * ERRORED     * STOPPED
runResult :: Lens' Run (Maybe ExecutionResult)
runResult = lens _runResult (\s a -> s {_runResult = a})

-- | The ARN of the device pool for the run.
runDevicePoolARN :: Lens' Run (Maybe Text)
runDevicePoolARN = lens _runDevicePoolARN (\s a -> s {_runDevicePoolARN = a})

-- | The results of a device filter used to select the devices for a test run.
runDeviceSelectionResult :: Lens' Run (Maybe DeviceSelectionResult)
runDeviceSelectionResult = lens _runDeviceSelectionResult (\s a -> s {_runDeviceSelectionResult = a})

-- | The run's start time.
runStarted :: Lens' Run (Maybe UTCTime)
runStarted = lens _runStarted (\s a -> s {_runStarted = a}) . mapping _Time

-- | The ARN of the YAML-formatted test specification for the run.
runTestSpecARN :: Lens' Run (Maybe Text)
runTestSpecARN = lens _runTestSpecARN (\s a -> s {_runTestSpecARN = a})

-- | A message about the run's result.
runMessage :: Lens' Run (Maybe Text)
runMessage = lens _runMessage (\s a -> s {_runMessage = a})

-- | Information about the locale that is used for the run.
runLocale :: Lens' Run (Maybe Text)
runLocale = lens _runLocale (\s a -> s {_runLocale = a})

-- | The run's ARN.
runArn :: Lens' Run (Maybe Text)
runArn = lens _runArn (\s a -> s {_runArn = a})

-- | The network profile being used for a test run.
runNetworkProfile :: Lens' Run (Maybe NetworkProfile)
runNetworkProfile = lens _runNetworkProfile (\s a -> s {_runNetworkProfile = a})

-- | An app to upload or that has been uploaded.
runAppUpload :: Lens' Run (Maybe Text)
runAppUpload = lens _runAppUpload (\s a -> s {_runAppUpload = a})

-- | Information about the radio states for the run.
runRadios :: Lens' Run (Maybe Radios)
runRadios = lens _runRadios (\s a -> s {_runRadios = a})

-- | The run's name.
runName :: Lens' Run (Maybe Text)
runName = lens _runName (\s a -> s {_runName = a})

-- | Specifies the billing method for a test run: @metered@ or @unmetered@ . If the parameter is not specified, the default value is @metered@ .
runBillingMethod :: Lens' Run (Maybe BillingMethod)
runBillingMethod = lens _runBillingMethod (\s a -> s {_runBillingMethod = a})

-- | Output @CustomerArtifactPaths@ object for the test run.
runCustomerArtifactPaths :: Lens' Run (Maybe CustomerArtifactPaths)
runCustomerArtifactPaths = lens _runCustomerArtifactPaths (\s a -> s {_runCustomerArtifactPaths = a})

-- | Supporting field for the result field. Set only if @result@ is @SKIPPED@ . @PARSING_FAILED@ if the result is skipped because of test package parsing failure.
runResultCode :: Lens' Run (Maybe ExecutionResultCode)
runResultCode = lens _runResultCode (\s a -> s {_runResultCode = a})

-- | When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information about how Device Farm re-signs your apps, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the /AWS Device Farm FAQs/ .
runSkipAppResign :: Lens' Run (Maybe Bool)
runSkipAppResign = lens _runSkipAppResign (\s a -> s {_runSkipAppResign = a})

-- | The total number of completed jobs.
runCompletedJobs :: Lens' Run (Maybe Int)
runCompletedJobs = lens _runCompletedJobs (\s a -> s {_runCompletedJobs = a})

-- | The run's stop time.
runStopped :: Lens' Run (Maybe UTCTime)
runStopped = lens _runStopped (\s a -> s {_runStopped = a}) . mapping _Time

-- | The number of minutes the job executes before it times out.
runJobTimeoutMinutes :: Lens' Run (Maybe Int)
runJobTimeoutMinutes = lens _runJobTimeoutMinutes (\s a -> s {_runJobTimeoutMinutes = a})

-- | The total number of jobs for the run.
runTotalJobs :: Lens' Run (Maybe Int)
runTotalJobs = lens _runTotalJobs (\s a -> s {_runTotalJobs = a})

-- | The Device Farm console URL for the recording of the run.
runWebURL :: Lens' Run (Maybe Text)
runWebURL = lens _runWebURL (\s a -> s {_runWebURL = a})

-- | When the run was created.
runCreated :: Lens' Run (Maybe UTCTime)
runCreated = lens _runCreated (\s a -> s {_runCreated = a}) . mapping _Time

-- | The run's type. Must be one of the following values:     * BUILTIN_FUZZ     * BUILTIN_EXPLORER     * APPIUM_JAVA_JUNIT     * APPIUM_JAVA_TESTNG     * APPIUM_PYTHON     * APPIUM_NODE     * APPIUM_RUBY     * APPIUM_WEB_JAVA_JUNIT     * APPIUM_WEB_JAVA_TESTNG     * APPIUM_WEB_PYTHON     * APPIUM_WEB_NODE     * APPIUM_WEB_RUBY     * CALABASH     * INSTRUMENTATION     * UIAUTOMATION     * UIAUTOMATOR     * XCTEST     * XCTEST_UI
runType :: Lens' Run (Maybe TestType)
runType = lens _runType (\s a -> s {_runType = a})

-- | Represents the total (metered or unmetered) minutes used by the test run.
runDeviceMinutes :: Lens' Run (Maybe DeviceMinutes)
runDeviceMinutes = lens _runDeviceMinutes (\s a -> s {_runDeviceMinutes = a})

-- | Information about the location that is used for the run.
runLocation :: Lens' Run (Maybe Location)
runLocation = lens _runLocation (\s a -> s {_runLocation = a})

-- | Read-only URL for an object in an S3 bucket where you can get the parsing results of the test package. If the test package doesn't parse, the reason why it doesn't parse appears in the file that this URL points to.
runParsingResultURL :: Lens' Run (Maybe Text)
runParsingResultURL = lens _runParsingResultURL (\s a -> s {_runParsingResultURL = a})

instance FromJSON Run where
  parseJSON =
    withObject
      "Run"
      ( \x ->
          Run'
            <$> (x .:? "seed")
            <*> (x .:? "eventCount")
            <*> (x .:? "counters")
            <*> (x .:? "platform")
            <*> (x .:? "status")
            <*> (x .:? "result")
            <*> (x .:? "devicePoolArn")
            <*> (x .:? "deviceSelectionResult")
            <*> (x .:? "started")
            <*> (x .:? "testSpecArn")
            <*> (x .:? "message")
            <*> (x .:? "locale")
            <*> (x .:? "arn")
            <*> (x .:? "networkProfile")
            <*> (x .:? "appUpload")
            <*> (x .:? "radios")
            <*> (x .:? "name")
            <*> (x .:? "billingMethod")
            <*> (x .:? "customerArtifactPaths")
            <*> (x .:? "resultCode")
            <*> (x .:? "skipAppResign")
            <*> (x .:? "completedJobs")
            <*> (x .:? "stopped")
            <*> (x .:? "jobTimeoutMinutes")
            <*> (x .:? "totalJobs")
            <*> (x .:? "webUrl")
            <*> (x .:? "created")
            <*> (x .:? "type")
            <*> (x .:? "deviceMinutes")
            <*> (x .:? "location")
            <*> (x .:? "parsingResultUrl")
      )

instance Hashable Run

instance NFData Run

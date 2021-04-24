{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.GetDevicePoolCompatibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about compatibility with a device pool.
module Network.AWS.DeviceFarm.GetDevicePoolCompatibility
  ( -- * Creating a Request
    getDevicePoolCompatibility,
    GetDevicePoolCompatibility,

    -- * Request Lenses
    gdpcTestType,
    gdpcConfiguration,
    gdpcAppARN,
    gdpcTest,
    gdpcDevicePoolARN,

    -- * Destructuring the Response
    getDevicePoolCompatibilityResponse,
    GetDevicePoolCompatibilityResponse,

    -- * Response Lenses
    gdpcrrsIncompatibleDevices,
    gdpcrrsCompatibleDevices,
    gdpcrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the get device pool compatibility operation.
--
--
--
-- /See:/ 'getDevicePoolCompatibility' smart constructor.
data GetDevicePoolCompatibility = GetDevicePoolCompatibility'
  { _gdpcTestType ::
      !(Maybe TestType),
    _gdpcConfiguration ::
      !( Maybe
           ScheduleRunConfiguration
       ),
    _gdpcAppARN ::
      !(Maybe Text),
    _gdpcTest ::
      !( Maybe
           ScheduleRunTest
       ),
    _gdpcDevicePoolARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDevicePoolCompatibility' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpcTestType' - The test type for the specified device pool. Allowed values include the following:     * BUILTIN_FUZZ.     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.     * APPIUM_JAVA_JUNIT.     * APPIUM_JAVA_TESTNG.     * APPIUM_PYTHON.     * APPIUM_NODE.     * APPIUM_RUBY.     * APPIUM_WEB_JAVA_JUNIT.     * APPIUM_WEB_JAVA_TESTNG.     * APPIUM_WEB_PYTHON.     * APPIUM_WEB_NODE.     * APPIUM_WEB_RUBY.     * CALABASH.     * INSTRUMENTATION.     * UIAUTOMATION.     * UIAUTOMATOR.     * XCTEST.     * XCTEST_UI.
--
-- * 'gdpcConfiguration' - An object that contains information about the settings for a run.
--
-- * 'gdpcAppARN' - The ARN of the app that is associated with the specified device pool.
--
-- * 'gdpcTest' - Information about the uploaded test to be run against the device pool.
--
-- * 'gdpcDevicePoolARN' - The device pool's ARN.
getDevicePoolCompatibility ::
  -- | 'gdpcDevicePoolARN'
  Text ->
  GetDevicePoolCompatibility
getDevicePoolCompatibility pDevicePoolARN_ =
  GetDevicePoolCompatibility'
    { _gdpcTestType =
        Nothing,
      _gdpcConfiguration = Nothing,
      _gdpcAppARN = Nothing,
      _gdpcTest = Nothing,
      _gdpcDevicePoolARN = pDevicePoolARN_
    }

-- | The test type for the specified device pool. Allowed values include the following:     * BUILTIN_FUZZ.     * BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with it and capturing screenshots at the same time.     * APPIUM_JAVA_JUNIT.     * APPIUM_JAVA_TESTNG.     * APPIUM_PYTHON.     * APPIUM_NODE.     * APPIUM_RUBY.     * APPIUM_WEB_JAVA_JUNIT.     * APPIUM_WEB_JAVA_TESTNG.     * APPIUM_WEB_PYTHON.     * APPIUM_WEB_NODE.     * APPIUM_WEB_RUBY.     * CALABASH.     * INSTRUMENTATION.     * UIAUTOMATION.     * UIAUTOMATOR.     * XCTEST.     * XCTEST_UI.
gdpcTestType :: Lens' GetDevicePoolCompatibility (Maybe TestType)
gdpcTestType = lens _gdpcTestType (\s a -> s {_gdpcTestType = a})

-- | An object that contains information about the settings for a run.
gdpcConfiguration :: Lens' GetDevicePoolCompatibility (Maybe ScheduleRunConfiguration)
gdpcConfiguration = lens _gdpcConfiguration (\s a -> s {_gdpcConfiguration = a})

-- | The ARN of the app that is associated with the specified device pool.
gdpcAppARN :: Lens' GetDevicePoolCompatibility (Maybe Text)
gdpcAppARN = lens _gdpcAppARN (\s a -> s {_gdpcAppARN = a})

-- | Information about the uploaded test to be run against the device pool.
gdpcTest :: Lens' GetDevicePoolCompatibility (Maybe ScheduleRunTest)
gdpcTest = lens _gdpcTest (\s a -> s {_gdpcTest = a})

-- | The device pool's ARN.
gdpcDevicePoolARN :: Lens' GetDevicePoolCompatibility Text
gdpcDevicePoolARN = lens _gdpcDevicePoolARN (\s a -> s {_gdpcDevicePoolARN = a})

instance AWSRequest GetDevicePoolCompatibility where
  type
    Rs GetDevicePoolCompatibility =
      GetDevicePoolCompatibilityResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetDevicePoolCompatibilityResponse'
            <$> (x .?> "incompatibleDevices" .!@ mempty)
            <*> (x .?> "compatibleDevices" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDevicePoolCompatibility

instance NFData GetDevicePoolCompatibility

instance ToHeaders GetDevicePoolCompatibility where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.GetDevicePoolCompatibility" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDevicePoolCompatibility where
  toJSON GetDevicePoolCompatibility' {..} =
    object
      ( catMaybes
          [ ("testType" .=) <$> _gdpcTestType,
            ("configuration" .=) <$> _gdpcConfiguration,
            ("appArn" .=) <$> _gdpcAppARN,
            ("test" .=) <$> _gdpcTest,
            Just ("devicePoolArn" .= _gdpcDevicePoolARN)
          ]
      )

instance ToPath GetDevicePoolCompatibility where
  toPath = const "/"

instance ToQuery GetDevicePoolCompatibility where
  toQuery = const mempty

-- | Represents the result of describe device pool compatibility request.
--
--
--
-- /See:/ 'getDevicePoolCompatibilityResponse' smart constructor.
data GetDevicePoolCompatibilityResponse = GetDevicePoolCompatibilityResponse'
  { _gdpcrrsIncompatibleDevices ::
      !( Maybe
           [DevicePoolCompatibilityResult]
       ),
    _gdpcrrsCompatibleDevices ::
      !( Maybe
           [DevicePoolCompatibilityResult]
       ),
    _gdpcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDevicePoolCompatibilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpcrrsIncompatibleDevices' - Information about incompatible devices.
--
-- * 'gdpcrrsCompatibleDevices' - Information about compatible devices.
--
-- * 'gdpcrrsResponseStatus' - -- | The response status code.
getDevicePoolCompatibilityResponse ::
  -- | 'gdpcrrsResponseStatus'
  Int ->
  GetDevicePoolCompatibilityResponse
getDevicePoolCompatibilityResponse pResponseStatus_ =
  GetDevicePoolCompatibilityResponse'
    { _gdpcrrsIncompatibleDevices =
        Nothing,
      _gdpcrrsCompatibleDevices = Nothing,
      _gdpcrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about incompatible devices.
gdpcrrsIncompatibleDevices :: Lens' GetDevicePoolCompatibilityResponse [DevicePoolCompatibilityResult]
gdpcrrsIncompatibleDevices = lens _gdpcrrsIncompatibleDevices (\s a -> s {_gdpcrrsIncompatibleDevices = a}) . _Default . _Coerce

-- | Information about compatible devices.
gdpcrrsCompatibleDevices :: Lens' GetDevicePoolCompatibilityResponse [DevicePoolCompatibilityResult]
gdpcrrsCompatibleDevices = lens _gdpcrrsCompatibleDevices (\s a -> s {_gdpcrrsCompatibleDevices = a}) . _Default . _Coerce

-- | -- | The response status code.
gdpcrrsResponseStatus :: Lens' GetDevicePoolCompatibilityResponse Int
gdpcrrsResponseStatus = lens _gdpcrrsResponseStatus (\s a -> s {_gdpcrrsResponseStatus = a})

instance NFData GetDevicePoolCompatibilityResponse

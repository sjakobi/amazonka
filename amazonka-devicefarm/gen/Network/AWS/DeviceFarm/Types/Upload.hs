{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Upload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Upload where

import Network.AWS.DeviceFarm.Types.UploadCategory
import Network.AWS.DeviceFarm.Types.UploadStatus
import Network.AWS.DeviceFarm.Types.UploadType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An app or a set of one or more tests to upload or that have been uploaded.
--
--
--
-- /See:/ 'upload' smart constructor.
data Upload = Upload'
  { _uStatus ::
      !(Maybe UploadStatus),
    _uContentType :: !(Maybe Text),
    _uMessage :: !(Maybe Text),
    _uCategory :: !(Maybe UploadCategory),
    _uMetadata :: !(Maybe Text),
    _uArn :: !(Maybe Text),
    _uName :: !(Maybe Text),
    _uUrl :: !(Maybe Text),
    _uCreated :: !(Maybe POSIX),
    _uType :: !(Maybe UploadType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Upload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uStatus' - The upload's status. Must be one of the following values:     * FAILED     * INITIALIZED     * PROCESSING     * SUCCEEDED
--
-- * 'uContentType' - The upload's content type (for example, @application/octet-stream@ ).
--
-- * 'uMessage' - A message about the upload's result.
--
-- * 'uCategory' - The upload's category. Allowed values include:     * CURATED: An upload managed by AWS Device Farm.     * PRIVATE: An upload managed by the AWS Device Farm customer.
--
-- * 'uMetadata' - The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.
--
-- * 'uArn' - The upload's ARN.
--
-- * 'uName' - The upload's file name.
--
-- * 'uUrl' - The presigned Amazon S3 URL that was used to store a file using a PUT request.
--
-- * 'uCreated' - When the upload was created.
--
-- * 'uType' - The upload's type. Must be one of the following values:     * ANDROID_APP     * IOS_APP     * WEB_APP     * EXTERNAL_DATA     * APPIUM_JAVA_JUNIT_TEST_PACKAGE     * APPIUM_JAVA_TESTNG_TEST_PACKAGE     * APPIUM_PYTHON_TEST_PACKAGE     * APPIUM_NODE_TEST_PACKAGE     * APPIUM_RUBY_TEST_PACKAGE     * APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE     * APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE     * APPIUM_WEB_PYTHON_TEST_PACKAGE     * APPIUM_WEB_NODE_TEST_PACKAGE     * APPIUM_WEB_RUBY_TEST_PACKAGE     * CALABASH_TEST_PACKAGE     * INSTRUMENTATION_TEST_PACKAGE     * UIAUTOMATION_TEST_PACKAGE     * UIAUTOMATOR_TEST_PACKAGE     * XCTEST_TEST_PACKAGE     * XCTEST_UI_TEST_PACKAGE     * APPIUM_JAVA_JUNIT_TEST_SPEC     * APPIUM_JAVA_TESTNG_TEST_SPEC     * APPIUM_PYTHON_TEST_SPEC     * APPIUM_NODE_TEST_SPEC     * APPIUM_RUBY_TEST_SPEC     * APPIUM_WEB_JAVA_JUNIT_TEST_SPEC     * APPIUM_WEB_JAVA_TESTNG_TEST_SPEC     * APPIUM_WEB_PYTHON_TEST_SPEC     * APPIUM_WEB_NODE_TEST_SPEC     * APPIUM_WEB_RUBY_TEST_SPEC     * INSTRUMENTATION_TEST_SPEC     * XCTEST_UI_TEST_SPEC
upload ::
  Upload
upload =
  Upload'
    { _uStatus = Nothing,
      _uContentType = Nothing,
      _uMessage = Nothing,
      _uCategory = Nothing,
      _uMetadata = Nothing,
      _uArn = Nothing,
      _uName = Nothing,
      _uUrl = Nothing,
      _uCreated = Nothing,
      _uType = Nothing
    }

-- | The upload's status. Must be one of the following values:     * FAILED     * INITIALIZED     * PROCESSING     * SUCCEEDED
uStatus :: Lens' Upload (Maybe UploadStatus)
uStatus = lens _uStatus (\s a -> s {_uStatus = a})

-- | The upload's content type (for example, @application/octet-stream@ ).
uContentType :: Lens' Upload (Maybe Text)
uContentType = lens _uContentType (\s a -> s {_uContentType = a})

-- | A message about the upload's result.
uMessage :: Lens' Upload (Maybe Text)
uMessage = lens _uMessage (\s a -> s {_uMessage = a})

-- | The upload's category. Allowed values include:     * CURATED: An upload managed by AWS Device Farm.     * PRIVATE: An upload managed by the AWS Device Farm customer.
uCategory :: Lens' Upload (Maybe UploadCategory)
uCategory = lens _uCategory (\s a -> s {_uCategory = a})

-- | The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.
uMetadata :: Lens' Upload (Maybe Text)
uMetadata = lens _uMetadata (\s a -> s {_uMetadata = a})

-- | The upload's ARN.
uArn :: Lens' Upload (Maybe Text)
uArn = lens _uArn (\s a -> s {_uArn = a})

-- | The upload's file name.
uName :: Lens' Upload (Maybe Text)
uName = lens _uName (\s a -> s {_uName = a})

-- | The presigned Amazon S3 URL that was used to store a file using a PUT request.
uUrl :: Lens' Upload (Maybe Text)
uUrl = lens _uUrl (\s a -> s {_uUrl = a})

-- | When the upload was created.
uCreated :: Lens' Upload (Maybe UTCTime)
uCreated = lens _uCreated (\s a -> s {_uCreated = a}) . mapping _Time

-- | The upload's type. Must be one of the following values:     * ANDROID_APP     * IOS_APP     * WEB_APP     * EXTERNAL_DATA     * APPIUM_JAVA_JUNIT_TEST_PACKAGE     * APPIUM_JAVA_TESTNG_TEST_PACKAGE     * APPIUM_PYTHON_TEST_PACKAGE     * APPIUM_NODE_TEST_PACKAGE     * APPIUM_RUBY_TEST_PACKAGE     * APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE     * APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE     * APPIUM_WEB_PYTHON_TEST_PACKAGE     * APPIUM_WEB_NODE_TEST_PACKAGE     * APPIUM_WEB_RUBY_TEST_PACKAGE     * CALABASH_TEST_PACKAGE     * INSTRUMENTATION_TEST_PACKAGE     * UIAUTOMATION_TEST_PACKAGE     * UIAUTOMATOR_TEST_PACKAGE     * XCTEST_TEST_PACKAGE     * XCTEST_UI_TEST_PACKAGE     * APPIUM_JAVA_JUNIT_TEST_SPEC     * APPIUM_JAVA_TESTNG_TEST_SPEC     * APPIUM_PYTHON_TEST_SPEC     * APPIUM_NODE_TEST_SPEC     * APPIUM_RUBY_TEST_SPEC     * APPIUM_WEB_JAVA_JUNIT_TEST_SPEC     * APPIUM_WEB_JAVA_TESTNG_TEST_SPEC     * APPIUM_WEB_PYTHON_TEST_SPEC     * APPIUM_WEB_NODE_TEST_SPEC     * APPIUM_WEB_RUBY_TEST_SPEC     * INSTRUMENTATION_TEST_SPEC     * XCTEST_UI_TEST_SPEC
uType :: Lens' Upload (Maybe UploadType)
uType = lens _uType (\s a -> s {_uType = a})

instance FromJSON Upload where
  parseJSON =
    withObject
      "Upload"
      ( \x ->
          Upload'
            <$> (x .:? "status")
            <*> (x .:? "contentType")
            <*> (x .:? "message")
            <*> (x .:? "category")
            <*> (x .:? "metadata")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "url")
            <*> (x .:? "created")
            <*> (x .:? "type")
      )

instance Hashable Upload

instance NFData Upload

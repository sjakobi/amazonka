{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ArtifactType
  ( ArtifactType
      ( ..,
        ATAppiumJavaOutput,
        ATAppiumJavaXMLOutput,
        ATAppiumPythonOutput,
        ATAppiumPythonXMLOutput,
        ATAppiumServerOutput,
        ATApplicationCrashReport,
        ATAutomationOutput,
        ATCalabashJSONOutput,
        ATCalabashJavaXMLOutput,
        ATCalabashPrettyOutput,
        ATCalabashStandardOutput,
        ATCustomerArtifact,
        ATCustomerArtifactLog,
        ATDeviceLog,
        ATExerciserMonkeyOutput,
        ATExplorerEventLog,
        ATExplorerSummaryLog,
        ATInstrumentationOutput,
        ATMessageLog,
        ATResultLog,
        ATScreenshot,
        ATServiceLog,
        ATTestspecOutput,
        ATUnknown,
        ATVideo,
        ATVideoLog,
        ATWebkitLog,
        ATXctestLog
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactType = ArtifactType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ATAppiumJavaOutput :: ArtifactType
pattern ATAppiumJavaOutput = ArtifactType' "APPIUM_JAVA_OUTPUT"

pattern ATAppiumJavaXMLOutput :: ArtifactType
pattern ATAppiumJavaXMLOutput = ArtifactType' "APPIUM_JAVA_XML_OUTPUT"

pattern ATAppiumPythonOutput :: ArtifactType
pattern ATAppiumPythonOutput = ArtifactType' "APPIUM_PYTHON_OUTPUT"

pattern ATAppiumPythonXMLOutput :: ArtifactType
pattern ATAppiumPythonXMLOutput = ArtifactType' "APPIUM_PYTHON_XML_OUTPUT"

pattern ATAppiumServerOutput :: ArtifactType
pattern ATAppiumServerOutput = ArtifactType' "APPIUM_SERVER_OUTPUT"

pattern ATApplicationCrashReport :: ArtifactType
pattern ATApplicationCrashReport = ArtifactType' "APPLICATION_CRASH_REPORT"

pattern ATAutomationOutput :: ArtifactType
pattern ATAutomationOutput = ArtifactType' "AUTOMATION_OUTPUT"

pattern ATCalabashJSONOutput :: ArtifactType
pattern ATCalabashJSONOutput = ArtifactType' "CALABASH_JSON_OUTPUT"

pattern ATCalabashJavaXMLOutput :: ArtifactType
pattern ATCalabashJavaXMLOutput = ArtifactType' "CALABASH_JAVA_XML_OUTPUT"

pattern ATCalabashPrettyOutput :: ArtifactType
pattern ATCalabashPrettyOutput = ArtifactType' "CALABASH_PRETTY_OUTPUT"

pattern ATCalabashStandardOutput :: ArtifactType
pattern ATCalabashStandardOutput = ArtifactType' "CALABASH_STANDARD_OUTPUT"

pattern ATCustomerArtifact :: ArtifactType
pattern ATCustomerArtifact = ArtifactType' "CUSTOMER_ARTIFACT"

pattern ATCustomerArtifactLog :: ArtifactType
pattern ATCustomerArtifactLog = ArtifactType' "CUSTOMER_ARTIFACT_LOG"

pattern ATDeviceLog :: ArtifactType
pattern ATDeviceLog = ArtifactType' "DEVICE_LOG"

pattern ATExerciserMonkeyOutput :: ArtifactType
pattern ATExerciserMonkeyOutput = ArtifactType' "EXERCISER_MONKEY_OUTPUT"

pattern ATExplorerEventLog :: ArtifactType
pattern ATExplorerEventLog = ArtifactType' "EXPLORER_EVENT_LOG"

pattern ATExplorerSummaryLog :: ArtifactType
pattern ATExplorerSummaryLog = ArtifactType' "EXPLORER_SUMMARY_LOG"

pattern ATInstrumentationOutput :: ArtifactType
pattern ATInstrumentationOutput = ArtifactType' "INSTRUMENTATION_OUTPUT"

pattern ATMessageLog :: ArtifactType
pattern ATMessageLog = ArtifactType' "MESSAGE_LOG"

pattern ATResultLog :: ArtifactType
pattern ATResultLog = ArtifactType' "RESULT_LOG"

pattern ATScreenshot :: ArtifactType
pattern ATScreenshot = ArtifactType' "SCREENSHOT"

pattern ATServiceLog :: ArtifactType
pattern ATServiceLog = ArtifactType' "SERVICE_LOG"

pattern ATTestspecOutput :: ArtifactType
pattern ATTestspecOutput = ArtifactType' "TESTSPEC_OUTPUT"

pattern ATUnknown :: ArtifactType
pattern ATUnknown = ArtifactType' "UNKNOWN"

pattern ATVideo :: ArtifactType
pattern ATVideo = ArtifactType' "VIDEO"

pattern ATVideoLog :: ArtifactType
pattern ATVideoLog = ArtifactType' "VIDEO_LOG"

pattern ATWebkitLog :: ArtifactType
pattern ATWebkitLog = ArtifactType' "WEBKIT_LOG"

pattern ATXctestLog :: ArtifactType
pattern ATXctestLog = ArtifactType' "XCTEST_LOG"

{-# COMPLETE
  ATAppiumJavaOutput,
  ATAppiumJavaXMLOutput,
  ATAppiumPythonOutput,
  ATAppiumPythonXMLOutput,
  ATAppiumServerOutput,
  ATApplicationCrashReport,
  ATAutomationOutput,
  ATCalabashJSONOutput,
  ATCalabashJavaXMLOutput,
  ATCalabashPrettyOutput,
  ATCalabashStandardOutput,
  ATCustomerArtifact,
  ATCustomerArtifactLog,
  ATDeviceLog,
  ATExerciserMonkeyOutput,
  ATExplorerEventLog,
  ATExplorerSummaryLog,
  ATInstrumentationOutput,
  ATMessageLog,
  ATResultLog,
  ATScreenshot,
  ATServiceLog,
  ATTestspecOutput,
  ATUnknown,
  ATVideo,
  ATVideoLog,
  ATWebkitLog,
  ATXctestLog,
  ArtifactType'
  #-}

instance FromText ArtifactType where
  parser = (ArtifactType' . mk) <$> takeText

instance ToText ArtifactType where
  toText (ArtifactType' ci) = original ci

instance Hashable ArtifactType

instance NFData ArtifactType

instance ToByteString ArtifactType

instance ToQuery ArtifactType

instance ToHeader ArtifactType

instance FromJSON ArtifactType where
  parseJSON = parseJSONText "ArtifactType"

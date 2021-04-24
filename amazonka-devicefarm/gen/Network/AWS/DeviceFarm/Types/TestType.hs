{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.TestType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestType
  ( TestType
      ( ..,
        AppiumJavaJunit,
        AppiumJavaTestng,
        AppiumNode,
        AppiumPython,
        AppiumRuby,
        AppiumWebJavaJunit,
        AppiumWebJavaTestng,
        AppiumWebNode,
        AppiumWebPython,
        AppiumWebRuby,
        BuiltinExplorer,
        BuiltinFuzz,
        Calabash,
        Instrumentation,
        RemoteAccessRecord,
        RemoteAccessReplay,
        Uiautomation,
        Uiautomator,
        WebPerformanceProfile,
        Xctest,
        XctestUi
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TestType = TestType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AppiumJavaJunit :: TestType
pattern AppiumJavaJunit = TestType' "APPIUM_JAVA_JUNIT"

pattern AppiumJavaTestng :: TestType
pattern AppiumJavaTestng = TestType' "APPIUM_JAVA_TESTNG"

pattern AppiumNode :: TestType
pattern AppiumNode = TestType' "APPIUM_NODE"

pattern AppiumPython :: TestType
pattern AppiumPython = TestType' "APPIUM_PYTHON"

pattern AppiumRuby :: TestType
pattern AppiumRuby = TestType' "APPIUM_RUBY"

pattern AppiumWebJavaJunit :: TestType
pattern AppiumWebJavaJunit = TestType' "APPIUM_WEB_JAVA_JUNIT"

pattern AppiumWebJavaTestng :: TestType
pattern AppiumWebJavaTestng = TestType' "APPIUM_WEB_JAVA_TESTNG"

pattern AppiumWebNode :: TestType
pattern AppiumWebNode = TestType' "APPIUM_WEB_NODE"

pattern AppiumWebPython :: TestType
pattern AppiumWebPython = TestType' "APPIUM_WEB_PYTHON"

pattern AppiumWebRuby :: TestType
pattern AppiumWebRuby = TestType' "APPIUM_WEB_RUBY"

pattern BuiltinExplorer :: TestType
pattern BuiltinExplorer = TestType' "BUILTIN_EXPLORER"

pattern BuiltinFuzz :: TestType
pattern BuiltinFuzz = TestType' "BUILTIN_FUZZ"

pattern Calabash :: TestType
pattern Calabash = TestType' "CALABASH"

pattern Instrumentation :: TestType
pattern Instrumentation = TestType' "INSTRUMENTATION"

pattern RemoteAccessRecord :: TestType
pattern RemoteAccessRecord = TestType' "REMOTE_ACCESS_RECORD"

pattern RemoteAccessReplay :: TestType
pattern RemoteAccessReplay = TestType' "REMOTE_ACCESS_REPLAY"

pattern Uiautomation :: TestType
pattern Uiautomation = TestType' "UIAUTOMATION"

pattern Uiautomator :: TestType
pattern Uiautomator = TestType' "UIAUTOMATOR"

pattern WebPerformanceProfile :: TestType
pattern WebPerformanceProfile = TestType' "WEB_PERFORMANCE_PROFILE"

pattern Xctest :: TestType
pattern Xctest = TestType' "XCTEST"

pattern XctestUi :: TestType
pattern XctestUi = TestType' "XCTEST_UI"

{-# COMPLETE
  AppiumJavaJunit,
  AppiumJavaTestng,
  AppiumNode,
  AppiumPython,
  AppiumRuby,
  AppiumWebJavaJunit,
  AppiumWebJavaTestng,
  AppiumWebNode,
  AppiumWebPython,
  AppiumWebRuby,
  BuiltinExplorer,
  BuiltinFuzz,
  Calabash,
  Instrumentation,
  RemoteAccessRecord,
  RemoteAccessReplay,
  Uiautomation,
  Uiautomator,
  WebPerformanceProfile,
  Xctest,
  XctestUi,
  TestType'
  #-}

instance FromText TestType where
  parser = (TestType' . mk) <$> takeText

instance ToText TestType where
  toText (TestType' ci) = original ci

instance Hashable TestType

instance NFData TestType

instance ToByteString TestType

instance ToQuery TestType

instance ToHeader TestType

instance ToJSON TestType where
  toJSON = toJSONText

instance FromJSON TestType where
  parseJSON = parseJSONText "TestType"

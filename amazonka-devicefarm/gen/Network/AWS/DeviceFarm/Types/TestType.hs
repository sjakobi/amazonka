{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        TestTypeAPPIUMJAVAJUNIT,
        TestTypeAPPIUMJAVATESTNG,
        TestTypeAPPIUMNODE,
        TestTypeAPPIUMPYTHON,
        TestTypeAPPIUMRUBY,
        TestTypeAPPIUMWEBJAVAJUNIT,
        TestTypeAPPIUMWEBJAVATESTNG,
        TestTypeAPPIUMWEBNODE,
        TestTypeAPPIUMWEBPYTHON,
        TestTypeAPPIUMWEBRUBY,
        TestTypeBUILTINEXPLORER,
        TestTypeBUILTINFUZZ,
        TestTypeCALABASH,
        TestTypeINSTRUMENTATION,
        TestTypeREMOTEACCESSRECORD,
        TestTypeREMOTEACCESSREPLAY,
        TestTypeUIAUTOMATION,
        TestTypeUIAUTOMATOR,
        TestTypeWEBPERFORMANCEPROFILE,
        TestTypeXCTEST,
        TestTypeXCTESTUI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TestType = TestType'
  { fromTestType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern TestTypeAPPIUMJAVAJUNIT :: TestType
pattern TestTypeAPPIUMJAVAJUNIT = TestType' "APPIUM_JAVA_JUNIT"

pattern TestTypeAPPIUMJAVATESTNG :: TestType
pattern TestTypeAPPIUMJAVATESTNG = TestType' "APPIUM_JAVA_TESTNG"

pattern TestTypeAPPIUMNODE :: TestType
pattern TestTypeAPPIUMNODE = TestType' "APPIUM_NODE"

pattern TestTypeAPPIUMPYTHON :: TestType
pattern TestTypeAPPIUMPYTHON = TestType' "APPIUM_PYTHON"

pattern TestTypeAPPIUMRUBY :: TestType
pattern TestTypeAPPIUMRUBY = TestType' "APPIUM_RUBY"

pattern TestTypeAPPIUMWEBJAVAJUNIT :: TestType
pattern TestTypeAPPIUMWEBJAVAJUNIT = TestType' "APPIUM_WEB_JAVA_JUNIT"

pattern TestTypeAPPIUMWEBJAVATESTNG :: TestType
pattern TestTypeAPPIUMWEBJAVATESTNG = TestType' "APPIUM_WEB_JAVA_TESTNG"

pattern TestTypeAPPIUMWEBNODE :: TestType
pattern TestTypeAPPIUMWEBNODE = TestType' "APPIUM_WEB_NODE"

pattern TestTypeAPPIUMWEBPYTHON :: TestType
pattern TestTypeAPPIUMWEBPYTHON = TestType' "APPIUM_WEB_PYTHON"

pattern TestTypeAPPIUMWEBRUBY :: TestType
pattern TestTypeAPPIUMWEBRUBY = TestType' "APPIUM_WEB_RUBY"

pattern TestTypeBUILTINEXPLORER :: TestType
pattern TestTypeBUILTINEXPLORER = TestType' "BUILTIN_EXPLORER"

pattern TestTypeBUILTINFUZZ :: TestType
pattern TestTypeBUILTINFUZZ = TestType' "BUILTIN_FUZZ"

pattern TestTypeCALABASH :: TestType
pattern TestTypeCALABASH = TestType' "CALABASH"

pattern TestTypeINSTRUMENTATION :: TestType
pattern TestTypeINSTRUMENTATION = TestType' "INSTRUMENTATION"

pattern TestTypeREMOTEACCESSRECORD :: TestType
pattern TestTypeREMOTEACCESSRECORD = TestType' "REMOTE_ACCESS_RECORD"

pattern TestTypeREMOTEACCESSREPLAY :: TestType
pattern TestTypeREMOTEACCESSREPLAY = TestType' "REMOTE_ACCESS_REPLAY"

pattern TestTypeUIAUTOMATION :: TestType
pattern TestTypeUIAUTOMATION = TestType' "UIAUTOMATION"

pattern TestTypeUIAUTOMATOR :: TestType
pattern TestTypeUIAUTOMATOR = TestType' "UIAUTOMATOR"

pattern TestTypeWEBPERFORMANCEPROFILE :: TestType
pattern TestTypeWEBPERFORMANCEPROFILE = TestType' "WEB_PERFORMANCE_PROFILE"

pattern TestTypeXCTEST :: TestType
pattern TestTypeXCTEST = TestType' "XCTEST"

pattern TestTypeXCTESTUI :: TestType
pattern TestTypeXCTESTUI = TestType' "XCTEST_UI"

{-# COMPLETE
  TestTypeAPPIUMJAVAJUNIT,
  TestTypeAPPIUMJAVATESTNG,
  TestTypeAPPIUMNODE,
  TestTypeAPPIUMPYTHON,
  TestTypeAPPIUMRUBY,
  TestTypeAPPIUMWEBJAVAJUNIT,
  TestTypeAPPIUMWEBJAVATESTNG,
  TestTypeAPPIUMWEBNODE,
  TestTypeAPPIUMWEBPYTHON,
  TestTypeAPPIUMWEBRUBY,
  TestTypeBUILTINEXPLORER,
  TestTypeBUILTINFUZZ,
  TestTypeCALABASH,
  TestTypeINSTRUMENTATION,
  TestTypeREMOTEACCESSRECORD,
  TestTypeREMOTEACCESSREPLAY,
  TestTypeUIAUTOMATION,
  TestTypeUIAUTOMATOR,
  TestTypeWEBPERFORMANCEPROFILE,
  TestTypeXCTEST,
  TestTypeXCTESTUI,
  TestType'
  #-}

instance Prelude.FromText TestType where
  parser = TestType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TestType where
  toText (TestType' x) = x

instance Prelude.Hashable TestType

instance Prelude.NFData TestType

instance Prelude.ToByteString TestType

instance Prelude.ToQuery TestType

instance Prelude.ToHeader TestType

instance Prelude.ToJSON TestType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TestType where
  parseJSON = Prelude.parseJSONText "TestType"

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
-- Module      : Network.AWS.DeviceFarm.Types.UploadType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.UploadType
  ( UploadType
      ( ..,
        UploadTypeANDROIDAPP,
        UploadTypeAPPIUMJAVAJUNITTESTPACKAGE,
        UploadTypeAPPIUMJAVAJUNITTESTSPEC,
        UploadTypeAPPIUMJAVATESTNGTESTPACKAGE,
        UploadTypeAPPIUMJAVATESTNGTESTSPEC,
        UploadTypeAPPIUMNODETESTPACKAGE,
        UploadTypeAPPIUMNODETESTSPEC,
        UploadTypeAPPIUMPYTHONTESTPACKAGE,
        UploadTypeAPPIUMPYTHONTESTSPEC,
        UploadTypeAPPIUMRUBYTESTPACKAGE,
        UploadTypeAPPIUMRUBYTESTSPEC,
        UploadTypeAPPIUMWEBJAVAJUNITTESTPACKAGE,
        UploadTypeAPPIUMWEBJAVAJUNITTESTSPEC,
        UploadTypeAPPIUMWEBJAVATESTNGTESTPACKAGE,
        UploadTypeAPPIUMWEBJAVATESTNGTESTSPEC,
        UploadTypeAPPIUMWEBNODETESTPACKAGE,
        UploadTypeAPPIUMWEBNODETESTSPEC,
        UploadTypeAPPIUMWEBPYTHONTESTPACKAGE,
        UploadTypeAPPIUMWEBPYTHONTESTSPEC,
        UploadTypeAPPIUMWEBRUBYTESTPACKAGE,
        UploadTypeAPPIUMWEBRUBYTESTSPEC,
        UploadTypeCALABASHTESTPACKAGE,
        UploadTypeEXTERNALDATA,
        UploadTypeINSTRUMENTATIONTESTPACKAGE,
        UploadTypeINSTRUMENTATIONTESTSPEC,
        UploadTypeIOSAPP,
        UploadTypeUIAUTOMATIONTESTPACKAGE,
        UploadTypeUIAUTOMATORTESTPACKAGE,
        UploadTypeWEBAPP,
        UploadTypeXCTESTTESTPACKAGE,
        UploadTypeXCTESTUITESTPACKAGE,
        UploadTypeXCTESTUITESTSPEC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UploadType = UploadType'
  { fromUploadType ::
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

pattern UploadTypeANDROIDAPP :: UploadType
pattern UploadTypeANDROIDAPP = UploadType' "ANDROID_APP"

pattern UploadTypeAPPIUMJAVAJUNITTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMJAVAJUNITTESTPACKAGE = UploadType' "APPIUM_JAVA_JUNIT_TEST_PACKAGE"

pattern UploadTypeAPPIUMJAVAJUNITTESTSPEC :: UploadType
pattern UploadTypeAPPIUMJAVAJUNITTESTSPEC = UploadType' "APPIUM_JAVA_JUNIT_TEST_SPEC"

pattern UploadTypeAPPIUMJAVATESTNGTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMJAVATESTNGTESTPACKAGE = UploadType' "APPIUM_JAVA_TESTNG_TEST_PACKAGE"

pattern UploadTypeAPPIUMJAVATESTNGTESTSPEC :: UploadType
pattern UploadTypeAPPIUMJAVATESTNGTESTSPEC = UploadType' "APPIUM_JAVA_TESTNG_TEST_SPEC"

pattern UploadTypeAPPIUMNODETESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMNODETESTPACKAGE = UploadType' "APPIUM_NODE_TEST_PACKAGE"

pattern UploadTypeAPPIUMNODETESTSPEC :: UploadType
pattern UploadTypeAPPIUMNODETESTSPEC = UploadType' "APPIUM_NODE_TEST_SPEC"

pattern UploadTypeAPPIUMPYTHONTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMPYTHONTESTPACKAGE = UploadType' "APPIUM_PYTHON_TEST_PACKAGE"

pattern UploadTypeAPPIUMPYTHONTESTSPEC :: UploadType
pattern UploadTypeAPPIUMPYTHONTESTSPEC = UploadType' "APPIUM_PYTHON_TEST_SPEC"

pattern UploadTypeAPPIUMRUBYTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMRUBYTESTPACKAGE = UploadType' "APPIUM_RUBY_TEST_PACKAGE"

pattern UploadTypeAPPIUMRUBYTESTSPEC :: UploadType
pattern UploadTypeAPPIUMRUBYTESTSPEC = UploadType' "APPIUM_RUBY_TEST_SPEC"

pattern UploadTypeAPPIUMWEBJAVAJUNITTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMWEBJAVAJUNITTESTPACKAGE = UploadType' "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE"

pattern UploadTypeAPPIUMWEBJAVAJUNITTESTSPEC :: UploadType
pattern UploadTypeAPPIUMWEBJAVAJUNITTESTSPEC = UploadType' "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC"

pattern UploadTypeAPPIUMWEBJAVATESTNGTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMWEBJAVATESTNGTESTPACKAGE = UploadType' "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE"

pattern UploadTypeAPPIUMWEBJAVATESTNGTESTSPEC :: UploadType
pattern UploadTypeAPPIUMWEBJAVATESTNGTESTSPEC = UploadType' "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC"

pattern UploadTypeAPPIUMWEBNODETESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMWEBNODETESTPACKAGE = UploadType' "APPIUM_WEB_NODE_TEST_PACKAGE"

pattern UploadTypeAPPIUMWEBNODETESTSPEC :: UploadType
pattern UploadTypeAPPIUMWEBNODETESTSPEC = UploadType' "APPIUM_WEB_NODE_TEST_SPEC"

pattern UploadTypeAPPIUMWEBPYTHONTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMWEBPYTHONTESTPACKAGE = UploadType' "APPIUM_WEB_PYTHON_TEST_PACKAGE"

pattern UploadTypeAPPIUMWEBPYTHONTESTSPEC :: UploadType
pattern UploadTypeAPPIUMWEBPYTHONTESTSPEC = UploadType' "APPIUM_WEB_PYTHON_TEST_SPEC"

pattern UploadTypeAPPIUMWEBRUBYTESTPACKAGE :: UploadType
pattern UploadTypeAPPIUMWEBRUBYTESTPACKAGE = UploadType' "APPIUM_WEB_RUBY_TEST_PACKAGE"

pattern UploadTypeAPPIUMWEBRUBYTESTSPEC :: UploadType
pattern UploadTypeAPPIUMWEBRUBYTESTSPEC = UploadType' "APPIUM_WEB_RUBY_TEST_SPEC"

pattern UploadTypeCALABASHTESTPACKAGE :: UploadType
pattern UploadTypeCALABASHTESTPACKAGE = UploadType' "CALABASH_TEST_PACKAGE"

pattern UploadTypeEXTERNALDATA :: UploadType
pattern UploadTypeEXTERNALDATA = UploadType' "EXTERNAL_DATA"

pattern UploadTypeINSTRUMENTATIONTESTPACKAGE :: UploadType
pattern UploadTypeINSTRUMENTATIONTESTPACKAGE = UploadType' "INSTRUMENTATION_TEST_PACKAGE"

pattern UploadTypeINSTRUMENTATIONTESTSPEC :: UploadType
pattern UploadTypeINSTRUMENTATIONTESTSPEC = UploadType' "INSTRUMENTATION_TEST_SPEC"

pattern UploadTypeIOSAPP :: UploadType
pattern UploadTypeIOSAPP = UploadType' "IOS_APP"

pattern UploadTypeUIAUTOMATIONTESTPACKAGE :: UploadType
pattern UploadTypeUIAUTOMATIONTESTPACKAGE = UploadType' "UIAUTOMATION_TEST_PACKAGE"

pattern UploadTypeUIAUTOMATORTESTPACKAGE :: UploadType
pattern UploadTypeUIAUTOMATORTESTPACKAGE = UploadType' "UIAUTOMATOR_TEST_PACKAGE"

pattern UploadTypeWEBAPP :: UploadType
pattern UploadTypeWEBAPP = UploadType' "WEB_APP"

pattern UploadTypeXCTESTTESTPACKAGE :: UploadType
pattern UploadTypeXCTESTTESTPACKAGE = UploadType' "XCTEST_TEST_PACKAGE"

pattern UploadTypeXCTESTUITESTPACKAGE :: UploadType
pattern UploadTypeXCTESTUITESTPACKAGE = UploadType' "XCTEST_UI_TEST_PACKAGE"

pattern UploadTypeXCTESTUITESTSPEC :: UploadType
pattern UploadTypeXCTESTUITESTSPEC = UploadType' "XCTEST_UI_TEST_SPEC"

{-# COMPLETE
  UploadTypeANDROIDAPP,
  UploadTypeAPPIUMJAVAJUNITTESTPACKAGE,
  UploadTypeAPPIUMJAVAJUNITTESTSPEC,
  UploadTypeAPPIUMJAVATESTNGTESTPACKAGE,
  UploadTypeAPPIUMJAVATESTNGTESTSPEC,
  UploadTypeAPPIUMNODETESTPACKAGE,
  UploadTypeAPPIUMNODETESTSPEC,
  UploadTypeAPPIUMPYTHONTESTPACKAGE,
  UploadTypeAPPIUMPYTHONTESTSPEC,
  UploadTypeAPPIUMRUBYTESTPACKAGE,
  UploadTypeAPPIUMRUBYTESTSPEC,
  UploadTypeAPPIUMWEBJAVAJUNITTESTPACKAGE,
  UploadTypeAPPIUMWEBJAVAJUNITTESTSPEC,
  UploadTypeAPPIUMWEBJAVATESTNGTESTPACKAGE,
  UploadTypeAPPIUMWEBJAVATESTNGTESTSPEC,
  UploadTypeAPPIUMWEBNODETESTPACKAGE,
  UploadTypeAPPIUMWEBNODETESTSPEC,
  UploadTypeAPPIUMWEBPYTHONTESTPACKAGE,
  UploadTypeAPPIUMWEBPYTHONTESTSPEC,
  UploadTypeAPPIUMWEBRUBYTESTPACKAGE,
  UploadTypeAPPIUMWEBRUBYTESTSPEC,
  UploadTypeCALABASHTESTPACKAGE,
  UploadTypeEXTERNALDATA,
  UploadTypeINSTRUMENTATIONTESTPACKAGE,
  UploadTypeINSTRUMENTATIONTESTSPEC,
  UploadTypeIOSAPP,
  UploadTypeUIAUTOMATIONTESTPACKAGE,
  UploadTypeUIAUTOMATORTESTPACKAGE,
  UploadTypeWEBAPP,
  UploadTypeXCTESTTESTPACKAGE,
  UploadTypeXCTESTUITESTPACKAGE,
  UploadTypeXCTESTUITESTSPEC,
  UploadType'
  #-}

instance Prelude.FromText UploadType where
  parser = UploadType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UploadType where
  toText (UploadType' x) = x

instance Prelude.Hashable UploadType

instance Prelude.NFData UploadType

instance Prelude.ToByteString UploadType

instance Prelude.ToQuery UploadType

instance Prelude.ToHeader UploadType

instance Prelude.ToJSON UploadType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UploadType where
  parseJSON = Prelude.parseJSONText "UploadType"

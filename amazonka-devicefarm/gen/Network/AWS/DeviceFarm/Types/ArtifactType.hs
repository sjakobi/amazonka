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
-- Module      : Network.AWS.DeviceFarm.Types.ArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ArtifactType
  ( ArtifactType
      ( ..,
        ArtifactTypeAPPIUMJAVAOUTPUT,
        ArtifactTypeAPPIUMJAVAXMLOUTPUT,
        ArtifactTypeAPPIUMPYTHONOUTPUT,
        ArtifactTypeAPPIUMPYTHONXMLOUTPUT,
        ArtifactTypeAPPIUMSERVEROUTPUT,
        ArtifactTypeAPPLICATIONCRASHREPORT,
        ArtifactTypeAUTOMATIONOUTPUT,
        ArtifactTypeCALABASHJAVAXMLOUTPUT,
        ArtifactTypeCALABASHJSONOUTPUT,
        ArtifactTypeCALABASHPRETTYOUTPUT,
        ArtifactTypeCALABASHSTANDARDOUTPUT,
        ArtifactTypeCUSTOMERARTIFACT,
        ArtifactTypeCUSTOMERARTIFACTLOG,
        ArtifactTypeDEVICELOG,
        ArtifactTypeEXERCISERMONKEYOUTPUT,
        ArtifactTypeEXPLOREREVENTLOG,
        ArtifactTypeEXPLORERSUMMARYLOG,
        ArtifactTypeINSTRUMENTATIONOUTPUT,
        ArtifactTypeMESSAGELOG,
        ArtifactTypeRESULTLOG,
        ArtifactTypeSCREENSHOT,
        ArtifactTypeSERVICELOG,
        ArtifactTypeTESTSPECOUTPUT,
        ArtifactTypeUNKNOWN,
        ArtifactTypeVIDEO,
        ArtifactTypeVIDEOLOG,
        ArtifactTypeWEBKITLOG,
        ArtifactTypeXCTESTLOG
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactType = ArtifactType'
  { fromArtifactType ::
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

pattern ArtifactTypeAPPIUMJAVAOUTPUT :: ArtifactType
pattern ArtifactTypeAPPIUMJAVAOUTPUT = ArtifactType' "APPIUM_JAVA_OUTPUT"

pattern ArtifactTypeAPPIUMJAVAXMLOUTPUT :: ArtifactType
pattern ArtifactTypeAPPIUMJAVAXMLOUTPUT = ArtifactType' "APPIUM_JAVA_XML_OUTPUT"

pattern ArtifactTypeAPPIUMPYTHONOUTPUT :: ArtifactType
pattern ArtifactTypeAPPIUMPYTHONOUTPUT = ArtifactType' "APPIUM_PYTHON_OUTPUT"

pattern ArtifactTypeAPPIUMPYTHONXMLOUTPUT :: ArtifactType
pattern ArtifactTypeAPPIUMPYTHONXMLOUTPUT = ArtifactType' "APPIUM_PYTHON_XML_OUTPUT"

pattern ArtifactTypeAPPIUMSERVEROUTPUT :: ArtifactType
pattern ArtifactTypeAPPIUMSERVEROUTPUT = ArtifactType' "APPIUM_SERVER_OUTPUT"

pattern ArtifactTypeAPPLICATIONCRASHREPORT :: ArtifactType
pattern ArtifactTypeAPPLICATIONCRASHREPORT = ArtifactType' "APPLICATION_CRASH_REPORT"

pattern ArtifactTypeAUTOMATIONOUTPUT :: ArtifactType
pattern ArtifactTypeAUTOMATIONOUTPUT = ArtifactType' "AUTOMATION_OUTPUT"

pattern ArtifactTypeCALABASHJAVAXMLOUTPUT :: ArtifactType
pattern ArtifactTypeCALABASHJAVAXMLOUTPUT = ArtifactType' "CALABASH_JAVA_XML_OUTPUT"

pattern ArtifactTypeCALABASHJSONOUTPUT :: ArtifactType
pattern ArtifactTypeCALABASHJSONOUTPUT = ArtifactType' "CALABASH_JSON_OUTPUT"

pattern ArtifactTypeCALABASHPRETTYOUTPUT :: ArtifactType
pattern ArtifactTypeCALABASHPRETTYOUTPUT = ArtifactType' "CALABASH_PRETTY_OUTPUT"

pattern ArtifactTypeCALABASHSTANDARDOUTPUT :: ArtifactType
pattern ArtifactTypeCALABASHSTANDARDOUTPUT = ArtifactType' "CALABASH_STANDARD_OUTPUT"

pattern ArtifactTypeCUSTOMERARTIFACT :: ArtifactType
pattern ArtifactTypeCUSTOMERARTIFACT = ArtifactType' "CUSTOMER_ARTIFACT"

pattern ArtifactTypeCUSTOMERARTIFACTLOG :: ArtifactType
pattern ArtifactTypeCUSTOMERARTIFACTLOG = ArtifactType' "CUSTOMER_ARTIFACT_LOG"

pattern ArtifactTypeDEVICELOG :: ArtifactType
pattern ArtifactTypeDEVICELOG = ArtifactType' "DEVICE_LOG"

pattern ArtifactTypeEXERCISERMONKEYOUTPUT :: ArtifactType
pattern ArtifactTypeEXERCISERMONKEYOUTPUT = ArtifactType' "EXERCISER_MONKEY_OUTPUT"

pattern ArtifactTypeEXPLOREREVENTLOG :: ArtifactType
pattern ArtifactTypeEXPLOREREVENTLOG = ArtifactType' "EXPLORER_EVENT_LOG"

pattern ArtifactTypeEXPLORERSUMMARYLOG :: ArtifactType
pattern ArtifactTypeEXPLORERSUMMARYLOG = ArtifactType' "EXPLORER_SUMMARY_LOG"

pattern ArtifactTypeINSTRUMENTATIONOUTPUT :: ArtifactType
pattern ArtifactTypeINSTRUMENTATIONOUTPUT = ArtifactType' "INSTRUMENTATION_OUTPUT"

pattern ArtifactTypeMESSAGELOG :: ArtifactType
pattern ArtifactTypeMESSAGELOG = ArtifactType' "MESSAGE_LOG"

pattern ArtifactTypeRESULTLOG :: ArtifactType
pattern ArtifactTypeRESULTLOG = ArtifactType' "RESULT_LOG"

pattern ArtifactTypeSCREENSHOT :: ArtifactType
pattern ArtifactTypeSCREENSHOT = ArtifactType' "SCREENSHOT"

pattern ArtifactTypeSERVICELOG :: ArtifactType
pattern ArtifactTypeSERVICELOG = ArtifactType' "SERVICE_LOG"

pattern ArtifactTypeTESTSPECOUTPUT :: ArtifactType
pattern ArtifactTypeTESTSPECOUTPUT = ArtifactType' "TESTSPEC_OUTPUT"

pattern ArtifactTypeUNKNOWN :: ArtifactType
pattern ArtifactTypeUNKNOWN = ArtifactType' "UNKNOWN"

pattern ArtifactTypeVIDEO :: ArtifactType
pattern ArtifactTypeVIDEO = ArtifactType' "VIDEO"

pattern ArtifactTypeVIDEOLOG :: ArtifactType
pattern ArtifactTypeVIDEOLOG = ArtifactType' "VIDEO_LOG"

pattern ArtifactTypeWEBKITLOG :: ArtifactType
pattern ArtifactTypeWEBKITLOG = ArtifactType' "WEBKIT_LOG"

pattern ArtifactTypeXCTESTLOG :: ArtifactType
pattern ArtifactTypeXCTESTLOG = ArtifactType' "XCTEST_LOG"

{-# COMPLETE
  ArtifactTypeAPPIUMJAVAOUTPUT,
  ArtifactTypeAPPIUMJAVAXMLOUTPUT,
  ArtifactTypeAPPIUMPYTHONOUTPUT,
  ArtifactTypeAPPIUMPYTHONXMLOUTPUT,
  ArtifactTypeAPPIUMSERVEROUTPUT,
  ArtifactTypeAPPLICATIONCRASHREPORT,
  ArtifactTypeAUTOMATIONOUTPUT,
  ArtifactTypeCALABASHJAVAXMLOUTPUT,
  ArtifactTypeCALABASHJSONOUTPUT,
  ArtifactTypeCALABASHPRETTYOUTPUT,
  ArtifactTypeCALABASHSTANDARDOUTPUT,
  ArtifactTypeCUSTOMERARTIFACT,
  ArtifactTypeCUSTOMERARTIFACTLOG,
  ArtifactTypeDEVICELOG,
  ArtifactTypeEXERCISERMONKEYOUTPUT,
  ArtifactTypeEXPLOREREVENTLOG,
  ArtifactTypeEXPLORERSUMMARYLOG,
  ArtifactTypeINSTRUMENTATIONOUTPUT,
  ArtifactTypeMESSAGELOG,
  ArtifactTypeRESULTLOG,
  ArtifactTypeSCREENSHOT,
  ArtifactTypeSERVICELOG,
  ArtifactTypeTESTSPECOUTPUT,
  ArtifactTypeUNKNOWN,
  ArtifactTypeVIDEO,
  ArtifactTypeVIDEOLOG,
  ArtifactTypeWEBKITLOG,
  ArtifactTypeXCTESTLOG,
  ArtifactType'
  #-}

instance Prelude.FromText ArtifactType where
  parser = ArtifactType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactType where
  toText (ArtifactType' x) = x

instance Prelude.Hashable ArtifactType

instance Prelude.NFData ArtifactType

instance Prelude.ToByteString ArtifactType

instance Prelude.ToQuery ArtifactType

instance Prelude.ToHeader ArtifactType

instance Prelude.FromJSON ArtifactType where
  parseJSON = Prelude.parseJSONText "ArtifactType"

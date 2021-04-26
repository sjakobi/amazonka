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
-- Module      : Network.AWS.CodeDeploy.Types.DeployErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeployErrorCode
  ( DeployErrorCode
      ( ..,
        DeployErrorCodeAGENTISSUE,
        DeployErrorCodeALARMACTIVE,
        DeployErrorCodeAPPLICATIONMISSING,
        DeployErrorCodeAUTOSCALINGCONFIGURATION,
        DeployErrorCodeAUTOSCALINGIAMROLEPERMISSIONS,
        DeployErrorCodeAUTOSCALINGVALIDATIONERROR,
        DeployErrorCodeCLOUDFORMATIONSTACKFAILURE,
        DeployErrorCodeCODEDEPLOYRESOURCECANNOTBEFOUND,
        DeployErrorCodeCUSTOMERAPPLICATIONUNHEALTHY,
        DeployErrorCodeDEPLOYMENTGROUPMISSING,
        DeployErrorCodeECSUPDATEERROR,
        DeployErrorCodeELASTICLOADBALANCINGINVALID,
        DeployErrorCodeELBINVALIDINSTANCE,
        DeployErrorCodeHEALTHCONSTRAINTS,
        DeployErrorCodeHEALTHCONSTRAINTSINVALID,
        DeployErrorCodeHOOKEXECUTIONFAILURE,
        DeployErrorCodeIAMROLEMISSING,
        DeployErrorCodeIAMROLEPERMISSIONS,
        DeployErrorCodeINTERNALERROR,
        DeployErrorCodeINVALIDECSSERVICE,
        DeployErrorCodeINVALIDLAMBDACONFIGURATION,
        DeployErrorCodeINVALIDLAMBDAFUNCTION,
        DeployErrorCodeINVALIDREVISION,
        DeployErrorCodeMANUALSTOP,
        DeployErrorCodeMISSINGBLUEGREENDEPLOYMENTCONFIGURATION,
        DeployErrorCodeMISSINGELBINFORMATION,
        DeployErrorCodeMISSINGGITHUBTOKEN,
        DeployErrorCodeNOEC2SUBSCRIPTION,
        DeployErrorCodeNOINSTANCES,
        DeployErrorCodeOVERMAXINSTANCES,
        DeployErrorCodeRESOURCELIMITEXCEEDED,
        DeployErrorCodeREVISIONMISSING,
        DeployErrorCodeTHROTTLED,
        DeployErrorCodeTIMEOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeployErrorCode = DeployErrorCode'
  { fromDeployErrorCode ::
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

pattern DeployErrorCodeAGENTISSUE :: DeployErrorCode
pattern DeployErrorCodeAGENTISSUE = DeployErrorCode' "AGENT_ISSUE"

pattern DeployErrorCodeALARMACTIVE :: DeployErrorCode
pattern DeployErrorCodeALARMACTIVE = DeployErrorCode' "ALARM_ACTIVE"

pattern DeployErrorCodeAPPLICATIONMISSING :: DeployErrorCode
pattern DeployErrorCodeAPPLICATIONMISSING = DeployErrorCode' "APPLICATION_MISSING"

pattern DeployErrorCodeAUTOSCALINGCONFIGURATION :: DeployErrorCode
pattern DeployErrorCodeAUTOSCALINGCONFIGURATION = DeployErrorCode' "AUTO_SCALING_CONFIGURATION"

pattern DeployErrorCodeAUTOSCALINGIAMROLEPERMISSIONS :: DeployErrorCode
pattern DeployErrorCodeAUTOSCALINGIAMROLEPERMISSIONS = DeployErrorCode' "AUTO_SCALING_IAM_ROLE_PERMISSIONS"

pattern DeployErrorCodeAUTOSCALINGVALIDATIONERROR :: DeployErrorCode
pattern DeployErrorCodeAUTOSCALINGVALIDATIONERROR = DeployErrorCode' "AUTOSCALING_VALIDATION_ERROR"

pattern DeployErrorCodeCLOUDFORMATIONSTACKFAILURE :: DeployErrorCode
pattern DeployErrorCodeCLOUDFORMATIONSTACKFAILURE = DeployErrorCode' "CLOUDFORMATION_STACK_FAILURE"

pattern DeployErrorCodeCODEDEPLOYRESOURCECANNOTBEFOUND :: DeployErrorCode
pattern DeployErrorCodeCODEDEPLOYRESOURCECANNOTBEFOUND = DeployErrorCode' "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND"

pattern DeployErrorCodeCUSTOMERAPPLICATIONUNHEALTHY :: DeployErrorCode
pattern DeployErrorCodeCUSTOMERAPPLICATIONUNHEALTHY = DeployErrorCode' "CUSTOMER_APPLICATION_UNHEALTHY"

pattern DeployErrorCodeDEPLOYMENTGROUPMISSING :: DeployErrorCode
pattern DeployErrorCodeDEPLOYMENTGROUPMISSING = DeployErrorCode' "DEPLOYMENT_GROUP_MISSING"

pattern DeployErrorCodeECSUPDATEERROR :: DeployErrorCode
pattern DeployErrorCodeECSUPDATEERROR = DeployErrorCode' "ECS_UPDATE_ERROR"

pattern DeployErrorCodeELASTICLOADBALANCINGINVALID :: DeployErrorCode
pattern DeployErrorCodeELASTICLOADBALANCINGINVALID = DeployErrorCode' "ELASTIC_LOAD_BALANCING_INVALID"

pattern DeployErrorCodeELBINVALIDINSTANCE :: DeployErrorCode
pattern DeployErrorCodeELBINVALIDINSTANCE = DeployErrorCode' "ELB_INVALID_INSTANCE"

pattern DeployErrorCodeHEALTHCONSTRAINTS :: DeployErrorCode
pattern DeployErrorCodeHEALTHCONSTRAINTS = DeployErrorCode' "HEALTH_CONSTRAINTS"

pattern DeployErrorCodeHEALTHCONSTRAINTSINVALID :: DeployErrorCode
pattern DeployErrorCodeHEALTHCONSTRAINTSINVALID = DeployErrorCode' "HEALTH_CONSTRAINTS_INVALID"

pattern DeployErrorCodeHOOKEXECUTIONFAILURE :: DeployErrorCode
pattern DeployErrorCodeHOOKEXECUTIONFAILURE = DeployErrorCode' "HOOK_EXECUTION_FAILURE"

pattern DeployErrorCodeIAMROLEMISSING :: DeployErrorCode
pattern DeployErrorCodeIAMROLEMISSING = DeployErrorCode' "IAM_ROLE_MISSING"

pattern DeployErrorCodeIAMROLEPERMISSIONS :: DeployErrorCode
pattern DeployErrorCodeIAMROLEPERMISSIONS = DeployErrorCode' "IAM_ROLE_PERMISSIONS"

pattern DeployErrorCodeINTERNALERROR :: DeployErrorCode
pattern DeployErrorCodeINTERNALERROR = DeployErrorCode' "INTERNAL_ERROR"

pattern DeployErrorCodeINVALIDECSSERVICE :: DeployErrorCode
pattern DeployErrorCodeINVALIDECSSERVICE = DeployErrorCode' "INVALID_ECS_SERVICE"

pattern DeployErrorCodeINVALIDLAMBDACONFIGURATION :: DeployErrorCode
pattern DeployErrorCodeINVALIDLAMBDACONFIGURATION = DeployErrorCode' "INVALID_LAMBDA_CONFIGURATION"

pattern DeployErrorCodeINVALIDLAMBDAFUNCTION :: DeployErrorCode
pattern DeployErrorCodeINVALIDLAMBDAFUNCTION = DeployErrorCode' "INVALID_LAMBDA_FUNCTION"

pattern DeployErrorCodeINVALIDREVISION :: DeployErrorCode
pattern DeployErrorCodeINVALIDREVISION = DeployErrorCode' "INVALID_REVISION"

pattern DeployErrorCodeMANUALSTOP :: DeployErrorCode
pattern DeployErrorCodeMANUALSTOP = DeployErrorCode' "MANUAL_STOP"

pattern DeployErrorCodeMISSINGBLUEGREENDEPLOYMENTCONFIGURATION :: DeployErrorCode
pattern DeployErrorCodeMISSINGBLUEGREENDEPLOYMENTCONFIGURATION = DeployErrorCode' "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION"

pattern DeployErrorCodeMISSINGELBINFORMATION :: DeployErrorCode
pattern DeployErrorCodeMISSINGELBINFORMATION = DeployErrorCode' "MISSING_ELB_INFORMATION"

pattern DeployErrorCodeMISSINGGITHUBTOKEN :: DeployErrorCode
pattern DeployErrorCodeMISSINGGITHUBTOKEN = DeployErrorCode' "MISSING_GITHUB_TOKEN"

pattern DeployErrorCodeNOEC2SUBSCRIPTION :: DeployErrorCode
pattern DeployErrorCodeNOEC2SUBSCRIPTION = DeployErrorCode' "NO_EC2_SUBSCRIPTION"

pattern DeployErrorCodeNOINSTANCES :: DeployErrorCode
pattern DeployErrorCodeNOINSTANCES = DeployErrorCode' "NO_INSTANCES"

pattern DeployErrorCodeOVERMAXINSTANCES :: DeployErrorCode
pattern DeployErrorCodeOVERMAXINSTANCES = DeployErrorCode' "OVER_MAX_INSTANCES"

pattern DeployErrorCodeRESOURCELIMITEXCEEDED :: DeployErrorCode
pattern DeployErrorCodeRESOURCELIMITEXCEEDED = DeployErrorCode' "RESOURCE_LIMIT_EXCEEDED"

pattern DeployErrorCodeREVISIONMISSING :: DeployErrorCode
pattern DeployErrorCodeREVISIONMISSING = DeployErrorCode' "REVISION_MISSING"

pattern DeployErrorCodeTHROTTLED :: DeployErrorCode
pattern DeployErrorCodeTHROTTLED = DeployErrorCode' "THROTTLED"

pattern DeployErrorCodeTIMEOUT :: DeployErrorCode
pattern DeployErrorCodeTIMEOUT = DeployErrorCode' "TIMEOUT"

{-# COMPLETE
  DeployErrorCodeAGENTISSUE,
  DeployErrorCodeALARMACTIVE,
  DeployErrorCodeAPPLICATIONMISSING,
  DeployErrorCodeAUTOSCALINGCONFIGURATION,
  DeployErrorCodeAUTOSCALINGIAMROLEPERMISSIONS,
  DeployErrorCodeAUTOSCALINGVALIDATIONERROR,
  DeployErrorCodeCLOUDFORMATIONSTACKFAILURE,
  DeployErrorCodeCODEDEPLOYRESOURCECANNOTBEFOUND,
  DeployErrorCodeCUSTOMERAPPLICATIONUNHEALTHY,
  DeployErrorCodeDEPLOYMENTGROUPMISSING,
  DeployErrorCodeECSUPDATEERROR,
  DeployErrorCodeELASTICLOADBALANCINGINVALID,
  DeployErrorCodeELBINVALIDINSTANCE,
  DeployErrorCodeHEALTHCONSTRAINTS,
  DeployErrorCodeHEALTHCONSTRAINTSINVALID,
  DeployErrorCodeHOOKEXECUTIONFAILURE,
  DeployErrorCodeIAMROLEMISSING,
  DeployErrorCodeIAMROLEPERMISSIONS,
  DeployErrorCodeINTERNALERROR,
  DeployErrorCodeINVALIDECSSERVICE,
  DeployErrorCodeINVALIDLAMBDACONFIGURATION,
  DeployErrorCodeINVALIDLAMBDAFUNCTION,
  DeployErrorCodeINVALIDREVISION,
  DeployErrorCodeMANUALSTOP,
  DeployErrorCodeMISSINGBLUEGREENDEPLOYMENTCONFIGURATION,
  DeployErrorCodeMISSINGELBINFORMATION,
  DeployErrorCodeMISSINGGITHUBTOKEN,
  DeployErrorCodeNOEC2SUBSCRIPTION,
  DeployErrorCodeNOINSTANCES,
  DeployErrorCodeOVERMAXINSTANCES,
  DeployErrorCodeRESOURCELIMITEXCEEDED,
  DeployErrorCodeREVISIONMISSING,
  DeployErrorCodeTHROTTLED,
  DeployErrorCodeTIMEOUT,
  DeployErrorCode'
  #-}

instance Prelude.FromText DeployErrorCode where
  parser = DeployErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeployErrorCode where
  toText (DeployErrorCode' x) = x

instance Prelude.Hashable DeployErrorCode

instance Prelude.NFData DeployErrorCode

instance Prelude.ToByteString DeployErrorCode

instance Prelude.ToQuery DeployErrorCode

instance Prelude.ToHeader DeployErrorCode

instance Prelude.FromJSON DeployErrorCode where
  parseJSON = Prelude.parseJSONText "DeployErrorCode"

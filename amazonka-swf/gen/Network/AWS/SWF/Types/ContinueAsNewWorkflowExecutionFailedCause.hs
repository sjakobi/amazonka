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
-- Module      : Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause
  ( ContinueAsNewWorkflowExecutionFailedCause
      ( ..,
        ContinueAsNewWorkflowExecutionFailedCauseCONTINUEASNEWWORKFLOWEXECUTIONRATEEXCEEDED,
        ContinueAsNewWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED,
        ContinueAsNewWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED,
        ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED,
        ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED,
        ContinueAsNewWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        ContinueAsNewWorkflowExecutionFailedCauseUNHANDLEDDECISION,
        ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED,
        ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContinueAsNewWorkflowExecutionFailedCause = ContinueAsNewWorkflowExecutionFailedCause'
  { fromContinueAsNewWorkflowExecutionFailedCause ::
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

pattern ContinueAsNewWorkflowExecutionFailedCauseCONTINUEASNEWWORKFLOWEXECUTIONRATEEXCEEDED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseCONTINUEASNEWWORKFLOWEXECUTIONRATEEXCEEDED = ContinueAsNewWorkflowExecutionFailedCause' "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_CHILD_POLICY_UNDEFINED"

pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED = ContinueAsNewWorkflowExecutionFailedCause' "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern ContinueAsNewWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = ContinueAsNewWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern ContinueAsNewWorkflowExecutionFailedCauseUNHANDLEDDECISION :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseUNHANDLEDDECISION = ContinueAsNewWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

pattern ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED = ContinueAsNewWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DEPRECATED"

pattern ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST :: ContinueAsNewWorkflowExecutionFailedCause
pattern ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST = ContinueAsNewWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DOES_NOT_EXIST"

{-# COMPLETE
  ContinueAsNewWorkflowExecutionFailedCauseCONTINUEASNEWWORKFLOWEXECUTIONRATEEXCEEDED,
  ContinueAsNewWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED,
  ContinueAsNewWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED,
  ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED,
  ContinueAsNewWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED,
  ContinueAsNewWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  ContinueAsNewWorkflowExecutionFailedCauseUNHANDLEDDECISION,
  ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED,
  ContinueAsNewWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST,
  ContinueAsNewWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText ContinueAsNewWorkflowExecutionFailedCause where
  parser = ContinueAsNewWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContinueAsNewWorkflowExecutionFailedCause where
  toText (ContinueAsNewWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable ContinueAsNewWorkflowExecutionFailedCause

instance Prelude.NFData ContinueAsNewWorkflowExecutionFailedCause

instance Prelude.ToByteString ContinueAsNewWorkflowExecutionFailedCause

instance Prelude.ToQuery ContinueAsNewWorkflowExecutionFailedCause

instance Prelude.ToHeader ContinueAsNewWorkflowExecutionFailedCause

instance Prelude.FromJSON ContinueAsNewWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "ContinueAsNewWorkflowExecutionFailedCause"

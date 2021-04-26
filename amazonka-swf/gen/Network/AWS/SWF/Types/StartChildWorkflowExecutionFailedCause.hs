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
-- Module      : Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedCause
  ( StartChildWorkflowExecutionFailedCause
      ( ..,
        StartChildWorkflowExecutionFailedCauseCHILDCREATIONRATEEXCEEDED,
        StartChildWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED,
        StartChildWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED,
        StartChildWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED,
        StartChildWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED,
        StartChildWorkflowExecutionFailedCauseOPENCHILDRENLIMITEXCEEDED,
        StartChildWorkflowExecutionFailedCauseOPENWORKFLOWSLIMITEXCEEDED,
        StartChildWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        StartChildWorkflowExecutionFailedCauseWORKFLOWALREADYRUNNING,
        StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED,
        StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StartChildWorkflowExecutionFailedCause = StartChildWorkflowExecutionFailedCause'
  { fromStartChildWorkflowExecutionFailedCause ::
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

pattern StartChildWorkflowExecutionFailedCauseCHILDCREATIONRATEEXCEEDED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseCHILDCREATIONRATEEXCEEDED = StartChildWorkflowExecutionFailedCause' "CHILD_CREATION_RATE_EXCEEDED"

pattern StartChildWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED = StartChildWorkflowExecutionFailedCause' "DEFAULT_CHILD_POLICY_UNDEFINED"

pattern StartChildWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED = StartChildWorkflowExecutionFailedCause' "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern StartChildWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED = StartChildWorkflowExecutionFailedCause' "DEFAULT_TASK_LIST_UNDEFINED"

pattern StartChildWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED = StartChildWorkflowExecutionFailedCause' "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED"

pattern StartChildWorkflowExecutionFailedCauseOPENCHILDRENLIMITEXCEEDED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseOPENCHILDRENLIMITEXCEEDED = StartChildWorkflowExecutionFailedCause' "OPEN_CHILDREN_LIMIT_EXCEEDED"

pattern StartChildWorkflowExecutionFailedCauseOPENWORKFLOWSLIMITEXCEEDED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseOPENWORKFLOWSLIMITEXCEEDED = StartChildWorkflowExecutionFailedCause' "OPEN_WORKFLOWS_LIMIT_EXCEEDED"

pattern StartChildWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = StartChildWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern StartChildWorkflowExecutionFailedCauseWORKFLOWALREADYRUNNING :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseWORKFLOWALREADYRUNNING = StartChildWorkflowExecutionFailedCause' "WORKFLOW_ALREADY_RUNNING"

pattern StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED = StartChildWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DEPRECATED"

pattern StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST :: StartChildWorkflowExecutionFailedCause
pattern StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST = StartChildWorkflowExecutionFailedCause' "WORKFLOW_TYPE_DOES_NOT_EXIST"

{-# COMPLETE
  StartChildWorkflowExecutionFailedCauseCHILDCREATIONRATEEXCEEDED,
  StartChildWorkflowExecutionFailedCauseDEFAULTCHILDPOLICYUNDEFINED,
  StartChildWorkflowExecutionFailedCauseDEFAULTEXECUTIONSTARTTOCLOSETIMEOUTUNDEFINED,
  StartChildWorkflowExecutionFailedCauseDEFAULTTASKLISTUNDEFINED,
  StartChildWorkflowExecutionFailedCauseDEFAULTTASKSTARTTOCLOSETIMEOUTUNDEFINED,
  StartChildWorkflowExecutionFailedCauseOPENCHILDRENLIMITEXCEEDED,
  StartChildWorkflowExecutionFailedCauseOPENWORKFLOWSLIMITEXCEEDED,
  StartChildWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  StartChildWorkflowExecutionFailedCauseWORKFLOWALREADYRUNNING,
  StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDEPRECATED,
  StartChildWorkflowExecutionFailedCauseWORKFLOWTYPEDOESNOTEXIST,
  StartChildWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText StartChildWorkflowExecutionFailedCause where
  parser = StartChildWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText StartChildWorkflowExecutionFailedCause where
  toText (StartChildWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable StartChildWorkflowExecutionFailedCause

instance Prelude.NFData StartChildWorkflowExecutionFailedCause

instance Prelude.ToByteString StartChildWorkflowExecutionFailedCause

instance Prelude.ToQuery StartChildWorkflowExecutionFailedCause

instance Prelude.ToHeader StartChildWorkflowExecutionFailedCause

instance Prelude.FromJSON StartChildWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "StartChildWorkflowExecutionFailedCause"

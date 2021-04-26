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
-- Module      : Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
  ( SignalExternalWorkflowExecutionFailedCause
      ( ..,
        SignalExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        SignalExternalWorkflowExecutionFailedCauseSIGNALEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED,
        SignalExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SignalExternalWorkflowExecutionFailedCause = SignalExternalWorkflowExecutionFailedCause'
  { fromSignalExternalWorkflowExecutionFailedCause ::
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

pattern SignalExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: SignalExternalWorkflowExecutionFailedCause
pattern SignalExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = SignalExternalWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern SignalExternalWorkflowExecutionFailedCauseSIGNALEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED :: SignalExternalWorkflowExecutionFailedCause
pattern SignalExternalWorkflowExecutionFailedCauseSIGNALEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED = SignalExternalWorkflowExecutionFailedCause' "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern SignalExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION :: SignalExternalWorkflowExecutionFailedCause
pattern SignalExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION = SignalExternalWorkflowExecutionFailedCause' "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

{-# COMPLETE
  SignalExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  SignalExternalWorkflowExecutionFailedCauseSIGNALEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED,
  SignalExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION,
  SignalExternalWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText SignalExternalWorkflowExecutionFailedCause where
  parser = SignalExternalWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText SignalExternalWorkflowExecutionFailedCause where
  toText (SignalExternalWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable SignalExternalWorkflowExecutionFailedCause

instance Prelude.NFData SignalExternalWorkflowExecutionFailedCause

instance Prelude.ToByteString SignalExternalWorkflowExecutionFailedCause

instance Prelude.ToQuery SignalExternalWorkflowExecutionFailedCause

instance Prelude.ToHeader SignalExternalWorkflowExecutionFailedCause

instance Prelude.FromJSON SignalExternalWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "SignalExternalWorkflowExecutionFailedCause"

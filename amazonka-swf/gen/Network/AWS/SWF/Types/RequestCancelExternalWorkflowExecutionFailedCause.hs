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
-- Module      : Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
  ( RequestCancelExternalWorkflowExecutionFailedCause
      ( ..,
        RequestCancelExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        RequestCancelExternalWorkflowExecutionFailedCauseREQUESTCANCELEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED,
        RequestCancelExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequestCancelExternalWorkflowExecutionFailedCause = RequestCancelExternalWorkflowExecutionFailedCause'
  { fromRequestCancelExternalWorkflowExecutionFailedCause ::
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

pattern RequestCancelExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RequestCancelExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = RequestCancelExternalWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern RequestCancelExternalWorkflowExecutionFailedCauseREQUESTCANCELEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RequestCancelExternalWorkflowExecutionFailedCauseREQUESTCANCELEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED = RequestCancelExternalWorkflowExecutionFailedCause' "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern RequestCancelExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RequestCancelExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION = RequestCancelExternalWorkflowExecutionFailedCause' "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

{-# COMPLETE
  RequestCancelExternalWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  RequestCancelExternalWorkflowExecutionFailedCauseREQUESTCANCELEXTERNALWORKFLOWEXECUTIONRATEEXCEEDED,
  RequestCancelExternalWorkflowExecutionFailedCauseUNKNOWNEXTERNALWORKFLOWEXECUTION,
  RequestCancelExternalWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText RequestCancelExternalWorkflowExecutionFailedCause where
  parser = RequestCancelExternalWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequestCancelExternalWorkflowExecutionFailedCause where
  toText (RequestCancelExternalWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable RequestCancelExternalWorkflowExecutionFailedCause

instance Prelude.NFData RequestCancelExternalWorkflowExecutionFailedCause

instance Prelude.ToByteString RequestCancelExternalWorkflowExecutionFailedCause

instance Prelude.ToQuery RequestCancelExternalWorkflowExecutionFailedCause

instance Prelude.ToHeader RequestCancelExternalWorkflowExecutionFailedCause

instance Prelude.FromJSON RequestCancelExternalWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "RequestCancelExternalWorkflowExecutionFailedCause"

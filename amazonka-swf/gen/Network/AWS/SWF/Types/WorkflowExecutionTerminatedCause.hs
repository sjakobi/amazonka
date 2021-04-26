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
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionTerminatedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionTerminatedCause
  ( WorkflowExecutionTerminatedCause
      ( ..,
        WorkflowExecutionTerminatedCauseCHILDPOLICYAPPLIED,
        WorkflowExecutionTerminatedCauseEVENTLIMITEXCEEDED,
        WorkflowExecutionTerminatedCauseOPERATORINITIATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkflowExecutionTerminatedCause = WorkflowExecutionTerminatedCause'
  { fromWorkflowExecutionTerminatedCause ::
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

pattern WorkflowExecutionTerminatedCauseCHILDPOLICYAPPLIED :: WorkflowExecutionTerminatedCause
pattern WorkflowExecutionTerminatedCauseCHILDPOLICYAPPLIED = WorkflowExecutionTerminatedCause' "CHILD_POLICY_APPLIED"

pattern WorkflowExecutionTerminatedCauseEVENTLIMITEXCEEDED :: WorkflowExecutionTerminatedCause
pattern WorkflowExecutionTerminatedCauseEVENTLIMITEXCEEDED = WorkflowExecutionTerminatedCause' "EVENT_LIMIT_EXCEEDED"

pattern WorkflowExecutionTerminatedCauseOPERATORINITIATED :: WorkflowExecutionTerminatedCause
pattern WorkflowExecutionTerminatedCauseOPERATORINITIATED = WorkflowExecutionTerminatedCause' "OPERATOR_INITIATED"

{-# COMPLETE
  WorkflowExecutionTerminatedCauseCHILDPOLICYAPPLIED,
  WorkflowExecutionTerminatedCauseEVENTLIMITEXCEEDED,
  WorkflowExecutionTerminatedCauseOPERATORINITIATED,
  WorkflowExecutionTerminatedCause'
  #-}

instance Prelude.FromText WorkflowExecutionTerminatedCause where
  parser = WorkflowExecutionTerminatedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkflowExecutionTerminatedCause where
  toText (WorkflowExecutionTerminatedCause' x) = x

instance Prelude.Hashable WorkflowExecutionTerminatedCause

instance Prelude.NFData WorkflowExecutionTerminatedCause

instance Prelude.ToByteString WorkflowExecutionTerminatedCause

instance Prelude.ToQuery WorkflowExecutionTerminatedCause

instance Prelude.ToHeader WorkflowExecutionTerminatedCause

instance Prelude.FromJSON WorkflowExecutionTerminatedCause where
  parseJSON = Prelude.parseJSONText "WorkflowExecutionTerminatedCause"

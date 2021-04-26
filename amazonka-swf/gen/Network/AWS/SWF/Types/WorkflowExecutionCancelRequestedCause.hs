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
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause
  ( WorkflowExecutionCancelRequestedCause
      ( ..,
        WorkflowExecutionCancelRequestedCauseCHILDPOLICYAPPLIED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkflowExecutionCancelRequestedCause = WorkflowExecutionCancelRequestedCause'
  { fromWorkflowExecutionCancelRequestedCause ::
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

pattern WorkflowExecutionCancelRequestedCauseCHILDPOLICYAPPLIED :: WorkflowExecutionCancelRequestedCause
pattern WorkflowExecutionCancelRequestedCauseCHILDPOLICYAPPLIED = WorkflowExecutionCancelRequestedCause' "CHILD_POLICY_APPLIED"

{-# COMPLETE
  WorkflowExecutionCancelRequestedCauseCHILDPOLICYAPPLIED,
  WorkflowExecutionCancelRequestedCause'
  #-}

instance Prelude.FromText WorkflowExecutionCancelRequestedCause where
  parser = WorkflowExecutionCancelRequestedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkflowExecutionCancelRequestedCause where
  toText (WorkflowExecutionCancelRequestedCause' x) = x

instance Prelude.Hashable WorkflowExecutionCancelRequestedCause

instance Prelude.NFData WorkflowExecutionCancelRequestedCause

instance Prelude.ToByteString WorkflowExecutionCancelRequestedCause

instance Prelude.ToQuery WorkflowExecutionCancelRequestedCause

instance Prelude.ToHeader WorkflowExecutionCancelRequestedCause

instance Prelude.FromJSON WorkflowExecutionCancelRequestedCause where
  parseJSON = Prelude.parseJSONText "WorkflowExecutionCancelRequestedCause"

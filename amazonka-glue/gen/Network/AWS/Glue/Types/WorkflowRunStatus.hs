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
-- Module      : Network.AWS.Glue.Types.WorkflowRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.WorkflowRunStatus
  ( WorkflowRunStatus
      ( ..,
        WorkflowRunStatusCOMPLETED,
        WorkflowRunStatusERROR,
        WorkflowRunStatusRUNNING,
        WorkflowRunStatusSTOPPED,
        WorkflowRunStatusSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkflowRunStatus = WorkflowRunStatus'
  { fromWorkflowRunStatus ::
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

pattern WorkflowRunStatusCOMPLETED :: WorkflowRunStatus
pattern WorkflowRunStatusCOMPLETED = WorkflowRunStatus' "COMPLETED"

pattern WorkflowRunStatusERROR :: WorkflowRunStatus
pattern WorkflowRunStatusERROR = WorkflowRunStatus' "ERROR"

pattern WorkflowRunStatusRUNNING :: WorkflowRunStatus
pattern WorkflowRunStatusRUNNING = WorkflowRunStatus' "RUNNING"

pattern WorkflowRunStatusSTOPPED :: WorkflowRunStatus
pattern WorkflowRunStatusSTOPPED = WorkflowRunStatus' "STOPPED"

pattern WorkflowRunStatusSTOPPING :: WorkflowRunStatus
pattern WorkflowRunStatusSTOPPING = WorkflowRunStatus' "STOPPING"

{-# COMPLETE
  WorkflowRunStatusCOMPLETED,
  WorkflowRunStatusERROR,
  WorkflowRunStatusRUNNING,
  WorkflowRunStatusSTOPPED,
  WorkflowRunStatusSTOPPING,
  WorkflowRunStatus'
  #-}

instance Prelude.FromText WorkflowRunStatus where
  parser = WorkflowRunStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkflowRunStatus where
  toText (WorkflowRunStatus' x) = x

instance Prelude.Hashable WorkflowRunStatus

instance Prelude.NFData WorkflowRunStatus

instance Prelude.ToByteString WorkflowRunStatus

instance Prelude.ToQuery WorkflowRunStatus

instance Prelude.ToHeader WorkflowRunStatus

instance Prelude.FromJSON WorkflowRunStatus where
  parseJSON = Prelude.parseJSONText "WorkflowRunStatus"

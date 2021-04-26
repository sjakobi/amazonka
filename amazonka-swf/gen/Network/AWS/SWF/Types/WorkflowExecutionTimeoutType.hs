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
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionTimeoutType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionTimeoutType
  ( WorkflowExecutionTimeoutType
      ( ..,
        WorkflowExecutionTimeoutTypeSTARTTOCLOSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkflowExecutionTimeoutType = WorkflowExecutionTimeoutType'
  { fromWorkflowExecutionTimeoutType ::
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

pattern WorkflowExecutionTimeoutTypeSTARTTOCLOSE :: WorkflowExecutionTimeoutType
pattern WorkflowExecutionTimeoutTypeSTARTTOCLOSE = WorkflowExecutionTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  WorkflowExecutionTimeoutTypeSTARTTOCLOSE,
  WorkflowExecutionTimeoutType'
  #-}

instance Prelude.FromText WorkflowExecutionTimeoutType where
  parser = WorkflowExecutionTimeoutType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkflowExecutionTimeoutType where
  toText (WorkflowExecutionTimeoutType' x) = x

instance Prelude.Hashable WorkflowExecutionTimeoutType

instance Prelude.NFData WorkflowExecutionTimeoutType

instance Prelude.ToByteString WorkflowExecutionTimeoutType

instance Prelude.ToQuery WorkflowExecutionTimeoutType

instance Prelude.ToHeader WorkflowExecutionTimeoutType

instance Prelude.FromJSON WorkflowExecutionTimeoutType where
  parseJSON = Prelude.parseJSONText "WorkflowExecutionTimeoutType"

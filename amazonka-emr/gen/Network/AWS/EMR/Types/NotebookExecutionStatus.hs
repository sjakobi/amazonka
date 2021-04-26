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
-- Module      : Network.AWS.EMR.Types.NotebookExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.NotebookExecutionStatus
  ( NotebookExecutionStatus
      ( ..,
        NotebookExecutionStatusFAILED,
        NotebookExecutionStatusFAILING,
        NotebookExecutionStatusFINISHED,
        NotebookExecutionStatusFINISHING,
        NotebookExecutionStatusRUNNING,
        NotebookExecutionStatusSTARTING,
        NotebookExecutionStatusSTARTPENDING,
        NotebookExecutionStatusSTOPPED,
        NotebookExecutionStatusSTOPPENDING,
        NotebookExecutionStatusSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookExecutionStatus = NotebookExecutionStatus'
  { fromNotebookExecutionStatus ::
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

pattern NotebookExecutionStatusFAILED :: NotebookExecutionStatus
pattern NotebookExecutionStatusFAILED = NotebookExecutionStatus' "FAILED"

pattern NotebookExecutionStatusFAILING :: NotebookExecutionStatus
pattern NotebookExecutionStatusFAILING = NotebookExecutionStatus' "FAILING"

pattern NotebookExecutionStatusFINISHED :: NotebookExecutionStatus
pattern NotebookExecutionStatusFINISHED = NotebookExecutionStatus' "FINISHED"

pattern NotebookExecutionStatusFINISHING :: NotebookExecutionStatus
pattern NotebookExecutionStatusFINISHING = NotebookExecutionStatus' "FINISHING"

pattern NotebookExecutionStatusRUNNING :: NotebookExecutionStatus
pattern NotebookExecutionStatusRUNNING = NotebookExecutionStatus' "RUNNING"

pattern NotebookExecutionStatusSTARTING :: NotebookExecutionStatus
pattern NotebookExecutionStatusSTARTING = NotebookExecutionStatus' "STARTING"

pattern NotebookExecutionStatusSTARTPENDING :: NotebookExecutionStatus
pattern NotebookExecutionStatusSTARTPENDING = NotebookExecutionStatus' "START_PENDING"

pattern NotebookExecutionStatusSTOPPED :: NotebookExecutionStatus
pattern NotebookExecutionStatusSTOPPED = NotebookExecutionStatus' "STOPPED"

pattern NotebookExecutionStatusSTOPPENDING :: NotebookExecutionStatus
pattern NotebookExecutionStatusSTOPPENDING = NotebookExecutionStatus' "STOP_PENDING"

pattern NotebookExecutionStatusSTOPPING :: NotebookExecutionStatus
pattern NotebookExecutionStatusSTOPPING = NotebookExecutionStatus' "STOPPING"

{-# COMPLETE
  NotebookExecutionStatusFAILED,
  NotebookExecutionStatusFAILING,
  NotebookExecutionStatusFINISHED,
  NotebookExecutionStatusFINISHING,
  NotebookExecutionStatusRUNNING,
  NotebookExecutionStatusSTARTING,
  NotebookExecutionStatusSTARTPENDING,
  NotebookExecutionStatusSTOPPED,
  NotebookExecutionStatusSTOPPENDING,
  NotebookExecutionStatusSTOPPING,
  NotebookExecutionStatus'
  #-}

instance Prelude.FromText NotebookExecutionStatus where
  parser = NotebookExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookExecutionStatus where
  toText (NotebookExecutionStatus' x) = x

instance Prelude.Hashable NotebookExecutionStatus

instance Prelude.NFData NotebookExecutionStatus

instance Prelude.ToByteString NotebookExecutionStatus

instance Prelude.ToQuery NotebookExecutionStatus

instance Prelude.ToHeader NotebookExecutionStatus

instance Prelude.ToJSON NotebookExecutionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotebookExecutionStatus where
  parseJSON = Prelude.parseJSONText "NotebookExecutionStatus"

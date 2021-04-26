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
-- Module      : Network.AWS.Glue.Types.TaskStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskStatusType
  ( TaskStatusType
      ( ..,
        TaskStatusTypeFAILED,
        TaskStatusTypeRUNNING,
        TaskStatusTypeSTARTING,
        TaskStatusTypeSTOPPED,
        TaskStatusTypeSTOPPING,
        TaskStatusTypeSUCCEEDED,
        TaskStatusTypeTIMEOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskStatusType = TaskStatusType'
  { fromTaskStatusType ::
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

pattern TaskStatusTypeFAILED :: TaskStatusType
pattern TaskStatusTypeFAILED = TaskStatusType' "FAILED"

pattern TaskStatusTypeRUNNING :: TaskStatusType
pattern TaskStatusTypeRUNNING = TaskStatusType' "RUNNING"

pattern TaskStatusTypeSTARTING :: TaskStatusType
pattern TaskStatusTypeSTARTING = TaskStatusType' "STARTING"

pattern TaskStatusTypeSTOPPED :: TaskStatusType
pattern TaskStatusTypeSTOPPED = TaskStatusType' "STOPPED"

pattern TaskStatusTypeSTOPPING :: TaskStatusType
pattern TaskStatusTypeSTOPPING = TaskStatusType' "STOPPING"

pattern TaskStatusTypeSUCCEEDED :: TaskStatusType
pattern TaskStatusTypeSUCCEEDED = TaskStatusType' "SUCCEEDED"

pattern TaskStatusTypeTIMEOUT :: TaskStatusType
pattern TaskStatusTypeTIMEOUT = TaskStatusType' "TIMEOUT"

{-# COMPLETE
  TaskStatusTypeFAILED,
  TaskStatusTypeRUNNING,
  TaskStatusTypeSTARTING,
  TaskStatusTypeSTOPPED,
  TaskStatusTypeSTOPPING,
  TaskStatusTypeSUCCEEDED,
  TaskStatusTypeTIMEOUT,
  TaskStatusType'
  #-}

instance Prelude.FromText TaskStatusType where
  parser = TaskStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskStatusType where
  toText (TaskStatusType' x) = x

instance Prelude.Hashable TaskStatusType

instance Prelude.NFData TaskStatusType

instance Prelude.ToByteString TaskStatusType

instance Prelude.ToQuery TaskStatusType

instance Prelude.ToHeader TaskStatusType

instance Prelude.ToJSON TaskStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TaskStatusType where
  parseJSON = Prelude.parseJSONText "TaskStatusType"

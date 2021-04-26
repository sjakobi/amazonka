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
-- Module      : Network.AWS.DataPipeline.Types.TaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.TaskStatus
  ( TaskStatus
      ( ..,
        TaskStatusFAILED,
        TaskStatusFALSE,
        TaskStatusFINISHED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskStatus = TaskStatus'
  { fromTaskStatus ::
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

pattern TaskStatusFAILED :: TaskStatus
pattern TaskStatusFAILED = TaskStatus' "FAILED"

pattern TaskStatusFALSE :: TaskStatus
pattern TaskStatusFALSE = TaskStatus' "FALSE"

pattern TaskStatusFINISHED :: TaskStatus
pattern TaskStatusFINISHED = TaskStatus' "FINISHED"

{-# COMPLETE
  TaskStatusFAILED,
  TaskStatusFALSE,
  TaskStatusFINISHED,
  TaskStatus'
  #-}

instance Prelude.FromText TaskStatus where
  parser = TaskStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskStatus where
  toText (TaskStatus' x) = x

instance Prelude.Hashable TaskStatus

instance Prelude.NFData TaskStatus

instance Prelude.ToByteString TaskStatus

instance Prelude.ToQuery TaskStatus

instance Prelude.ToHeader TaskStatus

instance Prelude.ToJSON TaskStatus where
  toJSON = Prelude.toJSONText

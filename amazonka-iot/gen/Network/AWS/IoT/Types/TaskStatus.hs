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
-- Module      : Network.AWS.IoT.Types.TaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TaskStatus
  ( TaskStatus
      ( ..,
        TaskStatusCancelled,
        TaskStatusCancelling,
        TaskStatusCompleted,
        TaskStatusFailed,
        TaskStatusInProgress
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

pattern TaskStatusCancelled :: TaskStatus
pattern TaskStatusCancelled = TaskStatus' "Cancelled"

pattern TaskStatusCancelling :: TaskStatus
pattern TaskStatusCancelling = TaskStatus' "Cancelling"

pattern TaskStatusCompleted :: TaskStatus
pattern TaskStatusCompleted = TaskStatus' "Completed"

pattern TaskStatusFailed :: TaskStatus
pattern TaskStatusFailed = TaskStatus' "Failed"

pattern TaskStatusInProgress :: TaskStatus
pattern TaskStatusInProgress = TaskStatus' "InProgress"

{-# COMPLETE
  TaskStatusCancelled,
  TaskStatusCancelling,
  TaskStatusCompleted,
  TaskStatusFailed,
  TaskStatusInProgress,
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

instance Prelude.FromJSON TaskStatus where
  parseJSON = Prelude.parseJSONText "TaskStatus"

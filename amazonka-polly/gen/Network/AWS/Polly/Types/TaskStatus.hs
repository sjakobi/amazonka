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
-- Module      : Network.AWS.Polly.Types.TaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.TaskStatus
  ( TaskStatus
      ( ..,
        TaskStatusCompleted,
        TaskStatusFailed,
        TaskStatusInProgress,
        TaskStatusScheduled
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

pattern TaskStatusCompleted :: TaskStatus
pattern TaskStatusCompleted = TaskStatus' "completed"

pattern TaskStatusFailed :: TaskStatus
pattern TaskStatusFailed = TaskStatus' "failed"

pattern TaskStatusInProgress :: TaskStatus
pattern TaskStatusInProgress = TaskStatus' "inProgress"

pattern TaskStatusScheduled :: TaskStatus
pattern TaskStatusScheduled = TaskStatus' "scheduled"

{-# COMPLETE
  TaskStatusCompleted,
  TaskStatusFailed,
  TaskStatusInProgress,
  TaskStatusScheduled,
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

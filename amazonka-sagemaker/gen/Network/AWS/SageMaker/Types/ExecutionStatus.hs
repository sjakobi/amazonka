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
-- Module      : Network.AWS.SageMaker.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ExecutionStatusCompleted,
        ExecutionStatusCompletedWithViolations,
        ExecutionStatusFailed,
        ExecutionStatusInProgress,
        ExecutionStatusPending,
        ExecutionStatusStopped,
        ExecutionStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionStatus = ExecutionStatus'
  { fromExecutionStatus ::
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

pattern ExecutionStatusCompleted :: ExecutionStatus
pattern ExecutionStatusCompleted = ExecutionStatus' "Completed"

pattern ExecutionStatusCompletedWithViolations :: ExecutionStatus
pattern ExecutionStatusCompletedWithViolations = ExecutionStatus' "CompletedWithViolations"

pattern ExecutionStatusFailed :: ExecutionStatus
pattern ExecutionStatusFailed = ExecutionStatus' "Failed"

pattern ExecutionStatusInProgress :: ExecutionStatus
pattern ExecutionStatusInProgress = ExecutionStatus' "InProgress"

pattern ExecutionStatusPending :: ExecutionStatus
pattern ExecutionStatusPending = ExecutionStatus' "Pending"

pattern ExecutionStatusStopped :: ExecutionStatus
pattern ExecutionStatusStopped = ExecutionStatus' "Stopped"

pattern ExecutionStatusStopping :: ExecutionStatus
pattern ExecutionStatusStopping = ExecutionStatus' "Stopping"

{-# COMPLETE
  ExecutionStatusCompleted,
  ExecutionStatusCompletedWithViolations,
  ExecutionStatusFailed,
  ExecutionStatusInProgress,
  ExecutionStatusPending,
  ExecutionStatusStopped,
  ExecutionStatusStopping,
  ExecutionStatus'
  #-}

instance Prelude.FromText ExecutionStatus where
  parser = ExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionStatus where
  toText (ExecutionStatus' x) = x

instance Prelude.Hashable ExecutionStatus

instance Prelude.NFData ExecutionStatus

instance Prelude.ToByteString ExecutionStatus

instance Prelude.ToQuery ExecutionStatus

instance Prelude.ToHeader ExecutionStatus

instance Prelude.ToJSON ExecutionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExecutionStatus where
  parseJSON = Prelude.parseJSONText "ExecutionStatus"

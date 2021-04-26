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
-- Module      : Network.AWS.CodePipeline.Types.StageExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageExecutionStatus
  ( StageExecutionStatus
      ( ..,
        StageExecutionStatusCancelled,
        StageExecutionStatusFailed,
        StageExecutionStatusInProgress,
        StageExecutionStatusStopped,
        StageExecutionStatusStopping,
        StageExecutionStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StageExecutionStatus = StageExecutionStatus'
  { fromStageExecutionStatus ::
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

pattern StageExecutionStatusCancelled :: StageExecutionStatus
pattern StageExecutionStatusCancelled = StageExecutionStatus' "Cancelled"

pattern StageExecutionStatusFailed :: StageExecutionStatus
pattern StageExecutionStatusFailed = StageExecutionStatus' "Failed"

pattern StageExecutionStatusInProgress :: StageExecutionStatus
pattern StageExecutionStatusInProgress = StageExecutionStatus' "InProgress"

pattern StageExecutionStatusStopped :: StageExecutionStatus
pattern StageExecutionStatusStopped = StageExecutionStatus' "Stopped"

pattern StageExecutionStatusStopping :: StageExecutionStatus
pattern StageExecutionStatusStopping = StageExecutionStatus' "Stopping"

pattern StageExecutionStatusSucceeded :: StageExecutionStatus
pattern StageExecutionStatusSucceeded = StageExecutionStatus' "Succeeded"

{-# COMPLETE
  StageExecutionStatusCancelled,
  StageExecutionStatusFailed,
  StageExecutionStatusInProgress,
  StageExecutionStatusStopped,
  StageExecutionStatusStopping,
  StageExecutionStatusSucceeded,
  StageExecutionStatus'
  #-}

instance Prelude.FromText StageExecutionStatus where
  parser = StageExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StageExecutionStatus where
  toText (StageExecutionStatus' x) = x

instance Prelude.Hashable StageExecutionStatus

instance Prelude.NFData StageExecutionStatus

instance Prelude.ToByteString StageExecutionStatus

instance Prelude.ToQuery StageExecutionStatus

instance Prelude.ToHeader StageExecutionStatus

instance Prelude.FromJSON StageExecutionStatus where
  parseJSON = Prelude.parseJSONText "StageExecutionStatus"

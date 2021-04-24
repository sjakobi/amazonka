{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        WRSCompleted,
        WRSError',
        WRSRunning,
        WRSStopped,
        WRSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkflowRunStatus = WorkflowRunStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WRSCompleted :: WorkflowRunStatus
pattern WRSCompleted = WorkflowRunStatus' "COMPLETED"

pattern WRSError' :: WorkflowRunStatus
pattern WRSError' = WorkflowRunStatus' "ERROR"

pattern WRSRunning :: WorkflowRunStatus
pattern WRSRunning = WorkflowRunStatus' "RUNNING"

pattern WRSStopped :: WorkflowRunStatus
pattern WRSStopped = WorkflowRunStatus' "STOPPED"

pattern WRSStopping :: WorkflowRunStatus
pattern WRSStopping = WorkflowRunStatus' "STOPPING"

{-# COMPLETE
  WRSCompleted,
  WRSError',
  WRSRunning,
  WRSStopped,
  WRSStopping,
  WorkflowRunStatus'
  #-}

instance FromText WorkflowRunStatus where
  parser = (WorkflowRunStatus' . mk) <$> takeText

instance ToText WorkflowRunStatus where
  toText (WorkflowRunStatus' ci) = original ci

instance Hashable WorkflowRunStatus

instance NFData WorkflowRunStatus

instance ToByteString WorkflowRunStatus

instance ToQuery WorkflowRunStatus

instance ToHeader WorkflowRunStatus

instance FromJSON WorkflowRunStatus where
  parseJSON = parseJSONText "WorkflowRunStatus"

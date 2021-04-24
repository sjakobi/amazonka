{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        NESFailed,
        NESFailing,
        NESFinished,
        NESFinishing,
        NESRunning,
        NESStartPending,
        NESStarting,
        NESStopPending,
        NESStopped,
        NESStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotebookExecutionStatus
  = NotebookExecutionStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NESFailed :: NotebookExecutionStatus
pattern NESFailed = NotebookExecutionStatus' "FAILED"

pattern NESFailing :: NotebookExecutionStatus
pattern NESFailing = NotebookExecutionStatus' "FAILING"

pattern NESFinished :: NotebookExecutionStatus
pattern NESFinished = NotebookExecutionStatus' "FINISHED"

pattern NESFinishing :: NotebookExecutionStatus
pattern NESFinishing = NotebookExecutionStatus' "FINISHING"

pattern NESRunning :: NotebookExecutionStatus
pattern NESRunning = NotebookExecutionStatus' "RUNNING"

pattern NESStartPending :: NotebookExecutionStatus
pattern NESStartPending = NotebookExecutionStatus' "START_PENDING"

pattern NESStarting :: NotebookExecutionStatus
pattern NESStarting = NotebookExecutionStatus' "STARTING"

pattern NESStopPending :: NotebookExecutionStatus
pattern NESStopPending = NotebookExecutionStatus' "STOP_PENDING"

pattern NESStopped :: NotebookExecutionStatus
pattern NESStopped = NotebookExecutionStatus' "STOPPED"

pattern NESStopping :: NotebookExecutionStatus
pattern NESStopping = NotebookExecutionStatus' "STOPPING"

{-# COMPLETE
  NESFailed,
  NESFailing,
  NESFinished,
  NESFinishing,
  NESRunning,
  NESStartPending,
  NESStarting,
  NESStopPending,
  NESStopped,
  NESStopping,
  NotebookExecutionStatus'
  #-}

instance FromText NotebookExecutionStatus where
  parser = (NotebookExecutionStatus' . mk) <$> takeText

instance ToText NotebookExecutionStatus where
  toText (NotebookExecutionStatus' ci) = original ci

instance Hashable NotebookExecutionStatus

instance NFData NotebookExecutionStatus

instance ToByteString NotebookExecutionStatus

instance ToQuery NotebookExecutionStatus

instance ToHeader NotebookExecutionStatus

instance ToJSON NotebookExecutionStatus where
  toJSON = toJSONText

instance FromJSON NotebookExecutionStatus where
  parseJSON = parseJSONText "NotebookExecutionStatus"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobExecutionStatus
  ( JobExecutionStatus
      ( ..,
        JESCanceled,
        JESFailed,
        JESInProgress,
        JESQueued,
        JESRejected,
        JESRemoved,
        JESSucceeded,
        JESTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobExecutionStatus
  = JobExecutionStatus'
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

pattern JESCanceled :: JobExecutionStatus
pattern JESCanceled = JobExecutionStatus' "CANCELED"

pattern JESFailed :: JobExecutionStatus
pattern JESFailed = JobExecutionStatus' "FAILED"

pattern JESInProgress :: JobExecutionStatus
pattern JESInProgress = JobExecutionStatus' "IN_PROGRESS"

pattern JESQueued :: JobExecutionStatus
pattern JESQueued = JobExecutionStatus' "QUEUED"

pattern JESRejected :: JobExecutionStatus
pattern JESRejected = JobExecutionStatus' "REJECTED"

pattern JESRemoved :: JobExecutionStatus
pattern JESRemoved = JobExecutionStatus' "REMOVED"

pattern JESSucceeded :: JobExecutionStatus
pattern JESSucceeded = JobExecutionStatus' "SUCCEEDED"

pattern JESTimedOut :: JobExecutionStatus
pattern JESTimedOut = JobExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  JESCanceled,
  JESFailed,
  JESInProgress,
  JESQueued,
  JESRejected,
  JESRemoved,
  JESSucceeded,
  JESTimedOut,
  JobExecutionStatus'
  #-}

instance FromText JobExecutionStatus where
  parser = (JobExecutionStatus' . mk) <$> takeText

instance ToText JobExecutionStatus where
  toText (JobExecutionStatus' ci) = original ci

instance Hashable JobExecutionStatus

instance NFData JobExecutionStatus

instance ToByteString JobExecutionStatus

instance ToQuery JobExecutionStatus

instance ToHeader JobExecutionStatus

instance ToJSON JobExecutionStatus where
  toJSON = toJSONText

instance FromJSON JobExecutionStatus where
  parseJSON = parseJSONText "JobExecutionStatus"

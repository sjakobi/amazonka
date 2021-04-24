{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTJobsData.Types.JobExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTJobsData.Types.JobExecutionStatus
  ( JobExecutionStatus
      ( ..,
        Canceled,
        Failed,
        InProgress,
        Queued,
        Rejected,
        Removed,
        Succeeded,
        TimedOut
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

pattern Canceled :: JobExecutionStatus
pattern Canceled = JobExecutionStatus' "CANCELED"

pattern Failed :: JobExecutionStatus
pattern Failed = JobExecutionStatus' "FAILED"

pattern InProgress :: JobExecutionStatus
pattern InProgress = JobExecutionStatus' "IN_PROGRESS"

pattern Queued :: JobExecutionStatus
pattern Queued = JobExecutionStatus' "QUEUED"

pattern Rejected :: JobExecutionStatus
pattern Rejected = JobExecutionStatus' "REJECTED"

pattern Removed :: JobExecutionStatus
pattern Removed = JobExecutionStatus' "REMOVED"

pattern Succeeded :: JobExecutionStatus
pattern Succeeded = JobExecutionStatus' "SUCCEEDED"

pattern TimedOut :: JobExecutionStatus
pattern TimedOut = JobExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  Canceled,
  Failed,
  InProgress,
  Queued,
  Rejected,
  Removed,
  Succeeded,
  TimedOut,
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

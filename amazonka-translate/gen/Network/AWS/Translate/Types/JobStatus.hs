{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.JobStatus
  ( JobStatus
      ( ..,
        Completed,
        CompletedWithError,
        Failed,
        InProgress,
        StopRequested,
        Stopped,
        Submitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data JobStatus = JobStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Completed :: JobStatus
pattern Completed = JobStatus' "COMPLETED"

pattern CompletedWithError :: JobStatus
pattern CompletedWithError = JobStatus' "COMPLETED_WITH_ERROR"

pattern Failed :: JobStatus
pattern Failed = JobStatus' "FAILED"

pattern InProgress :: JobStatus
pattern InProgress = JobStatus' "IN_PROGRESS"

pattern StopRequested :: JobStatus
pattern StopRequested = JobStatus' "STOP_REQUESTED"

pattern Stopped :: JobStatus
pattern Stopped = JobStatus' "STOPPED"

pattern Submitted :: JobStatus
pattern Submitted = JobStatus' "SUBMITTED"

{-# COMPLETE
  Completed,
  CompletedWithError,
  Failed,
  InProgress,
  StopRequested,
  Stopped,
  Submitted,
  JobStatus'
  #-}

instance FromText JobStatus where
  parser = (JobStatus' . mk) <$> takeText

instance ToText JobStatus where
  toText (JobStatus' ci) = original ci

instance Hashable JobStatus

instance NFData JobStatus

instance ToByteString JobStatus

instance ToQuery JobStatus

instance ToHeader JobStatus

instance ToJSON JobStatus where
  toJSON = toJSONText

instance FromJSON JobStatus where
  parseJSON = parseJSONText "JobStatus"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JobStatus
  ( JobStatus
      ( ..,
        Completed,
        Completing,
        Created,
        Failed,
        Failing,
        Initializing,
        PendingJob,
        PreparingForInitialization,
        Processing
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

pattern Completing :: JobStatus
pattern Completing = JobStatus' "COMPLETING"

pattern Created :: JobStatus
pattern Created = JobStatus' "CREATED"

pattern Failed :: JobStatus
pattern Failed = JobStatus' "FAILED"

pattern Failing :: JobStatus
pattern Failing = JobStatus' "FAILING"

pattern Initializing :: JobStatus
pattern Initializing = JobStatus' "INITIALIZING"

pattern PendingJob :: JobStatus
pattern PendingJob = JobStatus' "PENDING_JOB"

pattern PreparingForInitialization :: JobStatus
pattern PreparingForInitialization = JobStatus' "PREPARING_FOR_INITIALIZATION"

pattern Processing :: JobStatus
pattern Processing = JobStatus' "PROCESSING"

{-# COMPLETE
  Completed,
  Completing,
  Created,
  Failed,
  Failing,
  Initializing,
  PendingJob,
  PreparingForInitialization,
  Processing,
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

instance FromJSON JobStatus where
  parseJSON = parseJSONText "JobStatus"

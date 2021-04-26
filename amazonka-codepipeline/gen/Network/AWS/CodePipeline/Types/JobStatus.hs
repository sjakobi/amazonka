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
-- Module      : Network.AWS.CodePipeline.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatusCreated,
        JobStatusDispatched,
        JobStatusFailed,
        JobStatusInProgress,
        JobStatusQueued,
        JobStatusSucceeded,
        JobStatusTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobStatus = JobStatus'
  { fromJobStatus ::
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

pattern JobStatusCreated :: JobStatus
pattern JobStatusCreated = JobStatus' "Created"

pattern JobStatusDispatched :: JobStatus
pattern JobStatusDispatched = JobStatus' "Dispatched"

pattern JobStatusFailed :: JobStatus
pattern JobStatusFailed = JobStatus' "Failed"

pattern JobStatusInProgress :: JobStatus
pattern JobStatusInProgress = JobStatus' "InProgress"

pattern JobStatusQueued :: JobStatus
pattern JobStatusQueued = JobStatus' "Queued"

pattern JobStatusSucceeded :: JobStatus
pattern JobStatusSucceeded = JobStatus' "Succeeded"

pattern JobStatusTimedOut :: JobStatus
pattern JobStatusTimedOut = JobStatus' "TimedOut"

{-# COMPLETE
  JobStatusCreated,
  JobStatusDispatched,
  JobStatusFailed,
  JobStatusInProgress,
  JobStatusQueued,
  JobStatusSucceeded,
  JobStatusTimedOut,
  JobStatus'
  #-}

instance Prelude.FromText JobStatus where
  parser = JobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobStatus where
  toText (JobStatus' x) = x

instance Prelude.Hashable JobStatus

instance Prelude.NFData JobStatus

instance Prelude.ToByteString JobStatus

instance Prelude.ToQuery JobStatus

instance Prelude.ToHeader JobStatus

instance Prelude.FromJSON JobStatus where
  parseJSON = Prelude.parseJSONText "JobStatus"

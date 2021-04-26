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
-- Module      : Network.AWS.Pinpoint.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatusCOMPLETED,
        JobStatusCOMPLETING,
        JobStatusCREATED,
        JobStatusFAILED,
        JobStatusFAILING,
        JobStatusINITIALIZING,
        JobStatusPENDINGJOB,
        JobStatusPREPARINGFORINITIALIZATION,
        JobStatusPROCESSING
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

pattern JobStatusCOMPLETED :: JobStatus
pattern JobStatusCOMPLETED = JobStatus' "COMPLETED"

pattern JobStatusCOMPLETING :: JobStatus
pattern JobStatusCOMPLETING = JobStatus' "COMPLETING"

pattern JobStatusCREATED :: JobStatus
pattern JobStatusCREATED = JobStatus' "CREATED"

pattern JobStatusFAILED :: JobStatus
pattern JobStatusFAILED = JobStatus' "FAILED"

pattern JobStatusFAILING :: JobStatus
pattern JobStatusFAILING = JobStatus' "FAILING"

pattern JobStatusINITIALIZING :: JobStatus
pattern JobStatusINITIALIZING = JobStatus' "INITIALIZING"

pattern JobStatusPENDINGJOB :: JobStatus
pattern JobStatusPENDINGJOB = JobStatus' "PENDING_JOB"

pattern JobStatusPREPARINGFORINITIALIZATION :: JobStatus
pattern JobStatusPREPARINGFORINITIALIZATION = JobStatus' "PREPARING_FOR_INITIALIZATION"

pattern JobStatusPROCESSING :: JobStatus
pattern JobStatusPROCESSING = JobStatus' "PROCESSING"

{-# COMPLETE
  JobStatusCOMPLETED,
  JobStatusCOMPLETING,
  JobStatusCREATED,
  JobStatusFAILED,
  JobStatusFAILING,
  JobStatusINITIALIZING,
  JobStatusPENDINGJOB,
  JobStatusPREPARINGFORINITIALIZATION,
  JobStatusPROCESSING,
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

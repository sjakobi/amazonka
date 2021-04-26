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
-- Module      : Network.AWS.Batch.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatusFAILED,
        JobStatusPENDING,
        JobStatusRUNNABLE,
        JobStatusRUNNING,
        JobStatusSTARTING,
        JobStatusSUBMITTED,
        JobStatusSUCCEEDED
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

pattern JobStatusFAILED :: JobStatus
pattern JobStatusFAILED = JobStatus' "FAILED"

pattern JobStatusPENDING :: JobStatus
pattern JobStatusPENDING = JobStatus' "PENDING"

pattern JobStatusRUNNABLE :: JobStatus
pattern JobStatusRUNNABLE = JobStatus' "RUNNABLE"

pattern JobStatusRUNNING :: JobStatus
pattern JobStatusRUNNING = JobStatus' "RUNNING"

pattern JobStatusSTARTING :: JobStatus
pattern JobStatusSTARTING = JobStatus' "STARTING"

pattern JobStatusSUBMITTED :: JobStatus
pattern JobStatusSUBMITTED = JobStatus' "SUBMITTED"

pattern JobStatusSUCCEEDED :: JobStatus
pattern JobStatusSUCCEEDED = JobStatus' "SUCCEEDED"

{-# COMPLETE
  JobStatusFAILED,
  JobStatusPENDING,
  JobStatusRUNNABLE,
  JobStatusRUNNING,
  JobStatusSTARTING,
  JobStatusSUBMITTED,
  JobStatusSUCCEEDED,
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

instance Prelude.ToJSON JobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JobStatus where
  parseJSON = Prelude.parseJSONText "JobStatus"

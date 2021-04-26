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
-- Module      : Network.AWS.IoTJobsData.Types.JobExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTJobsData.Types.JobExecutionStatus
  ( JobExecutionStatus
      ( ..,
        JobExecutionStatusCANCELED,
        JobExecutionStatusFAILED,
        JobExecutionStatusINPROGRESS,
        JobExecutionStatusQUEUED,
        JobExecutionStatusREJECTED,
        JobExecutionStatusREMOVED,
        JobExecutionStatusSUCCEEDED,
        JobExecutionStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobExecutionStatus = JobExecutionStatus'
  { fromJobExecutionStatus ::
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

pattern JobExecutionStatusCANCELED :: JobExecutionStatus
pattern JobExecutionStatusCANCELED = JobExecutionStatus' "CANCELED"

pattern JobExecutionStatusFAILED :: JobExecutionStatus
pattern JobExecutionStatusFAILED = JobExecutionStatus' "FAILED"

pattern JobExecutionStatusINPROGRESS :: JobExecutionStatus
pattern JobExecutionStatusINPROGRESS = JobExecutionStatus' "IN_PROGRESS"

pattern JobExecutionStatusQUEUED :: JobExecutionStatus
pattern JobExecutionStatusQUEUED = JobExecutionStatus' "QUEUED"

pattern JobExecutionStatusREJECTED :: JobExecutionStatus
pattern JobExecutionStatusREJECTED = JobExecutionStatus' "REJECTED"

pattern JobExecutionStatusREMOVED :: JobExecutionStatus
pattern JobExecutionStatusREMOVED = JobExecutionStatus' "REMOVED"

pattern JobExecutionStatusSUCCEEDED :: JobExecutionStatus
pattern JobExecutionStatusSUCCEEDED = JobExecutionStatus' "SUCCEEDED"

pattern JobExecutionStatusTIMEDOUT :: JobExecutionStatus
pattern JobExecutionStatusTIMEDOUT = JobExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  JobExecutionStatusCANCELED,
  JobExecutionStatusFAILED,
  JobExecutionStatusINPROGRESS,
  JobExecutionStatusQUEUED,
  JobExecutionStatusREJECTED,
  JobExecutionStatusREMOVED,
  JobExecutionStatusSUCCEEDED,
  JobExecutionStatusTIMEDOUT,
  JobExecutionStatus'
  #-}

instance Prelude.FromText JobExecutionStatus where
  parser = JobExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobExecutionStatus where
  toText (JobExecutionStatus' x) = x

instance Prelude.Hashable JobExecutionStatus

instance Prelude.NFData JobExecutionStatus

instance Prelude.ToByteString JobExecutionStatus

instance Prelude.ToQuery JobExecutionStatus

instance Prelude.ToHeader JobExecutionStatus

instance Prelude.ToJSON JobExecutionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JobExecutionStatus where
  parseJSON = Prelude.parseJSONText "JobExecutionStatus"

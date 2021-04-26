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
-- Module      : Network.AWS.Comprehend.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatusCOMPLETED,
        JobStatusFAILED,
        JobStatusINPROGRESS,
        JobStatusSTOPPED,
        JobStatusSTOPREQUESTED,
        JobStatusSUBMITTED
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

pattern JobStatusFAILED :: JobStatus
pattern JobStatusFAILED = JobStatus' "FAILED"

pattern JobStatusINPROGRESS :: JobStatus
pattern JobStatusINPROGRESS = JobStatus' "IN_PROGRESS"

pattern JobStatusSTOPPED :: JobStatus
pattern JobStatusSTOPPED = JobStatus' "STOPPED"

pattern JobStatusSTOPREQUESTED :: JobStatus
pattern JobStatusSTOPREQUESTED = JobStatus' "STOP_REQUESTED"

pattern JobStatusSUBMITTED :: JobStatus
pattern JobStatusSUBMITTED = JobStatus' "SUBMITTED"

{-# COMPLETE
  JobStatusCOMPLETED,
  JobStatusFAILED,
  JobStatusINPROGRESS,
  JobStatusSTOPPED,
  JobStatusSTOPREQUESTED,
  JobStatusSUBMITTED,
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

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
-- Module      : Network.AWS.IoT.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatusCANCELED,
        JobStatusCOMPLETED,
        JobStatusDELETIONINPROGRESS,
        JobStatusINPROGRESS
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

pattern JobStatusCANCELED :: JobStatus
pattern JobStatusCANCELED = JobStatus' "CANCELED"

pattern JobStatusCOMPLETED :: JobStatus
pattern JobStatusCOMPLETED = JobStatus' "COMPLETED"

pattern JobStatusDELETIONINPROGRESS :: JobStatus
pattern JobStatusDELETIONINPROGRESS = JobStatus' "DELETION_IN_PROGRESS"

pattern JobStatusINPROGRESS :: JobStatus
pattern JobStatusINPROGRESS = JobStatus' "IN_PROGRESS"

{-# COMPLETE
  JobStatusCANCELED,
  JobStatusCOMPLETED,
  JobStatusDELETIONINPROGRESS,
  JobStatusINPROGRESS,
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

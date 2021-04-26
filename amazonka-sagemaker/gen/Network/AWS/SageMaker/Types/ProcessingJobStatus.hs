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
-- Module      : Network.AWS.SageMaker.Types.ProcessingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingJobStatus
  ( ProcessingJobStatus
      ( ..,
        ProcessingJobStatusCompleted,
        ProcessingJobStatusFailed,
        ProcessingJobStatusInProgress,
        ProcessingJobStatusStopped,
        ProcessingJobStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessingJobStatus = ProcessingJobStatus'
  { fromProcessingJobStatus ::
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

pattern ProcessingJobStatusCompleted :: ProcessingJobStatus
pattern ProcessingJobStatusCompleted = ProcessingJobStatus' "Completed"

pattern ProcessingJobStatusFailed :: ProcessingJobStatus
pattern ProcessingJobStatusFailed = ProcessingJobStatus' "Failed"

pattern ProcessingJobStatusInProgress :: ProcessingJobStatus
pattern ProcessingJobStatusInProgress = ProcessingJobStatus' "InProgress"

pattern ProcessingJobStatusStopped :: ProcessingJobStatus
pattern ProcessingJobStatusStopped = ProcessingJobStatus' "Stopped"

pattern ProcessingJobStatusStopping :: ProcessingJobStatus
pattern ProcessingJobStatusStopping = ProcessingJobStatus' "Stopping"

{-# COMPLETE
  ProcessingJobStatusCompleted,
  ProcessingJobStatusFailed,
  ProcessingJobStatusInProgress,
  ProcessingJobStatusStopped,
  ProcessingJobStatusStopping,
  ProcessingJobStatus'
  #-}

instance Prelude.FromText ProcessingJobStatus where
  parser = ProcessingJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessingJobStatus where
  toText (ProcessingJobStatus' x) = x

instance Prelude.Hashable ProcessingJobStatus

instance Prelude.NFData ProcessingJobStatus

instance Prelude.ToByteString ProcessingJobStatus

instance Prelude.ToQuery ProcessingJobStatus

instance Prelude.ToHeader ProcessingJobStatus

instance Prelude.ToJSON ProcessingJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessingJobStatus where
  parseJSON = Prelude.parseJSONText "ProcessingJobStatus"

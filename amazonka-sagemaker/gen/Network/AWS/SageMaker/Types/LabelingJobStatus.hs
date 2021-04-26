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
-- Module      : Network.AWS.SageMaker.Types.LabelingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelingJobStatus
  ( LabelingJobStatus
      ( ..,
        LabelingJobStatusCompleted,
        LabelingJobStatusFailed,
        LabelingJobStatusInProgress,
        LabelingJobStatusInitializing,
        LabelingJobStatusStopped,
        LabelingJobStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LabelingJobStatus = LabelingJobStatus'
  { fromLabelingJobStatus ::
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

pattern LabelingJobStatusCompleted :: LabelingJobStatus
pattern LabelingJobStatusCompleted = LabelingJobStatus' "Completed"

pattern LabelingJobStatusFailed :: LabelingJobStatus
pattern LabelingJobStatusFailed = LabelingJobStatus' "Failed"

pattern LabelingJobStatusInProgress :: LabelingJobStatus
pattern LabelingJobStatusInProgress = LabelingJobStatus' "InProgress"

pattern LabelingJobStatusInitializing :: LabelingJobStatus
pattern LabelingJobStatusInitializing = LabelingJobStatus' "Initializing"

pattern LabelingJobStatusStopped :: LabelingJobStatus
pattern LabelingJobStatusStopped = LabelingJobStatus' "Stopped"

pattern LabelingJobStatusStopping :: LabelingJobStatus
pattern LabelingJobStatusStopping = LabelingJobStatus' "Stopping"

{-# COMPLETE
  LabelingJobStatusCompleted,
  LabelingJobStatusFailed,
  LabelingJobStatusInProgress,
  LabelingJobStatusInitializing,
  LabelingJobStatusStopped,
  LabelingJobStatusStopping,
  LabelingJobStatus'
  #-}

instance Prelude.FromText LabelingJobStatus where
  parser = LabelingJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LabelingJobStatus where
  toText (LabelingJobStatus' x) = x

instance Prelude.Hashable LabelingJobStatus

instance Prelude.NFData LabelingJobStatus

instance Prelude.ToByteString LabelingJobStatus

instance Prelude.ToQuery LabelingJobStatus

instance Prelude.ToHeader LabelingJobStatus

instance Prelude.ToJSON LabelingJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LabelingJobStatus where
  parseJSON = Prelude.parseJSONText "LabelingJobStatus"

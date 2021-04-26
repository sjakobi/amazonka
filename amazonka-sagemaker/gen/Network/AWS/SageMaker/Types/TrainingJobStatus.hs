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
-- Module      : Network.AWS.SageMaker.Types.TrainingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJobStatus
  ( TrainingJobStatus
      ( ..,
        TrainingJobStatusCompleted,
        TrainingJobStatusFailed,
        TrainingJobStatusInProgress,
        TrainingJobStatusStopped,
        TrainingJobStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrainingJobStatus = TrainingJobStatus'
  { fromTrainingJobStatus ::
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

pattern TrainingJobStatusCompleted :: TrainingJobStatus
pattern TrainingJobStatusCompleted = TrainingJobStatus' "Completed"

pattern TrainingJobStatusFailed :: TrainingJobStatus
pattern TrainingJobStatusFailed = TrainingJobStatus' "Failed"

pattern TrainingJobStatusInProgress :: TrainingJobStatus
pattern TrainingJobStatusInProgress = TrainingJobStatus' "InProgress"

pattern TrainingJobStatusStopped :: TrainingJobStatus
pattern TrainingJobStatusStopped = TrainingJobStatus' "Stopped"

pattern TrainingJobStatusStopping :: TrainingJobStatus
pattern TrainingJobStatusStopping = TrainingJobStatus' "Stopping"

{-# COMPLETE
  TrainingJobStatusCompleted,
  TrainingJobStatusFailed,
  TrainingJobStatusInProgress,
  TrainingJobStatusStopped,
  TrainingJobStatusStopping,
  TrainingJobStatus'
  #-}

instance Prelude.FromText TrainingJobStatus where
  parser = TrainingJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrainingJobStatus where
  toText (TrainingJobStatus' x) = x

instance Prelude.Hashable TrainingJobStatus

instance Prelude.NFData TrainingJobStatus

instance Prelude.ToByteString TrainingJobStatus

instance Prelude.ToQuery TrainingJobStatus

instance Prelude.ToHeader TrainingJobStatus

instance Prelude.ToJSON TrainingJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TrainingJobStatus where
  parseJSON = Prelude.parseJSONText "TrainingJobStatus"

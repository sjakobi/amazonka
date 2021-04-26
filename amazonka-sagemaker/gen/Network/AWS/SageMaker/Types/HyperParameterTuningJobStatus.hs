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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobStatus
  ( HyperParameterTuningJobStatus
      ( ..,
        HyperParameterTuningJobStatusCompleted,
        HyperParameterTuningJobStatusFailed,
        HyperParameterTuningJobStatusInProgress,
        HyperParameterTuningJobStatusStopped,
        HyperParameterTuningJobStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HyperParameterTuningJobStatus = HyperParameterTuningJobStatus'
  { fromHyperParameterTuningJobStatus ::
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

pattern HyperParameterTuningJobStatusCompleted :: HyperParameterTuningJobStatus
pattern HyperParameterTuningJobStatusCompleted = HyperParameterTuningJobStatus' "Completed"

pattern HyperParameterTuningJobStatusFailed :: HyperParameterTuningJobStatus
pattern HyperParameterTuningJobStatusFailed = HyperParameterTuningJobStatus' "Failed"

pattern HyperParameterTuningJobStatusInProgress :: HyperParameterTuningJobStatus
pattern HyperParameterTuningJobStatusInProgress = HyperParameterTuningJobStatus' "InProgress"

pattern HyperParameterTuningJobStatusStopped :: HyperParameterTuningJobStatus
pattern HyperParameterTuningJobStatusStopped = HyperParameterTuningJobStatus' "Stopped"

pattern HyperParameterTuningJobStatusStopping :: HyperParameterTuningJobStatus
pattern HyperParameterTuningJobStatusStopping = HyperParameterTuningJobStatus' "Stopping"

{-# COMPLETE
  HyperParameterTuningJobStatusCompleted,
  HyperParameterTuningJobStatusFailed,
  HyperParameterTuningJobStatusInProgress,
  HyperParameterTuningJobStatusStopped,
  HyperParameterTuningJobStatusStopping,
  HyperParameterTuningJobStatus'
  #-}

instance Prelude.FromText HyperParameterTuningJobStatus where
  parser = HyperParameterTuningJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText HyperParameterTuningJobStatus where
  toText (HyperParameterTuningJobStatus' x) = x

instance Prelude.Hashable HyperParameterTuningJobStatus

instance Prelude.NFData HyperParameterTuningJobStatus

instance Prelude.ToByteString HyperParameterTuningJobStatus

instance Prelude.ToQuery HyperParameterTuningJobStatus

instance Prelude.ToHeader HyperParameterTuningJobStatus

instance Prelude.ToJSON HyperParameterTuningJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HyperParameterTuningJobStatus where
  parseJSON = Prelude.parseJSONText "HyperParameterTuningJobStatus"

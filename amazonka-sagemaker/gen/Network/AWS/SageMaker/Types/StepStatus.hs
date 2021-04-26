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
-- Module      : Network.AWS.SageMaker.Types.StepStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.StepStatus
  ( StepStatus
      ( ..,
        StepStatusExecuting,
        StepStatusFailed,
        StepStatusStarting,
        StepStatusStopped,
        StepStatusStopping,
        StepStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StepStatus = StepStatus'
  { fromStepStatus ::
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

pattern StepStatusExecuting :: StepStatus
pattern StepStatusExecuting = StepStatus' "Executing"

pattern StepStatusFailed :: StepStatus
pattern StepStatusFailed = StepStatus' "Failed"

pattern StepStatusStarting :: StepStatus
pattern StepStatusStarting = StepStatus' "Starting"

pattern StepStatusStopped :: StepStatus
pattern StepStatusStopped = StepStatus' "Stopped"

pattern StepStatusStopping :: StepStatus
pattern StepStatusStopping = StepStatus' "Stopping"

pattern StepStatusSucceeded :: StepStatus
pattern StepStatusSucceeded = StepStatus' "Succeeded"

{-# COMPLETE
  StepStatusExecuting,
  StepStatusFailed,
  StepStatusStarting,
  StepStatusStopped,
  StepStatusStopping,
  StepStatusSucceeded,
  StepStatus'
  #-}

instance Prelude.FromText StepStatus where
  parser = StepStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StepStatus where
  toText (StepStatus' x) = x

instance Prelude.Hashable StepStatus

instance Prelude.NFData StepStatus

instance Prelude.ToByteString StepStatus

instance Prelude.ToQuery StepStatus

instance Prelude.ToHeader StepStatus

instance Prelude.FromJSON StepStatus where
  parseJSON = Prelude.parseJSONText "StepStatus"

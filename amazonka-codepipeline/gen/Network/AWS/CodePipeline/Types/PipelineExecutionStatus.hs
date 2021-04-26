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
-- Module      : Network.AWS.CodePipeline.Types.PipelineExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.PipelineExecutionStatus
  ( PipelineExecutionStatus
      ( ..,
        PipelineExecutionStatusCancelled,
        PipelineExecutionStatusFailed,
        PipelineExecutionStatusInProgress,
        PipelineExecutionStatusStopped,
        PipelineExecutionStatusStopping,
        PipelineExecutionStatusSucceeded,
        PipelineExecutionStatusSuperseded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PipelineExecutionStatus = PipelineExecutionStatus'
  { fromPipelineExecutionStatus ::
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

pattern PipelineExecutionStatusCancelled :: PipelineExecutionStatus
pattern PipelineExecutionStatusCancelled = PipelineExecutionStatus' "Cancelled"

pattern PipelineExecutionStatusFailed :: PipelineExecutionStatus
pattern PipelineExecutionStatusFailed = PipelineExecutionStatus' "Failed"

pattern PipelineExecutionStatusInProgress :: PipelineExecutionStatus
pattern PipelineExecutionStatusInProgress = PipelineExecutionStatus' "InProgress"

pattern PipelineExecutionStatusStopped :: PipelineExecutionStatus
pattern PipelineExecutionStatusStopped = PipelineExecutionStatus' "Stopped"

pattern PipelineExecutionStatusStopping :: PipelineExecutionStatus
pattern PipelineExecutionStatusStopping = PipelineExecutionStatus' "Stopping"

pattern PipelineExecutionStatusSucceeded :: PipelineExecutionStatus
pattern PipelineExecutionStatusSucceeded = PipelineExecutionStatus' "Succeeded"

pattern PipelineExecutionStatusSuperseded :: PipelineExecutionStatus
pattern PipelineExecutionStatusSuperseded = PipelineExecutionStatus' "Superseded"

{-# COMPLETE
  PipelineExecutionStatusCancelled,
  PipelineExecutionStatusFailed,
  PipelineExecutionStatusInProgress,
  PipelineExecutionStatusStopped,
  PipelineExecutionStatusStopping,
  PipelineExecutionStatusSucceeded,
  PipelineExecutionStatusSuperseded,
  PipelineExecutionStatus'
  #-}

instance Prelude.FromText PipelineExecutionStatus where
  parser = PipelineExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PipelineExecutionStatus where
  toText (PipelineExecutionStatus' x) = x

instance Prelude.Hashable PipelineExecutionStatus

instance Prelude.NFData PipelineExecutionStatus

instance Prelude.ToByteString PipelineExecutionStatus

instance Prelude.ToQuery PipelineExecutionStatus

instance Prelude.ToHeader PipelineExecutionStatus

instance Prelude.FromJSON PipelineExecutionStatus where
  parseJSON = Prelude.parseJSONText "PipelineExecutionStatus"

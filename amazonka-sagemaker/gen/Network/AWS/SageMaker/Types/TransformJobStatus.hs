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
-- Module      : Network.AWS.SageMaker.Types.TransformJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformJobStatus
  ( TransformJobStatus
      ( ..,
        TransformJobStatusCompleted,
        TransformJobStatusFailed,
        TransformJobStatusInProgress,
        TransformJobStatusStopped,
        TransformJobStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransformJobStatus = TransformJobStatus'
  { fromTransformJobStatus ::
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

pattern TransformJobStatusCompleted :: TransformJobStatus
pattern TransformJobStatusCompleted = TransformJobStatus' "Completed"

pattern TransformJobStatusFailed :: TransformJobStatus
pattern TransformJobStatusFailed = TransformJobStatus' "Failed"

pattern TransformJobStatusInProgress :: TransformJobStatus
pattern TransformJobStatusInProgress = TransformJobStatus' "InProgress"

pattern TransformJobStatusStopped :: TransformJobStatus
pattern TransformJobStatusStopped = TransformJobStatus' "Stopped"

pattern TransformJobStatusStopping :: TransformJobStatus
pattern TransformJobStatusStopping = TransformJobStatus' "Stopping"

{-# COMPLETE
  TransformJobStatusCompleted,
  TransformJobStatusFailed,
  TransformJobStatusInProgress,
  TransformJobStatusStopped,
  TransformJobStatusStopping,
  TransformJobStatus'
  #-}

instance Prelude.FromText TransformJobStatus where
  parser = TransformJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransformJobStatus where
  toText (TransformJobStatus' x) = x

instance Prelude.Hashable TransformJobStatus

instance Prelude.NFData TransformJobStatus

instance Prelude.ToByteString TransformJobStatus

instance Prelude.ToQuery TransformJobStatus

instance Prelude.ToHeader TransformJobStatus

instance Prelude.ToJSON TransformJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TransformJobStatus where
  parseJSON = Prelude.parseJSONText "TransformJobStatus"

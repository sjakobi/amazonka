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
-- Module      : Network.AWS.SageMaker.Types.AutoMLJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLJobStatus
  ( AutoMLJobStatus
      ( ..,
        AutoMLJobStatusCompleted,
        AutoMLJobStatusFailed,
        AutoMLJobStatusInProgress,
        AutoMLJobStatusStopped,
        AutoMLJobStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLJobStatus = AutoMLJobStatus'
  { fromAutoMLJobStatus ::
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

pattern AutoMLJobStatusCompleted :: AutoMLJobStatus
pattern AutoMLJobStatusCompleted = AutoMLJobStatus' "Completed"

pattern AutoMLJobStatusFailed :: AutoMLJobStatus
pattern AutoMLJobStatusFailed = AutoMLJobStatus' "Failed"

pattern AutoMLJobStatusInProgress :: AutoMLJobStatus
pattern AutoMLJobStatusInProgress = AutoMLJobStatus' "InProgress"

pattern AutoMLJobStatusStopped :: AutoMLJobStatus
pattern AutoMLJobStatusStopped = AutoMLJobStatus' "Stopped"

pattern AutoMLJobStatusStopping :: AutoMLJobStatus
pattern AutoMLJobStatusStopping = AutoMLJobStatus' "Stopping"

{-# COMPLETE
  AutoMLJobStatusCompleted,
  AutoMLJobStatusFailed,
  AutoMLJobStatusInProgress,
  AutoMLJobStatusStopped,
  AutoMLJobStatusStopping,
  AutoMLJobStatus'
  #-}

instance Prelude.FromText AutoMLJobStatus where
  parser = AutoMLJobStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLJobStatus where
  toText (AutoMLJobStatus' x) = x

instance Prelude.Hashable AutoMLJobStatus

instance Prelude.NFData AutoMLJobStatus

instance Prelude.ToByteString AutoMLJobStatus

instance Prelude.ToQuery AutoMLJobStatus

instance Prelude.ToHeader AutoMLJobStatus

instance Prelude.ToJSON AutoMLJobStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoMLJobStatus where
  parseJSON = Prelude.parseJSONText "AutoMLJobStatus"

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
-- Module      : Network.AWS.CodeDeploy.Types.LifecycleEventStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.LifecycleEventStatus
  ( LifecycleEventStatus
      ( ..,
        LifecycleEventStatusFailed,
        LifecycleEventStatusInProgress,
        LifecycleEventStatusPending,
        LifecycleEventStatusSkipped,
        LifecycleEventStatusSucceeded,
        LifecycleEventStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LifecycleEventStatus = LifecycleEventStatus'
  { fromLifecycleEventStatus ::
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

pattern LifecycleEventStatusFailed :: LifecycleEventStatus
pattern LifecycleEventStatusFailed = LifecycleEventStatus' "Failed"

pattern LifecycleEventStatusInProgress :: LifecycleEventStatus
pattern LifecycleEventStatusInProgress = LifecycleEventStatus' "InProgress"

pattern LifecycleEventStatusPending :: LifecycleEventStatus
pattern LifecycleEventStatusPending = LifecycleEventStatus' "Pending"

pattern LifecycleEventStatusSkipped :: LifecycleEventStatus
pattern LifecycleEventStatusSkipped = LifecycleEventStatus' "Skipped"

pattern LifecycleEventStatusSucceeded :: LifecycleEventStatus
pattern LifecycleEventStatusSucceeded = LifecycleEventStatus' "Succeeded"

pattern LifecycleEventStatusUnknown :: LifecycleEventStatus
pattern LifecycleEventStatusUnknown = LifecycleEventStatus' "Unknown"

{-# COMPLETE
  LifecycleEventStatusFailed,
  LifecycleEventStatusInProgress,
  LifecycleEventStatusPending,
  LifecycleEventStatusSkipped,
  LifecycleEventStatusSucceeded,
  LifecycleEventStatusUnknown,
  LifecycleEventStatus'
  #-}

instance Prelude.FromText LifecycleEventStatus where
  parser = LifecycleEventStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LifecycleEventStatus where
  toText (LifecycleEventStatus' x) = x

instance Prelude.Hashable LifecycleEventStatus

instance Prelude.NFData LifecycleEventStatus

instance Prelude.ToByteString LifecycleEventStatus

instance Prelude.ToQuery LifecycleEventStatus

instance Prelude.ToHeader LifecycleEventStatus

instance Prelude.ToJSON LifecycleEventStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LifecycleEventStatus where
  parseJSON = Prelude.parseJSONText "LifecycleEventStatus"

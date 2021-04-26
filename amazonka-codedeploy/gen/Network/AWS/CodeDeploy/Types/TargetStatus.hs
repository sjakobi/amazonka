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
-- Module      : Network.AWS.CodeDeploy.Types.TargetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TargetStatus
  ( TargetStatus
      ( ..,
        TargetStatusFailed,
        TargetStatusInProgress,
        TargetStatusPending,
        TargetStatusReady,
        TargetStatusSkipped,
        TargetStatusSucceeded,
        TargetStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetStatus = TargetStatus'
  { fromTargetStatus ::
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

pattern TargetStatusFailed :: TargetStatus
pattern TargetStatusFailed = TargetStatus' "Failed"

pattern TargetStatusInProgress :: TargetStatus
pattern TargetStatusInProgress = TargetStatus' "InProgress"

pattern TargetStatusPending :: TargetStatus
pattern TargetStatusPending = TargetStatus' "Pending"

pattern TargetStatusReady :: TargetStatus
pattern TargetStatusReady = TargetStatus' "Ready"

pattern TargetStatusSkipped :: TargetStatus
pattern TargetStatusSkipped = TargetStatus' "Skipped"

pattern TargetStatusSucceeded :: TargetStatus
pattern TargetStatusSucceeded = TargetStatus' "Succeeded"

pattern TargetStatusUnknown :: TargetStatus
pattern TargetStatusUnknown = TargetStatus' "Unknown"

{-# COMPLETE
  TargetStatusFailed,
  TargetStatusInProgress,
  TargetStatusPending,
  TargetStatusReady,
  TargetStatusSkipped,
  TargetStatusSucceeded,
  TargetStatusUnknown,
  TargetStatus'
  #-}

instance Prelude.FromText TargetStatus where
  parser = TargetStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetStatus where
  toText (TargetStatus' x) = x

instance Prelude.Hashable TargetStatus

instance Prelude.NFData TargetStatus

instance Prelude.ToByteString TargetStatus

instance Prelude.ToQuery TargetStatus

instance Prelude.ToHeader TargetStatus

instance Prelude.FromJSON TargetStatus where
  parseJSON = Prelude.parseJSONText "TargetStatus"

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
-- Module      : Network.AWS.SSM.Types.CommandInvocationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandInvocationStatus
  ( CommandInvocationStatus
      ( ..,
        CommandInvocationStatusCancelled,
        CommandInvocationStatusCancelling,
        CommandInvocationStatusDelayed,
        CommandInvocationStatusFailed,
        CommandInvocationStatusInProgress,
        CommandInvocationStatusPending,
        CommandInvocationStatusSuccess,
        CommandInvocationStatusTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommandInvocationStatus = CommandInvocationStatus'
  { fromCommandInvocationStatus ::
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

pattern CommandInvocationStatusCancelled :: CommandInvocationStatus
pattern CommandInvocationStatusCancelled = CommandInvocationStatus' "Cancelled"

pattern CommandInvocationStatusCancelling :: CommandInvocationStatus
pattern CommandInvocationStatusCancelling = CommandInvocationStatus' "Cancelling"

pattern CommandInvocationStatusDelayed :: CommandInvocationStatus
pattern CommandInvocationStatusDelayed = CommandInvocationStatus' "Delayed"

pattern CommandInvocationStatusFailed :: CommandInvocationStatus
pattern CommandInvocationStatusFailed = CommandInvocationStatus' "Failed"

pattern CommandInvocationStatusInProgress :: CommandInvocationStatus
pattern CommandInvocationStatusInProgress = CommandInvocationStatus' "InProgress"

pattern CommandInvocationStatusPending :: CommandInvocationStatus
pattern CommandInvocationStatusPending = CommandInvocationStatus' "Pending"

pattern CommandInvocationStatusSuccess :: CommandInvocationStatus
pattern CommandInvocationStatusSuccess = CommandInvocationStatus' "Success"

pattern CommandInvocationStatusTimedOut :: CommandInvocationStatus
pattern CommandInvocationStatusTimedOut = CommandInvocationStatus' "TimedOut"

{-# COMPLETE
  CommandInvocationStatusCancelled,
  CommandInvocationStatusCancelling,
  CommandInvocationStatusDelayed,
  CommandInvocationStatusFailed,
  CommandInvocationStatusInProgress,
  CommandInvocationStatusPending,
  CommandInvocationStatusSuccess,
  CommandInvocationStatusTimedOut,
  CommandInvocationStatus'
  #-}

instance Prelude.FromText CommandInvocationStatus where
  parser = CommandInvocationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommandInvocationStatus where
  toText (CommandInvocationStatus' x) = x

instance Prelude.Hashable CommandInvocationStatus

instance Prelude.NFData CommandInvocationStatus

instance Prelude.ToByteString CommandInvocationStatus

instance Prelude.ToQuery CommandInvocationStatus

instance Prelude.ToHeader CommandInvocationStatus

instance Prelude.FromJSON CommandInvocationStatus where
  parseJSON = Prelude.parseJSONText "CommandInvocationStatus"

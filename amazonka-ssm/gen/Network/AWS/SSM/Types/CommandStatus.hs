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
-- Module      : Network.AWS.SSM.Types.CommandStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandStatus
  ( CommandStatus
      ( ..,
        CommandStatusCancelled,
        CommandStatusCancelling,
        CommandStatusFailed,
        CommandStatusInProgress,
        CommandStatusPending,
        CommandStatusSuccess,
        CommandStatusTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommandStatus = CommandStatus'
  { fromCommandStatus ::
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

pattern CommandStatusCancelled :: CommandStatus
pattern CommandStatusCancelled = CommandStatus' "Cancelled"

pattern CommandStatusCancelling :: CommandStatus
pattern CommandStatusCancelling = CommandStatus' "Cancelling"

pattern CommandStatusFailed :: CommandStatus
pattern CommandStatusFailed = CommandStatus' "Failed"

pattern CommandStatusInProgress :: CommandStatus
pattern CommandStatusInProgress = CommandStatus' "InProgress"

pattern CommandStatusPending :: CommandStatus
pattern CommandStatusPending = CommandStatus' "Pending"

pattern CommandStatusSuccess :: CommandStatus
pattern CommandStatusSuccess = CommandStatus' "Success"

pattern CommandStatusTimedOut :: CommandStatus
pattern CommandStatusTimedOut = CommandStatus' "TimedOut"

{-# COMPLETE
  CommandStatusCancelled,
  CommandStatusCancelling,
  CommandStatusFailed,
  CommandStatusInProgress,
  CommandStatusPending,
  CommandStatusSuccess,
  CommandStatusTimedOut,
  CommandStatus'
  #-}

instance Prelude.FromText CommandStatus where
  parser = CommandStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommandStatus where
  toText (CommandStatus' x) = x

instance Prelude.Hashable CommandStatus

instance Prelude.NFData CommandStatus

instance Prelude.ToByteString CommandStatus

instance Prelude.ToQuery CommandStatus

instance Prelude.ToHeader CommandStatus

instance Prelude.FromJSON CommandStatus where
  parseJSON = Prelude.parseJSONText "CommandStatus"

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
-- Module      : Network.AWS.SSM.Types.CommandPluginStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandPluginStatus
  ( CommandPluginStatus
      ( ..,
        CommandPluginStatusCancelled,
        CommandPluginStatusFailed,
        CommandPluginStatusInProgress,
        CommandPluginStatusPending,
        CommandPluginStatusSuccess,
        CommandPluginStatusTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommandPluginStatus = CommandPluginStatus'
  { fromCommandPluginStatus ::
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

pattern CommandPluginStatusCancelled :: CommandPluginStatus
pattern CommandPluginStatusCancelled = CommandPluginStatus' "Cancelled"

pattern CommandPluginStatusFailed :: CommandPluginStatus
pattern CommandPluginStatusFailed = CommandPluginStatus' "Failed"

pattern CommandPluginStatusInProgress :: CommandPluginStatus
pattern CommandPluginStatusInProgress = CommandPluginStatus' "InProgress"

pattern CommandPluginStatusPending :: CommandPluginStatus
pattern CommandPluginStatusPending = CommandPluginStatus' "Pending"

pattern CommandPluginStatusSuccess :: CommandPluginStatus
pattern CommandPluginStatusSuccess = CommandPluginStatus' "Success"

pattern CommandPluginStatusTimedOut :: CommandPluginStatus
pattern CommandPluginStatusTimedOut = CommandPluginStatus' "TimedOut"

{-# COMPLETE
  CommandPluginStatusCancelled,
  CommandPluginStatusFailed,
  CommandPluginStatusInProgress,
  CommandPluginStatusPending,
  CommandPluginStatusSuccess,
  CommandPluginStatusTimedOut,
  CommandPluginStatus'
  #-}

instance Prelude.FromText CommandPluginStatus where
  parser = CommandPluginStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommandPluginStatus where
  toText (CommandPluginStatus' x) = x

instance Prelude.Hashable CommandPluginStatus

instance Prelude.NFData CommandPluginStatus

instance Prelude.ToByteString CommandPluginStatus

instance Prelude.ToQuery CommandPluginStatus

instance Prelude.ToHeader CommandPluginStatus

instance Prelude.FromJSON CommandPluginStatus where
  parseJSON = Prelude.parseJSONText "CommandPluginStatus"

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
-- Module      : Network.AWS.SageMaker.Types.ActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ActionStatus
  ( ActionStatus
      ( ..,
        ActionStatusCompleted,
        ActionStatusFailed,
        ActionStatusInProgress,
        ActionStatusStopped,
        ActionStatusStopping,
        ActionStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionStatus = ActionStatus'
  { fromActionStatus ::
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

pattern ActionStatusCompleted :: ActionStatus
pattern ActionStatusCompleted = ActionStatus' "Completed"

pattern ActionStatusFailed :: ActionStatus
pattern ActionStatusFailed = ActionStatus' "Failed"

pattern ActionStatusInProgress :: ActionStatus
pattern ActionStatusInProgress = ActionStatus' "InProgress"

pattern ActionStatusStopped :: ActionStatus
pattern ActionStatusStopped = ActionStatus' "Stopped"

pattern ActionStatusStopping :: ActionStatus
pattern ActionStatusStopping = ActionStatus' "Stopping"

pattern ActionStatusUnknown :: ActionStatus
pattern ActionStatusUnknown = ActionStatus' "Unknown"

{-# COMPLETE
  ActionStatusCompleted,
  ActionStatusFailed,
  ActionStatusInProgress,
  ActionStatusStopped,
  ActionStatusStopping,
  ActionStatusUnknown,
  ActionStatus'
  #-}

instance Prelude.FromText ActionStatus where
  parser = ActionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionStatus where
  toText (ActionStatus' x) = x

instance Prelude.Hashable ActionStatus

instance Prelude.NFData ActionStatus

instance Prelude.ToByteString ActionStatus

instance Prelude.ToQuery ActionStatus

instance Prelude.ToHeader ActionStatus

instance Prelude.ToJSON ActionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionStatus where
  parseJSON = Prelude.parseJSONText "ActionStatus"

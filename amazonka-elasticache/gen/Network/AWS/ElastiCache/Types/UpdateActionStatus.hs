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
-- Module      : Network.AWS.ElastiCache.Types.UpdateActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.UpdateActionStatus
  ( UpdateActionStatus
      ( ..,
        UpdateActionStatusComplete,
        UpdateActionStatusInProgress,
        UpdateActionStatusNotApplicable,
        UpdateActionStatusNotApplied,
        UpdateActionStatusScheduled,
        UpdateActionStatusScheduling,
        UpdateActionStatusStopped,
        UpdateActionStatusStopping,
        UpdateActionStatusWaitingToStart
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpdateActionStatus = UpdateActionStatus'
  { fromUpdateActionStatus ::
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

pattern UpdateActionStatusComplete :: UpdateActionStatus
pattern UpdateActionStatusComplete = UpdateActionStatus' "complete"

pattern UpdateActionStatusInProgress :: UpdateActionStatus
pattern UpdateActionStatusInProgress = UpdateActionStatus' "in-progress"

pattern UpdateActionStatusNotApplicable :: UpdateActionStatus
pattern UpdateActionStatusNotApplicable = UpdateActionStatus' "not-applicable"

pattern UpdateActionStatusNotApplied :: UpdateActionStatus
pattern UpdateActionStatusNotApplied = UpdateActionStatus' "not-applied"

pattern UpdateActionStatusScheduled :: UpdateActionStatus
pattern UpdateActionStatusScheduled = UpdateActionStatus' "scheduled"

pattern UpdateActionStatusScheduling :: UpdateActionStatus
pattern UpdateActionStatusScheduling = UpdateActionStatus' "scheduling"

pattern UpdateActionStatusStopped :: UpdateActionStatus
pattern UpdateActionStatusStopped = UpdateActionStatus' "stopped"

pattern UpdateActionStatusStopping :: UpdateActionStatus
pattern UpdateActionStatusStopping = UpdateActionStatus' "stopping"

pattern UpdateActionStatusWaitingToStart :: UpdateActionStatus
pattern UpdateActionStatusWaitingToStart = UpdateActionStatus' "waiting-to-start"

{-# COMPLETE
  UpdateActionStatusComplete,
  UpdateActionStatusInProgress,
  UpdateActionStatusNotApplicable,
  UpdateActionStatusNotApplied,
  UpdateActionStatusScheduled,
  UpdateActionStatusScheduling,
  UpdateActionStatusStopped,
  UpdateActionStatusStopping,
  UpdateActionStatusWaitingToStart,
  UpdateActionStatus'
  #-}

instance Prelude.FromText UpdateActionStatus where
  parser = UpdateActionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateActionStatus where
  toText (UpdateActionStatus' x) = x

instance Prelude.Hashable UpdateActionStatus

instance Prelude.NFData UpdateActionStatus

instance Prelude.ToByteString UpdateActionStatus

instance Prelude.ToQuery UpdateActionStatus

instance Prelude.ToHeader UpdateActionStatus

instance Prelude.FromXML UpdateActionStatus where
  parseXML = Prelude.parseXMLText "UpdateActionStatus"

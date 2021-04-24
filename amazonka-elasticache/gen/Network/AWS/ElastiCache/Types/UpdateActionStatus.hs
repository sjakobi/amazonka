{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Complete,
        InProgress,
        NotApplicable,
        NotApplied,
        Scheduled,
        Scheduling,
        Stopped,
        Stopping,
        WaitingToStart
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpdateActionStatus
  = UpdateActionStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Complete :: UpdateActionStatus
pattern Complete = UpdateActionStatus' "complete"

pattern InProgress :: UpdateActionStatus
pattern InProgress = UpdateActionStatus' "in-progress"

pattern NotApplicable :: UpdateActionStatus
pattern NotApplicable = UpdateActionStatus' "not-applicable"

pattern NotApplied :: UpdateActionStatus
pattern NotApplied = UpdateActionStatus' "not-applied"

pattern Scheduled :: UpdateActionStatus
pattern Scheduled = UpdateActionStatus' "scheduled"

pattern Scheduling :: UpdateActionStatus
pattern Scheduling = UpdateActionStatus' "scheduling"

pattern Stopped :: UpdateActionStatus
pattern Stopped = UpdateActionStatus' "stopped"

pattern Stopping :: UpdateActionStatus
pattern Stopping = UpdateActionStatus' "stopping"

pattern WaitingToStart :: UpdateActionStatus
pattern WaitingToStart = UpdateActionStatus' "waiting-to-start"

{-# COMPLETE
  Complete,
  InProgress,
  NotApplicable,
  NotApplied,
  Scheduled,
  Scheduling,
  Stopped,
  Stopping,
  WaitingToStart,
  UpdateActionStatus'
  #-}

instance FromText UpdateActionStatus where
  parser = (UpdateActionStatus' . mk) <$> takeText

instance ToText UpdateActionStatus where
  toText (UpdateActionStatus' ci) = original ci

instance Hashable UpdateActionStatus

instance NFData UpdateActionStatus

instance ToByteString UpdateActionStatus

instance ToQuery UpdateActionStatus

instance ToHeader UpdateActionStatus

instance FromXML UpdateActionStatus where
  parseXML = parseXMLText "UpdateActionStatus"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ScheduleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ScheduleStatus
  ( ScheduleStatus
      ( ..,
        SSFailed,
        SSPending,
        SSScheduled,
        SSStopped
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScheduleStatus = ScheduleStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSFailed :: ScheduleStatus
pattern SSFailed = ScheduleStatus' "Failed"

pattern SSPending :: ScheduleStatus
pattern SSPending = ScheduleStatus' "Pending"

pattern SSScheduled :: ScheduleStatus
pattern SSScheduled = ScheduleStatus' "Scheduled"

pattern SSStopped :: ScheduleStatus
pattern SSStopped = ScheduleStatus' "Stopped"

{-# COMPLETE
  SSFailed,
  SSPending,
  SSScheduled,
  SSStopped,
  ScheduleStatus'
  #-}

instance FromText ScheduleStatus where
  parser = (ScheduleStatus' . mk) <$> takeText

instance ToText ScheduleStatus where
  toText (ScheduleStatus' ci) = original ci

instance Hashable ScheduleStatus

instance NFData ScheduleStatus

instance ToByteString ScheduleStatus

instance ToQuery ScheduleStatus

instance ToHeader ScheduleStatus

instance ToJSON ScheduleStatus where
  toJSON = toJSONText

instance FromJSON ScheduleStatus where
  parseJSON = parseJSONText "ScheduleStatus"

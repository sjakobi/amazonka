{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ScheduleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ScheduleState
  ( ScheduleState
      ( ..,
        SSNotScheduled,
        SSScheduled,
        SSTransitioning
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScheduleState = ScheduleState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSNotScheduled :: ScheduleState
pattern SSNotScheduled = ScheduleState' "NOT_SCHEDULED"

pattern SSScheduled :: ScheduleState
pattern SSScheduled = ScheduleState' "SCHEDULED"

pattern SSTransitioning :: ScheduleState
pattern SSTransitioning = ScheduleState' "TRANSITIONING"

{-# COMPLETE
  SSNotScheduled,
  SSScheduled,
  SSTransitioning,
  ScheduleState'
  #-}

instance FromText ScheduleState where
  parser = (ScheduleState' . mk) <$> takeText

instance ToText ScheduleState where
  toText (ScheduleState' ci) = original ci

instance Hashable ScheduleState

instance NFData ScheduleState

instance ToByteString ScheduleState

instance ToQuery ScheduleState

instance ToHeader ScheduleState

instance FromJSON ScheduleState where
  parseJSON = parseJSONText "ScheduleState"

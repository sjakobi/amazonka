{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ActivityTaskTimeoutType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ActivityTaskTimeoutType
  ( ActivityTaskTimeoutType
      ( ..,
        ATTTHeartbeat,
        ATTTScheduleToClose,
        ATTTScheduleToStart,
        ATTTStartToClose
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActivityTaskTimeoutType
  = ActivityTaskTimeoutType'
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

pattern ATTTHeartbeat :: ActivityTaskTimeoutType
pattern ATTTHeartbeat = ActivityTaskTimeoutType' "HEARTBEAT"

pattern ATTTScheduleToClose :: ActivityTaskTimeoutType
pattern ATTTScheduleToClose = ActivityTaskTimeoutType' "SCHEDULE_TO_CLOSE"

pattern ATTTScheduleToStart :: ActivityTaskTimeoutType
pattern ATTTScheduleToStart = ActivityTaskTimeoutType' "SCHEDULE_TO_START"

pattern ATTTStartToClose :: ActivityTaskTimeoutType
pattern ATTTStartToClose = ActivityTaskTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  ATTTHeartbeat,
  ATTTScheduleToClose,
  ATTTScheduleToStart,
  ATTTStartToClose,
  ActivityTaskTimeoutType'
  #-}

instance FromText ActivityTaskTimeoutType where
  parser = (ActivityTaskTimeoutType' . mk) <$> takeText

instance ToText ActivityTaskTimeoutType where
  toText (ActivityTaskTimeoutType' ci) = original ci

instance Hashable ActivityTaskTimeoutType

instance NFData ActivityTaskTimeoutType

instance ToByteString ActivityTaskTimeoutType

instance ToQuery ActivityTaskTimeoutType

instance ToHeader ActivityTaskTimeoutType

instance FromJSON ActivityTaskTimeoutType where
  parseJSON = parseJSONText "ActivityTaskTimeoutType"

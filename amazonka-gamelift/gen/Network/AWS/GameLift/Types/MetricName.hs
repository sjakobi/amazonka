{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.MetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.MetricName
  ( MetricName
      ( ..,
        ActivatingGameSessions,
        ActiveGameSessions,
        ActiveInstances,
        AvailableGameSessions,
        AvailablePlayerSessions,
        CurrentPlayerSessions,
        IdleInstances,
        PercentAvailableGameSessions,
        PercentIdleInstances,
        QueueDepth,
        WaitTime
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MetricName = MetricName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ActivatingGameSessions :: MetricName
pattern ActivatingGameSessions = MetricName' "ActivatingGameSessions"

pattern ActiveGameSessions :: MetricName
pattern ActiveGameSessions = MetricName' "ActiveGameSessions"

pattern ActiveInstances :: MetricName
pattern ActiveInstances = MetricName' "ActiveInstances"

pattern AvailableGameSessions :: MetricName
pattern AvailableGameSessions = MetricName' "AvailableGameSessions"

pattern AvailablePlayerSessions :: MetricName
pattern AvailablePlayerSessions = MetricName' "AvailablePlayerSessions"

pattern CurrentPlayerSessions :: MetricName
pattern CurrentPlayerSessions = MetricName' "CurrentPlayerSessions"

pattern IdleInstances :: MetricName
pattern IdleInstances = MetricName' "IdleInstances"

pattern PercentAvailableGameSessions :: MetricName
pattern PercentAvailableGameSessions = MetricName' "PercentAvailableGameSessions"

pattern PercentIdleInstances :: MetricName
pattern PercentIdleInstances = MetricName' "PercentIdleInstances"

pattern QueueDepth :: MetricName
pattern QueueDepth = MetricName' "QueueDepth"

pattern WaitTime :: MetricName
pattern WaitTime = MetricName' "WaitTime"

{-# COMPLETE
  ActivatingGameSessions,
  ActiveGameSessions,
  ActiveInstances,
  AvailableGameSessions,
  AvailablePlayerSessions,
  CurrentPlayerSessions,
  IdleInstances,
  PercentAvailableGameSessions,
  PercentIdleInstances,
  QueueDepth,
  WaitTime,
  MetricName'
  #-}

instance FromText MetricName where
  parser = (MetricName' . mk) <$> takeText

instance ToText MetricName where
  toText (MetricName' ci) = original ci

instance Hashable MetricName

instance NFData MetricName

instance ToByteString MetricName

instance ToQuery MetricName

instance ToHeader MetricName

instance ToJSON MetricName where
  toJSON = toJSONText

instance FromJSON MetricName where
  parseJSON = parseJSONText "MetricName"

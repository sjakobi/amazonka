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
-- Module      : Network.AWS.GameLift.Types.MetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.MetricName
  ( MetricName
      ( ..,
        MetricNameActivatingGameSessions,
        MetricNameActiveGameSessions,
        MetricNameActiveInstances,
        MetricNameAvailableGameSessions,
        MetricNameAvailablePlayerSessions,
        MetricNameCurrentPlayerSessions,
        MetricNameIdleInstances,
        MetricNamePercentAvailableGameSessions,
        MetricNamePercentIdleInstances,
        MetricNameQueueDepth,
        MetricNameWaitTime
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricName = MetricName'
  { fromMetricName ::
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

pattern MetricNameActivatingGameSessions :: MetricName
pattern MetricNameActivatingGameSessions = MetricName' "ActivatingGameSessions"

pattern MetricNameActiveGameSessions :: MetricName
pattern MetricNameActiveGameSessions = MetricName' "ActiveGameSessions"

pattern MetricNameActiveInstances :: MetricName
pattern MetricNameActiveInstances = MetricName' "ActiveInstances"

pattern MetricNameAvailableGameSessions :: MetricName
pattern MetricNameAvailableGameSessions = MetricName' "AvailableGameSessions"

pattern MetricNameAvailablePlayerSessions :: MetricName
pattern MetricNameAvailablePlayerSessions = MetricName' "AvailablePlayerSessions"

pattern MetricNameCurrentPlayerSessions :: MetricName
pattern MetricNameCurrentPlayerSessions = MetricName' "CurrentPlayerSessions"

pattern MetricNameIdleInstances :: MetricName
pattern MetricNameIdleInstances = MetricName' "IdleInstances"

pattern MetricNamePercentAvailableGameSessions :: MetricName
pattern MetricNamePercentAvailableGameSessions = MetricName' "PercentAvailableGameSessions"

pattern MetricNamePercentIdleInstances :: MetricName
pattern MetricNamePercentIdleInstances = MetricName' "PercentIdleInstances"

pattern MetricNameQueueDepth :: MetricName
pattern MetricNameQueueDepth = MetricName' "QueueDepth"

pattern MetricNameWaitTime :: MetricName
pattern MetricNameWaitTime = MetricName' "WaitTime"

{-# COMPLETE
  MetricNameActivatingGameSessions,
  MetricNameActiveGameSessions,
  MetricNameActiveInstances,
  MetricNameAvailableGameSessions,
  MetricNameAvailablePlayerSessions,
  MetricNameCurrentPlayerSessions,
  MetricNameIdleInstances,
  MetricNamePercentAvailableGameSessions,
  MetricNamePercentIdleInstances,
  MetricNameQueueDepth,
  MetricNameWaitTime,
  MetricName'
  #-}

instance Prelude.FromText MetricName where
  parser = MetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricName where
  toText (MetricName' x) = x

instance Prelude.Hashable MetricName

instance Prelude.NFData MetricName

instance Prelude.ToByteString MetricName

instance Prelude.ToQuery MetricName

instance Prelude.ToHeader MetricName

instance Prelude.ToJSON MetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricName where
  parseJSON = Prelude.parseJSONText "MetricName"

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
-- Module      : Network.AWS.CloudWatchEvents.Types.ReplayState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ReplayState
  ( ReplayState
      ( ..,
        ReplayStateCANCELLED,
        ReplayStateCANCELLING,
        ReplayStateCOMPLETED,
        ReplayStateFAILED,
        ReplayStateRUNNING,
        ReplayStateSTARTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplayState = ReplayState'
  { fromReplayState ::
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

pattern ReplayStateCANCELLED :: ReplayState
pattern ReplayStateCANCELLED = ReplayState' "CANCELLED"

pattern ReplayStateCANCELLING :: ReplayState
pattern ReplayStateCANCELLING = ReplayState' "CANCELLING"

pattern ReplayStateCOMPLETED :: ReplayState
pattern ReplayStateCOMPLETED = ReplayState' "COMPLETED"

pattern ReplayStateFAILED :: ReplayState
pattern ReplayStateFAILED = ReplayState' "FAILED"

pattern ReplayStateRUNNING :: ReplayState
pattern ReplayStateRUNNING = ReplayState' "RUNNING"

pattern ReplayStateSTARTING :: ReplayState
pattern ReplayStateSTARTING = ReplayState' "STARTING"

{-# COMPLETE
  ReplayStateCANCELLED,
  ReplayStateCANCELLING,
  ReplayStateCOMPLETED,
  ReplayStateFAILED,
  ReplayStateRUNNING,
  ReplayStateSTARTING,
  ReplayState'
  #-}

instance Prelude.FromText ReplayState where
  parser = ReplayState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplayState where
  toText (ReplayState' x) = x

instance Prelude.Hashable ReplayState

instance Prelude.NFData ReplayState

instance Prelude.ToByteString ReplayState

instance Prelude.ToQuery ReplayState

instance Prelude.ToHeader ReplayState

instance Prelude.ToJSON ReplayState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReplayState where
  parseJSON = Prelude.parseJSONText "ReplayState"

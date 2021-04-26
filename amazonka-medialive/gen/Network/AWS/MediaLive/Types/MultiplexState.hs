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
-- Module      : Network.AWS.MediaLive.Types.MultiplexState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexState
  ( MultiplexState
      ( ..,
        MultiplexStateCREATEFAILED,
        MultiplexStateCREATING,
        MultiplexStateDELETED,
        MultiplexStateDELETING,
        MultiplexStateIDLE,
        MultiplexStateRECOVERING,
        MultiplexStateRUNNING,
        MultiplexStateSTARTING,
        MultiplexStateSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The current state of the multiplex.
newtype MultiplexState = MultiplexState'
  { fromMultiplexState ::
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

pattern MultiplexStateCREATEFAILED :: MultiplexState
pattern MultiplexStateCREATEFAILED = MultiplexState' "CREATE_FAILED"

pattern MultiplexStateCREATING :: MultiplexState
pattern MultiplexStateCREATING = MultiplexState' "CREATING"

pattern MultiplexStateDELETED :: MultiplexState
pattern MultiplexStateDELETED = MultiplexState' "DELETED"

pattern MultiplexStateDELETING :: MultiplexState
pattern MultiplexStateDELETING = MultiplexState' "DELETING"

pattern MultiplexStateIDLE :: MultiplexState
pattern MultiplexStateIDLE = MultiplexState' "IDLE"

pattern MultiplexStateRECOVERING :: MultiplexState
pattern MultiplexStateRECOVERING = MultiplexState' "RECOVERING"

pattern MultiplexStateRUNNING :: MultiplexState
pattern MultiplexStateRUNNING = MultiplexState' "RUNNING"

pattern MultiplexStateSTARTING :: MultiplexState
pattern MultiplexStateSTARTING = MultiplexState' "STARTING"

pattern MultiplexStateSTOPPING :: MultiplexState
pattern MultiplexStateSTOPPING = MultiplexState' "STOPPING"

{-# COMPLETE
  MultiplexStateCREATEFAILED,
  MultiplexStateCREATING,
  MultiplexStateDELETED,
  MultiplexStateDELETING,
  MultiplexStateIDLE,
  MultiplexStateRECOVERING,
  MultiplexStateRUNNING,
  MultiplexStateSTARTING,
  MultiplexStateSTOPPING,
  MultiplexState'
  #-}

instance Prelude.FromText MultiplexState where
  parser = MultiplexState' Prelude.<$> Prelude.takeText

instance Prelude.ToText MultiplexState where
  toText (MultiplexState' x) = x

instance Prelude.Hashable MultiplexState

instance Prelude.NFData MultiplexState

instance Prelude.ToByteString MultiplexState

instance Prelude.ToQuery MultiplexState

instance Prelude.ToHeader MultiplexState

instance Prelude.FromJSON MultiplexState where
  parseJSON = Prelude.parseJSONText "MultiplexState"

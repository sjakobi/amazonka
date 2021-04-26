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
-- Module      : Network.AWS.MediaLive.Types.ChannelState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ChannelState
  ( ChannelState
      ( ..,
        ChannelStateCREATEFAILED,
        ChannelStateCREATING,
        ChannelStateDELETED,
        ChannelStateDELETING,
        ChannelStateIDLE,
        ChannelStateRECOVERING,
        ChannelStateRUNNING,
        ChannelStateSTARTING,
        ChannelStateSTOPPING,
        ChannelStateUPDATEFAILED,
        ChannelStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Placeholder documentation for ChannelState
newtype ChannelState = ChannelState'
  { fromChannelState ::
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

pattern ChannelStateCREATEFAILED :: ChannelState
pattern ChannelStateCREATEFAILED = ChannelState' "CREATE_FAILED"

pattern ChannelStateCREATING :: ChannelState
pattern ChannelStateCREATING = ChannelState' "CREATING"

pattern ChannelStateDELETED :: ChannelState
pattern ChannelStateDELETED = ChannelState' "DELETED"

pattern ChannelStateDELETING :: ChannelState
pattern ChannelStateDELETING = ChannelState' "DELETING"

pattern ChannelStateIDLE :: ChannelState
pattern ChannelStateIDLE = ChannelState' "IDLE"

pattern ChannelStateRECOVERING :: ChannelState
pattern ChannelStateRECOVERING = ChannelState' "RECOVERING"

pattern ChannelStateRUNNING :: ChannelState
pattern ChannelStateRUNNING = ChannelState' "RUNNING"

pattern ChannelStateSTARTING :: ChannelState
pattern ChannelStateSTARTING = ChannelState' "STARTING"

pattern ChannelStateSTOPPING :: ChannelState
pattern ChannelStateSTOPPING = ChannelState' "STOPPING"

pattern ChannelStateUPDATEFAILED :: ChannelState
pattern ChannelStateUPDATEFAILED = ChannelState' "UPDATE_FAILED"

pattern ChannelStateUPDATING :: ChannelState
pattern ChannelStateUPDATING = ChannelState' "UPDATING"

{-# COMPLETE
  ChannelStateCREATEFAILED,
  ChannelStateCREATING,
  ChannelStateDELETED,
  ChannelStateDELETING,
  ChannelStateIDLE,
  ChannelStateRECOVERING,
  ChannelStateRUNNING,
  ChannelStateSTARTING,
  ChannelStateSTOPPING,
  ChannelStateUPDATEFAILED,
  ChannelStateUPDATING,
  ChannelState'
  #-}

instance Prelude.FromText ChannelState where
  parser = ChannelState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelState where
  toText (ChannelState' x) = x

instance Prelude.Hashable ChannelState

instance Prelude.NFData ChannelState

instance Prelude.ToByteString ChannelState

instance Prelude.ToQuery ChannelState

instance Prelude.ToHeader ChannelState

instance Prelude.FromJSON ChannelState where
  parseJSON = Prelude.parseJSONText "ChannelState"

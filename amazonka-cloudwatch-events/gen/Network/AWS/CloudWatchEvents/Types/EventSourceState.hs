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
-- Module      : Network.AWS.CloudWatchEvents.Types.EventSourceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.EventSourceState
  ( EventSourceState
      ( ..,
        EventSourceStateACTIVE,
        EventSourceStateDELETED,
        EventSourceStatePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventSourceState = EventSourceState'
  { fromEventSourceState ::
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

pattern EventSourceStateACTIVE :: EventSourceState
pattern EventSourceStateACTIVE = EventSourceState' "ACTIVE"

pattern EventSourceStateDELETED :: EventSourceState
pattern EventSourceStateDELETED = EventSourceState' "DELETED"

pattern EventSourceStatePENDING :: EventSourceState
pattern EventSourceStatePENDING = EventSourceState' "PENDING"

{-# COMPLETE
  EventSourceStateACTIVE,
  EventSourceStateDELETED,
  EventSourceStatePENDING,
  EventSourceState'
  #-}

instance Prelude.FromText EventSourceState where
  parser = EventSourceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventSourceState where
  toText (EventSourceState' x) = x

instance Prelude.Hashable EventSourceState

instance Prelude.NFData EventSourceState

instance Prelude.ToByteString EventSourceState

instance Prelude.ToQuery EventSourceState

instance Prelude.ToHeader EventSourceState

instance Prelude.FromJSON EventSourceState where
  parseJSON = Prelude.parseJSONText "EventSourceState"

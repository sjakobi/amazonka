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
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionState
  ( ConnectionState
      ( ..,
        ConnectionStateAUTHORIZED,
        ConnectionStateAUTHORIZING,
        ConnectionStateCREATING,
        ConnectionStateDEAUTHORIZED,
        ConnectionStateDEAUTHORIZING,
        ConnectionStateDELETING,
        ConnectionStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionState = ConnectionState'
  { fromConnectionState ::
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

pattern ConnectionStateAUTHORIZED :: ConnectionState
pattern ConnectionStateAUTHORIZED = ConnectionState' "AUTHORIZED"

pattern ConnectionStateAUTHORIZING :: ConnectionState
pattern ConnectionStateAUTHORIZING = ConnectionState' "AUTHORIZING"

pattern ConnectionStateCREATING :: ConnectionState
pattern ConnectionStateCREATING = ConnectionState' "CREATING"

pattern ConnectionStateDEAUTHORIZED :: ConnectionState
pattern ConnectionStateDEAUTHORIZED = ConnectionState' "DEAUTHORIZED"

pattern ConnectionStateDEAUTHORIZING :: ConnectionState
pattern ConnectionStateDEAUTHORIZING = ConnectionState' "DEAUTHORIZING"

pattern ConnectionStateDELETING :: ConnectionState
pattern ConnectionStateDELETING = ConnectionState' "DELETING"

pattern ConnectionStateUPDATING :: ConnectionState
pattern ConnectionStateUPDATING = ConnectionState' "UPDATING"

{-# COMPLETE
  ConnectionStateAUTHORIZED,
  ConnectionStateAUTHORIZING,
  ConnectionStateCREATING,
  ConnectionStateDEAUTHORIZED,
  ConnectionStateDEAUTHORIZING,
  ConnectionStateDELETING,
  ConnectionStateUPDATING,
  ConnectionState'
  #-}

instance Prelude.FromText ConnectionState where
  parser = ConnectionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionState where
  toText (ConnectionState' x) = x

instance Prelude.Hashable ConnectionState

instance Prelude.NFData ConnectionState

instance Prelude.ToByteString ConnectionState

instance Prelude.ToQuery ConnectionState

instance Prelude.ToHeader ConnectionState

instance Prelude.ToJSON ConnectionState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConnectionState where
  parseJSON = Prelude.parseJSONText "ConnectionState"

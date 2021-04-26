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
-- Module      : Network.AWS.WorkSpaces.Types.ConnectionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ConnectionState
  ( ConnectionState
      ( ..,
        ConnectionStateCONNECTED,
        ConnectionStateDISCONNECTED,
        ConnectionStateUNKNOWN
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

pattern ConnectionStateCONNECTED :: ConnectionState
pattern ConnectionStateCONNECTED = ConnectionState' "CONNECTED"

pattern ConnectionStateDISCONNECTED :: ConnectionState
pattern ConnectionStateDISCONNECTED = ConnectionState' "DISCONNECTED"

pattern ConnectionStateUNKNOWN :: ConnectionState
pattern ConnectionStateUNKNOWN = ConnectionState' "UNKNOWN"

{-# COMPLETE
  ConnectionStateCONNECTED,
  ConnectionStateDISCONNECTED,
  ConnectionStateUNKNOWN,
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

instance Prelude.FromJSON ConnectionState where
  parseJSON = Prelude.parseJSONText "ConnectionState"

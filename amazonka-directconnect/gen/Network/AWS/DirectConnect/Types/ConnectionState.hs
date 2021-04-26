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
-- Module      : Network.AWS.DirectConnect.Types.ConnectionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.ConnectionState
  ( ConnectionState
      ( ..,
        ConnectionStateAvailable,
        ConnectionStateDeleted,
        ConnectionStateDeleting,
        ConnectionStateDown,
        ConnectionStateOrdering,
        ConnectionStatePending,
        ConnectionStateRejected,
        ConnectionStateRequested,
        ConnectionStateUnknown
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

pattern ConnectionStateAvailable :: ConnectionState
pattern ConnectionStateAvailable = ConnectionState' "available"

pattern ConnectionStateDeleted :: ConnectionState
pattern ConnectionStateDeleted = ConnectionState' "deleted"

pattern ConnectionStateDeleting :: ConnectionState
pattern ConnectionStateDeleting = ConnectionState' "deleting"

pattern ConnectionStateDown :: ConnectionState
pattern ConnectionStateDown = ConnectionState' "down"

pattern ConnectionStateOrdering :: ConnectionState
pattern ConnectionStateOrdering = ConnectionState' "ordering"

pattern ConnectionStatePending :: ConnectionState
pattern ConnectionStatePending = ConnectionState' "pending"

pattern ConnectionStateRejected :: ConnectionState
pattern ConnectionStateRejected = ConnectionState' "rejected"

pattern ConnectionStateRequested :: ConnectionState
pattern ConnectionStateRequested = ConnectionState' "requested"

pattern ConnectionStateUnknown :: ConnectionState
pattern ConnectionStateUnknown = ConnectionState' "unknown"

{-# COMPLETE
  ConnectionStateAvailable,
  ConnectionStateDeleted,
  ConnectionStateDeleting,
  ConnectionStateDown,
  ConnectionStateOrdering,
  ConnectionStatePending,
  ConnectionStateRejected,
  ConnectionStateRequested,
  ConnectionStateUnknown,
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

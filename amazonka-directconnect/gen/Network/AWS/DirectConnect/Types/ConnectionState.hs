{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Available,
        Deleted,
        Deleting,
        Down,
        Ordering,
        Pending,
        Rejected,
        Requested,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionState = ConnectionState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Available :: ConnectionState
pattern Available = ConnectionState' "available"

pattern Deleted :: ConnectionState
pattern Deleted = ConnectionState' "deleted"

pattern Deleting :: ConnectionState
pattern Deleting = ConnectionState' "deleting"

pattern Down :: ConnectionState
pattern Down = ConnectionState' "down"

pattern Ordering :: ConnectionState
pattern Ordering = ConnectionState' "ordering"

pattern Pending :: ConnectionState
pattern Pending = ConnectionState' "pending"

pattern Rejected :: ConnectionState
pattern Rejected = ConnectionState' "rejected"

pattern Requested :: ConnectionState
pattern Requested = ConnectionState' "requested"

pattern Unknown :: ConnectionState
pattern Unknown = ConnectionState' "unknown"

{-# COMPLETE
  Available,
  Deleted,
  Deleting,
  Down,
  Ordering,
  Pending,
  Rejected,
  Requested,
  Unknown,
  ConnectionState'
  #-}

instance FromText ConnectionState where
  parser = (ConnectionState' . mk) <$> takeText

instance ToText ConnectionState where
  toText (ConnectionState' ci) = original ci

instance Hashable ConnectionState

instance NFData ConnectionState

instance ToByteString ConnectionState

instance ToQuery ConnectionState

instance ToHeader ConnectionState

instance FromJSON ConnectionState where
  parseJSON = parseJSONText "ConnectionState"

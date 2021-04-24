{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Authorized,
        Authorizing,
        Creating,
        Deauthorized,
        Deauthorizing,
        Deleting,
        Updating
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

pattern Authorized :: ConnectionState
pattern Authorized = ConnectionState' "AUTHORIZED"

pattern Authorizing :: ConnectionState
pattern Authorizing = ConnectionState' "AUTHORIZING"

pattern Creating :: ConnectionState
pattern Creating = ConnectionState' "CREATING"

pattern Deauthorized :: ConnectionState
pattern Deauthorized = ConnectionState' "DEAUTHORIZED"

pattern Deauthorizing :: ConnectionState
pattern Deauthorizing = ConnectionState' "DEAUTHORIZING"

pattern Deleting :: ConnectionState
pattern Deleting = ConnectionState' "DELETING"

pattern Updating :: ConnectionState
pattern Updating = ConnectionState' "UPDATING"

{-# COMPLETE
  Authorized,
  Authorizing,
  Creating,
  Deauthorized,
  Deauthorizing,
  Deleting,
  Updating,
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

instance ToJSON ConnectionState where
  toJSON = toJSONText

instance FromJSON ConnectionState where
  parseJSON = parseJSONText "ConnectionState"

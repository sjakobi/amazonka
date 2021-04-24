{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.InterconnectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.InterconnectState
  ( InterconnectState
      ( ..,
        ISAvailable,
        ISDeleted,
        ISDeleting,
        ISDown,
        ISPending,
        ISRequested,
        ISUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InterconnectState = InterconnectState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISAvailable :: InterconnectState
pattern ISAvailable = InterconnectState' "available"

pattern ISDeleted :: InterconnectState
pattern ISDeleted = InterconnectState' "deleted"

pattern ISDeleting :: InterconnectState
pattern ISDeleting = InterconnectState' "deleting"

pattern ISDown :: InterconnectState
pattern ISDown = InterconnectState' "down"

pattern ISPending :: InterconnectState
pattern ISPending = InterconnectState' "pending"

pattern ISRequested :: InterconnectState
pattern ISRequested = InterconnectState' "requested"

pattern ISUnknown :: InterconnectState
pattern ISUnknown = InterconnectState' "unknown"

{-# COMPLETE
  ISAvailable,
  ISDeleted,
  ISDeleting,
  ISDown,
  ISPending,
  ISRequested,
  ISUnknown,
  InterconnectState'
  #-}

instance FromText InterconnectState where
  parser = (InterconnectState' . mk) <$> takeText

instance ToText InterconnectState where
  toText (InterconnectState' ci) = original ci

instance Hashable InterconnectState

instance NFData InterconnectState

instance ToByteString InterconnectState

instance ToQuery InterconnectState

instance ToHeader InterconnectState

instance FromJSON InterconnectState where
  parseJSON = parseJSONText "InterconnectState"

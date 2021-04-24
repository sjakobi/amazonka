{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.SessionConnectionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.SessionConnectionState
  ( SessionConnectionState
      ( ..,
        Connected,
        NotConnected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SessionConnectionState
  = SessionConnectionState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Connected :: SessionConnectionState
pattern Connected = SessionConnectionState' "CONNECTED"

pattern NotConnected :: SessionConnectionState
pattern NotConnected = SessionConnectionState' "NOT_CONNECTED"

{-# COMPLETE
  Connected,
  NotConnected,
  SessionConnectionState'
  #-}

instance FromText SessionConnectionState where
  parser = (SessionConnectionState' . mk) <$> takeText

instance ToText SessionConnectionState where
  toText (SessionConnectionState' ci) = original ci

instance Hashable SessionConnectionState

instance NFData SessionConnectionState

instance ToByteString SessionConnectionState

instance ToQuery SessionConnectionState

instance ToHeader SessionConnectionState

instance FromJSON SessionConnectionState where
  parseJSON = parseJSONText "SessionConnectionState"

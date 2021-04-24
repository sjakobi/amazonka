{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.ConnectionStateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ConnectionStateType
  ( ConnectionStateType
      ( ..,
        Connected,
        Connecting,
        Disconnected,
        Disconnecting,
        Failed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionStateType
  = ConnectionStateType'
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

pattern Connected :: ConnectionStateType
pattern Connected = ConnectionStateType' "CONNECTED"

pattern Connecting :: ConnectionStateType
pattern Connecting = ConnectionStateType' "CONNECTING"

pattern Disconnected :: ConnectionStateType
pattern Disconnected = ConnectionStateType' "DISCONNECTED"

pattern Disconnecting :: ConnectionStateType
pattern Disconnecting = ConnectionStateType' "DISCONNECTING"

pattern Failed :: ConnectionStateType
pattern Failed = ConnectionStateType' "FAILED"

{-# COMPLETE
  Connected,
  Connecting,
  Disconnected,
  Disconnecting,
  Failed,
  ConnectionStateType'
  #-}

instance FromText ConnectionStateType where
  parser = (ConnectionStateType' . mk) <$> takeText

instance ToText ConnectionStateType where
  toText (ConnectionStateType' ci) = original ci

instance Hashable ConnectionStateType

instance NFData ConnectionStateType

instance ToByteString ConnectionStateType

instance ToQuery ConnectionStateType

instance ToHeader ConnectionStateType

instance FromJSON ConnectionStateType where
  parseJSON = parseJSONText "ConnectionStateType"

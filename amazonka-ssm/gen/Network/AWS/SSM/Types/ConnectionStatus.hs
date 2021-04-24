{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ConnectionStatus
  ( ConnectionStatus
      ( ..,
        Connected,
        NotConnected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionStatus = ConnectionStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Connected :: ConnectionStatus
pattern Connected = ConnectionStatus' "Connected"

pattern NotConnected :: ConnectionStatus
pattern NotConnected = ConnectionStatus' "NotConnected"

{-# COMPLETE
  Connected,
  NotConnected,
  ConnectionStatus'
  #-}

instance FromText ConnectionStatus where
  parser = (ConnectionStatus' . mk) <$> takeText

instance ToText ConnectionStatus where
  toText (ConnectionStatus' ci) = original ci

instance Hashable ConnectionStatus

instance NFData ConnectionStatus

instance ToByteString ConnectionStatus

instance ToQuery ConnectionStatus

instance ToHeader ConnectionStatus

instance FromJSON ConnectionStatus where
  parseJSON = parseJSONText "ConnectionStatus"

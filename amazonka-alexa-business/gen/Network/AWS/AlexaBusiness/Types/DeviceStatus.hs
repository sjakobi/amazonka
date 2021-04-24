{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceStatus
  ( DeviceStatus
      ( ..,
        DSDeregistered,
        DSFailed,
        DSPending,
        DSReady,
        DSWasOffline
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceStatus = DeviceStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSDeregistered :: DeviceStatus
pattern DSDeregistered = DeviceStatus' "DEREGISTERED"

pattern DSFailed :: DeviceStatus
pattern DSFailed = DeviceStatus' "FAILED"

pattern DSPending :: DeviceStatus
pattern DSPending = DeviceStatus' "PENDING"

pattern DSReady :: DeviceStatus
pattern DSReady = DeviceStatus' "READY"

pattern DSWasOffline :: DeviceStatus
pattern DSWasOffline = DeviceStatus' "WAS_OFFLINE"

{-# COMPLETE
  DSDeregistered,
  DSFailed,
  DSPending,
  DSReady,
  DSWasOffline,
  DeviceStatus'
  #-}

instance FromText DeviceStatus where
  parser = (DeviceStatus' . mk) <$> takeText

instance ToText DeviceStatus where
  toText (DeviceStatus' ci) = original ci

instance Hashable DeviceStatus

instance NFData DeviceStatus

instance ToByteString DeviceStatus

instance ToQuery DeviceStatus

instance ToHeader DeviceStatus

instance FromJSON DeviceStatus where
  parseJSON = parseJSONText "DeviceStatus"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceEventType
  ( DeviceEventType
      ( ..,
        ConnectionStatus,
        DeviceStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceEventType = DeviceEventType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ConnectionStatus :: DeviceEventType
pattern ConnectionStatus = DeviceEventType' "CONNECTION_STATUS"

pattern DeviceStatus :: DeviceEventType
pattern DeviceStatus = DeviceEventType' "DEVICE_STATUS"

{-# COMPLETE
  ConnectionStatus,
  DeviceStatus,
  DeviceEventType'
  #-}

instance FromText DeviceEventType where
  parser = (DeviceEventType' . mk) <$> takeText

instance ToText DeviceEventType where
  toText (DeviceEventType' ci) = original ci

instance Hashable DeviceEventType

instance NFData DeviceEventType

instance ToByteString DeviceEventType

instance ToQuery DeviceEventType

instance ToHeader DeviceEventType

instance ToJSON DeviceEventType where
  toJSON = toJSONText

instance FromJSON DeviceEventType where
  parseJSON = parseJSONText "DeviceEventType"

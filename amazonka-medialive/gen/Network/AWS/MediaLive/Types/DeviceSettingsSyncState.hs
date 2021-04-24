{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DeviceSettingsSyncState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DeviceSettingsSyncState
  ( DeviceSettingsSyncState
      ( ..,
        Synced,
        Syncing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
data DeviceSettingsSyncState
  = DeviceSettingsSyncState'
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

pattern Synced :: DeviceSettingsSyncState
pattern Synced = DeviceSettingsSyncState' "SYNCED"

pattern Syncing :: DeviceSettingsSyncState
pattern Syncing = DeviceSettingsSyncState' "SYNCING"

{-# COMPLETE
  Synced,
  Syncing,
  DeviceSettingsSyncState'
  #-}

instance FromText DeviceSettingsSyncState where
  parser = (DeviceSettingsSyncState' . mk) <$> takeText

instance ToText DeviceSettingsSyncState where
  toText (DeviceSettingsSyncState' ci) = original ci

instance Hashable DeviceSettingsSyncState

instance NFData DeviceSettingsSyncState

instance ToByteString DeviceSettingsSyncState

instance ToQuery DeviceSettingsSyncState

instance ToHeader DeviceSettingsSyncState

instance FromJSON DeviceSettingsSyncState where
  parseJSON = parseJSONText "DeviceSettingsSyncState"

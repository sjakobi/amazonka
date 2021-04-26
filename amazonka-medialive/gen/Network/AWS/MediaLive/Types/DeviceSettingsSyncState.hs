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
-- Module      : Network.AWS.MediaLive.Types.DeviceSettingsSyncState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DeviceSettingsSyncState
  ( DeviceSettingsSyncState
      ( ..,
        DeviceSettingsSyncStateSYNCED,
        DeviceSettingsSyncStateSYNCING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The status of the action to synchronize the device configuration. If you
-- change the configuration of the input device (for example, the maximum
-- bitrate), MediaLive sends the new data to the device. The device might
-- not update itself immediately. SYNCED means the device has updated its
-- configuration. SYNCING means that it has not updated its configuration.
newtype DeviceSettingsSyncState = DeviceSettingsSyncState'
  { fromDeviceSettingsSyncState ::
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

pattern DeviceSettingsSyncStateSYNCED :: DeviceSettingsSyncState
pattern DeviceSettingsSyncStateSYNCED = DeviceSettingsSyncState' "SYNCED"

pattern DeviceSettingsSyncStateSYNCING :: DeviceSettingsSyncState
pattern DeviceSettingsSyncStateSYNCING = DeviceSettingsSyncState' "SYNCING"

{-# COMPLETE
  DeviceSettingsSyncStateSYNCED,
  DeviceSettingsSyncStateSYNCING,
  DeviceSettingsSyncState'
  #-}

instance Prelude.FromText DeviceSettingsSyncState where
  parser = DeviceSettingsSyncState' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceSettingsSyncState where
  toText (DeviceSettingsSyncState' x) = x

instance Prelude.Hashable DeviceSettingsSyncState

instance Prelude.NFData DeviceSettingsSyncState

instance Prelude.ToByteString DeviceSettingsSyncState

instance Prelude.ToQuery DeviceSettingsSyncState

instance Prelude.ToHeader DeviceSettingsSyncState

instance Prelude.FromJSON DeviceSettingsSyncState where
  parseJSON = Prelude.parseJSONText "DeviceSettingsSyncState"

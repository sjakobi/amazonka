{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DeviceStats
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DeviceStats where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Status of devices.
--
--
--
-- /See:/ 'deviceStats' smart constructor.
data DeviceStats = DeviceStats'
  { _dsConnectedDeviceCount ::
      !Integer,
    _dsRegisteredDeviceCount :: !Integer
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsConnectedDeviceCount' - The number of devices connected with a heartbeat.
--
-- * 'dsRegisteredDeviceCount' - The number of registered devices.
deviceStats ::
  -- | 'dsConnectedDeviceCount'
  Integer ->
  -- | 'dsRegisteredDeviceCount'
  Integer ->
  DeviceStats
deviceStats
  pConnectedDeviceCount_
  pRegisteredDeviceCount_ =
    DeviceStats'
      { _dsConnectedDeviceCount =
          pConnectedDeviceCount_,
        _dsRegisteredDeviceCount = pRegisteredDeviceCount_
      }

-- | The number of devices connected with a heartbeat.
dsConnectedDeviceCount :: Lens' DeviceStats Integer
dsConnectedDeviceCount = lens _dsConnectedDeviceCount (\s a -> s {_dsConnectedDeviceCount = a})

-- | The number of registered devices.
dsRegisteredDeviceCount :: Lens' DeviceStats Integer
dsRegisteredDeviceCount = lens _dsRegisteredDeviceCount (\s a -> s {_dsRegisteredDeviceCount = a})

instance FromJSON DeviceStats where
  parseJSON =
    withObject
      "DeviceStats"
      ( \x ->
          DeviceStats'
            <$> (x .: "ConnectedDeviceCount")
            <*> (x .: "RegisteredDeviceCount")
      )

instance Hashable DeviceStats

instance NFData DeviceStats

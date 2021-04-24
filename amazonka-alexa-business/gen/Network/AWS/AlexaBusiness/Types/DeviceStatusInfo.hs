{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatusInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceStatusInfo where

import Network.AWS.AlexaBusiness.Types.ConnectionStatus
import Network.AWS.AlexaBusiness.Types.DeviceStatusDetail
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Detailed information about a device's status.
--
--
--
-- /See:/ 'deviceStatusInfo' smart constructor.
data DeviceStatusInfo = DeviceStatusInfo'
  { _dsiDeviceStatusDetails ::
      !(Maybe [DeviceStatusDetail]),
    _dsiConnectionStatusUpdatedTime ::
      !(Maybe POSIX),
    _dsiConnectionStatus ::
      !(Maybe ConnectionStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceStatusInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiDeviceStatusDetails' - One or more device status detail descriptions.
--
-- * 'dsiConnectionStatusUpdatedTime' - The time (in epoch) when the device connection status changed.
--
-- * 'dsiConnectionStatus' - The latest available information about the connection status of a device.
deviceStatusInfo ::
  DeviceStatusInfo
deviceStatusInfo =
  DeviceStatusInfo'
    { _dsiDeviceStatusDetails =
        Nothing,
      _dsiConnectionStatusUpdatedTime = Nothing,
      _dsiConnectionStatus = Nothing
    }

-- | One or more device status detail descriptions.
dsiDeviceStatusDetails :: Lens' DeviceStatusInfo [DeviceStatusDetail]
dsiDeviceStatusDetails = lens _dsiDeviceStatusDetails (\s a -> s {_dsiDeviceStatusDetails = a}) . _Default . _Coerce

-- | The time (in epoch) when the device connection status changed.
dsiConnectionStatusUpdatedTime :: Lens' DeviceStatusInfo (Maybe UTCTime)
dsiConnectionStatusUpdatedTime = lens _dsiConnectionStatusUpdatedTime (\s a -> s {_dsiConnectionStatusUpdatedTime = a}) . mapping _Time

-- | The latest available information about the connection status of a device.
dsiConnectionStatus :: Lens' DeviceStatusInfo (Maybe ConnectionStatus)
dsiConnectionStatus = lens _dsiConnectionStatus (\s a -> s {_dsiConnectionStatus = a})

instance FromJSON DeviceStatusInfo where
  parseJSON =
    withObject
      "DeviceStatusInfo"
      ( \x ->
          DeviceStatusInfo'
            <$> (x .:? "DeviceStatusDetails" .!= mempty)
            <*> (x .:? "ConnectionStatusUpdatedTime")
            <*> (x .:? "ConnectionStatus")
      )

instance Hashable DeviceStatusInfo

instance NFData DeviceStatusInfo

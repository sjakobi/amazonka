{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Device
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Device where

import Network.AWS.AlexaBusiness.Types.DeviceNetworkProfileInfo
import Network.AWS.AlexaBusiness.Types.DeviceStatus
import Network.AWS.AlexaBusiness.Types.DeviceStatusInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A device with attributes.
--
--
--
-- /See:/ 'device' smart constructor.
data Device = Device'
  { _dDeviceStatus ::
      !(Maybe DeviceStatus),
    _dMACAddress :: !(Maybe Text),
    _dDeviceARN :: !(Maybe Text),
    _dRoomARN :: !(Maybe Text),
    _dDeviceStatusInfo :: !(Maybe DeviceStatusInfo),
    _dDeviceName :: !(Maybe Text),
    _dNetworkProfileInfo ::
      !(Maybe DeviceNetworkProfileInfo),
    _dDeviceSerialNumber :: !(Maybe Text),
    _dDeviceType :: !(Maybe Text),
    _dSoftwareVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDeviceStatus' - The status of a device. If the status is not READY, check the DeviceStatusInfo value for details.
--
-- * 'dMACAddress' - The MAC address of a device.
--
-- * 'dDeviceARN' - The ARN of a device.
--
-- * 'dRoomARN' - The room ARN of a device.
--
-- * 'dDeviceStatusInfo' - Detailed information about a device's status.
--
-- * 'dDeviceName' - The name of a device.
--
-- * 'dNetworkProfileInfo' - Detailed information about a device's network profile.
--
-- * 'dDeviceSerialNumber' - The serial number of a device.
--
-- * 'dDeviceType' - The type of a device.
--
-- * 'dSoftwareVersion' - The software version of a device.
device ::
  Device
device =
  Device'
    { _dDeviceStatus = Nothing,
      _dMACAddress = Nothing,
      _dDeviceARN = Nothing,
      _dRoomARN = Nothing,
      _dDeviceStatusInfo = Nothing,
      _dDeviceName = Nothing,
      _dNetworkProfileInfo = Nothing,
      _dDeviceSerialNumber = Nothing,
      _dDeviceType = Nothing,
      _dSoftwareVersion = Nothing
    }

-- | The status of a device. If the status is not READY, check the DeviceStatusInfo value for details.
dDeviceStatus :: Lens' Device (Maybe DeviceStatus)
dDeviceStatus = lens _dDeviceStatus (\s a -> s {_dDeviceStatus = a})

-- | The MAC address of a device.
dMACAddress :: Lens' Device (Maybe Text)
dMACAddress = lens _dMACAddress (\s a -> s {_dMACAddress = a})

-- | The ARN of a device.
dDeviceARN :: Lens' Device (Maybe Text)
dDeviceARN = lens _dDeviceARN (\s a -> s {_dDeviceARN = a})

-- | The room ARN of a device.
dRoomARN :: Lens' Device (Maybe Text)
dRoomARN = lens _dRoomARN (\s a -> s {_dRoomARN = a})

-- | Detailed information about a device's status.
dDeviceStatusInfo :: Lens' Device (Maybe DeviceStatusInfo)
dDeviceStatusInfo = lens _dDeviceStatusInfo (\s a -> s {_dDeviceStatusInfo = a})

-- | The name of a device.
dDeviceName :: Lens' Device (Maybe Text)
dDeviceName = lens _dDeviceName (\s a -> s {_dDeviceName = a})

-- | Detailed information about a device's network profile.
dNetworkProfileInfo :: Lens' Device (Maybe DeviceNetworkProfileInfo)
dNetworkProfileInfo = lens _dNetworkProfileInfo (\s a -> s {_dNetworkProfileInfo = a})

-- | The serial number of a device.
dDeviceSerialNumber :: Lens' Device (Maybe Text)
dDeviceSerialNumber = lens _dDeviceSerialNumber (\s a -> s {_dDeviceSerialNumber = a})

-- | The type of a device.
dDeviceType :: Lens' Device (Maybe Text)
dDeviceType = lens _dDeviceType (\s a -> s {_dDeviceType = a})

-- | The software version of a device.
dSoftwareVersion :: Lens' Device (Maybe Text)
dSoftwareVersion = lens _dSoftwareVersion (\s a -> s {_dSoftwareVersion = a})

instance FromJSON Device where
  parseJSON =
    withObject
      "Device"
      ( \x ->
          Device'
            <$> (x .:? "DeviceStatus")
            <*> (x .:? "MacAddress")
            <*> (x .:? "DeviceArn")
            <*> (x .:? "RoomArn")
            <*> (x .:? "DeviceStatusInfo")
            <*> (x .:? "DeviceName")
            <*> (x .:? "NetworkProfileInfo")
            <*> (x .:? "DeviceSerialNumber")
            <*> (x .:? "DeviceType")
            <*> (x .:? "SoftwareVersion")
      )

instance Hashable Device

instance NFData Device

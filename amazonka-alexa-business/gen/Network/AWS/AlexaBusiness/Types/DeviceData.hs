{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceData where

import Network.AWS.AlexaBusiness.Types.DeviceStatus
import Network.AWS.AlexaBusiness.Types.DeviceStatusInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Device attributes.
--
--
--
-- /See:/ 'deviceData' smart constructor.
data DeviceData = DeviceData'
  { _ddDeviceStatus ::
      !(Maybe DeviceStatus),
    _ddMACAddress :: !(Maybe Text),
    _ddCreatedTime :: !(Maybe POSIX),
    _ddDeviceARN :: !(Maybe Text),
    _ddRoomARN :: !(Maybe Text),
    _ddNetworkProfileName :: !(Maybe Text),
    _ddDeviceStatusInfo :: !(Maybe DeviceStatusInfo),
    _ddDeviceName :: !(Maybe Text),
    _ddDeviceSerialNumber :: !(Maybe Text),
    _ddRoomName :: !(Maybe Text),
    _ddDeviceType :: !(Maybe Text),
    _ddNetworkProfileARN :: !(Maybe Text),
    _ddSoftwareVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDeviceStatus' - The status of a device.
--
-- * 'ddMACAddress' - The MAC address of a device.
--
-- * 'ddCreatedTime' - The time (in epoch) when the device data was created.
--
-- * 'ddDeviceARN' - The ARN of a device.
--
-- * 'ddRoomARN' - The room ARN associated with a device.
--
-- * 'ddNetworkProfileName' - The name of the network profile associated with a device.
--
-- * 'ddDeviceStatusInfo' - Detailed information about a device's status.
--
-- * 'ddDeviceName' - The name of a device.
--
-- * 'ddDeviceSerialNumber' - The serial number of a device.
--
-- * 'ddRoomName' - The name of the room associated with a device.
--
-- * 'ddDeviceType' - The type of a device.
--
-- * 'ddNetworkProfileARN' - The ARN of the network profile associated with a device.
--
-- * 'ddSoftwareVersion' - The software version of a device.
deviceData ::
  DeviceData
deviceData =
  DeviceData'
    { _ddDeviceStatus = Nothing,
      _ddMACAddress = Nothing,
      _ddCreatedTime = Nothing,
      _ddDeviceARN = Nothing,
      _ddRoomARN = Nothing,
      _ddNetworkProfileName = Nothing,
      _ddDeviceStatusInfo = Nothing,
      _ddDeviceName = Nothing,
      _ddDeviceSerialNumber = Nothing,
      _ddRoomName = Nothing,
      _ddDeviceType = Nothing,
      _ddNetworkProfileARN = Nothing,
      _ddSoftwareVersion = Nothing
    }

-- | The status of a device.
ddDeviceStatus :: Lens' DeviceData (Maybe DeviceStatus)
ddDeviceStatus = lens _ddDeviceStatus (\s a -> s {_ddDeviceStatus = a})

-- | The MAC address of a device.
ddMACAddress :: Lens' DeviceData (Maybe Text)
ddMACAddress = lens _ddMACAddress (\s a -> s {_ddMACAddress = a})

-- | The time (in epoch) when the device data was created.
ddCreatedTime :: Lens' DeviceData (Maybe UTCTime)
ddCreatedTime = lens _ddCreatedTime (\s a -> s {_ddCreatedTime = a}) . mapping _Time

-- | The ARN of a device.
ddDeviceARN :: Lens' DeviceData (Maybe Text)
ddDeviceARN = lens _ddDeviceARN (\s a -> s {_ddDeviceARN = a})

-- | The room ARN associated with a device.
ddRoomARN :: Lens' DeviceData (Maybe Text)
ddRoomARN = lens _ddRoomARN (\s a -> s {_ddRoomARN = a})

-- | The name of the network profile associated with a device.
ddNetworkProfileName :: Lens' DeviceData (Maybe Text)
ddNetworkProfileName = lens _ddNetworkProfileName (\s a -> s {_ddNetworkProfileName = a})

-- | Detailed information about a device's status.
ddDeviceStatusInfo :: Lens' DeviceData (Maybe DeviceStatusInfo)
ddDeviceStatusInfo = lens _ddDeviceStatusInfo (\s a -> s {_ddDeviceStatusInfo = a})

-- | The name of a device.
ddDeviceName :: Lens' DeviceData (Maybe Text)
ddDeviceName = lens _ddDeviceName (\s a -> s {_ddDeviceName = a})

-- | The serial number of a device.
ddDeviceSerialNumber :: Lens' DeviceData (Maybe Text)
ddDeviceSerialNumber = lens _ddDeviceSerialNumber (\s a -> s {_ddDeviceSerialNumber = a})

-- | The name of the room associated with a device.
ddRoomName :: Lens' DeviceData (Maybe Text)
ddRoomName = lens _ddRoomName (\s a -> s {_ddRoomName = a})

-- | The type of a device.
ddDeviceType :: Lens' DeviceData (Maybe Text)
ddDeviceType = lens _ddDeviceType (\s a -> s {_ddDeviceType = a})

-- | The ARN of the network profile associated with a device.
ddNetworkProfileARN :: Lens' DeviceData (Maybe Text)
ddNetworkProfileARN = lens _ddNetworkProfileARN (\s a -> s {_ddNetworkProfileARN = a})

-- | The software version of a device.
ddSoftwareVersion :: Lens' DeviceData (Maybe Text)
ddSoftwareVersion = lens _ddSoftwareVersion (\s a -> s {_ddSoftwareVersion = a})

instance FromJSON DeviceData where
  parseJSON =
    withObject
      "DeviceData"
      ( \x ->
          DeviceData'
            <$> (x .:? "DeviceStatus")
            <*> (x .:? "MacAddress")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "DeviceArn")
            <*> (x .:? "RoomArn")
            <*> (x .:? "NetworkProfileName")
            <*> (x .:? "DeviceStatusInfo")
            <*> (x .:? "DeviceName")
            <*> (x .:? "DeviceSerialNumber")
            <*> (x .:? "RoomName")
            <*> (x .:? "DeviceType")
            <*> (x .:? "NetworkProfileArn")
            <*> (x .:? "SoftwareVersion")
      )

instance Hashable DeviceData

instance NFData DeviceData

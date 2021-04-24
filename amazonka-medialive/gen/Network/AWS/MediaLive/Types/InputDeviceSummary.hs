{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceSummary where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.DeviceSettingsSyncState
import Network.AWS.MediaLive.Types.DeviceUpdateStatus
import Network.AWS.MediaLive.Types.InputDeviceConnectionState
import Network.AWS.MediaLive.Types.InputDeviceHdSettings
import Network.AWS.MediaLive.Types.InputDeviceNetworkSettings
import Network.AWS.MediaLive.Types.InputDeviceType
import Network.AWS.MediaLive.Types.InputDeviceUhdSettings
import Network.AWS.Prelude

-- | Details of the input device.
--
-- /See:/ 'inputDeviceSummary' smart constructor.
data InputDeviceSummary = InputDeviceSummary'
  { _inpUhdDeviceSettings ::
      !(Maybe InputDeviceUhdSettings),
    _inpHdDeviceSettings ::
      !(Maybe InputDeviceHdSettings),
    _inpMACAddress :: !(Maybe Text),
    _inpConnectionState ::
      !( Maybe
           InputDeviceConnectionState
       ),
    _inpNetworkSettings ::
      !( Maybe
           InputDeviceNetworkSettings
       ),
    _inpARN :: !(Maybe Text),
    _inpId :: !(Maybe Text),
    _inpDeviceUpdateStatus ::
      !(Maybe DeviceUpdateStatus),
    _inpName :: !(Maybe Text),
    _inpSerialNumber :: !(Maybe Text),
    _inpType ::
      !(Maybe InputDeviceType),
    _inpDeviceSettingsSyncState ::
      !(Maybe DeviceSettingsSyncState)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputDeviceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'inpUhdDeviceSettings' - Settings that describe an input device that is type UHD.
--
-- * 'inpHdDeviceSettings' - Settings that describe an input device that is type HD.
--
-- * 'inpMACAddress' - The network MAC address of the input device.
--
-- * 'inpConnectionState' - The state of the connection between the input device and AWS.
--
-- * 'inpNetworkSettings' - Network settings for the input device.
--
-- * 'inpARN' - The unique ARN of the input device.
--
-- * 'inpId' - The unique ID of the input device.
--
-- * 'inpDeviceUpdateStatus' - The status of software on the input device.
--
-- * 'inpName' - A name that you specify for the input device.
--
-- * 'inpSerialNumber' - The unique serial number of the input device.
--
-- * 'inpType' - The type of the input device.
--
-- * 'inpDeviceSettingsSyncState' - The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
inputDeviceSummary ::
  InputDeviceSummary
inputDeviceSummary =
  InputDeviceSummary'
    { _inpUhdDeviceSettings =
        Nothing,
      _inpHdDeviceSettings = Nothing,
      _inpMACAddress = Nothing,
      _inpConnectionState = Nothing,
      _inpNetworkSettings = Nothing,
      _inpARN = Nothing,
      _inpId = Nothing,
      _inpDeviceUpdateStatus = Nothing,
      _inpName = Nothing,
      _inpSerialNumber = Nothing,
      _inpType = Nothing,
      _inpDeviceSettingsSyncState = Nothing
    }

-- | Settings that describe an input device that is type UHD.
inpUhdDeviceSettings :: Lens' InputDeviceSummary (Maybe InputDeviceUhdSettings)
inpUhdDeviceSettings = lens _inpUhdDeviceSettings (\s a -> s {_inpUhdDeviceSettings = a})

-- | Settings that describe an input device that is type HD.
inpHdDeviceSettings :: Lens' InputDeviceSummary (Maybe InputDeviceHdSettings)
inpHdDeviceSettings = lens _inpHdDeviceSettings (\s a -> s {_inpHdDeviceSettings = a})

-- | The network MAC address of the input device.
inpMACAddress :: Lens' InputDeviceSummary (Maybe Text)
inpMACAddress = lens _inpMACAddress (\s a -> s {_inpMACAddress = a})

-- | The state of the connection between the input device and AWS.
inpConnectionState :: Lens' InputDeviceSummary (Maybe InputDeviceConnectionState)
inpConnectionState = lens _inpConnectionState (\s a -> s {_inpConnectionState = a})

-- | Network settings for the input device.
inpNetworkSettings :: Lens' InputDeviceSummary (Maybe InputDeviceNetworkSettings)
inpNetworkSettings = lens _inpNetworkSettings (\s a -> s {_inpNetworkSettings = a})

-- | The unique ARN of the input device.
inpARN :: Lens' InputDeviceSummary (Maybe Text)
inpARN = lens _inpARN (\s a -> s {_inpARN = a})

-- | The unique ID of the input device.
inpId :: Lens' InputDeviceSummary (Maybe Text)
inpId = lens _inpId (\s a -> s {_inpId = a})

-- | The status of software on the input device.
inpDeviceUpdateStatus :: Lens' InputDeviceSummary (Maybe DeviceUpdateStatus)
inpDeviceUpdateStatus = lens _inpDeviceUpdateStatus (\s a -> s {_inpDeviceUpdateStatus = a})

-- | A name that you specify for the input device.
inpName :: Lens' InputDeviceSummary (Maybe Text)
inpName = lens _inpName (\s a -> s {_inpName = a})

-- | The unique serial number of the input device.
inpSerialNumber :: Lens' InputDeviceSummary (Maybe Text)
inpSerialNumber = lens _inpSerialNumber (\s a -> s {_inpSerialNumber = a})

-- | The type of the input device.
inpType :: Lens' InputDeviceSummary (Maybe InputDeviceType)
inpType = lens _inpType (\s a -> s {_inpType = a})

-- | The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
inpDeviceSettingsSyncState :: Lens' InputDeviceSummary (Maybe DeviceSettingsSyncState)
inpDeviceSettingsSyncState = lens _inpDeviceSettingsSyncState (\s a -> s {_inpDeviceSettingsSyncState = a})

instance FromJSON InputDeviceSummary where
  parseJSON =
    withObject
      "InputDeviceSummary"
      ( \x ->
          InputDeviceSummary'
            <$> (x .:? "uhdDeviceSettings")
            <*> (x .:? "hdDeviceSettings")
            <*> (x .:? "macAddress")
            <*> (x .:? "connectionState")
            <*> (x .:? "networkSettings")
            <*> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "deviceUpdateStatus")
            <*> (x .:? "name")
            <*> (x .:? "serialNumber")
            <*> (x .:? "type")
            <*> (x .:? "deviceSettingsSyncState")
      )

instance Hashable InputDeviceSummary

instance NFData InputDeviceSummary

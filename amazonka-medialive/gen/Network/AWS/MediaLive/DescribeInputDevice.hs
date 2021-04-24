{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.DescribeInputDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details for the input device
module Network.AWS.MediaLive.DescribeInputDevice
  ( -- * Creating a Request
    describeInputDevice,
    DescribeInputDevice,

    -- * Request Lenses
    didInputDeviceId,

    -- * Destructuring the Response
    describeInputDeviceResponse,
    DescribeInputDeviceResponse,

    -- * Response Lenses
    didrrsUhdDeviceSettings,
    didrrsHdDeviceSettings,
    didrrsMACAddress,
    didrrsConnectionState,
    didrrsNetworkSettings,
    didrrsARN,
    didrrsId,
    didrrsDeviceUpdateStatus,
    didrrsName,
    didrrsSerialNumber,
    didrrsType,
    didrrsDeviceSettingsSyncState,
    didrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeInputDeviceRequest
--
-- /See:/ 'describeInputDevice' smart constructor.
newtype DescribeInputDevice = DescribeInputDevice'
  { _didInputDeviceId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInputDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didInputDeviceId' - The unique ID of this input device. For example, hd-123456789abcdef.
describeInputDevice ::
  -- | 'didInputDeviceId'
  Text ->
  DescribeInputDevice
describeInputDevice pInputDeviceId_ =
  DescribeInputDevice'
    { _didInputDeviceId =
        pInputDeviceId_
    }

-- | The unique ID of this input device. For example, hd-123456789abcdef.
didInputDeviceId :: Lens' DescribeInputDevice Text
didInputDeviceId = lens _didInputDeviceId (\s a -> s {_didInputDeviceId = a})

instance AWSRequest DescribeInputDevice where
  type
    Rs DescribeInputDevice =
      DescribeInputDeviceResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeInputDeviceResponse'
            <$> (x .?> "uhdDeviceSettings")
            <*> (x .?> "hdDeviceSettings")
            <*> (x .?> "macAddress")
            <*> (x .?> "connectionState")
            <*> (x .?> "networkSettings")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "deviceUpdateStatus")
            <*> (x .?> "name")
            <*> (x .?> "serialNumber")
            <*> (x .?> "type")
            <*> (x .?> "deviceSettingsSyncState")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInputDevice

instance NFData DescribeInputDevice

instance ToHeaders DescribeInputDevice where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeInputDevice where
  toPath DescribeInputDevice' {..} =
    mconcat
      ["/prod/inputDevices/", toBS _didInputDeviceId]

instance ToQuery DescribeInputDevice where
  toQuery = const mempty

-- | Placeholder documentation for DescribeInputDeviceResponse
--
-- /See:/ 'describeInputDeviceResponse' smart constructor.
data DescribeInputDeviceResponse = DescribeInputDeviceResponse'
  { _didrrsUhdDeviceSettings ::
      !( Maybe
           InputDeviceUhdSettings
       ),
    _didrrsHdDeviceSettings ::
      !( Maybe
           InputDeviceHdSettings
       ),
    _didrrsMACAddress ::
      !(Maybe Text),
    _didrrsConnectionState ::
      !( Maybe
           InputDeviceConnectionState
       ),
    _didrrsNetworkSettings ::
      !( Maybe
           InputDeviceNetworkSettings
       ),
    _didrrsARN ::
      !(Maybe Text),
    _didrrsId ::
      !(Maybe Text),
    _didrrsDeviceUpdateStatus ::
      !( Maybe
           DeviceUpdateStatus
       ),
    _didrrsName ::
      !(Maybe Text),
    _didrrsSerialNumber ::
      !(Maybe Text),
    _didrrsType ::
      !( Maybe
           InputDeviceType
       ),
    _didrrsDeviceSettingsSyncState ::
      !( Maybe
           DeviceSettingsSyncState
       ),
    _didrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInputDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didrrsUhdDeviceSettings' - Settings that describe an input device that is type UHD.
--
-- * 'didrrsHdDeviceSettings' - Settings that describe an input device that is type HD.
--
-- * 'didrrsMACAddress' - The network MAC address of the input device.
--
-- * 'didrrsConnectionState' - The state of the connection between the input device and AWS.
--
-- * 'didrrsNetworkSettings' - The network settings for the input device.
--
-- * 'didrrsARN' - The unique ARN of the input device.
--
-- * 'didrrsId' - The unique ID of the input device.
--
-- * 'didrrsDeviceUpdateStatus' - The status of software on the input device.
--
-- * 'didrrsName' - A name that you specify for the input device.
--
-- * 'didrrsSerialNumber' - The unique serial number of the input device.
--
-- * 'didrrsType' - The type of the input device.
--
-- * 'didrrsDeviceSettingsSyncState' - The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
--
-- * 'didrrsResponseStatus' - -- | The response status code.
describeInputDeviceResponse ::
  -- | 'didrrsResponseStatus'
  Int ->
  DescribeInputDeviceResponse
describeInputDeviceResponse pResponseStatus_ =
  DescribeInputDeviceResponse'
    { _didrrsUhdDeviceSettings =
        Nothing,
      _didrrsHdDeviceSettings = Nothing,
      _didrrsMACAddress = Nothing,
      _didrrsConnectionState = Nothing,
      _didrrsNetworkSettings = Nothing,
      _didrrsARN = Nothing,
      _didrrsId = Nothing,
      _didrrsDeviceUpdateStatus = Nothing,
      _didrrsName = Nothing,
      _didrrsSerialNumber = Nothing,
      _didrrsType = Nothing,
      _didrrsDeviceSettingsSyncState = Nothing,
      _didrrsResponseStatus = pResponseStatus_
    }

-- | Settings that describe an input device that is type UHD.
didrrsUhdDeviceSettings :: Lens' DescribeInputDeviceResponse (Maybe InputDeviceUhdSettings)
didrrsUhdDeviceSettings = lens _didrrsUhdDeviceSettings (\s a -> s {_didrrsUhdDeviceSettings = a})

-- | Settings that describe an input device that is type HD.
didrrsHdDeviceSettings :: Lens' DescribeInputDeviceResponse (Maybe InputDeviceHdSettings)
didrrsHdDeviceSettings = lens _didrrsHdDeviceSettings (\s a -> s {_didrrsHdDeviceSettings = a})

-- | The network MAC address of the input device.
didrrsMACAddress :: Lens' DescribeInputDeviceResponse (Maybe Text)
didrrsMACAddress = lens _didrrsMACAddress (\s a -> s {_didrrsMACAddress = a})

-- | The state of the connection between the input device and AWS.
didrrsConnectionState :: Lens' DescribeInputDeviceResponse (Maybe InputDeviceConnectionState)
didrrsConnectionState = lens _didrrsConnectionState (\s a -> s {_didrrsConnectionState = a})

-- | The network settings for the input device.
didrrsNetworkSettings :: Lens' DescribeInputDeviceResponse (Maybe InputDeviceNetworkSettings)
didrrsNetworkSettings = lens _didrrsNetworkSettings (\s a -> s {_didrrsNetworkSettings = a})

-- | The unique ARN of the input device.
didrrsARN :: Lens' DescribeInputDeviceResponse (Maybe Text)
didrrsARN = lens _didrrsARN (\s a -> s {_didrrsARN = a})

-- | The unique ID of the input device.
didrrsId :: Lens' DescribeInputDeviceResponse (Maybe Text)
didrrsId = lens _didrrsId (\s a -> s {_didrrsId = a})

-- | The status of software on the input device.
didrrsDeviceUpdateStatus :: Lens' DescribeInputDeviceResponse (Maybe DeviceUpdateStatus)
didrrsDeviceUpdateStatus = lens _didrrsDeviceUpdateStatus (\s a -> s {_didrrsDeviceUpdateStatus = a})

-- | A name that you specify for the input device.
didrrsName :: Lens' DescribeInputDeviceResponse (Maybe Text)
didrrsName = lens _didrrsName (\s a -> s {_didrrsName = a})

-- | The unique serial number of the input device.
didrrsSerialNumber :: Lens' DescribeInputDeviceResponse (Maybe Text)
didrrsSerialNumber = lens _didrrsSerialNumber (\s a -> s {_didrrsSerialNumber = a})

-- | The type of the input device.
didrrsType :: Lens' DescribeInputDeviceResponse (Maybe InputDeviceType)
didrrsType = lens _didrrsType (\s a -> s {_didrrsType = a})

-- | The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
didrrsDeviceSettingsSyncState :: Lens' DescribeInputDeviceResponse (Maybe DeviceSettingsSyncState)
didrrsDeviceSettingsSyncState = lens _didrrsDeviceSettingsSyncState (\s a -> s {_didrrsDeviceSettingsSyncState = a})

-- | -- | The response status code.
didrrsResponseStatus :: Lens' DescribeInputDeviceResponse Int
didrrsResponseStatus = lens _didrrsResponseStatus (\s a -> s {_didrrsResponseStatus = a})

instance NFData DescribeInputDeviceResponse

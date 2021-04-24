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
-- Module      : Network.AWS.MediaLive.UpdateInputDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the parameters for the input device.
module Network.AWS.MediaLive.UpdateInputDevice
  ( -- * Creating a Request
    updateInputDevice',
    UpdateInputDevice',

    -- * Request Lenses
    updUhdDeviceSettings,
    updHdDeviceSettings,
    updName,
    updInputDeviceId,

    -- * Destructuring the Response
    updateInputDeviceResponse,
    UpdateInputDeviceResponse,

    -- * Response Lenses
    uidrrsUhdDeviceSettings,
    uidrrsHdDeviceSettings,
    uidrrsMACAddress,
    uidrrsConnectionState,
    uidrrsNetworkSettings,
    uidrrsARN,
    uidrrsId,
    uidrrsDeviceUpdateStatus,
    uidrrsName,
    uidrrsSerialNumber,
    uidrrsType,
    uidrrsDeviceSettingsSyncState,
    uidrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to update an input device.
--
-- /See:/ 'updateInputDevice'' smart constructor.
data UpdateInputDevice' = UpdateInputDevice''
  { _updUhdDeviceSettings ::
      !( Maybe
           InputDeviceConfigurableSettings
       ),
    _updHdDeviceSettings ::
      !( Maybe
           InputDeviceConfigurableSettings
       ),
    _updName :: !(Maybe Text),
    _updInputDeviceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateInputDevice'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updUhdDeviceSettings' - The settings that you want to apply to the UHD input device.
--
-- * 'updHdDeviceSettings' - The settings that you want to apply to the HD input device.
--
-- * 'updName' - The name that you assigned to this input device (not the unique ID).
--
-- * 'updInputDeviceId' - The unique ID of the input device. For example, hd-123456789abcdef.
updateInputDevice' ::
  -- | 'updInputDeviceId'
  Text ->
  UpdateInputDevice'
updateInputDevice' pInputDeviceId_ =
  UpdateInputDevice''
    { _updUhdDeviceSettings =
        Nothing,
      _updHdDeviceSettings = Nothing,
      _updName = Nothing,
      _updInputDeviceId = pInputDeviceId_
    }

-- | The settings that you want to apply to the UHD input device.
updUhdDeviceSettings :: Lens' UpdateInputDevice' (Maybe InputDeviceConfigurableSettings)
updUhdDeviceSettings = lens _updUhdDeviceSettings (\s a -> s {_updUhdDeviceSettings = a})

-- | The settings that you want to apply to the HD input device.
updHdDeviceSettings :: Lens' UpdateInputDevice' (Maybe InputDeviceConfigurableSettings)
updHdDeviceSettings = lens _updHdDeviceSettings (\s a -> s {_updHdDeviceSettings = a})

-- | The name that you assigned to this input device (not the unique ID).
updName :: Lens' UpdateInputDevice' (Maybe Text)
updName = lens _updName (\s a -> s {_updName = a})

-- | The unique ID of the input device. For example, hd-123456789abcdef.
updInputDeviceId :: Lens' UpdateInputDevice' Text
updInputDeviceId = lens _updInputDeviceId (\s a -> s {_updInputDeviceId = a})

instance AWSRequest UpdateInputDevice' where
  type
    Rs UpdateInputDevice' =
      UpdateInputDeviceResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateInputDeviceResponse'
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

instance Hashable UpdateInputDevice'

instance NFData UpdateInputDevice'

instance ToHeaders UpdateInputDevice' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateInputDevice' where
  toJSON UpdateInputDevice'' {..} =
    object
      ( catMaybes
          [ ("uhdDeviceSettings" .=) <$> _updUhdDeviceSettings,
            ("hdDeviceSettings" .=) <$> _updHdDeviceSettings,
            ("name" .=) <$> _updName
          ]
      )

instance ToPath UpdateInputDevice' where
  toPath UpdateInputDevice'' {..} =
    mconcat
      ["/prod/inputDevices/", toBS _updInputDeviceId]

instance ToQuery UpdateInputDevice' where
  toQuery = const mempty

-- | Placeholder documentation for UpdateInputDeviceResponse
--
-- /See:/ 'updateInputDeviceResponse' smart constructor.
data UpdateInputDeviceResponse = UpdateInputDeviceResponse'
  { _uidrrsUhdDeviceSettings ::
      !( Maybe
           InputDeviceUhdSettings
       ),
    _uidrrsHdDeviceSettings ::
      !( Maybe
           InputDeviceHdSettings
       ),
    _uidrrsMACAddress ::
      !(Maybe Text),
    _uidrrsConnectionState ::
      !( Maybe
           InputDeviceConnectionState
       ),
    _uidrrsNetworkSettings ::
      !( Maybe
           InputDeviceNetworkSettings
       ),
    _uidrrsARN ::
      !(Maybe Text),
    _uidrrsId ::
      !(Maybe Text),
    _uidrrsDeviceUpdateStatus ::
      !( Maybe
           DeviceUpdateStatus
       ),
    _uidrrsName ::
      !(Maybe Text),
    _uidrrsSerialNumber ::
      !(Maybe Text),
    _uidrrsType ::
      !( Maybe
           InputDeviceType
       ),
    _uidrrsDeviceSettingsSyncState ::
      !( Maybe
           DeviceSettingsSyncState
       ),
    _uidrrsResponseStatus ::
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

-- | Creates a value of 'UpdateInputDeviceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uidrrsUhdDeviceSettings' - Settings that describe an input device that is type UHD.
--
-- * 'uidrrsHdDeviceSettings' - Settings that describe an input device that is type HD.
--
-- * 'uidrrsMACAddress' - The network MAC address of the input device.
--
-- * 'uidrrsConnectionState' - The state of the connection between the input device and AWS.
--
-- * 'uidrrsNetworkSettings' - The network settings for the input device.
--
-- * 'uidrrsARN' - The unique ARN of the input device.
--
-- * 'uidrrsId' - The unique ID of the input device.
--
-- * 'uidrrsDeviceUpdateStatus' - The status of software on the input device.
--
-- * 'uidrrsName' - A name that you specify for the input device.
--
-- * 'uidrrsSerialNumber' - The unique serial number of the input device.
--
-- * 'uidrrsType' - The type of the input device.
--
-- * 'uidrrsDeviceSettingsSyncState' - The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
--
-- * 'uidrrsResponseStatus' - -- | The response status code.
updateInputDeviceResponse ::
  -- | 'uidrrsResponseStatus'
  Int ->
  UpdateInputDeviceResponse
updateInputDeviceResponse pResponseStatus_ =
  UpdateInputDeviceResponse'
    { _uidrrsUhdDeviceSettings =
        Nothing,
      _uidrrsHdDeviceSettings = Nothing,
      _uidrrsMACAddress = Nothing,
      _uidrrsConnectionState = Nothing,
      _uidrrsNetworkSettings = Nothing,
      _uidrrsARN = Nothing,
      _uidrrsId = Nothing,
      _uidrrsDeviceUpdateStatus = Nothing,
      _uidrrsName = Nothing,
      _uidrrsSerialNumber = Nothing,
      _uidrrsType = Nothing,
      _uidrrsDeviceSettingsSyncState = Nothing,
      _uidrrsResponseStatus = pResponseStatus_
    }

-- | Settings that describe an input device that is type UHD.
uidrrsUhdDeviceSettings :: Lens' UpdateInputDeviceResponse (Maybe InputDeviceUhdSettings)
uidrrsUhdDeviceSettings = lens _uidrrsUhdDeviceSettings (\s a -> s {_uidrrsUhdDeviceSettings = a})

-- | Settings that describe an input device that is type HD.
uidrrsHdDeviceSettings :: Lens' UpdateInputDeviceResponse (Maybe InputDeviceHdSettings)
uidrrsHdDeviceSettings = lens _uidrrsHdDeviceSettings (\s a -> s {_uidrrsHdDeviceSettings = a})

-- | The network MAC address of the input device.
uidrrsMACAddress :: Lens' UpdateInputDeviceResponse (Maybe Text)
uidrrsMACAddress = lens _uidrrsMACAddress (\s a -> s {_uidrrsMACAddress = a})

-- | The state of the connection between the input device and AWS.
uidrrsConnectionState :: Lens' UpdateInputDeviceResponse (Maybe InputDeviceConnectionState)
uidrrsConnectionState = lens _uidrrsConnectionState (\s a -> s {_uidrrsConnectionState = a})

-- | The network settings for the input device.
uidrrsNetworkSettings :: Lens' UpdateInputDeviceResponse (Maybe InputDeviceNetworkSettings)
uidrrsNetworkSettings = lens _uidrrsNetworkSettings (\s a -> s {_uidrrsNetworkSettings = a})

-- | The unique ARN of the input device.
uidrrsARN :: Lens' UpdateInputDeviceResponse (Maybe Text)
uidrrsARN = lens _uidrrsARN (\s a -> s {_uidrrsARN = a})

-- | The unique ID of the input device.
uidrrsId :: Lens' UpdateInputDeviceResponse (Maybe Text)
uidrrsId = lens _uidrrsId (\s a -> s {_uidrrsId = a})

-- | The status of software on the input device.
uidrrsDeviceUpdateStatus :: Lens' UpdateInputDeviceResponse (Maybe DeviceUpdateStatus)
uidrrsDeviceUpdateStatus = lens _uidrrsDeviceUpdateStatus (\s a -> s {_uidrrsDeviceUpdateStatus = a})

-- | A name that you specify for the input device.
uidrrsName :: Lens' UpdateInputDeviceResponse (Maybe Text)
uidrrsName = lens _uidrrsName (\s a -> s {_uidrrsName = a})

-- | The unique serial number of the input device.
uidrrsSerialNumber :: Lens' UpdateInputDeviceResponse (Maybe Text)
uidrrsSerialNumber = lens _uidrrsSerialNumber (\s a -> s {_uidrrsSerialNumber = a})

-- | The type of the input device.
uidrrsType :: Lens' UpdateInputDeviceResponse (Maybe InputDeviceType)
uidrrsType = lens _uidrrsType (\s a -> s {_uidrrsType = a})

-- | The status of the action to synchronize the device configuration. If you change the configuration of the input device (for example, the maximum bitrate), MediaLive sends the new data to the device. The device might not update itself immediately. SYNCED means the device has updated its configuration. SYNCING means that it has not updated its configuration.
uidrrsDeviceSettingsSyncState :: Lens' UpdateInputDeviceResponse (Maybe DeviceSettingsSyncState)
uidrrsDeviceSettingsSyncState = lens _uidrrsDeviceSettingsSyncState (\s a -> s {_uidrrsDeviceSettingsSyncState = a})

-- | -- | The response status code.
uidrrsResponseStatus :: Lens' UpdateInputDeviceResponse Int
uidrrsResponseStatus = lens _uidrrsResponseStatus (\s a -> s {_uidrrsResponseStatus = a})

instance NFData UpdateInputDeviceResponse

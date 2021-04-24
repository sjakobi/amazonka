{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.DeviceInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceInstance where

import Network.AWS.DeviceFarm.Types.InstanceProfile
import Network.AWS.DeviceFarm.Types.InstanceStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the device instance.
--
--
--
-- /See:/ 'deviceInstance' smart constructor.
data DeviceInstance = DeviceInstance'
  { _diUdid ::
      !(Maybe Text),
    _diStatus :: !(Maybe InstanceStatus),
    _diDeviceARN :: !(Maybe Text),
    _diArn :: !(Maybe Text),
    _diLabels :: !(Maybe [Text]),
    _diInstanceProfile ::
      !(Maybe InstanceProfile)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeviceInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diUdid' - Unique device identifier for the device instance.
--
-- * 'diStatus' - The status of the device instance. Valid values are listed here.
--
-- * 'diDeviceARN' - The ARN of the device.
--
-- * 'diArn' - The Amazon Resource Name (ARN) of the device instance.
--
-- * 'diLabels' - An array of strings that describe the device instance.
--
-- * 'diInstanceProfile' - A object that contains information about the instance profile.
deviceInstance ::
  DeviceInstance
deviceInstance =
  DeviceInstance'
    { _diUdid = Nothing,
      _diStatus = Nothing,
      _diDeviceARN = Nothing,
      _diArn = Nothing,
      _diLabels = Nothing,
      _diInstanceProfile = Nothing
    }

-- | Unique device identifier for the device instance.
diUdid :: Lens' DeviceInstance (Maybe Text)
diUdid = lens _diUdid (\s a -> s {_diUdid = a})

-- | The status of the device instance. Valid values are listed here.
diStatus :: Lens' DeviceInstance (Maybe InstanceStatus)
diStatus = lens _diStatus (\s a -> s {_diStatus = a})

-- | The ARN of the device.
diDeviceARN :: Lens' DeviceInstance (Maybe Text)
diDeviceARN = lens _diDeviceARN (\s a -> s {_diDeviceARN = a})

-- | The Amazon Resource Name (ARN) of the device instance.
diArn :: Lens' DeviceInstance (Maybe Text)
diArn = lens _diArn (\s a -> s {_diArn = a})

-- | An array of strings that describe the device instance.
diLabels :: Lens' DeviceInstance [Text]
diLabels = lens _diLabels (\s a -> s {_diLabels = a}) . _Default . _Coerce

-- | A object that contains information about the instance profile.
diInstanceProfile :: Lens' DeviceInstance (Maybe InstanceProfile)
diInstanceProfile = lens _diInstanceProfile (\s a -> s {_diInstanceProfile = a})

instance FromJSON DeviceInstance where
  parseJSON =
    withObject
      "DeviceInstance"
      ( \x ->
          DeviceInstance'
            <$> (x .:? "udid")
            <*> (x .:? "status")
            <*> (x .:? "deviceArn")
            <*> (x .:? "arn")
            <*> (x .:? "labels" .!= mempty)
            <*> (x .:? "instanceProfile")
      )

instance Hashable DeviceInstance

instance NFData DeviceInstance

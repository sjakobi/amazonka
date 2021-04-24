{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Device
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Device where

import Network.AWS.DeviceFarm.Types.CPU
import Network.AWS.DeviceFarm.Types.DeviceAvailability
import Network.AWS.DeviceFarm.Types.DeviceFormFactor
import Network.AWS.DeviceFarm.Types.DeviceInstance
import Network.AWS.DeviceFarm.Types.DevicePlatform
import Network.AWS.DeviceFarm.Types.Resolution
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a device type that an app is tested against.
--
--
--
-- /See:/ 'device' smart constructor.
data Device = Device'
  { _dManufacturer ::
      !(Maybe Text),
    _dPlatform :: !(Maybe DevicePlatform),
    _dModel :: !(Maybe Text),
    _dFleetName :: !(Maybe Text),
    _dMemory :: !(Maybe Integer),
    _dAvailability :: !(Maybe DeviceAvailability),
    _dFleetType :: !(Maybe Text),
    _dFormFactor :: !(Maybe DeviceFormFactor),
    _dRemoteAccessEnabled :: !(Maybe Bool),
    _dArn :: !(Maybe Text),
    _dInstances :: !(Maybe [DeviceInstance]),
    _dName :: !(Maybe Text),
    _dImage :: !(Maybe Text),
    _dCarrier :: !(Maybe Text),
    _dOs :: !(Maybe Text),
    _dHeapSize :: !(Maybe Integer),
    _dRadio :: !(Maybe Text),
    _dResolution :: !(Maybe Resolution),
    _dCpu :: !(Maybe CPU),
    _dRemoteDebugEnabled :: !(Maybe Bool),
    _dModelId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dManufacturer' - The device's manufacturer name.
--
-- * 'dPlatform' - The device's platform. Allowed values include:     * ANDROID     * IOS
--
-- * 'dModel' - The device's model name.
--
-- * 'dFleetName' - The name of the fleet to which this device belongs.
--
-- * 'dMemory' - The device's total memory size, expressed in bytes.
--
-- * 'dAvailability' - Indicates how likely a device is available for a test run. Currently available in the 'ListDevices' and GetDevice API methods.
--
-- * 'dFleetType' - The type of fleet to which this device belongs. Possible values are PRIVATE and PUBLIC.
--
-- * 'dFormFactor' - The device's form factor. Allowed values include:     * PHONE     * TABLET
--
-- * 'dRemoteAccessEnabled' - Specifies whether remote access has been enabled for the specified device.
--
-- * 'dArn' - The device's ARN.
--
-- * 'dInstances' - The instances that belong to this device.
--
-- * 'dName' - The device's display name.
--
-- * 'dImage' - The device's image name.
--
-- * 'dCarrier' - The device's carrier.
--
-- * 'dOs' - The device's operating system type.
--
-- * 'dHeapSize' - The device's heap size, expressed in bytes.
--
-- * 'dRadio' - The device's radio.
--
-- * 'dResolution' - The resolution of the device.
--
-- * 'dCpu' - Information about the device's CPU.
--
-- * 'dRemoteDebugEnabled' - This flag is set to @true@ if remote debugging is enabled for the device. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'dModelId' - The device's model ID.
device ::
  Device
device =
  Device'
    { _dManufacturer = Nothing,
      _dPlatform = Nothing,
      _dModel = Nothing,
      _dFleetName = Nothing,
      _dMemory = Nothing,
      _dAvailability = Nothing,
      _dFleetType = Nothing,
      _dFormFactor = Nothing,
      _dRemoteAccessEnabled = Nothing,
      _dArn = Nothing,
      _dInstances = Nothing,
      _dName = Nothing,
      _dImage = Nothing,
      _dCarrier = Nothing,
      _dOs = Nothing,
      _dHeapSize = Nothing,
      _dRadio = Nothing,
      _dResolution = Nothing,
      _dCpu = Nothing,
      _dRemoteDebugEnabled = Nothing,
      _dModelId = Nothing
    }

-- | The device's manufacturer name.
dManufacturer :: Lens' Device (Maybe Text)
dManufacturer = lens _dManufacturer (\s a -> s {_dManufacturer = a})

-- | The device's platform. Allowed values include:     * ANDROID     * IOS
dPlatform :: Lens' Device (Maybe DevicePlatform)
dPlatform = lens _dPlatform (\s a -> s {_dPlatform = a})

-- | The device's model name.
dModel :: Lens' Device (Maybe Text)
dModel = lens _dModel (\s a -> s {_dModel = a})

-- | The name of the fleet to which this device belongs.
dFleetName :: Lens' Device (Maybe Text)
dFleetName = lens _dFleetName (\s a -> s {_dFleetName = a})

-- | The device's total memory size, expressed in bytes.
dMemory :: Lens' Device (Maybe Integer)
dMemory = lens _dMemory (\s a -> s {_dMemory = a})

-- | Indicates how likely a device is available for a test run. Currently available in the 'ListDevices' and GetDevice API methods.
dAvailability :: Lens' Device (Maybe DeviceAvailability)
dAvailability = lens _dAvailability (\s a -> s {_dAvailability = a})

-- | The type of fleet to which this device belongs. Possible values are PRIVATE and PUBLIC.
dFleetType :: Lens' Device (Maybe Text)
dFleetType = lens _dFleetType (\s a -> s {_dFleetType = a})

-- | The device's form factor. Allowed values include:     * PHONE     * TABLET
dFormFactor :: Lens' Device (Maybe DeviceFormFactor)
dFormFactor = lens _dFormFactor (\s a -> s {_dFormFactor = a})

-- | Specifies whether remote access has been enabled for the specified device.
dRemoteAccessEnabled :: Lens' Device (Maybe Bool)
dRemoteAccessEnabled = lens _dRemoteAccessEnabled (\s a -> s {_dRemoteAccessEnabled = a})

-- | The device's ARN.
dArn :: Lens' Device (Maybe Text)
dArn = lens _dArn (\s a -> s {_dArn = a})

-- | The instances that belong to this device.
dInstances :: Lens' Device [DeviceInstance]
dInstances = lens _dInstances (\s a -> s {_dInstances = a}) . _Default . _Coerce

-- | The device's display name.
dName :: Lens' Device (Maybe Text)
dName = lens _dName (\s a -> s {_dName = a})

-- | The device's image name.
dImage :: Lens' Device (Maybe Text)
dImage = lens _dImage (\s a -> s {_dImage = a})

-- | The device's carrier.
dCarrier :: Lens' Device (Maybe Text)
dCarrier = lens _dCarrier (\s a -> s {_dCarrier = a})

-- | The device's operating system type.
dOs :: Lens' Device (Maybe Text)
dOs = lens _dOs (\s a -> s {_dOs = a})

-- | The device's heap size, expressed in bytes.
dHeapSize :: Lens' Device (Maybe Integer)
dHeapSize = lens _dHeapSize (\s a -> s {_dHeapSize = a})

-- | The device's radio.
dRadio :: Lens' Device (Maybe Text)
dRadio = lens _dRadio (\s a -> s {_dRadio = a})

-- | The resolution of the device.
dResolution :: Lens' Device (Maybe Resolution)
dResolution = lens _dResolution (\s a -> s {_dResolution = a})

-- | Information about the device's CPU.
dCpu :: Lens' Device (Maybe CPU)
dCpu = lens _dCpu (\s a -> s {_dCpu = a})

-- | This flag is set to @true@ if remote debugging is enabled for the device. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
dRemoteDebugEnabled :: Lens' Device (Maybe Bool)
dRemoteDebugEnabled = lens _dRemoteDebugEnabled (\s a -> s {_dRemoteDebugEnabled = a})

-- | The device's model ID.
dModelId :: Lens' Device (Maybe Text)
dModelId = lens _dModelId (\s a -> s {_dModelId = a})

instance FromJSON Device where
  parseJSON =
    withObject
      "Device"
      ( \x ->
          Device'
            <$> (x .:? "manufacturer")
            <*> (x .:? "platform")
            <*> (x .:? "model")
            <*> (x .:? "fleetName")
            <*> (x .:? "memory")
            <*> (x .:? "availability")
            <*> (x .:? "fleetType")
            <*> (x .:? "formFactor")
            <*> (x .:? "remoteAccessEnabled")
            <*> (x .:? "arn")
            <*> (x .:? "instances" .!= mempty)
            <*> (x .:? "name")
            <*> (x .:? "image")
            <*> (x .:? "carrier")
            <*> (x .:? "os")
            <*> (x .:? "heapSize")
            <*> (x .:? "radio")
            <*> (x .:? "resolution")
            <*> (x .:? "cpu")
            <*> (x .:? "remoteDebugEnabled")
            <*> (x .:? "modelId")
      )

instance Hashable Device

instance NFData Device

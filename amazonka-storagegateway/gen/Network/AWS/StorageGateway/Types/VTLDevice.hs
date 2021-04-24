{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.VTLDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.VTLDevice where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StorageGateway.Types.DeviceiSCSIAttributes

-- | Represents a device object associated with a tape gateway.
--
--
--
-- /See:/ 'vTLDevice' smart constructor.
data VTLDevice = VTLDevice'
  { _vtldVTLDeviceProductIdentifier ::
      !(Maybe Text),
    _vtldVTLDeviceVendor :: !(Maybe Text),
    _vtldDeviceiSCSIAttributes ::
      !(Maybe DeviceiSCSIAttributes),
    _vtldVTLDeviceType :: !(Maybe Text),
    _vtldVTLDeviceARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VTLDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtldVTLDeviceProductIdentifier' - Specifies the model number of device that the VTL device emulates.
--
-- * 'vtldVTLDeviceVendor' - Specifies the vendor of the device that the VTL device object emulates.
--
-- * 'vtldDeviceiSCSIAttributes' - A list of iSCSI information about a VTL device.
--
-- * 'vtldVTLDeviceType' - Specifies the type of device that the VTL device emulates.
--
-- * 'vtldVTLDeviceARN' - Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media changer).
vTLDevice ::
  VTLDevice
vTLDevice =
  VTLDevice'
    { _vtldVTLDeviceProductIdentifier =
        Nothing,
      _vtldVTLDeviceVendor = Nothing,
      _vtldDeviceiSCSIAttributes = Nothing,
      _vtldVTLDeviceType = Nothing,
      _vtldVTLDeviceARN = Nothing
    }

-- | Specifies the model number of device that the VTL device emulates.
vtldVTLDeviceProductIdentifier :: Lens' VTLDevice (Maybe Text)
vtldVTLDeviceProductIdentifier = lens _vtldVTLDeviceProductIdentifier (\s a -> s {_vtldVTLDeviceProductIdentifier = a})

-- | Specifies the vendor of the device that the VTL device object emulates.
vtldVTLDeviceVendor :: Lens' VTLDevice (Maybe Text)
vtldVTLDeviceVendor = lens _vtldVTLDeviceVendor (\s a -> s {_vtldVTLDeviceVendor = a})

-- | A list of iSCSI information about a VTL device.
vtldDeviceiSCSIAttributes :: Lens' VTLDevice (Maybe DeviceiSCSIAttributes)
vtldDeviceiSCSIAttributes = lens _vtldDeviceiSCSIAttributes (\s a -> s {_vtldDeviceiSCSIAttributes = a})

-- | Specifies the type of device that the VTL device emulates.
vtldVTLDeviceType :: Lens' VTLDevice (Maybe Text)
vtldVTLDeviceType = lens _vtldVTLDeviceType (\s a -> s {_vtldVTLDeviceType = a})

-- | Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media changer).
vtldVTLDeviceARN :: Lens' VTLDevice (Maybe Text)
vtldVTLDeviceARN = lens _vtldVTLDeviceARN (\s a -> s {_vtldVTLDeviceARN = a})

instance FromJSON VTLDevice where
  parseJSON =
    withObject
      "VTLDevice"
      ( \x ->
          VTLDevice'
            <$> (x .:? "VTLDeviceProductIdentifier")
            <*> (x .:? "VTLDeviceVendor")
            <*> (x .:? "DeviceiSCSIAttributes")
            <*> (x .:? "VTLDeviceType")
            <*> (x .:? "VTLDeviceARN")
      )

instance Hashable VTLDevice

instance NFData VTLDevice

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceAccessProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceAccessProperties where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.AccessPropertyValue

-- | The device types and operating systems that can be used to access a WorkSpace. For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html Amazon WorkSpaces Client Network Requirements> .
--
--
--
-- /See:/ 'workspaceAccessProperties' smart constructor.
data WorkspaceAccessProperties = WorkspaceAccessProperties'
  { _wapDeviceTypeOSx ::
      !( Maybe
           AccessPropertyValue
       ),
    _wapDeviceTypeWindows ::
      !( Maybe
           AccessPropertyValue
       ),
    _wapDeviceTypeAndroid ::
      !( Maybe
           AccessPropertyValue
       ),
    _wapDeviceTypeZeroClient ::
      !( Maybe
           AccessPropertyValue
       ),
    _wapDeviceTypeWeb ::
      !( Maybe
           AccessPropertyValue
       ),
    _wapDeviceTypeIos ::
      !( Maybe
           AccessPropertyValue
       ),
    _wapDeviceTypeChromeOS ::
      !( Maybe
           AccessPropertyValue
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WorkspaceAccessProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wapDeviceTypeOSx' - Indicates whether users can use macOS clients to access their WorkSpaces. To restrict WorkSpaces access to trusted devices (also known as managed devices) with valid certificates, specify a value of @TRUST@ . For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html Restrict WorkSpaces Access to Trusted Devices> .
--
-- * 'wapDeviceTypeWindows' - Indicates whether users can use Windows clients to access their WorkSpaces. To restrict WorkSpaces access to trusted devices (also known as managed devices) with valid certificates, specify a value of @TRUST@ . For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html Restrict WorkSpaces Access to Trusted Devices> .
--
-- * 'wapDeviceTypeAndroid' - Indicates whether users can use Android devices to access their WorkSpaces.
--
-- * 'wapDeviceTypeZeroClient' - Indicates whether users can use zero client devices to access their WorkSpaces.
--
-- * 'wapDeviceTypeWeb' - Indicates whether users can access their WorkSpaces through a web browser.
--
-- * 'wapDeviceTypeIos' - Indicates whether users can use iOS devices to access their WorkSpaces.
--
-- * 'wapDeviceTypeChromeOS' - Indicates whether users can use Chromebooks to access their WorkSpaces.
workspaceAccessProperties ::
  WorkspaceAccessProperties
workspaceAccessProperties =
  WorkspaceAccessProperties'
    { _wapDeviceTypeOSx =
        Nothing,
      _wapDeviceTypeWindows = Nothing,
      _wapDeviceTypeAndroid = Nothing,
      _wapDeviceTypeZeroClient = Nothing,
      _wapDeviceTypeWeb = Nothing,
      _wapDeviceTypeIos = Nothing,
      _wapDeviceTypeChromeOS = Nothing
    }

-- | Indicates whether users can use macOS clients to access their WorkSpaces. To restrict WorkSpaces access to trusted devices (also known as managed devices) with valid certificates, specify a value of @TRUST@ . For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html Restrict WorkSpaces Access to Trusted Devices> .
wapDeviceTypeOSx :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeOSx = lens _wapDeviceTypeOSx (\s a -> s {_wapDeviceTypeOSx = a})

-- | Indicates whether users can use Windows clients to access their WorkSpaces. To restrict WorkSpaces access to trusted devices (also known as managed devices) with valid certificates, specify a value of @TRUST@ . For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html Restrict WorkSpaces Access to Trusted Devices> .
wapDeviceTypeWindows :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeWindows = lens _wapDeviceTypeWindows (\s a -> s {_wapDeviceTypeWindows = a})

-- | Indicates whether users can use Android devices to access their WorkSpaces.
wapDeviceTypeAndroid :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeAndroid = lens _wapDeviceTypeAndroid (\s a -> s {_wapDeviceTypeAndroid = a})

-- | Indicates whether users can use zero client devices to access their WorkSpaces.
wapDeviceTypeZeroClient :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeZeroClient = lens _wapDeviceTypeZeroClient (\s a -> s {_wapDeviceTypeZeroClient = a})

-- | Indicates whether users can access their WorkSpaces through a web browser.
wapDeviceTypeWeb :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeWeb = lens _wapDeviceTypeWeb (\s a -> s {_wapDeviceTypeWeb = a})

-- | Indicates whether users can use iOS devices to access their WorkSpaces.
wapDeviceTypeIos :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeIos = lens _wapDeviceTypeIos (\s a -> s {_wapDeviceTypeIos = a})

-- | Indicates whether users can use Chromebooks to access their WorkSpaces.
wapDeviceTypeChromeOS :: Lens' WorkspaceAccessProperties (Maybe AccessPropertyValue)
wapDeviceTypeChromeOS = lens _wapDeviceTypeChromeOS (\s a -> s {_wapDeviceTypeChromeOS = a})

instance FromJSON WorkspaceAccessProperties where
  parseJSON =
    withObject
      "WorkspaceAccessProperties"
      ( \x ->
          WorkspaceAccessProperties'
            <$> (x .:? "DeviceTypeOsx")
            <*> (x .:? "DeviceTypeWindows")
            <*> (x .:? "DeviceTypeAndroid")
            <*> (x .:? "DeviceTypeZeroClient")
            <*> (x .:? "DeviceTypeWeb")
            <*> (x .:? "DeviceTypeIos")
            <*> (x .:? "DeviceTypeChromeOs")
      )

instance Hashable WorkspaceAccessProperties

instance NFData WorkspaceAccessProperties

instance ToJSON WorkspaceAccessProperties where
  toJSON WorkspaceAccessProperties' {..} =
    object
      ( catMaybes
          [ ("DeviceTypeOsx" .=) <$> _wapDeviceTypeOSx,
            ("DeviceTypeWindows" .=) <$> _wapDeviceTypeWindows,
            ("DeviceTypeAndroid" .=) <$> _wapDeviceTypeAndroid,
            ("DeviceTypeZeroClient" .=)
              <$> _wapDeviceTypeZeroClient,
            ("DeviceTypeWeb" .=) <$> _wapDeviceTypeWeb,
            ("DeviceTypeIos" .=) <$> _wapDeviceTypeIos,
            ("DeviceTypeChromeOs" .=)
              <$> _wapDeviceTypeChromeOS
          ]
      )

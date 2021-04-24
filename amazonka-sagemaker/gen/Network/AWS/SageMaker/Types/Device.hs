{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Device
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Device where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information of a particular device.
--
--
--
-- /See:/ 'device' smart constructor.
data Device = Device'
  { _dIotThingName ::
      !(Maybe Text),
    _dDescription :: !(Maybe Text),
    _dDeviceName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dIotThingName' - AWS Internet of Things (IoT) object name.
--
-- * 'dDescription' - Description of the device.
--
-- * 'dDeviceName' - The name of the device.
device ::
  -- | 'dDeviceName'
  Text ->
  Device
device pDeviceName_ =
  Device'
    { _dIotThingName = Nothing,
      _dDescription = Nothing,
      _dDeviceName = pDeviceName_
    }

-- | AWS Internet of Things (IoT) object name.
dIotThingName :: Lens' Device (Maybe Text)
dIotThingName = lens _dIotThingName (\s a -> s {_dIotThingName = a})

-- | Description of the device.
dDescription :: Lens' Device (Maybe Text)
dDescription = lens _dDescription (\s a -> s {_dDescription = a})

-- | The name of the device.
dDeviceName :: Lens' Device Text
dDeviceName = lens _dDeviceName (\s a -> s {_dDeviceName = a})

instance Hashable Device

instance NFData Device

instance ToJSON Device where
  toJSON Device' {..} =
    object
      ( catMaybes
          [ ("IotThingName" .=) <$> _dIotThingName,
            ("Description" .=) <$> _dDescription,
            Just ("DeviceName" .= _dDeviceName)
          ]
      )

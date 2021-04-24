{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.DevicePoolCompatibilityResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DevicePoolCompatibilityResult where

import Network.AWS.DeviceFarm.Types.Device
import Network.AWS.DeviceFarm.Types.IncompatibilityMessage
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a device pool compatibility result.
--
--
--
-- /See:/ 'devicePoolCompatibilityResult' smart constructor.
data DevicePoolCompatibilityResult = DevicePoolCompatibilityResult'
  { _dpcrIncompatibilityMessages ::
      !( Maybe
           [IncompatibilityMessage]
       ),
    _dpcrCompatible ::
      !( Maybe
           Bool
       ),
    _dpcrDevice ::
      !( Maybe
           Device
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

-- | Creates a value of 'DevicePoolCompatibilityResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpcrIncompatibilityMessages' - Information about the compatibility.
--
-- * 'dpcrCompatible' - Whether the result was compatible with the device pool.
--
-- * 'dpcrDevice' - The device (phone or tablet) to return information about.
devicePoolCompatibilityResult ::
  DevicePoolCompatibilityResult
devicePoolCompatibilityResult =
  DevicePoolCompatibilityResult'
    { _dpcrIncompatibilityMessages =
        Nothing,
      _dpcrCompatible = Nothing,
      _dpcrDevice = Nothing
    }

-- | Information about the compatibility.
dpcrIncompatibilityMessages :: Lens' DevicePoolCompatibilityResult [IncompatibilityMessage]
dpcrIncompatibilityMessages = lens _dpcrIncompatibilityMessages (\s a -> s {_dpcrIncompatibilityMessages = a}) . _Default . _Coerce

-- | Whether the result was compatible with the device pool.
dpcrCompatible :: Lens' DevicePoolCompatibilityResult (Maybe Bool)
dpcrCompatible = lens _dpcrCompatible (\s a -> s {_dpcrCompatible = a})

-- | The device (phone or tablet) to return information about.
dpcrDevice :: Lens' DevicePoolCompatibilityResult (Maybe Device)
dpcrDevice = lens _dpcrDevice (\s a -> s {_dpcrDevice = a})

instance FromJSON DevicePoolCompatibilityResult where
  parseJSON =
    withObject
      "DevicePoolCompatibilityResult"
      ( \x ->
          DevicePoolCompatibilityResult'
            <$> (x .:? "incompatibilityMessages" .!= mempty)
            <*> (x .:? "compatible")
            <*> (x .:? "device")
      )

instance Hashable DevicePoolCompatibilityResult

instance NFData DevicePoolCompatibilityResult

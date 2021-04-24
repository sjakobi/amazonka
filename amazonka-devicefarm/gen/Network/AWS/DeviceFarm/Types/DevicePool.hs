{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.DevicePool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DevicePool where

import Network.AWS.DeviceFarm.Types.DevicePoolType
import Network.AWS.DeviceFarm.Types.Rule
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a collection of device types.
--
--
--
-- /See:/ 'devicePool' smart constructor.
data DevicePool = DevicePool'
  { _dpRules ::
      !(Maybe [Rule]),
    _dpArn :: !(Maybe Text),
    _dpName :: !(Maybe Text),
    _dpMaxDevices :: !(Maybe Int),
    _dpDescription :: !(Maybe Text),
    _dpType :: !(Maybe DevicePoolType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DevicePool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpRules' - Information about the device pool's rules.
--
-- * 'dpArn' - The device pool's ARN.
--
-- * 'dpName' - The device pool's name.
--
-- * 'dpMaxDevices' - The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are available and meet the criteria that you assign for the @rules@ parameter. Depending on how many devices meet these constraints, your device pool might contain fewer devices than the value for this parameter. By specifying the maximum number of devices, you can control the costs that you incur by running tests.
--
-- * 'dpDescription' - The device pool's description.
--
-- * 'dpType' - The device pool's type. Allowed values include:     * CURATED: A device pool that is created and managed by AWS Device Farm.     * PRIVATE: A device pool that is created and managed by the device pool developer.
devicePool ::
  DevicePool
devicePool =
  DevicePool'
    { _dpRules = Nothing,
      _dpArn = Nothing,
      _dpName = Nothing,
      _dpMaxDevices = Nothing,
      _dpDescription = Nothing,
      _dpType = Nothing
    }

-- | Information about the device pool's rules.
dpRules :: Lens' DevicePool [Rule]
dpRules = lens _dpRules (\s a -> s {_dpRules = a}) . _Default . _Coerce

-- | The device pool's ARN.
dpArn :: Lens' DevicePool (Maybe Text)
dpArn = lens _dpArn (\s a -> s {_dpArn = a})

-- | The device pool's name.
dpName :: Lens' DevicePool (Maybe Text)
dpName = lens _dpName (\s a -> s {_dpName = a})

-- | The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are available and meet the criteria that you assign for the @rules@ parameter. Depending on how many devices meet these constraints, your device pool might contain fewer devices than the value for this parameter. By specifying the maximum number of devices, you can control the costs that you incur by running tests.
dpMaxDevices :: Lens' DevicePool (Maybe Int)
dpMaxDevices = lens _dpMaxDevices (\s a -> s {_dpMaxDevices = a})

-- | The device pool's description.
dpDescription :: Lens' DevicePool (Maybe Text)
dpDescription = lens _dpDescription (\s a -> s {_dpDescription = a})

-- | The device pool's type. Allowed values include:     * CURATED: A device pool that is created and managed by AWS Device Farm.     * PRIVATE: A device pool that is created and managed by the device pool developer.
dpType :: Lens' DevicePool (Maybe DevicePoolType)
dpType = lens _dpType (\s a -> s {_dpType = a})

instance FromJSON DevicePool where
  parseJSON =
    withObject
      "DevicePool"
      ( \x ->
          DevicePool'
            <$> (x .:? "rules" .!= mempty)
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "maxDevices")
            <*> (x .:? "description")
            <*> (x .:? "type")
      )

instance Hashable DevicePool

instance NFData DevicePool

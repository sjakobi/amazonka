{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.Bundle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.Bundle where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.InstancePlatform
import Network.AWS.Prelude

-- | Describes a bundle, which is a set of specs describing your virtual private server (or /instance/ ).
--
--
--
-- /See:/ 'bundle' smart constructor.
data Bundle = Bundle'
  { _bunPower :: !(Maybe Int),
    _bunInstanceType :: !(Maybe Text),
    _bunRamSizeInGb :: !(Maybe Double),
    _bunBundleId :: !(Maybe Text),
    _bunIsActive :: !(Maybe Bool),
    _bunName :: !(Maybe Text),
    _bunTransferPerMonthInGb :: !(Maybe Int),
    _bunCpuCount :: !(Maybe Int),
    _bunPrice :: !(Maybe Double),
    _bunSupportedPlatforms ::
      !(Maybe [InstancePlatform]),
    _bunDiskSizeInGb :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Bundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bunPower' - A numeric value that represents the power of the bundle (e.g., @500@ ). You can use the bundle's power value in conjunction with a blueprint's minimum power value to determine whether the blueprint will run on the bundle. For example, you need a bundle with a power value of 500 or more to create an instance that uses a blueprint with a minimum power value of 500.
--
-- * 'bunInstanceType' - The Amazon EC2 instance type (e.g., @t2.micro@ ).
--
-- * 'bunRamSizeInGb' - The amount of RAM in GB (e.g., @2.0@ ).
--
-- * 'bunBundleId' - The bundle ID (e.g., @micro_1_0@ ).
--
-- * 'bunIsActive' - A Boolean value indicating whether the bundle is active.
--
-- * 'bunName' - A friendly name for the bundle (e.g., @Micro@ ).
--
-- * 'bunTransferPerMonthInGb' - The data transfer rate per month in GB (e.g., @2000@ ).
--
-- * 'bunCpuCount' - The number of vCPUs included in the bundle (e.g., @2@ ).
--
-- * 'bunPrice' - The price in US dollars (e.g., @5.0@ ) of the bundle.
--
-- * 'bunSupportedPlatforms' - The operating system platform (Linux/Unix-based or Windows Server-based) that the bundle supports. You can only launch a @WINDOWS@ bundle on a blueprint that supports the @WINDOWS@ platform. @LINUX_UNIX@ blueprints require a @LINUX_UNIX@ bundle.
--
-- * 'bunDiskSizeInGb' - The size of the SSD (e.g., @30@ ).
bundle ::
  Bundle
bundle =
  Bundle'
    { _bunPower = Nothing,
      _bunInstanceType = Nothing,
      _bunRamSizeInGb = Nothing,
      _bunBundleId = Nothing,
      _bunIsActive = Nothing,
      _bunName = Nothing,
      _bunTransferPerMonthInGb = Nothing,
      _bunCpuCount = Nothing,
      _bunPrice = Nothing,
      _bunSupportedPlatforms = Nothing,
      _bunDiskSizeInGb = Nothing
    }

-- | A numeric value that represents the power of the bundle (e.g., @500@ ). You can use the bundle's power value in conjunction with a blueprint's minimum power value to determine whether the blueprint will run on the bundle. For example, you need a bundle with a power value of 500 or more to create an instance that uses a blueprint with a minimum power value of 500.
bunPower :: Lens' Bundle (Maybe Int)
bunPower = lens _bunPower (\s a -> s {_bunPower = a})

-- | The Amazon EC2 instance type (e.g., @t2.micro@ ).
bunInstanceType :: Lens' Bundle (Maybe Text)
bunInstanceType = lens _bunInstanceType (\s a -> s {_bunInstanceType = a})

-- | The amount of RAM in GB (e.g., @2.0@ ).
bunRamSizeInGb :: Lens' Bundle (Maybe Double)
bunRamSizeInGb = lens _bunRamSizeInGb (\s a -> s {_bunRamSizeInGb = a})

-- | The bundle ID (e.g., @micro_1_0@ ).
bunBundleId :: Lens' Bundle (Maybe Text)
bunBundleId = lens _bunBundleId (\s a -> s {_bunBundleId = a})

-- | A Boolean value indicating whether the bundle is active.
bunIsActive :: Lens' Bundle (Maybe Bool)
bunIsActive = lens _bunIsActive (\s a -> s {_bunIsActive = a})

-- | A friendly name for the bundle (e.g., @Micro@ ).
bunName :: Lens' Bundle (Maybe Text)
bunName = lens _bunName (\s a -> s {_bunName = a})

-- | The data transfer rate per month in GB (e.g., @2000@ ).
bunTransferPerMonthInGb :: Lens' Bundle (Maybe Int)
bunTransferPerMonthInGb = lens _bunTransferPerMonthInGb (\s a -> s {_bunTransferPerMonthInGb = a})

-- | The number of vCPUs included in the bundle (e.g., @2@ ).
bunCpuCount :: Lens' Bundle (Maybe Int)
bunCpuCount = lens _bunCpuCount (\s a -> s {_bunCpuCount = a})

-- | The price in US dollars (e.g., @5.0@ ) of the bundle.
bunPrice :: Lens' Bundle (Maybe Double)
bunPrice = lens _bunPrice (\s a -> s {_bunPrice = a})

-- | The operating system platform (Linux/Unix-based or Windows Server-based) that the bundle supports. You can only launch a @WINDOWS@ bundle on a blueprint that supports the @WINDOWS@ platform. @LINUX_UNIX@ blueprints require a @LINUX_UNIX@ bundle.
bunSupportedPlatforms :: Lens' Bundle [InstancePlatform]
bunSupportedPlatforms = lens _bunSupportedPlatforms (\s a -> s {_bunSupportedPlatforms = a}) . _Default . _Coerce

-- | The size of the SSD (e.g., @30@ ).
bunDiskSizeInGb :: Lens' Bundle (Maybe Int)
bunDiskSizeInGb = lens _bunDiskSizeInGb (\s a -> s {_bunDiskSizeInGb = a})

instance FromJSON Bundle where
  parseJSON =
    withObject
      "Bundle"
      ( \x ->
          Bundle'
            <$> (x .:? "power")
            <*> (x .:? "instanceType")
            <*> (x .:? "ramSizeInGb")
            <*> (x .:? "bundleId")
            <*> (x .:? "isActive")
            <*> (x .:? "name")
            <*> (x .:? "transferPerMonthInGb")
            <*> (x .:? "cpuCount")
            <*> (x .:? "price")
            <*> (x .:? "supportedPlatforms" .!= mempty)
            <*> (x .:? "diskSizeInGb")
      )

instance Hashable Bundle

instance NFData Bundle

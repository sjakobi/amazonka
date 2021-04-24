{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServicePower
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServicePower where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the powers that can be specified for an Amazon Lightsail container service.
--
--
-- The power specifies the amount of RAM, the number of vCPUs, and the base price of the container service.
--
--
-- /See:/ 'containerServicePower' smart constructor.
data ContainerServicePower = ContainerServicePower'
  { _cspRamSizeInGb ::
      !(Maybe Double),
    _cspIsActive ::
      !(Maybe Bool),
    _cspName :: !(Maybe Text),
    _cspCpuCount ::
      !(Maybe Double),
    _cspPrice ::
      !(Maybe Double),
    _cspPowerId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ContainerServicePower' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cspRamSizeInGb' - The amount of RAM (in GB) of the power.
--
-- * 'cspIsActive' - A Boolean value indicating whether the power is active and can be specified for container services.
--
-- * 'cspName' - The friendly name of the power (e.g., @nano@ ).
--
-- * 'cspCpuCount' - The number of vCPUs included in the power.
--
-- * 'cspPrice' - The monthly price of the power in USD.
--
-- * 'cspPowerId' - The ID of the power (e.g., @nano-1@ ).
containerServicePower ::
  ContainerServicePower
containerServicePower =
  ContainerServicePower'
    { _cspRamSizeInGb = Nothing,
      _cspIsActive = Nothing,
      _cspName = Nothing,
      _cspCpuCount = Nothing,
      _cspPrice = Nothing,
      _cspPowerId = Nothing
    }

-- | The amount of RAM (in GB) of the power.
cspRamSizeInGb :: Lens' ContainerServicePower (Maybe Double)
cspRamSizeInGb = lens _cspRamSizeInGb (\s a -> s {_cspRamSizeInGb = a})

-- | A Boolean value indicating whether the power is active and can be specified for container services.
cspIsActive :: Lens' ContainerServicePower (Maybe Bool)
cspIsActive = lens _cspIsActive (\s a -> s {_cspIsActive = a})

-- | The friendly name of the power (e.g., @nano@ ).
cspName :: Lens' ContainerServicePower (Maybe Text)
cspName = lens _cspName (\s a -> s {_cspName = a})

-- | The number of vCPUs included in the power.
cspCpuCount :: Lens' ContainerServicePower (Maybe Double)
cspCpuCount = lens _cspCpuCount (\s a -> s {_cspCpuCount = a})

-- | The monthly price of the power in USD.
cspPrice :: Lens' ContainerServicePower (Maybe Double)
cspPrice = lens _cspPrice (\s a -> s {_cspPrice = a})

-- | The ID of the power (e.g., @nano-1@ ).
cspPowerId :: Lens' ContainerServicePower (Maybe Text)
cspPowerId = lens _cspPowerId (\s a -> s {_cspPowerId = a})

instance FromJSON ContainerServicePower where
  parseJSON =
    withObject
      "ContainerServicePower"
      ( \x ->
          ContainerServicePower'
            <$> (x .:? "ramSizeInGb")
            <*> (x .:? "isActive")
            <*> (x .:? "name")
            <*> (x .:? "cpuCount")
            <*> (x .:? "price")
            <*> (x .:? "powerId")
      )

instance Hashable ContainerServicePower

instance NFData ContainerServicePower

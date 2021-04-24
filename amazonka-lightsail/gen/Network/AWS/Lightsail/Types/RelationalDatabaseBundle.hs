{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseBundle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseBundle where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a database bundle. A bundle describes the performance specifications of the database.
--
--
--
-- /See:/ 'relationalDatabaseBundle' smart constructor.
data RelationalDatabaseBundle = RelationalDatabaseBundle'
  { _rdbRamSizeInGb ::
      !(Maybe Double),
    _rdbBundleId ::
      !(Maybe Text),
    _rdbIsActive ::
      !(Maybe Bool),
    _rdbName ::
      !(Maybe Text),
    _rdbIsEncrypted ::
      !(Maybe Bool),
    _rdbTransferPerMonthInGb ::
      !(Maybe Int),
    _rdbCpuCount ::
      !(Maybe Int),
    _rdbPrice ::
      !(Maybe Double),
    _rdbDiskSizeInGb ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RelationalDatabaseBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdbRamSizeInGb' - The amount of RAM in GB (for example, @2.0@ ) for the database bundle.
--
-- * 'rdbBundleId' - The ID for the database bundle.
--
-- * 'rdbIsActive' - A Boolean value indicating whether the database bundle is active.
--
-- * 'rdbName' - The name for the database bundle.
--
-- * 'rdbIsEncrypted' - A Boolean value indicating whether the database bundle is encrypted.
--
-- * 'rdbTransferPerMonthInGb' - The data transfer rate per month in GB for the database bundle.
--
-- * 'rdbCpuCount' - The number of virtual CPUs (vCPUs) for the database bundle.
--
-- * 'rdbPrice' - The cost of the database bundle in US currency.
--
-- * 'rdbDiskSizeInGb' - The size of the disk for the database bundle.
relationalDatabaseBundle ::
  RelationalDatabaseBundle
relationalDatabaseBundle =
  RelationalDatabaseBundle'
    { _rdbRamSizeInGb =
        Nothing,
      _rdbBundleId = Nothing,
      _rdbIsActive = Nothing,
      _rdbName = Nothing,
      _rdbIsEncrypted = Nothing,
      _rdbTransferPerMonthInGb = Nothing,
      _rdbCpuCount = Nothing,
      _rdbPrice = Nothing,
      _rdbDiskSizeInGb = Nothing
    }

-- | The amount of RAM in GB (for example, @2.0@ ) for the database bundle.
rdbRamSizeInGb :: Lens' RelationalDatabaseBundle (Maybe Double)
rdbRamSizeInGb = lens _rdbRamSizeInGb (\s a -> s {_rdbRamSizeInGb = a})

-- | The ID for the database bundle.
rdbBundleId :: Lens' RelationalDatabaseBundle (Maybe Text)
rdbBundleId = lens _rdbBundleId (\s a -> s {_rdbBundleId = a})

-- | A Boolean value indicating whether the database bundle is active.
rdbIsActive :: Lens' RelationalDatabaseBundle (Maybe Bool)
rdbIsActive = lens _rdbIsActive (\s a -> s {_rdbIsActive = a})

-- | The name for the database bundle.
rdbName :: Lens' RelationalDatabaseBundle (Maybe Text)
rdbName = lens _rdbName (\s a -> s {_rdbName = a})

-- | A Boolean value indicating whether the database bundle is encrypted.
rdbIsEncrypted :: Lens' RelationalDatabaseBundle (Maybe Bool)
rdbIsEncrypted = lens _rdbIsEncrypted (\s a -> s {_rdbIsEncrypted = a})

-- | The data transfer rate per month in GB for the database bundle.
rdbTransferPerMonthInGb :: Lens' RelationalDatabaseBundle (Maybe Int)
rdbTransferPerMonthInGb = lens _rdbTransferPerMonthInGb (\s a -> s {_rdbTransferPerMonthInGb = a})

-- | The number of virtual CPUs (vCPUs) for the database bundle.
rdbCpuCount :: Lens' RelationalDatabaseBundle (Maybe Int)
rdbCpuCount = lens _rdbCpuCount (\s a -> s {_rdbCpuCount = a})

-- | The cost of the database bundle in US currency.
rdbPrice :: Lens' RelationalDatabaseBundle (Maybe Double)
rdbPrice = lens _rdbPrice (\s a -> s {_rdbPrice = a})

-- | The size of the disk for the database bundle.
rdbDiskSizeInGb :: Lens' RelationalDatabaseBundle (Maybe Int)
rdbDiskSizeInGb = lens _rdbDiskSizeInGb (\s a -> s {_rdbDiskSizeInGb = a})

instance FromJSON RelationalDatabaseBundle where
  parseJSON =
    withObject
      "RelationalDatabaseBundle"
      ( \x ->
          RelationalDatabaseBundle'
            <$> (x .:? "ramSizeInGb")
            <*> (x .:? "bundleId")
            <*> (x .:? "isActive")
            <*> (x .:? "name")
            <*> (x .:? "isEncrypted")
            <*> (x .:? "transferPerMonthInGb")
            <*> (x .:? "cpuCount")
            <*> (x .:? "price")
            <*> (x .:? "diskSizeInGb")
      )

instance Hashable RelationalDatabaseBundle

instance NFData RelationalDatabaseBundle

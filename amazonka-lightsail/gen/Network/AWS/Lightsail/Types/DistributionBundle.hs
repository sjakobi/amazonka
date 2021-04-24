{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.DistributionBundle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.DistributionBundle where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the specifications of a distribution bundle.
--
--
--
-- /See:/ 'distributionBundle' smart constructor.
data DistributionBundle = DistributionBundle'
  { _dbBundleId ::
      !(Maybe Text),
    _dbIsActive :: !(Maybe Bool),
    _dbName :: !(Maybe Text),
    _dbTransferPerMonthInGb ::
      !(Maybe Int),
    _dbPrice :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DistributionBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbBundleId' - The ID of the bundle.
--
-- * 'dbIsActive' - Indicates whether the bundle is active, and can be specified for a new distribution.
--
-- * 'dbName' - The name of the distribution bundle.
--
-- * 'dbTransferPerMonthInGb' - The monthly network transfer quota of the bundle.
--
-- * 'dbPrice' - The monthly price, in US dollars, of the bundle.
distributionBundle ::
  DistributionBundle
distributionBundle =
  DistributionBundle'
    { _dbBundleId = Nothing,
      _dbIsActive = Nothing,
      _dbName = Nothing,
      _dbTransferPerMonthInGb = Nothing,
      _dbPrice = Nothing
    }

-- | The ID of the bundle.
dbBundleId :: Lens' DistributionBundle (Maybe Text)
dbBundleId = lens _dbBundleId (\s a -> s {_dbBundleId = a})

-- | Indicates whether the bundle is active, and can be specified for a new distribution.
dbIsActive :: Lens' DistributionBundle (Maybe Bool)
dbIsActive = lens _dbIsActive (\s a -> s {_dbIsActive = a})

-- | The name of the distribution bundle.
dbName :: Lens' DistributionBundle (Maybe Text)
dbName = lens _dbName (\s a -> s {_dbName = a})

-- | The monthly network transfer quota of the bundle.
dbTransferPerMonthInGb :: Lens' DistributionBundle (Maybe Int)
dbTransferPerMonthInGb = lens _dbTransferPerMonthInGb (\s a -> s {_dbTransferPerMonthInGb = a})

-- | The monthly price, in US dollars, of the bundle.
dbPrice :: Lens' DistributionBundle (Maybe Double)
dbPrice = lens _dbPrice (\s a -> s {_dbPrice = a})

instance FromJSON DistributionBundle where
  parseJSON =
    withObject
      "DistributionBundle"
      ( \x ->
          DistributionBundle'
            <$> (x .:? "bundleId")
            <*> (x .:? "isActive")
            <*> (x .:? "name")
            <*> (x .:? "transferPerMonthInGb")
            <*> (x .:? "price")
      )

instance Hashable DistributionBundle

instance NFData DistributionBundle

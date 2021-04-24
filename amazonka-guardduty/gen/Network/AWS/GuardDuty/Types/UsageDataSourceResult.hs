{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.UsageDataSourceResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.UsageDataSourceResult where

import Network.AWS.GuardDuty.Types.DataSource
import Network.AWS.GuardDuty.Types.Total
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information on the result of usage based on data source type.
--
--
--
-- /See:/ 'usageDataSourceResult' smart constructor.
data UsageDataSourceResult = UsageDataSourceResult'
  { _udsrDataSource ::
      !(Maybe DataSource),
    _udsrTotal ::
      !(Maybe Total)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UsageDataSourceResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsrDataSource' - The data source type that generated usage.
--
-- * 'udsrTotal' - Represents the total of usage for the specified data source.
usageDataSourceResult ::
  UsageDataSourceResult
usageDataSourceResult =
  UsageDataSourceResult'
    { _udsrDataSource = Nothing,
      _udsrTotal = Nothing
    }

-- | The data source type that generated usage.
udsrDataSource :: Lens' UsageDataSourceResult (Maybe DataSource)
udsrDataSource = lens _udsrDataSource (\s a -> s {_udsrDataSource = a})

-- | Represents the total of usage for the specified data source.
udsrTotal :: Lens' UsageDataSourceResult (Maybe Total)
udsrTotal = lens _udsrTotal (\s a -> s {_udsrTotal = a})

instance FromJSON UsageDataSourceResult where
  parseJSON =
    withObject
      "UsageDataSourceResult"
      ( \x ->
          UsageDataSourceResult'
            <$> (x .:? "dataSource") <*> (x .:? "total")
      )

instance Hashable UsageDataSourceResult

instance NFData UsageDataSourceResult

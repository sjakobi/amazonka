{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.UsageStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.UsageStatistics where

import Network.AWS.GuardDuty.Types.UsageAccountResult
import Network.AWS.GuardDuty.Types.UsageDataSourceResult
import Network.AWS.GuardDuty.Types.UsageResourceResult
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the result of GuardDuty usage. If a UsageStatisticType is provided the result for other types will be null.
--
--
--
-- /See:/ 'usageStatistics' smart constructor.
data UsageStatistics = UsageStatistics'
  { _usSumByDataSource ::
      !(Maybe [UsageDataSourceResult]),
    _usTopResources ::
      !(Maybe [UsageResourceResult]),
    _usSumByAccount ::
      !(Maybe [UsageAccountResult]),
    _usSumByResource ::
      !(Maybe [UsageResourceResult])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsageStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usSumByDataSource' - The usage statistic sum organized by on data source.
--
-- * 'usTopResources' - Lists the top 50 resources that have generated the most GuardDuty usage, in order from most to least expensive.
--
-- * 'usSumByAccount' - The usage statistic sum organized by account ID.
--
-- * 'usSumByResource' - The usage statistic sum organized by resource.
usageStatistics ::
  UsageStatistics
usageStatistics =
  UsageStatistics'
    { _usSumByDataSource = Nothing,
      _usTopResources = Nothing,
      _usSumByAccount = Nothing,
      _usSumByResource = Nothing
    }

-- | The usage statistic sum organized by on data source.
usSumByDataSource :: Lens' UsageStatistics [UsageDataSourceResult]
usSumByDataSource = lens _usSumByDataSource (\s a -> s {_usSumByDataSource = a}) . _Default . _Coerce

-- | Lists the top 50 resources that have generated the most GuardDuty usage, in order from most to least expensive.
usTopResources :: Lens' UsageStatistics [UsageResourceResult]
usTopResources = lens _usTopResources (\s a -> s {_usTopResources = a}) . _Default . _Coerce

-- | The usage statistic sum organized by account ID.
usSumByAccount :: Lens' UsageStatistics [UsageAccountResult]
usSumByAccount = lens _usSumByAccount (\s a -> s {_usSumByAccount = a}) . _Default . _Coerce

-- | The usage statistic sum organized by resource.
usSumByResource :: Lens' UsageStatistics [UsageResourceResult]
usSumByResource = lens _usSumByResource (\s a -> s {_usSumByResource = a}) . _Default . _Coerce

instance FromJSON UsageStatistics where
  parseJSON =
    withObject
      "UsageStatistics"
      ( \x ->
          UsageStatistics'
            <$> (x .:? "sumByDataSource" .!= mempty)
            <*> (x .:? "topResources" .!= mempty)
            <*> (x .:? "sumByAccount" .!= mempty)
            <*> (x .:? "sumByResource" .!= mempty)
      )

instance Hashable UsageStatistics

instance NFData UsageStatistics

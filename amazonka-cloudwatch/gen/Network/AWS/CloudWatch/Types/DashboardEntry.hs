{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.DashboardEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.DashboardEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a specific dashboard.
--
--
--
-- /See:/ 'dashboardEntry' smart constructor.
data DashboardEntry = DashboardEntry'
  { _deDashboardARN ::
      !(Maybe Text),
    _deLastModified :: !(Maybe ISO8601),
    _deDashboardName :: !(Maybe Text),
    _deSize :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DashboardEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deDashboardARN' - The Amazon Resource Name (ARN) of the dashboard.
--
-- * 'deLastModified' - The time stamp of when the dashboard was last modified, either by an API call or through the console. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.
--
-- * 'deDashboardName' - The name of the dashboard.
--
-- * 'deSize' - The size of the dashboard, in bytes.
dashboardEntry ::
  DashboardEntry
dashboardEntry =
  DashboardEntry'
    { _deDashboardARN = Nothing,
      _deLastModified = Nothing,
      _deDashboardName = Nothing,
      _deSize = Nothing
    }

-- | The Amazon Resource Name (ARN) of the dashboard.
deDashboardARN :: Lens' DashboardEntry (Maybe Text)
deDashboardARN = lens _deDashboardARN (\s a -> s {_deDashboardARN = a})

-- | The time stamp of when the dashboard was last modified, either by an API call or through the console. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.
deLastModified :: Lens' DashboardEntry (Maybe UTCTime)
deLastModified = lens _deLastModified (\s a -> s {_deLastModified = a}) . mapping _Time

-- | The name of the dashboard.
deDashboardName :: Lens' DashboardEntry (Maybe Text)
deDashboardName = lens _deDashboardName (\s a -> s {_deDashboardName = a})

-- | The size of the dashboard, in bytes.
deSize :: Lens' DashboardEntry (Maybe Integer)
deSize = lens _deSize (\s a -> s {_deSize = a})

instance FromXML DashboardEntry where
  parseXML x =
    DashboardEntry'
      <$> (x .@? "DashboardArn")
      <*> (x .@? "LastModified")
      <*> (x .@? "DashboardName")
      <*> (x .@? "Size")

instance Hashable DashboardEntry

instance NFData DashboardEntry

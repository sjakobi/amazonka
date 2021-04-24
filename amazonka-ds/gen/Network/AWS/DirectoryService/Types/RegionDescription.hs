{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RegionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RegionDescription where

import Network.AWS.DirectoryService.Types.DirectoryStage
import Network.AWS.DirectoryService.Types.DirectoryVPCSettings
import Network.AWS.DirectoryService.Types.RegionType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The replicated Region information for a directory.
--
--
--
-- /See:/ 'regionDescription' smart constructor.
data RegionDescription = RegionDescription'
  { _rdRegionName ::
      !(Maybe Text),
    _rdStatus ::
      !(Maybe DirectoryStage),
    _rdLastUpdatedDateTime ::
      !(Maybe POSIX),
    _rdVPCSettings ::
      !(Maybe DirectoryVPCSettings),
    _rdRegionType ::
      !(Maybe RegionType),
    _rdLaunchTime :: !(Maybe POSIX),
    _rdStatusLastUpdatedDateTime ::
      !(Maybe POSIX),
    _rdDirectoryId :: !(Maybe Text),
    _rdDesiredNumberOfDomainControllers ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegionDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRegionName' - The name of the Region. For example, @us-east-1@ .
--
-- * 'rdStatus' - The status of the replication process for the specified Region.
--
-- * 'rdLastUpdatedDateTime' - The date and time that the Region description was last updated.
--
-- * 'rdVPCSettings' - Undocumented member.
--
-- * 'rdRegionType' - Specifies whether the Region is the primary Region or an additional Region.
--
-- * 'rdLaunchTime' - Specifies when the Region replication began.
--
-- * 'rdStatusLastUpdatedDateTime' - The date and time that the Region status was last updated.
--
-- * 'rdDirectoryId' - The identifier of the directory.
--
-- * 'rdDesiredNumberOfDomainControllers' - The desired number of domain controllers in the specified Region for the specified directory.
regionDescription ::
  RegionDescription
regionDescription =
  RegionDescription'
    { _rdRegionName = Nothing,
      _rdStatus = Nothing,
      _rdLastUpdatedDateTime = Nothing,
      _rdVPCSettings = Nothing,
      _rdRegionType = Nothing,
      _rdLaunchTime = Nothing,
      _rdStatusLastUpdatedDateTime = Nothing,
      _rdDirectoryId = Nothing,
      _rdDesiredNumberOfDomainControllers = Nothing
    }

-- | The name of the Region. For example, @us-east-1@ .
rdRegionName :: Lens' RegionDescription (Maybe Text)
rdRegionName = lens _rdRegionName (\s a -> s {_rdRegionName = a})

-- | The status of the replication process for the specified Region.
rdStatus :: Lens' RegionDescription (Maybe DirectoryStage)
rdStatus = lens _rdStatus (\s a -> s {_rdStatus = a})

-- | The date and time that the Region description was last updated.
rdLastUpdatedDateTime :: Lens' RegionDescription (Maybe UTCTime)
rdLastUpdatedDateTime = lens _rdLastUpdatedDateTime (\s a -> s {_rdLastUpdatedDateTime = a}) . mapping _Time

-- | Undocumented member.
rdVPCSettings :: Lens' RegionDescription (Maybe DirectoryVPCSettings)
rdVPCSettings = lens _rdVPCSettings (\s a -> s {_rdVPCSettings = a})

-- | Specifies whether the Region is the primary Region or an additional Region.
rdRegionType :: Lens' RegionDescription (Maybe RegionType)
rdRegionType = lens _rdRegionType (\s a -> s {_rdRegionType = a})

-- | Specifies when the Region replication began.
rdLaunchTime :: Lens' RegionDescription (Maybe UTCTime)
rdLaunchTime = lens _rdLaunchTime (\s a -> s {_rdLaunchTime = a}) . mapping _Time

-- | The date and time that the Region status was last updated.
rdStatusLastUpdatedDateTime :: Lens' RegionDescription (Maybe UTCTime)
rdStatusLastUpdatedDateTime = lens _rdStatusLastUpdatedDateTime (\s a -> s {_rdStatusLastUpdatedDateTime = a}) . mapping _Time

-- | The identifier of the directory.
rdDirectoryId :: Lens' RegionDescription (Maybe Text)
rdDirectoryId = lens _rdDirectoryId (\s a -> s {_rdDirectoryId = a})

-- | The desired number of domain controllers in the specified Region for the specified directory.
rdDesiredNumberOfDomainControllers :: Lens' RegionDescription (Maybe Natural)
rdDesiredNumberOfDomainControllers = lens _rdDesiredNumberOfDomainControllers (\s a -> s {_rdDesiredNumberOfDomainControllers = a}) . mapping _Nat

instance FromJSON RegionDescription where
  parseJSON =
    withObject
      "RegionDescription"
      ( \x ->
          RegionDescription'
            <$> (x .:? "RegionName")
            <*> (x .:? "Status")
            <*> (x .:? "LastUpdatedDateTime")
            <*> (x .:? "VpcSettings")
            <*> (x .:? "RegionType")
            <*> (x .:? "LaunchTime")
            <*> (x .:? "StatusLastUpdatedDateTime")
            <*> (x .:? "DirectoryId")
            <*> (x .:? "DesiredNumberOfDomainControllers")
      )

instance Hashable RegionDescription

instance NFData RegionDescription

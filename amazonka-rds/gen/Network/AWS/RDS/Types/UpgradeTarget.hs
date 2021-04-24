{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.UpgradeTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.UpgradeTarget where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The version of the database engine that a DB instance can be upgraded to.
--
--
--
-- /See:/ 'upgradeTarget' smart constructor.
data UpgradeTarget = UpgradeTarget'
  { _utAutoUpgrade ::
      !(Maybe Bool),
    _utSupportedEngineModes :: !(Maybe [Text]),
    _utEngineVersion :: !(Maybe Text),
    _utSupportsGlobalDatabases :: !(Maybe Bool),
    _utEngine :: !(Maybe Text),
    _utDescription :: !(Maybe Text),
    _utIsMajorVersionUpgrade :: !(Maybe Bool),
    _utSupportsParallelQuery :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpgradeTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utAutoUpgrade' - A value that indicates whether the target version is applied to any source DB instances that have @AutoMinorVersionUpgrade@ set to true.
--
-- * 'utSupportedEngineModes' - A list of the supported DB engine modes for the target engine version.
--
-- * 'utEngineVersion' - The version number of the upgrade target database engine.
--
-- * 'utSupportsGlobalDatabases' - A value that indicates whether you can use Aurora global databases with the target engine version.
--
-- * 'utEngine' - The name of the upgrade target database engine.
--
-- * 'utDescription' - The version of the database engine that a DB instance can be upgraded to.
--
-- * 'utIsMajorVersionUpgrade' - A value that indicates whether upgrading to the target version requires upgrading the major version of the database engine.
--
-- * 'utSupportsParallelQuery' - A value that indicates whether you can use Aurora parallel query with the target engine version.
upgradeTarget ::
  UpgradeTarget
upgradeTarget =
  UpgradeTarget'
    { _utAutoUpgrade = Nothing,
      _utSupportedEngineModes = Nothing,
      _utEngineVersion = Nothing,
      _utSupportsGlobalDatabases = Nothing,
      _utEngine = Nothing,
      _utDescription = Nothing,
      _utIsMajorVersionUpgrade = Nothing,
      _utSupportsParallelQuery = Nothing
    }

-- | A value that indicates whether the target version is applied to any source DB instances that have @AutoMinorVersionUpgrade@ set to true.
utAutoUpgrade :: Lens' UpgradeTarget (Maybe Bool)
utAutoUpgrade = lens _utAutoUpgrade (\s a -> s {_utAutoUpgrade = a})

-- | A list of the supported DB engine modes for the target engine version.
utSupportedEngineModes :: Lens' UpgradeTarget [Text]
utSupportedEngineModes = lens _utSupportedEngineModes (\s a -> s {_utSupportedEngineModes = a}) . _Default . _Coerce

-- | The version number of the upgrade target database engine.
utEngineVersion :: Lens' UpgradeTarget (Maybe Text)
utEngineVersion = lens _utEngineVersion (\s a -> s {_utEngineVersion = a})

-- | A value that indicates whether you can use Aurora global databases with the target engine version.
utSupportsGlobalDatabases :: Lens' UpgradeTarget (Maybe Bool)
utSupportsGlobalDatabases = lens _utSupportsGlobalDatabases (\s a -> s {_utSupportsGlobalDatabases = a})

-- | The name of the upgrade target database engine.
utEngine :: Lens' UpgradeTarget (Maybe Text)
utEngine = lens _utEngine (\s a -> s {_utEngine = a})

-- | The version of the database engine that a DB instance can be upgraded to.
utDescription :: Lens' UpgradeTarget (Maybe Text)
utDescription = lens _utDescription (\s a -> s {_utDescription = a})

-- | A value that indicates whether upgrading to the target version requires upgrading the major version of the database engine.
utIsMajorVersionUpgrade :: Lens' UpgradeTarget (Maybe Bool)
utIsMajorVersionUpgrade = lens _utIsMajorVersionUpgrade (\s a -> s {_utIsMajorVersionUpgrade = a})

-- | A value that indicates whether you can use Aurora parallel query with the target engine version.
utSupportsParallelQuery :: Lens' UpgradeTarget (Maybe Bool)
utSupportsParallelQuery = lens _utSupportsParallelQuery (\s a -> s {_utSupportsParallelQuery = a})

instance FromXML UpgradeTarget where
  parseXML x =
    UpgradeTarget'
      <$> (x .@? "AutoUpgrade")
      <*> ( x .@? "SupportedEngineModes" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "EngineVersion")
      <*> (x .@? "SupportsGlobalDatabases")
      <*> (x .@? "Engine")
      <*> (x .@? "Description")
      <*> (x .@? "IsMajorVersionUpgrade")
      <*> (x .@? "SupportsParallelQuery")

instance Hashable UpgradeTarget

instance NFData UpgradeTarget

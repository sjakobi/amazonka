{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBEngineVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBEngineVersion where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.CharacterSet
import Network.AWS.RDS.Types.Timezone
import Network.AWS.RDS.Types.UpgradeTarget

-- | This data type is used as a response element in the action @DescribeDBEngineVersions@ .
--
--
--
-- /See:/ 'dbEngineVersion' smart constructor.
data DBEngineVersion = DBEngineVersion'
  { _devStatus ::
      !(Maybe Text),
    _devDBEngineVersionDescription ::
      !(Maybe Text),
    _devDBEngineDescription ::
      !(Maybe Text),
    _devSupportedTimezones ::
      !(Maybe [Timezone]),
    _devSupportedEngineModes ::
      !(Maybe [Text]),
    _devSupportedNcharCharacterSets ::
      !(Maybe [CharacterSet]),
    _devValidUpgradeTarget ::
      !(Maybe [UpgradeTarget]),
    _devEngineVersion :: !(Maybe Text),
    _devSupportsGlobalDatabases ::
      !(Maybe Bool),
    _devExportableLogTypes ::
      !(Maybe [Text]),
    _devSupportedCharacterSets ::
      !(Maybe [CharacterSet]),
    _devSupportsReadReplica ::
      !(Maybe Bool),
    _devDBParameterGroupFamily ::
      !(Maybe Text),
    _devEngine :: !(Maybe Text),
    _devSupportedFeatureNames ::
      !(Maybe [Text]),
    _devSupportsLogExportsToCloudwatchLogs ::
      !(Maybe Bool),
    _devDefaultCharacterSet ::
      !(Maybe CharacterSet),
    _devSupportsParallelQuery ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DBEngineVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'devStatus' - The status of the DB engine version, either @available@ or @deprecated@ .
--
-- * 'devDBEngineVersionDescription' - The description of the database engine version.
--
-- * 'devDBEngineDescription' - The description of the database engine.
--
-- * 'devSupportedTimezones' - A list of the time zones supported by this engine for the @Timezone@ parameter of the @CreateDBInstance@ action.
--
-- * 'devSupportedEngineModes' - A list of the supported DB engine modes.
--
-- * 'devSupportedNcharCharacterSets' - A list of the character sets supported by the Oracle DB engine for the @NcharCharacterSetName@ parameter of the @CreateDBInstance@ operation.
--
-- * 'devValidUpgradeTarget' - A list of engine versions that this database engine version can be upgraded to.
--
-- * 'devEngineVersion' - The version number of the database engine.
--
-- * 'devSupportsGlobalDatabases' - A value that indicates whether you can use Aurora global databases with a specific DB engine version.
--
-- * 'devExportableLogTypes' - The types of logs that the database engine has available for export to CloudWatch Logs.
--
-- * 'devSupportedCharacterSets' - A list of the character sets supported by this engine for the @CharacterSetName@ parameter of the @CreateDBInstance@ operation.
--
-- * 'devSupportsReadReplica' - Indicates whether the database engine version supports read replicas.
--
-- * 'devDBParameterGroupFamily' - The name of the DB parameter group family for the database engine.
--
-- * 'devEngine' - The name of the database engine.
--
-- * 'devSupportedFeatureNames' - A list of features supported by the DB engine. Supported feature names include the following.      * s3Import
--
-- * 'devSupportsLogExportsToCloudwatchLogs' - A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.
--
-- * 'devDefaultCharacterSet' - The default character set for new instances of this engine version, if the @CharacterSetName@ parameter of the CreateDBInstance API isn't specified.
--
-- * 'devSupportsParallelQuery' - A value that indicates whether you can use Aurora parallel query with a specific DB engine version.
dbEngineVersion ::
  DBEngineVersion
dbEngineVersion =
  DBEngineVersion'
    { _devStatus = Nothing,
      _devDBEngineVersionDescription = Nothing,
      _devDBEngineDescription = Nothing,
      _devSupportedTimezones = Nothing,
      _devSupportedEngineModes = Nothing,
      _devSupportedNcharCharacterSets = Nothing,
      _devValidUpgradeTarget = Nothing,
      _devEngineVersion = Nothing,
      _devSupportsGlobalDatabases = Nothing,
      _devExportableLogTypes = Nothing,
      _devSupportedCharacterSets = Nothing,
      _devSupportsReadReplica = Nothing,
      _devDBParameterGroupFamily = Nothing,
      _devEngine = Nothing,
      _devSupportedFeatureNames = Nothing,
      _devSupportsLogExportsToCloudwatchLogs = Nothing,
      _devDefaultCharacterSet = Nothing,
      _devSupportsParallelQuery = Nothing
    }

-- | The status of the DB engine version, either @available@ or @deprecated@ .
devStatus :: Lens' DBEngineVersion (Maybe Text)
devStatus = lens _devStatus (\s a -> s {_devStatus = a})

-- | The description of the database engine version.
devDBEngineVersionDescription :: Lens' DBEngineVersion (Maybe Text)
devDBEngineVersionDescription = lens _devDBEngineVersionDescription (\s a -> s {_devDBEngineVersionDescription = a})

-- | The description of the database engine.
devDBEngineDescription :: Lens' DBEngineVersion (Maybe Text)
devDBEngineDescription = lens _devDBEngineDescription (\s a -> s {_devDBEngineDescription = a})

-- | A list of the time zones supported by this engine for the @Timezone@ parameter of the @CreateDBInstance@ action.
devSupportedTimezones :: Lens' DBEngineVersion [Timezone]
devSupportedTimezones = lens _devSupportedTimezones (\s a -> s {_devSupportedTimezones = a}) . _Default . _Coerce

-- | A list of the supported DB engine modes.
devSupportedEngineModes :: Lens' DBEngineVersion [Text]
devSupportedEngineModes = lens _devSupportedEngineModes (\s a -> s {_devSupportedEngineModes = a}) . _Default . _Coerce

-- | A list of the character sets supported by the Oracle DB engine for the @NcharCharacterSetName@ parameter of the @CreateDBInstance@ operation.
devSupportedNcharCharacterSets :: Lens' DBEngineVersion [CharacterSet]
devSupportedNcharCharacterSets = lens _devSupportedNcharCharacterSets (\s a -> s {_devSupportedNcharCharacterSets = a}) . _Default . _Coerce

-- | A list of engine versions that this database engine version can be upgraded to.
devValidUpgradeTarget :: Lens' DBEngineVersion [UpgradeTarget]
devValidUpgradeTarget = lens _devValidUpgradeTarget (\s a -> s {_devValidUpgradeTarget = a}) . _Default . _Coerce

-- | The version number of the database engine.
devEngineVersion :: Lens' DBEngineVersion (Maybe Text)
devEngineVersion = lens _devEngineVersion (\s a -> s {_devEngineVersion = a})

-- | A value that indicates whether you can use Aurora global databases with a specific DB engine version.
devSupportsGlobalDatabases :: Lens' DBEngineVersion (Maybe Bool)
devSupportsGlobalDatabases = lens _devSupportsGlobalDatabases (\s a -> s {_devSupportsGlobalDatabases = a})

-- | The types of logs that the database engine has available for export to CloudWatch Logs.
devExportableLogTypes :: Lens' DBEngineVersion [Text]
devExportableLogTypes = lens _devExportableLogTypes (\s a -> s {_devExportableLogTypes = a}) . _Default . _Coerce

-- | A list of the character sets supported by this engine for the @CharacterSetName@ parameter of the @CreateDBInstance@ operation.
devSupportedCharacterSets :: Lens' DBEngineVersion [CharacterSet]
devSupportedCharacterSets = lens _devSupportedCharacterSets (\s a -> s {_devSupportedCharacterSets = a}) . _Default . _Coerce

-- | Indicates whether the database engine version supports read replicas.
devSupportsReadReplica :: Lens' DBEngineVersion (Maybe Bool)
devSupportsReadReplica = lens _devSupportsReadReplica (\s a -> s {_devSupportsReadReplica = a})

-- | The name of the DB parameter group family for the database engine.
devDBParameterGroupFamily :: Lens' DBEngineVersion (Maybe Text)
devDBParameterGroupFamily = lens _devDBParameterGroupFamily (\s a -> s {_devDBParameterGroupFamily = a})

-- | The name of the database engine.
devEngine :: Lens' DBEngineVersion (Maybe Text)
devEngine = lens _devEngine (\s a -> s {_devEngine = a})

-- | A list of features supported by the DB engine. Supported feature names include the following.      * s3Import
devSupportedFeatureNames :: Lens' DBEngineVersion [Text]
devSupportedFeatureNames = lens _devSupportedFeatureNames (\s a -> s {_devSupportedFeatureNames = a}) . _Default . _Coerce

-- | A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.
devSupportsLogExportsToCloudwatchLogs :: Lens' DBEngineVersion (Maybe Bool)
devSupportsLogExportsToCloudwatchLogs = lens _devSupportsLogExportsToCloudwatchLogs (\s a -> s {_devSupportsLogExportsToCloudwatchLogs = a})

-- | The default character set for new instances of this engine version, if the @CharacterSetName@ parameter of the CreateDBInstance API isn't specified.
devDefaultCharacterSet :: Lens' DBEngineVersion (Maybe CharacterSet)
devDefaultCharacterSet = lens _devDefaultCharacterSet (\s a -> s {_devDefaultCharacterSet = a})

-- | A value that indicates whether you can use Aurora parallel query with a specific DB engine version.
devSupportsParallelQuery :: Lens' DBEngineVersion (Maybe Bool)
devSupportsParallelQuery = lens _devSupportsParallelQuery (\s a -> s {_devSupportsParallelQuery = a})

instance FromXML DBEngineVersion where
  parseXML x =
    DBEngineVersion'
      <$> (x .@? "Status")
      <*> (x .@? "DBEngineVersionDescription")
      <*> (x .@? "DBEngineDescription")
      <*> ( x .@? "SupportedTimezones" .!@ mempty
              >>= may (parseXMLList "Timezone")
          )
      <*> ( x .@? "SupportedEngineModes" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "SupportedNcharCharacterSets" .!@ mempty
              >>= may (parseXMLList "CharacterSet")
          )
      <*> ( x .@? "ValidUpgradeTarget" .!@ mempty
              >>= may (parseXMLList "UpgradeTarget")
          )
      <*> (x .@? "EngineVersion")
      <*> (x .@? "SupportsGlobalDatabases")
      <*> ( x .@? "ExportableLogTypes" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> ( x .@? "SupportedCharacterSets" .!@ mempty
              >>= may (parseXMLList "CharacterSet")
          )
      <*> (x .@? "SupportsReadReplica")
      <*> (x .@? "DBParameterGroupFamily")
      <*> (x .@? "Engine")
      <*> ( x .@? "SupportedFeatureNames" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "SupportsLogExportsToCloudwatchLogs")
      <*> (x .@? "DefaultCharacterSet")
      <*> (x .@? "SupportsParallelQuery")

instance Hashable DBEngineVersion

instance NFData DBEngineVersion

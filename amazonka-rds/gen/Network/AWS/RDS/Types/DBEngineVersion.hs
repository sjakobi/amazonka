{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.CharacterSet
import Network.AWS.RDS.Types.Timezone
import Network.AWS.RDS.Types.UpgradeTarget

-- | This data type is used as a response element in the action
-- @DescribeDBEngineVersions@.
--
-- /See:/ 'newDBEngineVersion' smart constructor.
data DBEngineVersion = DBEngineVersion'
  { -- | The status of the DB engine version, either @available@ or @deprecated@.
    status :: Prelude.Maybe Prelude.Text,
    -- | The description of the database engine version.
    dBEngineVersionDescription :: Prelude.Maybe Prelude.Text,
    -- | The description of the database engine.
    dBEngineDescription :: Prelude.Maybe Prelude.Text,
    -- | A list of the time zones supported by this engine for the @Timezone@
    -- parameter of the @CreateDBInstance@ action.
    supportedTimezones :: Prelude.Maybe [Timezone],
    -- | A list of the supported DB engine modes.
    supportedEngineModes :: Prelude.Maybe [Prelude.Text],
    -- | A list of the character sets supported by the Oracle DB engine for the
    -- @NcharCharacterSetName@ parameter of the @CreateDBInstance@ operation.
    supportedNcharCharacterSets :: Prelude.Maybe [CharacterSet],
    -- | A list of engine versions that this database engine version can be
    -- upgraded to.
    validUpgradeTarget :: Prelude.Maybe [UpgradeTarget],
    -- | The version number of the database engine.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates whether you can use Aurora global databases with
    -- a specific DB engine version.
    supportsGlobalDatabases :: Prelude.Maybe Prelude.Bool,
    -- | The types of logs that the database engine has available for export to
    -- CloudWatch Logs.
    exportableLogTypes :: Prelude.Maybe [Prelude.Text],
    -- | A list of the character sets supported by this engine for the
    -- @CharacterSetName@ parameter of the @CreateDBInstance@ operation.
    supportedCharacterSets :: Prelude.Maybe [CharacterSet],
    -- | Indicates whether the database engine version supports read replicas.
    supportsReadReplica :: Prelude.Maybe Prelude.Bool,
    -- | The name of the DB parameter group family for the database engine.
    dBParameterGroupFamily :: Prelude.Maybe Prelude.Text,
    -- | The name of the database engine.
    engine :: Prelude.Maybe Prelude.Text,
    -- | A list of features supported by the DB engine. Supported feature names
    -- include the following.
    --
    -- -   s3Import
    supportedFeatureNames :: Prelude.Maybe [Prelude.Text],
    -- | A value that indicates whether the engine version supports exporting the
    -- log types specified by ExportableLogTypes to CloudWatch Logs.
    supportsLogExportsToCloudwatchLogs :: Prelude.Maybe Prelude.Bool,
    -- | The default character set for new instances of this engine version, if
    -- the @CharacterSetName@ parameter of the CreateDBInstance API isn\'t
    -- specified.
    defaultCharacterSet :: Prelude.Maybe CharacterSet,
    -- | A value that indicates whether you can use Aurora parallel query with a
    -- specific DB engine version.
    supportsParallelQuery :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBEngineVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'dBEngineVersion_status' - The status of the DB engine version, either @available@ or @deprecated@.
--
-- 'dBEngineVersionDescription', 'dBEngineVersion_dBEngineVersionDescription' - The description of the database engine version.
--
-- 'dBEngineDescription', 'dBEngineVersion_dBEngineDescription' - The description of the database engine.
--
-- 'supportedTimezones', 'dBEngineVersion_supportedTimezones' - A list of the time zones supported by this engine for the @Timezone@
-- parameter of the @CreateDBInstance@ action.
--
-- 'supportedEngineModes', 'dBEngineVersion_supportedEngineModes' - A list of the supported DB engine modes.
--
-- 'supportedNcharCharacterSets', 'dBEngineVersion_supportedNcharCharacterSets' - A list of the character sets supported by the Oracle DB engine for the
-- @NcharCharacterSetName@ parameter of the @CreateDBInstance@ operation.
--
-- 'validUpgradeTarget', 'dBEngineVersion_validUpgradeTarget' - A list of engine versions that this database engine version can be
-- upgraded to.
--
-- 'engineVersion', 'dBEngineVersion_engineVersion' - The version number of the database engine.
--
-- 'supportsGlobalDatabases', 'dBEngineVersion_supportsGlobalDatabases' - A value that indicates whether you can use Aurora global databases with
-- a specific DB engine version.
--
-- 'exportableLogTypes', 'dBEngineVersion_exportableLogTypes' - The types of logs that the database engine has available for export to
-- CloudWatch Logs.
--
-- 'supportedCharacterSets', 'dBEngineVersion_supportedCharacterSets' - A list of the character sets supported by this engine for the
-- @CharacterSetName@ parameter of the @CreateDBInstance@ operation.
--
-- 'supportsReadReplica', 'dBEngineVersion_supportsReadReplica' - Indicates whether the database engine version supports read replicas.
--
-- 'dBParameterGroupFamily', 'dBEngineVersion_dBParameterGroupFamily' - The name of the DB parameter group family for the database engine.
--
-- 'engine', 'dBEngineVersion_engine' - The name of the database engine.
--
-- 'supportedFeatureNames', 'dBEngineVersion_supportedFeatureNames' - A list of features supported by the DB engine. Supported feature names
-- include the following.
--
-- -   s3Import
--
-- 'supportsLogExportsToCloudwatchLogs', 'dBEngineVersion_supportsLogExportsToCloudwatchLogs' - A value that indicates whether the engine version supports exporting the
-- log types specified by ExportableLogTypes to CloudWatch Logs.
--
-- 'defaultCharacterSet', 'dBEngineVersion_defaultCharacterSet' - The default character set for new instances of this engine version, if
-- the @CharacterSetName@ parameter of the CreateDBInstance API isn\'t
-- specified.
--
-- 'supportsParallelQuery', 'dBEngineVersion_supportsParallelQuery' - A value that indicates whether you can use Aurora parallel query with a
-- specific DB engine version.
newDBEngineVersion ::
  DBEngineVersion
newDBEngineVersion =
  DBEngineVersion'
    { status = Prelude.Nothing,
      dBEngineVersionDescription = Prelude.Nothing,
      dBEngineDescription = Prelude.Nothing,
      supportedTimezones = Prelude.Nothing,
      supportedEngineModes = Prelude.Nothing,
      supportedNcharCharacterSets = Prelude.Nothing,
      validUpgradeTarget = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      supportsGlobalDatabases = Prelude.Nothing,
      exportableLogTypes = Prelude.Nothing,
      supportedCharacterSets = Prelude.Nothing,
      supportsReadReplica = Prelude.Nothing,
      dBParameterGroupFamily = Prelude.Nothing,
      engine = Prelude.Nothing,
      supportedFeatureNames = Prelude.Nothing,
      supportsLogExportsToCloudwatchLogs = Prelude.Nothing,
      defaultCharacterSet = Prelude.Nothing,
      supportsParallelQuery = Prelude.Nothing
    }

-- | The status of the DB engine version, either @available@ or @deprecated@.
dBEngineVersion_status :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Text)
dBEngineVersion_status = Lens.lens (\DBEngineVersion' {status} -> status) (\s@DBEngineVersion' {} a -> s {status = a} :: DBEngineVersion)

-- | The description of the database engine version.
dBEngineVersion_dBEngineVersionDescription :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Text)
dBEngineVersion_dBEngineVersionDescription = Lens.lens (\DBEngineVersion' {dBEngineVersionDescription} -> dBEngineVersionDescription) (\s@DBEngineVersion' {} a -> s {dBEngineVersionDescription = a} :: DBEngineVersion)

-- | The description of the database engine.
dBEngineVersion_dBEngineDescription :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Text)
dBEngineVersion_dBEngineDescription = Lens.lens (\DBEngineVersion' {dBEngineDescription} -> dBEngineDescription) (\s@DBEngineVersion' {} a -> s {dBEngineDescription = a} :: DBEngineVersion)

-- | A list of the time zones supported by this engine for the @Timezone@
-- parameter of the @CreateDBInstance@ action.
dBEngineVersion_supportedTimezones :: Lens.Lens' DBEngineVersion (Prelude.Maybe [Timezone])
dBEngineVersion_supportedTimezones = Lens.lens (\DBEngineVersion' {supportedTimezones} -> supportedTimezones) (\s@DBEngineVersion' {} a -> s {supportedTimezones = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of the supported DB engine modes.
dBEngineVersion_supportedEngineModes :: Lens.Lens' DBEngineVersion (Prelude.Maybe [Prelude.Text])
dBEngineVersion_supportedEngineModes = Lens.lens (\DBEngineVersion' {supportedEngineModes} -> supportedEngineModes) (\s@DBEngineVersion' {} a -> s {supportedEngineModes = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of the character sets supported by the Oracle DB engine for the
-- @NcharCharacterSetName@ parameter of the @CreateDBInstance@ operation.
dBEngineVersion_supportedNcharCharacterSets :: Lens.Lens' DBEngineVersion (Prelude.Maybe [CharacterSet])
dBEngineVersion_supportedNcharCharacterSets = Lens.lens (\DBEngineVersion' {supportedNcharCharacterSets} -> supportedNcharCharacterSets) (\s@DBEngineVersion' {} a -> s {supportedNcharCharacterSets = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of engine versions that this database engine version can be
-- upgraded to.
dBEngineVersion_validUpgradeTarget :: Lens.Lens' DBEngineVersion (Prelude.Maybe [UpgradeTarget])
dBEngineVersion_validUpgradeTarget = Lens.lens (\DBEngineVersion' {validUpgradeTarget} -> validUpgradeTarget) (\s@DBEngineVersion' {} a -> s {validUpgradeTarget = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | The version number of the database engine.
dBEngineVersion_engineVersion :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Text)
dBEngineVersion_engineVersion = Lens.lens (\DBEngineVersion' {engineVersion} -> engineVersion) (\s@DBEngineVersion' {} a -> s {engineVersion = a} :: DBEngineVersion)

-- | A value that indicates whether you can use Aurora global databases with
-- a specific DB engine version.
dBEngineVersion_supportsGlobalDatabases :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Bool)
dBEngineVersion_supportsGlobalDatabases = Lens.lens (\DBEngineVersion' {supportsGlobalDatabases} -> supportsGlobalDatabases) (\s@DBEngineVersion' {} a -> s {supportsGlobalDatabases = a} :: DBEngineVersion)

-- | The types of logs that the database engine has available for export to
-- CloudWatch Logs.
dBEngineVersion_exportableLogTypes :: Lens.Lens' DBEngineVersion (Prelude.Maybe [Prelude.Text])
dBEngineVersion_exportableLogTypes = Lens.lens (\DBEngineVersion' {exportableLogTypes} -> exportableLogTypes) (\s@DBEngineVersion' {} a -> s {exportableLogTypes = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of the character sets supported by this engine for the
-- @CharacterSetName@ parameter of the @CreateDBInstance@ operation.
dBEngineVersion_supportedCharacterSets :: Lens.Lens' DBEngineVersion (Prelude.Maybe [CharacterSet])
dBEngineVersion_supportedCharacterSets = Lens.lens (\DBEngineVersion' {supportedCharacterSets} -> supportedCharacterSets) (\s@DBEngineVersion' {} a -> s {supportedCharacterSets = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | Indicates whether the database engine version supports read replicas.
dBEngineVersion_supportsReadReplica :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Bool)
dBEngineVersion_supportsReadReplica = Lens.lens (\DBEngineVersion' {supportsReadReplica} -> supportsReadReplica) (\s@DBEngineVersion' {} a -> s {supportsReadReplica = a} :: DBEngineVersion)

-- | The name of the DB parameter group family for the database engine.
dBEngineVersion_dBParameterGroupFamily :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Text)
dBEngineVersion_dBParameterGroupFamily = Lens.lens (\DBEngineVersion' {dBParameterGroupFamily} -> dBParameterGroupFamily) (\s@DBEngineVersion' {} a -> s {dBParameterGroupFamily = a} :: DBEngineVersion)

-- | The name of the database engine.
dBEngineVersion_engine :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Text)
dBEngineVersion_engine = Lens.lens (\DBEngineVersion' {engine} -> engine) (\s@DBEngineVersion' {} a -> s {engine = a} :: DBEngineVersion)

-- | A list of features supported by the DB engine. Supported feature names
-- include the following.
--
-- -   s3Import
dBEngineVersion_supportedFeatureNames :: Lens.Lens' DBEngineVersion (Prelude.Maybe [Prelude.Text])
dBEngineVersion_supportedFeatureNames = Lens.lens (\DBEngineVersion' {supportedFeatureNames} -> supportedFeatureNames) (\s@DBEngineVersion' {} a -> s {supportedFeatureNames = a} :: DBEngineVersion) Prelude.. Lens.mapping Prelude._Coerce

-- | A value that indicates whether the engine version supports exporting the
-- log types specified by ExportableLogTypes to CloudWatch Logs.
dBEngineVersion_supportsLogExportsToCloudwatchLogs :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Bool)
dBEngineVersion_supportsLogExportsToCloudwatchLogs = Lens.lens (\DBEngineVersion' {supportsLogExportsToCloudwatchLogs} -> supportsLogExportsToCloudwatchLogs) (\s@DBEngineVersion' {} a -> s {supportsLogExportsToCloudwatchLogs = a} :: DBEngineVersion)

-- | The default character set for new instances of this engine version, if
-- the @CharacterSetName@ parameter of the CreateDBInstance API isn\'t
-- specified.
dBEngineVersion_defaultCharacterSet :: Lens.Lens' DBEngineVersion (Prelude.Maybe CharacterSet)
dBEngineVersion_defaultCharacterSet = Lens.lens (\DBEngineVersion' {defaultCharacterSet} -> defaultCharacterSet) (\s@DBEngineVersion' {} a -> s {defaultCharacterSet = a} :: DBEngineVersion)

-- | A value that indicates whether you can use Aurora parallel query with a
-- specific DB engine version.
dBEngineVersion_supportsParallelQuery :: Lens.Lens' DBEngineVersion (Prelude.Maybe Prelude.Bool)
dBEngineVersion_supportsParallelQuery = Lens.lens (\DBEngineVersion' {supportsParallelQuery} -> supportsParallelQuery) (\s@DBEngineVersion' {} a -> s {supportsParallelQuery = a} :: DBEngineVersion)

instance Prelude.FromXML DBEngineVersion where
  parseXML x =
    DBEngineVersion'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "DBEngineVersionDescription")
      Prelude.<*> (x Prelude..@? "DBEngineDescription")
      Prelude.<*> ( x Prelude..@? "SupportedTimezones"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "Timezone")
                  )
      Prelude.<*> ( x Prelude..@? "SupportedEngineModes"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> ( x Prelude..@? "SupportedNcharCharacterSets"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "CharacterSet")
                  )
      Prelude.<*> ( x Prelude..@? "ValidUpgradeTarget"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "UpgradeTarget")
                  )
      Prelude.<*> (x Prelude..@? "EngineVersion")
      Prelude.<*> (x Prelude..@? "SupportsGlobalDatabases")
      Prelude.<*> ( x Prelude..@? "ExportableLogTypes"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> ( x Prelude..@? "SupportedCharacterSets"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "CharacterSet")
                  )
      Prelude.<*> (x Prelude..@? "SupportsReadReplica")
      Prelude.<*> (x Prelude..@? "DBParameterGroupFamily")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> ( x Prelude..@? "SupportedFeatureNames"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "SupportsLogExportsToCloudwatchLogs")
      Prelude.<*> (x Prelude..@? "DefaultCharacterSet")
      Prelude.<*> (x Prelude..@? "SupportsParallelQuery")

instance Prelude.Hashable DBEngineVersion

instance Prelude.NFData DBEngineVersion

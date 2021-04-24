{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RelationalDatabaseBlueprint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RelationalDatabaseBlueprint where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.RelationalDatabaseEngine
import Network.AWS.Prelude

-- | Describes a database image, or blueprint. A blueprint describes the major engine version of a database.
--
--
--
-- /See:/ 'relationalDatabaseBlueprint' smart constructor.
data RelationalDatabaseBlueprint = RelationalDatabaseBlueprint'
  { _rdbEngineDescription ::
      !(Maybe Text),
    _rdbBlueprintId ::
      !(Maybe Text),
    _rdbEngineVersionDescription ::
      !(Maybe Text),
    _rdbIsEngineDefault ::
      !(Maybe Bool),
    _rdbEngineVersion ::
      !(Maybe Text),
    _rdbEngine ::
      !( Maybe
           RelationalDatabaseEngine
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RelationalDatabaseBlueprint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdbEngineDescription' - The description of the database engine for the database blueprint.
--
-- * 'rdbBlueprintId' - The ID for the database blueprint.
--
-- * 'rdbEngineVersionDescription' - The description of the database engine version for the database blueprint.
--
-- * 'rdbIsEngineDefault' - A Boolean value indicating whether the engine version is the default for the database blueprint.
--
-- * 'rdbEngineVersion' - The database engine version for the database blueprint (for example, @5.7.23@ ).
--
-- * 'rdbEngine' - The database software of the database blueprint (for example, @MySQL@ ).
relationalDatabaseBlueprint ::
  RelationalDatabaseBlueprint
relationalDatabaseBlueprint =
  RelationalDatabaseBlueprint'
    { _rdbEngineDescription =
        Nothing,
      _rdbBlueprintId = Nothing,
      _rdbEngineVersionDescription = Nothing,
      _rdbIsEngineDefault = Nothing,
      _rdbEngineVersion = Nothing,
      _rdbEngine = Nothing
    }

-- | The description of the database engine for the database blueprint.
rdbEngineDescription :: Lens' RelationalDatabaseBlueprint (Maybe Text)
rdbEngineDescription = lens _rdbEngineDescription (\s a -> s {_rdbEngineDescription = a})

-- | The ID for the database blueprint.
rdbBlueprintId :: Lens' RelationalDatabaseBlueprint (Maybe Text)
rdbBlueprintId = lens _rdbBlueprintId (\s a -> s {_rdbBlueprintId = a})

-- | The description of the database engine version for the database blueprint.
rdbEngineVersionDescription :: Lens' RelationalDatabaseBlueprint (Maybe Text)
rdbEngineVersionDescription = lens _rdbEngineVersionDescription (\s a -> s {_rdbEngineVersionDescription = a})

-- | A Boolean value indicating whether the engine version is the default for the database blueprint.
rdbIsEngineDefault :: Lens' RelationalDatabaseBlueprint (Maybe Bool)
rdbIsEngineDefault = lens _rdbIsEngineDefault (\s a -> s {_rdbIsEngineDefault = a})

-- | The database engine version for the database blueprint (for example, @5.7.23@ ).
rdbEngineVersion :: Lens' RelationalDatabaseBlueprint (Maybe Text)
rdbEngineVersion = lens _rdbEngineVersion (\s a -> s {_rdbEngineVersion = a})

-- | The database software of the database blueprint (for example, @MySQL@ ).
rdbEngine :: Lens' RelationalDatabaseBlueprint (Maybe RelationalDatabaseEngine)
rdbEngine = lens _rdbEngine (\s a -> s {_rdbEngine = a})

instance FromJSON RelationalDatabaseBlueprint where
  parseJSON =
    withObject
      "RelationalDatabaseBlueprint"
      ( \x ->
          RelationalDatabaseBlueprint'
            <$> (x .:? "engineDescription")
            <*> (x .:? "blueprintId")
            <*> (x .:? "engineVersionDescription")
            <*> (x .:? "isEngineDefault")
            <*> (x .:? "engineVersion")
            <*> (x .:? "engine")
      )

instance Hashable RelationalDatabaseBlueprint

instance NFData RelationalDatabaseBlueprint

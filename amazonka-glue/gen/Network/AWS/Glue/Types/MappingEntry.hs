{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.MappingEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.MappingEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a mapping.
--
--
--
-- /See:/ 'mappingEntry' smart constructor.
data MappingEntry = MappingEntry'
  { _meTargetType ::
      !(Maybe Text),
    _meTargetTable :: !(Maybe Text),
    _meTargetPath :: !(Maybe Text),
    _meSourceTable :: !(Maybe Text),
    _meSourcePath :: !(Maybe Text),
    _meSourceType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MappingEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meTargetType' - The target type.
--
-- * 'meTargetTable' - The target table.
--
-- * 'meTargetPath' - The target path.
--
-- * 'meSourceTable' - The name of the source table.
--
-- * 'meSourcePath' - The source path.
--
-- * 'meSourceType' - The source type.
mappingEntry ::
  MappingEntry
mappingEntry =
  MappingEntry'
    { _meTargetType = Nothing,
      _meTargetTable = Nothing,
      _meTargetPath = Nothing,
      _meSourceTable = Nothing,
      _meSourcePath = Nothing,
      _meSourceType = Nothing
    }

-- | The target type.
meTargetType :: Lens' MappingEntry (Maybe Text)
meTargetType = lens _meTargetType (\s a -> s {_meTargetType = a})

-- | The target table.
meTargetTable :: Lens' MappingEntry (Maybe Text)
meTargetTable = lens _meTargetTable (\s a -> s {_meTargetTable = a})

-- | The target path.
meTargetPath :: Lens' MappingEntry (Maybe Text)
meTargetPath = lens _meTargetPath (\s a -> s {_meTargetPath = a})

-- | The name of the source table.
meSourceTable :: Lens' MappingEntry (Maybe Text)
meSourceTable = lens _meSourceTable (\s a -> s {_meSourceTable = a})

-- | The source path.
meSourcePath :: Lens' MappingEntry (Maybe Text)
meSourcePath = lens _meSourcePath (\s a -> s {_meSourcePath = a})

-- | The source type.
meSourceType :: Lens' MappingEntry (Maybe Text)
meSourceType = lens _meSourceType (\s a -> s {_meSourceType = a})

instance FromJSON MappingEntry where
  parseJSON =
    withObject
      "MappingEntry"
      ( \x ->
          MappingEntry'
            <$> (x .:? "TargetType")
            <*> (x .:? "TargetTable")
            <*> (x .:? "TargetPath")
            <*> (x .:? "SourceTable")
            <*> (x .:? "SourcePath")
            <*> (x .:? "SourceType")
      )

instance Hashable MappingEntry

instance NFData MappingEntry

instance ToJSON MappingEntry where
  toJSON MappingEntry' {..} =
    object
      ( catMaybes
          [ ("TargetType" .=) <$> _meTargetType,
            ("TargetTable" .=) <$> _meTargetTable,
            ("TargetPath" .=) <$> _meTargetPath,
            ("SourceTable" .=) <$> _meSourceTable,
            ("SourcePath" .=) <$> _meSourcePath,
            ("SourceType" .=) <$> _meSourceType
          ]
      )

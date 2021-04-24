{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Table
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Table where

import Network.AWS.Glue.Types.Column
import Network.AWS.Glue.Types.StorageDescriptor
import Network.AWS.Glue.Types.TableIdentifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a collection of related data organized in columns and rows.
--
--
--
-- /See:/ 'table' smart constructor.
data Table = Table'
  { _ttViewOriginalText ::
      !(Maybe Text),
    _ttCatalogId :: !(Maybe Text),
    _ttTableType :: !(Maybe Text),
    _ttStorageDescriptor :: !(Maybe StorageDescriptor),
    _ttLastAnalyzedTime :: !(Maybe POSIX),
    _ttViewExpandedText :: !(Maybe Text),
    _ttTargetTable :: !(Maybe TableIdentifier),
    _ttRetention :: !(Maybe Nat),
    _ttUpdateTime :: !(Maybe POSIX),
    _ttCreateTime :: !(Maybe POSIX),
    _ttOwner :: !(Maybe Text),
    _ttPartitionKeys :: !(Maybe [Column]),
    _ttDescription :: !(Maybe Text),
    _ttLastAccessTime :: !(Maybe POSIX),
    _ttCreatedBy :: !(Maybe Text),
    _ttIsRegisteredWithLakeFormation :: !(Maybe Bool),
    _ttParameters :: !(Maybe (Map Text Text)),
    _ttDatabaseName :: !(Maybe Text),
    _ttName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttViewOriginalText' - If the table is a view, the original text of the view; otherwise @null@ .
--
-- * 'ttCatalogId' - The ID of the Data Catalog in which the table resides.
--
-- * 'ttTableType' - The type of this table (@EXTERNAL_TABLE@ , @VIRTUAL_VIEW@ , etc.).
--
-- * 'ttStorageDescriptor' - A storage descriptor containing information about the physical storage of this table.
--
-- * 'ttLastAnalyzedTime' - The last time that column statistics were computed for this table.
--
-- * 'ttViewExpandedText' - If the table is a view, the expanded text of the view; otherwise @null@ .
--
-- * 'ttTargetTable' - A @TableIdentifier@ structure that describes a target table for resource linking.
--
-- * 'ttRetention' - The retention time for this table.
--
-- * 'ttUpdateTime' - The last time that the table was updated.
--
-- * 'ttCreateTime' - The time when the table definition was created in the Data Catalog.
--
-- * 'ttOwner' - The owner of the table.
--
-- * 'ttPartitionKeys' - A list of columns by which the table is partitioned. Only primitive types are supported as partition keys. When you create a table used by Amazon Athena, and you do not specify any @partitionKeys@ , you must at least set the value of @partitionKeys@ to an empty list. For example: @"PartitionKeys": []@
--
-- * 'ttDescription' - A description of the table.
--
-- * 'ttLastAccessTime' - The last time that the table was accessed. This is usually taken from HDFS, and might not be reliable.
--
-- * 'ttCreatedBy' - The person or entity who created the table.
--
-- * 'ttIsRegisteredWithLakeFormation' - Indicates whether the table has been registered with AWS Lake Formation.
--
-- * 'ttParameters' - These key-value pairs define properties associated with the table.
--
-- * 'ttDatabaseName' - The name of the database where the table metadata resides. For Hive compatibility, this must be all lowercase.
--
-- * 'ttName' - The table name. For Hive compatibility, this must be entirely lowercase.
table ::
  -- | 'ttName'
  Text ->
  Table
table pName_ =
  Table'
    { _ttViewOriginalText = Nothing,
      _ttCatalogId = Nothing,
      _ttTableType = Nothing,
      _ttStorageDescriptor = Nothing,
      _ttLastAnalyzedTime = Nothing,
      _ttViewExpandedText = Nothing,
      _ttTargetTable = Nothing,
      _ttRetention = Nothing,
      _ttUpdateTime = Nothing,
      _ttCreateTime = Nothing,
      _ttOwner = Nothing,
      _ttPartitionKeys = Nothing,
      _ttDescription = Nothing,
      _ttLastAccessTime = Nothing,
      _ttCreatedBy = Nothing,
      _ttIsRegisteredWithLakeFormation = Nothing,
      _ttParameters = Nothing,
      _ttDatabaseName = Nothing,
      _ttName = pName_
    }

-- | If the table is a view, the original text of the view; otherwise @null@ .
ttViewOriginalText :: Lens' Table (Maybe Text)
ttViewOriginalText = lens _ttViewOriginalText (\s a -> s {_ttViewOriginalText = a})

-- | The ID of the Data Catalog in which the table resides.
ttCatalogId :: Lens' Table (Maybe Text)
ttCatalogId = lens _ttCatalogId (\s a -> s {_ttCatalogId = a})

-- | The type of this table (@EXTERNAL_TABLE@ , @VIRTUAL_VIEW@ , etc.).
ttTableType :: Lens' Table (Maybe Text)
ttTableType = lens _ttTableType (\s a -> s {_ttTableType = a})

-- | A storage descriptor containing information about the physical storage of this table.
ttStorageDescriptor :: Lens' Table (Maybe StorageDescriptor)
ttStorageDescriptor = lens _ttStorageDescriptor (\s a -> s {_ttStorageDescriptor = a})

-- | The last time that column statistics were computed for this table.
ttLastAnalyzedTime :: Lens' Table (Maybe UTCTime)
ttLastAnalyzedTime = lens _ttLastAnalyzedTime (\s a -> s {_ttLastAnalyzedTime = a}) . mapping _Time

-- | If the table is a view, the expanded text of the view; otherwise @null@ .
ttViewExpandedText :: Lens' Table (Maybe Text)
ttViewExpandedText = lens _ttViewExpandedText (\s a -> s {_ttViewExpandedText = a})

-- | A @TableIdentifier@ structure that describes a target table for resource linking.
ttTargetTable :: Lens' Table (Maybe TableIdentifier)
ttTargetTable = lens _ttTargetTable (\s a -> s {_ttTargetTable = a})

-- | The retention time for this table.
ttRetention :: Lens' Table (Maybe Natural)
ttRetention = lens _ttRetention (\s a -> s {_ttRetention = a}) . mapping _Nat

-- | The last time that the table was updated.
ttUpdateTime :: Lens' Table (Maybe UTCTime)
ttUpdateTime = lens _ttUpdateTime (\s a -> s {_ttUpdateTime = a}) . mapping _Time

-- | The time when the table definition was created in the Data Catalog.
ttCreateTime :: Lens' Table (Maybe UTCTime)
ttCreateTime = lens _ttCreateTime (\s a -> s {_ttCreateTime = a}) . mapping _Time

-- | The owner of the table.
ttOwner :: Lens' Table (Maybe Text)
ttOwner = lens _ttOwner (\s a -> s {_ttOwner = a})

-- | A list of columns by which the table is partitioned. Only primitive types are supported as partition keys. When you create a table used by Amazon Athena, and you do not specify any @partitionKeys@ , you must at least set the value of @partitionKeys@ to an empty list. For example: @"PartitionKeys": []@
ttPartitionKeys :: Lens' Table [Column]
ttPartitionKeys = lens _ttPartitionKeys (\s a -> s {_ttPartitionKeys = a}) . _Default . _Coerce

-- | A description of the table.
ttDescription :: Lens' Table (Maybe Text)
ttDescription = lens _ttDescription (\s a -> s {_ttDescription = a})

-- | The last time that the table was accessed. This is usually taken from HDFS, and might not be reliable.
ttLastAccessTime :: Lens' Table (Maybe UTCTime)
ttLastAccessTime = lens _ttLastAccessTime (\s a -> s {_ttLastAccessTime = a}) . mapping _Time

-- | The person or entity who created the table.
ttCreatedBy :: Lens' Table (Maybe Text)
ttCreatedBy = lens _ttCreatedBy (\s a -> s {_ttCreatedBy = a})

-- | Indicates whether the table has been registered with AWS Lake Formation.
ttIsRegisteredWithLakeFormation :: Lens' Table (Maybe Bool)
ttIsRegisteredWithLakeFormation = lens _ttIsRegisteredWithLakeFormation (\s a -> s {_ttIsRegisteredWithLakeFormation = a})

-- | These key-value pairs define properties associated with the table.
ttParameters :: Lens' Table (HashMap Text Text)
ttParameters = lens _ttParameters (\s a -> s {_ttParameters = a}) . _Default . _Map

-- | The name of the database where the table metadata resides. For Hive compatibility, this must be all lowercase.
ttDatabaseName :: Lens' Table (Maybe Text)
ttDatabaseName = lens _ttDatabaseName (\s a -> s {_ttDatabaseName = a})

-- | The table name. For Hive compatibility, this must be entirely lowercase.
ttName :: Lens' Table Text
ttName = lens _ttName (\s a -> s {_ttName = a})

instance FromJSON Table where
  parseJSON =
    withObject
      "Table"
      ( \x ->
          Table'
            <$> (x .:? "ViewOriginalText")
            <*> (x .:? "CatalogId")
            <*> (x .:? "TableType")
            <*> (x .:? "StorageDescriptor")
            <*> (x .:? "LastAnalyzedTime")
            <*> (x .:? "ViewExpandedText")
            <*> (x .:? "TargetTable")
            <*> (x .:? "Retention")
            <*> (x .:? "UpdateTime")
            <*> (x .:? "CreateTime")
            <*> (x .:? "Owner")
            <*> (x .:? "PartitionKeys" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "LastAccessTime")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "IsRegisteredWithLakeFormation")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "DatabaseName")
            <*> (x .: "Name")
      )

instance Hashable Table

instance NFData Table

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TableInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TableInput where

import Network.AWS.Glue.Types.Column
import Network.AWS.Glue.Types.StorageDescriptor
import Network.AWS.Glue.Types.TableIdentifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure used to define a table.
--
--
--
-- /See:/ 'tableInput' smart constructor.
data TableInput = TableInput'
  { _tabViewOriginalText ::
      !(Maybe Text),
    _tabTableType :: !(Maybe Text),
    _tabStorageDescriptor ::
      !(Maybe StorageDescriptor),
    _tabLastAnalyzedTime :: !(Maybe POSIX),
    _tabViewExpandedText :: !(Maybe Text),
    _tabTargetTable :: !(Maybe TableIdentifier),
    _tabRetention :: !(Maybe Nat),
    _tabOwner :: !(Maybe Text),
    _tabPartitionKeys :: !(Maybe [Column]),
    _tabDescription :: !(Maybe Text),
    _tabLastAccessTime :: !(Maybe POSIX),
    _tabParameters :: !(Maybe (Map Text Text)),
    _tabName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabViewOriginalText' - If the table is a view, the original text of the view; otherwise @null@ .
--
-- * 'tabTableType' - The type of this table (@EXTERNAL_TABLE@ , @VIRTUAL_VIEW@ , etc.).
--
-- * 'tabStorageDescriptor' - A storage descriptor containing information about the physical storage of this table.
--
-- * 'tabLastAnalyzedTime' - The last time that column statistics were computed for this table.
--
-- * 'tabViewExpandedText' - If the table is a view, the expanded text of the view; otherwise @null@ .
--
-- * 'tabTargetTable' - A @TableIdentifier@ structure that describes a target table for resource linking.
--
-- * 'tabRetention' - The retention time for this table.
--
-- * 'tabOwner' - The table owner.
--
-- * 'tabPartitionKeys' - A list of columns by which the table is partitioned. Only primitive types are supported as partition keys. When you create a table used by Amazon Athena, and you do not specify any @partitionKeys@ , you must at least set the value of @partitionKeys@ to an empty list. For example: @"PartitionKeys": []@
--
-- * 'tabDescription' - A description of the table.
--
-- * 'tabLastAccessTime' - The last time that the table was accessed.
--
-- * 'tabParameters' - These key-value pairs define properties associated with the table.
--
-- * 'tabName' - The table name. For Hive compatibility, this is folded to lowercase when it is stored.
tableInput ::
  -- | 'tabName'
  Text ->
  TableInput
tableInput pName_ =
  TableInput'
    { _tabViewOriginalText = Nothing,
      _tabTableType = Nothing,
      _tabStorageDescriptor = Nothing,
      _tabLastAnalyzedTime = Nothing,
      _tabViewExpandedText = Nothing,
      _tabTargetTable = Nothing,
      _tabRetention = Nothing,
      _tabOwner = Nothing,
      _tabPartitionKeys = Nothing,
      _tabDescription = Nothing,
      _tabLastAccessTime = Nothing,
      _tabParameters = Nothing,
      _tabName = pName_
    }

-- | If the table is a view, the original text of the view; otherwise @null@ .
tabViewOriginalText :: Lens' TableInput (Maybe Text)
tabViewOriginalText = lens _tabViewOriginalText (\s a -> s {_tabViewOriginalText = a})

-- | The type of this table (@EXTERNAL_TABLE@ , @VIRTUAL_VIEW@ , etc.).
tabTableType :: Lens' TableInput (Maybe Text)
tabTableType = lens _tabTableType (\s a -> s {_tabTableType = a})

-- | A storage descriptor containing information about the physical storage of this table.
tabStorageDescriptor :: Lens' TableInput (Maybe StorageDescriptor)
tabStorageDescriptor = lens _tabStorageDescriptor (\s a -> s {_tabStorageDescriptor = a})

-- | The last time that column statistics were computed for this table.
tabLastAnalyzedTime :: Lens' TableInput (Maybe UTCTime)
tabLastAnalyzedTime = lens _tabLastAnalyzedTime (\s a -> s {_tabLastAnalyzedTime = a}) . mapping _Time

-- | If the table is a view, the expanded text of the view; otherwise @null@ .
tabViewExpandedText :: Lens' TableInput (Maybe Text)
tabViewExpandedText = lens _tabViewExpandedText (\s a -> s {_tabViewExpandedText = a})

-- | A @TableIdentifier@ structure that describes a target table for resource linking.
tabTargetTable :: Lens' TableInput (Maybe TableIdentifier)
tabTargetTable = lens _tabTargetTable (\s a -> s {_tabTargetTable = a})

-- | The retention time for this table.
tabRetention :: Lens' TableInput (Maybe Natural)
tabRetention = lens _tabRetention (\s a -> s {_tabRetention = a}) . mapping _Nat

-- | The table owner.
tabOwner :: Lens' TableInput (Maybe Text)
tabOwner = lens _tabOwner (\s a -> s {_tabOwner = a})

-- | A list of columns by which the table is partitioned. Only primitive types are supported as partition keys. When you create a table used by Amazon Athena, and you do not specify any @partitionKeys@ , you must at least set the value of @partitionKeys@ to an empty list. For example: @"PartitionKeys": []@
tabPartitionKeys :: Lens' TableInput [Column]
tabPartitionKeys = lens _tabPartitionKeys (\s a -> s {_tabPartitionKeys = a}) . _Default . _Coerce

-- | A description of the table.
tabDescription :: Lens' TableInput (Maybe Text)
tabDescription = lens _tabDescription (\s a -> s {_tabDescription = a})

-- | The last time that the table was accessed.
tabLastAccessTime :: Lens' TableInput (Maybe UTCTime)
tabLastAccessTime = lens _tabLastAccessTime (\s a -> s {_tabLastAccessTime = a}) . mapping _Time

-- | These key-value pairs define properties associated with the table.
tabParameters :: Lens' TableInput (HashMap Text Text)
tabParameters = lens _tabParameters (\s a -> s {_tabParameters = a}) . _Default . _Map

-- | The table name. For Hive compatibility, this is folded to lowercase when it is stored.
tabName :: Lens' TableInput Text
tabName = lens _tabName (\s a -> s {_tabName = a})

instance Hashable TableInput

instance NFData TableInput

instance ToJSON TableInput where
  toJSON TableInput' {..} =
    object
      ( catMaybes
          [ ("ViewOriginalText" .=) <$> _tabViewOriginalText,
            ("TableType" .=) <$> _tabTableType,
            ("StorageDescriptor" .=) <$> _tabStorageDescriptor,
            ("LastAnalyzedTime" .=) <$> _tabLastAnalyzedTime,
            ("ViewExpandedText" .=) <$> _tabViewExpandedText,
            ("TargetTable" .=) <$> _tabTargetTable,
            ("Retention" .=) <$> _tabRetention,
            ("Owner" .=) <$> _tabOwner,
            ("PartitionKeys" .=) <$> _tabPartitionKeys,
            ("Description" .=) <$> _tabDescription,
            ("LastAccessTime" .=) <$> _tabLastAccessTime,
            ("Parameters" .=) <$> _tabParameters,
            Just ("Name" .= _tabName)
          ]
      )

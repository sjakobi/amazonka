{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.StorageDescriptor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.StorageDescriptor where

import Network.AWS.Glue.Types.Column
import Network.AWS.Glue.Types.Order
import Network.AWS.Glue.Types.SchemaReference
import Network.AWS.Glue.Types.SerDeInfo
import Network.AWS.Glue.Types.SkewedInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the physical storage of table data.
--
--
--
-- /See:/ 'storageDescriptor' smart constructor.
data StorageDescriptor = StorageDescriptor'
  { _sdCompressed ::
      !(Maybe Bool),
    _sdNumberOfBuckets :: !(Maybe Int),
    _sdSkewedInfo ::
      !(Maybe SkewedInfo),
    _sdSchemaReference ::
      !(Maybe SchemaReference),
    _sdSortColumns :: !(Maybe [Order]),
    _sdOutputFormat :: !(Maybe Text),
    _sdBucketColumns :: !(Maybe [Text]),
    _sdSerdeInfo :: !(Maybe SerDeInfo),
    _sdLocation :: !(Maybe Text),
    _sdColumns :: !(Maybe [Column]),
    _sdInputFormat :: !(Maybe Text),
    _sdParameters ::
      !(Maybe (Map Text Text)),
    _sdStoredAsSubDirectories ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StorageDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdCompressed' - @True@ if the data in the table is compressed, or @False@ if not.
--
-- * 'sdNumberOfBuckets' - Must be specified if the table contains any dimension columns.
--
-- * 'sdSkewedInfo' - The information about values that appear frequently in a column (skewed values).
--
-- * 'sdSchemaReference' - An object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference.
--
-- * 'sdSortColumns' - A list specifying the sort order of each bucket in the table.
--
-- * 'sdOutputFormat' - The output format: @SequenceFileOutputFormat@ (binary), or @IgnoreKeyTextOutputFormat@ , or a custom format.
--
-- * 'sdBucketColumns' - A list of reducer grouping columns, clustering columns, and bucketing columns in the table.
--
-- * 'sdSerdeInfo' - The serialization/deserialization (SerDe) information.
--
-- * 'sdLocation' - The physical location of the table. By default, this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
--
-- * 'sdColumns' - A list of the @Columns@ in the table.
--
-- * 'sdInputFormat' - The input format: @SequenceFileInputFormat@ (binary), or @TextInputFormat@ , or a custom format.
--
-- * 'sdParameters' - The user-supplied properties in key-value form.
--
-- * 'sdStoredAsSubDirectories' - @True@ if the table data is stored in subdirectories, or @False@ if not.
storageDescriptor ::
  StorageDescriptor
storageDescriptor =
  StorageDescriptor'
    { _sdCompressed = Nothing,
      _sdNumberOfBuckets = Nothing,
      _sdSkewedInfo = Nothing,
      _sdSchemaReference = Nothing,
      _sdSortColumns = Nothing,
      _sdOutputFormat = Nothing,
      _sdBucketColumns = Nothing,
      _sdSerdeInfo = Nothing,
      _sdLocation = Nothing,
      _sdColumns = Nothing,
      _sdInputFormat = Nothing,
      _sdParameters = Nothing,
      _sdStoredAsSubDirectories = Nothing
    }

-- | @True@ if the data in the table is compressed, or @False@ if not.
sdCompressed :: Lens' StorageDescriptor (Maybe Bool)
sdCompressed = lens _sdCompressed (\s a -> s {_sdCompressed = a})

-- | Must be specified if the table contains any dimension columns.
sdNumberOfBuckets :: Lens' StorageDescriptor (Maybe Int)
sdNumberOfBuckets = lens _sdNumberOfBuckets (\s a -> s {_sdNumberOfBuckets = a})

-- | The information about values that appear frequently in a column (skewed values).
sdSkewedInfo :: Lens' StorageDescriptor (Maybe SkewedInfo)
sdSkewedInfo = lens _sdSkewedInfo (\s a -> s {_sdSkewedInfo = a})

-- | An object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference.
sdSchemaReference :: Lens' StorageDescriptor (Maybe SchemaReference)
sdSchemaReference = lens _sdSchemaReference (\s a -> s {_sdSchemaReference = a})

-- | A list specifying the sort order of each bucket in the table.
sdSortColumns :: Lens' StorageDescriptor [Order]
sdSortColumns = lens _sdSortColumns (\s a -> s {_sdSortColumns = a}) . _Default . _Coerce

-- | The output format: @SequenceFileOutputFormat@ (binary), or @IgnoreKeyTextOutputFormat@ , or a custom format.
sdOutputFormat :: Lens' StorageDescriptor (Maybe Text)
sdOutputFormat = lens _sdOutputFormat (\s a -> s {_sdOutputFormat = a})

-- | A list of reducer grouping columns, clustering columns, and bucketing columns in the table.
sdBucketColumns :: Lens' StorageDescriptor [Text]
sdBucketColumns = lens _sdBucketColumns (\s a -> s {_sdBucketColumns = a}) . _Default . _Coerce

-- | The serialization/deserialization (SerDe) information.
sdSerdeInfo :: Lens' StorageDescriptor (Maybe SerDeInfo)
sdSerdeInfo = lens _sdSerdeInfo (\s a -> s {_sdSerdeInfo = a})

-- | The physical location of the table. By default, this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.
sdLocation :: Lens' StorageDescriptor (Maybe Text)
sdLocation = lens _sdLocation (\s a -> s {_sdLocation = a})

-- | A list of the @Columns@ in the table.
sdColumns :: Lens' StorageDescriptor [Column]
sdColumns = lens _sdColumns (\s a -> s {_sdColumns = a}) . _Default . _Coerce

-- | The input format: @SequenceFileInputFormat@ (binary), or @TextInputFormat@ , or a custom format.
sdInputFormat :: Lens' StorageDescriptor (Maybe Text)
sdInputFormat = lens _sdInputFormat (\s a -> s {_sdInputFormat = a})

-- | The user-supplied properties in key-value form.
sdParameters :: Lens' StorageDescriptor (HashMap Text Text)
sdParameters = lens _sdParameters (\s a -> s {_sdParameters = a}) . _Default . _Map

-- | @True@ if the table data is stored in subdirectories, or @False@ if not.
sdStoredAsSubDirectories :: Lens' StorageDescriptor (Maybe Bool)
sdStoredAsSubDirectories = lens _sdStoredAsSubDirectories (\s a -> s {_sdStoredAsSubDirectories = a})

instance FromJSON StorageDescriptor where
  parseJSON =
    withObject
      "StorageDescriptor"
      ( \x ->
          StorageDescriptor'
            <$> (x .:? "Compressed")
            <*> (x .:? "NumberOfBuckets")
            <*> (x .:? "SkewedInfo")
            <*> (x .:? "SchemaReference")
            <*> (x .:? "SortColumns" .!= mempty)
            <*> (x .:? "OutputFormat")
            <*> (x .:? "BucketColumns" .!= mempty)
            <*> (x .:? "SerdeInfo")
            <*> (x .:? "Location")
            <*> (x .:? "Columns" .!= mempty)
            <*> (x .:? "InputFormat")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .:? "StoredAsSubDirectories")
      )

instance Hashable StorageDescriptor

instance NFData StorageDescriptor

instance ToJSON StorageDescriptor where
  toJSON StorageDescriptor' {..} =
    object
      ( catMaybes
          [ ("Compressed" .=) <$> _sdCompressed,
            ("NumberOfBuckets" .=) <$> _sdNumberOfBuckets,
            ("SkewedInfo" .=) <$> _sdSkewedInfo,
            ("SchemaReference" .=) <$> _sdSchemaReference,
            ("SortColumns" .=) <$> _sdSortColumns,
            ("OutputFormat" .=) <$> _sdOutputFormat,
            ("BucketColumns" .=) <$> _sdBucketColumns,
            ("SerdeInfo" .=) <$> _sdSerdeInfo,
            ("Location" .=) <$> _sdLocation,
            ("Columns" .=) <$> _sdColumns,
            ("InputFormat" .=) <$> _sdInputFormat,
            ("Parameters" .=) <$> _sdParameters,
            ("StoredAsSubDirectories" .=)
              <$> _sdStoredAsSubDirectories
          ]
      )

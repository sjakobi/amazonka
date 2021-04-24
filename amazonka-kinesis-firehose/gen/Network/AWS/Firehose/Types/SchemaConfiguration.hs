{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.SchemaConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.SchemaConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the schema to which you want Kinesis Data Firehose to configure your data before it writes it to Amazon S3. This parameter is required if @Enabled@ is set to true.
--
--
--
-- /See:/ 'schemaConfiguration' smart constructor.
data SchemaConfiguration = SchemaConfiguration'
  { _scRoleARN ::
      !(Maybe Text),
    _scTableName :: !(Maybe Text),
    _scCatalogId :: !(Maybe Text),
    _scVersionId :: !(Maybe Text),
    _scRegion :: !(Maybe Text),
    _scDatabaseName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SchemaConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scRoleARN' - The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed.
--
-- * 'scTableName' - Specifies the AWS Glue table that contains the column information that constitutes your data schema.
--
-- * 'scCatalogId' - The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default.
--
-- * 'scVersionId' - Specifies the table version for the output data schema. If you don't specify this version ID, or if you set it to @LATEST@ , Kinesis Data Firehose uses the most recent version. This means that any updates to the table are automatically picked up.
--
-- * 'scRegion' - If you don't specify an AWS Region, the default is the current Region.
--
-- * 'scDatabaseName' - Specifies the name of the AWS Glue database that contains the schema for the output data.
schemaConfiguration ::
  SchemaConfiguration
schemaConfiguration =
  SchemaConfiguration'
    { _scRoleARN = Nothing,
      _scTableName = Nothing,
      _scCatalogId = Nothing,
      _scVersionId = Nothing,
      _scRegion = Nothing,
      _scDatabaseName = Nothing
    }

-- | The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed.
scRoleARN :: Lens' SchemaConfiguration (Maybe Text)
scRoleARN = lens _scRoleARN (\s a -> s {_scRoleARN = a})

-- | Specifies the AWS Glue table that contains the column information that constitutes your data schema.
scTableName :: Lens' SchemaConfiguration (Maybe Text)
scTableName = lens _scTableName (\s a -> s {_scTableName = a})

-- | The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default.
scCatalogId :: Lens' SchemaConfiguration (Maybe Text)
scCatalogId = lens _scCatalogId (\s a -> s {_scCatalogId = a})

-- | Specifies the table version for the output data schema. If you don't specify this version ID, or if you set it to @LATEST@ , Kinesis Data Firehose uses the most recent version. This means that any updates to the table are automatically picked up.
scVersionId :: Lens' SchemaConfiguration (Maybe Text)
scVersionId = lens _scVersionId (\s a -> s {_scVersionId = a})

-- | If you don't specify an AWS Region, the default is the current Region.
scRegion :: Lens' SchemaConfiguration (Maybe Text)
scRegion = lens _scRegion (\s a -> s {_scRegion = a})

-- | Specifies the name of the AWS Glue database that contains the schema for the output data.
scDatabaseName :: Lens' SchemaConfiguration (Maybe Text)
scDatabaseName = lens _scDatabaseName (\s a -> s {_scDatabaseName = a})

instance FromJSON SchemaConfiguration where
  parseJSON =
    withObject
      "SchemaConfiguration"
      ( \x ->
          SchemaConfiguration'
            <$> (x .:? "RoleARN")
            <*> (x .:? "TableName")
            <*> (x .:? "CatalogId")
            <*> (x .:? "VersionId")
            <*> (x .:? "Region")
            <*> (x .:? "DatabaseName")
      )

instance Hashable SchemaConfiguration

instance NFData SchemaConfiguration

instance ToJSON SchemaConfiguration where
  toJSON SchemaConfiguration' {..} =
    object
      ( catMaybes
          [ ("RoleARN" .=) <$> _scRoleARN,
            ("TableName" .=) <$> _scTableName,
            ("CatalogId" .=) <$> _scCatalogId,
            ("VersionId" .=) <$> _scVersionId,
            ("Region" .=) <$> _scRegion,
            ("DatabaseName" .=) <$> _scDatabaseName
          ]
      )

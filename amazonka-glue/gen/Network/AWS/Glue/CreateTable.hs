{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.CreateTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new table definition in the Data Catalog.
module Network.AWS.Glue.CreateTable
  ( -- * Creating a Request
    createTable,
    CreateTable,

    -- * Request Lenses
    cCatalogId,
    cPartitionIndexes,
    cDatabaseName,
    cTableInput,

    -- * Destructuring the Response
    createTableResponse,
    CreateTableResponse,

    -- * Response Lenses
    ctrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTable' smart constructor.
data CreateTable = CreateTable'
  { _cCatalogId ::
      !(Maybe Text),
    _cPartitionIndexes :: !(Maybe [PartitionIndex]),
    _cDatabaseName :: !Text,
    _cTableInput :: !TableInput
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCatalogId' - The ID of the Data Catalog in which to create the @Table@ . If none is supplied, the AWS account ID is used by default.
--
-- * 'cPartitionIndexes' - A list of partition indexes, @PartitionIndex@ structures, to create in the table.
--
-- * 'cDatabaseName' - The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.
--
-- * 'cTableInput' - The @TableInput@ object that defines the metadata table to create in the catalog.
createTable ::
  -- | 'cDatabaseName'
  Text ->
  -- | 'cTableInput'
  TableInput ->
  CreateTable
createTable pDatabaseName_ pTableInput_ =
  CreateTable'
    { _cCatalogId = Nothing,
      _cPartitionIndexes = Nothing,
      _cDatabaseName = pDatabaseName_,
      _cTableInput = pTableInput_
    }

-- | The ID of the Data Catalog in which to create the @Table@ . If none is supplied, the AWS account ID is used by default.
cCatalogId :: Lens' CreateTable (Maybe Text)
cCatalogId = lens _cCatalogId (\s a -> s {_cCatalogId = a})

-- | A list of partition indexes, @PartitionIndex@ structures, to create in the table.
cPartitionIndexes :: Lens' CreateTable [PartitionIndex]
cPartitionIndexes = lens _cPartitionIndexes (\s a -> s {_cPartitionIndexes = a}) . _Default . _Coerce

-- | The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.
cDatabaseName :: Lens' CreateTable Text
cDatabaseName = lens _cDatabaseName (\s a -> s {_cDatabaseName = a})

-- | The @TableInput@ object that defines the metadata table to create in the catalog.
cTableInput :: Lens' CreateTable TableInput
cTableInput = lens _cTableInput (\s a -> s {_cTableInput = a})

instance AWSRequest CreateTable where
  type Rs CreateTable = CreateTableResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          CreateTableResponse' <$> (pure (fromEnum s))
      )

instance Hashable CreateTable

instance NFData CreateTable

instance ToHeaders CreateTable where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateTable" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateTable where
  toJSON CreateTable' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _cCatalogId,
            ("PartitionIndexes" .=) <$> _cPartitionIndexes,
            Just ("DatabaseName" .= _cDatabaseName),
            Just ("TableInput" .= _cTableInput)
          ]
      )

instance ToPath CreateTable where
  toPath = const "/"

instance ToQuery CreateTable where
  toQuery = const mempty

-- | /See:/ 'createTableResponse' smart constructor.
newtype CreateTableResponse = CreateTableResponse'
  { _ctrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrrsResponseStatus' - -- | The response status code.
createTableResponse ::
  -- | 'ctrrsResponseStatus'
  Int ->
  CreateTableResponse
createTableResponse pResponseStatus_ =
  CreateTableResponse'
    { _ctrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ctrrsResponseStatus :: Lens' CreateTableResponse Int
ctrrsResponseStatus = lens _ctrrsResponseStatus (\s a -> s {_ctrrsResponseStatus = a})

instance NFData CreateTableResponse

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
-- Module      : Network.AWS.Glue.GetColumnStatisticsForPartition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves partition statistics of columns.
--
--
-- The Identity and Access Management (IAM) permission required for this operation is @GetPartition@ .
module Network.AWS.Glue.GetColumnStatisticsForPartition
  ( -- * Creating a Request
    getColumnStatisticsForPartition,
    GetColumnStatisticsForPartition,

    -- * Request Lenses
    gcsfpCatalogId,
    gcsfpDatabaseName,
    gcsfpTableName,
    gcsfpPartitionValues,
    gcsfpColumnNames,

    -- * Destructuring the Response
    getColumnStatisticsForPartitionResponse,
    GetColumnStatisticsForPartitionResponse,

    -- * Response Lenses
    gcsfprrsColumnStatisticsList,
    gcsfprrsErrors,
    gcsfprrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getColumnStatisticsForPartition' smart constructor.
data GetColumnStatisticsForPartition = GetColumnStatisticsForPartition'
  { _gcsfpCatalogId ::
      !( Maybe
           Text
       ),
    _gcsfpDatabaseName ::
      !Text,
    _gcsfpTableName ::
      !Text,
    _gcsfpPartitionValues ::
      ![Text],
    _gcsfpColumnNames ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetColumnStatisticsForPartition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsfpCatalogId' - The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.
--
-- * 'gcsfpDatabaseName' - The name of the catalog database where the partitions reside.
--
-- * 'gcsfpTableName' - The name of the partitions' table.
--
-- * 'gcsfpPartitionValues' - A list of partition values identifying the partition.
--
-- * 'gcsfpColumnNames' - A list of the column names.
getColumnStatisticsForPartition ::
  -- | 'gcsfpDatabaseName'
  Text ->
  -- | 'gcsfpTableName'
  Text ->
  GetColumnStatisticsForPartition
getColumnStatisticsForPartition
  pDatabaseName_
  pTableName_ =
    GetColumnStatisticsForPartition'
      { _gcsfpCatalogId =
          Nothing,
        _gcsfpDatabaseName = pDatabaseName_,
        _gcsfpTableName = pTableName_,
        _gcsfpPartitionValues = mempty,
        _gcsfpColumnNames = mempty
      }

-- | The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.
gcsfpCatalogId :: Lens' GetColumnStatisticsForPartition (Maybe Text)
gcsfpCatalogId = lens _gcsfpCatalogId (\s a -> s {_gcsfpCatalogId = a})

-- | The name of the catalog database where the partitions reside.
gcsfpDatabaseName :: Lens' GetColumnStatisticsForPartition Text
gcsfpDatabaseName = lens _gcsfpDatabaseName (\s a -> s {_gcsfpDatabaseName = a})

-- | The name of the partitions' table.
gcsfpTableName :: Lens' GetColumnStatisticsForPartition Text
gcsfpTableName = lens _gcsfpTableName (\s a -> s {_gcsfpTableName = a})

-- | A list of partition values identifying the partition.
gcsfpPartitionValues :: Lens' GetColumnStatisticsForPartition [Text]
gcsfpPartitionValues = lens _gcsfpPartitionValues (\s a -> s {_gcsfpPartitionValues = a}) . _Coerce

-- | A list of the column names.
gcsfpColumnNames :: Lens' GetColumnStatisticsForPartition [Text]
gcsfpColumnNames = lens _gcsfpColumnNames (\s a -> s {_gcsfpColumnNames = a}) . _Coerce

instance AWSRequest GetColumnStatisticsForPartition where
  type
    Rs GetColumnStatisticsForPartition =
      GetColumnStatisticsForPartitionResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetColumnStatisticsForPartitionResponse'
            <$> (x .?> "ColumnStatisticsList" .!@ mempty)
            <*> (x .?> "Errors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetColumnStatisticsForPartition

instance NFData GetColumnStatisticsForPartition

instance ToHeaders GetColumnStatisticsForPartition where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSGlue.GetColumnStatisticsForPartition" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetColumnStatisticsForPartition where
  toJSON GetColumnStatisticsForPartition' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _gcsfpCatalogId,
            Just ("DatabaseName" .= _gcsfpDatabaseName),
            Just ("TableName" .= _gcsfpTableName),
            Just ("PartitionValues" .= _gcsfpPartitionValues),
            Just ("ColumnNames" .= _gcsfpColumnNames)
          ]
      )

instance ToPath GetColumnStatisticsForPartition where
  toPath = const "/"

instance ToQuery GetColumnStatisticsForPartition where
  toQuery = const mempty

-- | /See:/ 'getColumnStatisticsForPartitionResponse' smart constructor.
data GetColumnStatisticsForPartitionResponse = GetColumnStatisticsForPartitionResponse'
  { _gcsfprrsColumnStatisticsList ::
      !( Maybe
           [ColumnStatistics]
       ),
    _gcsfprrsErrors ::
      !( Maybe
           [ColumnError]
       ),
    _gcsfprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetColumnStatisticsForPartitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsfprrsColumnStatisticsList' - List of ColumnStatistics that failed to be retrieved.
--
-- * 'gcsfprrsErrors' - Error occurred during retrieving column statistics data.
--
-- * 'gcsfprrsResponseStatus' - -- | The response status code.
getColumnStatisticsForPartitionResponse ::
  -- | 'gcsfprrsResponseStatus'
  Int ->
  GetColumnStatisticsForPartitionResponse
getColumnStatisticsForPartitionResponse
  pResponseStatus_ =
    GetColumnStatisticsForPartitionResponse'
      { _gcsfprrsColumnStatisticsList =
          Nothing,
        _gcsfprrsErrors = Nothing,
        _gcsfprrsResponseStatus =
          pResponseStatus_
      }

-- | List of ColumnStatistics that failed to be retrieved.
gcsfprrsColumnStatisticsList :: Lens' GetColumnStatisticsForPartitionResponse [ColumnStatistics]
gcsfprrsColumnStatisticsList = lens _gcsfprrsColumnStatisticsList (\s a -> s {_gcsfprrsColumnStatisticsList = a}) . _Default . _Coerce

-- | Error occurred during retrieving column statistics data.
gcsfprrsErrors :: Lens' GetColumnStatisticsForPartitionResponse [ColumnError]
gcsfprrsErrors = lens _gcsfprrsErrors (\s a -> s {_gcsfprrsErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
gcsfprrsResponseStatus :: Lens' GetColumnStatisticsForPartitionResponse Int
gcsfprrsResponseStatus = lens _gcsfprrsResponseStatus (\s a -> s {_gcsfprrsResponseStatus = a})

instance
  NFData
    GetColumnStatisticsForPartitionResponse

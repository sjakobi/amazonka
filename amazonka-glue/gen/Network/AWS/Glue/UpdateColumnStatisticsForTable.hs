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
-- Module      : Network.AWS.Glue.UpdateColumnStatisticsForTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates table statistics of columns.
--
--
-- The Identity and Access Management (IAM) permission required for this operation is @UpdateTable@ .
module Network.AWS.Glue.UpdateColumnStatisticsForTable
  ( -- * Creating a Request
    updateColumnStatisticsForTable,
    UpdateColumnStatisticsForTable,

    -- * Request Lenses
    ucsftCatalogId,
    ucsftDatabaseName,
    ucsftTableName,
    ucsftColumnStatisticsList,

    -- * Destructuring the Response
    updateColumnStatisticsForTableResponse,
    UpdateColumnStatisticsForTableResponse,

    -- * Response Lenses
    ucsftrrsErrors,
    ucsftrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateColumnStatisticsForTable' smart constructor.
data UpdateColumnStatisticsForTable = UpdateColumnStatisticsForTable'
  { _ucsftCatalogId ::
      !( Maybe
           Text
       ),
    _ucsftDatabaseName ::
      !Text,
    _ucsftTableName ::
      !Text,
    _ucsftColumnStatisticsList ::
      ![ColumnStatistics]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateColumnStatisticsForTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsftCatalogId' - The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.
--
-- * 'ucsftDatabaseName' - The name of the catalog database where the partitions reside.
--
-- * 'ucsftTableName' - The name of the partitions' table.
--
-- * 'ucsftColumnStatisticsList' - A list of the column statistics.
updateColumnStatisticsForTable ::
  -- | 'ucsftDatabaseName'
  Text ->
  -- | 'ucsftTableName'
  Text ->
  UpdateColumnStatisticsForTable
updateColumnStatisticsForTable
  pDatabaseName_
  pTableName_ =
    UpdateColumnStatisticsForTable'
      { _ucsftCatalogId =
          Nothing,
        _ucsftDatabaseName = pDatabaseName_,
        _ucsftTableName = pTableName_,
        _ucsftColumnStatisticsList = mempty
      }

-- | The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.
ucsftCatalogId :: Lens' UpdateColumnStatisticsForTable (Maybe Text)
ucsftCatalogId = lens _ucsftCatalogId (\s a -> s {_ucsftCatalogId = a})

-- | The name of the catalog database where the partitions reside.
ucsftDatabaseName :: Lens' UpdateColumnStatisticsForTable Text
ucsftDatabaseName = lens _ucsftDatabaseName (\s a -> s {_ucsftDatabaseName = a})

-- | The name of the partitions' table.
ucsftTableName :: Lens' UpdateColumnStatisticsForTable Text
ucsftTableName = lens _ucsftTableName (\s a -> s {_ucsftTableName = a})

-- | A list of the column statistics.
ucsftColumnStatisticsList :: Lens' UpdateColumnStatisticsForTable [ColumnStatistics]
ucsftColumnStatisticsList = lens _ucsftColumnStatisticsList (\s a -> s {_ucsftColumnStatisticsList = a}) . _Coerce

instance AWSRequest UpdateColumnStatisticsForTable where
  type
    Rs UpdateColumnStatisticsForTable =
      UpdateColumnStatisticsForTableResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          UpdateColumnStatisticsForTableResponse'
            <$> (x .?> "Errors" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable UpdateColumnStatisticsForTable

instance NFData UpdateColumnStatisticsForTable

instance ToHeaders UpdateColumnStatisticsForTable where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSGlue.UpdateColumnStatisticsForTable" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateColumnStatisticsForTable where
  toJSON UpdateColumnStatisticsForTable' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _ucsftCatalogId,
            Just ("DatabaseName" .= _ucsftDatabaseName),
            Just ("TableName" .= _ucsftTableName),
            Just
              ( "ColumnStatisticsList"
                  .= _ucsftColumnStatisticsList
              )
          ]
      )

instance ToPath UpdateColumnStatisticsForTable where
  toPath = const "/"

instance ToQuery UpdateColumnStatisticsForTable where
  toQuery = const mempty

-- | /See:/ 'updateColumnStatisticsForTableResponse' smart constructor.
data UpdateColumnStatisticsForTableResponse = UpdateColumnStatisticsForTableResponse'
  { _ucsftrrsErrors ::
      !( Maybe
           [ColumnStatisticsError]
       ),
    _ucsftrrsResponseStatus ::
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

-- | Creates a value of 'UpdateColumnStatisticsForTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsftrrsErrors' - List of ColumnStatisticsErrors.
--
-- * 'ucsftrrsResponseStatus' - -- | The response status code.
updateColumnStatisticsForTableResponse ::
  -- | 'ucsftrrsResponseStatus'
  Int ->
  UpdateColumnStatisticsForTableResponse
updateColumnStatisticsForTableResponse
  pResponseStatus_ =
    UpdateColumnStatisticsForTableResponse'
      { _ucsftrrsErrors =
          Nothing,
        _ucsftrrsResponseStatus =
          pResponseStatus_
      }

-- | List of ColumnStatisticsErrors.
ucsftrrsErrors :: Lens' UpdateColumnStatisticsForTableResponse [ColumnStatisticsError]
ucsftrrsErrors = lens _ucsftrrsErrors (\s a -> s {_ucsftrrsErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
ucsftrrsResponseStatus :: Lens' UpdateColumnStatisticsForTableResponse Int
ucsftrrsResponseStatus = lens _ucsftrrsResponseStatus (\s a -> s {_ucsftrrsResponseStatus = a})

instance
  NFData
    UpdateColumnStatisticsForTableResponse

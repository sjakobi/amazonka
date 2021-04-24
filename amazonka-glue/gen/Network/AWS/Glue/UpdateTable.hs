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
-- Module      : Network.AWS.Glue.UpdateTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a metadata table in the Data Catalog.
module Network.AWS.Glue.UpdateTable
  ( -- * Creating a Request
    updateTable,
    UpdateTable,

    -- * Request Lenses
    utCatalogId,
    utSkipArchive,
    utDatabaseName,
    utTableInput,

    -- * Destructuring the Response
    updateTableResponse,
    UpdateTableResponse,

    -- * Response Lenses
    updrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateTable' smart constructor.
data UpdateTable = UpdateTable'
  { _utCatalogId ::
      !(Maybe Text),
    _utSkipArchive :: !(Maybe Bool),
    _utDatabaseName :: !Text,
    _utTableInput :: !TableInput
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utCatalogId' - The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.
--
-- * 'utSkipArchive' - By default, @UpdateTable@ always creates an archived version of the table before updating it. However, if @skipArchive@ is set to true, @UpdateTable@ does not create the archived version.
--
-- * 'utDatabaseName' - The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.
--
-- * 'utTableInput' - An updated @TableInput@ object to define the metadata table in the catalog.
updateTable ::
  -- | 'utDatabaseName'
  Text ->
  -- | 'utTableInput'
  TableInput ->
  UpdateTable
updateTable pDatabaseName_ pTableInput_ =
  UpdateTable'
    { _utCatalogId = Nothing,
      _utSkipArchive = Nothing,
      _utDatabaseName = pDatabaseName_,
      _utTableInput = pTableInput_
    }

-- | The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.
utCatalogId :: Lens' UpdateTable (Maybe Text)
utCatalogId = lens _utCatalogId (\s a -> s {_utCatalogId = a})

-- | By default, @UpdateTable@ always creates an archived version of the table before updating it. However, if @skipArchive@ is set to true, @UpdateTable@ does not create the archived version.
utSkipArchive :: Lens' UpdateTable (Maybe Bool)
utSkipArchive = lens _utSkipArchive (\s a -> s {_utSkipArchive = a})

-- | The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.
utDatabaseName :: Lens' UpdateTable Text
utDatabaseName = lens _utDatabaseName (\s a -> s {_utDatabaseName = a})

-- | An updated @TableInput@ object to define the metadata table in the catalog.
utTableInput :: Lens' UpdateTable TableInput
utTableInput = lens _utTableInput (\s a -> s {_utTableInput = a})

instance AWSRequest UpdateTable where
  type Rs UpdateTable = UpdateTableResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          UpdateTableResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateTable

instance NFData UpdateTable

instance ToHeaders UpdateTable where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.UpdateTable" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTable where
  toJSON UpdateTable' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _utCatalogId,
            ("SkipArchive" .=) <$> _utSkipArchive,
            Just ("DatabaseName" .= _utDatabaseName),
            Just ("TableInput" .= _utTableInput)
          ]
      )

instance ToPath UpdateTable where
  toPath = const "/"

instance ToQuery UpdateTable where
  toQuery = const mempty

-- | /See:/ 'updateTableResponse' smart constructor.
newtype UpdateTableResponse = UpdateTableResponse'
  { _updrsResponseStatus ::
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

-- | Creates a value of 'UpdateTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updrsResponseStatus' - -- | The response status code.
updateTableResponse ::
  -- | 'updrsResponseStatus'
  Int ->
  UpdateTableResponse
updateTableResponse pResponseStatus_ =
  UpdateTableResponse'
    { _updrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
updrsResponseStatus :: Lens' UpdateTableResponse Int
updrsResponseStatus = lens _updrsResponseStatus (\s a -> s {_updrsResponseStatus = a})

instance NFData UpdateTableResponse

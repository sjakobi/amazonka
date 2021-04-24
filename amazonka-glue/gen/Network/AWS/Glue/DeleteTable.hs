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
-- Module      : Network.AWS.Glue.DeleteTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a table definition from the Data Catalog.
module Network.AWS.Glue.DeleteTable
  ( -- * Creating a Request
    deleteTable,
    DeleteTable,

    -- * Request Lenses
    dttCatalogId,
    dttDatabaseName,
    dttName,

    -- * Destructuring the Response
    deleteTableResponse,
    DeleteTableResponse,

    -- * Response Lenses
    drsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTable' smart constructor.
data DeleteTable = DeleteTable'
  { _dttCatalogId ::
      !(Maybe Text),
    _dttDatabaseName :: !Text,
    _dttName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttCatalogId' - The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.
--
-- * 'dttDatabaseName' - The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.
--
-- * 'dttName' - The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase.
deleteTable ::
  -- | 'dttDatabaseName'
  Text ->
  -- | 'dttName'
  Text ->
  DeleteTable
deleteTable pDatabaseName_ pName_ =
  DeleteTable'
    { _dttCatalogId = Nothing,
      _dttDatabaseName = pDatabaseName_,
      _dttName = pName_
    }

-- | The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.
dttCatalogId :: Lens' DeleteTable (Maybe Text)
dttCatalogId = lens _dttCatalogId (\s a -> s {_dttCatalogId = a})

-- | The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.
dttDatabaseName :: Lens' DeleteTable Text
dttDatabaseName = lens _dttDatabaseName (\s a -> s {_dttDatabaseName = a})

-- | The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase.
dttName :: Lens' DeleteTable Text
dttName = lens _dttName (\s a -> s {_dttName = a})

instance AWSRequest DeleteTable where
  type Rs DeleteTable = DeleteTableResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          DeleteTableResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteTable

instance NFData DeleteTable

instance ToHeaders DeleteTable where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteTable" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTable where
  toJSON DeleteTable' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _dttCatalogId,
            Just ("DatabaseName" .= _dttDatabaseName),
            Just ("Name" .= _dttName)
          ]
      )

instance ToPath DeleteTable where
  toPath = const "/"

instance ToQuery DeleteTable where
  toQuery = const mempty

-- | /See:/ 'deleteTableResponse' smart constructor.
newtype DeleteTableResponse = DeleteTableResponse'
  { _drsResponseStatus ::
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

-- | Creates a value of 'DeleteTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteTableResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteTableResponse
deleteTableResponse pResponseStatus_ =
  DeleteTableResponse'
    { _drsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteTableResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteTableResponse

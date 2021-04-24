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
-- Module      : Network.AWS.Glue.GetTableVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specified version of a table.
module Network.AWS.Glue.GetTableVersion
  ( -- * Creating a Request
    getTableVersion,
    GetTableVersion,

    -- * Request Lenses
    gtvtCatalogId,
    gtvtVersionId,
    gtvtDatabaseName,
    gtvtTableName,

    -- * Destructuring the Response
    getTableVersionResponse,
    GetTableVersionResponse,

    -- * Response Lenses
    gtvrrsTableVersion,
    gtvrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTableVersion' smart constructor.
data GetTableVersion = GetTableVersion'
  { _gtvtCatalogId ::
      !(Maybe Text),
    _gtvtVersionId :: !(Maybe Text),
    _gtvtDatabaseName :: !Text,
    _gtvtTableName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTableVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtvtCatalogId' - The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
--
-- * 'gtvtVersionId' - The ID value of the table version to be retrieved. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
--
-- * 'gtvtDatabaseName' - The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
--
-- * 'gtvtTableName' - The name of the table. For Hive compatibility, this name is entirely lowercase.
getTableVersion ::
  -- | 'gtvtDatabaseName'
  Text ->
  -- | 'gtvtTableName'
  Text ->
  GetTableVersion
getTableVersion pDatabaseName_ pTableName_ =
  GetTableVersion'
    { _gtvtCatalogId = Nothing,
      _gtvtVersionId = Nothing,
      _gtvtDatabaseName = pDatabaseName_,
      _gtvtTableName = pTableName_
    }

-- | The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
gtvtCatalogId :: Lens' GetTableVersion (Maybe Text)
gtvtCatalogId = lens _gtvtCatalogId (\s a -> s {_gtvtCatalogId = a})

-- | The ID value of the table version to be retrieved. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
gtvtVersionId :: Lens' GetTableVersion (Maybe Text)
gtvtVersionId = lens _gtvtVersionId (\s a -> s {_gtvtVersionId = a})

-- | The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
gtvtDatabaseName :: Lens' GetTableVersion Text
gtvtDatabaseName = lens _gtvtDatabaseName (\s a -> s {_gtvtDatabaseName = a})

-- | The name of the table. For Hive compatibility, this name is entirely lowercase.
gtvtTableName :: Lens' GetTableVersion Text
gtvtTableName = lens _gtvtTableName (\s a -> s {_gtvtTableName = a})

instance AWSRequest GetTableVersion where
  type Rs GetTableVersion = GetTableVersionResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetTableVersionResponse'
            <$> (x .?> "TableVersion") <*> (pure (fromEnum s))
      )

instance Hashable GetTableVersion

instance NFData GetTableVersion

instance ToHeaders GetTableVersion where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetTableVersion" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTableVersion where
  toJSON GetTableVersion' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _gtvtCatalogId,
            ("VersionId" .=) <$> _gtvtVersionId,
            Just ("DatabaseName" .= _gtvtDatabaseName),
            Just ("TableName" .= _gtvtTableName)
          ]
      )

instance ToPath GetTableVersion where
  toPath = const "/"

instance ToQuery GetTableVersion where
  toQuery = const mempty

-- | /See:/ 'getTableVersionResponse' smart constructor.
data GetTableVersionResponse = GetTableVersionResponse'
  { _gtvrrsTableVersion ::
      !(Maybe TableVersion),
    _gtvrrsResponseStatus ::
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

-- | Creates a value of 'GetTableVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtvrrsTableVersion' - The requested table version.
--
-- * 'gtvrrsResponseStatus' - -- | The response status code.
getTableVersionResponse ::
  -- | 'gtvrrsResponseStatus'
  Int ->
  GetTableVersionResponse
getTableVersionResponse pResponseStatus_ =
  GetTableVersionResponse'
    { _gtvrrsTableVersion =
        Nothing,
      _gtvrrsResponseStatus = pResponseStatus_
    }

-- | The requested table version.
gtvrrsTableVersion :: Lens' GetTableVersionResponse (Maybe TableVersion)
gtvrrsTableVersion = lens _gtvrrsTableVersion (\s a -> s {_gtvrrsTableVersion = a})

-- | -- | The response status code.
gtvrrsResponseStatus :: Lens' GetTableVersionResponse Int
gtvrrsResponseStatus = lens _gtvrrsResponseStatus (\s a -> s {_gtvrrsResponseStatus = a})

instance NFData GetTableVersionResponse

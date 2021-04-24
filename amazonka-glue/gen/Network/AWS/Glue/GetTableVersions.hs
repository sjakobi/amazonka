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
-- Module      : Network.AWS.Glue.GetTableVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of strings that identify available versions of a specified table.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetTableVersions
  ( -- * Creating a Request
    getTableVersions,
    GetTableVersions,

    -- * Request Lenses
    gtvNextToken,
    gtvCatalogId,
    gtvMaxResults,
    gtvDatabaseName,
    gtvTableName,

    -- * Destructuring the Response
    getTableVersionsResponse,
    GetTableVersionsResponse,

    -- * Response Lenses
    gtvrtrsNextToken,
    gtvrtrsTableVersions,
    gtvrtrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTableVersions' smart constructor.
data GetTableVersions = GetTableVersions'
  { _gtvNextToken ::
      !(Maybe Text),
    _gtvCatalogId :: !(Maybe Text),
    _gtvMaxResults :: !(Maybe Nat),
    _gtvDatabaseName :: !Text,
    _gtvTableName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTableVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtvNextToken' - A continuation token, if this is not the first call.
--
-- * 'gtvCatalogId' - The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
--
-- * 'gtvMaxResults' - The maximum number of table versions to return in one response.
--
-- * 'gtvDatabaseName' - The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
--
-- * 'gtvTableName' - The name of the table. For Hive compatibility, this name is entirely lowercase.
getTableVersions ::
  -- | 'gtvDatabaseName'
  Text ->
  -- | 'gtvTableName'
  Text ->
  GetTableVersions
getTableVersions pDatabaseName_ pTableName_ =
  GetTableVersions'
    { _gtvNextToken = Nothing,
      _gtvCatalogId = Nothing,
      _gtvMaxResults = Nothing,
      _gtvDatabaseName = pDatabaseName_,
      _gtvTableName = pTableName_
    }

-- | A continuation token, if this is not the first call.
gtvNextToken :: Lens' GetTableVersions (Maybe Text)
gtvNextToken = lens _gtvNextToken (\s a -> s {_gtvNextToken = a})

-- | The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
gtvCatalogId :: Lens' GetTableVersions (Maybe Text)
gtvCatalogId = lens _gtvCatalogId (\s a -> s {_gtvCatalogId = a})

-- | The maximum number of table versions to return in one response.
gtvMaxResults :: Lens' GetTableVersions (Maybe Natural)
gtvMaxResults = lens _gtvMaxResults (\s a -> s {_gtvMaxResults = a}) . mapping _Nat

-- | The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
gtvDatabaseName :: Lens' GetTableVersions Text
gtvDatabaseName = lens _gtvDatabaseName (\s a -> s {_gtvDatabaseName = a})

-- | The name of the table. For Hive compatibility, this name is entirely lowercase.
gtvTableName :: Lens' GetTableVersions Text
gtvTableName = lens _gtvTableName (\s a -> s {_gtvTableName = a})

instance AWSPager GetTableVersions where
  page rq rs
    | stop (rs ^. gtvrtrsNextToken) = Nothing
    | stop (rs ^. gtvrtrsTableVersions) = Nothing
    | otherwise =
      Just $ rq & gtvNextToken .~ rs ^. gtvrtrsNextToken

instance AWSRequest GetTableVersions where
  type Rs GetTableVersions = GetTableVersionsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetTableVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TableVersions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetTableVersions

instance NFData GetTableVersions

instance ToHeaders GetTableVersions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetTableVersions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTableVersions where
  toJSON GetTableVersions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gtvNextToken,
            ("CatalogId" .=) <$> _gtvCatalogId,
            ("MaxResults" .=) <$> _gtvMaxResults,
            Just ("DatabaseName" .= _gtvDatabaseName),
            Just ("TableName" .= _gtvTableName)
          ]
      )

instance ToPath GetTableVersions where
  toPath = const "/"

instance ToQuery GetTableVersions where
  toQuery = const mempty

-- | /See:/ 'getTableVersionsResponse' smart constructor.
data GetTableVersionsResponse = GetTableVersionsResponse'
  { _gtvrtrsNextToken ::
      !(Maybe Text),
    _gtvrtrsTableVersions ::
      !( Maybe
           [TableVersion]
       ),
    _gtvrtrsResponseStatus ::
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

-- | Creates a value of 'GetTableVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtvrtrsNextToken' - A continuation token, if the list of available versions does not include the last one.
--
-- * 'gtvrtrsTableVersions' - A list of strings identifying available versions of the specified table.
--
-- * 'gtvrtrsResponseStatus' - -- | The response status code.
getTableVersionsResponse ::
  -- | 'gtvrtrsResponseStatus'
  Int ->
  GetTableVersionsResponse
getTableVersionsResponse pResponseStatus_ =
  GetTableVersionsResponse'
    { _gtvrtrsNextToken =
        Nothing,
      _gtvrtrsTableVersions = Nothing,
      _gtvrtrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if the list of available versions does not include the last one.
gtvrtrsNextToken :: Lens' GetTableVersionsResponse (Maybe Text)
gtvrtrsNextToken = lens _gtvrtrsNextToken (\s a -> s {_gtvrtrsNextToken = a})

-- | A list of strings identifying available versions of the specified table.
gtvrtrsTableVersions :: Lens' GetTableVersionsResponse [TableVersion]
gtvrtrsTableVersions = lens _gtvrtrsTableVersions (\s a -> s {_gtvrtrsTableVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
gtvrtrsResponseStatus :: Lens' GetTableVersionsResponse Int
gtvrtrsResponseStatus = lens _gtvrtrsResponseStatus (\s a -> s {_gtvrtrsResponseStatus = a})

instance NFData GetTableVersionsResponse

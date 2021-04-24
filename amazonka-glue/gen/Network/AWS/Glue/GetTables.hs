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
-- Module      : Network.AWS.Glue.GetTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the definitions of some or all of the tables in a given @Database@ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetTables
  ( -- * Creating a Request
    getTables,
    GetTables,

    -- * Request Lenses
    gtsNextToken,
    gtsCatalogId,
    gtsMaxResults,
    gtsExpression,
    gtsDatabaseName,

    -- * Destructuring the Response
    getTablesResponse,
    GetTablesResponse,

    -- * Response Lenses
    gettablesresponseersNextToken,
    gettablesresponseersTableList,
    gettablesresponseersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTables' smart constructor.
data GetTables = GetTables'
  { _gtsNextToken ::
      !(Maybe Text),
    _gtsCatalogId :: !(Maybe Text),
    _gtsMaxResults :: !(Maybe Nat),
    _gtsExpression :: !(Maybe Text),
    _gtsDatabaseName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtsNextToken' - A continuation token, included if this is a continuation call.
--
-- * 'gtsCatalogId' - The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
--
-- * 'gtsMaxResults' - The maximum number of tables to return in a single response.
--
-- * 'gtsExpression' - A regular expression pattern. If present, only those tables whose names match the pattern are returned.
--
-- * 'gtsDatabaseName' - The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase.
getTables ::
  -- | 'gtsDatabaseName'
  Text ->
  GetTables
getTables pDatabaseName_ =
  GetTables'
    { _gtsNextToken = Nothing,
      _gtsCatalogId = Nothing,
      _gtsMaxResults = Nothing,
      _gtsExpression = Nothing,
      _gtsDatabaseName = pDatabaseName_
    }

-- | A continuation token, included if this is a continuation call.
gtsNextToken :: Lens' GetTables (Maybe Text)
gtsNextToken = lens _gtsNextToken (\s a -> s {_gtsNextToken = a})

-- | The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
gtsCatalogId :: Lens' GetTables (Maybe Text)
gtsCatalogId = lens _gtsCatalogId (\s a -> s {_gtsCatalogId = a})

-- | The maximum number of tables to return in a single response.
gtsMaxResults :: Lens' GetTables (Maybe Natural)
gtsMaxResults = lens _gtsMaxResults (\s a -> s {_gtsMaxResults = a}) . mapping _Nat

-- | A regular expression pattern. If present, only those tables whose names match the pattern are returned.
gtsExpression :: Lens' GetTables (Maybe Text)
gtsExpression = lens _gtsExpression (\s a -> s {_gtsExpression = a})

-- | The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase.
gtsDatabaseName :: Lens' GetTables Text
gtsDatabaseName = lens _gtsDatabaseName (\s a -> s {_gtsDatabaseName = a})

instance AWSPager GetTables where
  page rq rs
    | stop (rs ^. gettablesresponseersNextToken) =
      Nothing
    | stop (rs ^. gettablesresponseersTableList) =
      Nothing
    | otherwise =
      Just $
        rq
          & gtsNextToken .~ rs ^. gettablesresponseersNextToken

instance AWSRequest GetTables where
  type Rs GetTables = GetTablesResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetTablesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TableList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetTables

instance NFData GetTables

instance ToHeaders GetTables where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetTables" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTables where
  toJSON GetTables' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gtsNextToken,
            ("CatalogId" .=) <$> _gtsCatalogId,
            ("MaxResults" .=) <$> _gtsMaxResults,
            ("Expression" .=) <$> _gtsExpression,
            Just ("DatabaseName" .= _gtsDatabaseName)
          ]
      )

instance ToPath GetTables where
  toPath = const "/"

instance ToQuery GetTables where
  toQuery = const mempty

-- | /See:/ 'getTablesResponse' smart constructor.
data GetTablesResponse = GetTablesResponse'
  { _gettablesresponseersNextToken ::
      !(Maybe Text),
    _gettablesresponseersTableList ::
      !(Maybe [Table]),
    _gettablesresponseersResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gettablesresponseersNextToken' - A continuation token, present if the current list segment is not the last.
--
-- * 'gettablesresponseersTableList' - A list of the requested @Table@ objects.
--
-- * 'gettablesresponseersResponseStatus' - -- | The response status code.
getTablesResponse ::
  -- | 'gettablesresponseersResponseStatus'
  Int ->
  GetTablesResponse
getTablesResponse pResponseStatus_ =
  GetTablesResponse'
    { _gettablesresponseersNextToken =
        Nothing,
      _gettablesresponseersTableList = Nothing,
      _gettablesresponseersResponseStatus =
        pResponseStatus_
    }

-- | A continuation token, present if the current list segment is not the last.
gettablesresponseersNextToken :: Lens' GetTablesResponse (Maybe Text)
gettablesresponseersNextToken = lens _gettablesresponseersNextToken (\s a -> s {_gettablesresponseersNextToken = a})

-- | A list of the requested @Table@ objects.
gettablesresponseersTableList :: Lens' GetTablesResponse [Table]
gettablesresponseersTableList = lens _gettablesresponseersTableList (\s a -> s {_gettablesresponseersTableList = a}) . _Default . _Coerce

-- | -- | The response status code.
gettablesresponseersResponseStatus :: Lens' GetTablesResponse Int
gettablesresponseersResponseStatus = lens _gettablesresponseersResponseStatus (\s a -> s {_gettablesresponseersResponseStatus = a})

instance NFData GetTablesResponse

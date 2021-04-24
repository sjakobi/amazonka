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
-- Module      : Network.AWS.Glue.SearchTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions.
--
--
-- You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search.
module Network.AWS.Glue.SearchTables
  ( -- * Creating a Request
    searchTables,
    SearchTables,

    -- * Request Lenses
    stNextToken,
    stSortCriteria,
    stCatalogId,
    stMaxResults,
    stSearchText,
    stResourceShareType,
    stFilters,

    -- * Destructuring the Response
    searchTablesResponse,
    SearchTablesResponse,

    -- * Response Lenses
    searsNextToken,
    searsTableList,
    searsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchTables' smart constructor.
data SearchTables = SearchTables'
  { _stNextToken ::
      !(Maybe Text),
    _stSortCriteria :: !(Maybe [SortCriterion]),
    _stCatalogId :: !(Maybe Text),
    _stMaxResults :: !(Maybe Nat),
    _stSearchText :: !(Maybe Text),
    _stResourceShareType ::
      !(Maybe ResourceShareType),
    _stFilters :: !(Maybe [PropertyPredicate])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stNextToken' - A continuation token, included if this is a continuation call.
--
-- * 'stSortCriteria' - A list of criteria for sorting the results by a field name, in an ascending or descending order.
--
-- * 'stCatalogId' - A unique identifier, consisting of @/account_id/ @ .
--
-- * 'stMaxResults' - The maximum number of tables to return in a single response.
--
-- * 'stSearchText' - A string used for a text search. Specifying a value in quotes filters based on an exact match to the value.
--
-- * 'stResourceShareType' - Allows you to specify that you want to search the tables shared with your account. The allowable values are @FOREIGN@ or @ALL@ .      * If set to @FOREIGN@ , will search the tables shared with your account.      * If set to @ALL@ , will search the tables shared with your account, as well as the tables in yor local account.
--
-- * 'stFilters' - A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate. The @Comparator@ member of the @PropertyPredicate@ struct is used only for time fields, and can be omitted for other field types. Also, when comparing string values, such as when @Key=Name@ , a fuzzy match algorithm is used. The @Key@ field (for example, the value of the @Name@ field) is split on certain punctuation characters, for example, -, :, #, etc. into tokens. Then each token is exact-match compared with the @Value@ member of @PropertyPredicate@ . For example, if @Key=Name@ and @Value=link@ , tables named @customer-link@ and @xx-link-yy@ are returned, but @xxlinkyy@ is not returned.
searchTables ::
  SearchTables
searchTables =
  SearchTables'
    { _stNextToken = Nothing,
      _stSortCriteria = Nothing,
      _stCatalogId = Nothing,
      _stMaxResults = Nothing,
      _stSearchText = Nothing,
      _stResourceShareType = Nothing,
      _stFilters = Nothing
    }

-- | A continuation token, included if this is a continuation call.
stNextToken :: Lens' SearchTables (Maybe Text)
stNextToken = lens _stNextToken (\s a -> s {_stNextToken = a})

-- | A list of criteria for sorting the results by a field name, in an ascending or descending order.
stSortCriteria :: Lens' SearchTables [SortCriterion]
stSortCriteria = lens _stSortCriteria (\s a -> s {_stSortCriteria = a}) . _Default . _Coerce

-- | A unique identifier, consisting of @/account_id/ @ .
stCatalogId :: Lens' SearchTables (Maybe Text)
stCatalogId = lens _stCatalogId (\s a -> s {_stCatalogId = a})

-- | The maximum number of tables to return in a single response.
stMaxResults :: Lens' SearchTables (Maybe Natural)
stMaxResults = lens _stMaxResults (\s a -> s {_stMaxResults = a}) . mapping _Nat

-- | A string used for a text search. Specifying a value in quotes filters based on an exact match to the value.
stSearchText :: Lens' SearchTables (Maybe Text)
stSearchText = lens _stSearchText (\s a -> s {_stSearchText = a})

-- | Allows you to specify that you want to search the tables shared with your account. The allowable values are @FOREIGN@ or @ALL@ .      * If set to @FOREIGN@ , will search the tables shared with your account.      * If set to @ALL@ , will search the tables shared with your account, as well as the tables in yor local account.
stResourceShareType :: Lens' SearchTables (Maybe ResourceShareType)
stResourceShareType = lens _stResourceShareType (\s a -> s {_stResourceShareType = a})

-- | A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate. The @Comparator@ member of the @PropertyPredicate@ struct is used only for time fields, and can be omitted for other field types. Also, when comparing string values, such as when @Key=Name@ , a fuzzy match algorithm is used. The @Key@ field (for example, the value of the @Name@ field) is split on certain punctuation characters, for example, -, :, #, etc. into tokens. Then each token is exact-match compared with the @Value@ member of @PropertyPredicate@ . For example, if @Key=Name@ and @Value=link@ , tables named @customer-link@ and @xx-link-yy@ are returned, but @xxlinkyy@ is not returned.
stFilters :: Lens' SearchTables [PropertyPredicate]
stFilters = lens _stFilters (\s a -> s {_stFilters = a}) . _Default . _Coerce

instance AWSRequest SearchTables where
  type Rs SearchTables = SearchTablesResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          SearchTablesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TableList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchTables

instance NFData SearchTables

instance ToHeaders SearchTables where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.SearchTables" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchTables where
  toJSON SearchTables' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _stNextToken,
            ("SortCriteria" .=) <$> _stSortCriteria,
            ("CatalogId" .=) <$> _stCatalogId,
            ("MaxResults" .=) <$> _stMaxResults,
            ("SearchText" .=) <$> _stSearchText,
            ("ResourceShareType" .=) <$> _stResourceShareType,
            ("Filters" .=) <$> _stFilters
          ]
      )

instance ToPath SearchTables where
  toPath = const "/"

instance ToQuery SearchTables where
  toQuery = const mempty

-- | /See:/ 'searchTablesResponse' smart constructor.
data SearchTablesResponse = SearchTablesResponse'
  { _searsNextToken ::
      !(Maybe Text),
    _searsTableList ::
      !(Maybe [Table]),
    _searsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchTablesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'searsNextToken' - A continuation token, present if the current list segment is not the last.
--
-- * 'searsTableList' - A list of the requested @Table@ objects. The @SearchTables@ response returns only the tables that you have access to.
--
-- * 'searsResponseStatus' - -- | The response status code.
searchTablesResponse ::
  -- | 'searsResponseStatus'
  Int ->
  SearchTablesResponse
searchTablesResponse pResponseStatus_ =
  SearchTablesResponse'
    { _searsNextToken = Nothing,
      _searsTableList = Nothing,
      _searsResponseStatus = pResponseStatus_
    }

-- | A continuation token, present if the current list segment is not the last.
searsNextToken :: Lens' SearchTablesResponse (Maybe Text)
searsNextToken = lens _searsNextToken (\s a -> s {_searsNextToken = a})

-- | A list of the requested @Table@ objects. The @SearchTables@ response returns only the tables that you have access to.
searsTableList :: Lens' SearchTablesResponse [Table]
searsTableList = lens _searsTableList (\s a -> s {_searsTableList = a}) . _Default . _Coerce

-- | -- | The response status code.
searsResponseStatus :: Lens' SearchTablesResponse Int
searsResponseStatus = lens _searsResponseStatus (\s a -> s {_searsResponseStatus = a})

instance NFData SearchTablesResponse

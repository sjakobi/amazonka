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
-- Module      : Network.AWS.CloudDirectory.ListFacetNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the names of facets that exist in a schema.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListFacetNames
  ( -- * Creating a Request
    listFacetNames,
    ListFacetNames,

    -- * Request Lenses
    lfnNextToken,
    lfnMaxResults,
    lfnSchemaARN,

    -- * Destructuring the Response
    listFacetNamesResponse,
    ListFacetNamesResponse,

    -- * Response Lenses
    lfnrrsNextToken,
    lfnrrsFacetNames,
    lfnrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFacetNames' smart constructor.
data ListFacetNames = ListFacetNames'
  { _lfnNextToken ::
      !(Maybe Text),
    _lfnMaxResults :: !(Maybe Nat),
    _lfnSchemaARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFacetNames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfnNextToken' - The pagination token.
--
-- * 'lfnMaxResults' - The maximum number of results to retrieve.
--
-- * 'lfnSchemaARN' - The Amazon Resource Name (ARN) to retrieve facet names from.
listFacetNames ::
  -- | 'lfnSchemaARN'
  Text ->
  ListFacetNames
listFacetNames pSchemaARN_ =
  ListFacetNames'
    { _lfnNextToken = Nothing,
      _lfnMaxResults = Nothing,
      _lfnSchemaARN = pSchemaARN_
    }

-- | The pagination token.
lfnNextToken :: Lens' ListFacetNames (Maybe Text)
lfnNextToken = lens _lfnNextToken (\s a -> s {_lfnNextToken = a})

-- | The maximum number of results to retrieve.
lfnMaxResults :: Lens' ListFacetNames (Maybe Natural)
lfnMaxResults = lens _lfnMaxResults (\s a -> s {_lfnMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) to retrieve facet names from.
lfnSchemaARN :: Lens' ListFacetNames Text
lfnSchemaARN = lens _lfnSchemaARN (\s a -> s {_lfnSchemaARN = a})

instance AWSPager ListFacetNames where
  page rq rs
    | stop (rs ^. lfnrrsNextToken) = Nothing
    | stop (rs ^. lfnrrsFacetNames) = Nothing
    | otherwise =
      Just $ rq & lfnNextToken .~ rs ^. lfnrrsNextToken

instance AWSRequest ListFacetNames where
  type Rs ListFacetNames = ListFacetNamesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListFacetNamesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "FacetNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListFacetNames

instance NFData ListFacetNames

instance ToHeaders ListFacetNames where
  toHeaders ListFacetNames' {..} =
    mconcat ["x-amz-data-partition" =# _lfnSchemaARN]

instance ToJSON ListFacetNames where
  toJSON ListFacetNames' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lfnNextToken,
            ("MaxResults" .=) <$> _lfnMaxResults
          ]
      )

instance ToPath ListFacetNames where
  toPath =
    const "/amazonclouddirectory/2017-01-11/facet/list"

instance ToQuery ListFacetNames where
  toQuery = const mempty

-- | /See:/ 'listFacetNamesResponse' smart constructor.
data ListFacetNamesResponse = ListFacetNamesResponse'
  { _lfnrrsNextToken ::
      !(Maybe Text),
    _lfnrrsFacetNames ::
      !(Maybe [Text]),
    _lfnrrsResponseStatus ::
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

-- | Creates a value of 'ListFacetNamesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfnrrsNextToken' - The pagination token.
--
-- * 'lfnrrsFacetNames' - The names of facets that exist within the schema.
--
-- * 'lfnrrsResponseStatus' - -- | The response status code.
listFacetNamesResponse ::
  -- | 'lfnrrsResponseStatus'
  Int ->
  ListFacetNamesResponse
listFacetNamesResponse pResponseStatus_ =
  ListFacetNamesResponse'
    { _lfnrrsNextToken = Nothing,
      _lfnrrsFacetNames = Nothing,
      _lfnrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lfnrrsNextToken :: Lens' ListFacetNamesResponse (Maybe Text)
lfnrrsNextToken = lens _lfnrrsNextToken (\s a -> s {_lfnrrsNextToken = a})

-- | The names of facets that exist within the schema.
lfnrrsFacetNames :: Lens' ListFacetNamesResponse [Text]
lfnrrsFacetNames = lens _lfnrrsFacetNames (\s a -> s {_lfnrrsFacetNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lfnrrsResponseStatus :: Lens' ListFacetNamesResponse Int
lfnrrsResponseStatus = lens _lfnrrsResponseStatus (\s a -> s {_lfnrrsResponseStatus = a})

instance NFData ListFacetNamesResponse

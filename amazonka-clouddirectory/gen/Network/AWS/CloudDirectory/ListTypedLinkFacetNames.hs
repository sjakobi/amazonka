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
-- Module      : Network.AWS.CloudDirectory.ListTypedLinkFacetNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a paginated list of @TypedLink@ facet names for a particular schema. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListTypedLinkFacetNames
  ( -- * Creating a Request
    listTypedLinkFacetNames,
    ListTypedLinkFacetNames,

    -- * Request Lenses
    ltlfnNextToken,
    ltlfnMaxResults,
    ltlfnSchemaARN,

    -- * Destructuring the Response
    listTypedLinkFacetNamesResponse,
    ListTypedLinkFacetNamesResponse,

    -- * Response Lenses
    ltlfnrrsNextToken,
    ltlfnrrsFacetNames,
    ltlfnrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTypedLinkFacetNames' smart constructor.
data ListTypedLinkFacetNames = ListTypedLinkFacetNames'
  { _ltlfnNextToken ::
      !(Maybe Text),
    _ltlfnMaxResults ::
      !(Maybe Nat),
    _ltlfnSchemaARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTypedLinkFacetNames' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltlfnNextToken' - The pagination token.
--
-- * 'ltlfnMaxResults' - The maximum number of results to retrieve.
--
-- * 'ltlfnSchemaARN' - The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
listTypedLinkFacetNames ::
  -- | 'ltlfnSchemaARN'
  Text ->
  ListTypedLinkFacetNames
listTypedLinkFacetNames pSchemaARN_ =
  ListTypedLinkFacetNames'
    { _ltlfnNextToken = Nothing,
      _ltlfnMaxResults = Nothing,
      _ltlfnSchemaARN = pSchemaARN_
    }

-- | The pagination token.
ltlfnNextToken :: Lens' ListTypedLinkFacetNames (Maybe Text)
ltlfnNextToken = lens _ltlfnNextToken (\s a -> s {_ltlfnNextToken = a})

-- | The maximum number of results to retrieve.
ltlfnMaxResults :: Lens' ListTypedLinkFacetNames (Maybe Natural)
ltlfnMaxResults = lens _ltlfnMaxResults (\s a -> s {_ltlfnMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) that is associated with the schema. For more information, see 'arns' .
ltlfnSchemaARN :: Lens' ListTypedLinkFacetNames Text
ltlfnSchemaARN = lens _ltlfnSchemaARN (\s a -> s {_ltlfnSchemaARN = a})

instance AWSPager ListTypedLinkFacetNames where
  page rq rs
    | stop (rs ^. ltlfnrrsNextToken) = Nothing
    | stop (rs ^. ltlfnrrsFacetNames) = Nothing
    | otherwise =
      Just $ rq & ltlfnNextToken .~ rs ^. ltlfnrrsNextToken

instance AWSRequest ListTypedLinkFacetNames where
  type
    Rs ListTypedLinkFacetNames =
      ListTypedLinkFacetNamesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListTypedLinkFacetNamesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "FacetNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTypedLinkFacetNames

instance NFData ListTypedLinkFacetNames

instance ToHeaders ListTypedLinkFacetNames where
  toHeaders ListTypedLinkFacetNames' {..} =
    mconcat ["x-amz-data-partition" =# _ltlfnSchemaARN]

instance ToJSON ListTypedLinkFacetNames where
  toJSON ListTypedLinkFacetNames' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltlfnNextToken,
            ("MaxResults" .=) <$> _ltlfnMaxResults
          ]
      )

instance ToPath ListTypedLinkFacetNames where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/typedlink/facet/list"

instance ToQuery ListTypedLinkFacetNames where
  toQuery = const mempty

-- | /See:/ 'listTypedLinkFacetNamesResponse' smart constructor.
data ListTypedLinkFacetNamesResponse = ListTypedLinkFacetNamesResponse'
  { _ltlfnrrsNextToken ::
      !( Maybe
           Text
       ),
    _ltlfnrrsFacetNames ::
      !( Maybe
           [Text]
       ),
    _ltlfnrrsResponseStatus ::
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

-- | Creates a value of 'ListTypedLinkFacetNamesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltlfnrrsNextToken' - The pagination token.
--
-- * 'ltlfnrrsFacetNames' - The names of typed link facets that exist within the schema.
--
-- * 'ltlfnrrsResponseStatus' - -- | The response status code.
listTypedLinkFacetNamesResponse ::
  -- | 'ltlfnrrsResponseStatus'
  Int ->
  ListTypedLinkFacetNamesResponse
listTypedLinkFacetNamesResponse pResponseStatus_ =
  ListTypedLinkFacetNamesResponse'
    { _ltlfnrrsNextToken =
        Nothing,
      _ltlfnrrsFacetNames = Nothing,
      _ltlfnrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
ltlfnrrsNextToken :: Lens' ListTypedLinkFacetNamesResponse (Maybe Text)
ltlfnrrsNextToken = lens _ltlfnrrsNextToken (\s a -> s {_ltlfnrrsNextToken = a})

-- | The names of typed link facets that exist within the schema.
ltlfnrrsFacetNames :: Lens' ListTypedLinkFacetNamesResponse [Text]
ltlfnrrsFacetNames = lens _ltlfnrrsFacetNames (\s a -> s {_ltlfnrrsFacetNames = a}) . _Default . _Coerce

-- | -- | The response status code.
ltlfnrrsResponseStatus :: Lens' ListTypedLinkFacetNamesResponse Int
ltlfnrrsResponseStatus = lens _ltlfnrrsResponseStatus (\s a -> s {_ltlfnrrsResponseStatus = a})

instance NFData ListTypedLinkFacetNamesResponse

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
-- Module      : Network.AWS.CloudDirectory.ListFacetAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves attributes attached to the facet.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListFacetAttributes
  ( -- * Creating a Request
    listFacetAttributes,
    ListFacetAttributes,

    -- * Request Lenses
    lfaNextToken,
    lfaMaxResults,
    lfaSchemaARN,
    lfaName,

    -- * Destructuring the Response
    listFacetAttributesResponse,
    ListFacetAttributesResponse,

    -- * Response Lenses
    lfarrsNextToken,
    lfarrsAttributes,
    lfarrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listFacetAttributes' smart constructor.
data ListFacetAttributes = ListFacetAttributes'
  { _lfaNextToken ::
      !(Maybe Text),
    _lfaMaxResults :: !(Maybe Nat),
    _lfaSchemaARN :: !Text,
    _lfaName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListFacetAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfaNextToken' - The pagination token.
--
-- * 'lfaMaxResults' - The maximum number of results to retrieve.
--
-- * 'lfaSchemaARN' - The ARN of the schema where the facet resides.
--
-- * 'lfaName' - The name of the facet whose attributes will be retrieved.
listFacetAttributes ::
  -- | 'lfaSchemaARN'
  Text ->
  -- | 'lfaName'
  Text ->
  ListFacetAttributes
listFacetAttributes pSchemaARN_ pName_ =
  ListFacetAttributes'
    { _lfaNextToken = Nothing,
      _lfaMaxResults = Nothing,
      _lfaSchemaARN = pSchemaARN_,
      _lfaName = pName_
    }

-- | The pagination token.
lfaNextToken :: Lens' ListFacetAttributes (Maybe Text)
lfaNextToken = lens _lfaNextToken (\s a -> s {_lfaNextToken = a})

-- | The maximum number of results to retrieve.
lfaMaxResults :: Lens' ListFacetAttributes (Maybe Natural)
lfaMaxResults = lens _lfaMaxResults (\s a -> s {_lfaMaxResults = a}) . mapping _Nat

-- | The ARN of the schema where the facet resides.
lfaSchemaARN :: Lens' ListFacetAttributes Text
lfaSchemaARN = lens _lfaSchemaARN (\s a -> s {_lfaSchemaARN = a})

-- | The name of the facet whose attributes will be retrieved.
lfaName :: Lens' ListFacetAttributes Text
lfaName = lens _lfaName (\s a -> s {_lfaName = a})

instance AWSPager ListFacetAttributes where
  page rq rs
    | stop (rs ^. lfarrsNextToken) = Nothing
    | stop (rs ^. lfarrsAttributes) = Nothing
    | otherwise =
      Just $ rq & lfaNextToken .~ rs ^. lfarrsNextToken

instance AWSRequest ListFacetAttributes where
  type
    Rs ListFacetAttributes =
      ListFacetAttributesResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListFacetAttributesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Attributes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListFacetAttributes

instance NFData ListFacetAttributes

instance ToHeaders ListFacetAttributes where
  toHeaders ListFacetAttributes' {..} =
    mconcat ["x-amz-data-partition" =# _lfaSchemaARN]

instance ToJSON ListFacetAttributes where
  toJSON ListFacetAttributes' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lfaNextToken,
            ("MaxResults" .=) <$> _lfaMaxResults,
            Just ("Name" .= _lfaName)
          ]
      )

instance ToPath ListFacetAttributes where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/facet/attributes"

instance ToQuery ListFacetAttributes where
  toQuery = const mempty

-- | /See:/ 'listFacetAttributesResponse' smart constructor.
data ListFacetAttributesResponse = ListFacetAttributesResponse'
  { _lfarrsNextToken ::
      !(Maybe Text),
    _lfarrsAttributes ::
      !( Maybe
           [FacetAttribute]
       ),
    _lfarrsResponseStatus ::
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

-- | Creates a value of 'ListFacetAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfarrsNextToken' - The pagination token.
--
-- * 'lfarrsAttributes' - The attributes attached to the facet.
--
-- * 'lfarrsResponseStatus' - -- | The response status code.
listFacetAttributesResponse ::
  -- | 'lfarrsResponseStatus'
  Int ->
  ListFacetAttributesResponse
listFacetAttributesResponse pResponseStatus_ =
  ListFacetAttributesResponse'
    { _lfarrsNextToken =
        Nothing,
      _lfarrsAttributes = Nothing,
      _lfarrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lfarrsNextToken :: Lens' ListFacetAttributesResponse (Maybe Text)
lfarrsNextToken = lens _lfarrsNextToken (\s a -> s {_lfarrsNextToken = a})

-- | The attributes attached to the facet.
lfarrsAttributes :: Lens' ListFacetAttributesResponse [FacetAttribute]
lfarrsAttributes = lens _lfarrsAttributes (\s a -> s {_lfarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
lfarrsResponseStatus :: Lens' ListFacetAttributesResponse Int
lfarrsResponseStatus = lens _lfarrsResponseStatus (\s a -> s {_lfarrsResponseStatus = a})

instance NFData ListFacetAttributesResponse

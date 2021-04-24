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
-- Module      : Network.AWS.AppSync.ListTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the types for a given API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppSync.ListTypes
  ( -- * Creating a Request
    listTypes,
    ListTypes,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,
    ltApiId,
    ltFormat,

    -- * Destructuring the Response
    listTypesResponse,
    ListTypesResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTypes,
    ltrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTypes' smart constructor.
data ListTypes = ListTypes'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxResults :: !(Maybe Nat),
    _ltApiId :: !Text,
    _ltFormat :: !TypeDefinitionFormat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'ltMaxResults' - The maximum number of results you want the request to return.
--
-- * 'ltApiId' - The API ID.
--
-- * 'ltFormat' - The type format: SDL or JSON.
listTypes ::
  -- | 'ltApiId'
  Text ->
  -- | 'ltFormat'
  TypeDefinitionFormat ->
  ListTypes
listTypes pApiId_ pFormat_ =
  ListTypes'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltApiId = pApiId_,
      _ltFormat = pFormat_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
ltNextToken :: Lens' ListTypes (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of results you want the request to return.
ltMaxResults :: Lens' ListTypes (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The API ID.
ltApiId :: Lens' ListTypes Text
ltApiId = lens _ltApiId (\s a -> s {_ltApiId = a})

-- | The type format: SDL or JSON.
ltFormat :: Lens' ListTypes TypeDefinitionFormat
ltFormat = lens _ltFormat (\s a -> s {_ltFormat = a})

instance AWSPager ListTypes where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTypes) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTypes where
  type Rs ListTypes = ListTypesResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          ListTypesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "types" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTypes

instance NFData ListTypes

instance ToHeaders ListTypes where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListTypes where
  toPath ListTypes' {..} =
    mconcat ["/v1/apis/", toBS _ltApiId, "/types"]

instance ToQuery ListTypes where
  toQuery ListTypes' {..} =
    mconcat
      [ "nextToken" =: _ltNextToken,
        "maxResults" =: _ltMaxResults,
        "format" =: _ltFormat
      ]

-- | /See:/ 'listTypesResponse' smart constructor.
data ListTypesResponse = ListTypesResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTypes :: !(Maybe [Type]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - An identifier to be passed in the next request to this operation to return the next set of items in the list.
--
-- * 'ltrrsTypes' - The @Type@ objects.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTypesResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTypesResponse
listTypesResponse pResponseStatus_ =
  ListTypesResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTypes = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | An identifier to be passed in the next request to this operation to return the next set of items in the list.
ltrrsNextToken :: Lens' ListTypesResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | The @Type@ objects.
ltrrsTypes :: Lens' ListTypesResponse [Type]
ltrrsTypes = lens _ltrrsTypes (\s a -> s {_ltrrsTypes = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTypesResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTypesResponse

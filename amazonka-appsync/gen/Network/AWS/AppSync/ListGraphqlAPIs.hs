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
-- Module      : Network.AWS.AppSync.ListGraphqlAPIs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your GraphQL APIs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppSync.ListGraphqlAPIs
  ( -- * Creating a Request
    listGraphqlAPIs,
    ListGraphqlAPIs,

    -- * Request Lenses
    lgaNextToken,
    lgaMaxResults,

    -- * Destructuring the Response
    listGraphqlAPIsResponse,
    ListGraphqlAPIsResponse,

    -- * Response Lenses
    lgarrsNextToken,
    lgarrsGraphqlAPIs,
    lgarrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGraphqlAPIs' smart constructor.
data ListGraphqlAPIs = ListGraphqlAPIs'
  { _lgaNextToken ::
      !(Maybe Text),
    _lgaMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGraphqlAPIs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgaNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lgaMaxResults' - The maximum number of results you want the request to return.
listGraphqlAPIs ::
  ListGraphqlAPIs
listGraphqlAPIs =
  ListGraphqlAPIs'
    { _lgaNextToken = Nothing,
      _lgaMaxResults = Nothing
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lgaNextToken :: Lens' ListGraphqlAPIs (Maybe Text)
lgaNextToken = lens _lgaNextToken (\s a -> s {_lgaNextToken = a})

-- | The maximum number of results you want the request to return.
lgaMaxResults :: Lens' ListGraphqlAPIs (Maybe Natural)
lgaMaxResults = lens _lgaMaxResults (\s a -> s {_lgaMaxResults = a}) . mapping _Nat

instance AWSPager ListGraphqlAPIs where
  page rq rs
    | stop (rs ^. lgarrsNextToken) = Nothing
    | stop (rs ^. lgarrsGraphqlAPIs) = Nothing
    | otherwise =
      Just $ rq & lgaNextToken .~ rs ^. lgarrsNextToken

instance AWSRequest ListGraphqlAPIs where
  type Rs ListGraphqlAPIs = ListGraphqlAPIsResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          ListGraphqlAPIsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "graphqlApis" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListGraphqlAPIs

instance NFData ListGraphqlAPIs

instance ToHeaders ListGraphqlAPIs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListGraphqlAPIs where
  toPath = const "/v1/apis"

instance ToQuery ListGraphqlAPIs where
  toQuery ListGraphqlAPIs' {..} =
    mconcat
      [ "nextToken" =: _lgaNextToken,
        "maxResults" =: _lgaMaxResults
      ]

-- | /See:/ 'listGraphqlAPIsResponse' smart constructor.
data ListGraphqlAPIsResponse = ListGraphqlAPIsResponse'
  { _lgarrsNextToken ::
      !(Maybe Text),
    _lgarrsGraphqlAPIs ::
      !(Maybe [GraphqlAPI]),
    _lgarrsResponseStatus ::
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

-- | Creates a value of 'ListGraphqlAPIsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgarrsNextToken' - An identifier to be passed in the next request to this operation to return the next set of items in the list.
--
-- * 'lgarrsGraphqlAPIs' - The @GraphqlApi@ objects.
--
-- * 'lgarrsResponseStatus' - -- | The response status code.
listGraphqlAPIsResponse ::
  -- | 'lgarrsResponseStatus'
  Int ->
  ListGraphqlAPIsResponse
listGraphqlAPIsResponse pResponseStatus_ =
  ListGraphqlAPIsResponse'
    { _lgarrsNextToken =
        Nothing,
      _lgarrsGraphqlAPIs = Nothing,
      _lgarrsResponseStatus = pResponseStatus_
    }

-- | An identifier to be passed in the next request to this operation to return the next set of items in the list.
lgarrsNextToken :: Lens' ListGraphqlAPIsResponse (Maybe Text)
lgarrsNextToken = lens _lgarrsNextToken (\s a -> s {_lgarrsNextToken = a})

-- | The @GraphqlApi@ objects.
lgarrsGraphqlAPIs :: Lens' ListGraphqlAPIsResponse [GraphqlAPI]
lgarrsGraphqlAPIs = lens _lgarrsGraphqlAPIs (\s a -> s {_lgarrsGraphqlAPIs = a}) . _Default . _Coerce

-- | -- | The response status code.
lgarrsResponseStatus :: Lens' ListGraphqlAPIsResponse Int
lgarrsResponseStatus = lens _lgarrsResponseStatus (\s a -> s {_lgarrsResponseStatus = a})

instance NFData ListGraphqlAPIsResponse

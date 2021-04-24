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
-- Module      : Network.AWS.Config.ListStoredQueries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the stored queries for a single AWS account and a single AWS Region. The default is 100.
module Network.AWS.Config.ListStoredQueries
  ( -- * Creating a Request
    listStoredQueries,
    ListStoredQueries,

    -- * Request Lenses
    lsqNextToken,
    lsqMaxResults,

    -- * Destructuring the Response
    listStoredQueriesResponse,
    ListStoredQueriesResponse,

    -- * Response Lenses
    lsqrrsNextToken,
    lsqrrsStoredQueryMetadata,
    lsqrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStoredQueries' smart constructor.
data ListStoredQueries = ListStoredQueries'
  { _lsqNextToken ::
      !(Maybe Text),
    _lsqMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStoredQueries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsqNextToken' - The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'lsqMaxResults' - The maximum number of results to be returned with a single call.
listStoredQueries ::
  ListStoredQueries
listStoredQueries =
  ListStoredQueries'
    { _lsqNextToken = Nothing,
      _lsqMaxResults = Nothing
    }

-- | The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.
lsqNextToken :: Lens' ListStoredQueries (Maybe Text)
lsqNextToken = lens _lsqNextToken (\s a -> s {_lsqNextToken = a})

-- | The maximum number of results to be returned with a single call.
lsqMaxResults :: Lens' ListStoredQueries (Maybe Natural)
lsqMaxResults = lens _lsqMaxResults (\s a -> s {_lsqMaxResults = a}) . mapping _Nat

instance AWSRequest ListStoredQueries where
  type Rs ListStoredQueries = ListStoredQueriesResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          ListStoredQueriesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "StoredQueryMetadata" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListStoredQueries

instance NFData ListStoredQueries

instance ToHeaders ListStoredQueries where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.ListStoredQueries" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListStoredQueries where
  toJSON ListStoredQueries' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lsqNextToken,
            ("MaxResults" .=) <$> _lsqMaxResults
          ]
      )

instance ToPath ListStoredQueries where
  toPath = const "/"

instance ToQuery ListStoredQueries where
  toQuery = const mempty

-- | /See:/ 'listStoredQueriesResponse' smart constructor.
data ListStoredQueriesResponse = ListStoredQueriesResponse'
  { _lsqrrsNextToken ::
      !(Maybe Text),
    _lsqrrsStoredQueryMetadata ::
      !( Maybe
           [StoredQueryMetadata]
       ),
    _lsqrrsResponseStatus ::
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

-- | Creates a value of 'ListStoredQueriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsqrrsNextToken' - If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- * 'lsqrrsStoredQueryMetadata' - A list of @StoredQueryMetadata@ objects.
--
-- * 'lsqrrsResponseStatus' - -- | The response status code.
listStoredQueriesResponse ::
  -- | 'lsqrrsResponseStatus'
  Int ->
  ListStoredQueriesResponse
listStoredQueriesResponse pResponseStatus_ =
  ListStoredQueriesResponse'
    { _lsqrrsNextToken =
        Nothing,
      _lsqrrsStoredQueryMetadata = Nothing,
      _lsqrrsResponseStatus = pResponseStatus_
    }

-- | If the previous paginated request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
lsqrrsNextToken :: Lens' ListStoredQueriesResponse (Maybe Text)
lsqrrsNextToken = lens _lsqrrsNextToken (\s a -> s {_lsqrrsNextToken = a})

-- | A list of @StoredQueryMetadata@ objects.
lsqrrsStoredQueryMetadata :: Lens' ListStoredQueriesResponse [StoredQueryMetadata]
lsqrrsStoredQueryMetadata = lens _lsqrrsStoredQueryMetadata (\s a -> s {_lsqrrsStoredQueryMetadata = a}) . _Default . _Coerce

-- | -- | The response status code.
lsqrrsResponseStatus :: Lens' ListStoredQueriesResponse Int
lsqrrsResponseStatus = lens _lsqrrsResponseStatus (\s a -> s {_lsqrrsResponseStatus = a})

instance NFData ListStoredQueriesResponse

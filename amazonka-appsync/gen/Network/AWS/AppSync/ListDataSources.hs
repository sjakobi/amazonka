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
-- Module      : Network.AWS.AppSync.ListDataSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the data sources for a given API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppSync.ListDataSources
  ( -- * Creating a Request
    listDataSources,
    ListDataSources,

    -- * Request Lenses
    ldsNextToken,
    ldsMaxResults,
    ldsApiId,

    -- * Destructuring the Response
    listDataSourcesResponse,
    ListDataSourcesResponse,

    -- * Response Lenses
    ldsrrsNextToken,
    ldsrrsDataSources,
    ldsrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDataSources' smart constructor.
data ListDataSources = ListDataSources'
  { _ldsNextToken ::
      !(Maybe Text),
    _ldsMaxResults :: !(Maybe Nat),
    _ldsApiId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDataSources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'ldsMaxResults' - The maximum number of results you want the request to return.
--
-- * 'ldsApiId' - The API ID.
listDataSources ::
  -- | 'ldsApiId'
  Text ->
  ListDataSources
listDataSources pApiId_ =
  ListDataSources'
    { _ldsNextToken = Nothing,
      _ldsMaxResults = Nothing,
      _ldsApiId = pApiId_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
ldsNextToken :: Lens' ListDataSources (Maybe Text)
ldsNextToken = lens _ldsNextToken (\s a -> s {_ldsNextToken = a})

-- | The maximum number of results you want the request to return.
ldsMaxResults :: Lens' ListDataSources (Maybe Natural)
ldsMaxResults = lens _ldsMaxResults (\s a -> s {_ldsMaxResults = a}) . mapping _Nat

-- | The API ID.
ldsApiId :: Lens' ListDataSources Text
ldsApiId = lens _ldsApiId (\s a -> s {_ldsApiId = a})

instance AWSPager ListDataSources where
  page rq rs
    | stop (rs ^. ldsrrsNextToken) = Nothing
    | stop (rs ^. ldsrrsDataSources) = Nothing
    | otherwise =
      Just $ rq & ldsNextToken .~ rs ^. ldsrrsNextToken

instance AWSRequest ListDataSources where
  type Rs ListDataSources = ListDataSourcesResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          ListDataSourcesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "dataSources" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDataSources

instance NFData ListDataSources

instance ToHeaders ListDataSources where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListDataSources where
  toPath ListDataSources' {..} =
    mconcat
      ["/v1/apis/", toBS _ldsApiId, "/datasources"]

instance ToQuery ListDataSources where
  toQuery ListDataSources' {..} =
    mconcat
      [ "nextToken" =: _ldsNextToken,
        "maxResults" =: _ldsMaxResults
      ]

-- | /See:/ 'listDataSourcesResponse' smart constructor.
data ListDataSourcesResponse = ListDataSourcesResponse'
  { _ldsrrsNextToken ::
      !(Maybe Text),
    _ldsrrsDataSources ::
      !(Maybe [DataSource]),
    _ldsrrsResponseStatus ::
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

-- | Creates a value of 'ListDataSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrrsNextToken' - An identifier to be passed in the next request to this operation to return the next set of items in the list.
--
-- * 'ldsrrsDataSources' - The @DataSource@ objects.
--
-- * 'ldsrrsResponseStatus' - -- | The response status code.
listDataSourcesResponse ::
  -- | 'ldsrrsResponseStatus'
  Int ->
  ListDataSourcesResponse
listDataSourcesResponse pResponseStatus_ =
  ListDataSourcesResponse'
    { _ldsrrsNextToken =
        Nothing,
      _ldsrrsDataSources = Nothing,
      _ldsrrsResponseStatus = pResponseStatus_
    }

-- | An identifier to be passed in the next request to this operation to return the next set of items in the list.
ldsrrsNextToken :: Lens' ListDataSourcesResponse (Maybe Text)
ldsrrsNextToken = lens _ldsrrsNextToken (\s a -> s {_ldsrrsNextToken = a})

-- | The @DataSource@ objects.
ldsrrsDataSources :: Lens' ListDataSourcesResponse [DataSource]
ldsrrsDataSources = lens _ldsrrsDataSources (\s a -> s {_ldsrrsDataSources = a}) . _Default . _Coerce

-- | -- | The response status code.
ldsrrsResponseStatus :: Lens' ListDataSourcesResponse Int
ldsrrsResponseStatus = lens _ldsrrsResponseStatus (\s a -> s {_ldsrrsResponseStatus = a})

instance NFData ListDataSourcesResponse

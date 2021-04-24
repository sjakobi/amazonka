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
-- Module      : Network.AWS.AppSync.ListAPIKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the API keys for a given API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppSync.ListAPIKeys
  ( -- * Creating a Request
    listAPIKeys,
    ListAPIKeys,

    -- * Request Lenses
    lakNextToken,
    lakMaxResults,
    lakApiId,

    -- * Destructuring the Response
    listAPIKeysResponse,
    ListAPIKeysResponse,

    -- * Response Lenses
    lakrrsNextToken,
    lakrrsApiKeys,
    lakrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAPIKeys' smart constructor.
data ListAPIKeys = ListAPIKeys'
  { _lakNextToken ::
      !(Maybe Text),
    _lakMaxResults :: !(Maybe Nat),
    _lakApiId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAPIKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lakNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lakMaxResults' - The maximum number of results you want the request to return.
--
-- * 'lakApiId' - The API ID.
listAPIKeys ::
  -- | 'lakApiId'
  Text ->
  ListAPIKeys
listAPIKeys pApiId_ =
  ListAPIKeys'
    { _lakNextToken = Nothing,
      _lakMaxResults = Nothing,
      _lakApiId = pApiId_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lakNextToken :: Lens' ListAPIKeys (Maybe Text)
lakNextToken = lens _lakNextToken (\s a -> s {_lakNextToken = a})

-- | The maximum number of results you want the request to return.
lakMaxResults :: Lens' ListAPIKeys (Maybe Natural)
lakMaxResults = lens _lakMaxResults (\s a -> s {_lakMaxResults = a}) . mapping _Nat

-- | The API ID.
lakApiId :: Lens' ListAPIKeys Text
lakApiId = lens _lakApiId (\s a -> s {_lakApiId = a})

instance AWSPager ListAPIKeys where
  page rq rs
    | stop (rs ^. lakrrsNextToken) = Nothing
    | stop (rs ^. lakrrsApiKeys) = Nothing
    | otherwise =
      Just $ rq & lakNextToken .~ rs ^. lakrrsNextToken

instance AWSRequest ListAPIKeys where
  type Rs ListAPIKeys = ListAPIKeysResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          ListAPIKeysResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "apiKeys" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAPIKeys

instance NFData ListAPIKeys

instance ToHeaders ListAPIKeys where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListAPIKeys where
  toPath ListAPIKeys' {..} =
    mconcat ["/v1/apis/", toBS _lakApiId, "/apikeys"]

instance ToQuery ListAPIKeys where
  toQuery ListAPIKeys' {..} =
    mconcat
      [ "nextToken" =: _lakNextToken,
        "maxResults" =: _lakMaxResults
      ]

-- | /See:/ 'listAPIKeysResponse' smart constructor.
data ListAPIKeysResponse = ListAPIKeysResponse'
  { _lakrrsNextToken ::
      !(Maybe Text),
    _lakrrsApiKeys ::
      !(Maybe [APIKey]),
    _lakrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAPIKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lakrrsNextToken' - An identifier to be passed in the next request to this operation to return the next set of items in the list.
--
-- * 'lakrrsApiKeys' - The @ApiKey@ objects.
--
-- * 'lakrrsResponseStatus' - -- | The response status code.
listAPIKeysResponse ::
  -- | 'lakrrsResponseStatus'
  Int ->
  ListAPIKeysResponse
listAPIKeysResponse pResponseStatus_ =
  ListAPIKeysResponse'
    { _lakrrsNextToken = Nothing,
      _lakrrsApiKeys = Nothing,
      _lakrrsResponseStatus = pResponseStatus_
    }

-- | An identifier to be passed in the next request to this operation to return the next set of items in the list.
lakrrsNextToken :: Lens' ListAPIKeysResponse (Maybe Text)
lakrrsNextToken = lens _lakrrsNextToken (\s a -> s {_lakrrsNextToken = a})

-- | The @ApiKey@ objects.
lakrrsApiKeys :: Lens' ListAPIKeysResponse [APIKey]
lakrrsApiKeys = lens _lakrrsApiKeys (\s a -> s {_lakrrsApiKeys = a}) . _Default . _Coerce

-- | -- | The response status code.
lakrrsResponseStatus :: Lens' ListAPIKeysResponse Int
lakrrsResponseStatus = lens _lakrrsResponseStatus (\s a -> s {_lakrrsResponseStatus = a})

instance NFData ListAPIKeysResponse

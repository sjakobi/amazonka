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
-- Module      : Network.AWS.APIGateway.GetAPIKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the current 'ApiKeys' resource.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetAPIKeys
  ( -- * Creating a Request
    getAPIKeys,
    GetAPIKeys,

    -- * Request Lenses
    gakCustomerId,
    gakIncludeValues,
    gakPosition,
    gakLimit,
    gakNameQuery,

    -- * Destructuring the Response
    getAPIKeysResponse,
    GetAPIKeysResponse,

    -- * Response Lenses
    gakrrsWarnings,
    gakrrsItems,
    gakrrsPosition,
    gakrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to get information about the current 'ApiKeys' resource.
--
--
--
-- /See:/ 'getAPIKeys' smart constructor.
data GetAPIKeys = GetAPIKeys'
  { _gakCustomerId ::
      !(Maybe Text),
    _gakIncludeValues :: !(Maybe Bool),
    _gakPosition :: !(Maybe Text),
    _gakLimit :: !(Maybe Int),
    _gakNameQuery :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAPIKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gakCustomerId' - The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.
--
-- * 'gakIncludeValues' - A boolean flag to specify whether (@true@ ) or not (@false@ ) the result contains key values.
--
-- * 'gakPosition' - The current pagination position in the paged result set.
--
-- * 'gakLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gakNameQuery' - The name of queried API keys.
getAPIKeys ::
  GetAPIKeys
getAPIKeys =
  GetAPIKeys'
    { _gakCustomerId = Nothing,
      _gakIncludeValues = Nothing,
      _gakPosition = Nothing,
      _gakLimit = Nothing,
      _gakNameQuery = Nothing
    }

-- | The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.
gakCustomerId :: Lens' GetAPIKeys (Maybe Text)
gakCustomerId = lens _gakCustomerId (\s a -> s {_gakCustomerId = a})

-- | A boolean flag to specify whether (@true@ ) or not (@false@ ) the result contains key values.
gakIncludeValues :: Lens' GetAPIKeys (Maybe Bool)
gakIncludeValues = lens _gakIncludeValues (\s a -> s {_gakIncludeValues = a})

-- | The current pagination position in the paged result set.
gakPosition :: Lens' GetAPIKeys (Maybe Text)
gakPosition = lens _gakPosition (\s a -> s {_gakPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gakLimit :: Lens' GetAPIKeys (Maybe Int)
gakLimit = lens _gakLimit (\s a -> s {_gakLimit = a})

-- | The name of queried API keys.
gakNameQuery :: Lens' GetAPIKeys (Maybe Text)
gakNameQuery = lens _gakNameQuery (\s a -> s {_gakNameQuery = a})

instance AWSPager GetAPIKeys where
  page rq rs
    | stop (rs ^. gakrrsPosition) = Nothing
    | stop (rs ^. gakrrsItems) = Nothing
    | otherwise =
      Just $ rq & gakPosition .~ rs ^. gakrrsPosition

instance AWSRequest GetAPIKeys where
  type Rs GetAPIKeys = GetAPIKeysResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetAPIKeysResponse'
            <$> (x .?> "warnings" .!@ mempty)
            <*> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAPIKeys

instance NFData GetAPIKeys

instance ToHeaders GetAPIKeys where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetAPIKeys where
  toPath = const "/apikeys"

instance ToQuery GetAPIKeys where
  toQuery GetAPIKeys' {..} =
    mconcat
      [ "customerId" =: _gakCustomerId,
        "includeValues" =: _gakIncludeValues,
        "position" =: _gakPosition,
        "limit" =: _gakLimit,
        "name" =: _gakNameQuery
      ]

-- | Represents a collection of API keys as represented by an 'ApiKeys' resource.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-api-keys.html Use API Keys>
--
-- /See:/ 'getAPIKeysResponse' smart constructor.
data GetAPIKeysResponse = GetAPIKeysResponse'
  { _gakrrsWarnings ::
      !(Maybe [Text]),
    _gakrrsItems :: !(Maybe [APIKey]),
    _gakrrsPosition :: !(Maybe Text),
    _gakrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAPIKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gakrrsWarnings' - A list of warning messages logged during the import of API keys when the @failOnWarnings@ option is set to true.
--
-- * 'gakrrsItems' - The current page of elements from this collection.
--
-- * 'gakrrsPosition' - Undocumented member.
--
-- * 'gakrrsResponseStatus' - -- | The response status code.
getAPIKeysResponse ::
  -- | 'gakrrsResponseStatus'
  Int ->
  GetAPIKeysResponse
getAPIKeysResponse pResponseStatus_ =
  GetAPIKeysResponse'
    { _gakrrsWarnings = Nothing,
      _gakrrsItems = Nothing,
      _gakrrsPosition = Nothing,
      _gakrrsResponseStatus = pResponseStatus_
    }

-- | A list of warning messages logged during the import of API keys when the @failOnWarnings@ option is set to true.
gakrrsWarnings :: Lens' GetAPIKeysResponse [Text]
gakrrsWarnings = lens _gakrrsWarnings (\s a -> s {_gakrrsWarnings = a}) . _Default . _Coerce

-- | The current page of elements from this collection.
gakrrsItems :: Lens' GetAPIKeysResponse [APIKey]
gakrrsItems = lens _gakrrsItems (\s a -> s {_gakrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gakrrsPosition :: Lens' GetAPIKeysResponse (Maybe Text)
gakrrsPosition = lens _gakrrsPosition (\s a -> s {_gakrrsPosition = a})

-- | -- | The response status code.
gakrrsResponseStatus :: Lens' GetAPIKeysResponse Int
gakrrsResponseStatus = lens _gakrrsResponseStatus (\s a -> s {_gakrrsResponseStatus = a})

instance NFData GetAPIKeysResponse

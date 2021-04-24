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
-- Module      : Network.AWS.APIGateway.GetResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about a collection of 'Resource' resources.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetResources
  ( -- * Creating a Request
    getResources,
    GetResources,

    -- * Request Lenses
    grPosition,
    grEmbed,
    grLimit,
    grRestAPIId,

    -- * Destructuring the Response
    getResourcesResponse,
    GetResourcesResponse,

    -- * Response Lenses
    grrrsItems,
    grrrsPosition,
    grrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to list information about a collection of resources.
--
--
--
-- /See:/ 'getResources' smart constructor.
data GetResources = GetResources'
  { _grPosition ::
      !(Maybe Text),
    _grEmbed :: !(Maybe [Text]),
    _grLimit :: !(Maybe Int),
    _grRestAPIId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grPosition' - The current pagination position in the paged result set.
--
-- * 'grEmbed' - A query parameter used to retrieve the specified resources embedded in the returned 'Resources' resource in the response. This @embed@ parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded 'Method' resources this way. The query parameter value must be a single-valued list and contain the @"methods"@ string. For example, @GET /restapis/{restapi_id}/resources?embed=methods@ .
--
-- * 'grLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'grRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
getResources ::
  -- | 'grRestAPIId'
  Text ->
  GetResources
getResources pRestAPIId_ =
  GetResources'
    { _grPosition = Nothing,
      _grEmbed = Nothing,
      _grLimit = Nothing,
      _grRestAPIId = pRestAPIId_
    }

-- | The current pagination position in the paged result set.
grPosition :: Lens' GetResources (Maybe Text)
grPosition = lens _grPosition (\s a -> s {_grPosition = a})

-- | A query parameter used to retrieve the specified resources embedded in the returned 'Resources' resource in the response. This @embed@ parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded 'Method' resources this way. The query parameter value must be a single-valued list and contain the @"methods"@ string. For example, @GET /restapis/{restapi_id}/resources?embed=methods@ .
grEmbed :: Lens' GetResources [Text]
grEmbed = lens _grEmbed (\s a -> s {_grEmbed = a}) . _Default . _Coerce

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
grLimit :: Lens' GetResources (Maybe Int)
grLimit = lens _grLimit (\s a -> s {_grLimit = a})

-- | [Required] The string identifier of the associated 'RestApi' .
grRestAPIId :: Lens' GetResources Text
grRestAPIId = lens _grRestAPIId (\s a -> s {_grRestAPIId = a})

instance AWSPager GetResources where
  page rq rs
    | stop (rs ^. grrrsPosition) = Nothing
    | stop (rs ^. grrrsItems) = Nothing
    | otherwise =
      Just $ rq & grPosition .~ rs ^. grrrsPosition

instance AWSRequest GetResources where
  type Rs GetResources = GetResourcesResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetResourcesResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetResources

instance NFData GetResources

instance ToHeaders GetResources where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetResources where
  toPath GetResources' {..} =
    mconcat
      ["/restapis/", toBS _grRestAPIId, "/resources"]

instance ToQuery GetResources where
  toQuery GetResources' {..} =
    mconcat
      [ "position" =: _grPosition,
        "embed"
          =: toQuery (toQueryList "member" <$> _grEmbed),
        "limit" =: _grLimit
      ]

-- | Represents a collection of 'Resource' resources.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html Create an API>
--
-- /See:/ 'getResourcesResponse' smart constructor.
data GetResourcesResponse = GetResourcesResponse'
  { _grrrsItems ::
      !(Maybe [Resource]),
    _grrrsPosition ::
      !(Maybe Text),
    _grrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsItems' - The current page of elements from this collection.
--
-- * 'grrrsPosition' - Undocumented member.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
getResourcesResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GetResourcesResponse
getResourcesResponse pResponseStatus_ =
  GetResourcesResponse'
    { _grrrsItems = Nothing,
      _grrrsPosition = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
grrrsItems :: Lens' GetResourcesResponse [Resource]
grrrsItems = lens _grrrsItems (\s a -> s {_grrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
grrrsPosition :: Lens' GetResourcesResponse (Maybe Text)
grrrsPosition = lens _grrrsPosition (\s a -> s {_grrrsPosition = a})

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GetResourcesResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GetResourcesResponse

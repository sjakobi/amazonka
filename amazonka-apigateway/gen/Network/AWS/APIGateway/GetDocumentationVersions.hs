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
-- Module      : Network.AWS.APIGateway.GetDocumentationVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undocumented operation.
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetDocumentationVersions
  ( -- * Creating a Request
    getDocumentationVersions,
    GetDocumentationVersions,

    -- * Request Lenses
    gdvsPosition,
    gdvsLimit,
    gdvsRestAPIId,

    -- * Destructuring the Response
    getDocumentationVersionsResponse,
    GetDocumentationVersionsResponse,

    -- * Response Lenses
    gdvrrsItems,
    gdvrrsPosition,
    gdvrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets the documentation versions of an API.
--
--
--
-- /See:/ 'getDocumentationVersions' smart constructor.
data GetDocumentationVersions = GetDocumentationVersions'
  { _gdvsPosition ::
      !(Maybe Text),
    _gdvsLimit ::
      !(Maybe Int),
    _gdvsRestAPIId ::
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

-- | Creates a value of 'GetDocumentationVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvsPosition' - The current pagination position in the paged result set.
--
-- * 'gdvsLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gdvsRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
getDocumentationVersions ::
  -- | 'gdvsRestAPIId'
  Text ->
  GetDocumentationVersions
getDocumentationVersions pRestAPIId_ =
  GetDocumentationVersions'
    { _gdvsPosition = Nothing,
      _gdvsLimit = Nothing,
      _gdvsRestAPIId = pRestAPIId_
    }

-- | The current pagination position in the paged result set.
gdvsPosition :: Lens' GetDocumentationVersions (Maybe Text)
gdvsPosition = lens _gdvsPosition (\s a -> s {_gdvsPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gdvsLimit :: Lens' GetDocumentationVersions (Maybe Int)
gdvsLimit = lens _gdvsLimit (\s a -> s {_gdvsLimit = a})

-- | [Required] The string identifier of the associated 'RestApi' .
gdvsRestAPIId :: Lens' GetDocumentationVersions Text
gdvsRestAPIId = lens _gdvsRestAPIId (\s a -> s {_gdvsRestAPIId = a})

instance AWSPager GetDocumentationVersions where
  page rq rs
    | stop (rs ^. gdvrrsPosition) = Nothing
    | stop (rs ^. gdvrrsItems) = Nothing
    | otherwise =
      Just $ rq & gdvsPosition .~ rs ^. gdvrrsPosition

instance AWSRequest GetDocumentationVersions where
  type
    Rs GetDocumentationVersions =
      GetDocumentationVersionsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetDocumentationVersionsResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDocumentationVersions

instance NFData GetDocumentationVersions

instance ToHeaders GetDocumentationVersions where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetDocumentationVersions where
  toPath GetDocumentationVersions' {..} =
    mconcat
      [ "/restapis/",
        toBS _gdvsRestAPIId,
        "/documentation/versions"
      ]

instance ToQuery GetDocumentationVersions where
  toQuery GetDocumentationVersions' {..} =
    mconcat
      ["position" =: _gdvsPosition, "limit" =: _gdvsLimit]

-- | The collection of documentation snapshots of an API.
--
--
-- Use the 'DocumentationVersions' to manage documentation snapshots associated with various API stages.
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html Documenting an API> , 'DocumentationPart' , 'DocumentationVersion'
--
-- /See:/ 'getDocumentationVersionsResponse' smart constructor.
data GetDocumentationVersionsResponse = GetDocumentationVersionsResponse'
  { _gdvrrsItems ::
      !( Maybe
           [DocumentationVersion]
       ),
    _gdvrrsPosition ::
      !( Maybe
           Text
       ),
    _gdvrrsResponseStatus ::
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

-- | Creates a value of 'GetDocumentationVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdvrrsItems' - The current page of elements from this collection.
--
-- * 'gdvrrsPosition' - Undocumented member.
--
-- * 'gdvrrsResponseStatus' - -- | The response status code.
getDocumentationVersionsResponse ::
  -- | 'gdvrrsResponseStatus'
  Int ->
  GetDocumentationVersionsResponse
getDocumentationVersionsResponse pResponseStatus_ =
  GetDocumentationVersionsResponse'
    { _gdvrrsItems =
        Nothing,
      _gdvrrsPosition = Nothing,
      _gdvrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gdvrrsItems :: Lens' GetDocumentationVersionsResponse [DocumentationVersion]
gdvrrsItems = lens _gdvrrsItems (\s a -> s {_gdvrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gdvrrsPosition :: Lens' GetDocumentationVersionsResponse (Maybe Text)
gdvrrsPosition = lens _gdvrrsPosition (\s a -> s {_gdvrrsPosition = a})

-- | -- | The response status code.
gdvrrsResponseStatus :: Lens' GetDocumentationVersionsResponse Int
gdvrrsResponseStatus = lens _gdvrrsResponseStatus (\s a -> s {_gdvrrsResponseStatus = a})

instance NFData GetDocumentationVersionsResponse

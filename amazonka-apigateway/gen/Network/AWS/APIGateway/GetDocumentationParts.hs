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
-- Module      : Network.AWS.APIGateway.GetDocumentationParts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undocumented operation.
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetDocumentationParts
  ( -- * Creating a Request
    getDocumentationParts,
    GetDocumentationParts,

    -- * Request Lenses
    gdpsLocationStatus,
    gdpsPosition,
    gdpsType,
    gdpsLimit,
    gdpsPath,
    gdpsNameQuery,
    gdpsRestAPIId,

    -- * Destructuring the Response
    getDocumentationPartsResponse,
    GetDocumentationPartsResponse,

    -- * Response Lenses
    gdprrsItems,
    gdprrsPosition,
    gdprrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
--
--
--
-- /See:/ 'getDocumentationParts' smart constructor.
data GetDocumentationParts = GetDocumentationParts'
  { _gdpsLocationStatus ::
      !(Maybe LocationStatusType),
    _gdpsPosition ::
      !(Maybe Text),
    _gdpsType ::
      !( Maybe
           DocumentationPartType
       ),
    _gdpsLimit :: !(Maybe Int),
    _gdpsPath :: !(Maybe Text),
    _gdpsNameQuery ::
      !(Maybe Text),
    _gdpsRestAPIId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDocumentationParts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpsLocationStatus' - The status of the API documentation parts to retrieve. Valid values are @DOCUMENTED@ for retrieving 'DocumentationPart' resources with content and @UNDOCUMENTED@ for 'DocumentationPart' resources without content.
--
-- * 'gdpsPosition' - The current pagination position in the paged result set.
--
-- * 'gdpsType' - The type of API entities of the to-be-retrieved documentation parts.
--
-- * 'gdpsLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gdpsPath' - The path of API entities of the to-be-retrieved documentation parts.
--
-- * 'gdpsNameQuery' - The name of API entities of the to-be-retrieved documentation parts.
--
-- * 'gdpsRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
getDocumentationParts ::
  -- | 'gdpsRestAPIId'
  Text ->
  GetDocumentationParts
getDocumentationParts pRestAPIId_ =
  GetDocumentationParts'
    { _gdpsLocationStatus =
        Nothing,
      _gdpsPosition = Nothing,
      _gdpsType = Nothing,
      _gdpsLimit = Nothing,
      _gdpsPath = Nothing,
      _gdpsNameQuery = Nothing,
      _gdpsRestAPIId = pRestAPIId_
    }

-- | The status of the API documentation parts to retrieve. Valid values are @DOCUMENTED@ for retrieving 'DocumentationPart' resources with content and @UNDOCUMENTED@ for 'DocumentationPart' resources without content.
gdpsLocationStatus :: Lens' GetDocumentationParts (Maybe LocationStatusType)
gdpsLocationStatus = lens _gdpsLocationStatus (\s a -> s {_gdpsLocationStatus = a})

-- | The current pagination position in the paged result set.
gdpsPosition :: Lens' GetDocumentationParts (Maybe Text)
gdpsPosition = lens _gdpsPosition (\s a -> s {_gdpsPosition = a})

-- | The type of API entities of the to-be-retrieved documentation parts.
gdpsType :: Lens' GetDocumentationParts (Maybe DocumentationPartType)
gdpsType = lens _gdpsType (\s a -> s {_gdpsType = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gdpsLimit :: Lens' GetDocumentationParts (Maybe Int)
gdpsLimit = lens _gdpsLimit (\s a -> s {_gdpsLimit = a})

-- | The path of API entities of the to-be-retrieved documentation parts.
gdpsPath :: Lens' GetDocumentationParts (Maybe Text)
gdpsPath = lens _gdpsPath (\s a -> s {_gdpsPath = a})

-- | The name of API entities of the to-be-retrieved documentation parts.
gdpsNameQuery :: Lens' GetDocumentationParts (Maybe Text)
gdpsNameQuery = lens _gdpsNameQuery (\s a -> s {_gdpsNameQuery = a})

-- | [Required] The string identifier of the associated 'RestApi' .
gdpsRestAPIId :: Lens' GetDocumentationParts Text
gdpsRestAPIId = lens _gdpsRestAPIId (\s a -> s {_gdpsRestAPIId = a})

instance AWSPager GetDocumentationParts where
  page rq rs
    | stop (rs ^. gdprrsPosition) = Nothing
    | stop (rs ^. gdprrsItems) = Nothing
    | otherwise =
      Just $ rq & gdpsPosition .~ rs ^. gdprrsPosition

instance AWSRequest GetDocumentationParts where
  type
    Rs GetDocumentationParts =
      GetDocumentationPartsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetDocumentationPartsResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDocumentationParts

instance NFData GetDocumentationParts

instance ToHeaders GetDocumentationParts where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetDocumentationParts where
  toPath GetDocumentationParts' {..} =
    mconcat
      [ "/restapis/",
        toBS _gdpsRestAPIId,
        "/documentation/parts"
      ]

instance ToQuery GetDocumentationParts where
  toQuery GetDocumentationParts' {..} =
    mconcat
      [ "locationStatus" =: _gdpsLocationStatus,
        "position" =: _gdpsPosition,
        "type" =: _gdpsType,
        "limit" =: _gdpsLimit,
        "path" =: _gdpsPath,
        "name" =: _gdpsNameQuery
      ]

-- | The collection of documentation parts of an API.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-documenting-api.html Documenting an API> , 'DocumentationPart'
--
-- /See:/ 'getDocumentationPartsResponse' smart constructor.
data GetDocumentationPartsResponse = GetDocumentationPartsResponse'
  { _gdprrsItems ::
      !( Maybe
           [DocumentationPart]
       ),
    _gdprrsPosition ::
      !( Maybe
           Text
       ),
    _gdprrsResponseStatus ::
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

-- | Creates a value of 'GetDocumentationPartsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdprrsItems' - The current page of elements from this collection.
--
-- * 'gdprrsPosition' - Undocumented member.
--
-- * 'gdprrsResponseStatus' - -- | The response status code.
getDocumentationPartsResponse ::
  -- | 'gdprrsResponseStatus'
  Int ->
  GetDocumentationPartsResponse
getDocumentationPartsResponse pResponseStatus_ =
  GetDocumentationPartsResponse'
    { _gdprrsItems =
        Nothing,
      _gdprrsPosition = Nothing,
      _gdprrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gdprrsItems :: Lens' GetDocumentationPartsResponse [DocumentationPart]
gdprrsItems = lens _gdprrsItems (\s a -> s {_gdprrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gdprrsPosition :: Lens' GetDocumentationPartsResponse (Maybe Text)
gdprrsPosition = lens _gdprrsPosition (\s a -> s {_gdprrsPosition = a})

-- | -- | The response status code.
gdprrsResponseStatus :: Lens' GetDocumentationPartsResponse Int
gdprrsResponseStatus = lens _gdprrsResponseStatus (\s a -> s {_gdprrsResponseStatus = a})

instance NFData GetDocumentationPartsResponse

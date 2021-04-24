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
-- Module      : Network.AWS.APIGateway.GetModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes existing 'Models' defined for a 'RestApi' resource.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetModels
  ( -- * Creating a Request
    getModels,
    GetModels,

    -- * Request Lenses
    gmsPosition,
    gmsLimit,
    gmsRestAPIId,

    -- * Destructuring the Response
    getModelsResponse,
    GetModelsResponse,

    -- * Response Lenses
    gmrrsItems,
    gmrrsPosition,
    gmrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to list existing 'Models' defined for a 'RestApi' resource.
--
--
--
-- /See:/ 'getModels' smart constructor.
data GetModels = GetModels'
  { _gmsPosition ::
      !(Maybe Text),
    _gmsLimit :: !(Maybe Int),
    _gmsRestAPIId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetModels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmsPosition' - The current pagination position in the paged result set.
--
-- * 'gmsLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gmsRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
getModels ::
  -- | 'gmsRestAPIId'
  Text ->
  GetModels
getModels pRestAPIId_ =
  GetModels'
    { _gmsPosition = Nothing,
      _gmsLimit = Nothing,
      _gmsRestAPIId = pRestAPIId_
    }

-- | The current pagination position in the paged result set.
gmsPosition :: Lens' GetModels (Maybe Text)
gmsPosition = lens _gmsPosition (\s a -> s {_gmsPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gmsLimit :: Lens' GetModels (Maybe Int)
gmsLimit = lens _gmsLimit (\s a -> s {_gmsLimit = a})

-- | [Required] The string identifier of the associated 'RestApi' .
gmsRestAPIId :: Lens' GetModels Text
gmsRestAPIId = lens _gmsRestAPIId (\s a -> s {_gmsRestAPIId = a})

instance AWSPager GetModels where
  page rq rs
    | stop (rs ^. gmrrsPosition) = Nothing
    | stop (rs ^. gmrrsItems) = Nothing
    | otherwise =
      Just $ rq & gmsPosition .~ rs ^. gmrrsPosition

instance AWSRequest GetModels where
  type Rs GetModels = GetModelsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetModelsResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetModels

instance NFData GetModels

instance ToHeaders GetModels where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetModels where
  toPath GetModels' {..} =
    mconcat
      ["/restapis/", toBS _gmsRestAPIId, "/models"]

instance ToQuery GetModels where
  toQuery GetModels' {..} =
    mconcat
      ["position" =: _gmsPosition, "limit" =: _gmsLimit]

-- | Represents a collection of 'Model' resources.
--
--
-- 'Method' , 'MethodResponse' , <https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html Models and Mappings>
--
-- /See:/ 'getModelsResponse' smart constructor.
data GetModelsResponse = GetModelsResponse'
  { _gmrrsItems ::
      !(Maybe [Model]),
    _gmrrsPosition :: !(Maybe Text),
    _gmrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmrrsItems' - The current page of elements from this collection.
--
-- * 'gmrrsPosition' - Undocumented member.
--
-- * 'gmrrsResponseStatus' - -- | The response status code.
getModelsResponse ::
  -- | 'gmrrsResponseStatus'
  Int ->
  GetModelsResponse
getModelsResponse pResponseStatus_ =
  GetModelsResponse'
    { _gmrrsItems = Nothing,
      _gmrrsPosition = Nothing,
      _gmrrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
gmrrsItems :: Lens' GetModelsResponse [Model]
gmrrsItems = lens _gmrrsItems (\s a -> s {_gmrrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
gmrrsPosition :: Lens' GetModelsResponse (Maybe Text)
gmrrsPosition = lens _gmrrsPosition (\s a -> s {_gmrrsPosition = a})

-- | -- | The response status code.
gmrrsResponseStatus :: Lens' GetModelsResponse Int
gmrrsResponseStatus = lens _gmrrsResponseStatus (\s a -> s {_gmrrsResponseStatus = a})

instance NFData GetModelsResponse

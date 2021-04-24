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
-- Module      : Network.AWS.APIGateway.GetRestAPIs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the 'RestApis' resources for your collection.
--
--
--
-- This operation returns paginated results.
module Network.AWS.APIGateway.GetRestAPIs
  ( -- * Creating a Request
    getRestAPIs,
    GetRestAPIs,

    -- * Request Lenses
    graPosition,
    graLimit,

    -- * Destructuring the Response
    getRestAPIsResponse,
    GetRestAPIsResponse,

    -- * Response Lenses
    grarrsItems,
    grarrsPosition,
    grarrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The GET request to list existing 'RestApis' defined for your collection.
--
--
--
-- /See:/ 'getRestAPIs' smart constructor.
data GetRestAPIs = GetRestAPIs'
  { _graPosition ::
      !(Maybe Text),
    _graLimit :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRestAPIs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'graPosition' - The current pagination position in the paged result set.
--
-- * 'graLimit' - The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
getRestAPIs ::
  GetRestAPIs
getRestAPIs =
  GetRestAPIs'
    { _graPosition = Nothing,
      _graLimit = Nothing
    }

-- | The current pagination position in the paged result set.
graPosition :: Lens' GetRestAPIs (Maybe Text)
graPosition = lens _graPosition (\s a -> s {_graPosition = a})

-- | The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
graLimit :: Lens' GetRestAPIs (Maybe Int)
graLimit = lens _graLimit (\s a -> s {_graLimit = a})

instance AWSPager GetRestAPIs where
  page rq rs
    | stop (rs ^. grarrsPosition) = Nothing
    | stop (rs ^. grarrsItems) = Nothing
    | otherwise =
      Just $ rq & graPosition .~ rs ^. grarrsPosition

instance AWSRequest GetRestAPIs where
  type Rs GetRestAPIs = GetRestAPIsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetRestAPIsResponse'
            <$> (x .?> "item" .!@ mempty)
            <*> (x .?> "position")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRestAPIs

instance NFData GetRestAPIs

instance ToHeaders GetRestAPIs where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetRestAPIs where
  toPath = const "/restapis"

instance ToQuery GetRestAPIs where
  toQuery GetRestAPIs' {..} =
    mconcat
      ["position" =: _graPosition, "limit" =: _graLimit]

-- | Contains references to your APIs and links that guide you in how to interact with your collection. A collection offers a paginated view of your APIs.
--
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html Create an API>
--
-- /See:/ 'getRestAPIsResponse' smart constructor.
data GetRestAPIsResponse = GetRestAPIsResponse'
  { _grarrsItems ::
      !(Maybe [RestAPI]),
    _grarrsPosition ::
      !(Maybe Text),
    _grarrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRestAPIsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grarrsItems' - The current page of elements from this collection.
--
-- * 'grarrsPosition' - Undocumented member.
--
-- * 'grarrsResponseStatus' - -- | The response status code.
getRestAPIsResponse ::
  -- | 'grarrsResponseStatus'
  Int ->
  GetRestAPIsResponse
getRestAPIsResponse pResponseStatus_ =
  GetRestAPIsResponse'
    { _grarrsItems = Nothing,
      _grarrsPosition = Nothing,
      _grarrsResponseStatus = pResponseStatus_
    }

-- | The current page of elements from this collection.
grarrsItems :: Lens' GetRestAPIsResponse [RestAPI]
grarrsItems = lens _grarrsItems (\s a -> s {_grarrsItems = a}) . _Default . _Coerce

-- | Undocumented member.
grarrsPosition :: Lens' GetRestAPIsResponse (Maybe Text)
grarrsPosition = lens _grarrsPosition (\s a -> s {_grarrsPosition = a})

-- | -- | The response status code.
grarrsResponseStatus :: Lens' GetRestAPIsResponse Int
grarrsResponseStatus = lens _grarrsResponseStatus (\s a -> s {_grarrsResponseStatus = a})

instance NFData GetRestAPIsResponse
